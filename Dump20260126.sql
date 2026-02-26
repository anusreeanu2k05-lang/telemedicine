-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: medicine
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alert` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `alert` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,1,'aa','2025-11-30','12:52:03'),(2,1,'aa','2025-12-02','13:22:55'),(3,1,'erthj','2026-01-04','16:38:29'),(4,9,'hiiiii','2026-01-25','12:01:38'),(5,9,'vghiiiii','2026-01-25','12:05:15'),(6,9,'hiiiiiiii','2026-01-25','12:12:49'),(7,9,'helppp','2026-01-25','12:14:52'),(8,9,'helpppIIIIII','2026-01-25','12:19:25'),(9,9,'grrrttttgg','2026-01-25','12:20:15'),(10,9,'hhhhhhhhhhhhhh','2026-01-25','12:26:30'),(11,9,'fgfhfgh','2026-01-25','12:30:18'),(12,9,'dfghj','2026-01-25','12:32:02'),(13,9,'helppppppppp','2026-01-25','12:33:05'),(14,9,'help me','2026-01-25','12:33:51'),(15,9,'hbjhh','2026-01-25','13:21:51'),(16,4,'Heart pain','2026-01-25','19:41:40'),(17,4,'Stomac Pain','2026-01-25','19:42:53'),(18,3,'Help me please','2026-01-25','20:28:04');
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ambulance`
--

