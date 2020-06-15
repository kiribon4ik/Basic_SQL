USE vk;

SHOW TABLES;

DESC profiles;

SELECT * FROM users;

SELECT * FROM user_statuses;


UPDATE users SET status_id = 2 WHERE id IN (3, 45, 25, 55, 94);

UPDATE users SET status_id = 3 WHERE id IN (1, 34, 48, 65, 99, 84);

UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE updated_at < created_at;


SELECT * FROM profiles;

UPDATE profiles SET updated_at = CURRENT_TIMESTAMP WHERE updated_at < created_at;

UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);


CREATE TEMPORARY TABLE genders (name CHAR(1));

INSERT INTO genders VALUES ('m'), ('f');

SELECT * FROM genders;


UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);

UPDATE profiles SET is_private = TRUE WHERE photo_id > FLOOR(1 + RAND() * 100);


SELECT * FROM messages;

UPDATE messages SET from_user_id = FLOOR(1 + RAND() * 100),
	to_user_id = FLOOR(1 + RAND() * 100),
	media_id = FLOOR(1 + RAND() * 100);


DESC media;

SELECT * FROM media LIMIT 30;

UPDATE media SET user_id = FLOOR(1 + RAND() * 100);

CREATE TEMPORARY TABLE extentions (name VARCHAR(50));

INSERT INTO extentions VALUES ('jpeg'), ('jpg'), ('mpg'), ('avi'), ('mp3');

UPDATE media SET filename = CONCAT(
	'http://dropbox.net/vk/',
	filename,
	'.',
	(SELECT name FROM extentions ORDER BY RAND() LIMIT 1));

UPDATE media SET `size`= FLOOR(10000 + RAND() * 1000000) WHERE `size` < 1000;

UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id  = user_id),
	'"}'
);

ALTER TABLE media MODIFY COLUMN metadata JSON;

SELECT * FROM media_types;

TRUNCATE media_types;

INSERT INTO media_types (name) VALUES
	('photo'),
	('video'),
	('audio');U

UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);


SELECT * FROM friendship_statuses;

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
	('Requested'),
	('Confirmed'),
	('Rejected');

	
SELECT * FROM friendship LIMIT 30;

UPDATE friendship SET user_id = FLOOR(1 + RAND() * 100),
	friend_id = FLOOR(1 + RAND() * 100),
	status_id = FLOOR(1 + RAND() * 3);
	
UPDATE friendship SET declined_at = (SELECT updated_at FROM users ORDER BY RAND() LIMIT 1);

UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;


SELECT * FROM communities;

DELETE FROM communities WHERE id > 20;

SELECT * FROM communities_users LIMIT 20;

UPDATE communities_users SET 
community_id  = FLOOR(1 + RAND() * 20),
	user_id = FLOOR(1 + RAND() * 100);