-- Добавляем внешние ключи в profiles

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

     
-- Добавляем внешние ключи messages

ALTER TABLE messages
  MODIFY COLUMN from_user_id INT(10) UNSIGNED,
  MODIFY COLUMN to_user_id INT(10) UNSIGNED;
 
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT messages_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;
   
   
-- Добавляем внешние ключи media

ALTER TABLE users
  MODIFY COLUMN id INT(10) UNSIGNED;
 
ALTER TABLE media 
  MODIFY COLUMN user_id INT(10) UNSIGNED; 
 
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE CASCADE;

   
-- Добавляем внешние ключи users

ALTER TABLE users 
  MODIFY COLUMN status_id INT(10) UNSIGNED; 
 
ALTER TABLE users 
  ADD CONSTRAINT users_status_id_fk 
    FOREIGN KEY (status_id) REFERENCES user_statuses(id)
      ON DELETE SET NULL;
     
   
-- Добавляем внешние ключи friendship
     
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_users_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friendship_statuses_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
     ON DELETE CASCADE;
   
   
-- Добавляем внешние ключи communities_users
 
ALTER TABLE communities_users 
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
   
   
-- Добавляем внешние ключи likes

ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;
   
-- Не понял что подразумеваем под target!!!


-- Добавляем внешние ключи posts

ALTER TABLE posts 
  MODIFY COLUMN user_id INT(10) UNSIGNED; 
 
ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE CASCADE;
