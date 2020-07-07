-- 4. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Решение с вложенным запросом

SELECT COUNT(*) FROM likes 
  WHERE target_type_id = 2
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
;


-- Запрос с помощью JOIN. 

-- Для подсчета суммы обурнул внешним запросом 

SELECT SUM(likes_all) AS total_likes 
FROM (
  SELECT
    COUNT(likes.id) AS likes_all 
  FROM profiles
    LEFT JOIN likes 
      ON profiles.user_id = likes.target_id AND likes.target_type_id = 2
  GROUP BY profiles.user_id 
  ORDER BY birthday
  DESC LIMIT 10) AS sorted_profiles;
