-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Активность оценним по количеству отправленных сообщений

SELECT * FROM messages;

SELECT 
  from_user_id AS active_respondent, 
  count(from_user_id) AS message_count 
FROM 
  messages 
GROUP BY
  from_user_id 
ORDER BY
  message_count LIMIT 10;
  