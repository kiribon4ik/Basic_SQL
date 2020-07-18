-- Выбираем базу данных geekbrains текущей 

USE geekbrains;


-- Создадим триггер на проверку имени и фамилии пользователя при вставке в users

DELIMITER //

CREATE TRIGGER validate_first_name_last_name_insert BEFORE INSERT ON users
FOR EACH ROW BEGIN
  IF NEW.first_name IS NULL AND NEW.last_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'First_name and last_name are NULL';
  END IF;
END//

DELIMITER ;


-- Созданиv триггер для обработки target_id в таблице оценок grades
-- Создаем функцию для проверки наличия строки с идентификатором target_id в одной из таблиц courses, users или posts
 
DELIMITER //

DROP FUNCTION IF EXISTS is_row_exists//

CREATE FUNCTION is_row_exists (target_id INT, target_type_id INT)
RETURNS BOOLEAN READS SQL DATA

BEGIN
  DECLARE table_name VARCHAR(50);
  SELECT name FROM target_types WHERE id = target_type_id INTO table_name;
  
  CASE table_name
    WHEN 'courses' THEN
      RETURN EXISTS(SELECT 1 FROM courses WHERE id = target_id);
    WHEN 'users' THEN 
      RETURN EXISTS(SELECT 1 FROM users WHERE id = target_id);
    WHEN 'posts' THEN
      RETURN EXISTS(SELECT 1 FROM posts WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;
END//


-- Создадим триггер для проверки валидности target_id и target_type_id

DROP TRIGGER IF EXISTS grades_validation//

CREATE TRIGGER grades_validation BEFORE INSERT ON grades

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding grades! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;


