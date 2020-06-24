SELECT * FROM posts limit 10;
select * from media;


UPDATE posts SET 
  community_id = FLOOR(1 + RAND() * 20),
  user_id = FLOOR(1 + RAND() * 100),
  media_id = FLOOR(1 + RAND() * 100),
  views_counter = FLOOR(10 + RAND() * 1000) WHERE views_counter > 1000;

 
UPDATE posts SET head = CONCAT(
	'Post from ',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id)
);