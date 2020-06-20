DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) DEFAULT 'USER' COMMENT 'Имя пользователя',
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
) COMMENT = 'Пользователи';

INSERT INTO 
	users(name, created_at, updated_at)
VALUES
    ('Kirill', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Max', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Tommy', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Ivan', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Mary', '20.10.2017 8:10', '20.10.2017 8:10');

UPDATE 
	users 
SET 
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE 
	users 
MODIFY
	created_at DATETIME,
MODIFY
	updated_at DATETIME;

DESC
	users;

SELECT
	*
FROM
	users;