DROP TABLE IF EXISTS `ambulance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambulance` (
  `ambulance_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`ambulance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambulance`
--

LOCK TABLES `ambulance` WRITE;
/*!40000 ALTER TABLE `ambulance` DISABLE KEYS */;
INSERT INTO `ambulance` VALUES (1,'navathara','9090876845'),(2,'',''),(3,'navathara2','9090987654'),(4,'navatharam','0987654321'),(5,'paliative','9898989090'),(6,'paliative','6767890009'),(7,'deepam','9089900098'),(8,'deepam2','9089900090'),(9,'Neethi','7878909098'),(10,'HelthCare','7878900987');
/*!40000 ALTER TABLE `ambulance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2025-12-29','14:47:55','reject'),(2,1,1,'2025-12-29','14:49:42','approve'),(3,1,1,'2025-12-31','16:42:07','approve'),(4,1,1,'2025-12-31','16:44:10','reject'),(5,1,1,'2025-12-31','16:46:35','reject'),(6,1,1,'2025-12-31','16:46:37','reject'),(7,1,1,'2026-01-05','09:39:30','approve'),(8,1,1,'2026-01-10','15:13:33','pending'),(9,1,1,'2026-01-13','13:43:41','pending'),(10,1,1,'2026-01-13','13:44:07','reject'),(11,1,1,'2026-01-20','14:53:26','pending'),(12,9,9,'2026-01-25','09:35:09','pending'),(13,9,9,'2026-01-25','12:54:09','pending'),(14,9,9,'2026-01-25','12:55:33','pending'),(15,9,2,'2026-01-27','13:07:00','pending'),(16,9,1,'2026-02-03','13:07:00','pending'),(17,3,3,'2026-01-25','13:40:33','approve'),(18,4,4,'2026-01-25','14:14:19','pending'),(19,4,4,'2026-01-25','19:52:37','pending'),(20,3,3,'2026-01-25','20:28:27','pending'),(21,3,1,'2026-01-29','20:56:00','pending'),(22,3,10,'2026-02-06','01:40:00','pending'),(23,3,6,'2026-01-30','11:39:00','pending');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add alert',7,'add_alert'),(26,'Can change alert',7,'change_alert'),(27,'Can delete alert',7,'delete_alert'),(28,'Can view alert',7,'view_alert'),(29,'Can add ambulance',8,'add_ambulance'),(30,'Can change ambulance',8,'change_ambulance'),(31,'Can delete ambulance',8,'delete_ambulance'),(32,'Can view ambulance',8,'view_ambulance'),(33,'Can add appointment',9,'add_appointment'),(34,'Can change appointment',9,'change_appointment'),(35,'Can delete appointment',9,'delete_appointment'),(36,'Can view appointment',9,'view_appointment'),(37,'Can add child register',10,'add_childregister'),(38,'Can change child register',10,'change_childregister'),(39,'Can delete child register',10,'delete_childregister'),(40,'Can view child register',10,'view_childregister'),(41,'Can add complient',11,'add_complient'),(42,'Can change complient',11,'change_complient'),(43,'Can delete complient',11,'delete_complient'),(44,'Can view complient',11,'view_complient'),(45,'Can add docter',12,'add_docter'),(46,'Can change docter',12,'change_docter'),(47,'Can delete docter',12,'delete_docter'),(48,'Can view docter',12,'view_docter'),(49,'Can add doubt',13,'add_doubt'),(50,'Can change doubt',13,'change_doubt'),(51,'Can delete doubt',13,'delete_doubt'),(52,'Can view doubt',13,'view_doubt'),(53,'Can add image',14,'add_image'),(54,'Can change image',14,'change_image'),(55,'Can delete image',14,'delete_image'),(56,'Can view image',14,'view_image'),(57,'Can add login',15,'add_login'),(58,'Can change login',15,'change_login'),(59,'Can delete login',15,'delete_login'),(60,'Can view login',15,'view_login'),(61,'Can add medicines',16,'add_medicines'),(62,'Can change medicines',16,'change_medicines'),(63,'Can delete medicines',16,'delete_medicines'),(64,'Can view medicines',16,'view_medicines'),(65,'Can add report',17,'add_report'),(66,'Can change report',17,'change_report'),(67,'Can delete report',17,'delete_report'),(68,'Can view report',17,'view_report'),(69,'Can add review',18,'add_review'),(70,'Can change review',18,'change_review'),(71,'Can delete review',18,'delete_review'),(72,'Can view review',18,'view_review'),(73,'Can add user',19,'add_user'),(74,'Can change user',19,'change_user'),(75,'Can delete user',19,'delete_user'),(76,'Can view user',19,'view_user'),(77,'Can add vaccine',20,'add_vaccine'),(78,'Can change vaccine',20,'change_vaccine'),(79,'Can delete vaccine',20,'delete_vaccine'),(80,'Can view vaccine',20,'view_vaccine'),(81,'Can add blood',21,'add_blood'),(82,'Can change blood',21,'change_blood'),(83,'Can delete blood',21,'delete_blood'),(84,'Can view blood',21,'view_blood');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood` (
  `blood_group` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `blood_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`blood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES ('AB+','fff',77,'ggg','555',1),('A+','fd',23,'ghgh','123456789',2),('A+','dd',45,'thayyil(H)','9898989890',3),('A+','ddg',45,' vgds','9090987656',4),('AB+','fff',77,'ggg','555',5),('B+','ggg',12,'gggg','77',6),('O+','anusree',20,'thayyil','8989890',7),('A+','Dilna A',20,'Maatath (H)','9895624933',8),('AB-','Shijin E',20,'Edakkat House','9544665091',9),('A+','Shijin E',20,'Edakkat','9544665091',10),('A+','Ambika',34,'Tharol(H)','9090987678',11);
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_register`
--

DROP TABLE IF EXISTS `child_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_register` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `child_name` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birth_certificate` varchar(500) NOT NULL,
  `parent_details` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_register`
--

