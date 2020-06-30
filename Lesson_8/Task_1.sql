-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
-- Запрос с вложенным запросом

SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender,
	COUNT(*) AS total
    FROM likes
    GROUP BY gender
    ORDER BY total DESC
    LIMIT 1;  
   
-- Запрос с помощью JOIN

SELECT 
  profiles.gender, COUNT(*) AS total
FROM likes
  JOIN profiles 
    ON likes.user_id = profiles.user_id
GROUP BY profiles.gender
ORDER BY total DESC
LIMIT 1;