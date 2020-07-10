USE shop;
SELECT * FROM users;

DELIMITER //

DROP PROCEDURE IF EXISTS insert_users//
CREATE PROCEDURE insert_users(IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	WHILE i < num DO
  	INSERT INTO users (name, birthday_at) VALUES
      ('Test_user', NOW());
  	SET i = i + 1;
	END WHILE;
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//

DELIMITER ;

CALL insert_users(1000000);