LOCK TABLES `child_register` WRITE;
/*!40000 ALTER TABLE `child_register` DISABLE KEYS */;
INSERT INTO `child_register` VALUES (1,'Mithuna KP','2025-07-30',1,'Female','A+','12','Koroth(H),Calicut','Screenshot 2026-01-22 101958.png','Mother:Anusree\r\nFather:Shijin','9544665091','mithuna@123','mithuna@gmail.com'),(2,'Nithara','2025-01-06',1,'Female','A+','5','Thazheveettil(H)','Screenshot 2026-01-22 120843.png','Mother : Maya P\r\nFather : Jayaram','6745678397','nithara@123','nithara@gmail.com'),(3,'Dharmik','2024-07-07',2,'Female','B+','7','Athiparambath(H)','Screenshot 2026-01-22 102420.png','Mother:Anamika\r\nFather:Amal','4567894567','dharmik@123','dharmik@gmail.com'),(4,'Shilpa k','2016-10-19',10,'Female','AB+','23','Ambali(H)','Screenshot 2026-01-22 102425.png','Mother:Divya k\r\nFather:Pranav','9876543456','shilpa@123','shilpa@gmail.com'),(5,'Rana','2023-09-24',3,'Female','O+','6','Thoolikayil(H)','Screenshot 2026-01-22 102432.png','Mother:Anisha A\r\nFather:Ashwin','8976543456','rana@123','rana@gmail.com'),(6,'Avin','2020-09-16',5,'Male','A+','10','Korothum Puraya(H)','Screenshot 2026-01-22 120933.png','Mother:Ananya KP\r\nFather:Vidhu Prakash','8765456789','avin@123','avin@gmail.com'),(7,'ANUSREE T','2024-12-31',2,'Female','A+','10','Thayyil','Screenshot 2026-01-22 102030.png','Mother : Geetha T\r\nFather : Bhaskran T','4556789009','Anusree@123','anusree@gmail.com');
/*!40000 ALTER TABLE `child_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complient`
--

DROP TABLE IF EXISTS `complient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complient` (
  `complient_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `complient` varchar(50) NOT NULL,
  `replay` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`complient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complient`
--

LOCK TABLES `complient` WRITE;
/*!40000 ALTER TABLE `complient` DISABLE KEYS */;
INSERT INTO `complient` VALUES (1,3,'gdgfjhjj','HIII OK','2026-01-25','22:42:19'),(2,9,'asdf','okk','2026-01-25','09:26:33'),(3,1,'','hii','2026-01-12','22:20:57'),(4,1,'','pending','2025-12-31','11:59:56'),(5,1,'dfhjvn','pending','2026-01-03','13:45:28'),(6,1,'asdfghjkmnbvcxcvb','okkk','2026-01-13','10:55:57'),(7,1,'hiiiiiiii','pending','2026-01-20','17:01:44'),(8,9,'hiiiiiiiiiiiiiiii','pending','2026-01-25','09:36:10'),(9,3,'Can not see DocterDetails','its a technical error','2026-01-25','13:29:59'),(10,3,'Cant take Docter','pending','2026-01-25','21:46:00'),(11,3,'canot see docters','pending','2026-01-25','21:59:38'),(12,3,'j','pending','2026-01-25','22:00:26'),(13,3,'Network Issue','pending','2026-01-25','22:12:11'),(14,3,'hiiiii','pending','2026-01-25','22:13:05'),(15,3,'help meeee','pending','2026-01-26','11:57:26');
/*!40000 ALTER TABLE `complient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'alert','alert'),(8,'ambulance','ambulance'),(9,'appointment','appointment'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(21,'blood','blood'),(10,'child_registor','childregister'),(11,'complaient','complient'),(5,'contenttypes','contenttype'),(12,'doctor_registor','docter'),(13,'doubt','doubt'),(14,'image','image'),(15,'login','login'),(16,'medicine','medicines'),(17,'report','report'),(18,'reviw','review'),(6,'sessions','session'),(19,'user_registor','user'),(20,'vaccine','vaccine');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-01-11 05:43:05.395996'),(2,'auth','0001_initial','2026-01-11 05:43:06.366371'),(3,'admin','0001_initial','2026-01-11 05:43:06.590304'),(4,'admin','0002_logentry_remove_auto_add','2026-01-11 05:43:06.602312'),(5,'admin','0003_logentry_add_action_flag_choices','2026-01-11 05:43:06.611671'),(6,'alert','0001_initial','2026-01-11 05:43:06.617351'),(7,'ambulance','0001_initial','2026-01-11 05:43:06.623390'),(8,'appointment','0001_initial','2026-01-11 05:43:06.628351'),(9,'contenttypes','0002_remove_content_type_name','2026-01-11 05:43:06.785318'),(10,'auth','0002_alter_permission_name_max_length','2026-01-11 05:43:06.816651'),(11,'auth','0003_alter_user_email_max_length','2026-01-11 05:43:06.843448'),(12,'auth','0004_alter_user_username_opts','2026-01-11 05:43:06.853405'),(13,'auth','0005_alter_user_last_login_null','2026-01-11 05:43:06.917763'),(14,'auth','0006_require_contenttypes_0002','2026-01-11 05:43:06.923762'),(15,'auth','0007_alter_validators_add_error_messages','2026-01-11 05:43:06.932272'),(16,'auth','0008_alter_user_username_max_length','2026-01-11 05:43:06.949272'),(17,'auth','0009_alter_user_last_name_max_length','2026-01-11 05:43:06.964878'),(18,'auth','0010_alter_group_name_max_length','2026-01-11 05:43:06.987542'),(19,'auth','0011_update_proxy_permissions','2026-01-11 05:43:06.999767'),(20,'auth','0012_alter_user_first_name_max_length','2026-01-11 05:43:07.024166'),(21,'blood','0001_initial','2026-01-11 05:43:07.029477'),(22,'child_registor','0001_initial','2026-01-11 05:43:07.036260'),(23,'complaient','0001_initial','2026-01-11 05:43:07.042391'),(24,'doctor_registor','0001_initial','2026-01-11 05:43:07.048382'),(25,'doubt','0001_initial','2026-01-11 05:43:07.054345'),(26,'image','0001_initial','2026-01-11 05:43:07.059711'),(27,'login','0001_initial','2026-01-11 05:43:07.065171'),(28,'medicine','0001_initial','2026-01-11 05:43:07.071082'),(29,'report','0001_initial','2026-01-11 05:43:07.077080'),(30,'reviw','0001_initial','2026-01-11 05:43:07.082971'),(31,'sessions','0001_initial','2026-01-11 05:43:07.145337'),(32,'user_registor','0001_initial','2026-01-11 05:43:07.152298'),(33,'vaccine','0001_initial','2026-01-11 05:43:07.157133');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('wweancyp8yanb3vap3pyy73t8mm3hyow','eyJ1X2lkIjozfQ:1vkEqj:_SfXDceosXyxtCLXfG63GpGs-LnJnw2foNBE9rQ5Ogs','2026-02-09 05:09:17.840017');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docter`
--

DROP TABLE IF EXISTS `docter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docter` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `certificate` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docter`
--

LOCK TABLES `docter` WRITE;
/*!40000 ALTER TABLE `docter` DISABLE KEYS */;
INSERT INTO `docter` VALUES (1,'Netheesh Kumar Reddy',50,'Male','MBBS,MD(General Medicine)','15 years','9087789090','Screenshot 2026-01-22 102413.png','Screenshot 2026-01-22 102128.png','approve','reddy@123','Cardiology','reddy@gmail.com'),(2,'Dr .Renuka RadhaKrishnan',45,'Female','MBBS,MD(Neurology)','6 Years','5678909087','Screenshot 2026-01-22 102420.png','Screenshot 2026-01-22 101735.png','approve','renuka@123','Neurology','renuka@gmail.com'),(3,'Dr.Danshika Raj',35,'Female','MBBS,MD(Pediatrics)','3 Years(TMH Hospital,Kozikode)','7890987654','Screenshot 2026-01-22 102425.png','Screenshot 2026-01-22 101748.png','pending','dhanshika@123','Pediatrics','danshika@gmail.com'),(4,'Dr.Rony Sebastin',39,'Male','MBBS,MS(Hepatology)','3 Years(DMS Hospital,Chelari)','9087453212','Screenshot 2026-01-22 102432.png','Screenshot 2026-01-22 102139.png','pending','rony@123','Hepatology','rony@gmail.com'),(5,'Dr.Jerin K John',29,'Female','MBBS,MD(Dermatology)','2 Yeras(Aster Mims,Calicut PO)','6789098765','Screenshot 2026-01-22 102501.png','Screenshot 2026-01-22 102146.png','pending','jerin@123','Dermatologisty','jerin@gmail.com'),(6,'Dr.Divya Prakash ',30,'Female','MBBS,Master of Optometry','2 Years(NahasHospital,Parappanagadi,Malappuram)','6789009890','Screenshot 2026-01-22 102512.png','Screenshot 2026-01-22 101834.png','pending','divya@123','Opthalmologist','divya@gmail.com'),(7,'Dr.Sandhya ',35,'Female','MBBS,MD(Hepatology Specialist)','5 Years(Shifa Hospital ,Kallamppara,Kozhikode PO)','8989876545','Screenshot 2026-01-22 102520.png','Screenshot 2026-01-22 101844.png','approve','sandya@123','Hepatologist','sandya@gmail.com'),(8,'Dr.Anandh K P',34,'Male','MBBS(Pediatrics)','4 Yeras(Kottaparamb Hospitals,Malappuram)','6789000987','Screenshot 2026-01-22 102529.png','Screenshot 2026-01-22 102155.png','pending','anandh@123','Pediatrics','anandh@gmail.com'),(9,'Dr.Aswathi Ramdhas',36,'Female','MBBS,MD(Opthalmologist)','5 Years(Cresent Hospital,Faroke,Calicut)','9056565654','Screenshot 2026-01-22 102529.png','Screenshot 2026-01-22 101937.png','pending','aswathi@123','Opthalmologist','aswathi@gmail.com'),(10,'fghj',234,'Male','fghj','nm','dfgh','Screenshot 2026-01-22 101748.png','Screenshot 2026-01-22 101844.png','pending','shi@1234','xcvbn','shi@gmail.com'),(11,'Dr.Aadhithyan CP',1,'Male','MBBS,MD(Eye Specialist)','3 Years(TMH Hospital ,Calicut)','9098889098','Screenshot 2026-01-22 102629.png','Screenshot 2026-01-22 102211.png','pending','Aa','Opthalmologist','aadhithyan*gmail.co'),(12,'Dr Namitha ',33,'Female','MBBS(Hepatologist)','3 Years(DMS hospital,Chelari,Malappuram)','8678787656','Screenshot 2026-01-22 102441.png','Screenshot 2026-01-22 102012.png','pending','Namitha@123','Hepatology','namitha@gmail.com');
/*!40000 ALTER TABLE `docter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doubt`
--

DROP TABLE IF EXISTS `doubt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doubt` (
  `doubt_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doubt` varchar(50) NOT NULL,
  `responce` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`doubt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doubt`
--

LOCK TABLES `doubt` WRITE;
/*!40000 ALTER TABLE `doubt` DISABLE KEYS */;
INSERT INTO `doubt` VALUES (1,1,1,'gggg','okkkkkkkk','2025-12-06','16:24:36'),(2,1,1,'ertyu','okkkkkkk','2025-12-31','15:33:31'),(3,1,1,'dfgh','','2025-12-31','15:39:29'),(4,1,1,'rtyujnbvcxawertyh','helloooo','2026-01-05','10:41:27'),(5,1,1,'','','2026-01-11','13:59:16'),(6,1,1,'ghg','','2026-01-11','14:01:05'),(7,1,1,'hi','','2026-01-11','14:02:15'),(8,9,9,'nothingg','Pending','2026-01-25','09:35:46'),(9,3,3,'Network issue','Pending','2026-01-26','07:16:29'),(10,3,3,'        okkk                ','Pending','2026-01-26','09:23:40'),(11,3,3,'         helooo               ','Pending','2026-01-26','11:55:59');
/*!40000 ALTER TABLE `doubt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `imagee` varchar(500) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','admin',1,'admin'),(2,'minu','minu@123',5,'user'),(3,'rty','1234',22,'doctor'),(4,'ssss','shi@1234',23,'doctor'),(5,'mmmmm','abc',14,'child_registor'),(6,'anuuu','anu@12',24,'doctor'),(7,'abc','',15,'child_registor'),(8,'anu','456',16,'child_registor'),(9,'anusree','anusree@123',25,'doctor'),(10,'shyma','shyma@123',26,'doctor'),(11,'anagha','anagha@123',27,'doctor'),(12,'shi','shi@1234',6,'user'),(13,'adharsh k','4dharx',7,'user'),(14,'anagha','anaha',28,'doctor'),(15,'Netheesh Kumar Reddy','reddy@123',1,'doctor'),(16,'anusreeee','anusree@123',17,'child_registor'),(17,'mithuna','mithuna@123',2,'doctor'),(18,'kichu','kichu@123',8,'user'),(19,'mikku@gmail.com','mikku@123',9,'user'),(20,'reddy@gmail.com','reddy@123',1,'doctor'),(21,'renuka@gmail.com','renuka@123',2,'doctor'),(22,'danshika@gmail.com','dhanshika@123',3,'doctor'),(23,'rony@gmail.com','rony@123',4,'doctor'),(24,'jerin@gmail.com','jerin@123',5,'doctor'),(25,'divya@gmail.com','divya@123',6,'doctor'),(26,'sandya@gmail.com','sandya@123',7,'doctor'),(27,'anandh@gmail.com','anandh@123',8,'doctor'),(28,'aswathi@gmail.com','aswathi@123',9,'doctor'),(29,'anusree@gmail.com','anusree@123',1,'user'),(30,'mithuna@gmail.com','mithuna@123',1,'child_registor'),(31,'nithara@gmail.com','nithara@123',2,'child_registor'),(32,'dharmik@gmail.com','dharmik@123',3,'child_registor'),(33,'shilpa@gmail.com','shilpa@123',4,'child_registor'),(34,'rana@gmail.com','rana@123',5,'child_registor'),(35,'avin@gmail.com','avin@123',6,'child_registor'),(36,'shi@gmail.com','shi@1234',10,'doctor'),(37,'jerin@gmail.com','jerin@123',5,'doctor'),(38,'minnu@gmail.com','Minnu@123',2,'user'),(39,'shijin@gmail.com','Shijin@123',3,'user'),(40,'anurag@gmail.com','Anurag@123',4,'user'),(41,'anusree@gmail.com','Anusree@123',7,'child_registor'),(42,'aadhithyan*gmail.co','Aa',11,'doctor'),(43,'namitha@gmail.com','Namitha@123',12,'doctor'),(44,'rohith@gmail.com','Rohith@123',5,'user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `medicinee` varchar(30) NOT NULL,
  `time` time NOT NULL,
  `dose` varchar(30) NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report` varchar(500) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,1,'Screenshot 2026-01-22 102030.png'),(2,1,1,''),(3,1,1,''),(4,1,1,''),(5,1,1,''),(6,1,1,'Screenshot 2025-09-09 090651.png'),(7,1,1,'Screenshot 2025-01-05 230441.png'),(8,1,1,'Screenshot 2025-01-05 234136.png'),(9,1,1,'Screenshot 2025-01-05 234136.png'),(10,12,12,'Screenshot 2026-01-22 102030.png'),(11,12,12,'Screenshot 2026-01-22 102030.png');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `review` varchar(50) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,'nnnnnnnn','4','2025-12-31','15:57:29'),(2,1,'asd','ddf','2025-12-31','15:57:52'),(3,1,'fgh','5','2025-12-31','15:58:42'),(4,1,'edrftgyhujikl,mjnh','5','2026-01-05','11:22:29'),(5,9,'sdfg','2','2026-01-25','11:43:17'),(6,12,'goddddddddddddddddddd','2','2026-01-26','10:10:04'),(7,12,'734','1','2026-01-26','10:11:48');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Anusree',21,'Female','Thayyil(H),Calicut','9746564290','O-','anusree@123','pending','anusree@gmail.com'),(2,'minnu',19,'Female','thayyil house ','9090909898','O-','Minnu@123','reject','minnu@gmail.com'),(3,'Shijin E',21,'Male','Edakkat House','9544665091','O+','Shijin@123','pending','shijin@gmail.com'),(4,'Anurag',23,'Male','Aaaaaaa','8787878909','O-','Anurag@123','pending','anurag@gmail.com'),(5,'Rohith MP',24,'Male','Kayanippadam(H)','8990098789','O+','Rohith@123','pending','rohith@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccine` (
  `vaccine_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `details` varchar(200) NOT NULL,
  PRIMARY KEY (`vaccine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine`
--

LOCK TABLES `vaccine` WRITE;
/*!40000 ALTER TABLE `vaccine` DISABLE KEYS */;
INSERT INTO `vaccine` VALUES (1,'fgh','sdfg'),(2,'ertyujert','ertgyh'),(3,'kk','hiiii'),(4,'tetanus','5 years'),(5,'',''),(6,'Tatanus','5 years,10 Years'),(7,'BCG','3,4,5 Years');
/*!40000 ALTER TABLE `vaccine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-26 12:14:42
