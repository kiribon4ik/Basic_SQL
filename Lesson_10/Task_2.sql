-- 2. Задание на оконные функции

-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

USE vk; 


SELECT DISTINCT 
  communities.id AS group_id,
  communities.name AS name_group, 
  COUNT(communities_users.user_id) OVER() AS total_users,
  COUNT(communities_users.user_id) OVER() / (SELECT MAX(communities.id) FROM communities) AS avarage,
  COUNT(*) OVER(PARTITION BY communities_users.community_id) AS users_in_group,
  COUNT(*) OVER(PARTITION BY communities_users.community_id) / COUNT(communities_users.user_id) OVER() * 100 AS '%%',
  MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS oldest_in_group,   -- не догадался как вывести ID пользователя с этим значением
  MAX(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS youngest_in_group  -- не догадался как вывести ID пользователя с этим значением
FROM communities_users
  JOIN communities
    ON communities_users.community_id = communities.id
  JOIN profiles
    ON communities_users.user_id = profiles.user_id
ORDER BY group_id;


SELECT profiles.user_id FROM profiles WHERE birthday = (SELECT MIN(profiles.birthday) FROM profiles);
SELECT profiles.user_id FROM profiles WHERE birthday = (SELECT MAX(profiles.birthday) FROM profiles);