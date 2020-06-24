-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT * FROM likes;
SELECT * FROM profiles;

SELECT 
  COUNT(user_id), gender
FROM 
  profiles 
WHERE 
  user_id IN (SELECT user_id FROM likes)
GROUP BY gender; 
