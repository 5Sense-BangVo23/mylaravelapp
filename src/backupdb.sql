-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: mylaraveldb
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8400003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1000000,0,1000000,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2000000,0,2000000,'Admin','fa-tasks','',NULL,NULL,NULL),(3000000,2000000,3000000,'Users','fa-users','auth/users',NULL,NULL,NULL),(4000000,2000000,4000000,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5000000,2000000,5000000,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6000000,2000000,6000000,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7000000,2000000,7000000,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8000000,0,8000000,'Media','fa-tasks','',NULL,NULL,NULL),(8000001,8000000,8000001,'Cloudinary','fa-bars','/media/cloudinary',NULL,NULL,NULL),(8100000,0,8100000,'Banner','fa-tasks','',NULL,NULL,NULL),(8100001,8100000,8100001,'Create','fa-tasks','/banner/create',NULL,NULL,NULL),(8100002,8100000,8100002,'List','fa-tasks','/banner',NULL,NULL,NULL),(8200000,0,8200000,'Post','fa-tasks','',NULL,NULL,NULL),(8200001,8200000,8200001,'Create','fa-tasks','/post/create',NULL,NULL,NULL),(8200002,8200000,8200002,'List','fa-tasks','/post',NULL,NULL,NULL),(8300000,0,8300000,'Category','fa-tasks','',NULL,NULL,NULL),(8300001,8300000,8300001,'Create','fa-tasks','/category/create',NULL,NULL,NULL),(8300002,8300000,8300002,'List','fa-tasks','/guest',NULL,NULL,NULL),(8400000,0,8300000,'Guest','fa-tasks','',NULL,NULL,NULL),(8400002,8400000,8400002,'List','fa-tasks','/guest',NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:12:22','2024-04-08 03:12:22'),(2,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:12:57','2024-04-08 03:12:57'),(3,1,'admin/media/cloudinary','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:13:02','2024-04-08 03:13:02'),(4,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:13:03','2024-04-08 03:13:03'),(5,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:13:04','2024-04-08 03:13:04'),(6,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:13:05','2024-04-08 03:13:05'),(7,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:13:58','2024-04-08 03:13:58'),(8,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:03','2024-04-08 03:14:03'),(9,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:04','2024-04-08 03:14:04'),(10,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:14:23','2024-04-08 03:14:23'),(11,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:29','2024-04-08 03:14:29'),(12,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:30','2024-04-08 03:14:30'),(13,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:14:40','2024-04-08 03:14:40'),(14,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:45','2024-04-08 03:14:45'),(15,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:46','2024-04-08 03:14:46'),(16,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:15:27','2024-04-08 03:15:27'),(17,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:15:31','2024-04-08 03:15:31'),(18,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:15:32','2024-04-08 03:15:32'),(19,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:17:31','2024-04-08 03:17:31'),(20,1,'admin/banner','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:17:55','2024-04-08 03:17:55'),(21,1,'admin/banner/create','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:18:00','2024-04-08 03:18:00'),(22,1,'admin/banner','POST','172.30.0.1','{\"title\":\"Lorem\",\"link\":null,\"position\":\"0\",\"status\":\"off\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-04-08 03:19:10','2024-04-08 03:19:10'),(23,1,'admin/banner','GET','172.30.0.1','[]','2024-04-08 03:19:11','2024-04-08 03:19:11'),(24,1,'admin/banner/1/edit','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:19:26','2024-04-08 03:19:26'),(25,1,'admin/banner/1','PUT','172.30.0.1','{\"title\":\"Lorem\",\"link\":\"http:\\/\\/localhost:8001\\/uploads\\/images\\/banners\\/banner_images_2024_04_08_03_19_10.png\",\"position\":\"0\",\"status\":\"off\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-04-08 03:19:32','2024-04-08 03:19:32'),(26,1,'admin/banner','GET','172.30.0.1','[]','2024-04-08 03:19:32','2024-04-08 03:19:32'),(27,1,'admin/banner/1','PUT','172.30.0.1','{\"status\":\"1\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-04-08 03:20:20','2024-04-08 03:20:20'),(28,1,'admin/banner/1','PUT','172.30.0.1','{\"status\":\"0\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-04-08 03:20:31','2024-04-08 03:20:31'),(29,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:41:46','2024-05-04 02:41:46'),(30,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:42:35','2024-05-04 02:42:35'),(31,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:42:47','2024-05-04 02:42:47'),(32,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:43:00','2024-05-04 02:43:00'),(33,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 02:43:01','2024-05-04 02:43:01'),(34,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 02:45:47','2024-05-04 02:45:47'),(35,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:45:56','2024-05-04 02:45:56'),(36,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:45:56','2024-05-04 02:45:56'),(37,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:51:02','2024-05-04 02:51:02'),(38,1,'admin/category/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:51:09','2024-05-04 02:51:09'),(39,1,'admin/category/1/edit','GET','192.168.176.1','[]','2024-05-04 02:52:32','2024-05-04 02:52:32'),(40,1,'admin/category/1','PUT','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:52:39','2024-05-04 02:52:39'),(41,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:52:39','2024-05-04 02:52:39'),(42,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:10','2024-05-04 02:53:10'),(43,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:53:11','2024-05-04 02:53:11'),(44,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:23','2024-05-04 02:53:23'),(45,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:27','2024-05-04 02:53:27'),(46,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:30','2024-05-04 02:53:30'),(47,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:53:31','2024-05-04 02:53:31'),(48,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:54:26','2024-05-04 02:54:26'),(49,1,'admin/media/cloudinary','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:54:30','2024-05-04 02:54:30'),(50,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:54:31','2024-05-04 02:54:31'),(51,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:54:31','2024-05-04 02:54:31'),(52,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:54:32','2024-05-04 02:54:32'),(53,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:11','2024-05-04 02:55:11'),(54,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:16','2024-05-04 02:55:16'),(55,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:16','2024-05-04 02:55:16'),(56,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:43','2024-05-04 02:55:43'),(57,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:47','2024-05-04 02:55:47'),(58,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:48','2024-05-04 02:55:48'),(59,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:59','2024-05-04 02:55:59'),(60,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:03','2024-05-04 02:56:03'),(61,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:03','2024-05-04 02:56:03'),(62,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:10','2024-05-04 02:56:10'),(63,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:12','2024-05-04 02:56:12'),(64,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:13','2024-05-04 02:56:13'),(65,1,'admin/media/cloudinary','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:24','2024-05-04 02:56:24'),(66,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:25','2024-05-04 02:56:25'),(67,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:26','2024-05-04 02:56:26'),(68,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:27','2024-05-04 02:56:27'),(69,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:44','2024-05-04 02:56:44'),(70,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:48','2024-05-04 02:56:48'),(71,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:49','2024-05-04 02:56:49'),(72,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:52','2024-05-04 02:56:52'),(73,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:58','2024-05-04 02:56:58'),(74,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:59','2024-05-04 02:56:59'),(75,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:58:29','2024-05-04 02:58:29'),(76,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:58:35','2024-05-04 02:58:35'),(77,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:58:38','2024-05-04 02:58:38'),(78,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:08','2024-05-04 02:59:08'),(79,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:12','2024-05-04 02:59:12'),(80,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:59:32','2024-05-04 02:59:32'),(81,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:59:32','2024-05-04 02:59:32'),(82,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:35','2024-05-04 02:59:35'),(83,1,'admin/category','POST','192.168.176.1','{\"name\":\"Cinema\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:59:46','2024-05-04 02:59:46'),(84,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:59:47','2024-05-04 02:59:47'),(85,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:54','2024-05-04 02:59:54'),(86,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:00:00','2024-05-04 03:00:00'),(87,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 03:00:19','2024-05-04 03:00:19'),(88,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:00:20','2024-05-04 03:00:20'),(89,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:12:23','2024-05-04 03:12:23'),(90,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:12:24','2024-05-04 03:12:24'),(91,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:20:26','2024-05-04 03:20:26'),(92,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:27','2024-05-04 03:20:27'),(93,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:37','2024-05-04 03:20:37'),(94,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:20:37\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:20:49','2024-05-04 03:20:49'),(95,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:50','2024-05-04 03:20:50'),(96,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:24:41','2024-05-04 03:24:41'),(97,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:24:41\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:24:53','2024-05-04 03:24:53'),(98,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:24:54','2024-05-04 03:24:54'),(99,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:31:27','2024-05-04 03:31:27'),(100,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:31:27\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:31:41','2024-05-04 03:31:41'),(101,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:31:42','2024-05-04 03:31:42'),(102,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:33:10','2024-05-04 03:33:10'),(103,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Demo A\",\"content_text\":\"Demo A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:33:10\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:33:29','2024-05-04 03:33:29'),(104,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:33:30','2024-05-04 03:33:30'),(105,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:20','2024-05-04 03:43:20'),(106,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:27','2024-05-04 03:43:27'),(107,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:43:27\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:43:40','2024-05-04 03:43:40'),(108,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:41','2024-05-04 03:43:41'),(109,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:51:43','2024-05-04 03:51:43'),(110,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:52:30','2024-05-04 03:52:30'),(111,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:52:39','2024-05-04 03:52:39'),(112,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":null,\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:53:24','2024-05-04 03:53:24'),(113,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 03:53:26','2024-05-04 03:53:26'),(114,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:53:34','2024-05-04 03:53:34'),(115,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 03:53:34','2024-05-04 03:53:34'),(116,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:53:44','2024-05-04 03:53:44'),(117,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 03:53:55','2024-05-04 03:53:55'),(118,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 03:53:56','2024-05-04 03:53:56'),(119,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:54:06','2024-05-04 03:54:06'),(120,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:54:21','2024-05-04 03:54:21'),(121,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:54:22','2024-05-04 03:54:22'),(122,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:59:50','2024-05-04 03:59:50'),(123,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:59:51','2024-05-04 03:59:51'),(124,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:59:55','2024-05-04 03:59:55'),(125,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:59:56','2024-05-04 03:59:56'),(126,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:07:40','2024-05-04 04:07:40'),(127,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test A\",\"content_text\":\"Test A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:07:40\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:07:52','2024-05-04 04:07:52'),(128,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:07:53','2024-05-04 04:07:53'),(129,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:15:16','2024-05-04 04:15:16'),(130,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:08','2024-05-04 04:16:08'),(131,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:44','2024-05-04 04:16:44'),(132,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:16:44\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:16:55','2024-05-04 04:16:55'),(133,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:56','2024-05-04 04:16:56'),(134,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:21:31','2024-05-04 04:21:31'),(135,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"1\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:21:40','2024-05-04 04:21:40'),(136,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:21:41','2024-05-04 04:21:41'),(137,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"2\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:23:17','2024-05-04 04:23:17'),(138,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:23:18','2024-05-04 04:23:18'),(139,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"3\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:23:44','2024-05-04 04:23:44'),(140,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:23:45','2024-05-04 04:23:45'),(141,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:15','2024-05-04 04:24:15'),(142,1,'admin/category/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:22','2024-05-04 04:24:22'),(143,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:27','2024-05-04 04:24:27'),(144,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:30','2024-05-04 04:24:30'),(145,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 04:24:52','2024-05-04 04:24:52'),(146,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 04:24:53','2024-05-04 04:24:53'),(147,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:56','2024-05-04 04:24:56'),(148,1,'admin/category','POST','192.168.176.1','{\"name\":\"Cinema\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 04:25:50','2024-05-04 04:25:50'),(149,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 04:25:51','2024-05-04 04:25:51'),(150,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:26:38','2024-05-04 04:26:38'),(151,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"2\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:00','2024-05-04 04:27:00'),(152,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:01','2024-05-04 04:27:01'),(153,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"3\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:05','2024-05-04 04:27:05'),(154,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:06','2024-05-04 04:27:06'),(155,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"4\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:11','2024-05-04 04:27:11'),(156,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:11','2024-05-04 04:27:11'),(157,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:14','2024-05-04 04:27:14'),(158,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"4\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:27:14\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:27:35','2024-05-04 04:27:35'),(159,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:27:36','2024-05-04 04:27:36'),(160,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:30:20','2024-05-04 04:30:20'),(161,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:30:23','2024-05-04 04:30:23'),(162,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:30:34','2024-05-04 04:30:34'),(163,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:30:35','2024-05-04 04:30:35'),(164,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:30:39','2024-05-04 04:30:39'),(165,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:30:40','2024-05-04 04:30:40'),(166,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:30:59','2024-05-04 04:30:59'),(167,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:01','2024-05-04 04:31:01'),(168,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:31:30','2024-05-04 04:31:30'),(169,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:31','2024-05-04 04:31:31'),(170,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:34','2024-05-04 04:31:34'),(171,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:31:46','2024-05-04 04:31:46'),(172,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:47','2024-05-04 04:31:47'),(173,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:37:56','2024-05-04 04:37:56'),(174,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:37:57','2024-05-04 04:37:57'),(175,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:38:00','2024-05-04 04:38:00'),(176,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:02','2024-05-04 04:38:02'),(177,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:04','2024-05-04 04:38:04'),(178,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:38:04\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:38:18','2024-05-04 04:38:18'),(179,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:20','2024-05-04 04:38:20'),(180,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:44:49','2024-05-04 04:44:49'),(181,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:44:49\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:44:59','2024-05-04 04:44:59'),(182,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:45:00','2024-05-04 04:45:00'),(183,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:52:43','2024-05-04 04:52:43'),(184,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:52:43\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:52:56','2024-05-04 04:52:56'),(185,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:52:57','2024-05-04 04:52:57'),(186,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:54:49','2024-05-04 04:54:49'),(187,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:54:49\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:54:58','2024-05-04 04:54:58'),(188,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:54:59','2024-05-04 04:54:59'),(189,1,'admin/post','GET','192.168.176.1','{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:19','2024-05-04 04:57:19'),(190,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"2\"}','2024-05-04 04:57:24','2024-05-04 04:57:24'),(191,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"24\"}','2024-05-04 04:57:28','2024-05-04 04:57:28'),(192,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}','2024-05-04 04:57:32','2024-05-04 04:57:32'),(193,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:34','2024-05-04 04:57:34'),(194,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:45','2024-05-04 04:57:45'),(195,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"_pjax\":\"#pjax-container\",\"id\":\"5\"}','2024-05-04 04:57:51','2024-05-04 04:57:51'),(196,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\"}','2024-05-04 05:05:29','2024-05-04 05:05:29'),(197,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\"}','2024-05-04 05:05:58','2024-05-04 05:05:58'),(198,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"1\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:06:08','2024-05-04 05:06:08'),(199,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"2\"]}','2024-05-04 05:06:12','2024-05-04 05:06:12'),(200,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:16','2024-05-04 05:06:16'),(201,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:42','2024-05-04 05:06:42'),(202,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:06:52','2024-05-04 05:06:52'),(203,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:57','2024-05-04 05:06:57'),(204,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:59','2024-05-04 05:06:59'),(205,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:07:01','2024-05-04 05:07:01'),(206,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:02','2024-05-04 05:07:02'),(207,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:04','2024-05-04 05:07:04'),(208,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:20','2024-05-04 05:07:20'),(209,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:21','2024-05-04 05:07:21'),(210,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:35','2024-05-04 05:07:35'),(211,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:08:50','2024-05-04 05:08:50'),(212,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:08:57','2024-05-04 05:08:57'),(213,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:08:58','2024-05-04 05:08:58'),(214,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:10:11','2024-05-04 05:10:11'),(215,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:10:16','2024-05-04 05:10:16'),(216,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:10:17','2024-05-04 05:10:17'),(217,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:11:43','2024-05-04 05:11:43'),(218,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:11:58','2024-05-04 05:11:58'),(219,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:12:07','2024-05-04 05:12:07'),(220,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:12:32','2024-05-04 05:12:32'),(221,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:12:34','2024-05-04 05:12:34'),(222,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:12:37','2024-05-04 05:12:37'),(223,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:12:39','2024-05-04 05:12:39'),(224,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"1\"]}','2024-05-04 05:12:42','2024-05-04 05:12:42'),(225,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:12:47','2024-05-04 05:12:47'),(226,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:12:49','2024-05-04 05:12:49'),(227,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:14:40','2024-05-04 05:14:40'),(228,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:14:45','2024-05-04 05:14:45'),(229,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"2\"]}','2024-05-04 05:14:55','2024-05-04 05:14:55'),(230,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"1\"]}','2024-05-04 05:14:59','2024-05-04 05:14:59'),(231,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"3\"]}','2024-05-04 05:15:07','2024-05-04 05:15:07'),(232,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:15:34','2024-05-04 05:15:34'),(233,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:15:35','2024-05-04 05:15:35'),(234,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:17:05','2024-05-04 05:17:05'),(235,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:12','2024-05-04 05:17:12'),(236,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:13','2024-05-04 05:17:13'),(237,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:17:31','2024-05-04 05:17:31'),(238,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:46','2024-05-04 05:17:46'),(239,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:47','2024-05-04 05:17:47'),(240,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:18:41','2024-05-04 05:18:41'),(241,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:18:45','2024-05-04 05:18:45'),(242,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:18:46','2024-05-04 05:18:46'),(243,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:19:03','2024-05-04 05:19:03'),(244,1,'admin/auth/users','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:19:20','2024-05-04 05:19:20'),(245,1,'admin/auth/users','GET','192.168.176.1','[]','2024-05-04 05:26:47','2024-05-04 05:26:47'),(246,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:26:55','2024-05-04 05:26:55'),(247,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:27','2024-05-04 05:27:27'),(248,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:34','2024-05-04 05:27:34'),(249,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:42','2024-05-04 05:27:42'),(250,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:28:21','2024-05-04 05:28:21'),(251,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:28:25','2024-05-04 05:28:25'),(252,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:29:25','2024-05-04 05:29:25'),(253,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:29:55','2024-05-04 05:29:55'),(254,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:31:00','2024-05-04 05:31:00'),(255,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:31:32','2024-05-04 05:31:32'),(256,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:33:02','2024-05-04 05:33:02'),(257,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:33:58','2024-05-04 05:33:58'),(258,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:36:14','2024-05-04 05:36:14'),(259,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:38:07','2024-05-04 05:38:07'),(260,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:44:12','2024-05-04 05:44:12'),(261,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:45:25','2024-05-04 05:45:25'),(262,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:46:43','2024-05-04 05:46:43'),(263,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:01:57','2024-05-04 06:01:57'),(264,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:02:33','2024-05-04 06:02:33'),(265,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:07:08','2024-05-04 06:07:08'),(266,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:08:06','2024-05-04 06:08:06'),(267,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:08:59','2024-05-04 06:08:59'),(268,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:12:10','2024-05-04 06:12:10'),(269,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:12:38','2024-05-04 06:12:38'),(270,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:12:43','2024-05-04 06:12:43'),(271,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:12:44','2024-05-04 06:12:44'),(272,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:13:59','2024-05-04 06:13:59'),(273,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:14:06','2024-05-04 06:14:06'),(274,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:14:22','2024-05-04 06:14:22'),(275,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:14:53','2024-05-04 06:14:53'),(276,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:17:37','2024-05-04 06:17:37'),(277,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:17:46','2024-05-04 06:17:46'),(278,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:18:58','2024-05-04 06:18:58'),(279,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:19:11','2024-05-04 06:19:11'),(280,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:20:27','2024-05-04 06:20:27'),(281,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:22:48','2024-05-04 06:22:48'),(282,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:23:39','2024-05-04 06:23:39'),(283,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:05','2024-05-04 06:24:05'),(284,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:17','2024-05-04 06:24:17'),(285,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:33','2024-05-04 06:24:33'),(286,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:25:47','2024-05-04 06:25:47'),(287,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:26:50','2024-05-04 06:26:50'),(288,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:33:25','2024-05-04 06:33:25'),(289,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:33:31','2024-05-04 06:33:31'),(290,1,'admin/post/5/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:33:43','2024-05-04 06:33:43'),(291,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:34:46','2024-05-04 06:34:46'),(292,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:35:10','2024-05-04 06:35:10'),(293,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:35:23','2024-05-04 06:35:23'),(294,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:36:00','2024-05-04 06:36:00'),(295,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":{\"id\":\"1\"},\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 06:36:12','2024-05-04 06:36:12'),(296,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:13','2024-05-04 06:36:13'),(297,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":{\"id\":\"1\"},\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 06:36:24','2024-05-04 06:36:24'),(298,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:26','2024-05-04 06:36:26'),(299,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 06:36:29','2024-05-04 06:36:29'),(300,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:30','2024-05-04 06:36:30'),(301,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:37:02','2024-05-04 06:37:02'),(302,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:37:02\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 06:37:13','2024-05-04 06:37:13'),(303,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:37:15','2024-05-04 06:37:15'),(304,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:37:28','2024-05-04 06:37:28'),(305,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:37:41','2024-05-04 06:37:41'),(306,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:39:20','2024-05-04 06:39:20'),(307,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:42:40','2024-05-04 06:42:40'),(308,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:42:45','2024-05-04 06:42:45'),(309,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"1\",\"_model\":\"App_Models_User\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 06:42:52','2024-05-04 06:42:52'),(310,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:42:52','2024-05-04 06:42:52'),(311,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:44:59','2024-05-04 06:44:59'),(312,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:45:02','2024-05-04 06:45:02'),(313,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:45:07','2024-05-04 06:45:07'),(314,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:46:00','2024-05-04 06:46:00'),(315,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:46:04','2024-05-04 06:46:04'),(316,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:46:05','2024-05-04 06:46:05'),(317,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:46:13','2024-05-04 06:46:13'),(318,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:47:29','2024-05-04 06:47:29'),(319,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:33','2024-05-04 06:47:33'),(320,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:47:34','2024-05-04 06:47:34'),(321,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:36','2024-05-04 06:47:36'),(322,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:38','2024-05-04 06:47:38'),(323,1,'admin/guest/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:48:11','2024-05-04 06:48:11'),(324,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:48:18','2024-05-04 06:48:18'),(325,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:49:36','2024-05-04 06:49:36'),(326,1,'admin/guest/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:49:40','2024-05-04 06:49:40'),(327,1,'admin/guest/create','GET','192.168.176.1','[]','2024-05-04 06:50:49','2024-05-04 06:50:49'),(328,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:50:53','2024-05-04 06:50:53'),(329,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:01','2024-05-04 06:51:01'),(330,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:51:02','2024-05-04 06:51:02'),(331,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:06','2024-05-04 06:51:06'),(332,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:11','2024-05-04 06:51:11'),(333,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:51:22','2024-05-04 06:51:22'),(334,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:26','2024-05-04 06:51:26'),(335,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:53:05','2024-05-04 06:53:05'),(336,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:53:09','2024-05-04 06:53:09'),(337,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:53:14','2024-05-04 06:53:14'),(338,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:55:45','2024-05-04 06:55:45'),(339,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:56:32','2024-05-04 06:56:32'),(340,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:56:49','2024-05-04 06:56:49'),(341,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:02:42','2024-05-04 07:02:42'),(342,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:03:43','2024-05-04 07:03:43'),(343,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:05:09','2024-05-04 07:05:09'),(344,1,'admin/guest/2','PUT','192.168.176.1','{\"id\":\"2\",\"name\":\"Bang\",\"email\":\"bangvo.5sense.vn@gmail.com\",\"email_verified_at\":null,\"password\":\"abc@#123\",\"show_password\":[null],\"remember_token\":null,\"created_at\":\"2024-05-04T06:43:51.000000Z\",\"updated_at\":\"2024-05-04T06:43:51.000000Z\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:06:18','2024-05-04 07:06:18'),(345,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:06:19','2024-05-04 07:06:19'),(346,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:06:41','2024-05-04 07:06:41'),(347,1,'admin/guest/2','PUT','192.168.176.1','{\"id\":\"2\",\"name\":\"Bang\",\"email\":\"bangvo.5sense.vn@gmail.com\",\"email_verified_at\":null,\"password\":\"abc@#!23\",\"remember_token\":null,\"created_at\":\"2024-05-04T06:43:51.000000Z\",\"updated_at\":\"2024-05-04T06:43:51.000000Z\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:06:51','2024-05-04 07:06:51'),(348,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:06:52','2024-05-04 07:06:52'),(349,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:06:57','2024-05-04 07:06:57'),(350,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:13:26','2024-05-04 07:13:26'),(351,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:13:38','2024-05-04 07:13:38'),(352,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:13','2024-05-04 07:14:13'),(353,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:22','2024-05-04 07:14:22'),(354,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:45','2024-05-04 07:14:45'),(355,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:16:06','2024-05-04 07:16:06'),(356,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:20:30','2024-05-04 07:20:30'),(357,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:31:00','2024-05-04 07:31:00'),(358,1,'admin/banner','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:34:01','2024-05-04 07:34:01'),(359,1,'admin/banner/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:34:04','2024-05-04 07:34:04'),(360,1,'admin/banner','POST','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"off\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:35:22','2024-05-04 07:35:22'),(361,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:35:22','2024-05-04 07:35:22'),(362,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:35:39','2024-05-04 07:35:39'),(363,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:36:01','2024-05-04 07:36:01'),(364,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:36:23','2024-05-04 07:36:23'),(365,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:36:24','2024-05-04 07:36:24'),(366,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:36:31','2024-05-04 07:36:31'),(367,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:37:01','2024-05-04 07:37:01'),(368,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:37:02','2024-05-04 07:37:02'),(369,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:37:21','2024-05-04 07:37:21'),(370,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:37:31','2024-05-04 07:37:31'),(371,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:38:57','2024-05-04 07:38:57'),(372,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:39:00','2024-05-04 07:39:00'),(373,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:39:31','2024-05-04 07:39:31'),(374,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:39:31','2024-05-04 07:39:31'),(375,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:39:36','2024-05-04 07:39:36'),(376,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:39:53','2024-05-04 07:39:53'),(377,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:39:54','2024-05-04 07:39:54'),(378,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:41:03','2024-05-04 07:41:03'),(379,1,'admin/banner/1/edit','GET','192.168.176.1','[]','2024-05-04 07:42:23','2024-05-04 07:42:23'),(380,1,'admin/banner/1/edit','GET','192.168.176.1','[]','2024-05-04 07:42:50','2024-05-04 07:42:50'),(381,1,'admin/banner/1','PUT','192.168.176.1','{\"key\":\"0\",\"image\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:42:55','2024-05-04 07:42:55'),(382,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:43:18','2024-05-04 07:43:18'),(383,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:43:19','2024-05-04 07:43:19'),(384,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:47:16','2024-05-04 07:47:16'),(385,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:47:43','2024-05-04 07:47:43'),(386,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:47:58','2024-05-04 07:47:58'),(387,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:48:26','2024-05-04 07:48:26'),(388,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":\"http:\\/\\/localhost:8001\\/uploads\\/images\\/banners\\/banner_images_2024_05_04_07_43_18.png\",\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:48:31','2024-05-04 07:48:31'),(389,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:48:32','2024-05-04 07:48:32'),(390,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:49:05','2024-05-04 07:49:05'),(391,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:35:48','2024-05-04 09:35:48'),(392,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:35:51','2024-05-04 09:35:51'),(393,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:35:52','2024-05-04 09:35:52'),(394,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:36:06','2024-05-04 09:36:06'),(395,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:36:08','2024-05-04 09:36:08'),(396,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:36:09','2024-05-04 09:36:09'),(397,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:38:52','2024-05-04 09:38:52'),(398,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:38:56','2024-05-04 09:38:56'),(399,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:38:57','2024-05-04 09:38:57'),(400,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:07','2024-05-04 09:39:07'),(401,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:39:08','2024-05-04 09:39:08'),(402,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:26','2024-05-04 09:39:26'),(403,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:32','2024-05-04 09:39:32'),(404,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:03','2024-05-04 09:40:03'),(405,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:40:05','2024-05-04 09:40:05'),(406,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:07','2024-05-04 09:40:07'),(407,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:39','2024-05-04 09:40:39'),(408,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:42:34','2024-05-04 09:42:34'),(409,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:42:53','2024-05-04 09:42:53'),(410,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:44:11','2024-05-04 09:44:11'),(411,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:44:13','2024-05-04 09:44:13'),(412,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:45:25','2024-05-04 09:45:25'),(413,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:45:26','2024-05-04 09:45:26'),(414,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:47:19','2024-05-04 09:47:19'),(415,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:47:20','2024-05-04 09:47:20'),(416,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:47:37','2024-05-04 09:47:37'),(417,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:49:50','2024-05-04 09:49:50'),(418,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:51:34','2024-05-04 09:51:34'),(419,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:51:48','2024-05-04 09:51:48'),(420,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:53:08','2024-05-04 09:53:08'),(421,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:53:46','2024-05-04 09:53:46'),(422,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:57:53','2024-05-04 09:57:53'),(423,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:59:21','2024-05-04 09:59:21'),(424,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:04:58','2024-05-04 10:04:58'),(425,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:06:03','2024-05-04 10:06:03'),(426,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:08:05','2024-05-04 10:08:05'),(427,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:08:41','2024-05-04 10:08:41'),(428,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:08:42','2024-05-04 10:08:42'),(429,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:21','2024-05-04 10:10:21'),(430,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:22','2024-05-04 10:10:22'),(431,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:26','2024-05-04 10:10:26'),(432,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:27','2024-05-04 10:10:27'),(433,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:30','2024-05-04 10:10:30'),(434,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:31','2024-05-04 10:10:31'),(435,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:11:49','2024-05-04 10:11:49'),(436,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:11:50','2024-05-04 10:11:50'),(437,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:12:42','2024-05-04 10:12:42'),(438,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:12:43','2024-05-04 10:12:43'),(439,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:12:46','2024-05-04 10:12:46'),(440,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:12:48','2024-05-04 10:12:48'),(441,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:15:50','2024-05-04 10:15:50'),(442,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:22:59','2024-05-04 10:22:59'),(443,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:40:14','2024-05-04 10:40:14'),(444,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:45:09','2024-05-04 10:45:09'),(445,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:51:05','2024-05-04 10:51:05'),(446,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 11:25:36','2024-05-04 11:25:36'),(447,1,'admin','GET','192.168.176.1','[]','2024-05-04 12:14:16','2024-05-04 12:14:16'),(448,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 12:14:23','2024-05-04 12:14:23'),(449,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 12:14:28','2024-05-04 12:14:28'),(450,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 12:14:29','2024-05-04 12:14:29'),(451,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:05:21','2024-05-04 13:05:21'),(452,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:05:55','2024-05-04 13:05:55'),(453,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:06:12','2024-05-04 13:06:12'),(454,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:10','2024-05-04 13:07:10'),(455,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:27','2024-05-04 13:07:27'),(456,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:38','2024-05-04 13:07:38'),(457,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:11:46','2024-05-04 13:11:46'),(458,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:13:31','2024-05-04 13:13:31'),(459,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:19:18','2024-05-04 13:19:18'),(460,1,'admin','GET','192.168.176.1','[]','2024-05-04 15:05:14','2024-05-04 15:05:14'),(461,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 15:05:20','2024-05-04 15:05:20'),(462,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 15:05:24','2024-05-04 15:05:24'),(463,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:05:25','2024-05-04 15:05:25'),(464,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:06:00','2024-05-04 15:06:00'),(465,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:06:24','2024-05-04 15:06:24'),(466,1,'admin','GET','192.168.176.1','[]','2024-05-04 16:30:11','2024-05-04 16:30:11'),(467,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:30:16','2024-05-04 16:30:16'),(468,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:30:20','2024-05-04 16:30:20'),(469,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:30:21','2024-05-04 16:30:21'),(470,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:31:52','2024-05-04 16:31:52'),(471,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:32:08','2024-05-04 16:32:08'),(472,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:32:46','2024-05-04 16:32:46'),(473,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:32:52','2024-05-04 16:32:52'),(474,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:32:58','2024-05-04 16:32:58'),(475,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:03','2024-05-04 16:33:03'),(476,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:05','2024-05-04 16:33:05'),(477,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"6\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 16:33:05\"},\"_token\":\"M8hW4tJzszLIfU1giRpX82aMgUDoJk11ysYytsMu\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 16:33:20','2024-05-04 16:33:20'),(478,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 16:33:21','2024-05-04 16:33:21'),(479,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:49','2024-05-04 16:33:49');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2024-04-08 03:12:08','2024-04-08 03:12:08');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$12$/ZWQyKRyiUlY34BezKv9be5X1q9iIMbqAvlLOvjjcHZbl1zoSdQxy','Administrator',NULL,'8WXV3LD81gDJQGPszrQzYi1W0GESdb6z59gh1TGfWcjEAB70Kcra4KUS3nZ1','2024-04-08 03:12:08','2024-04-08 03:12:08');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_categories`
--

DROP TABLE IF EXISTS `blg_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type` int unsigned NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_categories`
--

LOCK TABLES `blg_categories` WRITE;
/*!40000 ALTER TABLE `blg_categories` DISABLE KEYS */;
INSERT INTO `blg_categories` VALUES (1,'Music',1,1,NULL,NULL),(2,'Sport',1,0,'2024-05-04 04:24:52','2024-05-04 04:24:52'),(3,'Cinema',1,0,'2024-05-04 04:25:50','2024-05-04 04:25:50');
/*!40000 ALTER TABLE `blg_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_comments`
--

DROP TABLE IF EXISTS `blg_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_commented` timestamp NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_comments_user_id_foreign` (`user_id`),
  KEY `blg_comments_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_comments`
--

LOCK TABLES `blg_comments` WRITE;
/*!40000 ALTER TABLE `blg_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_content_categories`
--

DROP TABLE IF EXISTS `blg_content_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_content_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_content_categories_content_id_foreign` (`content_id`),
  KEY `blg_content_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `blg_content_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blg_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_content_categories_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `cmn_contents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_content_categories`
--

LOCK TABLES `blg_content_categories` WRITE;
/*!40000 ALTER TABLE `blg_content_categories` DISABLE KEYS */;
INSERT INTO `blg_content_categories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,4,2),(6,4,3),(7,24,1),(8,24,2),(9,28,1),(10,39,1),(11,39,2);
/*!40000 ALTER TABLE `blg_content_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_images`
--

DROP TABLE IF EXISTS `blg_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_images_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_images`
--

LOCK TABLES `blg_images` WRITE;
/*!40000 ALTER TABLE `blg_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_post_classes`
--

DROP TABLE IF EXISTS `blg_post_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_post_classes` (
  `post_id` bigint unsigned NOT NULL,
  KEY `blg_post_classes_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_post_classes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_post_classes`
--

LOCK TABLES `blg_post_classes` WRITE;
/*!40000 ALTER TABLE `blg_post_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_post_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_posts`
--

DROP TABLE IF EXISTS `blg_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_class_id` bigint unsigned DEFAULT NULL,
  `common_id` bigint unsigned NOT NULL COMMENT 'The foreign key, cmn_contents',
  PRIMARY KEY (`id`),
  KEY `blg_posts_user_id_foreign` (`user_id`),
  KEY `blg_posts_common_id_foreign` (`common_id`),
  CONSTRAINT `blg_posts_common_id_foreign` FOREIGN KEY (`common_id`) REFERENCES `cmn_contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_posts`
--

LOCK TABLES `blg_posts` WRITE;
/*!40000 ALTER TABLE `blg_posts` DISABLE KEYS */;
INSERT INTO `blg_posts` VALUES (24,'Lorem A','Lorem A',6,'2024-05-04 16:33:20','2024-05-04 16:33:20',NULL,39);
/*!40000 ALTER TABLE `blg_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_banners`
--

DROP TABLE IF EXISTS `cmn_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_banners`
--

LOCK TABLES `cmn_banners` WRITE;
/*!40000 ALTER TABLE `cmn_banners` DISABLE KEYS */;
INSERT INTO `cmn_banners` VALUES (1,'Lorem Banner','images/banners/banner_images_2024_05_04_07_43_18.png','http://localhost:8001/uploads/images/banners/banner_images_2024_05_04_07_43_18.png',0,1,'2024-05-04 07:35:22','2024-05-04 07:48:31');
/*!40000 ALTER TABLE `cmn_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_contents`
--

DROP TABLE IF EXISTS `cmn_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL DEFAULT '0',
  `publish_started_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_contents`
--

LOCK TABLES `cmn_contents` WRITE;
/*!40000 ALTER TABLE `cmn_contents` DISABLE KEYS */;
INSERT INTO `cmn_contents` VALUES (1,1,'2024-05-04 04:21:31','2024-05-04 04:21:31','2024-05-04 04:21:40'),(2,1,'2024-05-04 04:21:31','2024-05-04 04:21:42','2024-05-04 04:23:17'),(3,1,'2024-05-04 04:21:31','2024-05-04 04:23:18','2024-05-04 04:23:44'),(4,1,'2024-05-04 04:27:14','2024-05-04 04:27:14','2024-05-04 04:27:35'),(15,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(16,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(17,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(18,0,NULL,'2024-05-04 04:52:43','2024-05-04 04:52:43'),(19,0,NULL,'2024-05-04 04:52:43','2024-05-04 04:52:43'),(20,0,NULL,'2024-05-04 04:52:56','2024-05-04 04:52:56'),(21,0,NULL,'2024-05-04 04:52:56','2024-05-04 04:52:56'),(22,0,NULL,'2024-05-04 04:52:57','2024-05-04 04:52:57'),(23,0,NULL,'2024-05-04 04:52:57','2024-05-04 04:52:57'),(24,1,'2024-05-04 04:54:49','2024-05-04 04:54:58','2024-05-04 04:54:58'),(28,1,'2024-05-04 06:37:02','2024-05-04 06:37:14','2024-05-04 06:37:14'),(39,1,'2024-05-04 16:33:05','2024-05-04 16:33:20','2024-05-04 16:33:21');
/*!40000 ALTER TABLE `cmn_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_searches`
--

DROP TABLE IF EXISTS `cmn_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` tinyint(1) DEFAULT '0',
  `content_id` bigint unsigned DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  `exclusion_keyword` text COLLATE utf8mb4_unicode_ci,
  `categories_id` text COLLATE utf8mb4_unicode_ci,
  `categories_name` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_searches`
--

LOCK TABLES `cmn_searches` WRITE;
/*!40000 ALTER TABLE `cmn_searches` DISABLE KEYS */;
INSERT INTO `cmn_searches` VALUES (1,1,3,NULL,NULL,NULL,'3','',0,'2024-05-04 04:23:44','2024-05-04 04:23:44'),(2,1,4,NULL,NULL,NULL,'4,5,6','',0,'2024-05-04 04:27:35','2024-05-04 04:27:35'),(3,1,24,NULL,NULL,NULL,'7,8','',0,'2024-05-04 04:54:58','2024-05-04 04:54:58'),(4,1,28,NULL,NULL,NULL,'9','',0,'2024-05-04 06:37:14','2024-05-04 06:37:14'),(5,1,39,NULL,NULL,NULL,'10,11','',0,'2024-05-04 16:33:21','2024-05-04 16:33:21');
/*!40000 ALTER TABLE `cmn_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medially_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medially_id` bigint unsigned NOT NULL,
  `file_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_medially_type_medially_id_index` (`medially_type`,`medially_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'image',7604335,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799831/uploads/file_1714799826.jpg','php9o6ZnY','image',408319,'2024-05-04 05:17:12','2024-05-04 05:17:12'),(2,'image',8926551,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799864/uploads/file_1714799851.jpg','phpqsKh7y','image',251109,'2024-05-04 05:17:45','2024-05-04 05:17:45'),(3,'image',8668618,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799924/uploads/file_1714799921.jpg','php2FIhfP','image',934888,'2024-05-04 05:18:44','2024-05-04 05:18:44');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(58,'2020_06_14_000001_create_media_table_new',2),(59,'2024_03_01_035331_create_cmn_contents_table',2),(60,'2024_03_01_104128_create_blg_comments_table',2),(61,'2024_03_01_104415_add_relationship_between_blg_comments_and_users',2),(62,'2024_03_01_104743_add_relationship_between_blg_posts_and_users',2),(63,'2024_03_01_105044_add_relationship_between_blg_comments_and_blg_posts_table',2),(64,'2024_03_01_105245_create_blg_images_table',2),(65,'2024_04_08_031004_create_cmn_banners_table',2),(66,'2024_04_08_043435_create_mst_content_classes_table',2),(67,'2024_04_08_043436_create_blg_categories_table_new',2),(68,'2024_04_08_061850_create_blg_post_classes_table',2),(69,'2024_04_08_062637_add_relation_between_blg_post_classes_and_blg_posts',2),(70,'2024_05_03_053916_add_common_id_to_post_table',2),(71,'2024_05_03_102009_rename_content_column_in_blg_posts_table',2),(72,'2024_05_03_153634_create_cmn_searches_table',2),(73,'2024_05_03_154637_create_mst_publish_statuses_table',2),(74,'2024_05_04_071146_add_field_remember_password_from_users_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_content_classes`
--

DROP TABLE IF EXISTS `mst_content_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mst_content_classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_content_classes`
--

LOCK TABLES `mst_content_classes` WRITE;
/*!40000 ALTER TABLE `mst_content_classes` DISABLE KEYS */;
INSERT INTO `mst_content_classes` VALUES (1,'Post','post',1,NULL,NULL);
/*!40000 ALTER TABLE `mst_content_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_publish_statuses`
--

DROP TABLE IF EXISTS `mst_publish_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mst_publish_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_publish_statuses`
--

LOCK TABLES `mst_publish_statuses` WRITE;
/*!40000 ALTER TABLE `mst_publish_statuses` DISABLE KEYS */;
INSERT INTO `mst_publish_statuses` VALUES (1,'Expected Release',1),(2,'Release',2),(3,'Limited Release',3);
/*!40000 ALTER TABLE `mst_publish_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Bang','bang@gmail.com',NULL,'$2y$12$myHAfW8n0s9kYqtBQ3YcDOLreoDWrOiCWECmpSrpvrMo74dEn6jCK','abc@#123',NULL,'2024-05-04 07:10:17','2024-05-04 07:10:17'),(4,'Ha','ha@gmail.com',NULL,'$2y$12$kvLclr2pSSgGqA6MAv54aOAajkQwuVT8A5scwIzXJ3mG6Rv8SaZ5i','abc@#123',NULL,'2024-05-04 07:22:57','2024-05-04 07:22:57'),(5,'Guest','guest@gmail.com',NULL,'$2y$12$Bxo5nNTQmkc4Fe6K1sd3Qei23UqwIAXqKPPv9nBRbSTUUxjEk79CG','abc@#123',NULL,'2024-05-04 07:29:00','2024-05-04 07:29:00'),(6,'UserA','usera@gmail.com',NULL,'$2y$12$9gKNEVU7r0TypN50Uzu1ieqWcfC6.TkEPNz8k4fb.o8ihHVYUbE66','abc@#123',NULL,'2024-05-04 07:32:59','2024-05-04 07:32:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 23:38:12
