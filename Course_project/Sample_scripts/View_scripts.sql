-- Выбираем базу данных geekbrains текущей 

USE geekbrains;


-- Создадим представление пользователей и заголовков постов которые они написали

CREATE OR REPLACE VIEW post_users AS
SELECT 
  CONCAT(users.first_name, ' ', users.last_name) AS author, 
  posts.head AS post_head
  FROM users
    JOIN posts
      ON users.id = posts.user_id;

SELECT * from post_users;


-- Создадим представление пользователей c их возрастом и периодом регистрации

CREATE OR REPLACE VIEW full_users_study_group AS
SELECT 
  CONCAT(users.first_name, ' ', users.last_name) AS name, 
  TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) AS age,
  profiles.gender,
  TIMESTAMPDIFF(YEAR, profiles.created_at, NOW()) AS how_long
FROM users
  JOIN profiles 
    ON users.id = profiles.user_id
ORDER BY how_long DESC;

SELECT * FROM full_users_study_group;
SELECT * FROM study_groups_users;


-- Создадим представление, которое выводит имена студентов и соответствующие для них названия учебных групп

CREATE OR REPLACE VIEW user_study_group AS 
  SELECT 
    CONCAT(users.first_name, ' ', users.last_name) AS user_name, 
    study_groups.name AS group_name
  FROM users
    JOIN study_groups_users 
        ON users.id = study_groups_users.user_id
    LEFT JOIN study_groups 
        ON study_groups.id = study_groups_users.study_group_id
  ORDER BY group_name;

SELECT * FROM user_study_group;