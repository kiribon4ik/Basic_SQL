-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.

USE shop;

DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
table_name VARCHAR(50) NOT NULL COMMENT "Название таблицы",
string_id INT UNSIGNED NOT NULL COMMENT "Идентификатор первичного ключа",
string_name VARCHAR(100) NOT NULL COMMENT "Содержимое поля name",
created_string DATETIME COMMENT "Время создания строки",
updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT "Время обновления строки"
)  COMMENT = "Таблица логов создания записей в users, catalogs, products"  ENGINE=Archive;

DESC logs;
SHOW TABLE STATUS LIKE 'logs';


DELIMITER //

DROP TRIGGER IF EXISTS log_users_insert//
CREATE TRIGGER log_users_insert BEFORE INSERT ON users
FOR EACH ROW 
BEGIN 
  DECLARE id_of_string INT;
  DECLARE name_of_table VARCHAR(50) DEFAULT 'users';
  SELECT 1 INTO id_of_string; -- НЕ СМОГ РАЗОБРАТЬСЯ КАК ВСТАВИТЬ NEW.id ИЗ users. Использовать SELECT LAST_INSERT_ID() FROM users LIMIT 1; не помогло
  INSERT INTO shop.logs (table_name, string_id, string_name, created_string)
  VALUES (name_of_table, id_of_string, NEW.name, NEW.created_at);
END //

DROP TRIGGER IF EXISTS log_catalogs_insert//
CREATE TRIGGER log_catalogs_insert BEFORE INSERT ON catalogs
FOR EACH ROW 
BEGIN 
  DECLARE id_of_string INT;
  DECLARE name_of_table VARCHAR(50) DEFAULT 'catalogs';
  SELECT 1 INTO id_of_string; -- НЕ СМОГ РАЗОБРАТЬСЯ КАК ВСТАВИТЬ NEW.id ИЗ users
  INSERT INTO shop.logs (table_name, string_id, string_name) -- в таблице products нет created_at. Добавлять не стал.
  VALUES (name_of_table, id_of_string, NEW.name);
END //

DROP TRIGGER IF EXISTS log_products_insert//
CREATE TRIGGER log_products_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
  DECLARE id_of_string INT;
  DECLARE name_of_table VARCHAR(50) DEFAULT 'products';
  SELECT 1 INTO id_of_string; -- НЕ СМОГ РАЗОБРАТЬСЯ КАК ВСТАВИТЬ NEW.id ИЗ users
  INSERT INTO shop.logs (table_name, string_id, string_name) -- в таблице products нет created_at. Добавлять не стал.
  VALUES (name_of_table, id_of_string, NEW.name);
END //

DELIMITER ;

TRUNCATE TABLE shop.users;

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

TRUNCATE TABLE shop.products;

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

TRUNCATE TABLE shop.catalogs;

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
SELECT * FROM logs;
