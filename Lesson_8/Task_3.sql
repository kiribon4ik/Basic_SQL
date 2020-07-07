--  5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети. 

-- Решение с вложенным запросом    

SELECT 
  CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) 
	+ (SELECT COUNT(*) FROM media WHERE media.user_id = users.id) 
	+ (SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	  FROM users
	  ORDER BY overall_activity
	  LIMIT 10;

-- Запрос с помощью JOIN

SELECT * from media;

SELECT 
  CONCAT(users.first_name, ' ', users.last_name) AS name, 
  COUNT(messages.id) +
  COUNT(media.id) + 
  COUNT(likes.id) AS overall_activity
FROM users
  LEFT JOIN messages
    ON messages.from_user_id = users.id
  LEFT JOIN media 
    ON media.user_id = users.id
  LEFT JOIN likes 
    ON likes.user_id = users.id    
GROUP by users.id 
ORDER by overall_activity
LIMIT 10;
