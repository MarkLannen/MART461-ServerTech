CREATE DATABASE  IF NOT EXISTS `esports` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `esports`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: esports
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_abbreviation` varchar(2) DEFAULT NULL,
  `state_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'AL','Alabama'),(2,'AK','Alaska'),(3,'AZ','Arizona'),(4,'AR','Arkansas'),(5,'CA','California'),(6,'CO','Colorado'),(7,'CT','Connecticut'),(8,'DE','Delaware'),(9,'DC','District of Columbia'),(10,'FL','Florida'),(11,'GA','Georgia'),(12,'HI','Hawaii'),(13,'ID','Idaho'),(14,'IL','Illinois'),(15,'IN','Indiana'),(16,'IA','Iowa'),(17,'KS','Kansas'),(18,'KY','Kentucky'),(19,'LA','Louisiana'),(20,'ME','Maine'),(21,'MD','Maryland'),(22,'MA','Massachusetts'),(23,'MI','Michigan'),(24,'MN','Minnesota'),(25,'MS','Mississippi'),(26,'MO','Missouri'),(27,'MT','Montana'),(28,'NE','Nebraska'),(29,'NV','Nevada'),(30,'NH','New Hampshire'),(31,'NJ','New Jersey'),(32,'NM','New Mexico'),(33,'NY','New York'),(34,'NC','North Carolina'),(35,'ND','North Dakota'),(36,'OH','Ohio'),(37,'OK','Oklahoma'),(38,'OR','Oregon'),(39,'PA','Pennsylvania'),(40,'PR','Puerto Rico'),(41,'RI','Rhode Island'),(42,'SC','South Carolina'),(43,'SD','South Dakota'),(44,'TN','Tennessee'),(45,'TX','Texas'),(46,'UT','Utah'),(47,'VT','Vermont'),(48,'VA','Virginia'),(49,'WA','Washington'),(50,'WV','West Virginia'),(51,'WI','Wisconsin'),(52,'WY','Wyoming');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 19:59:01
