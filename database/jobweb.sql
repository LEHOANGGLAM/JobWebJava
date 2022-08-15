-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: jobweb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business_type`
--

DROP TABLE IF EXISTS `business_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_type` (
  `id` int NOT NULL,
  `business_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_type`
--

LOCK TABLES `business_type` WRITE;
/*!40000 ALTER TABLE `business_type` DISABLE KEYS */;
INSERT INTO `business_type` VALUES (1,'Private enterprise'),(2,'State '),(3,'Parnership');
/*!40000 ALTER TABLE `business_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `parent_cate_id` int DEFAULT NULL,
  `user_type_id` int DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `link_cate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userTypeID3_idx` (`user_type_id`),
  CONSTRAINT `FK_userTypeID3` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Home',0,2,'demo',1,'/'),(2,'Find a job',0,2,'demo',1,'joblist'),(3,'About',0,4,'demo',1,'about'),(4,'Contact',0,4,'demo',1,'contact');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) DEFAULT NULL,
  `profile_description` varchar(1000) DEFAULT NULL,
  `business_type_id` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `company_website` varchar(45) DEFAULT NULL,
  `company_email` varchar(45) DEFAULT NULL,
  `cover_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_businessTypeID_idx` (`business_type_id`),
  CONSTRAINT `FK_businessTypeID` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (7,'VNG','demo',1,'2022-08-30','null',NULL,NULL,NULL),(8,'FPT','demo',1,'2022-08-30','null',NULL,NULL,NULL),(9,'NetCompany','demo',2,'2022-08-30','null',NULL,NULL,NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_location`
--

DROP TABLE IF EXISTS `job_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_location` (
  `id` int NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_location`
--

LOCK TABLES `job_location` WRITE;
/*!40000 ALTER TABLE `job_location` DISABLE KEYS */;
INSERT INTO `job_location` VALUES (1,'TpHCM'),(2,'Hà Nội');
/*!40000 ALTER TABLE `job_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_type_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `job_description` varchar(45) DEFAULT NULL,
  `job_requirement` varchar(45) DEFAULT NULL,
  `job_location_id` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `job_min_salary` int DEFAULT NULL,
  `job_max_salary` int DEFAULT NULL,
  `year_exper_require` int DEFAULT NULL,
  `job_street` varchar(45) DEFAULT NULL,
  `job_nature` varchar(45) DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `individual_right` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jobLocationID_idx` (`job_location_id`),
  KEY `FK_jobTypeID_idx` (`job_type_id`),
  KEY `fk_job_post_employer1_idx` (`company_id`),
  CONSTRAINT `fk_job_post_employer1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_jobLocationID` FOREIGN KEY (`job_location_id`) REFERENCES `job_location` (`id`),
  CONSTRAINT `FK_jobTypeID` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (1,1,7,'2022-08-07','2023-08-09','demo','job_quirement',1,1,'Web Developer',3000,4000,3,'12 Nguyễn Đình Chiểu','Full time',1,'individual_right'),(2,2,8,'2022-08-10','2023-08-10','demo','job_quirement',2,1,'Marketing Manager',4000,5000,3,'12 ABC','Full time',2,'individual_right'),(3,3,9,'2022-08-10','2023-08-11','demo','job_quirement',1,1,'Marketing Manager1',1000,2000,3,'12 ASD','Full time',3,'individual_right'),(4,4,7,'2022-08-10','2023-08-12','demo','job_quirement',2,1,'Marketing Manager2',500,3000,3,'12 QWE','Full time',1,'individual_right'),(5,3,8,'2022-08-10','2023-08-13','demo','job_quirement',1,1,'Marketing Manager3',8000,9000,3,'12 Nguyễn Đình Chiểu','Full time',2,'individual_right'),(6,3,9,'2022-08-10','2023-08-14','demo','job_quirement',2,1,'Marketing Manager4',3000,3500,3,'12 Phan Văn Tri','Full time',3,'individual_right'),(7,4,7,'2022-08-10','2023-08-15','demo','job_quirement',1,1,'Marketing Manager5',1500,2000,3,'12 Nguyễn Đình Chiểu','Full time',1,'individual_right'),(8,4,8,'2022-08-10','2023-08-16','demo','job_quirement',2,1,'Marketing Manager6',900,1000,3,'12 Phan Văn Tri','Full time',2,'individual_right'),(9,2,9,'2022-08-10','2023-08-17','demo','job_quirement',1,1,'Marketing Manager7',1200,1500,3,'12 Phan Văn Tri','Full time',3,'individual_right');
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post_activity`
--

DROP TABLE IF EXISTS `job_post_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post_activity` (
  `apply_date` date DEFAULT NULL,
  `job_post_id` int NOT NULL,
  `user_account_id` int NOT NULL,
  PRIMARY KEY (`job_post_id`,`user_account_id`),
  KEY `fk_job_post_activity_job_post1_idx` (`job_post_id`),
  KEY `fk_job_post_activity_user_account1_idx` (`user_account_id`),
  CONSTRAINT `fk_job_post_activity_job_post1` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`id`),
  CONSTRAINT `fk_job_post_activity_user_account1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post_activity`
--

LOCK TABLES `job_post_activity` WRITE;
/*!40000 ALTER TABLE `job_post_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_post_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post_skill_set`
--

DROP TABLE IF EXISTS `job_post_skill_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post_skill_set` (
  `skill_set_id` int NOT NULL,
  `skill_level` varchar(45) DEFAULT NULL,
  `job_post_id` int DEFAULT NULL,
  PRIMARY KEY (`skill_set_id`),
  KEY `fk_job_post_skill_set_job_post1_idx` (`job_post_id`),
  CONSTRAINT `fk_job_post_skill_set_job_post1` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`id`),
  CONSTRAINT `FK_skillsetID1` FOREIGN KEY (`skill_set_id`) REFERENCES `skill_set` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post_skill_set`
--

LOCK TABLES `job_post_skill_set` WRITE;
/*!40000 ALTER TABLE `job_post_skill_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_post_skill_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_type` (
  `id` int NOT NULL,
  `job_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'Cộng Nghệ'),(2,'Marketing'),(3,'Thiết kế'),(4,'Creative');
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_set`
--

DROP TABLE IF EXISTS `skill_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_set` (
  `id` int NOT NULL,
  `skill_set_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_set`
--

LOCK TABLES `skill_set` WRITE;
/*!40000 ALTER TABLE `skill_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact_number` varchar(10) DEFAULT NULL,
  `user_image` varchar(45) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `use_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_account_user_type1_idx` (`use_type_id`),
  CONSTRAINT `fk_user_account_user_type1` FOREIGN KEY (`use_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,'lelam1384@gmail.com','0946646654','2001-08-01','nam','0946646654','null','2022-08-07','LELAM',2),(2,'lelam1384@gmail.com','0946646654','2001-08-01','nam','0946646654','null','2022-08-07','admin',1),(3,'lelam1384@gmail.com','0946646654','2001-08-01','nam','0946646654','null','2022-08-07','Nhà Tuyển Dụng',3);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'admin'),(2,'Người tìm việc'),(3,'Nhà tuyển dụng'),(4,'both');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-13 19:21:48
