-- Task 3.1 Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//

CREATE FUNCTION hello ()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  DECLARE hello TINYTEXT;
  DECLARE hour INT;
  SET hour = (SELECT DATE_FORMAT(NOW(), "%H"));
  IF(hour >= 6 AND hour<= 12) THEN
	SET hello = 'Доброе утро';
  ELSEIF (hour>= 12 AND hour<= 18) THEN
	SET hello = 'Добрый день';
  ELSEIF (hour >= 18 AND hour <= 0) THEN
	SET hello = 'Добрый вечер';
  ELSE
	SET hello = 'Доброй ночи';
  END IF;
  RETURN hello;
END //

DELIMITER ;

SELECT hello();

