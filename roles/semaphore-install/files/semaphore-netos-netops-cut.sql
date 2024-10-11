-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: semaphore_db
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `access_key`
--

DROP TABLE IF EXISTS `access_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_key` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int DEFAULT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `environment_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `environment_id` (`environment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `access_key_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE SET NULL,
  CONSTRAINT `access_key_ibfk_2` FOREIGN KEY (`environment_id`) REFERENCES `project__environment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `access_key_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_key`
--

LOCK TABLES `access_key` WRITE;
/*!40000 ALTER TABLE `access_key` DISABLE KEYS */;
INSERT INTO `access_key` VALUES (22,'None','none',7,NULL,NULL,NULL),(60,'env.SFTP_PASSWORD','string',7,'YG19ZsOO21TTk0DaGjrAQfHrbpNxQTuWDG0Ltw==',12,NULL),(62,'env.NETBOX_DB_PASSWORD','string',7,'Oaz5kmYpHRGmG0NBD8zRXgJNBAq9fRgOGpUrtkS28WN8JC+/SdvLDw==',20,NULL),(63,'env.NETBOX_TOKEN','string',7,'SwOBuY7j7WvYDCaWD4UUtUsN4r03DhnEqanrB2O3w+x8H2liFX+a7TtgmxSjljMaOReTQxMcAFLZy9bc1lfRSG79zio=',20,NULL),(64,'env.POSTGRES_USER_PASSWORD','string',7,'i0DI5GxNWxM7MQywItfSvKAz74I/UQEXD/dBG0OexzmkBRBA28TMLA==',20,NULL),(65,'env.SUPER_USER_PASSWORD','string',7,'Xfequ8IjCI0kffCF0GKnH/8BB7BsLyO53gfXhE/DFM9eit5gjjWaCg==',20,NULL),(66,'env.SECRET_KEY','string',7,'92PtIgVBB4z4zCigBpxj7CSUsG2my/EDmXcjJZhm7oBtTaLQDw1T1LPSgVHZMnNxZc2cT9oO2EixIIfShJ3v9fTcGFXk659sBYRsKVsV',20,NULL),(71,'env.NETBOX_DB_PASS','string',7,'uCaSpLB0Wi/wS2RJqhbfsJppf2mZQKKxTxryGfUFvtoVb1N6RgTGlw==',12,NULL),(72,'env.ENCRYPTION_KEY','string',7,'Ji4Dsn7SotK7hpK6yaDxBd+cMMwq3niWsJfKZ8ysdHYXBwuh8Wc1l9UeblmODI7bURZaqOmGkMJ2yQ==',12,NULL),(73,'None','none',10,NULL,NULL,NULL),(74,'env.ENCRYPTION_KEY','string',10,'utLKg77xbDvWYRU1+e/iBaqQl880VEsX3yiXzy61QYzs+LBLzi+6iHP1wLeQTECIaPtChGzFQRHtjw==',46,NULL),(75,'env.MYSQL_PASS','string',10,'/KuBNo/LkuD5TJO/ls1s7SjTbthQEj4q3hgrw4P5FN/N/8Fmh/pxfHQmXXviK/DghAEwfA==',46,NULL),(76,'env.MYSQL_ROOT_PASSWORD','string',10,'cO0IR7zGNotIqA3qFf9bOxAxt0+IxEO8kxvf/Zq8QjY5bcMYwPu3Jr/dDP2EKSQKqgjY5A==',47,NULL),(77,'env.SEMAPHORE_DB_PASSWORD','string',10,'QzyfNHGvSUrFbL9jK418nufAjqoW3RnU0pSNw9O/IOzwJY0/hoO54UcdKSrv822a/j+YrA==',47,NULL),(83,'env.SFTP_PASSWORD','string',10,'dJFH4SPnlFoAdV8Un/IZJVwWa0vwpdHC4gEWJw==',46,NULL),(109,'env.AIRFLOW_API_USER_PASSWORD','string',7,'mvfCPGpsFsFgv4u861O+BEsNT8xfvwd8u2N91B/o31yQOftkdU88C/wFh1BUxivYR1quvQasSfx9HlnWKlzTWOpkmLs=',20,NULL),(110,'env.AIRFLOW_API_TOKEN','string',7,'PzXNbWazcEwmBZfYZRRfo15TT0I3T6gnv68dO/fGtovk6eIVJy5wtfzDCuapyF8FCLO0Dw5vcxunYo1QLGkcDOCLjO8=',20,NULL),(113,'env.CF_ACCESS_CLIENT_ID','string',7,'8dE+xvS76p+QVU0860j1QgOpe6e39jmU1KRL8g==',58,NULL),(114,'env.CF_ACCESS_CLIENT_SECRET','string',7,'pGT5nlVaD4Yf5oLZh8Ct3M5JKtB9u7glbQrtCg==',58,NULL),(115,'env.CUSTOMER_TOKEN','string',7,'QFvfpdvY9nzA78BbprhBM10Tf3uarj3jU8YlWw==',58,NULL),(116,'env.CUSTOMER_TOKEN_PYPI','string',7,'2L0i0ZCk7QqYQ9pz6PovYgNMsTmNJsamjdWSiA==',58,NULL),(117,'env.PRIVATE_CERT_CONTENT','string',7,'RjDvpiug97sZ01rUFt4rvZfLVV6yeQPvWoEvDg==',20,NULL),(118,'env.PRIVATE_CERT_CONTENT','string',10,'b6qKEDzrNW39gcKzl99v6zc4vOBqSpKvzk873g==',47,NULL),(119,'env.CERT_CONTENT','string',10,'tr0exmh8v/iEYp5jcMdxlXx8OvYgIfQFYQkb1g==',47,NULL),(120,'env.CERT_CONTENT','string',7,'ElGwsBkOMdszVvq3Gq4VU5Z5BVoaE5cDUbWAEw==',20,NULL);
/*!40000 ALTER TABLE `access_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `object_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--


--
-- Table structure for table `event_backup_5784568`
--

DROP TABLE IF EXISTS `event_backup_5784568`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_backup_5784568` (
  `project_id` int DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `object_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `event_backup_5784568_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_backup_5784568`
--

LOCK TABLES `event_backup_5784568` WRITE;
/*!40000 ALTER TABLE `event_backup_5784568` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_backup_5784568` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `upgraded_date` datetime DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--


--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES ('apps.ansible.active','true'),('apps.python.active','true');
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alert` tinyint(1) NOT NULL DEFAULT '0',
  `alert_chat` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `max_parallel_tasks` int NOT NULL DEFAULT '0',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (7,'2024-08-19 15:02:34','NetBox',0,NULL,1,''),(10,'2024-09-10 14:00:39','NetOps',0,NULL,1,'');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__environment`
--

DROP TABLE IF EXISTS `project__environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__environment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `env` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project__environment_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__environment`
--

LOCK TABLES `project__environment` WRITE;
/*!40000 ALTER TABLE `project__environment` DISABLE KEYS */;
INSERT INTO `project__environment` VALUES (12,7,NULL,'{}','NetBox Backup Settings','{\"SFTP_HOST\":\"10.1.1.1\",\"SFTP_ENABLED\":\"No\",\"RETENTION_TYPE\":\"days\",\"RETENTION_PERIOD\":\"14\",\"BACKUP_DIR\":\"/netos/backups/netbox\",\"SFTP_USER\":\"\",\"NETBOX_DB_USER\":\"netbox\",\"NETBOX_DB_NAME\":\"netbox\",\"RESTORE_FILE_TIMESTAMP\":\"mm_dd_yyyy_HH_MM\",\"BYPASS_PLUGIN_CHECK\":\"No\"}'),(20,7,NULL,'{}','NetBox Global Settings','{\"NETBOX_DB_NAME\":\"netbox\",\"NETBOX_DB_USER\":\"netbox\",\"SUPER_USER_USERNAME\":\"admin\",\"SUPER_USER_EMAIL\":\"netbox@netos.dev\",\"DOMAIN\":\"netos.dev\",\"NETBOX_HOSTNAME\":\"netbox\",\"NETBOX_REPO\":\"https://github.com/netbox-community/netbox.git\",\"NETBOX_INSTALL_DIR\":\"/opt/netbox\",\"ORG_NAME\":\"Netos Networks\",\"CERT_DIR\":\"/netos/certs/netbox\",\"DEPLOY_FILE_TIMESTAMP\":\"mm_dd_yyyy_HH_MM\",\"AIRFLOW_API_USER_USERNAME\":\"airflow_api\"}'),(31,7,NULL,'{}','Netos Semaphore GitHub','{\"NETOS_NETBOX_GIT\":\"https://github.com/netos-networks/netos-netbox\"}'),(45,10,NULL,'{}','Netos Semaphore GitHub	','{\"NETOS_POD_GIT\":\"https://github.com/netos-networks/netos-pod\",\"NETOS_NETOPS_GIT\":\"https://github.com/netos-networks/netos-netops\"}'),(46,10,NULL,'{}','Semaphore Backup Settings','{\"MYSQL_DB\":\"semaphore_db\",\"MYSQL_USER\":\"semaphore\",\"SFTP_HOST\":\"10.1.1.1\",\"SFTP_ENABLED\":\"No\",\"RETENTION_TYPE\":\"days\",\"RETENTION_PERIOD\":\"14\",\"BACKUP_DIR\":\"/netos/backups/semaphore\",\"SFTP_USER\":\"\"}'),(47,10,NULL,'{}','Semaphore Global Settings','{\"DOMAIN\":\"netos.dev\",\"SEMAPHORE_HOSTNAME\":\"ansible\",\"CERT_DIR\":\"/netos/certs/semaphore\",\"ORG_NAME\":\"Netos Networks\",\"SEMAPHORE_DB_NAME\":\"semaphore_db\",\"SEMAPHORE_DB_USER\":\"semaphore\"}'),(50,7,NULL,'{}','NetBox Community Plugins','{}'),(57,7,NULL,'{}','Netos Community Plugins','{}'),(58,7,NULL,'{}','Netos Enterprise Plugins','{\"CUSTOMER_ID\":\"netos-labs\",\"REPO_GIT\":\"git01.netos.io\",\"REPO_PYPI\":\"git01.netos.io/api/v4/projects/20/packages/pypi/simple\",\"CORE_VERSION\":\"1.4.3\",\"INSIGHTS_VERSION\":\"1.3.9\",\"PROJECTS_VERSION\":\"1.2.28\",\"FABRIC_VERSION\":\"1.3.1\"}');
/*!40000 ALTER TABLE `project__environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__integration`
--

DROP TABLE IF EXISTS `project__integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__integration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int NOT NULL,
  `template_id` int NOT NULL,
  `auth_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'none',
  `auth_secret_id` int DEFAULT NULL,
  `auth_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `task_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `template_id` (`template_id`),
  KEY `auth_secret_id` (`auth_secret_id`),
  CONSTRAINT `project__integration_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__integration_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `project__template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__integration_ibfk_3` FOREIGN KEY (`auth_secret_id`) REFERENCES `access_key` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__integration`
--

LOCK TABLES `project__integration` WRITE;
/*!40000 ALTER TABLE `project__integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__integration_alias`
--

DROP TABLE IF EXISTS `project__integration_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__integration_alias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int NOT NULL,
  `integration_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `project_id` (`project_id`),
  KEY `integration_id` (`integration_id`),
  CONSTRAINT `project__integration_alias_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__integration_alias_ibfk_2` FOREIGN KEY (`integration_id`) REFERENCES `project__integration` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__integration_alias`
--

LOCK TABLES `project__integration_alias` WRITE;
/*!40000 ALTER TABLE `project__integration_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__integration_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__integration_extract_value`
--

DROP TABLE IF EXISTS `project__integration_extract_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__integration_extract_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `integration_id` int NOT NULL,
  `value_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `body_data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `variable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `integration_id` (`integration_id`),
  CONSTRAINT `project__integration_extract_value_ibfk_1` FOREIGN KEY (`integration_id`) REFERENCES `project__integration` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__integration_extract_value`
--

LOCK TABLES `project__integration_extract_value` WRITE;
/*!40000 ALTER TABLE `project__integration_extract_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__integration_extract_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__integration_matcher`
--

DROP TABLE IF EXISTS `project__integration_matcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__integration_matcher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `integration_id` int NOT NULL,
  `match_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `body_data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `key` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `integration_id` (`integration_id`),
  CONSTRAINT `project__integration_matcher_ibfk_1` FOREIGN KEY (`integration_id`) REFERENCES `project__integration` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__integration_matcher`
--

LOCK TABLES `project__integration_matcher` WRITE;
/*!40000 ALTER TABLE `project__integration_matcher` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__integration_matcher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__inventory`
--

DROP TABLE IF EXISTS `project__inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inventory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ssh_key_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `become_key_id` int DEFAULT NULL,
  `holder_id` int DEFAULT NULL,
  `repository_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `ssh_key_id` (`ssh_key_id`),
  KEY `become_key_id` (`become_key_id`),
  KEY `holder_id` (`holder_id`),
  KEY `repository_id` (`repository_id`),
  CONSTRAINT `project__inventory_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__inventory_ibfk_3` FOREIGN KEY (`ssh_key_id`) REFERENCES `access_key` (`id`),
  CONSTRAINT `project__inventory_ibfk_4` FOREIGN KEY (`become_key_id`) REFERENCES `access_key` (`id`),
  CONSTRAINT `project__inventory_ibfk_5` FOREIGN KEY (`holder_id`) REFERENCES `project__template` (`id`) ON DELETE SET NULL,
  CONSTRAINT `project__inventory_ibfk_6` FOREIGN KEY (`repository_id`) REFERENCES `project__repository` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__inventory`
--

LOCK TABLES `project__inventory` WRITE;
/*!40000 ALTER TABLE `project__inventory` DISABLE KEYS */;
INSERT INTO `project__inventory` VALUES (19,7,'static','127.0.0.1',22,'Localhost',NULL,NULL,NULL),(22,10,'static','127.0.0.1',73,'Localhost',NULL,NULL,NULL);
/*!40000 ALTER TABLE `project__inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__repository`
--

DROP TABLE IF EXISTS `project__repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__repository` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `git_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ssh_key_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `git_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `ssh_key_id` (`ssh_key_id`),
  CONSTRAINT `project__repository_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__repository_ibfk_2` FOREIGN KEY (`ssh_key_id`) REFERENCES `access_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__repository`
--

LOCK TABLES `project__repository` WRITE;
/*!40000 ALTER TABLE `project__repository` DISABLE KEYS */;
INSERT INTO `project__repository` VALUES (12,7,'https://github.com/netos-networks/netos-netbox',22,'Netos GitHub Community - Netos NetBox','main'),(19,7,'/netos/netos-netbox/scripts/bash/',22,'Local Shell Scripts (NetBox)',''),(20,7,'/netos/netos-netbox/scripts/python/',22,'Local Python Scripts (NetBox)',''),(21,7,'/netos/netos-netbox/',22,'Local Ansible Playbooks (NetBox)',''),(24,7,'https://github.com/netos-networks/netos-labs',22,'Netos GitHub Community - Netos Labs','main'),(25,7,'https://github.com/netos-networks/netos-netops',22,'Netos GitHub Community - Netos NetOps','main'),(54,7,'https://github.com/netos-networks/netos-pod',22,'Netos GitHub Community - Netos Pod','main'),(55,10,'/netos/netos-netops',73,'Local Ansible Playbooks (NetOps)',''),(56,10,'/netos/netos-netops/scripts/python',73,'Local Python Scripts (NetOps)',''),(57,10,'/netos/netos-netops/scripts/bash',73,'Local Shell Scripts (NetOps)',''),(59,10,'https://github.com/netos-networks/netos-labs',73,'Netos GitHub Community - Netos Labs','main'),(60,10,'https://github.com/netos-networks/netos-netbox',73,'Netos GitHub Community - Netos NetBox','main'),(61,10,'https://github.com/netos-networks/netos-netops',73,'Netos GitHub Community - Netos NetOps','main'),(62,10,'https://github.com/netos-networks/netos-pod',73,'Netos GitHub Community - Netos Pod','main'),(71,7,'https://github.com/netos-networks/netos-airflow',22,'Netos GitHub Community - Netos Airflow','main'),(73,10,'https://github.com/netos-networks/netos-airflow',73,'Netos GitHub Community - Netos Airflow','main');
/*!40000 ALTER TABLE `project__repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__schedule`
--

DROP TABLE IF EXISTS `project__schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `project_id` int NOT NULL,
  `cron_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repository_id` int DEFAULT NULL,
  `last_commit_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `project_id` (`project_id`),
  KEY `repository_id` (`repository_id`),
  CONSTRAINT `project__schedule_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `project__template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__schedule_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__schedule_ibfk_3` FOREIGN KEY (`repository_id`) REFERENCES `project__repository` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__schedule`
--

LOCK TABLES `project__schedule` WRITE;
/*!40000 ALTER TABLE `project__schedule` DISABLE KEYS */;
INSERT INTO `project__schedule` VALUES (16,246,7,'0 * * * *',NULL,NULL,'NetBox Hourly Healthcheck',0),(17,248,7,'0 2 * * *',NULL,NULL,'NetBox Daily Backup',0),(18,247,7,'0 3 * * *',NULL,NULL,'NetBox Daily Housekeeping',0),(19,249,10,'0 3 * * *',NULL,NULL,'Daily Semaphore Backup',0),(24,330,7,'0 * * * *',NULL,NULL,'Pre-Load Netos Reporting Cache',0);
/*!40000 ALTER TABLE `project__schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__template`
--

DROP TABLE IF EXISTS `project__template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `inventory_id` int DEFAULT NULL,
  `repository_id` int NOT NULL,
  `environment_id` int DEFAULT NULL,
  `playbook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `arguments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `vault_key_id` int DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `start_version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `build_template_id` int DEFAULT NULL,
  `view_id` int DEFAULT NULL,
  `survey_vars` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `autorun` tinyint(1) DEFAULT '0',
  `allow_override_args_in_task` tinyint(1) NOT NULL DEFAULT '0',
  `suppress_success_alerts` tinyint(1) NOT NULL DEFAULT '0',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tasks` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `repository_id` (`repository_id`),
  KEY `environment_id` (`environment_id`),
  KEY `vault_key_id` (`vault_key_id`),
  KEY `build_template_id` (`build_template_id`),
  KEY `view_id` (`view_id`),
  CONSTRAINT `project__template_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__template_ibfk_3` FOREIGN KEY (`inventory_id`) REFERENCES `project__inventory` (`id`),
  CONSTRAINT `project__template_ibfk_4` FOREIGN KEY (`repository_id`) REFERENCES `project__repository` (`id`),
  CONSTRAINT `project__template_ibfk_5` FOREIGN KEY (`environment_id`) REFERENCES `project__environment` (`id`),
  CONSTRAINT `project__template_ibfk_6` FOREIGN KEY (`vault_key_id`) REFERENCES `access_key` (`id`),
  CONSTRAINT `project__template_ibfk_7` FOREIGN KEY (`build_template_id`) REFERENCES `project__template` (`id`),
  CONSTRAINT `project__template_ibfk_8` FOREIGN KEY (`view_id`) REFERENCES `project__view` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__template`
--

LOCK TABLES `project__template` WRITE;
/*!40000 ALTER TABLE `project__template` DISABLE KEYS */;
INSERT INTO `project__template` VALUES (160,7,19,21,20,'netbox-deploy.yml','[\"--tags=X.X.X\"]','B2.0 NetBox New Deployment Custom Version','This playbook will provision PostgreSQL, install NetBox 3.7.8 and its dependencies.\n\nCheck playbook in the \"E\" Semaphore view to deploy a certificate. For help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/install-netbox\n\nSet the version using --tags. The version must also be set in the netbox-deploy.yml playbook to get a match on the tag.',NULL,'',NULL,NULL,16,'null',0,0,0,'ansible',0),(161,7,19,21,20,'netbox-deploy.yml','[\"--tags=3.7.8\"]','B1.0 NetBox New Deployment v3.7.8','This playbook will provision PostgreSQL, and install NetBox 3.7.8 and its dependencies. Check playbooks in the SYSTEM Semaphore view to deploy a certificate.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/install-netbox',NULL,'',NULL,NULL,16,'null',0,0,0,'ansible',0),(162,7,19,21,20,'netbox-deploy.yml','[\"--tags=4.0.11\"]','B1.1 NetBox New Deployment v4.0.11','This playbook will provision PostgreSQL, and install NetBox 4.0.11 and its dependencies. Check playbooks in the SYSTEM Semaphore view to deploy a certificate.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/install-netbox',NULL,'',NULL,NULL,16,'null',0,1,0,'ansible',0),(188,7,19,21,20,'netbox-deploy-check-path.yml','[]','B3.0 NetBox Upgrade Check Path','This task will check the upgrade path based on the current version of NetBox.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/upgrade-netbox',NULL,'',NULL,NULL,16,'null',0,1,0,'ansible',0),(189,7,19,21,20,'netbox-deploy-upgrade.yml','[]','B3.1 NetBox Upgrade to Next Suitable Version','BACKUP NETBOX FIRST!\n\nThis task will check the upgrade path based on the current version of NetBox, and then perform an upgrade.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/upgrade-netbox',NULL,'',NULL,NULL,16,'null',0,1,0,'ansible',0),(190,7,19,21,20,'nginx-netbox-cert-self-signed.yml','[]','E1.0 Deploy NetBox NGINX & Self-Signed Cert','This task will provision a self-signed SSL certificate for NetBox. You will get a certificate error when connecting via the browser with a self-signed cert.\n\nFor help, check: https://docs.netos.io/books/1-semaphore-netops/page/deploying-nginx-certificates',NULL,'',NULL,NULL,20,'null',0,0,0,'ansible',0),(194,7,19,21,20,'nginx-netbox-cert-custom.yml','[]','E1.1 Deploy NetBox NGINX & Custom Cert','In the \"NetBox Global Settings\" Semaphore environment, add your cert and private key to the variables CERT_CONTENT and PRIVATE_CERT_CONTENT to align with NETBOX_HOSTNAME and DOMAIN variables, and this task will provision NGINX for you. If you are using other Netos product like Netos Pod, follow the same process in that Semaphore project to provision NGINX.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/deploying-nginx-certificates',NULL,'',NULL,NULL,20,'null',0,0,0,'ansible',0),(238,7,19,21,58,'netos-plugin-deploy-cloudflare.yml','[\"--tags=netos-core\",\"--tags=netos-insights\",\"--tags=netos-fabric\",\"--tags=netos-projects\"]','D2.0 Deploy Netos via Cloudflare - All Plugins','This playbook will deploy the Netos Core, Netos Insights, Netos Projects, and Netos Fabric plugins. You must set your API key and Cloudflare auth tokens provided by Netos in the \"Netos Enterprise Plugins\" Semaphore environment to authenticate.\n\nFor help, visit: https://docs.netos.io/books/semaphore-for-netbox/page/deploy-netos-enterprise-plugins',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(239,7,19,21,58,'netos-plugin-deploy-cloudflare.yml','[\"--tags=netos-core\"]','D2.1 Deploy Netos via Cloudflare - Core Plugin','This playbook will deploy the Netos Core plugin. You must set your API key and Cloudflare auth tokens provided by Netos in the \"Netos Enterprise Plugins\" Semaphore environment to authenticate.\n\nFor help, visit: https://docs.netos.io/books/semaphore-for-netbox/page/deploy-netos-enterprise-plugins',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(240,7,19,21,58,'netos-plugin-deploy-cloudflare.yml','[\"--tags=netos-core\",\"--tags=netos-insights\"]','D2.2 Deploy Netos via Cloudflare - Insights Plugin','This playbook will deploy the Netos Core and Netos Insights plugins. You must set your API key and Cloudflare auth tokens provided by Netos in the \"Netos Enterprise Plugins\" Semaphore environment to authenticate.\n\nFor help, visit: https://docs.netos.io/books/semaphore-for-netbox/page/deploy-netos-enterprise-plugins',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(242,7,19,21,31,'semaphore-repo-netbox.yml','[]','E2.0 Git Pull Netos NetBox Repo','This task will sync the latest updates for the NetBox Semaphore project (i.e. all the playbooks and scripts) from Netos GitHub. Read the release notes before proceeding.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/sync-semaphore-repository-updates-from-netos',NULL,'',NULL,NULL,20,'null',0,0,0,'ansible',0),(244,7,19,21,58,'netos-plugin-deploy-cloudflare.yml','[\"--tags=netos-core\",\"--tags=netos-projects\"]','D2.4 Deploy Netos via Cloudflare - Projects Plugin','This playbook will deploy the Netos Core and Netos Projects. You must set your API key and Cloudflare auth tokens provided by Netos in the \"Netos Enterprise Plugins\" Semaphore environment to authenticate.\n\nFor help, visit: https://docs.netos.io/books/semaphore-for-netbox/page/deploy-netos-enterprise-plugins',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(245,7,19,21,58,'netos-plugin-deploy-cloudflare.yml','[\"--tags=netos-core\",\"--tags=netos-fabric\"]','D2.3 Deploy Netos via Cloudflare - Fabric Plugin','This playbook will deploy the Netos Core and Netos Fabric plugins. You must set your API key and Cloudflare auth tokens provided by Netos in the \"Netos Enterprise Plugins\" Semaphore environment to authenticate.\n\nFor help, visit: https://docs.netos.io/books/semaphore-for-netbox/page/deploy-netos-enterprise-plugins',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(246,7,19,21,20,'netbox-health-check.yml','[]','A1.0 NetBox Health Check','This playbook runs a series of commands and health checks, including logs, processes, and the NetBox health API.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netbox-health-checks-maintenance',NULL,'',NULL,NULL,15,'null',0,0,0,'ansible',0),(247,7,19,21,20,'netbox-housekeeping.yml','[]','A1.1 NetBox Housekeeping','This playbook runs the NetBox recommended maintenance / housekeeping script. Check the Schedule in Semaphore to run each day.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netbox-health-checks-maintenance',NULL,'',NULL,NULL,15,'null',0,0,0,'ansible',0),(248,7,19,21,12,'netbox-backup.yml','[]','A2.0 NetBox Backup','This playbook will backup the NetBox database and media folder, and create an encrypted time-stampted tar.gz file. Check the Semaphore \"NetBox Backup Settings\" environment for all settings, including rotations, encryption keys, and remote SFTP.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netbox-backup-guide',NULL,'',NULL,NULL,15,'null',0,0,0,'ansible',0),(249,10,22,55,46,'semaphore-backup.yml','[]','A1.0 Semaphore Backup','This playbook will backup the Semaphore database, and create an encrypted time-stampted tar.gz file. Check the Semaphore \"Semaphore Backup Settings\" environment for all settings, including rotations, encryption keys, and remote SFTP.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/semaphore-backup-guide',NULL,'',NULL,NULL,30,'null',0,0,0,'ansible',0),(250,10,22,55,45,'semaphore-repo-netops.yml','[]','B2.0 Git Pull Netos NetOps Repo','This task will sync the latest updates for the NetOps Semaphore project (i.e. all the playbooks and scripts) from Netos GitHub. Read the release notes before proceeding.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/sync-semaphore-repository-updates-from-netos',NULL,'',NULL,NULL,31,'null',0,0,0,'ansible',0),(251,10,22,55,47,'nginx-semaphore-cert-self-signed.yml','[]','B1.0 Deploy Semaphore NGINX & Self-Signed Cert	','This task will provision a self-signed SSL certificate for NetBox. You will get a certificate error when connecting via the browser with a self-signed cert.\n\nFor help, check: https://docs.netos.io/books/1-semaphore-netops/page/deploying-nginx-certificates',NULL,'',NULL,NULL,31,'null',0,0,0,'ansible',0),(252,10,22,55,47,'nginx-semaphore-cert-custom.yml','[]','B1.1 Deploy Semaphore NGINX & Custom Cert','In the \"NetBox Global Settings\" Semaphore environment, add your cert and private key to the variables CERT_CONTENT and PRIVATE_CERT_CONTENT to align with SEMAPHORE_HOSTNAME and DOMAIN variables, and this task will provision NGINX for you. If you are using other Netos product like Netos Pod, follow the same process in that Semaphore project to provision NGINX.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/deploying-nginx-certificates',NULL,'',NULL,NULL,31,'null',0,0,0,'ansible',0),(253,7,19,21,20,'netbox-csrf.yml','[]','B4.0 Deploy NetBox CSRF Domain Settings','Sets your domain in the NetBox settings.py file based on the DOMAIN variable in the NetBox Global Setting environment.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netbox-csrf-settings',NULL,'',NULL,NULL,16,'null',0,0,0,'ansible',0),(255,7,19,21,12,'netbox-restore.yml','[]','A2.1 NetBox Restore','This restore process will flush the current NetBox Postgres database and restore from backup based on the configured variables in the \"NetBox Backups Settings\" Semaphore environment.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netbox-restoration-guide',NULL,'',NULL,NULL,15,'null',0,0,0,'ansible',0),(258,7,19,21,12,'netbox-remove.yml','[]','B5.0 Remove NetBox App and Database','WARNING: This process will remove the NetBox Postgres database and remove the NetBox directory. You can then re-install NetBox fresh.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/remove-netbox',NULL,'',NULL,NULL,16,'null',0,0,0,'ansible',0),(290,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_topology_views\"]','C. NetBox Topology Views - Deploy Plugin','This task will deploy the plugin from https://github.com/netbox-community/netbox-topology-views\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(292,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_topology_views\"]','C. NetBox Topology Views - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/netbox-community/netbox-topology-views. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(301,7,19,21,20,'netos-branding-apply.yml','[]','D5.0 Apply Netos Branding to NetBox','This will swap the NetBox logos and favicon with Netos logos.',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(302,7,19,21,20,'netos-branding-remove.yml','[]','D5.1 Remove Netos Branding from NetBox','This will swap the Netos logos and favicon back with the NetBox logos',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(303,7,19,21,20,'netos-default-preferences.yml','[]','D4.0 Deploy Netos Default User Preferences','This playbook will deploy optimal column/table layouts for the main NetBox application, and also add some additional device status values (FIELD_CHOICES) such as \"Detected\".\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netos-user-preferences-field-choices',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(306,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_otp_plugin\"]','C. NetBox OTP - Deploy Plugin','This task will deploy the plugin from https://github.com/k1nky/netbox-otp-plugin\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(307,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_otp_plugin\"]','C. NetBox OTP - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/k1nky/netbox-otp-plugin. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(310,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_secrets\"]','C. NetBox Secrets - Disable Plugin','This task will remove the plugin from https://github.com/Onemind-Services-LLC/netbox-secrets\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(311,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_secrets\"]','C. NetBox Secrets - Deploy Plugin','This task will deploy the plugin from https://github.com/Onemind-Services-LLC/netbox-secrets\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(312,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=ipfabric_netbox\"]','C. IP Fabric - Deploy Plugin','This task will deploy the plugin from https://gitlab.com/ip-fabric/integrations/ipfabric-netbox\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(314,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=ipfabric_netbox\"]','C. IP Fabric - Disable Plugin','This task will disable the plugin in configuration.py for https://gitlab.com/ip-fabric/integrations/ipfabric-netbox. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(315,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_reorder_rack\"]','C. NetBox Re-Order Rack - Deploy Plugin','This task will deploy the plugin from https://github.com/minitriga/netbox-reorder-rack/\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(316,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_reorder_rack\"]','C. NetBox Re-Order Rack - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/minitriga/netbox-reorder-rack/. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(319,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_acls\"]','C. NetBox ACLs - Deploy Plugin','This task will deploy the plugin from https://github.com/netbox-community/netbox-acls\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(320,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_acls\"]','C. NetBox ACLs - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/netbox-community/netbox-acls. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(321,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_bgp\"]','C. NetBox BGP - Deploy Plugin','This task will deploy the plugin from https://github.com/netbox-community/netbox-bgp\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(322,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_bgp\"]','C. NetBox BGP - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/netbox-community/netbox-bgp. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(323,7,19,21,50,'netbox-plugin-deploy.yml','[\"--tags=netbox_attachments\"]','C. NetBox Attachments - Deploy Plugin','This task will deploy the plugin from https://github.com/Kani999/netbox-attachments\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(324,7,19,21,50,'netbox-plugin-disable.yml','[\"--tags=netbox_attachments\"]','C. NetBox Attachments - Disable Plugin','This task will disable the plugin in configuration.py for https://github.com/Kani999/netbox-attachments. It will not drop the tables or perform any database migrations - if you want to do that, please read the plugin guidance!\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/deploy-netbox-community-plugins',NULL,'',NULL,NULL,33,'null',0,0,0,'ansible',0),(330,7,19,21,20,'netos-preload-cache.yml','[]','D4.1 Pre-Load Netos Reporting Cache','This task will pre-load the Netos cache for large reports, ensuring they load instantly when there are large queries. \n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/netos-reporting-cache-pre-load',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(331,7,19,21,20,'netos-airflow-key.yml','[]','D4.2 Deploy Netos API Key for Airflow','This playbook will create a superuser account in NetBox using variables AIRFLOW_API_USER_USERNAME and AIRFLOW_API_USER_PASSWORD. It will then proceed to create a token AIRFLOW_API_TOKEN for use by Airflow in Netos Pod.\n\nFor help, visit: https://docs.netos.io/books/2-semaphore-netbox/page/create-netbox-api-token-for-airflow',NULL,'',NULL,NULL,17,'null',0,0,0,'ansible',0),(332,10,22,55,45,'semaphore-repo-pod.yml','[]','B2.1 Git Pull Netos Pod Repo','This task will sync the latest updates for the Netos Pod Semaphore project (i.e. all the playbooks and scripts) from Netos GitHub. Read the release notes before proceeding.\n\nFor help, visit: https://docs.netos.io/books/1-semaphore-netops/page/sync-semaphore-repository-updates-from-netos',NULL,'',NULL,NULL,31,'null',0,0,0,'ansible',0);
/*!40000 ALTER TABLE `project__template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__user`
--

DROP TABLE IF EXISTS `project__user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__user` (
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'manager',
  UNIQUE KEY `project_id` (`project_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `project__user_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__user`
--

LOCK TABLES `project__user` WRITE;
/*!40000 ALTER TABLE `project__user` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__view`
--

DROP TABLE IF EXISTS `project__view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project__view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project__view_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__view`
--

LOCK TABLES `project__view` WRITE;
/*!40000 ALTER TABLE `project__view` DISABLE KEYS */;
INSERT INTO `project__view` VALUES (15,'A. Operations',7,0),(16,'B. NetBox Deploy',7,1),(17,'D. Netos',7,3),(20,'E. System',7,4),(30,'A. Operations',10,0),(31,'B. System',10,1),(33,'C. NetBox Plugins',7,2);
/*!40000 ALTER TABLE `project__view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runner`
--

DROP TABLE IF EXISTS `runner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `runner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webhook` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `max_parallel_tasks` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `runner_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runner`
--

LOCK TABLES `runner` WRITE;
/*!40000 ALTER TABLE `runner` DISABLE KEYS */;
/*!40000 ALTER TABLE `runner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expired` (`expired`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `playbook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `environment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `debug` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `dry_run` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` int DEFAULT NULL,
  `message` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commit_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commit_message` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `build_task_id` int DEFAULT NULL,
  `arguments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hosts_limit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `diff` tinyint(1) NOT NULL DEFAULT '0',
  `inventory_id` int DEFAULT NULL,
  `integration_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `project_id` (`project_id`),
  KEY `task_build_task_id_fk_y38rt` (`build_task_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `integration_id` (`integration_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `task_build_task_id_fk_y38rt` FOREIGN KEY (`build_task_id`) REFERENCES `task` (`id`) ON DELETE SET NULL,
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `project__template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `task_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `task_ibfk_3` FOREIGN KEY (`inventory_id`) REFERENCES `project__inventory` (`id`) ON DELETE SET NULL,
  CONSTRAINT `task_ibfk_4` FOREIGN KEY (`integration_id`) REFERENCES `project__integration` (`id`) ON DELETE SET NULL,
  CONSTRAINT `task_ibfk_5` FOREIGN KEY (`schedule_id`) REFERENCES `project__schedule` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task__output`
--

DROP TABLE IF EXISTS `task__output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task__output` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL,
  `task` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime NOT NULL,
  `output` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task__output_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=336842 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task__output`
--

LOCK TABLES `task__output` WRITE;
/*!40000 ALTER TABLE `task__output` DISABLE KEYS */;
/*!40000 ALTER TABLE `task__output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alert` tinyint(1) NOT NULL DEFAULT '0',
  `external` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-07-23 18:34:23','admin','Admin User','admin@netos.dev','$2a$11$8uedauaJHzy9YNTuCTeZauEIwCRffH6bn8V0TBwcQTyfUfFZFFZE6',0,0,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__token`
--

DROP TABLE IF EXISTS `user__token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user__token` (
  `id` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user__token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__token`
--

LOCK TABLES `user__token` WRITE;
/*!40000 ALTER TABLE `user__token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user__token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 18:29:25
