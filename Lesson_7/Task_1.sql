-- Task 1
-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT 
  * 
FROM 
  users 
WHERE EXISTS 
  (SELECT * FROM orders WHERE user_id = users.id);

-- или через join, но не знаю как сгрупировать по users.name

SELECT
  users.id, users.name
FROM 
  users 
JOIN
  orders
ON
  user_id = users.id;
