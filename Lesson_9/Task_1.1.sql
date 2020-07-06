-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
--    Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

SELECT * FROM shop.users;

START TRANSACTION;

DROP TABLE IF EXISTS sample.users;

CREATE TABLE sample.users 
  SELECT * 
  FROM shop.users
  WHERE id = 1;

SELECT * FROM sample.users;

COMMIT;