-- Task 3.2 В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие 
-- обоих полей или одного из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры,
-- добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо
-- отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS check_products_insert//

CREATE TRIGGER check_products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE descr_prod VARCHAR(255) DEFAULT 'Описание товара';
  DECLARE name_prod VARCHAR(255) DEFAULT 'Нименование товара';
 
  SET NEW.description = COALESCE(NEW.description, descr_prod);
  SET NEW.name = COALESCE(NEW.name, name_prod);
END//


DROP TRIGGER IF EXISTS check_products_update//

CREATE TRIGGER check_products_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL OR NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Значения NULL не могут быть присвоены. Оперция отменена!';
  END IF;
END//


 
 
-- Запросы для проверки

UPDATE products SET name = NULL WHERE id = 1;

INSERT INTO products
  (name, description, price)
VALUES
  (null, null, 13200.00);
 
SELECT name, description, price FROM products;
