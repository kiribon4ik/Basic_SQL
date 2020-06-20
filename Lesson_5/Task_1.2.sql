DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) DEFAULT 'USER' COMMENT 'Имя пользователя',
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
) COMMENT = 'Пользователи';

INSERT INTO users(name, created_at, updated_at) VALUES
    ('Kirill', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Max', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Tommy', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Ivan', '20.10.2017 8:10', '20.10.2017 8:10'),
    ('Mary', '20.10.2017 8:10', '20.10.2017 8:10');
   
DROP TABLE IF EXISTS dates;
CREATE TEMPORARY TABLE dates (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	created_at DATETIME,
	updated_at DATETIME
);

INSERT INTO dates(name, created_at, updated_at) 
	SELECT 
		name, 
		STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
		STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i')
	FROM users WHERE id >= 1;

TRUNCATE TABLE users;

ALTER TABLE users 
	MODIFY created_at DATETIME,
	MODIFY updated_at DATETIME;

INSERT INTO users SELECT * FROM dates where id >= 1;

SELECT * FROM users;