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
INSERT INTO `business_type` VALUES (1,'Agriculture '),(2,'Telecommunication '),(3,'Technology');
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
  `content` varchar(5000) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `link_cate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userTypeID3_idx` (`user_type_id`),
  CONSTRAINT `FK_userTypeID3` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Home',0,2,'demo',1,''),(2,'Job',0,2,'demo',1,''),(5,'Category Manager',0,1,'null',1,'cate'),(7,'Company Manager',0,1,'null',1,'company'),(8,'News',0,1,'null',1,'news'),(9,'Find a Job',2,2,'null',1,'joblist'),(10,'Save Jobs',2,2,'null',1,'jobApplied'),(11,'Applied Jobs',2,2,'null',1,'jobApplied'),(12,'Application Stats',0,1,NULL,1,'stats'),(13,'Find Company',0,2,NULL,1,'companyList'),(14,'Find Candidate',0,3,NULL,1,'candidateList'),(15,'Employer Tools',0,3,NULL,1,NULL),(16,'Manage Jobs',15,3,NULL,1,'jobPostManager'),(17,'Submit Job',15,3,NULL,1,'postJob'),(20,'About',0,4,'WorkFun là công ty công nghệ nhân sự (HR Tech) hàng đầu Việt Nam. Với năng lực lõi là công nghệ, đặc biệt là trí tuệ nhân tạo (AI), sứ mệnh của WorkFun đặt ra cho mình là thay đổi thị trường tuyển dụng - nhân sự ngày một hiệu quả hơn. Bằng công nghệ, chúng tôi tạo ra nền tảng cho phép người lao động tạo CV, phát triển được các kỹ năng cá nhân, xây dựng hình ảnh chuyên nghiệp trong mắt nhà tuyển dụng và tiếp cận với các cơ hội việc làm phù hợp.',1,'about'),(21,'Contact',0,4,'Xin liên hệ qua email 1951012061lam@ou.edu.vn',1,'contact');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_company_idx` (`company_id`),
  KEY `FK_user_comment` (`user_id`),
  CONSTRAINT `FK_company_comment` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_user_comment` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,7,'This company is great!','2022-08-21 00:00:00');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
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
  `image` varchar(200) DEFAULT NULL,
  `company_website` varchar(200) DEFAULT NULL,
  `company_email` varchar(45) DEFAULT NULL,
  `cover_image` varchar(45) DEFAULT NULL,
  `user_account_id` int DEFAULT NULL,
  `aboutCompany` varchar(2000) DEFAULT NULL,
  `company_size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_businessTypeID_idx` (`business_type_id`),
  KEY `FK_userAccountID_idx` (`user_account_id`),
  CONSTRAINT `FK_businessTypeID` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`id`),
  CONSTRAINT `FK_userAccountID` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (7,'VNG','demo',1,'2022-08-30','https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png','https://www.facebook.com/profile.php?id=100004525996456','nulll',NULL,5,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','10000'),(8,'FPT','demo',2,'2022-08-30','https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png','https://www.facebook.com/profile.php?id=100004525996456','null',NULL,4,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','50000'),(9,'NetCompany','demo',3,'2022-08-30','https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png','https://www.facebook.com/profile.php?id=100004525996456','null',NULL,3,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','30000');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
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
  `job_street_id` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `job_min_salary` int DEFAULT NULL,
  `job_max_salary` int DEFAULT NULL,
  `year_exper_require` int DEFAULT NULL,
  `job_nature` varchar(45) DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `individual_right` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jobLocationID_idx` (`job_street_id`),
  KEY `FK_jobTypeID_idx` (`job_type_id`),
  KEY `fk_job_post_employer1_idx` (`company_id`),
  CONSTRAINT `fk_job_post_employer1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_jobLocationID` FOREIGN KEY (`job_street_id`) REFERENCES `street` (`id`),
  CONSTRAINT `FK_jobTypeID` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (1,1,7,'2022-08-07','2022-08-09','demo','job_quirement',1,1,'Web Developer',3000,4000,3,'Full time',1,'individual_right'),(2,2,8,'2022-08-10','2023-08-10','demo','job_quirement',2,1,'Marketing Manager',4000,5000,3,'Full time',2,'individual_right'),(3,3,9,'2022-08-10','2023-08-11','demo','job_quirement',3,1,'Marketing Manager1',1000,2000,3,'Full time',3,'individual_right'),(4,4,7,'2022-08-10','2023-08-12','demo','job_quirement',4,1,'Marketing Manager2',500,3000,3,'Full time',1,'individual_right'),(5,3,8,'2022-08-10','2023-08-13','demo','job_quirement',5,1,'Marketing Manager3',8000,9000,3,'Full time',2,'individual_right'),(6,3,9,'2022-08-10','2023-08-14','demo','job_quirement',6,1,'Marketing Manager4',3000,3500,3,'Full time',3,'individual_right'),(7,4,7,'2022-08-10','2023-08-15','demo','job_quirement',7,1,'Marketing Manager5',1500,2000,3,'Full time',1,'individual_right'),(8,4,8,'2022-08-10','2023-08-16','demo','job_quirement',8,1,'Marketing Manager6',900,1000,3,'Full time',2,'individual_right'),(9,2,9,'2022-08-10','2023-08-17','demo','job_quirement',8,1,'Marketing Manager7',1200,1500,3,'Full time',3,'individual_right');
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
  `is_save` int DEFAULT NULL,
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
INSERT INTO `job_post_activity` VALUES ('2022-08-22',1,1,-1),('2022-08-22',1,2,1),('2022-08-22',2,1,0),('2022-08-22',3,1,1),('2022-08-22',4,2,1),('2022-08-22',5,2,1),('2022-08-29',8,1,-1),('2022-08-28',9,1,-1);
/*!40000 ALTER TABLE `job_post_activity` ENABLE KEYS */;
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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'TpHCM'),(2,'Hà Nội');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `cate_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cate_id_idx` (`cate_id`),
  CONSTRAINT `FK_cate_id` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
