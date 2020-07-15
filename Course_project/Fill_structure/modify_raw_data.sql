-- Выбираем базу данных geekbrains текущей 

USE geekbrains;


-- Модифицируем таблицу target_types

SELECT * FROM target_types;

UPDATE target_types SET name = 'courses' WHERE id = 1;
UPDATE target_types SET name = 'users' WHERE id = 2;
UPDATE target_types SET name = 'posts' WHERE id = 3;


-- Модифицируем таблицу users
SELECT * FROM users LIMIT 10;

UPDATE users SET updated_at = NOW() WHERE created_at > updated_at;


-- Модифицируем таблицу user_statuses

SELECT * FROM user_statuses;

UPDATE user_statuses SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE user_statuses SET name = 'teacher' WHERE id = 1;
UPDATE user_statuses SET name = 'mentor' WHERE id = 2;
UPDATE user_statuses SET name = 'student' WHERE id = 3;
UPDATE user_statuses SET name = 'guest' WHERE id = 4;

-- Модифицируем таблицу study_groups_users

SELECT * FROM study_groups_users;

UPDATE study_groups_users SET study_group_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM study_groups));

-- Модифицируем таблицу profiles

SELECT * FROM profiles LIMIT 10;

UPDATE profiles SET status_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM user_statuses));
UPDATE profiles SET photo_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM courses));
UPDATE profiles SET gender = 'Мужской' WHERE gender = 'Dr.' OR gender = 'Mr.';
UPDATE profiles SET gender = 'Женский' WHERE gender != 'Мужской';
UPDATE profiles SET updated_at = NOW() WHERE created_at > updated_at OR updated_at > NOW();


-- Модифицируем таблицу posts

SELECT * FROM posts;

UPDATE posts SET user_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM users));
UPDATE posts SET content_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM contents));
UPDATE posts SET updated_at = NOW() WHERE created_at > updated_at OR updated_at > NOW();

-- Модифицируем таблицу messages

SELECT * FROM messages;

UPDATE messages SET 
  from_user_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM users)),
  to_user_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM users));
 
UPDATE messages SET content_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM contents));


-- Модифицируем таблицу grades

SELECT * FROM grades;

UPDATE grades SET user_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM users));
UPDATE grades SET target_type_id = FLOOR(1 + RAND() * (SELECT COUNT(*) FROM target_types));


-- Модифицируем таблицу courses

SELECT * FROM courses;

UPDATE courses SET updated_at = NOW() WHERE created_at > updated_at OR updated_at > NOW();

-- Модифицируем таблицу contents

SELECT * FROM contents;

UPDATE contents SET updated_at = NOW() WHERE created_at > updated_at OR updated_at > NOW();
UPDATE contents SET user_id = FLOOR(1 + RAND() * 100);
UPDATE contents SET course_id = FLOOR(1 + RAND() * 40);
UPDATE contents SET`size` = FLOOR(1 + RAND() * 100000) WHERE `size` < 500 OR `size` > 1000000;
UPDATE contents SET content_type_id = FLOOR(1 + RAND() * 5);
UPDATE contents SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id), '",',
  '"course":"', (SELECT name FROM courses WHERE id >= (SELECT FLOOR( MAX(courses.id) * RAND()) FROM courses) ORDER BY id LIMIT 1),
  '"}');

ALTER TABLE contents MODIFY COLUMN metadata JSON;

CREATE TEMPORARY TABLE extensions (name VARCHAR(10));

INSERT INTO extensions VALUES 
  ('jpeg'), 
  ('avi'), 
  ('mpeg'), 
  ('png'),
  ('txt'),
  ('mpeg'),
  ('sql');

UPDATE contents SET filename = CONCAT('https://mediaserver/',
  (SELECT name FROM courses ORDER BY RAND() LIMIT 1),
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);


-- Модифицируем таблицу contents_type

SELECT * FROM content_types;

UPDATE content_types SET name = 
  CASE
    WHEN id = 1 THEN 'video'
    WHEN id = 2 THEN 'audio'
    WHEN id = 3 THEN 'text'
    WHEN id = 4 THEN 'presentation'
    WHEN id = 5 THEN 'other'
  END;
