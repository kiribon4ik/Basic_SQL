-- Выбираем базу данных geekbrains текущей 

USE geekbrains;

-- Добавляем внешние ключи в profiles

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,     
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES contents(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT profiles_status_id_fk
    FOREIGN KEY (status_id) REFERENCES user_statuses(id)
      ON DELETE SET NULL;

     
-- Добавляем внешние ключи contents

ALTER TABLE contents MODIFY COLUMN user_id INT UNSIGNED;

ALTER TABLE contents 
  ADD CONSTRAINT contents_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT contents_course_id_fk 
    FOREIGN KEY (course_id) REFERENCES courses(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT contents_contents_type_id_fk 
    FOREIGN KEY (content_type_id) REFERENCES content_types(id);
    

-- Добавляем внешние ключи messages

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_content_id_fk 
    FOREIGN KEY (content_id) REFERENCES contents(id); 
    
   
-- Добавляем внешние ключи posts

ALTER TABLE posts MODIFY COLUMN user_id INT UNSIGNED; 

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT posts_content_id_fk 
    FOREIGN KEY (content_id) REFERENCES contents(id)
      ON DELETE CASCADE; 


-- Добавляем внешние ключи study_groups_users

ALTER TABLE study_groups_users 
  ADD CONSTRAINT study_groups_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT study_groups_users_study_group_id_fk 
    FOREIGN KEY (study_group_id) REFERENCES study_groups(id);

   
-- Добавляем внешние ключи grades

ALTER TABLE grades MODIFY COLUMN user_id INT UNSIGNED;
ALTER TABLE grades MODIFY COLUMN target_type_id INT UNSIGNED;

ALTER TABLE grades
  ADD CONSTRAINT grades_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT grades_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE SET NULL;