INSERT INTO `new` VALUES (1,NULL,NULL,'a',NULL,NULL);
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `street`
--

DROP TABLE IF EXISTS `street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `street` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street_name` varchar(45) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_com_idx` (`company_id`),
  KEY `FK_city_idx` (`city_id`),
  CONSTRAINT `FK_city` FOREIGN KEY (`city_id`) REFERENCES `location` (`id`),
  CONSTRAINT `FK_com_str` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `street`
--

LOCK TABLES `street` WRITE;
/*!40000 ALTER TABLE `street` DISABLE KEYS */;
INSERT INTO `street` VALUES (1,'Huỳnh Văn Nghệ',7,1),(2,'12 Nguyễn Đình Chiểu',7,1),(3,'12 QWE',7,1),(4,'12 ABC',8,2),(5,'12 ASD',8,2),(6,'13 Nguyễn Đình Chiểu',8,1),(7,'12 Phan Văn Trị',9,2),(8,'14 XYZ',9,2);
/*!40000 ALTER TABLE `street` ENABLE KEYS */;
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
  `user_image` varchar(100) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `user_type_id` int DEFAULT NULL,
  `is_comfirm` int DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `about_me` varchar(200) DEFAULT NULL,
  `cv` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_account_user_type1_idx` (`user_type_id`),
  CONSTRAINT `fk_user_account_user_type1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq','2001-08-01','nam','0946646654','https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png','2022-08-07','LELAM',2,NULL,'Lam','Le Cam Hoang',NULL,NULL),(2,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq','2001-08-01','nam','0946646654','https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png','2022-08-08','admin',1,NULL,'Lam','Le Cam Hoang',NULL,NULL),(3,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq','2001-08-01','nam','0946646654','','2022-08-09','NetCompany',3,1,'Lam','Le Cam Hoang',NULL,NULL),(4,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq','2001-08-01','nam','0946646654','','2022-08-10','FPT',3,0,'Lam','Le Cam Hoang',NULL,NULL),(5,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq','2001-08-01','nam','0946646654','','2022-08-01','VNG',3,0,'Lam','Le Cam Hoang',NULL,NULL),(8,'lelam1384@gmail.com','$2a$10$eSuTiTt88fof1JAK/ydfy..haRc0SOnVLRKWDo8gAoMH2aGSNR9Yq',NULL,NULL,'0946646654',NULL,NULL,'lelam2',NULL,NULL,'le','lam',NULL,NULL);
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

-- Dump completed on 2022-08-29  6:49:59
