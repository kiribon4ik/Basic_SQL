-- Выбираем базу данных geekbrains текущей 

USE geekbrains;


-- Создаем индексы для users

CREATE INDEX user_first_name_last_name_idx ON users(first_name, last_name);
CREATE UNIQUE INDEX user_phone_uq ON users(phone);
CREATE UNIQUE INDEX user_email_uq ON users(email);


-- Создаем индексы для profiles

CREATE INDEX profiles_photo_id_birthday_gender_idx ON profiles(photo_id, birthday, gender);
CREATE INDEX profiles_city_country_idx ON profiles(city, country);


-- Создаем индексы для messages

CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);
CREATE INDEX messages_is_delivered_created_at_idx ON messages(is_delivered, created_at);


-- Создаем индексы для posts

CREATE INDEX posts_head_views_counter_idx ON posts(head, views_counter);
CREATE INDEX posts_created_at_idx ON posts(created_at);
CREATE INDEX posts_updated_at_idx ON posts(updated_at);


-- Создаем индексы для grades

CREATE INDEX grades_target_id_idx ON grades(target_id);


-- Создаем индексы для study_groups

CREATE UNIQUE INDEX study_groups_name_uq ON study_groups(name);
CREATE INDEX study_groups_created_at_idx ON study_groups(created_at);


-- Создаем индексы для contents
CREATE INDEX contents_filename_size_idx ON contents(filename, `size`);
