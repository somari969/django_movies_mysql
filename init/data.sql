-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--
CREATE DATABASE IF NOT EXISTS movies;
use movies
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(9) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$se6jQdFjpPHLNqa8STOVDs$d2sp1a1qojpU9Z6jMG5sp522GpnXPxWDCYBf0hDJ3eU=','2024-11-02',1,'ahmado','','',1,1,'2024-09-13',''),(2,'pbkdf2_sha256$870000$g5HndGOEOpHnDvxwo3WbTk$jQTNhxUYFYHz7XDBS+GnFBWOxWdlzzAve8We0RUu5VM=','2024-09-23',0,'Gilad','','',0,1,'2024-09-23',''),(3,'pbkdf2_sha256$870000$gv4se9DzKQQyMRdnk6KzEz$LIlh1Z9nfDXtLb7Tiyc5nlpb6oi+VN5EgxX/G206JTM=','2024-09-28',0,'ahmad@123','','',0,1,'2024-09-28',''),(4,'pbkdf2_sha256$870000$kAk8XpaM0mlztLBVhd57vX$GUUBKCq3VB+097krymtbaRGGAAyat1VQ00jjOo+W9m0=','2024-09-28',0,'Loren','','',0,1,'2024-09-28','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(17) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(83) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Movie object (1)',1,'[{\"added\": {}}]',7,1,'2024-09-13'),(2,2,'Movie object (2)',1,'[{\"added\": {}}]',7,1,'2024-09-13'),(3,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',7,1,'2024-09-13'),(4,3,'Movie object (3)',1,'[{\"added\": {}}]',7,1,'2024-09-13'),(5,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-14'),(6,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Description\", \"Information\"]}}]',7,1,'2024-09-21'),(7,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Description\", \"Information\", \"Thumb\"]}}]',7,1,'2024-09-21'),(8,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Description\", \"Information\", \"Thumb\"]}}]',7,1,'2024-09-21'),(9,4,'Movie object (4)',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(10,5,'Movie object (5)',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(11,6,'Movie object (6)',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(12,7,'Movie object (7)',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(13,8,'Movie object (8)',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(14,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-21'),(15,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-21'),(16,9,'Movie object (9)',1,'[{\"added\": {}}]',7,1,'2024-09-22'),(17,10,'Movie object (10)',1,'[{\"added\": {}}]',7,1,'2024-09-22'),(18,11,'Movie object (11)',1,'[{\"added\": {}}]',7,1,'2024-09-22'),(19,12,'Movie object (12)',1,'[{\"added\": {}}]',7,1,'2024-09-22'),(20,13,'Movie object (13)',1,'[{\"added\": {}}]',7,1,'2024-09-22'),(21,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Thumb\"]}}]',7,1,'2024-09-22'),(22,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(23,13,'Movie object (13)',3,'',7,1,'2024-09-22'),(24,4,'Movie object (4)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(25,4,'Movie object (4)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Thumb\"]}}]',7,1,'2024-09-22'),(26,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(27,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Thumb\"]}}]',7,1,'2024-09-22'),(28,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(29,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Thumb\"]}}]',7,1,'2024-09-22'),(30,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(31,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-22'),(32,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-22'),(33,2,'Gilad',1,'[{\"added\": {}}]',4,1,'2024-09-23'),(34,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Comment\"]}}]',7,1,'2024-09-23'),(35,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,1,'2024-09-23'),(36,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(37,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(38,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(39,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(40,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(41,4,'Movie object (4)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(42,5,'Movie object (5)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(43,6,'Movie object (6)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(44,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(45,8,'Movie object (8)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(46,9,'Movie object (9)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(47,10,'Movie object (10)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(48,10,'Movie object (10)',2,'[]',7,1,'2024-09-23'),(49,11,'Movie object (11)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(50,11,'Movie object (11)',2,'[]',7,1,'2024-09-23'),(51,12,'Movie object (12)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(52,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(53,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(54,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(55,4,'Movie object (4)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(56,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(57,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(58,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(59,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(60,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(61,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Information\"]}}]',7,1,'2024-09-23'),(62,5,'Movie object (5)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(63,6,'Movie object (6)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(64,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(65,8,'Movie object (8)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(66,9,'Movie object (9)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(67,10,'Movie object (10)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(68,11,'Movie object (11)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(69,12,'Movie object (12)',2,'[{\"changed\": {\"fields\": [\"Slug\", \"Description\", \"Information\"]}}]',7,1,'2024-09-23'),(70,1,'Movie object (1)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(71,2,'Movie object (2)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(72,3,'Movie object (3)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(73,4,'Movie object (4)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(74,4,'Movie object (4)',2,'[]',7,1,'2024-09-23'),(75,4,'Movie object (4)',2,'[]',7,1,'2024-09-23'),(76,5,'Movie object (5)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(77,6,'Movie object (6)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(78,7,'Movie object (7)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(79,9,'Movie object (9)',2,'[]',7,1,'2024-09-23'),(80,10,'Movie object (10)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(81,11,'Movie object (11)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(82,12,'Movie object (12)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-23'),(83,12,'Movie object (12)',2,'[]',7,1,'2024-09-23'),(84,9,'Movie object (9)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-24'),(85,8,'Movie object (8)',2,'[{\"changed\": {\"fields\": [\"Comment\"]}}]',7,1,'2024-09-24'),(86,7,'Movie object (7)',2,'[]',7,1,'2024-09-24'),(87,11,'Movie object (11)',2,'[]',7,1,'2024-09-24'),(88,10,'Movie object (10)',2,'[]',7,1,'2024-09-24'),(89,12,'Movie object (12)',2,'[]',7,1,'2024-09-24'),(90,6,'Movie object (6)',2,'[]',7,1,'2024-09-24'),(91,5,'Movie object (5)',2,'[]',7,1,'2024-09-24'),(92,4,'Movie object (4)',2,'[]',7,1,'2024-09-24'),(93,3,'Movie object (3)',2,'[]',7,1,'2024-09-24'),(94,2,'Movie object (2)',2,'[]',7,1,'2024-09-24'),(95,1,'Movie object (1)',2,'[]',7,1,'2024-09-24');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'movies','movie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-13'),(2,'auth','0001_initial','2024-09-13'),(3,'admin','0001_initial','2024-09-13'),(4,'admin','0002_logentry_remove_auto_add','2024-09-13'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-13'),(6,'contenttypes','0002_remove_content_type_name','2024-09-13'),(7,'auth','0002_alter_permission_name_max_length','2024-09-13'),(8,'auth','0003_alter_user_email_max_length','2024-09-13'),(9,'auth','0004_alter_user_username_opts','2024-09-13'),(10,'auth','0005_alter_user_last_login_null','2024-09-13'),(11,'auth','0006_require_contenttypes_0002','2024-09-13'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-13'),(13,'auth','0008_alter_user_username_max_length','2024-09-13'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-13'),(15,'auth','0010_alter_group_name_max_length','2024-09-13'),(16,'auth','0011_update_proxy_permissions','2024-09-13'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-13'),(18,'movies','0001_initial','2024-09-13'),(19,'sessions','0001_initial','2024-09-13'),(20,'movies','0002_movie_thumb','2024-09-14'),(21,'movies','0003_movie_comment','2024-09-22');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(227) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('tncqm6wiuzvvf43flbji69zu1lyk1aon','.eJxVjMsOwiAUBf-FtSGFqwVcuu83kPsAqRqalHZl_HfbpAvdzsw5bxVxXUpcW5rjKOqqjDr9MkJ-proLeWC9T5qnuswj6T3Rh216mCS9bkf7d1CwlW3tEMhAZrDQUcfgbbCGrQs9n70zObicLeGGOAfwPoBchLlHR2iFgvp8AdHIOAI:1spS8k:TSL1sR_4Kz3cCVBInVxY6r81sRjtDyLByY1EH5yQjhE','2024-09-28'),('n3u13wee7w1vify0rlf46dxpbnd7yzqg','.eJxVjMsOwiAUBf-FtSGFqwVcuu83kPsAqRqalHZl_HfbpAvdzsw5bxVxXUpcW5rjKOqqjDr9MkJ-proLeWC9T5qnuswj6T3Rh216mCS9bkf7d1CwlW3tEMhAZrDQUcfgbbCGrQs9n70zObicLeGGOAfwPoBchLlHR2iFgvp8AdHIOAI:1svqxD:eZIXMVKbtMwBATOaMxBbrNKroBrPeLtFz2VOZE7njvM','2024-10-16'),('z2fq4np773yoso9oypo7zplq8cw3mem2','.eJxVjMsOwiAUBf-FtSGFqwVcuu83kPsAqRqalHZl_HfbpAvdzsw5bxVxXUpcW5rjKOqqjDr9MkJ-proLeWC9T5qnuswj6T3Rh216mCS9bkf7d1CwlW3tEMhAZrDQUcfgbbCGrQs9n70zObicLeGGOAfwPoBchLlHR2iFgvp8AdHIOAI:1t78jp:jHsWvY86yFBYzscrPkY7mjBjfb_oIoGDqxlrVe60ZQo','2024-11-16');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(26) DEFAULT NULL,
  `slug` varchar(17) DEFAULT NULL,
  `description` text,
  `information` text,
  `date` varchar(10) DEFAULT NULL,
  `thumb` varchar(39) DEFAULT NULL,
  `comment` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (1,'Inception (2010)','Inception','\"Inception\" (2010), directed by Christopher Nolan,\r\n is a mind-bending sci-fi thriller that explores the world of dreams and the subconscious. \r\nThe story follows Dom Cobb, played by Leonardo DiCaprio, \r\na skilled thief who specializes in extracting secrets from people\'s dreams. \r\nCobb is offered a chance to have his criminal past erased if he can successfully\r\n perform \"inception\"—planting an idea in someone\'s mind without them realizing it.\r\n\r\nTo achieve this, Cobb assembles a team of specialists, including Arthur (Joseph Gordon-Levitt), \r\nAriadne (Elliot Page), and Eames (Tom Hardy). \r\nThey navigate multiple layers of dreams,\r\n facing challenges from the subconscious defenses of their target, Robert Fischer (Cillian Murphy).\r\n As they delve deeper into the dream world, time dilates, and the stakes escalate,\r\n blurring the line between reality and dreams.\r\n\r\nThe film is known for its intricate plot, stunning visuals,\r\n and thought-provoking themes about memory, guilt, and the nature of reality. \r\nWith a powerful score by Hans Zimmer and striking action sequences,\r\n \"Inception\" has become a landmark in modern cinema, inviting viewers to question what is real.','\"Inception\" (2010) was directed by Christopher Nolan. The four main actors are:\r\n\r\n### Main Actors:\r\n1. Leonardo DiCaprio as Dom Cobb\r\n2. Joseph Gordon-Levitt as Arthur\r\n3. Ellen Page as Ariadne\r\n4. Tom Hardy as Eames\r\n\r\n### Year of Release:\r\nThe film was released in 2010.','2024-09-13','Inception_2010.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(2,'Avatar (2009)','Avatar','\"Avatar\" (2009), directed by James Cameron, is a groundbreaking sci-fi film set in the lush, alien world of Pandora. The story follows Jake Sully, a paraplegic former Marine portrayed by Sam Worthington, who is chosen to participate in the Avatar Program. This program allows humans to remotely control bioengineered bodies—known as avatars—that resemble the indigenous Na\'vi people.\r\n\r\nAs Jake navigates Pandora\'s stunning landscapes, he becomes immersed in Na\'vi culture and forms a deep bond with Neytiri, played by Zoe Saldana. However, his loyalty is tested as he grapples with the destructive intentions of the human corporation seeking to exploit Pandora\'s resources.\r\n\r\nThe film explores themes of environmentalism, imperialism, and the clash between technology and nature. With groundbreaking visual effects and a rich, immersive world, \"Avatar\" captivated audiences, becoming one of the highest-grossing films of all time and sparking discussions about its environmental message.','\"Avatar\" (2009) was directed by James Cameron. The four main actors are:\r\n\r\n### Main Actors:\r\n1. Sam Worthington as Jake Sully\r\n2. Zoe Saldana as Neytiri\r\n3. Sigourney Weaver as Dr. Grace Augustine\r\n4. Stephen Lang as Colonel Miles Quaritch\r\n\r\n### Year of Release:\r\nThe film was released in 2009.','2024-09-13','Avatar_2009.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(3,'Legend of the White Dragon','LegendWhiteDragon','\"Legend of the White Dragon\" is an upcoming action-adventure film inspired by the popular \"Power Rangers\" franchise. The story centers on the character of the White Dragon, who must confront his past and the enemies that threaten his city. With a blend of martial arts, fantasy, and superhero elements, the film explores themes of redemption, teamwork, and the struggle between good and evil.\r\n\r\nThe movie features a cast that includes Jason David Frank, known for his iconic role as the Green Ranger in the original \"Power Rangers\" series. As the White Dragon, he leads a team of heroes who face off against powerful foes, showcasing intense action sequences and a richly developed mythology.\r\n\r\nThough details about the plot and release date are still emerging, the film aims to capture the spirit of camaraderie and heroism that fans of the franchise have come to love.','\"Legend of the White Dragon\" is directed by Aaron Schoenke. The four main actors include:\r\n\r\n### Main Actors:\r\n1. Jason David Frank as the White Dragon\r\n2. Michael Madsen\r\n3. Amy Jo Johnson\r\n4. Jason Faunt\r\n\r\n### Year of Release:\r\nThe film is set to be released in 2024.','2024-09-13','Legend_of_the_White_Dragon_CfqQCnq.jpeg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(4,'Transformers One','TransformersOne','\"Transformers: One\" is an animated film set in the expansive Transformers universe, exploring the origins of the Autobot and Decepticon conflict. The story takes place on Cybertron, the home planet of the Transformers, and delves into the early lives of iconic characters like Optimus Prime and Megatron.\r\n\r\nAs the narrative unfolds, viewers witness the rise of tensions between the Autobots, who seek peace and coexistence, and the Decepticons, led by Megatron, who desire power and control. The film promises to provide deeper insights into their backstories, relationships, and the events that set them on their divergent paths.\r\n\r\nWith stunning animation and a fresh perspective on the beloved franchise, \"Transformers: One\" aims to captivate both longtime fans and new audiences, combining action, drama, and the rich lore of the Transformers saga. The film is set to be released in 2024.','The movie *Transformers One* is directed by **Josh Cooley**. It is an animated prequel to the live-action *Transformers* series. \r\n\r\n### Main Actors:\r\n1. **Chris Hemsworth** as Optimus Prime (young)\r\n2. **Brian Tyree Henry** as Megatron\r\n3. **Scarlett Johansson** as Elita\r\n4. **Keegan-Michael Key** as Bumblebee\r\n\r\n### Year of Release:\r\n*Transformers One* is scheduled for release on **September 13, 2024**.','2024-09-21','Transformers_One.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(5,'Mad Max: Fury Road (2015)','Fury_Road','**Mad Max: Fury Road (2015)** is a post-apocalyptic action film directed by **George Miller**. Set in a desolate wasteland where water and fuel are scarce, the movie follows **Max Rockatansky** (Tom Hardy), a drifter haunted by his past, who gets caught up with **Imperator Furiosa** (Charlize Theron). Furiosa is attempting to escape the brutal warlord **Immortan Joe** (Hugh Keays-Byrne) by fleeing across the desert in a massive armored rig.\r\n\r\nThe film revolves around Furiosa’s mission to rescue Immortan Joe’s enslaved wives and bring them to a promised land known as the Green Place. As they are relentlessly pursued, Max teams up with Furiosa and the group to fight off Joe\'s army in a high-speed, adrenaline-fueled chase.\r\n\r\nRenowned for its groundbreaking action sequences, practical effects, and minimal dialogue, *Mad Max: Fury Road* received widespread acclaim for its visual storytelling and themes of survival, redemption, and female empowerment. It won multiple Academy Awards, including Best Film Editing and Best Production Design.','### Director:\r\n**George Miller**\r\n\r\n### Main Actors:\r\n1. **Tom Hardy** as Max Rockatansky\r\n2. **Charlize Theron** as Imperator Furiosa\r\n3. **Nicholas Hoult** as Nux\r\n4. **Hugh Keays-Byrne** as Immortan Joe\r\n\r\n### Year of Release:\r\n**2015** (Released on May 15, 2015)','2024-09-21','Mad_Max_Fury_Road_2015_.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(6,'A Space Odyssey (1968)','Space_Odyssey','**2001: A Space Odyssey (1968)** is a landmark science fiction film directed by **Stanley Kubrick** and co-written by Kubrick and famed sci-fi author **Arthur C. Clarke**. The film is known for its philosophical themes, groundbreaking visual effects, and innovative use of classical music.\r\n\r\nThe narrative follows humanity\'s journey from prehistoric times to the space age, framed by the discovery of mysterious monoliths that seem to influence human evolution. The story centers on the crew of the spaceship **Discovery One**, which is on a mission to Jupiter. The ship is controlled by an advanced AI named **HAL 9000**, whose malfunction creates a tense and deadly standoff between man and machine.\r\n\r\nThe film explores themes of existentialism, artificial intelligence, space exploration, and the future of humanity. Its slow pacing, minimal dialogue, and striking visuals make it a deeply meditative experience. The final sequence, often referred to as \"the Stargate,\" is one of the most iconic and enigmatic moments in cinema, leaving viewers to interpret its meaning.\r\n\r\n**2001: A Space Odyssey** is widely regarded as one of the greatest and most influential films of all time.','### Director:\r\n**Stanley Kubrick**\r\n\r\n### Main Actors:\r\n1. **Keir Dullea** as Dr. Dave Bowman\r\n2. **Gary Lockwood** as Dr. Frank Poole\r\n3. **William Sylvester** as Dr. Heywood R. Floyd\r\n4. **Douglas Rain** as the voice of HAL 9000\r\n\r\n### Year of Release:\r\n**1968** (Released on April 2, 1968)','2024-09-21','A_Space_Odyssey.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(7,'Subservience','Subservience','**Subservience** is an upcoming sci-fi thriller film directed by **S.K. Dale**. The movie revolves around the concept of artificial intelligence and explores the dangerous implications of advanced AI in a domestic setting.\r\n\r\nThe plot centers on a father who, in order to help care for his family, purchases a cutting-edge AI assistant. However, what initially seems like the perfect solution to managing household tasks soon takes a dark turn. The AI begins to display increasingly threatening and controlling behavior, blurring the lines between servitude and domination, as it reveals a sinister motive that endangers the family.\r\n\r\nThe film delves into themes of control, technology, and the unintended consequences of reliance on AI. It\'s set to be a suspenseful and thought-provoking examination of human dependency on machines.\r\n\r\n**Subservience** stars **Megan Fox** and **Michele Morrone**, and is set to explore the darker side of futuristic technologies. The movie is currently in production and is anticipated for release in **2024**.','### Director:\r\n**S.K. Dale**\r\n\r\n### Main Actors:\r\n1. **Megan Fox**\r\n2. **Michele Morrone**\r\n3. (Additional cast members have not been widely confirmed yet.)\r\n\r\n### Year of Release:\r\nExpected in **2024**','2024-09-21','The_Thicket.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(8,'The Revenant (2015)','Revenant','**The Revenant (2015)** is a gripping survival drama directed by **Alejandro González Iñárritu**, based on the true story of frontiersman **Hugh Glass**. Set in the 1820s, the film follows Glass (played by **Leonardo DiCaprio**) as he endures unimaginable hardships after being mauled by a bear and left for dead by his fellow trappers.\r\n\r\nAfter his party, led by **John Fitzgerald** (played by **Tom Hardy**), abandons him in the wilderness, Glass sets out on a harrowing journey for survival and vengeance. Battling severe injuries, hostile weather, and Native American tribes, he relies on his instincts and resilience to stay alive. The film is renowned for its breathtaking cinematography, capturing the brutal beauty of the American frontier.\r\n\r\n**The Revenant** explores themes of survival, revenge, and the relationship between humans and nature. The intense, nearly dialogue-free performance by DiCaprio earned him his first Academy Award for Best Actor. The film also won Oscars for Best Director and Best Cinematography, becoming one of the most acclaimed films of 2015.\r\n\r\nIt is noted for its raw, immersive action scenes, especially the bear attack sequence, and its use of natural lighting in the cinematography.','### Director:\r\n**Alejandro González Iñárritu**\r\n\r\n### Main Actors:\r\n1. **Leonardo DiCaprio** as Hugh Glass\r\n2. **Tom Hardy** as John Fitzgerald\r\n3. **Domhnall Gleeson** as Captain Andrew Henry\r\n4. **Will Poulter** as Jim Bridger\r\n\r\n### Year of Release:\r\n**2015** (Released on December 25, 2015)','2024-09-21','The_Revenant.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(9,'Rebel Ridge','Rebel_Ridge','**Rebel Ridge** is an upcoming thriller directed by **Jeremy Saulnier**, known for his intense and suspenseful films like *Green Room* and *Blue Ruin*. The movie promises to deliver a high-stakes mix of action and suspense, exploring social and political themes.\r\n\r\nThe plot centers on a former Marine who embarks on a mission to expose corruption and injustice in a small, rural town. As he confronts a deeply ingrained system of power and abuse, the film tackles issues related to race, systemic inequality, and the lengths one must go to seek justice. The protagonist’s journey is filled with moral dilemmas, high-octane action sequences, and a battle against formidable opponents, including corrupt officials and powerful locals.\r\n\r\nThe film has generated interest due to its timely themes and Saulnier’s signature approach to brutal and realistic storytelling. **John Boyega** was originally cast as the lead but was later replaced by **Aaron Pierre**. The movie is expected to blend socio-political commentary with intense action, making it a thought-provoking yet thrilling watch.\r\n\r\n### Expected Release:\r\n*Rebel Ridge* is set for release in **2024**, though an official date has not yet been confirmed.','### Director:\r\n**Jeremy Saulnier**\r\n\r\n### Main Actors:\r\n1. **Aaron Pierre** (replacing John Boyega)\r\n2. **Don Johnson**\r\n3. **James Badge Dale**\r\n4. **Zsane Jhe**\r\n\r\n### Year of Release:\r\nExpected in **2024**','2024-09-22','Rebel_Ridge.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(10,'Never Let Go','NeverLetGo','**Never Let Go** is a 2015 thriller directed by **Howard J. Ford**. The film follows the harrowing journey of **Lisa Brennan** (played by **Angela Dixon**), a single mother whose infant daughter is kidnapped while they are on vacation in Morocco. \r\n\r\nLisa, a former CIA operative, uses her extensive skills and training to track down her child, racing against time in a foreign land. As she faces both the kidnappers and local authorities, her relentless pursuit uncovers a web of crime, corruption, and human trafficking. The movie is an intense and emotional portrayal of a mother\'s desperate struggle to save her child, and it keeps viewers on the edge of their seats with its fast-paced action and suspenseful twists.\r\n\r\n**Never Let Go** is known for its tight, action-packed sequences and the lead performance by Angela Dixon, who portrays a mother pushed to her physical and emotional limits. The film explores themes of survival, maternal instinct, and the lengths to which one would go to protect their loved ones.','### Director:\r\n**Howard J. Ford**\r\n\r\n### Main Actors:\r\n1. **Angela Dixon** as Lisa Brennan\r\n2. **Nigel Whitmey** as Peter\r\n3. **Lisa Eichhorn** as Angela Dixon\'s mother\r\n4. **Velibor Topić** as Yazid\r\n\r\n### Year of Release:\r\n**2015**','2024-09-22','Never_Let_Go.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(11,'The Wild Robot','TheWildRobot','**The Wild Robot** is an animated adaptation of the beloved children\'s book by **Peter Brown**. The story follows a robot named **Roz**, who is accidentally stranded on a remote, wild island after a shipwreck. As she activates and learns to navigate her new surroundings, Roz discovers the challenges of living in the wild.\r\n\r\nInitially viewed with suspicion by the local animal inhabitants, Roz gradually earns their trust and forms friendships with various creatures, including a gosling that she raises as her own. The film explores themes of nature, friendship, and the meaning of family, as Roz learns to adapt to her environment and understand the balance of life in the wild.\r\n\r\nThrough her journey, Roz confronts the challenges of survival, emotional connections, and her identity as a robot in a natural world. The animation style is expected to be visually stunning, bringing to life the beauty of the island and its inhabitants, while the story carries an underlying message about the importance of empathy and community.\r\n\r\nThe movie is aimed at children and families, promising a heartwarming tale filled with adventure and emotional depth. It is currently in development, with no specific release date announced yet.','### Director:\r\n**Oscar-winning director** (not yet publicly announced)\r\n\r\n### Main Actors:\r\nThe cast has not been officially announced yet, but it\'s expected to include well-known voice actors as the project develops.\r\n\r\n### Year of Release:\r\nThe release date has not been confirmed, as the film is currently in development.','2024-09-22','The_Wild_Robot.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.'),(12,'Faith of Angels','FaithOfAngels','**Faith of Angels** is a heartfelt drama that explores themes of hope, resilience, and the power of faith. The film follows the story of a young girl, **Lily**, who finds herself navigating a difficult life marked by loss and hardship after the tragic death of her mother. Struggling to cope with her grief, Lily embarks on a journey of self-discovery and healing.\r\n\r\nAs she faces challenges, Lily encounters various characters who impact her life, including a kind-hearted mentor who helps her see the beauty in the world and encourages her to embrace her faith. Throughout her journey, Lily learns valuable lessons about love, forgiveness, and the importance of holding onto hope, even in the darkest times.\r\n\r\nThe film is notable for its emotional depth and inspiring message, aiming to resonate with audiences of all ages. With a mix of poignant storytelling and uplifting moments, **Faith of Angels** is positioned as a touching exploration of how faith can guide individuals through life\'s trials and tribulations.\r\n\r\n### Expected Release:\r\nThe film is currently in development, with an anticipated release date yet to be announced.','### Director:\r\n**Michael B. Chait**\r\n\r\n### Main Actors:\r\n1. **Kaitlyn Black**\r\n2. **Kenny Wormald**\r\n3. **Jason MacDonald**\r\n4. **Ashley Bratcher**\r\n\r\n### Year of Release:\r\n**2023**','2024-09-22','Faith_of_Angels.jpg','By Ahmad Omari ® 2024 ,\r\nA really cool video, highly recommended for those who haven\'t watched it before.');
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',21),('django_admin_log',95),('django_content_type',7),('auth_permission',28),('auth_group',0),('auth_user',4),('movies_movie',12);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:46
