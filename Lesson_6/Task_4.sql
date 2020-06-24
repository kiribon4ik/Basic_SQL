-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).


SELECT * FROM likes;
 
SELECT * FROM profiles;

-- Доработаем birthday, приведя возраст к более реальным значениям

UPDATE 
  profiles SET birthday = DATE_SUB(NOW(), INTERVAL FLOOR(18 + RAND()*55) YEAR) 
WHERE 
  TIMESTAMPDIFF(YEAR, birthday, NOW()) < 18;

 
-- Формирую структуру подзапроса к таблице profiles 

SELECT 
  TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age,
  user_id 
FROM profiles 
ORDER BY age LIMIT 10;


-- Формирую структуру запроса. Т.к. LIMIT и ORDER BY не работают в подзапросах. Поэтому я только вручную подобрал возраст

SELECT
  COUNT(*) AS likes_count
FROM 
  likes
WHERE user_id IN 
  (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 23);
 