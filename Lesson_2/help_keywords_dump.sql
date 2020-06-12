-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--
-- WHERE:  true limit 100

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--
-- WHERE:  true limit 100

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--
-- WHERE:  true limit 100

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--
-- WHERE:  true limit 100

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--
-- WHERE:  true limit 100

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2020-06-03 13:57:11',NULL),('default',0,'memory_block_read_cost',NULL,'2020-06-03 13:57:11',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--
-- WHERE:  true limit 100

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--
-- WHERE:  true limit 100

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--
-- WHERE:  true limit 100

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Language Structure',0,''),(5,'Geographic Features',0,''),(6,'MBR',5,''),(7,'WKT',5,''),(8,'Functions',0,''),(9,'Comparison Operators',8,''),(10,'Logical Operators',8,''),(11,'Control Flow Functions',8,''),(12,'Numeric Functions',8,''),(13,'Date and Time Functions',8,''),(14,'String Functions',8,''),(15,'Bit Functions',8,''),(16,'Encryption Functions',8,''),(17,'Locking Functions',8,''),(18,'Information Functions',8,''),(19,'Spatial Functions',8,''),(20,'WKT Functions',19,''),(21,'WKB Functions',19,''),(22,'Geometry Constructors',19,''),(23,'Geometry Property Functions',19,''),(24,'Point Property Functions',19,''),(25,'LineString Property Functions',19,''),(26,'Polygon Property Functions',19,''),(27,'GeometryCollection Property Functions',19,''),(28,'Geometry Relation Functions',19,''),(29,'MBR Functions',19,''),(30,'GROUP BY Functions and Modifiers',8,''),(31,'Performance Schema Functions',8,''),(32,'Miscellaneous Functions',8,''),(33,'Data Definition',0,''),(34,'Data Manipulation',0,''),(35,'Transactions',0,''),(36,'Compound Statements',0,''),(37,'Account Management',0,''),(38,'Table Maintenance',0,''),(39,'User-Defined Functions',0,''),(40,'Components',0,''),(41,'Plugins',0,''),(42,'Utility',0,''),(43,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--
-- WHERE:  true limit 100

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (225,'(JSON'),(226,'->'),(228,'->>'),(46,'<>'),(630,'ACCOUNT'),(422,'ACTION'),(40,'ADD'),(655,'ADMIN'),(108,'AES_DECRYPT'),(109,'AES_ENCRYPT'),(341,'AFTER'),(95,'AGAINST'),(677,'AGGREGATE'),(342,'ALGORITHM'),(489,'ALL'),(41,'ALTER'),(343,'ANALYZE'),(47,'AND'),(311,'ANY_VALUE'),(423,'ARCHIVE'),(102,'ARRAY'),(490,'AS'),(259,'ASC'),(404,'AT'),(514,'AUTOCOMMIT'),(447,'AUTOEXTEND_SIZE'),(344,'AUTO_INCREMENT'),(345,'AVG_ROW_LENGTH'),(528,'BACKUP'),(542,'BEFORE'),(515,'BEGIN'),(48,'BETWEEN'),(59,'BIGINT'),(104,'BINARY'),(706,'BINLOG'),(312,'BIN_TO_UUID'),(8,'BOOL'),(9,'BOOLEAN'),(85,'BOTH'),(408,'BTREE'),(260,'BY'),(33,'BYTE'),(714,'CACHE'),(455,'CALL'),(283,'CAN_ACCESS_COLUMN'),(284,'CAN_ACCESS_DATABASE'),(285,'CAN_ACCESS_TABLE'),(286,'CAN_ACCESS_VIEW'),(424,'CASCADE'),(53,'CASE'),(610,'CATALOG_NAME'),(62,'CEIL'),(63,'CEILING'),(516,'CHAIN'),(346,'CHANGE'),(548,'CHANNEL'),(34,'CHAR'),(30,'CHARACTER'),(689,'CHARSET'),(347,'CHECK'),(348,'CHECKSUM'),(631,'CIPHER'),(611,'CLASS_ORIGIN'),(656,'CLIENT'),(685,'CLONE'),(461,'CLOSE'),(349,'COALESCE'),(709,'CODE'),(316,'COLLATE'),(691,'COLLATION'),(350,'COLUMN'),(351,'COLUMNS'),(612,'COLUMN_NAME'),(321,'COMMENT'),(517,'COMMIT'),(531,'COMMITTED'),(425,'COMPACT'),(322,'COMPLETION'),(681,'COMPONENT'),(426,'COMPRESSED'),(352,'COMPRESSION'),(476,'CONCURRENT'),(607,'CONDITION'),(353,'CONNECTION'),(518,'CONSISTENT'),(354,'CONSTRAINT'),(613,'CONSTRAINT_CATALOG'),(614,'CONSTRAINT_NAME'),(615,'CONSTRAINT_SCHEMA'),(608,'CONTINUE'),(103,'CONVERT'),(258,'COUNT'),(42,'CREATE'),(256,'CREATE_DH_PARAMETERS'),(507,'CROSS'),(427,'CSV'),(268,'CUME_DIST'),(632,'CURRENT'),(116,'CURRENT_ROLE'),(323,'CURRENT_USER');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--
-- WHERE:  true limit 100

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(493,2),(494,2),(501,2),(504,2),(505,2),(513,2),(514,2),(537,2),(542,2),(577,2),(595,2),(597,2),(603,2),(605,2),(2,3),(513,3),(2,4),(537,4),(542,4),(593,4),(594,4),(3,5),(683,5),(4,6),(5,6),(4,7),(5,7),(7,8),(8,8),(7,9),(231,9),(7,10),(7,11),(11,11),(13,11),(14,11),(16,11),(17,11),(234,11),(7,12),(11,12),(13,12),(14,12),(16,12),(17,12),(9,13),(10,14),(10,15),(11,16),(11,17),(234,17),(615,17),(13,18),(14,19),(14,20),(513,20),(14,21),(15,22),(234,22),(615,22),(16,23),(17,24),(17,25),(17,26),(615,26),(19,27),(120,27),(122,27),(234,27),(21,28),(156,28),(22,29),(154,29),(234,29),(24,30),(26,30),(493,30),(494,30),(501,30),(504,30),(505,30),(513,30),(540,30),(541,30),(543,30),(623,30),(624,30),(626,30),(630,30),(24,31),(26,31),(24,32),(25,33),(25,34),(234,34),(26,35),(26,36);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--
-- WHERE:  true limit 100

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (0,'HELP_DATE',1,'This help information was generated from the MySQL 8.0 Reference Manual\non: 2020-03-06\n','',''),(1,'HELP_VERSION',1,'This help information was generated from the MySQL 8.0 Reference Manual\non: 2020-03-06 (revision: 65252)\n\nThis information applies to MySQL 8.0 through 8.0.21.\n','',''),(2,'AUTO_INCREMENT',2,'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/example-auto-increment.html\n\n','CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n);\n\nINSERT INTO animals (name) VALUES\n    (\'dog\'),(\'cat\'),(\'penguin\'),\n    (\'lax\'),(\'whale\'),(\'ostrich\');\n\nSELECT * FROM animals;\n','https://dev.mysql.com/doc/refman/8.0/en/example-auto-increment.html'),(3,'HELP COMMAND',3,'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run \'help contents\' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: \"Contents\"\nFor more information, type \'help <item>\', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: \'SHOW BINARY LOGS\'\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-binary-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 | Yes       |\n| binlog.000016 |    733481 | Yes       |\n+---------------+-----------+-----------+\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP rep% returns a list of topics that\nbegin with rep:\n\nmysql> HELP rep%\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following\ntopics:\n   REPAIR TABLE\n   REPEAT FUNCTION\n   REPEAT LOOP\n   REPLACE\n   REPLACE FUNCTION\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mysql-server-side-help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/mysql-server-side-help.html'),(4,'TRUE',4,'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/boolean-literals.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/boolean-literals.html'),(5,'FALSE',4,'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/boolean-literals.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/boolean-literals.html'),(6,'BIT',2,'BIT[(M)]\n\nA bit-value type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(7,'TINYINT',2,'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(8,'BOOLEAN',2,'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Nonzero values are considered true:\n\nmysql> SELECT IF(0, \'true\', \'false\');\n+------------------------+\n| IF(0, \'true\', \'false\') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, \'true\', \'false\');\n+------------------------+\n| IF(1, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, \'true\', \'false\');\n+------------------------+\n| IF(2, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(0 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(1 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(2 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(2 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(9,'SMALLINT',2,'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(10,'MEDIUMINT',2,'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(11,'INT',2,'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(12,'INTEGER',2,'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(13,'BIGINT',2,'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(14,'DECIMAL',2,'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed \"exact\" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the - sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values. As of MySQL 8.0.17,\nthe UNSIGNED attribute is deprecated for columns of type DECIMAL (and\nany synonyms) and support for it will be removed in a future MySQL\nversion. Consider using a simple CHECK constraint instead for such\ncolumns.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(15,'DEC',2,'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(16,'FLOAT',2,'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Permissible values\nare -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nFLOAT(M,D) is a nonstandard MySQL extension. As of MySQL 8.0.17, this\nsyntax is deprecated and support for it will be removed in a future\nMySQL version.\n\nUNSIGNED, if specified, disallows negative values. As of MySQL 8.0.17,\nthe UNSIGNED attribute is deprecated for columns of type FLOAT (and any\nsynonyms) and support for it will be removed in a future MySQL version.\nConsider using a simple CHECK constraint instead for such columns.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttps://dev.mysql.com/doc/refman/8.0/en/no-matching-rows.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(17,'DOUBLE',2,'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Permissible\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nDOUBLE(M,D) is a nonstandard MySQL extension. As of MySQL 8.0.17, this\nsyntax is deprecated and support for it will be removed in a future\nMySQL version.\n\nUNSIGNED, if specified, disallows negative values. As of MySQL 8.0.17,\nthe UNSIGNED attribute is deprecated for columns of type DOUBLE (and\nany synonyms) and support for it will be removed in a future MySQL\nversion. Consider using a simple CHECK constraint instead for such\ncolumns.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(18,'DOUBLE PRECISION',2,'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/numeric-type-syntax.html'),(19,'DATE',2,'DATE\n\nA date. The supported range is \'1000-01-01\' to \'9999-12-31\'. MySQL\ndisplays DATE values in \'YYYY-MM-DD\' format, but permits assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html'),(20,'DATETIME',2,'DATETIME[(fsp)]\n\nA date and time combination. The supported range is \'1000-01-01\n00:00:00.000000\' to \'9999-12-31 23:59:59.999999\'. MySQL displays\nDATETIME values in \'YYYY-MM-DD hh:mm:ss[.fraction]\' format, but permits\nassignment of values to DATETIME columns using either strings or\nnumbers.\n\nAn optional fsp value in the range from 0 to 6 may be given to specify\nfractional seconds precision. A value of 0 signifies that there is no\nfractional part. If omitted, the default precision is 0.\n\nAutomatic initialization and updating to the current date and time for\nDATETIME columns can be specified using DEFAULT and ON UPDATE column\ndefinition clauses, as described in\nhttps://dev.mysql.com/doc/refman/8.0/en/timestamp-initialization.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html'),(21,'TIMESTAMP',2,'TIMESTAMP[(fsp)]\n\nA timestamp. The range is \'1970-01-01 00:00:01.000000\' UTC to\n\'2038-01-19 03:14:07.999999\' UTC. TIMESTAMP values are stored as the\nnumber of seconds since the epoch (\'1970-01-01 00:00:00\' UTC). A\nTIMESTAMP cannot represent the value \'1970-01-01 00:00:00\' because that\nis equivalent to 0 seconds from the epoch and the value 0 is reserved\nfor representing \'0000-00-00 00:00:00\', the \"zero\" TIMESTAMP value.\n\nAn optional fsp value in the range from 0 to 6 may be given to specify\nfractional seconds precision. A value of 0 signifies that there is no\nfractional part. If omitted, the default precision is 0.\n\nThe way the server handles TIMESTAMP definitions depends on the value\nof the explicit_defaults_for_timestamp system variable (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html).\n\nIf explicit_defaults_for_timestamp is enabled, there is no automatic\nassignment of the DEFAULT CURRENT_TIMESTAMP or ON UPDATE\nCURRENT_TIMESTAMP attributes to any TIMESTAMP column. They must be\nincluded explicitly in the column definition. Also, any TIMESTAMP not\nexplicitly declared as NOT NULL permits NULL values.\n\nIf explicit_defaults_for_timestamp is disabled, the server handles\nTIMESTAMP as follows:\n\nUnless specified otherwise, the first TIMESTAMP column in a table is\ndefined to be automatically set to the date and time of the most recent\nmodification if not explicitly assigned a value. This makes TIMESTAMP\nuseful for recording the timestamp of an INSERT or UPDATE operation.\nYou can also set any TIMESTAMP column to the current date and time by\nassigning it a NULL value, unless it has been defined with the NULL\nattribute to permit NULL values.\n\nAutomatic initialization and updating to the current date and time can\nbe specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE\nCURRENT_TIMESTAMP column definition clauses. By default, the first\nTIMESTAMP column has these properties, as previously noted. However,\nany TIMESTAMP column in a table can be defined to have these\nproperties.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html'),(22,'TIME',2,'TIME[(fsp)]\n\nA time. The range is \'-838:59:59.000000\' to \'838:59:59.000000\'. MySQL\ndisplays TIME values in \'hh:mm:ss[.fraction]\' format, but permits\nassignment of values to TIME columns using either strings or numbers.\n\nAn optional fsp value in the range from 0 to 6 may be given to specify\nfractional seconds precision. A value of 0 signifies that there is no\nfractional part. If omitted, the default precision is 0.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html'),(23,'YEAR DATA TYPE',2,'YEAR[(4)]\n\nA year in 4-digit format. MySQL displays YEAR values in YYYY format,\nbut permits assignment of values to YEAR columns using either strings\nor numbers. Values display as 1901 to 2155, or 0000.\n\nFor additional information about YEAR display format and interpretation\nof input values, see https://dev.mysql.com/doc/refman/8.0/en/year.html.\n\n*Note*:\n\nAs of MySQL 8.0.19, the YEAR(4) data type with an explicit display\nwidth is deprecated and support for it will be removed in a future\nMySQL version. Instead, use YEAR without a display width, which has the\nsame meaning.\n\nMySQL 8.0 does not support the 2-digit YEAR(2) data type permitted in\nolder versions of MySQL. For instructions on converting to 4-digit\nYEAR, see 2-Digit YEAR(2) Limitations and Migrating to 4-Digit YEAR\n(https://dev.mysql.com/doc/refman/5.7/en/migrating-from-year2.html) in\nMySQL 5.7 Reference Manual (https://dev.mysql.com/doc/refman/5.7/en/).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html'),(24,'CHAR',2,'[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*:\n\nTrailing spaces are removed when CHAR values are retrieved unless the\nPAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(25,'CHAR BYTE',2,'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(26,'VARCHAR',2,'[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. The range of M is 0 to 65,535. The effective maximum length\nof a VARCHAR is subject to the maximum row size (65,535 bytes, which is\nshared among all columns) and the character set used. For example, utf8\ncharacters can require up to three bytes per character, so a VARCHAR\ncolumn that uses the utf8 character set can be declared to be a maximum\nof 21,844 characters. See\nhttps://dev.mysql.com/doc/refman/8.0/en/column-count-limit.html.\n\nMySQL stores VARCHAR values as a 1-byte or 2-byte length prefix plus\ndata. The length prefix indicates the number of bytes in the value. A\nVARCHAR column uses one length byte if values require no more than 255\nbytes, two length bytes if values may require more than 255 bytes.\n\n*Note*:\n\nMySQL follows the standard SQL specification, and does not remove\ntrailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL uses utf8 as this predefined character\nset. https://dev.mysql.com/doc/refman/8.0/en/charset-national.html.\nNVARCHAR is shorthand for NATIONAL VARCHAR.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(27,'BINARY',2,'BINARY[(M)]\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than nonbinary character strings. An optional length M\nrepresents the column length in bytes. If omitted, M defaults to 1.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(28,'VARBINARY',2,'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than nonbinary character strings. M represents the\nmaximum column length in bytes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(29,'TINYBLOB',2,'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 − 1) bytes. Each\nTINYBLOB value is stored using a 1-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(30,'TINYTEXT',2,'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 − 1) characters. The\neffective maximum length is less if the value contains multibyte\ncharacters. Each TINYTEXT value is stored using a 1-byte length prefix\nthat indicates the number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(31,'BLOB',2,'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 − 1) bytes. Each\nBLOB value is stored using a 2-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(32,'TEXT',2,'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 − 1) characters.\nThe effective maximum length is less if the value contains multibyte\ncharacters. Each TEXT value is stored using a 2-byte length prefix that\nindicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(33,'MEDIUMBLOB',2,'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 − 1) bytes.\nEach MEDIUMBLOB value is stored using a 3-byte length prefix that\nindicates the number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(34,'MEDIUMTEXT',2,'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 − 1)\ncharacters. The effective maximum length is less if the value contains\nmultibyte characters. Each MEDIUMTEXT value is stored using a 3-byte\nlength prefix that indicates the number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(35,'LONGBLOB',2,'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 − 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a 4-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(36,'LONGTEXT',2,'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 − 1)\ncharacters. The effective maximum length is less if the value contains\nmultibyte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\n4-byte length prefix that indicates the number of bytes in the value.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(37,'ENUM',2,'ENUM(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values \'value1\', \'value2\', ..., NULL or the special \'\'\nerror value. ENUM values are represented internally as integers.\n\nAn ENUM column can have a maximum of 65,535 distinct elements.\n\nThe maximum supported length of an individual ENUM element is M <= 255\nand (M x w) <= 1020, where M is the element literal length and w is the\nnumber of bytes required for the maximum-length character in the\ncharacter set.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(38,'SET DATA TYPE',2,'SET(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values \'value1\', \'value2\', ... SET\nvalues are represented internally as integers.\n\nA SET column can have a maximum of 64 distinct members.\n\nThe maximum supported length of an individual SET element is M <= 255\nand (M x w) <= 1020, where M is the element literal length and w is the\nnumber of bytes required for the maximum-length character in the\ncharacter set.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/string-type-syntax.html'),(39,'BLOB DATA TYPE',2,'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttps://dev.mysql.com/doc/refman/8.0/en/storage-requirements.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/blob.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/blob.html'),(40,'GEOMETRY HIERARCHY',5,'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnoninstantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/gis-geometry-class-hierarchy.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/gis-geometry-class-hierarchy.html'),(41,'MBR DEFINITION',6,'Its MBR (minimum bounding rectangle), or envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/gis-class-geometry.html\n\n','((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n','https://dev.mysql.com/doc/refman/8.0/en/gis-class-geometry.html'),(42,'WKT DEFINITION',7,'The Well-Known Text (WKT) representation of geometry values is designed\nfor exchanging geometry data in ASCII form. The OpenGIS specification\nprovides a Backus-Naur grammar that specifies the formal production\nrules for writing WKT values (see\nhttps://dev.mysql.com/doc/refman/8.0/en/spatial-types.html).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/gis-data-formats.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/gis-data-formats.html'),(43,'SPATIAL COLUMNS',5,'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Spatial columns\nare supported for MyISAM, InnoDB, NDB, and ARCHIVE tables. See also the\nnotes about spatial indexes under [HELP SPATIAL indexes].\n\nColumns with a spatial data type can have an SRID attribute, to\nexplicitly indicate the spatial reference system (SRS) for values\nstored in the column. For implications of an SRID-restricted column,\nsee https://dev.mysql.com/doc/refman/8.0/en/spatial-type-overview.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/creating-spatial-columns.html\n\n','CREATE TABLE geom (g GEOMETRY);\n','https://dev.mysql.com/doc/refman/8.0/en/creating-spatial-columns.html'),(44,'SPATIAL INDEXES',5,'For InnoDB and MyISAM tables, MySQL can create spatial indexes using\nsyntax similar to that for creating regular indexes, but using the\nSPATIAL keyword. Columns in spatial indexes must be declared NOT NULL.\nThe following examples demonstrate how to create spatial indexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL SRID 4326, SPATIAL INDEX(g));\n\no With ALTER TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL SRID 4326);\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL SRID 4326);\nCREATE SPATIAL INDEX g ON geom (g);\n\nSPATIAL INDEX creates an R-tree index. For storage engines that support\nnonspatial indexing of spatial columns, the engine creates a B-tree\nindex. A B-tree index on spatial values is useful for exact-value\nlookups, but not for range scans.\n\nThe optimizer can use spatial indexes defined on columns that are\nSRID-restricted. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/spatial-type-overview.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/spatial-index-optimization.html\n.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX g ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/creating-spatial-indexes.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/creating-spatial-indexes.html'),(45,'=',9,'=\n\nEqual:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT \'0\' = 0;\n        -> 1\nmysql> SELECT \'0.0\' = 0;\n        -> 1\nmysql> SELECT \'0.01\' = 0;\n        -> 0\nmysql> SELECT \'.01\' = 0.01;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(46,'<=>',9,'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nThe <=> operator is equivalent to the standard SQL IS NOT DISTINCT FROM\noperator.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(47,'!=',9,'Syntax:\n<>, !=\n\nNot equal:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT \'.01\' <> \'0.01\';\n        -> 1\nmysql> SELECT .01 <> \'0.01\';\n        -> 0\nmysql> SELECT \'zapp\' <> \'zappp\';\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(48,'<=',9,'Syntax:\n<=\n\nLess than or equal:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 0.1 <= 2;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(49,'<',9,'Syntax:\n<\n\nLess than:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 2 < 2;\n        -> 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(50,'>=',9,'Syntax:\n>=\n\nGreater than or equal:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 2 >= 2;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(51,'>',9,'Syntax:\n>\n\nGreater than:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 2 > 2;\n        -> 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(52,'BETWEEN AND',9,'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttps://dev.mysql.com/doc/refman/8.0/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 2 BETWEEN 1 AND 3, 2 BETWEEN 3 and 1;\n        -> 1, 0\nmysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT \'b\' BETWEEN \'a\' AND \'c\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'3\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'x-3\';\n        -> 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(53,'NOT BETWEEN',9,'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(54,'COALESCE',9,'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nThe return type of COALESCE() is the aggregated type of the argument\ntypes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(55,'GREATEST',9,'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(\'B\',\'A\',\'C\');\n        -> \'C\'\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(56,'IN',9,'Syntax:\nexpr IN (value,...)\n\nReturns 1 (true) if expr is equal to any of the values in the IN()\nlist, else returns 0 (false).\n\nType conversion takes place according to the rules described in\nhttps://dev.mysql.com/doc/refman/8.0/en/type-conversion.html, applied\nto all the arguments. If no type conversion is needed for the values in\nthe IN() list, they are all non-JSON constants of the same type, and\nexpr can be compared to each of them as a value of the same type\n(possibly after type conversion), an optimization takes place. The\nvalues the list are sorted and the search for expr is done using a\nbinary search, which makes the IN() operation very quick.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT \'wefwf\' IN (\'wee\',\'wefwf\',\'weg\');\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(57,'NOT IN',9,'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(58,'INTERVAL',9,'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(59,'IS',9,'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(60,'IS NOT',9,'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(61,'IS NULL',9,'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(62,'IS NOT NULL',9,'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(63,'ISNULL',9,'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(64,'LEAST',9,'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If any argument is NULL, the result is NULL. No comparison is needed.\n\no If all arguments are integer-valued, they are compared as integers.\n\no If at least one argument is double precision, they are compared as\n  double-precision values. Otherwise, if at least one argument is a\n  DECIMAL value, they are compared as DECIMAL values.\n\no If the arguments comprise a mix of numbers and strings, they are\n  compared as strings.\n\no If any argument is a nonbinary (character) string, the arguments are\n  compared as nonbinary strings.\n\no In all other cases, the arguments are compared as binary strings.\n\nThe return type of LEAST() is the aggregated type of the comparison\nargument types.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html\n\n','mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(\'B\',\'A\',\'C\');\n        -> \'A\'\n','https://dev.mysql.com/doc/refman/8.0/en/comparison-operators.html'),(65,'!',10,'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnonzero, and NOT NULL returns NULL.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html\n\n','mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html'),(66,'AND',10,'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are nonzero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html\n\n','mysql> SELECT 1 AND 1;\n        -> 1\nmysql> SELECT 1 AND 0;\n        -> 0\nmysql> SELECT 1 AND NULL;\n        -> NULL\nmysql> SELECT 0 AND NULL;\n        -> 0\nmysql> SELECT NULL AND 0;\n        -> 0\n','https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html'),(67,'OR',10,'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is nonzero, and 0 otherwise. With a NULL operand, the result is\n1 if the other operand is nonzero, and NULL otherwise. If both operands\nare NULL, the result is NULL.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html\n\n','mysql> SELECT 1 OR 1;\n        -> 1\nmysql> SELECT 1 OR 0;\n        -> 1\nmysql> SELECT 0 OR 0;\n        -> 0\nmysql> SELECT 0 OR NULL;\n        -> NULL\nmysql> SELECT 1 OR NULL;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html'),(68,'XOR',10,'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is nonzero,\notherwise 0 is returned.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html\n\n','mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/logical-operators.html'),(69,'ASSIGN-VALUE',10,'Syntax:\n:=\n\nAssignment operator. Causes the user variable on the left hand side of\nthe operator to take on the value to its right. The value on the right\nhand side may be a literal value, another variable storing a value, or\nany legal expression that yields a scalar value, including the result\nof a query (provided that this value is a scalar value). You can\nperform multiple assignments in the same SET statement. You can perform\nmultiple assignments in the same statement.\n\nUnlike =, the := operator is never interpreted as a comparison\noperator. This means you can use := in any valid SQL statement (not\njust in SET statements) to assign a value to a variable.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/assignment-operators.html\n\n','mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n\nmysql> SELECT @var1:=COUNT(*) FROM t1;\n        -> 4\nmysql> SELECT @var1;\n        -> 4\n','https://dev.mysql.com/doc/refman/8.0/en/assignment-operators.html'),(70,'ASSIGN-EQUAL',10,'Syntax:\n=\n\nThis operator is used to perform value assignments in two cases,\ndescribed in the next two paragraphs.\n\nWithin a SET statement, = is treated as an assignment operator that\ncauses the user variable on the left hand side of the operator to take\non the value to its right. (In other words, when used in a SET\nstatement, = is treated identically to :=.) The value on the right hand\nside may be a literal value, another variable storing a value, or any\nlegal expression that yields a scalar value, including the result of a\nquery (provided that this value is a scalar value). You can perform\nmultiple assignments in the same SET statement.\n\nIn the SET clause of an UPDATE statement, = also acts as an assignment\noperator; in this case, however, it causes the column named on the left\nhand side of the operator to assume the value given to the right,\nprovided any WHERE conditions that are part of the UPDATE are met. You\ncan make multiple assignments in the same SET clause of an UPDATE\nstatement.\n\nIn any other context, = is treated as a comparison operator.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/assignment-operators.html\n\n','mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n','https://dev.mysql.com/doc/refman/8.0/en/assignment-operators.html'),(71,'CASE OPERATOR',11,'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first CASE syntax returns the result for the first\nvalue=compare_value comparison that is true. The second syntax returns\nthe result for the first condition that is true. If no comparison or\ncondition is true, the result after ELSE is returned, or NULL if there\nis no ELSE part.\n\n*Note*:\n\nThe syntax of the CASE expr described here differs slightly from that\nof the SQL CASE statement described in [HELP CASE statement], for use\ninside stored programs. The CASE statement cannot have an ELSE NULL\nclause, and it is terminated with END CASE instead of END.\n\nThe return type of a CASE expression result is the aggregated type of\nall result values:\n\no If all types are numeric, the aggregated type is also numeric:\n\n  o If at least one argument is double precision, the result is double\n    precision.\n\n  o Otherwise, if at least one argument is DECIMAL, the result is\n    DECIMAL.\n\n  o Otherwise, the result is an integer type (with one exception):\n\n    o If all integer types are all signed or all unsigned, the result\n      is the same sign and the precision is the highest of all\n      specified integer types (that is, TINYINT, SMALLINT, MEDIUMINT,\n      INT, or BIGINT).\n\n    o If there is a combination of signed and unsigned integer types,\n      the result is signed and the precision may be higher. For\n      example, if the types are signed INT and unsigned INT, the result\n      is signed BIGINT.\n\n    o The exception is unsigned BIGINT combined with any signed integer\n      type. The result is DECIMAL with sufficient precision and scale\n      0.\n\no If all types are BIT, the result is BIT. Otherwise, BIT arguments are\n  treated similar to BIGINT.\n\no If all types are YEAR, the result is YEAR. Otherwise, YEAR arguments\n  are treated similar to INT.\n\no If all types are character string (CHAR or VARCHAR), the result is\n  VARCHAR with maximum length determined by the longest character\n  length of the operands.\n\no If all types are character or binary string, the result is VARBINARY.\n\no SET and ENUM are treated similar to VARCHAR; the result is VARCHAR.\n\no If all types are JSON, the result is JSON.\n\no If all types are temporal, the result is temporal:\n\n  o If all temporal types are DATE, TIME, or TIMESTAMP, the result is\n    DATE, TIME, or TIMESTAMP, respectively.\n\n  o Otherwise, for a mix of temporal types, the result is DATETIME.\n\no If all types are GEOMETRY, the result is GEOMETRY.\n\no If any type is BLOB, the result is BLOB.\n\no For all other type combinations, the result is VARCHAR.\n\no Literal NULL operands are ignored for type aggregation.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html\n\n','mysql> SELECT CASE 1 WHEN 1 THEN \'one\'\n    ->     WHEN 2 THEN \'two\' ELSE \'more\' END;\n        -> \'one\'\nmysql> SELECT CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END;\n        -> \'true\'\nmysql> SELECT CASE BINARY \'B\'\n    ->     WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END;\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html'),(72,'IF FUNCTION',11,'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL), IF() returns expr2.\nOtherwise, it returns expr3.\n\n*Note*:\n\nThere is also an IF statement, which differs from the IF() function\ndescribed here. See [HELP IF statement].\n\nIf only one of expr2 or expr3 is explicitly NULL, the result type of\nthe IF() function is the type of the non-NULL expression.\n\nThe default return type of IF() (which may matter when it is stored\ninto a temporary table) is calculated as follows:\n\no If expr2 or expr3 produce a string, the result is a string.\n\n  If expr2 and expr3 are both strings, the result is case-sensitive if\n  either string is case sensitive.\n\no If expr2 or expr3 produce a floating-point value, the result is a\n  floating-point value.\n\no If expr2 or expr3 produce an integer, the result is an integer.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html\n\n','mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,\'yes\',\'no\');\n        -> \'yes\'\nmysql> SELECT IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\');\n        -> \'no\'\n','https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html'),(73,'IFNULL',11,'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html\n\n','mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,\'yes\');\n        -> \'yes\'\n','https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html'),(74,'NULLIF',11,'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nThe return value has the same type as the first argument.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html\n\n','mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html'),(75,'+',12,'Syntax:\n+\n\nAddition:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3+5;\n        -> 8\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(76,'- BINARY',12,'Syntax:\n-\n\nSubtraction:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3-5;\n        -> -2\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(77,'- UNARY',12,'Syntax:\n-\n\nUnary minus. This operator changes the sign of the operand.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT - 2;\n        -> -2\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(78,'*',12,'Syntax:\n*\n\nMultiplication:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> out-of-range error\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(79,'/',12,'Syntax:\n/\n\nDivision:\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3/5;\n        -> 0.60\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(80,'DIV',12,'Syntax:\nDIV\n\nInteger division. Discards from the division result any fractional part\nto the right of the decimal point.\n\nIf either operand has a noninteger type, the operands are converted to\nDECIMAL and divided using DECIMAL arithmetic before converting the\nresult to BIGINT. If the result exceeds BIGINT range, an error occurs.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','mysql> SELECT 5 DIV 2, -5 DIV 2, 5 DIV -2, -5 DIV -2;\n        -> 2, -2, -2, 2\n','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(81,'%',12,'Syntax:\nN % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in\nhttps://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html'),(82,'ABS',12,'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(83,'ACOS',12,'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(84,'ASIN',12,'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(\'foo\');\n\n+-------------+\n| ASIN(\'foo\') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'foo\' |\n+---------+------+-----------------------------------------+\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(85,'ATAN',12,'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(86,'ATAN2',12,'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(87,'CEIL',12,'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(88,'CEILING',12,'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(89,'CONV',12,'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If from_base\nis a negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT CONV(\'a\',16,2);\n        -> \'1010\'\nmysql> SELECT CONV(\'6E\',18,8);\n        -> \'172\'\nmysql> SELECT CONV(-17,10,-18);\n        -> \'-H\'\nmysql> SELECT CONV(10+\'10\'+\'10\'+X\'0a\',10,10);\n        -> \'40\'\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(90,'COS',12,'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT COS(PI());\n        -> -1\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(91,'COT',12,'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> out-of-range error\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(92,'CRC32',12,'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT CRC32(\'MySQL\');\n        -> 3259397556\nmysql> SELECT CRC32(\'mysql\');\n        -> 2501908538\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(93,'DEGREES',12,'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(94,'EXP',12,'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X. The inverse of this function is LOG() (using a single\nargument only) or LN().\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(95,'FLOOR',12,'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT FLOOR(1.23), FLOOR(-1.23);\n        -> 1, -2\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(96,'LN',12,'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\nIf X is less than or equal to 0.0E0, the function returns NULL and a\nwarning \"Invalid argument for logarithm\" is reported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(97,'LOG',12,'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X. If X is less than or equal to 0.0E0, the function\nreturns NULL and a warning \"Invalid argument for logarithm\" is\nreported.\n\nThe inverse of this function (when called with a single argument) is\nthe EXP() function.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(98,'LOG2',12,'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X. If X is less than or equal to 0.0E0,\nthe function returns NULL and a warning \"Invalid argument for\nlogarithm\" is reported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html'),(99,'LOG10',12,'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X. If X is less than or equal to\n0.0E0, the function returns NULL and a warning \"Invalid argument for\nlogarithm\" is reported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n','https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--
-- WHERE:  true limit 100

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('example','users','GEN_CLUST_INDEX','2020-06-05 09:27:45','n_diff_pfx01',0,1,'DB_ROW_ID'),('example','users','GEN_CLUST_INDEX','2020-06-05 09:27:45','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('example','users','GEN_CLUST_INDEX','2020-06-05 09:27:45','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2020-06-03 13:57:11','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2020-06-03 13:57:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2020-06-03 13:57:11','size',1,NULL,'Number of pages in the index'),('mysql','gtid_executed','PRIMARY','2020-06-03 13:57:11','n_diff_pfx01',0,1,'source_uuid'),('mysql','gtid_executed','PRIMARY','2020-06-03 13:57:11','n_diff_pfx02',0,1,'source_uuid,interval_start'),('mysql','gtid_executed','PRIMARY','2020-06-03 13:57:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','gtid_executed','PRIMARY','2020-06-03 13:57:11','size',1,NULL,'Number of pages in the index'),('sample','users','GEN_CLUST_INDEX','2020-06-05 10:27:32','n_diff_pfx01',0,1,'DB_ROW_ID'),('sample','users','GEN_CLUST_INDEX','2020-06-05 10:27:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sample','users','GEN_CLUST_INDEX','2020-06-05 10:27:32','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2020-06-03 13:57:12','n_diff_pfx01',2,1,'variable'),('sys','sys_config','PRIMARY','2020-06-03 13:57:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2020-06-03 13:57:12','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--
-- WHERE:  true limit 100

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('example','users','2020-06-05 09:27:45',0,1,0),('mysql','component','2020-06-03 13:57:11',0,1,0),('mysql','gtid_executed','2020-06-03 13:57:11',0,1,0),('sample','users','2020-06-05 10:27:32',0,1,0),('sys','sys_config','2020-06-03 13:57:12',2,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--
-- WHERE:  true limit 100

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--
-- WHERE:  true limit 100

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--
-- WHERE:  true limit 100

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--
-- WHERE:  true limit 100

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--
-- WHERE:  true limit 100

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--
-- WHERE:  true limit 100

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2020-06-03 13:57:11',NULL),('disk_temptable_row_cost',NULL,'2020-06-03 13:57:11',NULL),('key_compare_cost',NULL,'2020-06-03 13:57:11',NULL),('memory_temptable_create_cost',NULL,'2020-06-03 13:57:11',NULL),('memory_temptable_row_cost',NULL,'2020-06-03 13:57:11',NULL),('row_evaluate_cost',NULL,'2020-06-03 13:57:11',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--
-- WHERE:  true limit 100

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between master and slave.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables having primary keys on create and alter table queries',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--
-- WHERE:  true limit 100

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--
-- WHERE:  true limit 100

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2020-06-03 13:57:12','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--
-- WHERE:  true limit 100

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--
-- WHERE:  true limit 100

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--
-- WHERE:  true limit 100

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--
-- WHERE:  true limit 100

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--
-- WHERE:  true limit 100

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--
-- WHERE:  true limit 100

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2020-06-03 13:57:12',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2020-06-03 13:57:12',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2020-06-03 13:57:12',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*7E682321B58D9234F716635FBDEFE8EFAAB0C6D0','N','2020-06-03 13:57:20',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-05 16:31:39
