-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

CREATE UNIQUE INDEX user_email_uq ON users(email);

CREATE UNIQUE INDEX user_phone_uq ON users(phone);

CREATE INDEX users_first_name_idx ON users(first_name);

CREATE INDEX users_last_name_idx ON users(last_name);

CREATE INDEX profiles_photo_id_birthday_city_country_idx ON profiles(photo_id, birthday, city, country);

CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);

CREATE INDEX media_user_id_filename_idx ON media(user_id, filename);

CREATE INDEX likes_target_type_id_idx ON likes(target_type_id);

CREATE INDEX friendship_friend_id_idx ON friendship(friend_id);

CREATE INDEX communities_name_idx ON communities(name);

