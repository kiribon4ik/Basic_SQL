-- Определим студентов какого пола меньше учится на площадке geekbrains

SELECT COUNT(user_id) AS num FROM profiles GROUP BY gender ORDER BY num  DESC LIMIT 1;


-- Подсчитаем количество плантных и бесплатных курсов на площадке geekbrains

SELECT COUNT(id) AS `count`, is_payment FROM courses GROUP BY is_payment;


-- Определить сколько постов написано мужчинами и сколько женщинами

SELECT 
  COUNT(id) AS num, 
  profiles.gender 
FROM posts
  JOIN profiles
    ON posts.user_id = profiles.user_id 
GROUP BY gender;


-- этот же запрос можно выполнить и с помощью вложенного запроса

SELECT 
  COUNT(user_id) AS num,
  (SELECT gender FROM profiles WHERE user_id = posts.user_id) AS gender 
FROM posts
GROUP BY gender;


-- Определим в каких группах учатся 10 самых молодых пользователей и выведем имена пользователей и названия групп

SELECT 
  name,
  CONCAT(users.first_name, ' ', users.last_name) AS user_name,
  profiles.birthday
FROM study_groups
  JOIN study_groups_users
    ON study_groups.id = study_groups_users.study_group_id
  JOIN profiles 
    ON study_groups_users.user_id = profiles.user_id
  JOIN users
    ON study_groups_users.user_id = users.id
ORDER BY birthday DESC 
LIMIT 10;


-- Определим какой суммарный размер каждого типа контента присутствует на сервисе

SELECT content_types.name, SUM(contents.`size`) AS total_size
FROM contents
  JOIN content_types 
    ON contents.content_type_id = content_types.id
GROUP BY contents.content_type_id
ORDER BY total_size DESC;


-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество участников в группах
-- общее количество участников в каждой группе
-- имя и возраст самого молодого участника в группе
-- имя и возраст самого взрослого участника в группе
-- всего пользователей на geekbrains

SELECT DISTINCT 
  study_groups.name AS group_name,
  COUNT(study_groups_users.user_id) OVER() / (SELECT COUNT(id) FROM study_groups) AS avg_in_groups,
  COUNT(study_groups_users.user_id) OVER(PARTITION BY study_groups.id) AS users_in_group,
  FIRST_VALUE(CONCAT(users.first_name, ' ', TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()), ' ', 'years')) OVER birthday_young AS youngest_users,
  FIRST_VALUE(CONCAT(users.first_name, ' ', TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()), ' ', 'years')) OVER birthday_old AS oldest_users
    FROM study_groups 
      LEFT JOIN study_groups_users 
        ON study_groups.id = study_groups_users.study_group_id
      LEFT JOIN users 
        ON study_groups_users.user_id = users.id
      LEFT JOIN profiles 
        ON profiles.user_id = users.id
      WINDOW birthday_young AS (PARTITION BY study_groups.id ORDER BY profiles.birthday DESC),
             birthday_old AS (PARTITION BY study_groups.id ORDER BY profiles.birthday);  
