-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'lcosford10@wix.com	','Loreen','Cosford',NULL),(9,'mlukasik2@adobe.com','Madlen','Lukasik',NULL),(10,'eneljes3@nba.com','Ellette','Neljes',NULL),(12,'mellinghama@rakuten.co.jp','Max','Ellingham',NULL),(13,'dpolfere@artisteer.com','Deny','Polfer',NULL),(14,'aheliet10@bluehost.com','Alyosha','Heliet',NULL),(15,'rcavilh@theguardian.com','Roger','Cavil',NULL),(16,'kheineri@europa.eu','Kacie','Heiner',NULL),(18,'chelkin78@ft.com','Cloe','Helkin','anh-the.jpg'),(19,'jawcoateu@hp.com','Jemmie','Awcoate',NULL),(20,'nlorentzen15@harvard.edu','Nilson','Lorentzen',NULL),(21,'lcowderoy1f@china.com.cn','Lucian','Cowderoy',NULL),(23,'gsnasdelln@huffingtonpost.com','Ginny','Snasdell',NULL),(24,'ppullmano@nationalgeographic.com','Phillipp','Pullman',NULL),(26,'upaolinow@joomla.org','Ulrich','Paolino',NULL),(28,'tseleway21@nifty.com','Thor','Seleway','thor.jpg'),(29,'wjerrand3k@sun.com','Wit','Jerrand','michael-yeoh_20190207111733_theedgemarkets.jpg'),(31,'tdamrel9r@hostgator.com','Torr','Damrel','images.jfif'),(32,'spiderman10@bluehost.com','Tom','Holland','wp4585578.jpg'),(50,'brucebannerA@gmail.com','Bruce','Banner','220px-Mark_Ruffalo_in_2017_by_Gage_Skidmore.jpg'),(51,'xxxxx12@gmail.com','new','one','main_image.jfif'),(52,'justinbber70@gmail.com','Justin','Bieber','justin.jpg'),(53,'gskakunas0@mozilla.org','Gretel','Skakunas',NULL),(54,'ekopisch1@scribd.com','Eadie','Kopisch',NULL),(55,'dculver2@angelfire.com','Davie','Culver',NULL),(56,'bandreas3@msu.edu','Bank','Andreas',NULL),(57,'sbrundell4@foxnews.com','Staci','Brundell',NULL),(58,'ocaudrey9@alibaba.com','Ode','Caudrey',NULL),(59,'dcanetj@yelp.com','Dela','Canet',NULL),(61,'mgladyerl@networksolutions.com','Matthiew','Gladyer',NULL),(62,'sledwitchp@hubpages.com','Sarine','Ledwitch','asa.jpg'),(63,'bzanazzit@bigcartel.com','Byram','Zanazzi','BB1d5nmP.png');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 14:13:57
