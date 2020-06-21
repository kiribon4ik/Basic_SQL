DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) DEFAULT 'USER' COMMENT 'Имя пользователя',
  created_at datetime,
  updated_at datetime
) COMMENT = 'Пользователи';

INSERT INTO
	users(name)
VALUES
    ('Kirill'),
    ('Max'),
    ('Tommy'),
    ('Ivan'),
    ('Mary');

UPDATE users SET 
    created_at = CURRENT_TIMESTAMP, 
    updated_at = CURRENT_TIMESTAMP;

SELECT
	*
FROM 
	users;
