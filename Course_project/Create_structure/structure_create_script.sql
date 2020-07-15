-- Создаем базу данных

DROP DATABASE IF EXISTS geekbrains;
CREATE DATABASE geekbrains;


-- Выбираем базу данных geekbrains текущей 

USE geekbrains;


-- Создаем таблицу пользователей

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки', 
  first_name VARCHAR(100) NOT NULL COMMENT 'Имя пользователя',
  last_name VARCHAR(100) NOT NULL COMMENT 'Фамилия пользователя',
  email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Почта',
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT 'Телефон',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Пользователи'; 


-- Создаем таблицу профилей

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT 'Ссылка на пользователя',
  photo_id INT UNSIGNED COMMENT 'Ссылка фотографию пользователя',
  gender CHAR(10) NOT NULL COMMENT 'Пол',
  birthday DATE COMMENT 'Дата рождения',
  city VARCHAR(100) COMMENT 'Город проживания',
  country VARCHAR(100) COMMENT 'Страна проживания',
  about_me TEXT COMMENT 'Обо мне',
  status_id INT UNSIGNED COMMENT 'Ссылка на статус пользователя',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Профили';


-- Создаем таблицу статусов пользователей

DROP TABLE IF EXISTS user_statuses;
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Название статуса',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'  
) COMMENT 'Статусы пользователей';


-- Создаем таблицу сообщений

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки', 
  from_user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  to_user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на получателя сообщения',
  body TEXT NOT NULL COMMENT 'Текст сообщения',
  content_id INT UNSIGNED COMMENT 'Ссылка на контент',
  is_delivered BOOLEAN COMMENT 'Признак доставки',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки'
) COMMENT 'Сообщения';


-- Создаем таблицу контента

DROP TABLE IF EXISTS contents;
CREATE TABLE contents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  course_id INT UNSIGNED COMMENT 'Ссылка на курс, которому принадлежит медиафайл',
  filename VARCHAR(255) NOT NULL COMMENT 'Путь к файлу',
  size INT NOT NULL COMMENT 'Размер файла',
  metadata JSON COMMENT 'Метаданные файла',
  content_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип контента',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Медиафайлы';


-- Создаем таблицу типов контента

DROP TABLE IF EXISTS content_types;
CREATE TABLE content_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название типа',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Типы контента';


-- Создаем таблицу курсов

DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название курса',
  is_payment BOOLEAN DEFAULT TRUE COMMENT 'Статус курса по оплате',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Курсы';


-- Создаем таблицу статей пользователей

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя, который создал статью',
  head VARCHAR(255) COMMENT 'Название статьи',
  body TEXT NOT NULL COMMENT 'Тело статьи статьи',
  content_id INT UNSIGNED COMMENT 'Ссылка на медиафайлы статьи',
  is_archived BOOLEAN DEFAULT FALSE COMMENT 'Статус статьи',
  views_counter INT UNSIGNED DEFAULT 0 COMMENT 'Количество просмотров',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки', 
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'
) COMMENT 'Статьи пользователей';


-- Создаем таблицу учебных групп пользователей

DROP TABLE IF EXISTS study_groups;
CREATE TABLE study_groups (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор сроки',
  name VARCHAR(150) NOT NULL UNIQUE COMMENT 'Название группы',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Время обновления строки'  
) COMMENT 'Учебные группы';


-- Создаем таблицу связи пользователей и учебных групп

DROP TABLE IF EXISTS study_groups_users;
CREATE TABLE study_groups_users (
  study_group_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на учебную группу',
  user_id INT UNSIGNED COMMENT 'Ссылка на пользователя',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки', 
  PRIMARY KEY (study_group_id, user_id) COMMENT 'Составной первичный ключ'
) COMMENT 'Таблица связи пользователей и учебных групп';


-- Создаем таблицу оценок

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя, который поставил оценку',
  target_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на целевой объект оценки',
  target_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип целевого объекта оценки',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки'
);


-- Таблица целевых объектов для оценки

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(150) NOT NULL UNIQUE COMMENT 'Название объекта оценки',
  created_at DATETIME DEFAULT NOW() COMMENT 'Время создания строки'
);
