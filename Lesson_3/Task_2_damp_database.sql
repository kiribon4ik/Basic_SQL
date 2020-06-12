#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '1971-04-18 11:13:10', '1987-04-13 13:46:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'debitis', '1970-10-25 05:18:00', '2009-12-05 12:37:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quaerat', '1994-09-29 22:23:15', '1987-01-07 18:41:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'qui', '2012-07-31 17:50:54', '2004-10-11 16:33:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'aliquid', '2019-03-21 10:44:38', '2015-06-08 03:24:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'dolorem', '2016-03-05 23:01:16', '2013-12-01 01:04:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'omnis', '2008-05-03 13:43:35', '2009-12-07 21:33:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'sit', '1984-04-09 00:27:59', '1990-03-26 03:39:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'eligendi', '1999-04-25 18:07:32', '2005-05-08 01:30:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'aut', '2002-02-03 01:35:14', '1997-12-27 18:07:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'quasi', '1981-01-13 23:05:04', '1995-08-26 04:26:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'accusantium', '2018-09-28 00:08:57', '1971-02-16 10:40:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'provident', '2000-01-01 20:57:40', '2006-10-29 07:19:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'enim', '2001-10-30 04:02:55', '2013-07-14 08:35:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'ea', '2020-04-01 14:09:41', '1991-09-09 00:08:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'laudantium', '1998-01-08 19:30:56', '1971-01-15 04:20:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'voluptatem', '2002-04-22 09:18:50', '1986-08-25 05:58:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'cumque', '1978-07-11 00:42:43', '2017-09-07 13:37:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'quibusdam', '1998-11-23 09:47:30', '1992-06-29 13:56:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'autem', '2003-06-14 06:25:48', '2005-09-06 03:03:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'velit', '1999-11-19 14:29:32', '1981-06-29 20:32:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'quo', '1976-05-26 06:01:42', '1996-07-16 14:53:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'consectetur', '1997-08-11 10:57:00', '1984-04-20 12:10:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'similique', '1981-05-20 12:46:05', '1994-06-13 20:24:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'porro', '2013-08-09 05:31:07', '1984-05-23 10:16:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'non', '2012-12-04 21:01:46', '2014-03-21 10:32:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quidem', '1988-03-15 00:04:33', '2013-05-14 06:21:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'odio', '2008-01-11 20:01:46', '1975-06-28 08:39:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'molestias', '2016-10-18 10:25:19', '1990-11-04 02:52:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'nihil', '2015-06-06 17:14:40', '2015-12-26 20:18:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'id', '1999-10-07 08:22:27', '1983-11-22 21:03:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'necessitatibus', '2018-01-27 02:54:34', '2014-12-25 18:35:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'veniam', '1988-02-15 11:52:08', '2017-12-14 21:13:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'nostrum', '2008-05-29 09:17:58', '1998-10-12 04:14:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'quam', '2014-06-02 13:07:06', '1997-07-17 05:14:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'voluptas', '2007-05-26 15:55:55', '2007-07-27 11:06:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'quia', '2005-03-22 02:09:55', '2011-02-15 07:22:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'ipsam', '2013-06-14 08:34:21', '1994-10-01 20:52:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'facere', '1993-09-13 22:38:40', '1978-01-28 05:39:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'odit', '1989-06-14 09:44:47', '1979-10-21 05:04:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'sunt', '1980-04-28 09:52:27', '1970-10-10 20:05:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'quis', '1994-10-24 09:42:35', '1992-09-21 20:29:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'sint', '1975-05-04 03:51:03', '1998-10-30 09:57:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'ut', '1977-04-05 18:38:05', '1994-08-10 15:09:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'suscipit', '1995-12-20 03:03:32', '2004-02-18 03:21:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'reprehenderit', '1971-12-28 10:31:53', '1994-07-29 07:31:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'repellendus', '1975-05-19 20:03:12', '2008-12-26 06:01:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'sapiente', '2007-06-26 14:09:24', '2000-10-18 23:05:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'soluta', '2004-04-13 23:14:44', '2006-02-03 00:00:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'fugiat', '1980-04-04 19:33:30', '2014-08-26 14:57:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'dicta', '1994-04-11 12:13:25', '2009-10-12 09:23:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'aperiam', '2003-10-10 10:59:42', '2014-01-19 00:04:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'consequatur', '2019-02-16 21:07:28', '2015-02-11 15:31:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'beatae', '1972-12-02 04:44:14', '1979-05-26 21:28:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'modi', '2000-01-18 18:25:43', '1976-08-30 16:04:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'illum', '2005-05-15 12:44:27', '1993-09-02 04:14:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'iure', '1976-01-18 03:42:35', '1991-06-04 12:01:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'eaque', '2013-08-06 15:53:52', '2006-08-07 18:58:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'officia', '2019-05-17 03:26:36', '1986-05-15 07:27:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'accusamus', '1970-05-12 21:18:06', '1985-12-19 10:21:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'nam', '1991-03-28 18:07:28', '1979-11-27 20:44:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'vero', '2009-06-04 15:45:36', '2008-04-05 06:57:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'fugit', '1987-04-25 17:18:21', '2005-09-05 05:03:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'corrupti', '1993-03-24 20:09:46', '1981-01-27 14:59:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'est', '1972-10-31 06:39:29', '1970-08-24 21:22:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'adipisci', '1975-12-01 16:59:46', '2008-04-09 00:51:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'vel', '2011-02-26 01:38:41', '2009-03-04 12:19:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'voluptates', '2019-10-14 15:57:35', '1991-02-17 17:09:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'officiis', '2017-05-06 00:22:17', '2016-02-22 01:10:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'sequi', '1985-05-10 12:39:54', '1993-04-26 20:42:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'laborum', '1975-08-26 20:04:49', '1983-09-16 09:46:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'natus', '2018-01-12 10:03:39', '1993-10-17 15:29:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'dolores', '1975-09-17 12:02:35', '1982-02-16 01:16:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'sed', '1983-10-13 23:52:27', '1990-09-08 05:46:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'totam', '1996-08-29 17:29:02', '1998-06-01 10:52:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'praesentium', '2002-07-05 18:55:22', '2003-02-12 04:01:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'eius', '2006-01-03 02:44:00', '2011-02-07 15:35:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'ratione', '1984-11-08 16:40:03', '1991-01-16 15:23:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'ab', '1970-12-17 05:45:27', '2007-12-05 19:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'repellat', '1970-08-30 02:25:42', '1986-03-06 19:27:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'cum', '1973-01-01 15:28:15', '1991-08-21 15:14:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'rerum', '2012-02-12 16:50:34', '1974-01-27 08:12:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'occaecati', '1999-01-02 10:45:27', '1972-06-22 09:17:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'unde', '2011-01-28 15:02:06', '1972-02-06 09:21:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'nesciunt', '2008-04-12 19:18:20', '2015-03-11 12:03:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'aliquam', '2013-11-16 22:24:42', '1987-03-18 07:28:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'maiores', '1975-09-16 21:09:45', '2012-01-23 16:48:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'ducimus', '1998-03-24 21:54:52', '2011-02-12 14:35:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'corporis', '1976-05-15 16:37:44', '2005-08-24 11:50:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'molestiae', '1970-03-16 06:59:46', '1987-12-24 02:32:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'dolor', '1971-01-03 22:08:03', '1975-05-10 23:07:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ad', '2012-07-18 04:24:37', '2005-02-12 07:58:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'eum', '2002-03-10 03:54:59', '1998-09-28 03:15:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'ullam', '2018-03-13 07:38:46', '2012-07-06 05:01:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'optio', '1984-05-02 23:31:12', '2017-01-05 08:17:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'animi', '1972-03-13 05:35:25', '1994-09-22 18:20:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'recusandae', '1970-01-13 02:37:46', '1997-07-28 21:55:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'amet', '1984-03-18 09:23:23', '2009-01-29 14:15:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'minima', '2005-04-21 23:33:23', '2018-01-13 13:05:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'dolore', '2018-09-19 12:39:15', '1971-04-01 18:26:09');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1991-10-28 00:37:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1999-08-28 01:51:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1981-05-14 04:42:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1978-03-11 14:07:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1978-06-10 16:40:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2008-12-16 18:25:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1989-10-28 15:38:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1997-06-25 02:37:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1980-04-02 04:44:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2013-06-30 08:29:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1971-02-15 08:09:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1970-03-08 12:48:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2010-02-13 03:43:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1998-05-23 16:35:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1978-04-09 13:40:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2003-03-12 15:13:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2013-05-11 07:13:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2005-02-18 15:57:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1994-01-18 01:06:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1970-02-15 08:03:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1989-08-27 12:57:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '1998-01-25 23:10:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2019-06-28 06:02:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1972-08-15 14:22:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1989-12-24 02:38:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2004-12-09 04:06:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '1970-01-06 14:59:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2017-02-13 10:30:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1975-10-05 04:01:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '1981-11-01 21:26:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1975-09-22 17:16:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1970-04-16 05:41:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2014-12-10 14:26:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2007-05-05 02:57:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2013-09-16 02:52:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1984-09-24 00:50:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1979-01-21 21:53:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1997-03-10 18:32:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2013-06-08 13:35:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2012-06-05 20:17:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2007-07-10 17:01:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1994-06-19 16:40:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1992-01-19 08:41:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1980-05-17 08:22:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2010-02-11 12:38:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2016-11-05 15:10:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '1995-01-02 21:57:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2002-08-19 07:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1990-01-05 02:14:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1993-10-12 04:59:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '1989-09-16 11:55:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2013-12-14 00:46:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1980-05-04 10:33:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2000-10-17 22:28:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2003-01-19 05:29:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1970-06-15 05:25:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2006-07-18 13:45:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1972-10-29 23:37:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1977-05-25 20:16:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1972-11-20 18:47:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1979-06-07 03:19:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1973-03-23 17:24:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '1997-10-07 02:57:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2005-02-19 22:42:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1985-09-20 16:21:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2006-07-17 06:32:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '1998-11-05 19:22:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2003-03-29 20:41:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '1997-05-30 00:35:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2011-12-04 20:33:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2006-06-11 21:02:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1988-04-08 10:45:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1977-07-22 17:40:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2012-03-29 09:48:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2012-05-19 05:26:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1980-06-22 22:21:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '1998-10-28 04:12:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '1993-12-11 01:12:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '1983-08-03 06:05:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '2019-07-09 04:42:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1976-01-29 14:47:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1994-03-23 11:59:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2009-10-18 16:27:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1984-10-13 19:30:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1982-12-05 07:07:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1987-09-27 16:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '2014-09-29 05:48:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '1992-10-28 12:58:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2006-05-28 02:48:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1972-02-28 06:59:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2016-12-15 17:32:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1984-08-31 02:31:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1975-02-13 10:13:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1974-06-01 08:12:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1979-02-17 17:20:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1993-09-15 22:36:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1987-01-09 18:52:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2019-08-09 05:06:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2012-02-23 08:59:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2017-01-25 20:15:16');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2002-05-12 06:28:01', '2017-01-26 12:56:05', '1990-03-20 01:12:10', '1979-03-05 14:17:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2013-04-08 10:20:47', '1974-01-23 15:26:08', '1986-09-20 01:22:44', '2002-02-20 09:29:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2011-01-11 09:47:32', '2008-02-06 22:45:26', '1986-01-18 01:47:10', '2005-04-29 08:45:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2019-02-07 13:59:35', '2005-06-06 14:09:22', '1994-11-25 04:56:50', '1992-02-29 00:04:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '2000-01-04 22:46:02', '1999-12-25 02:19:25', '2011-12-13 00:46:40', '1994-07-19 13:10:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1992-02-08 21:13:31', '2014-06-25 04:08:18', '1994-07-13 04:32:50', '2013-11-06 18:16:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '2000-03-22 17:02:15', '1999-04-04 19:24:55', '1999-09-26 07:16:01', '1987-07-22 16:31:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '1974-01-06 22:50:20', '2013-07-13 08:01:54', '2010-07-02 08:21:47', '1975-08-24 01:35:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '2008-09-29 08:08:01', '1982-10-07 08:36:39', '1970-09-21 15:25:21', '2002-02-05 10:43:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '2001-08-12 12:10:55', '2014-08-20 18:31:34', '2005-06-13 22:18:32', '1983-03-13 11:15:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2001-10-26 16:08:51', '1995-03-05 15:47:56', '1994-12-21 13:28:01', '1983-01-29 05:30:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '2007-12-23 21:20:35', '2004-08-19 13:17:48', '1973-07-13 20:30:16', '2018-03-27 20:46:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 3, '1983-09-18 08:31:54', '1997-02-25 06:50:16', '2000-10-10 18:31:27', '1973-12-27 06:21:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 4, '1980-08-26 08:15:25', '1998-07-04 18:21:55', '2012-05-31 10:49:00', '1986-02-19 16:50:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 5, '2001-04-02 17:16:23', '1980-01-12 06:57:15', '1971-08-18 17:02:58', '1973-03-09 21:18:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 6, '1980-10-03 07:29:38', '1995-03-17 14:32:58', '1979-03-23 23:23:03', '1985-10-19 04:16:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 7, '1990-02-28 16:00:08', '1990-07-28 18:06:48', '1990-07-18 05:47:04', '2011-12-08 16:02:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 8, '1993-12-18 06:00:05', '1976-10-29 01:25:24', '1971-05-07 01:10:41', '2004-08-07 06:09:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 9, '1999-01-14 01:01:43', '2007-08-29 13:15:55', '2008-09-11 20:28:07', '1979-07-05 07:09:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 10, '1983-10-06 13:03:13', '1979-01-02 09:20:07', '2019-09-14 05:36:17', '2000-04-20 10:20:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '1994-02-05 23:05:38', '1978-05-24 18:45:31', '2006-08-07 13:50:38', '2007-08-28 20:47:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '1991-11-10 05:14:52', '1989-02-15 06:45:43', '2003-05-11 08:35:26', '1980-02-14 21:05:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 3, '1998-03-20 09:51:03', '1991-07-16 11:47:48', '2015-08-08 23:43:48', '2004-08-18 15:02:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '1982-07-26 13:27:22', '2002-11-19 22:21:53', '2014-03-07 15:29:26', '1983-01-28 17:10:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 5, '1984-08-23 00:53:58', '1994-01-28 15:21:00', '1988-03-20 03:06:03', '1997-07-26 06:45:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 6, '1979-05-14 23:16:23', '1999-06-06 07:40:43', '1985-11-29 10:23:08', '1999-03-06 15:37:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 7, '2010-02-04 06:11:55', '2016-10-22 00:11:26', '1993-08-05 20:08:09', '1988-07-11 07:30:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 8, '2010-06-07 06:41:32', '2004-05-24 11:39:40', '1988-08-25 06:08:01', '2006-08-22 02:13:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 9, '2006-07-31 03:24:15', '2000-09-01 05:40:13', '2004-12-09 19:36:43', '1980-03-02 01:57:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 10, '1972-12-27 00:59:30', '1975-09-25 16:49:06', '1994-04-04 17:55:58', '1998-08-13 22:03:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '1999-07-17 19:42:03', '1989-02-16 13:10:55', '2000-11-17 09:00:56', '2003-01-22 04:11:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '1989-03-28 07:10:29', '1999-04-13 04:17:12', '1974-01-25 23:32:19', '1973-04-20 17:29:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '1993-09-29 13:44:58', '1981-11-06 14:04:55', '1982-05-12 01:19:18', '1976-10-27 14:45:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 4, '1998-10-03 01:50:43', '1989-04-06 10:48:15', '2010-01-14 09:54:39', '1988-04-07 19:47:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 5, '1978-01-20 02:35:11', '1994-03-19 22:06:47', '1990-12-11 23:44:53', '1985-05-29 16:30:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 6, '2002-12-26 11:58:15', '1970-09-15 09:31:30', '1995-02-12 21:00:41', '2019-12-28 11:01:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 7, '1981-02-13 11:36:10', '1997-01-29 03:23:53', '1978-11-08 19:52:07', '1999-07-11 12:43:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 8, '2003-02-26 11:26:39', '1996-01-14 16:31:04', '2006-08-14 10:55:09', '2012-12-01 04:42:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 9, '1979-12-19 21:47:43', '1979-05-15 13:10:12', '2001-10-17 17:13:31', '1987-08-09 19:28:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 10, '2017-11-25 16:49:57', '1986-05-25 12:11:54', '2020-05-19 12:55:41', '1980-06-29 14:00:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '1970-01-11 12:55:51', '2014-01-15 19:32:39', '1982-11-03 09:04:00', '1993-08-24 01:54:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '2019-06-05 08:59:44', '2013-10-22 10:31:47', '1989-02-13 17:42:00', '2013-12-06 08:35:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 3, '1995-06-14 15:04:55', '1979-07-28 04:11:40', '1977-09-08 04:50:40', '2001-03-24 07:04:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 4, '2010-12-01 19:52:21', '1991-11-11 17:00:23', '1978-03-04 11:39:16', '2010-08-02 20:16:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 5, '1985-08-18 20:48:18', '1982-06-29 17:33:44', '1991-09-14 04:59:37', '1987-04-10 14:51:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 6, '1993-07-05 03:51:08', '1990-02-21 20:01:46', '2017-07-12 17:44:33', '2018-10-22 14:22:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 7, '2006-12-26 06:47:09', '1991-05-05 21:39:40', '1976-07-31 09:09:58', '2002-11-02 12:45:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 8, '1981-10-23 01:52:32', '2014-04-29 04:05:12', '1996-12-07 06:57:11', '2003-05-19 09:52:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 9, '2005-08-11 07:06:58', '1979-08-14 19:33:38', '1994-01-18 13:20:35', '1988-04-07 20:11:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 10, '1991-12-24 08:34:47', '1994-11-15 00:03:17', '1989-12-02 03:16:44', '1983-07-18 19:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '2011-08-07 21:08:24', '2001-02-09 14:08:53', '1978-07-31 16:30:48', '2013-07-27 03:42:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '1998-10-14 11:21:39', '1977-10-31 23:51:22', '1990-10-30 06:04:47', '1980-06-14 18:26:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 3, '1977-05-24 22:00:28', '1993-06-12 13:52:33', '1972-08-19 16:33:22', '2005-07-14 12:35:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 4, '2003-09-24 10:09:53', '2009-03-08 18:06:15', '1989-05-25 08:43:44', '2002-08-14 06:50:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 5, '2020-01-29 05:22:22', '1977-09-14 01:22:32', '2014-05-27 11:21:14', '2017-02-10 12:01:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 6, '2004-03-25 03:25:17', '2004-07-02 03:27:12', '1986-11-22 16:52:59', '1993-03-07 14:56:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 7, '2000-10-17 13:17:59', '2019-09-04 22:43:15', '2009-07-07 19:33:14', '1988-05-01 06:24:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 8, '2012-10-12 06:32:22', '1993-07-01 05:18:29', '1984-02-15 09:13:53', '1986-08-09 15:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 9, '1980-07-13 13:51:08', '1970-02-28 20:05:48', '1996-02-23 08:21:50', '1989-01-21 03:28:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 10, '1975-02-18 16:32:38', '1982-11-24 19:29:24', '1986-04-04 06:22:30', '1997-11-20 21:22:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2000-07-08 06:11:06', '2004-02-07 03:35:06', '1971-06-11 20:49:28', '1987-04-30 22:51:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '1975-04-05 22:17:22', '2011-06-14 23:57:51', '1973-09-21 08:17:48', '1971-11-25 16:35:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '1971-03-26 15:45:24', '1984-12-10 14:41:26', '2005-06-10 08:20:01', '1997-04-16 23:32:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 4, '1984-05-20 19:36:30', '2000-05-26 20:00:52', '2003-11-15 15:06:35', '2018-06-14 13:43:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 5, '1978-12-23 03:37:18', '1984-02-17 11:25:22', '2016-11-24 23:18:35', '1995-09-24 05:23:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 6, '1980-10-19 13:54:24', '1977-07-15 07:33:51', '1984-07-26 14:44:07', '2012-10-22 10:55:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 7, '1979-04-29 06:58:22', '1992-02-02 00:00:10', '1979-12-01 05:54:08', '1990-08-07 15:36:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 8, '2016-07-10 01:34:15', '2000-03-11 03:18:34', '2008-03-21 10:32:16', '1994-06-18 09:40:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 9, '1996-03-19 13:07:19', '1989-01-24 08:39:31', '1970-04-01 17:00:43', '1998-03-07 17:33:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 10, '1973-05-13 14:24:07', '1989-04-02 23:07:22', '1980-05-23 00:37:35', '1974-01-16 19:54:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '2009-06-21 00:08:00', '2013-02-17 17:47:02', '1979-12-19 07:56:51', '2002-06-08 16:19:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '1994-10-09 22:36:24', '2012-04-11 22:13:56', '2004-05-07 16:26:25', '1975-03-08 18:27:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '2015-10-18 09:22:12', '1971-02-28 02:20:17', '1976-05-15 21:53:17', '1982-12-04 04:09:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 4, '1980-09-13 20:08:36', '1999-05-15 00:39:20', '1993-05-07 16:02:38', '2016-11-16 22:15:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 5, '1997-02-13 22:28:14', '1973-06-28 19:47:38', '1984-01-01 21:45:58', '1985-12-29 06:49:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 6, '1975-01-23 00:06:30', '2003-10-30 08:25:51', '1972-02-07 19:07:42', '1975-09-08 17:28:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 7, '2004-07-25 01:54:44', '2011-10-24 11:45:10', '2006-08-22 14:19:39', '1990-03-12 14:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 8, '1979-12-18 04:57:55', '1972-03-09 06:51:58', '2014-01-22 13:21:41', '1989-09-19 20:34:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 9, '1999-12-30 07:56:18', '2007-06-14 18:34:59', '2008-12-05 23:55:55', '1998-08-07 21:32:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 10, '1975-08-29 23:52:37', '1983-02-03 04:10:53', '2000-02-06 22:57:58', '1981-09-12 05:56:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '1973-06-19 04:26:57', '2007-12-04 06:12:21', '2015-02-23 14:11:09', '1975-06-21 18:06:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '1997-05-13 10:15:09', '1993-12-27 10:27:27', '2015-10-09 12:39:51', '1988-02-05 16:32:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 3, '2008-04-03 10:28:57', '2017-03-03 23:01:43', '1984-02-20 13:50:25', '1979-12-24 12:30:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 4, '1997-07-27 05:44:21', '1984-05-11 20:05:02', '2005-02-10 19:49:18', '1981-09-13 06:49:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 5, '2012-08-28 14:30:08', '1991-06-01 00:18:35', '2018-08-11 14:39:02', '2018-05-27 08:18:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 6, '1981-03-09 09:37:28', '2011-03-28 13:57:11', '2000-06-14 20:44:40', '1979-10-11 01:53:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 7, '1999-11-13 09:13:52', '1994-04-15 10:37:42', '1970-01-11 17:51:57', '1989-07-27 19:12:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 8, '2020-05-23 18:36:21', '1978-12-10 07:46:16', '2004-06-25 14:05:29', '1985-12-08 21:55:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 9, '2005-06-07 14:37:02', '2017-04-18 03:15:15', '2015-01-23 18:11:14', '1977-04-21 00:39:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 10, '1992-03-23 02:40:17', '1999-08-26 00:41:07', '1995-01-21 15:16:35', '1977-01-22 14:02:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '1983-05-03 08:43:37', '2005-01-15 03:18:44', '1973-02-15 17:25:16', '2005-10-02 01:40:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '1982-02-23 02:11:33', '1978-11-30 15:16:59', '1991-11-28 12:54:24', '1989-08-01 08:31:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '2020-05-13 03:59:16', '1970-03-05 02:53:59', '2001-07-11 08:18:24', '2019-07-11 08:38:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 4, '1987-05-27 23:55:07', '1974-01-13 06:58:41', '1993-02-08 15:40:11', '2009-11-02 15:42:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 5, '2014-06-06 12:03:18', '1993-02-24 05:45:27', '2012-11-15 05:15:44', '2014-02-05 10:43:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 6, '2001-05-07 00:26:55', '1977-07-02 10:06:00', '1974-02-06 11:15:05', '1993-04-08 06:14:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 7, '2001-12-29 19:47:08', '1979-06-18 18:08:00', '2015-12-07 12:29:43', '1990-10-27 23:05:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 8, '1992-12-07 22:37:09', '1976-05-09 15:37:08', '2015-10-11 00:40:17', '1979-12-20 06:16:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 9, '1987-10-27 08:46:02', '1980-10-16 05:32:35', '2006-12-04 03:45:38', '1987-08-21 01:49:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 10, '1999-06-20 14:45:07', '1982-05-09 08:29:18', '1971-12-02 15:09:33', '1975-09-05 03:55:18');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quo', '2015-03-15 20:55:59', '1989-08-25 09:45:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'corporis', '1976-05-28 06:01:02', '2000-06-23 16:20:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'exercitationem', '2004-11-14 02:22:04', '1976-06-17 15:54:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'sed', '1983-08-09 08:52:48', '2000-03-18 08:07:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quaerat', '1993-10-22 06:36:42', '1971-02-15 20:09:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'est', '1987-08-27 11:05:53', '2018-10-01 10:57:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'illo', '1997-12-23 23:19:40', '1974-10-23 04:44:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptatem', '1999-05-17 04:34:01', '1977-05-24 02:22:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'perspiciatis', '2012-02-09 13:13:20', '2001-12-14 03:40:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'dicta', '2013-12-11 21:53:11', '1997-11-14 19:16:48');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'ut', 2209, NULL, 1, '2011-05-02 21:39:37', '2008-01-05 20:29:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'et', 784786407, NULL, 2, '2008-04-03 00:59:27', '1972-10-12 16:51:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'neque', 2612, NULL, 3, '1972-07-10 20:43:04', '2004-01-03 16:41:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'rerum', 20, NULL, 4, '2011-11-03 00:29:23', '1997-09-15 08:46:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'et', 9, NULL, 5, '2002-08-12 14:33:44', '1980-02-19 06:38:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'impedit', 468545, NULL, 6, '2016-05-19 05:26:44', '2009-02-09 12:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'enim', 19850, NULL, 7, '1972-05-08 18:45:56', '1987-05-09 04:17:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'ipsa', 8, NULL, 8, '2007-03-12 14:11:26', '2007-12-17 11:24:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'dolor', 296, NULL, 9, '1973-05-03 02:28:58', '2004-09-29 20:55:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'eum', 13274, NULL, 10, '1987-04-02 23:45:03', '2015-10-26 01:16:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'asperiores', 785924646, NULL, 11, '1991-02-25 00:27:07', '2016-10-12 14:42:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'assumenda', 36083, NULL, 12, '2003-06-10 13:32:53', '1982-02-17 12:02:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'error', 0, NULL, 13, '1997-02-19 09:39:23', '1973-09-17 14:20:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'adipisci', 3290, NULL, 14, '2014-05-30 22:51:47', '2000-06-29 18:44:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'sint', 0, NULL, 15, '1992-10-28 00:15:34', '2007-12-02 00:52:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'rerum', 93826600, NULL, 16, '1977-01-10 21:30:07', '2007-08-23 12:35:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'vero', 1773115, NULL, 17, '2015-06-06 20:31:24', '2004-01-08 00:47:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'dicta', 5697156, NULL, 18, '1980-09-12 21:44:37', '1979-12-13 17:40:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'alias', 29654223, NULL, 19, '1999-08-17 00:46:18', '1996-06-29 15:29:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'quisquam', 3, NULL, 20, '1994-10-20 08:52:12', '2019-06-09 04:30:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'ex', 2, NULL, 21, '1982-11-26 12:38:59', '1996-01-22 06:32:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'et', 36, NULL, 22, '2002-07-08 19:58:55', '1978-03-13 17:17:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'praesentium', 5302, NULL, 23, '1975-05-19 11:21:52', '1972-11-25 16:10:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'quos', 583685, NULL, 24, '1980-03-09 20:38:53', '1994-01-27 09:58:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'molestias', 7466753, NULL, 25, '1998-01-01 15:41:47', '1990-12-21 03:46:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'unde', 49200, NULL, 26, '2011-05-04 13:59:53', '1991-04-20 21:36:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'ex', 6037, NULL, 27, '1998-11-27 15:23:33', '1997-01-04 03:38:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'nostrum', 841158403, NULL, 28, '1983-08-23 11:27:38', '2009-12-27 20:32:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'consequuntur', 7649519, NULL, 29, '1975-07-01 16:33:10', '2011-09-13 23:56:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'sequi', 5, NULL, 30, '1988-02-25 10:49:31', '2007-12-31 14:22:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'facere', 7, NULL, 31, '1985-11-06 19:27:32', '1971-06-12 13:11:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'qui', 88, NULL, 32, '1992-12-01 14:25:31', '1989-02-20 20:03:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'laudantium', 2050526, NULL, 33, '2020-03-14 00:20:57', '1985-12-19 21:43:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'aspernatur', 0, NULL, 34, '1975-12-07 05:42:01', '2016-01-18 22:14:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'sunt', 4224, NULL, 35, '1992-07-22 03:57:02', '2000-11-09 21:43:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'est', 42540549, NULL, 36, '1975-08-18 10:13:38', '2003-01-08 03:35:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'voluptas', 482325307, NULL, 37, '1979-12-17 20:23:49', '1997-08-10 02:10:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'eos', 838678, NULL, 38, '1980-02-26 22:10:03', '1986-12-25 15:43:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'suscipit', 817832, NULL, 39, '1999-08-30 19:50:25', '1975-04-25 09:01:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'sed', 511, NULL, 40, '1986-06-27 20:29:58', '1995-08-15 14:44:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'voluptas', 4470, NULL, 41, '1986-09-18 04:26:27', '1975-04-01 22:51:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'alias', 5775, NULL, 42, '2002-09-09 01:58:15', '1979-09-02 19:05:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'ipsam', 18928, NULL, 43, '2006-06-30 01:13:40', '2004-02-25 06:04:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'tempora', 4, NULL, 44, '1970-06-21 00:46:17', '1997-09-05 15:58:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'maiores', 51790, NULL, 45, '2013-10-05 20:28:37', '1995-12-03 05:54:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'ut', 567, NULL, 46, '1994-09-15 05:49:43', '1993-05-11 08:48:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'nostrum', 98818214, NULL, 47, '2003-01-31 21:34:14', '1973-05-03 00:40:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'sint', 156, NULL, 48, '2019-03-29 02:48:37', '1977-05-17 18:01:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'nostrum', 1448, NULL, 49, '1992-07-08 04:14:10', '1971-10-02 22:19:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'et', 975, NULL, 50, '2010-05-17 08:54:08', '2020-03-26 15:28:54');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'amet', '2001-06-05 15:35:43', '2017-07-04 02:11:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'magni', '1974-07-20 15:36:41', '2005-08-02 07:55:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'doloribus', '1977-12-06 14:39:26', '2014-06-13 14:34:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'ullam', '1993-04-15 13:03:39', '2007-05-07 06:54:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'consequuntur', '2019-07-13 22:57:26', '1987-10-31 18:27:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'autem', '2001-11-24 21:21:22', '1995-12-02 20:51:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'sit', '2011-06-12 11:53:12', '1993-08-30 11:08:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptates', '1977-11-27 23:12:24', '2002-12-30 18:12:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'deleniti', '1979-09-20 20:12:55', '1972-11-22 19:34:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'blanditiis', '1976-05-24 05:10:23', '2000-08-17 19:57:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'molestiae', '1975-10-10 04:54:06', '1977-03-09 02:49:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'maiores', '1973-04-04 18:17:28', '1994-07-23 09:39:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'qui', '2018-06-17 20:44:26', '1977-09-12 19:59:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'placeat', '1977-10-27 20:23:19', '1971-08-16 08:17:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'earum', '1986-08-19 00:46:55', '2012-04-23 03:44:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'sint', '2013-01-22 02:09:30', '1986-05-26 14:04:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'atque', '1980-01-13 16:17:46', '2007-01-22 18:39:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'recusandae', '1986-11-01 14:51:45', '2007-08-14 16:38:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'deserunt', '1984-01-12 06:30:42', '1989-02-05 12:08:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'in', '2004-12-31 04:56:12', '2011-08-03 02:42:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'saepe', '2017-11-22 12:52:58', '1975-11-25 00:24:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'fugiat', '1977-04-03 07:03:40', '1998-07-26 11:32:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'optio', '1980-08-02 03:18:04', '1999-08-19 15:21:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'rerum', '2011-01-05 02:44:50', '1997-01-29 05:29:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'repudiandae', '1979-01-18 11:00:43', '2016-02-28 15:24:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'at', '1998-07-03 02:08:48', '1995-10-21 00:46:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'iure', '1982-08-02 10:41:55', '1980-02-10 17:33:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quia', '2009-09-09 04:26:43', '1989-08-26 19:31:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'quasi', '1976-10-16 20:32:23', '1985-06-16 12:17:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'similique', '2020-01-10 02:47:39', '2000-05-24 09:06:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'ab', '1997-01-11 15:36:16', '1975-05-03 17:51:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'aliquid', '1979-12-12 14:22:33', '2016-12-08 02:52:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'et', '2011-03-18 03:20:26', '1997-01-06 12:44:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'enim', '2007-07-20 07:20:30', '2014-11-12 14:55:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'est', '1992-06-03 17:32:26', '1985-10-30 00:39:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'nihil', '2005-01-10 17:31:37', '2004-08-14 20:02:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'exercitationem', '2006-02-10 20:11:20', '1992-01-12 09:22:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'eum', '2011-07-20 04:13:00', '1971-04-15 03:06:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'impedit', '1981-05-04 21:57:35', '2018-06-01 13:26:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'officia', '1981-05-02 18:01:35', '2014-11-28 18:51:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'quos', '1991-03-25 08:06:31', '2010-02-23 14:20:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'rem', '1983-08-15 06:15:36', '2015-08-11 06:09:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'odio', '1995-01-05 22:36:29', '1990-10-05 16:36:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'dolor', '1972-08-23 13:16:56', '2018-10-06 23:26:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'ipsam', '2012-01-29 17:56:00', '1995-03-21 22:39:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'aperiam', '2012-04-13 02:53:01', '1986-12-21 10:39:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ut', '2013-03-21 20:28:23', '1991-11-04 18:09:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'sunt', '1983-03-25 21:42:52', '2011-04-11 00:08:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'unde', '2017-01-07 00:37:58', '1985-01-29 12:13:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'sequi', '1974-02-22 13:32:01', '1970-01-27 08:00:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'incidunt', '2004-07-30 21:59:20', '2019-11-15 09:44:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'sed', '1988-02-06 12:40:03', '1992-03-05 03:30:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'velit', '1973-03-22 03:02:57', '2001-06-01 08:21:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'vitae', '2003-02-28 13:28:24', '2016-09-20 23:38:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'cum', '1989-04-23 08:46:32', '2007-07-23 15:19:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'veritatis', '1999-12-08 14:26:34', '1984-01-24 18:20:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'veniam', '1979-10-11 12:59:42', '1985-05-14 13:37:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'ea', '1971-06-11 04:23:20', '1992-12-08 09:35:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'tenetur', '1993-06-14 09:54:50', '1988-10-08 16:45:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'omnis', '2006-03-12 03:05:07', '1995-03-31 12:54:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'minima', '1989-05-21 11:06:38', '2013-04-29 15:22:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'fugit', '1991-11-19 12:20:21', '2019-02-12 16:29:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'voluptatum', '1982-01-07 02:37:27', '1985-05-19 13:24:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'necessitatibus', '2005-03-20 06:57:44', '1991-10-15 08:23:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'soluta', '1975-12-04 15:59:16', '1980-07-01 07:24:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'totam', '1988-11-29 05:31:22', '1971-06-14 12:40:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'alias', '2003-04-29 07:03:32', '1985-03-12 14:27:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ad', '1988-06-01 13:38:43', '1984-01-16 01:46:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'reiciendis', '1985-03-29 20:21:41', '1972-08-26 23:53:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'nisi', '2003-12-24 14:59:32', '2019-03-21 04:16:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'modi', '1981-04-28 06:10:27', '2006-05-28 06:03:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'quod', '1974-06-01 08:53:43', '1979-10-27 21:38:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'voluptas', '2017-03-01 09:16:44', '2017-11-30 00:16:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'odit', '2013-06-09 05:29:10', '1987-11-03 04:42:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'fuga', '1988-09-07 22:32:42', '1975-07-26 05:32:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'vel', '1981-03-07 17:45:39', '1994-01-10 16:32:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'assumenda', '2005-05-28 03:20:33', '1996-01-16 18:05:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'consectetur', '1994-10-06 14:19:14', '2001-10-21 04:47:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'consequatur', '2008-11-14 05:08:48', '2006-12-02 08:45:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'laboriosam', '1972-08-06 09:25:28', '1976-05-28 08:08:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'corrupti', '1979-02-23 00:58:57', '1995-01-03 20:03:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'iusto', '1998-04-19 08:51:29', '2016-06-19 05:37:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'laborum', '1970-02-21 20:29:22', '1991-02-25 18:50:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'dolores', '2009-10-13 07:54:19', '2001-12-26 10:23:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'accusantium', '2006-06-14 23:40:09', '2007-09-11 11:55:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'facere', '2001-02-04 10:48:35', '1984-02-22 16:21:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'tempore', '2005-08-20 18:25:44', '1988-10-06 20:24:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'perferendis', '2008-08-20 11:02:23', '1988-03-10 20:42:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'id', '2015-07-20 20:18:14', '2014-02-15 01:08:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'quisquam', '2005-11-24 03:21:00', '1971-02-07 14:54:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'delectus', '2000-06-12 05:19:01', '2010-02-21 00:13:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'eius', '2018-11-03 21:13:40', '2014-04-01 23:17:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'quis', '1974-01-02 11:18:56', '1983-05-31 01:19:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'dicta', '2011-08-04 09:46:23', '1976-08-03 23:50:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'occaecati', '1991-09-03 17:14:50', '2014-08-19 13:31:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'sapiente', '1981-10-17 14:24:48', '1985-10-13 07:12:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'dolorum', '1983-06-26 07:13:52', '1975-03-13 01:27:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'laudantium', '2015-10-21 22:12:46', '1971-09-23 14:43:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'excepturi', '2002-12-14 20:41:16', '1995-08-06 19:46:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'eaque', '2005-08-22 13:41:36', '2004-03-07 13:53:41');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Impedit similique optio consequatur est est illum. Velit rem optio velit. Omnis sunt est molestiae doloribus eum cupiditate. Alias cupiditate fugit pariatur debitis id quod.', 0, 0, '1980-07-06 14:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Est ut accusantium id mollitia sit. Sint porro natus molestiae sit sunt. Non qui consequatur non numquam repellat consequatur ipsa.', 1, 0, '2001-05-16 13:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Magnam aut illum eos. Neque consequatur ex quisquam at aut vero. Et qui ut fugit placeat sed officia deleniti.', 1, 1, '1987-10-17 16:41:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Et doloremque deleniti nulla earum doloribus occaecati sit. Sint voluptates iusto ipsam aut aliquid et ut. Itaque eum ut iusto nemo dolor quo.', 0, 1, '1976-01-31 07:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Amet laborum est laudantium aspernatur odit optio iste soluta. Aut voluptatem vel quo hic labore est. Quos saepe eius quod voluptatem sint maiores pariatur dolorem. Perferendis unde est nam accusantium tenetur velit dicta.', 1, 0, '2013-05-21 00:46:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Aliquid ut sunt et excepturi corrupti voluptates molestias. Eum magnam et officia ea sequi. Similique dolor velit est maiores sit esse voluptas. Debitis nemo maiores adipisci quia similique ut perspiciatis.', 0, 0, '1976-07-22 17:14:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Quis at sed nisi et qui nesciunt esse. Quia et sapiente laudantium quae nisi. Quis aut eveniet quia consequuntur earum ea distinctio.', 1, 0, '1996-05-25 10:15:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Cum deserunt et fugiat et earum assumenda sapiente. Ad recusandae odit et. Cupiditate aut consequatur voluptatem consequatur autem. Fugit vero natus ipsa non facere perspiciatis porro earum.', 0, 1, '1997-03-02 19:53:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Beatae enim voluptatum quia eos. Est magnam ut in sequi et recusandae dolor. Consequatur commodi repellat et omnis voluptatem recusandae aperiam.', 1, 0, '2006-12-18 08:40:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Est provident amet vel et. Voluptatem occaecati est corporis. Voluptas distinctio voluptatem qui sint quia rerum.', 0, 1, '2019-04-24 16:24:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Aut et necessitatibus in fuga. Voluptas occaecati ducimus dolor saepe neque maiores. Minus non nam delectus a et. Aut magnam et eaque quibusdam enim.', 0, 1, '1984-10-11 21:31:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Exercitationem vero explicabo facilis eos sit ut. Iure dolores illo nihil. Ipsam saepe officiis quibusdam.', 0, 0, '2014-11-30 01:51:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Ea maiores non porro. Quae vel provident exercitationem iusto. Dolorum explicabo deserunt qui rem vel. Necessitatibus odio nam beatae assumenda debitis.', 0, 0, '1979-03-29 20:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Maxime rerum architecto aliquam dignissimos dignissimos. Quaerat quibusdam consectetur blanditiis consequatur et doloribus neque. Atque temporibus nihil tempore et necessitatibus quo quis.', 1, 1, '1972-10-28 08:47:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Facere reiciendis eos ut aut vel fuga. Commodi aliquam natus alias amet quasi. Assumenda quas unde ipsam placeat libero.', 0, 0, '1987-11-15 16:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Inventore omnis iusto accusantium id illo. Architecto culpa qui corporis.', 1, 1, '1997-04-13 22:27:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Nobis consequatur impedit voluptatem commodi nesciunt magni ut. Dolores sunt enim quia deserunt sit. Explicabo iure ea accusamus praesentium sed dignissimos laboriosam.', 0, 1, '1997-11-04 18:22:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Ullam doloremque ut veniam ab repellendus. Voluptatibus itaque iure commodi beatae ut. Aperiam esse et praesentium. Fugit aut fugiat corporis odit voluptatum impedit consequuntur.', 0, 1, '1982-06-01 05:51:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Tempore tempora quisquam molestiae. Ut et aspernatur magnam aliquam eveniet asperiores. In molestias optio sit. Porro illum minus rerum ullam hic.', 1, 0, '1973-07-13 07:29:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Velit illo consequatur quos. Non non exercitationem illum sequi. Labore iste consectetur rerum commodi minima et.', 1, 0, '2010-03-14 21:20:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Repudiandae ut in sed est. Placeat magni et totam beatae nihil quod. Et iusto deserunt nihil recusandae iste.', 0, 0, '1999-12-10 08:51:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Ipsa odit occaecati ut corrupti at culpa ipsam. Aperiam fugit ipsam veniam officiis deserunt. Fugit maxime tenetur minus similique et sed fugit.', 1, 0, '1999-08-15 01:50:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Alias quasi maiores nam eaque explicabo exercitationem assumenda. Et recusandae nemo mollitia odit deleniti cum aliquam. Eum consectetur labore accusantium fugiat et totam.', 0, 0, '1998-01-24 18:26:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Voluptas magnam culpa aut et officiis. Dolore ex voluptatum esse natus. Debitis voluptas blanditiis laboriosam vitae aut.', 1, 1, '1975-02-07 09:42:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Voluptatum quia animi aut debitis quia. Sed ratione repellendus ad qui. Vel ducimus corrupti placeat earum. Voluptas id molestiae vitae iure recusandae rem. Qui unde unde soluta sed.', 0, 0, '1987-09-12 00:55:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Fugit in aut debitis sit aspernatur provident nesciunt. Rerum debitis iste qui sequi sed eligendi incidunt. Quis aut minus facere dolor. Tenetur et aut aliquid hic doloribus.', 0, 0, '2012-02-05 09:51:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Corrupti sint ad molestiae a praesentium quod qui. Et impedit itaque est adipisci itaque ut sint sunt. Maxime et dolorem vel.', 0, 1, '2004-05-25 00:41:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Ab molestiae occaecati qui voluptatem a. Qui quis ut consequatur deleniti vel.', 1, 1, '1988-03-09 05:01:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Et hic voluptas enim labore amet. Voluptatem quis maxime et et. Nam soluta sed est non tempore numquam ut vitae. Occaecati iure non deleniti dolorem occaecati.', 1, 0, '2000-10-19 04:30:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Eos sapiente doloribus aut odit. Repellat nihil in est enim sed. Sed assumenda voluptates adipisci ut facere.', 0, 1, '1992-12-06 08:59:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Omnis quis voluptates animi cupiditate accusantium occaecati autem. Iusto ut in modi quia velit. Nesciunt et error et aut et. Optio beatae libero a sint dolor facilis.', 0, 1, '2002-04-14 10:24:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Tempore beatae excepturi autem est. Et dolorem iure et et ducimus consequatur. Quos accusantium quos dolores voluptatem. Id animi assumenda expedita ex voluptatem autem maxime.', 0, 1, '1998-10-04 17:51:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Ea necessitatibus magnam optio. Repudiandae autem qui consequuntur est asperiores dolore. Amet aut nostrum reprehenderit velit est ipsum voluptatem. Magnam iste omnis nihil ducimus.', 0, 0, '1980-05-31 01:12:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Quo molestias consequatur sit fuga vitae rerum dolor. Illo doloribus commodi itaque et ut. Quo soluta iure rerum enim vel sapiente. Enim est delectus exercitationem similique tempora.', 1, 1, '1986-02-17 15:21:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Quia est unde sed perspiciatis. Blanditiis alias nam vero amet omnis quia. Laborum quos qui voluptatem qui aspernatur qui. Aut et blanditiis vero qui corporis optio.', 1, 0, '1994-03-14 12:22:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Dolores voluptas aliquam quas quis porro ipsa. Aut aut debitis sed facilis qui sint ipsam. Libero eum harum minima consectetur mollitia sint quasi. Distinctio assumenda quis rem repudiandae.', 0, 0, '2006-08-12 18:16:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Molestiae quibusdam rerum ullam inventore dolorem. Sed distinctio inventore vero eligendi. Id velit quis sapiente exercitationem. Ab ea perspiciatis aperiam.', 0, 0, '1970-09-25 05:27:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Dolorum occaecati voluptas cumque. Voluptatem nesciunt rerum expedita voluptate. Qui error in quis maiores dolorem ad.', 1, 0, '1983-10-22 20:17:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Ea impedit voluptatem deleniti. Hic fugit natus sapiente tenetur praesentium ab et. Maxime repellendus unde quae quas et quo rerum. Blanditiis perspiciatis excepturi ut animi ad reprehenderit nam.', 1, 1, '1992-03-10 07:44:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Alias voluptatem est et voluptas. Asperiores ad id dolorum quo tenetur delectus. Sed ut distinctio id cupiditate quisquam. Quaerat ipsum quas ad et magnam vel earum.', 1, 1, '1970-08-05 00:18:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Labore voluptatum et qui sit. Et saepe deserunt quisquam ullam veritatis. Rem aut possimus quisquam sit facilis enim. Eos pariatur dolores laudantium odit voluptatem numquam.', 0, 0, '1995-12-05 07:02:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Neque ut totam aut. Laudantium qui alias et dolorem magnam et et. Sunt omnis molestiae tempora.', 0, 0, '2012-03-09 17:57:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Aut non fugit id impedit cum autem est. Nemo eligendi delectus ut sunt ut voluptatem aut. Aliquid accusantium delectus labore sit libero.', 0, 1, '2014-10-14 05:02:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Magnam labore excepturi et nisi impedit sit sit quo. Et consequatur praesentium qui eos. Rerum ullam rem fugiat enim. Ullam laudantium numquam officiis voluptas autem.', 0, 1, '1992-11-22 15:01:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Vero voluptatem dolor temporibus. Totam dolores nisi aliquid quia non eum nobis deleniti. Fuga suscipit et iste sunt ducimus laborum. Eos id laborum et consectetur nostrum.', 1, 0, '1996-03-07 20:09:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Porro provident deleniti ea dolorem. Nesciunt perspiciatis ut molestiae numquam eos eum sint. Rerum omnis debitis asperiores corrupti.', 1, 1, '2002-07-28 02:38:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Et quos facilis rerum voluptatibus. Est consequatur aut enim atque quia. Quisquam culpa aut vero nulla. Aut aut labore illum aliquam excepturi et voluptatem.', 0, 1, '1977-11-20 10:09:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Molestias sit nihil iusto in in suscipit. Distinctio veniam doloribus est. Voluptas dolor cupiditate iusto atque similique inventore earum. A architecto id temporibus beatae facere aut.', 0, 0, '2008-11-27 16:09:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Ipsa velit quia animi minus consequuntur eum repellat. Adipisci nam cumque fugit dolores quo consequuntur enim. Nihil laudantium architecto eaque dolor.', 1, 0, '1995-09-29 13:08:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Tempora est consectetur molestiae inventore assumenda sapiente. Quis qui omnis ratione odio soluta delectus ipsam. Ut optio quisquam eos in veritatis dignissimos iure. Ut laborum qui enim.', 0, 0, '1998-08-08 02:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Laborum occaecati rerum esse quos porro provident. Officiis minus sed et sint maxime itaque laborum. Et similique explicabo architecto earum eos sunt ut sit.', 0, 0, '1982-08-15 10:20:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Non et vel ut et mollitia molestias doloremque. Rerum qui sapiente qui dolores tempore. Aut excepturi et sunt sunt est quia.', 1, 1, '1979-10-02 22:20:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Aut eaque consequatur laudantium laborum quo eveniet. Non et consectetur mollitia odio a necessitatibus cum. Aperiam deleniti totam autem doloribus ut itaque. Quis tenetur aut eius est impedit.', 0, 0, '1999-09-11 01:57:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Nulla sit voluptatem est temporibus dolores dolor. Expedita omnis pariatur quibusdam quisquam dolores illo earum. Inventore et voluptatem quia vero.', 1, 0, '2010-12-17 08:21:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Et itaque aperiam consequatur asperiores repudiandae qui iure. Reiciendis similique aut quis. Aut dolores similique facilis vitae voluptatibus.', 1, 1, '1972-11-19 15:48:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Culpa adipisci quasi in hic ullam. Autem autem aspernatur odit inventore earum. Aut velit quam quia voluptatem.', 1, 1, '1975-11-28 15:11:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Totam sit animi molestiae. Magnam assumenda culpa sit architecto. Quis in atque dolorem. Possimus deleniti animi quidem adipisci.', 0, 0, '1997-10-28 09:39:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Deserunt illum maiores vero molestiae odio explicabo. Nesciunt placeat cupiditate dolores molestiae asperiores. Odit dolor aspernatur tempore sit sed quae fuga nam.', 0, 1, '2018-04-27 07:31:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Consequuntur dicta sunt doloremque voluptatem expedita natus. Atque deleniti molestiae ratione a pariatur molestias sit.', 0, 1, '1973-02-23 13:26:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Similique quod perferendis quo aperiam ratione et praesentium. Nihil vitae praesentium rerum consequatur consequatur. Qui dolorem repellat occaecati quidem quos omnis ea tempore.', 1, 0, '2018-02-12 12:07:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Omnis magnam reiciendis ratione magni reprehenderit. Minima ipsum omnis earum fugiat fuga sint. Fuga reprehenderit enim accusamus velit illum eligendi qui voluptatem. Veniam nam necessitatibus et accusantium qui sit rem.', 1, 1, '1983-10-16 04:05:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Ipsam dicta sapiente iste. Labore magnam numquam voluptatem ab. Sint porro eius recusandae qui mollitia animi.', 0, 1, '1999-04-14 20:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Explicabo aliquam qui eum nobis vel est aliquid tenetur. Molestiae voluptas aut molestias non. Est dolor eveniet qui. Est tempore minus aut aspernatur et labore.', 0, 1, '2007-06-22 18:55:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Et commodi molestiae autem sapiente facilis beatae. Omnis quia cumque sunt architecto.', 0, 0, '2020-05-29 15:06:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Earum perspiciatis tempora sapiente eum nostrum. Et aut et eos eius dolore et cumque. Id in nulla ipsam non dolores. Assumenda quod sed ut.', 0, 1, '1993-04-14 21:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Dolorem sunt ad aut sit doloribus accusamus. Molestiae ratione explicabo molestias facere numquam aut. Voluptas quo quae culpa et quasi sed et est.', 0, 0, '1977-10-25 01:10:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Sed est incidunt similique pariatur est. Reiciendis vitae illo in vero quibusdam a temporibus dolores. Nisi reiciendis temporibus sapiente quasi. Culpa sint occaecati necessitatibus ut. Molestias tempore qui nisi unde.', 0, 1, '1979-10-08 09:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Numquam eos sed tempore quis a dolorem fugit. Iste occaecati quaerat eos. Totam aut doloremque similique voluptatum ut aut. Minus aliquid ea temporibus doloribus voluptas voluptatem.', 0, 1, '2003-01-21 17:57:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Porro ut qui quisquam. Qui eum totam impedit sunt. Reiciendis quia quae commodi eum exercitationem quidem. Doloribus inventore est ea suscipit.', 0, 1, '2019-03-25 17:24:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Cum illo ut maiores aut aut autem dolor qui. Nulla deserunt itaque fugit velit voluptas provident vel.', 0, 0, '2008-04-02 12:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Reprehenderit aut pariatur velit voluptas rerum nemo omnis. Veniam temporibus rem eum qui. Officia repellendus asperiores corrupti aut voluptas. Dolorem ducimus sunt ullam ipsam voluptas non delectus.', 0, 1, '1998-12-30 23:32:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Veritatis non illum ipsam quibusdam recusandae reprehenderit necessitatibus. Facilis pariatur et voluptatibus et. Soluta adipisci sequi vero magnam deserunt voluptas exercitationem. Labore voluptatem autem quia.', 1, 0, '2005-06-29 02:41:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Aut assumenda asperiores voluptas tempora voluptatem. Dolores fuga ratione rerum. Architecto perferendis quidem sint adipisci ea.', 0, 1, '2000-11-30 13:34:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Et ut reiciendis quia quidem sequi laudantium. Corrupti iste recusandae et laborum incidunt. Voluptate maiores est ratione at alias. Illo laboriosam cum quia voluptatibus molestiae.', 0, 0, '2013-12-23 22:48:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Omnis eaque itaque consequatur dolorem. Commodi officia quis numquam inventore eligendi maiores omnis. Minima et eos cupiditate omnis iste omnis repellendus.', 1, 0, '2000-08-29 11:45:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Eum neque incidunt molestiae sed ut suscipit. Assumenda reprehenderit fugiat velit sint quos quo excepturi. Quia asperiores deleniti ratione dolorum vitae magnam.', 1, 0, '2017-12-20 10:11:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Autem et libero nihil nulla optio eaque vero ut. Voluptate quia laborum incidunt maxime dolore. Quia alias velit deserunt dolor ipsum modi.', 0, 1, '2015-07-14 18:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Et ipsa velit et sunt explicabo nemo. Corrupti nulla vel ab omnis quia corporis. Laboriosam et corrupti adipisci. Cumque repellat sit excepturi similique dignissimos.', 0, 0, '1976-04-15 16:14:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Sit nesciunt sit omnis quo magni. Rerum et expedita vitae magnam. Quae voluptate ut eligendi autem rerum nisi. Et a vero maiores culpa quod recusandae.', 1, 1, '1971-12-26 06:00:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Sit occaecati delectus blanditiis velit sequi rerum pariatur ut. Aut nam non et. Inventore sit consequatur ut molestiae. Aperiam quia perspiciatis consequatur impedit natus sit enim magni.', 0, 0, '1974-06-29 06:57:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Provident numquam quidem molestiae iure delectus et nesciunt tenetur. Hic dolor voluptatem deleniti blanditiis.', 1, 1, '1973-07-15 07:30:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Quasi sunt est aliquam ad accusantium provident nisi. Quis ut incidunt minus et tempore at tempore aut. Nostrum saepe dicta culpa blanditiis.', 1, 0, '1996-08-23 01:43:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Aut vero laboriosam quas. Fugit dicta doloremque sed doloremque.', 1, 0, '1978-08-19 16:18:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Explicabo explicabo et temporibus dolor ut. Cum sint et expedita cum non. Quibusdam repudiandae deserunt omnis beatae aliquid et. Ut qui corporis tenetur aut vel et.', 0, 0, '2009-02-19 00:54:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Nihil rerum quis aliquam et hic cumque dolor. Ut a laboriosam in ducimus in et. Blanditiis sit et rerum quaerat ut sit sapiente. Quia ullam exercitationem asperiores quia ducimus aspernatur consequuntur eligendi.', 0, 0, '1985-01-07 19:39:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Labore vel tempore sit nisi. Fugiat sed ut vel ipsum consequuntur et. Minima in est illum iusto ut distinctio ullam. Fugit quia reiciendis voluptates at.', 1, 1, '1978-06-23 22:52:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Et sequi in quis voluptas atque. Delectus eum aut officiis labore assumenda. Blanditiis amet a ab reprehenderit sit. Nisi sunt et nemo voluptas modi minus est eius.', 1, 0, '2018-04-19 08:06:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Voluptas delectus laboriosam saepe. Sint asperiores neque quo consequatur temporibus. Veritatis dolorum sit vel voluptatem id quaerat. Et porro dolorum accusantium commodi dignissimos illum unde. In exercitationem nihil laudantium sit maxime eos.', 1, 0, '2019-11-15 14:37:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Quis enim fuga dolorem quisquam. Asperiores et inventore qui laboriosam reiciendis. Sit et vero explicabo quis placeat aut. Sit aspernatur nostrum illo.', 1, 0, '1971-02-04 13:11:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Culpa eius atque sed ea dolor. Animi unde enim in id ea vel nostrum. Nihil delectus possimus inventore nam. Molestias totam voluptas quae qui voluptatem reiciendis eveniet.', 1, 0, '1988-11-13 01:46:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Nihil adipisci perspiciatis sed nobis ut aut facilis quo. Fugiat quo dicta deleniti et accusamus est. Quod nulla culpa iste est provident provident.', 0, 0, '1996-07-13 03:47:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Possimus ducimus rerum quo quia dicta est quo. Facere nobis qui consequuntur dolore. Voluptas maiores ipsa rerum.', 1, 0, '1992-06-30 06:26:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Possimus ut deleniti omnis culpa autem fuga. Dicta consequuntur alias at tempore. Ducimus mollitia pariatur vitae at vero omnis quis. Consequatur fugit earum asperiores mollitia ipsa ut.', 0, 1, '1982-08-13 08:20:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Et explicabo repudiandae enim ad. Rerum distinctio rerum quos veritatis nostrum enim id suscipit. Repudiandae qui aspernatur facilis omnis.', 0, 1, '1981-08-05 00:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Non eum dolores quo voluptas ipsum. Dignissimos neque amet fugiat. Facilis facilis dolorum magni illo. Qui dolores asperiores dolor perspiciatis sint.', 0, 0, '1983-05-09 08:20:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Doloremque et maiores explicabo a. Earum mollitia cum deleniti voluptas ducimus quae. Voluptas est eligendi eum quia et asperiores sint.', 1, 0, '2017-09-20 06:31:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Eum velit reprehenderit id vero. Nihil consequatur ea reprehenderit suscipit aspernatur molestiae. Aliquam sit sint hic iusto aut aut et.', 0, 0, '1984-03-10 11:19:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Quia voluptatem iure qui voluptatem enim facere. Sint expedita doloribus ullam sed repellat vero. Ullam quidem tempore repellat sed beatae perspiciatis. Ea vero reiciendis nihil dolorum distinctio.', 0, 0, '1983-10-05 21:53:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Amet autem quaerat voluptatibus et dolores fuga reiciendis natus. Omnis ut amet est et deserunt. Illum dolor aut dolor ratione voluptas quod. Soluta velit eligendi et consequatur voluptatem sed.', 0, 0, '2003-01-09 20:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Et ad pariatur earum voluptas est sequi illum animi. Dolores sit quidem itaque consectetur ut praesentium est dicta. Illum qui rem magnam quidem libero et. Ut nisi quia corrupti labore repellat repudiandae qui.', 0, 1, '2019-07-15 14:02:21');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'Mrs.', '1998-08-31', 'Altenwerthfort', 'Guyana', '1971-12-17 14:40:57', '2005-09-05 07:34:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'Mr.', '1973-08-03', 'South Maevefurt', 'Trinidad and Tobago', '2019-04-13 18:13:46', '2007-12-07 06:17:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'Dr.', '2018-07-28', 'Lake Lane', 'Jordan', '1988-06-09 09:12:31', '1976-08-26 01:12:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'Dr.', '1979-07-15', 'Florianview', 'Yemen', '1981-11-14 01:44:59', '2000-01-25 15:57:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'Prof.', '1988-01-18', 'East Christellebury', 'Tunisia', '1984-11-28 02:02:06', '1973-08-16 00:46:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'Prof.', '1979-07-06', 'North Ruthe', 'Tajikistan', '2010-07-31 10:42:30', '2001-10-20 05:08:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'Mr.', '1991-10-13', 'Kihntown', 'Brazil', '1981-06-23 11:56:19', '2006-11-11 16:53:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'Dr.', '2000-06-27', 'Croninshire', 'Bermuda', '1982-06-27 22:30:06', '2013-10-06 07:56:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'Dr.', '1979-08-06', 'South Maximo', 'Iran', '1988-11-19 17:04:52', '1999-12-18 13:28:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'Dr.', '1990-11-21', 'North Emoryview', 'Hong Kong', '2004-06-25 16:40:11', '2000-08-13 18:17:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'Dr.', '1974-04-27', 'Horaciochester', 'Greenland', '2010-06-17 05:43:56', '1986-12-29 01:15:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'Dr.', '1999-06-12', 'Bartellton', 'British Virgin Islands', '2001-04-24 04:25:24', '2006-10-24 01:14:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'Dr.', '2011-02-01', 'Gaylordview', 'South Georgia and the South Sandwich Islands', '2017-09-16 16:11:39', '1989-01-22 22:42:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'Dr.', '2001-03-18', 'Lake Bethanyshire', 'Estonia', '2010-03-03 23:06:05', '2002-10-08 13:01:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'Dr.', '1973-05-04', 'South Chyna', 'Marshall Islands', '2013-07-15 14:59:17', '2006-05-15 11:24:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'Mrs.', '1984-10-23', 'Port Otisland', 'Mali', '1994-11-29 05:53:28', '1977-12-20 03:56:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'Dr.', '2007-06-20', 'Braunstad', 'Macao', '1988-04-28 03:06:15', '2014-10-26 11:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'Miss', '1980-02-21', 'North Aidanhaven', 'Mayotte', '2007-06-24 19:42:55', '1998-02-26 22:04:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'Prof.', '1981-06-18', 'Port Shanny', 'Cocos (Keeling) Islands', '2011-05-05 02:44:41', '2016-03-15 06:43:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'Prof.', '1998-09-04', 'New Earline', 'Kiribati', '2008-12-13 04:49:27', '1980-07-04 19:10:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'Dr.', '2006-02-22', 'Lake Consueloview', 'Costa Rica', '2001-03-30 18:31:12', '2014-04-08 12:18:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'Mr.', '1995-01-08', 'Collierhaven', 'Israel', '1984-12-18 21:01:36', '2013-10-07 08:35:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'Mrs.', '1974-04-30', 'West Josianne', 'Myanmar', '2019-05-12 00:52:36', '2005-02-09 23:38:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'Ms.', '2004-08-08', 'West Gladyceville', 'Costa Rica', '1981-04-06 07:34:11', '1970-02-09 09:27:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'Mrs.', '1977-01-03', 'Shirleybury', 'Swaziland', '1977-05-04 11:01:40', '1982-05-03 10:31:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'Miss', '1973-12-19', 'Heloisechester', 'Burkina Faso', '1979-01-12 08:05:02', '1999-12-10 21:02:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'Dr.', '1999-02-16', 'Breitenbergbury', 'Netherlands Antilles', '2009-06-14 20:15:32', '2002-08-10 07:45:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'Mr.', '2014-10-17', 'North Jermaineport', 'Myanmar', '1993-08-31 14:18:51', '2004-01-03 11:48:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'Prof.', '1977-08-21', 'Marquardtmouth', 'Philippines', '1993-06-12 04:50:12', '1978-05-29 19:34:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'Prof.', '1984-04-10', 'New Dallinberg', 'United Kingdom', '2002-06-03 09:53:19', '1975-03-24 19:02:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'Mrs.', '1991-03-20', 'Wildermanbury', 'Namibia', '1982-03-06 04:41:26', '2000-04-17 13:16:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'Dr.', '1992-11-21', 'Port Luemouth', 'Lao People\'s Democratic Republic', '2018-02-07 09:51:49', '1989-08-18 21:54:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'Prof.', '1985-12-23', 'Bonniemouth', 'Guinea', '2010-09-28 17:56:23', '1981-08-17 20:23:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'Miss', '1981-10-29', 'West Don', 'Peru', '1993-05-07 16:03:25', '1972-07-27 05:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'Prof.', '1979-06-22', 'North Tyrell', 'Georgia', '2014-03-05 14:51:47', '1977-02-12 13:20:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'Ms.', '1970-06-21', 'Port Keanu', 'Mauritius', '2010-09-22 10:30:15', '1990-09-04 20:56:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'Dr.', '1978-04-22', 'West Hertaborough', 'Macao', '1989-04-14 18:31:41', '1985-04-13 21:48:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'Prof.', '1997-08-30', 'Tellymouth', 'New Zealand', '1988-07-05 14:58:01', '2016-06-23 00:27:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'Prof.', '1970-08-26', 'Daughertyshire', 'Central African Republic', '1976-02-17 21:42:11', '2014-05-31 15:14:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'Dr.', '1982-06-23', 'Beahanville', 'France', '1993-09-18 07:51:53', '1981-09-12 13:06:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'Mrs.', '2011-10-11', 'Lillianberg', 'Japan', '1985-08-04 13:52:02', '1994-12-14 00:18:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'Ms.', '2018-12-04', 'Port Danielaton', 'Saint Kitts and Nevis', '2016-12-06 05:37:21', '2008-03-05 07:08:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'Mrs.', '1986-10-26', 'South Marques', 'Saint Barthelemy', '1999-10-06 18:06:49', '1975-07-31 00:30:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'Dr.', '1978-08-20', 'Dariomouth', 'Namibia', '1982-11-25 22:35:43', '2008-01-08 18:57:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'Miss', '2005-11-05', 'Lake Autumn', 'Monaco', '1991-08-08 19:46:57', '2013-04-21 06:04:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'Dr.', '2011-11-07', 'Lake Sylvesterland', 'Sierra Leone', '1981-01-30 07:03:59', '2003-10-08 06:51:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'Prof.', '1988-06-29', 'Kesslerton', 'French Guiana', '1985-05-04 04:25:31', '1986-02-22 01:23:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'Dr.', '1983-09-23', 'Mariamchester', 'Namibia', '2016-05-22 03:26:40', '2011-03-03 17:41:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'Mr.', '2015-04-03', 'Cormierview', 'Cook Islands', '2012-06-20 15:59:26', '2008-09-16 21:48:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'Mr.', '1979-11-08', 'Shakiraland', 'Niger', '2003-11-17 06:53:53', '1976-10-03 22:40:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'Dr.', '1981-03-18', 'West Brad', 'Kazakhstan', '1971-10-28 23:46:15', '1997-06-25 18:00:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'Prof.', '2017-03-03', 'Jessyborough', 'Philippines', '2018-10-03 10:13:53', '1983-07-21 19:19:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'Prof.', '2003-08-06', 'West Lucileborough', 'Angola', '2007-10-15 04:56:57', '1977-08-18 01:40:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'Dr.', '2008-07-07', 'West Aniya', 'Rwanda', '1970-10-28 19:36:42', '2010-03-17 17:10:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'Mr.', '2007-06-03', 'Mozellside', 'Japan', '1995-01-29 12:40:46', '2007-12-14 08:03:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'Dr.', '1988-03-04', 'Lake Ronny', 'Finland', '1991-06-09 08:34:08', '1983-11-12 19:32:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'Dr.', '2017-05-07', 'Boylehaven', 'Bosnia and Herzegovina', '1975-02-13 19:31:50', '2009-01-30 12:44:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'Dr.', '2009-02-10', 'Destineeborough', 'Netherlands', '2001-01-11 13:37:58', '2011-09-01 09:23:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'Dr.', '1998-12-17', 'Hayleyshire', 'Niue', '2018-08-30 13:07:58', '1988-09-12 18:27:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'Prof.', '1972-03-28', 'South Zita', 'British Virgin Islands', '2001-11-30 22:31:39', '1993-09-27 22:05:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'Dr.', '1973-03-31', 'Wildermanbury', 'Netherlands', '2009-07-31 06:22:05', '1976-09-19 14:12:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'Ms.', '2012-05-17', 'Travisshire', 'British Indian Ocean Territory (Chagos Archipelago)', '2019-03-04 13:53:35', '2013-12-09 11:36:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'Prof.', '1976-12-26', 'Shainaton', 'British Virgin Islands', '1996-10-07 20:28:24', '2019-12-16 13:53:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'Miss', '1989-05-23', 'Port Misty', 'South Georgia and the South Sandwich Islands', '1971-12-28 04:55:18', '1995-02-16 23:07:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'Dr.', '2001-11-10', 'Dameonfort', 'Indonesia', '1971-02-11 05:41:08', '1977-10-18 20:37:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'Mr.', '2015-08-22', 'East Emmittstad', 'United States of America', '1984-02-06 13:39:41', '2015-06-13 16:31:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'Dr.', '1990-10-21', 'Macieburgh', 'Liberia', '2005-10-07 14:52:39', '1999-04-04 08:05:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'Ms.', '1970-05-05', 'Alyssontown', 'Zimbabwe', '2006-06-10 10:27:13', '1974-01-24 15:53:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'Miss', '2009-11-22', 'Cronahaven', 'British Virgin Islands', '2002-01-05 18:05:37', '1970-03-11 04:46:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'Prof.', '2020-01-11', 'Sauerberg', 'South Africa', '2006-05-13 15:03:44', '2001-11-06 08:15:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'Mr.', '2004-08-29', 'Sheldonstad', 'Haiti', '1983-06-12 20:56:00', '2003-12-08 03:44:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'Mrs.', '1971-01-09', 'Weimannmouth', 'Palestinian Territory', '1980-10-30 12:29:59', '2014-12-26 12:43:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'Mr.', '2008-03-11', 'Terrenceport', 'Kazakhstan', '1988-10-18 15:58:21', '2017-10-01 09:55:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'Ms.', '2020-04-10', 'Lake Thalia', 'Nigeria', '1981-04-10 07:38:51', '1973-06-11 01:33:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'Mr.', '1975-05-30', 'Cronaport', 'Sri Lanka', '2005-05-22 23:14:49', '2006-04-05 18:01:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'Mrs.', '1986-08-03', 'South Kobe', 'Colombia', '2010-07-14 22:08:29', '2014-01-31 12:38:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'Prof.', '2016-04-16', 'Doylechester', 'Uruguay', '1988-06-07 18:20:14', '2007-03-16 20:13:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'Prof.', '1971-09-21', 'Kochmouth', 'Denmark', '1990-09-14 00:59:35', '2015-04-10 20:50:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'Ms.', '2015-11-19', 'Moenborough', 'Puerto Rico', '2017-09-20 13:39:26', '1975-07-17 19:53:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'Dr.', '2016-01-14', 'South Pietro', 'United Kingdom', '1985-01-29 11:42:17', '1985-09-02 09:05:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'Prof.', '1985-06-18', 'Nyasiafurt', 'French Southern Territories', '1985-06-15 21:37:32', '1986-11-21 14:07:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'Ms.', '1988-06-17', 'Lolitamouth', 'Czech Republic', '1974-04-01 11:45:01', '1986-06-15 18:29:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'Ms.', '2011-01-30', 'Steuberburgh', 'South Africa', '2004-04-21 10:31:57', '2013-06-26 03:30:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'Mr.', '2011-11-07', 'Simonisborough', 'Switzerland', '2015-03-31 06:55:09', '2007-09-16 15:24:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'Mrs.', '2012-12-27', 'East Fritzmouth', 'Saint Lucia', '2009-01-17 21:48:44', '1999-05-21 08:33:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'Mrs.', '2018-05-19', 'Wilkinsonchester', 'Guernsey', '1994-05-16 19:44:47', '2009-10-12 13:36:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'Prof.', '1992-11-29', 'Lake Jarenmouth', 'Mongolia', '2018-06-21 21:05:35', '1977-02-10 03:22:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'Dr.', '2016-09-23', 'Townefurt', 'Ecuador', '1994-10-13 17:04:58', '2012-11-28 19:36:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'Mrs.', '2012-03-31', 'South Uriel', 'Tunisia', '1976-05-29 21:10:03', '1985-07-27 17:29:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'Ms.', '2010-10-21', 'Batzberg', 'Sweden', '1985-08-07 09:07:31', '1986-07-31 07:10:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'Mrs.', '1976-04-04', 'East Reyna', 'Guernsey', '1983-04-08 03:33:14', '2017-02-08 18:50:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'Prof.', '2015-07-13', 'Beerberg', 'Canada', '2006-03-26 00:26:54', '2015-10-01 08:13:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'Mr.', '1975-10-18', 'Lestermouth', 'Vanuatu', '2003-10-30 18:12:54', '2002-07-08 01:49:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'Prof.', '1986-07-19', 'Stephanyville', 'Andorra', '1970-10-07 13:20:03', '1987-11-25 07:52:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'Dr.', '2008-11-24', 'North Misael', 'Italy', '2014-10-29 05:20:18', '1996-06-21 12:12:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'Miss', '1991-11-06', 'West Weldonview', 'Ethiopia', '1979-10-31 13:12:42', '1975-06-14 05:52:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'Dr.', '1979-02-01', 'Lindberg', 'Greenland', '2001-10-10 21:08:35', '1974-06-07 11:49:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'Miss', '1986-07-28', 'Towneland', 'Tokelau', '1989-09-21 19:17:35', '1973-12-04 00:39:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'Mr.', '1998-12-22', 'Bergstromstad', 'Saint Pierre and Miquelon', '1979-12-08 17:30:34', '2010-05-07 17:20:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'Prof.', '1971-01-21', 'Port Pattie', 'China', '2001-04-04 00:12:59', '1987-10-22 16:43:08');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Letha', 'Olson', 'antonio48@example.com', '1-396-137-2909x7642', '1972-06-26 05:18:08', '1992-12-02 06:11:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Jadyn', 'Ondricka', 'garrison.waelchi@example.net', '1-753-183-6860x5295', '1987-01-13 05:36:19', '1979-05-28 08:32:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Kirk', 'Marquardt', 'rebeca.dibbert@example.org', '938-258-4785x81841', '2009-05-07 23:28:21', '1984-12-16 03:16:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Darrion', 'Robel', 'devante44@example.net', '(374)064-3883x96734', '1981-11-12 04:43:57', '2009-10-09 14:41:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Dulce', 'Schmeler', 'darryl.runolfsdottir@example.net', '232-439-2827x79475', '1999-03-22 10:41:38', '2006-12-15 11:56:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Aurelio', 'Brekke', 'vgleichner@example.com', '226.419.4098x659', '1999-03-07 04:35:32', '1978-05-13 15:23:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Braeden', 'Bechtelar', 'carmelo25@example.com', '580.369.9367', '1997-12-12 15:02:29', '2018-08-05 17:17:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Carley', 'Quigley', 'gdeckow@example.org', '701-995-8158', '1984-08-12 02:21:46', '2005-06-17 06:10:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Loren', 'Zieme', 'fschulist@example.net', '200.375.5889', '1978-10-09 03:00:06', '2003-05-12 18:25:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alek', 'Simonis', 'hansen.zachariah@example.org', '+14(0)5839066363', '1996-10-11 15:54:51', '1971-12-19 04:54:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Alana', 'Huel', 'earnest56@example.org', '1-615-134-8269', '2010-11-27 09:00:01', '1975-08-27 02:14:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Jesse', 'Schmeler', 'kub.ally@example.net', '938-114-0430', '1993-08-18 02:31:24', '1975-02-05 21:28:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Jeanie', 'Wolff', 'vbergstrom@example.com', '1-928-048-6924x3369', '2012-01-13 04:54:32', '1986-07-01 08:15:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Monty', 'Anderson', 'hazel20@example.com', '233-167-7584x8736', '2000-11-06 23:01:46', '2018-08-14 12:39:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Daron', 'Dooley', 'alphonso63@example.net', '493.367.8106x53766', '1993-11-28 14:53:19', '2006-07-01 01:14:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Jadyn', 'Schumm', 'hbogan@example.com', '219.457.1176', '1994-10-11 04:43:32', '1992-11-06 04:00:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Gwendolyn', 'Breitenberg', 'else.abbott@example.org', '873.192.4273x9750', '1994-09-23 17:41:28', '2006-03-24 08:05:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Abby', 'Kilback', 'deron.crooks@example.net', '+84(4)0825955007', '1992-12-30 09:45:18', '1983-09-20 01:04:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Samantha', 'Crona', 'urban83@example.com', '558-117-5871x46946', '2013-03-24 06:27:17', '1990-08-28 07:01:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Maia', 'Zieme', 'gordon05@example.org', '181-872-9859', '2013-06-27 05:55:09', '2007-11-24 20:50:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Quentin', 'Abernathy', 'alexandrea.king@example.org', '(090)410-0663x87580', '1980-04-12 00:20:50', '2004-05-03 01:31:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Layla', 'Douglas', 'bnolan@example.org', '07137459451', '1995-04-26 23:41:33', '1995-05-07 19:18:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Levi', 'Hoppe', 'wilkinson.jace@example.com', '1-372-366-9052x87602', '2013-05-15 04:50:22', '1983-07-21 22:04:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Marta', 'Cole', 'ewalker@example.com', '1-061-216-2168x97303', '1991-01-13 23:35:26', '1986-07-07 01:16:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Libbie', 'Heidenreich', 'rudolph.bruen@example.net', '1-219-806-3196x604', '1970-04-19 01:46:06', '2005-01-19 08:11:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Corrine', 'Pfannerstill', 'otto.hilll@example.com', '(438)273-9654x332', '2007-09-25 02:44:39', '1970-03-16 20:17:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Dedric', 'Harris', 'crystal76@example.org', '663-029-9652', '1981-10-23 02:42:01', '1994-01-27 04:12:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Brenden', 'Hettinger', 'ylang@example.net', '726-978-0850x701', '2000-11-07 21:29:40', '1991-01-13 07:51:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Alba', 'Muller', 'wolff.mallie@example.net', '559-406-4301x32955', '2011-08-12 12:44:18', '1994-04-06 10:54:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Amaya', 'Yost', 'rwillms@example.org', '972.704.5345x356', '1992-08-04 16:49:26', '2010-09-28 08:54:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Katlynn', 'Hane', 'johnny.von@example.net', '(094)019-6651', '1995-11-28 04:36:01', '1991-01-13 09:27:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Alek', 'Gusikowski', 'reynolds.brandi@example.net', '(557)375-6492', '1979-01-08 20:32:16', '2002-08-28 19:25:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Noemie', 'Swift', 'rippin.delphine@example.com', '(778)733-0886x9259', '2008-01-11 05:50:41', '2007-04-22 23:35:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Ora', 'Renner', 'heaven28@example.net', '+48(5)9374692383', '2013-07-12 00:09:49', '1986-11-06 23:41:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Randy', 'Weber', 'donnelly.danny@example.net', '1-282-605-1182x2100', '2009-06-12 08:21:18', '2005-12-27 22:38:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Kellen', 'Eichmann', 'lempi98@example.net', '1-158-841-4679x9563', '2010-10-22 02:35:18', '1984-04-25 23:16:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Evan', 'Schiller', 'smaggio@example.org', '(342)342-6880x326', '2003-01-24 22:12:36', '1995-08-26 08:07:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jeanne', 'Zemlak', 'bessie.jacobi@example.net', '(445)804-8295x993', '1990-05-31 10:13:21', '2005-04-22 17:42:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Palma', 'Kulas', 'kendall88@example.com', '1-601-200-5954x6856', '1994-08-07 14:58:43', '1984-11-17 19:04:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Turner', 'Wolff', 'guadalupe05@example.net', '829.562.2825', '1997-03-11 21:24:54', '1976-12-29 08:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Jakob', 'Skiles', 'bryon95@example.net', '1-990-481-8369', '2000-03-20 16:20:04', '1995-07-04 10:20:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Karina', 'Prosacco', 'fahey.alfonzo@example.com', '489-209-8363x71101', '2017-09-28 08:31:57', '1975-02-28 22:05:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Chanelle', 'Maggio', 'spadberg@example.org', '707-427-1755x730', '1973-05-05 22:25:48', '2004-02-25 02:46:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Elwin', 'Beatty', 'corbin.stehr@example.org', '(165)348-4619x30095', '2005-05-01 12:21:54', '1988-08-01 01:22:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Rollin', 'Heaney', 'lisette74@example.com', '156.496.2103x51167', '1979-03-28 22:50:24', '1983-04-10 21:52:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Caterina', 'Schulist', 'ozulauf@example.org', '+61(5)3278141903', '1994-02-28 05:12:56', '1993-01-26 14:37:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Deanna', 'Hahn', 'stark.meggie@example.net', '(365)612-8559x280', '2010-11-29 02:58:23', '2015-04-02 16:49:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Frederique', 'Doyle', 'rodger.trantow@example.net', '786.809.7245', '2002-10-25 12:44:24', '1999-12-30 17:57:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Burley', 'Maggio', 'rhoda93@example.net', '818-130-3360x056', '1994-07-13 11:57:18', '1991-01-18 04:32:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Dora', 'Brekke', 'kgutkowski@example.org', '(808)971-0201', '1970-02-10 11:08:30', '2001-02-05 15:04:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Arlie', 'Shanahan', 'alvera50@example.org', '481-274-4651x125', '1978-12-04 07:50:08', '2007-04-25 21:17:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Sandra', 'Ankunding', 'brad.kuhn@example.com', '831-032-3713', '2017-04-15 12:28:17', '1972-04-26 18:07:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Belle', 'Anderson', 'vshanahan@example.net', '(138)903-9459', '1994-01-02 11:26:31', '2003-07-11 10:26:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Devin', 'Klein', 'nokuneva@example.com', '(294)884-6838x2033', '1991-12-06 18:38:41', '1973-04-04 05:10:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Pat', 'Becker', 'bo.lebsack@example.net', '(906)601-1156', '2001-11-07 21:02:59', '2013-04-21 19:46:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Agnes', 'Reichel', 'gussie39@example.org', '767.935.2094', '1991-01-09 05:23:21', '2013-01-09 04:17:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Guillermo', 'Eichmann', 'kassulke.amya@example.com', '+45(2)8899673136', '2010-04-28 04:32:04', '1972-11-02 14:43:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Lucius', 'Schoen', 'jeromy.hartmann@example.net', '623-092-5262x392', '1972-01-25 11:26:38', '2006-11-18 18:08:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Naomie', 'D\'Amore', 'dibbert.mariane@example.com', '927.196.9545x498', '2003-10-25 00:22:00', '1999-12-24 06:27:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Lupe', 'Gleason', 'berenice.smitham@example.org', '(676)642-0918', '2020-01-08 23:31:58', '2014-01-15 03:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Destini', 'Goyette', 'carmel.wolf@example.net', '(367)955-5366x14728', '2003-12-13 08:24:04', '1995-07-06 06:48:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Rodger', 'Cartwright', 'mmitchell@example.net', '08206730212', '1990-11-23 18:27:48', '1975-06-30 15:14:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Katherine', 'Terry', 'serenity40@example.org', '879-302-6609', '1996-05-18 12:18:05', '1990-02-01 07:23:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Joanny', 'Kihn', 'ima36@example.org', '(525)130-6201', '1989-11-29 04:17:17', '1986-10-14 09:24:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Hettie', 'Zemlak', 'darby50@example.com', '+89(9)7012017420', '1988-04-19 23:19:27', '2018-01-27 23:34:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Nash', 'Daniel', 'rutherford.amanda@example.com', '400-011-2088', '2015-03-04 17:53:21', '2003-01-01 12:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Marta', 'Breitenberg', 'doyle.osinski@example.org', '642.582.6730x3983', '2011-03-28 10:42:20', '2007-04-12 06:57:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Colton', 'Kunde', 'helen34@example.com', '1-354-520-8034', '2009-09-30 02:33:28', '1990-11-04 02:06:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Judah', 'Terry', 'smith.simone@example.com', '440-629-6003x726', '1981-05-06 15:52:59', '1979-10-11 08:16:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Devan', 'Gislason', 'chelsie.bogan@example.com', '+59(9)5951872170', '1987-06-07 13:22:47', '2019-11-20 13:16:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Orland', 'Bartoletti', 'paul.kohler@example.org', '191.672.9640x736', '1994-03-02 10:46:52', '1983-11-12 14:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Berniece', 'Kohler', 'dgorczany@example.net', '1-466-413-0304', '1995-08-20 16:04:02', '1976-04-25 11:26:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Chelsea', 'Kuphal', 'micah.lockman@example.org', '+56(9)9230946396', '1971-09-28 15:54:09', '1973-10-04 08:59:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Wyman', 'Johns', 'condricka@example.com', '549.336.0591x71016', '2001-10-20 00:57:38', '1988-09-07 09:20:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Kelli', 'Paucek', 'bstoltenberg@example.net', '660-339-8848', '1982-08-27 12:55:32', '1980-02-28 09:20:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Jarred', 'Senger', 'gerlach.crystal@example.com', '771-891-9329x881', '2009-10-24 17:11:41', '1985-03-31 05:38:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Lucie', 'Maggio', 'prohaska.candace@example.net', '1-703-566-4414', '1972-07-27 15:24:40', '1970-06-24 21:54:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Abigail', 'Pacocha', 'ofranecki@example.net', '1-563-416-6467x685', '1991-05-07 17:37:01', '1980-07-25 11:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Julian', 'Koss', 'yoshiko.rowe@example.com', '749-700-5341x012', '2010-02-23 06:03:28', '1983-04-22 09:13:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Lelia', 'Simonis', 'schuster.irma@example.net', '1-779-857-6217x2073', '1970-10-26 06:47:55', '2010-10-15 11:32:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Jaida', 'Daniel', 'breanne.zieme@example.com', '(547)391-3148x23954', '2001-05-25 18:38:55', '1977-12-29 05:34:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Astrid', 'Doyle', 'labadie.harley@example.org', '1-195-197-3968', '2018-07-17 01:44:12', '1985-09-24 03:21:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Harmony', 'White', 'uhyatt@example.org', '969.878.1139x76167', '1991-08-12 07:51:34', '2008-08-05 12:12:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Brock', 'Bernier', 'blanda.cordie@example.org', '514.331.3165x3960', '2005-09-05 10:46:22', '2009-10-08 04:38:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Janiya', 'Bauch', 'joy.schaefer@example.org', '144.519.0762', '2014-08-01 05:35:34', '1987-11-23 14:37:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Lourdes', 'Schinner', 'zion02@example.com', '037-102-9797x808', '1980-12-03 13:01:13', '1990-08-16 01:10:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Henry', 'Ankunding', 'sheila88@example.org', '(810)349-7583x7835', '2001-08-17 22:02:44', '2007-05-25 05:46:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Elody', 'Schamberger', 'ujerde@example.net', '(581)607-4694x5902', '1985-05-22 03:58:28', '2001-09-16 02:30:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Esta', 'O\'Conner', 'hazel75@example.net', '749-526-2369', '1978-09-16 08:58:17', '1996-02-21 11:49:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Diego', 'Barrows', 'norberto36@example.com', '09087232300', '1991-05-27 02:19:46', '1996-07-29 20:23:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Carey', 'Nikolaus', 'rschaefer@example.net', '463.395.0999', '2006-12-09 20:00:38', '1987-03-17 16:09:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Marlin', 'Pfannerstill', 'tledner@example.net', '1-806-881-6850', '1982-07-14 16:45:45', '2008-06-25 06:31:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Jaeden', 'Weissnat', 'miller.mylene@example.com', '(336)267-6220', '1977-03-27 19:12:07', '1977-09-23 12:01:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Alene', 'Sanford', 'mayert.ada@example.org', '04885783433', '1981-02-02 10:18:58', '2006-01-12 09:19:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Gretchen', 'Halvorson', 'billy88@example.com', '(823)503-8085x99134', '1983-11-16 15:35:39', '2012-03-17 19:29:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Lila', 'Greenfelder', 'bergnaum.bell@example.org', '1-094-626-7118x7620', '1973-09-22 17:54:03', '1992-03-15 10:43:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Mohammad', 'Botsford', 'laurel88@example.org', '1-145-165-2065x897', '2011-08-16 23:49:13', '1998-07-14 03:34:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Mekhi', 'Leffler', 'sincere18@example.com', '1-803-353-1453x3929', '2016-09-30 20:32:19', '1985-02-14 21:49:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Bobby', 'Lang', 'luettgen.ike@example.com', '1-750-040-7824', '2006-01-06 11:51:27', '2003-12-10 11:01:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Reta', 'Schmidt', 'alfonso.emard@example.org', '(640)813-6004x87300', '2012-01-19 02:38:00', '2004-10-03 12:53:50');


