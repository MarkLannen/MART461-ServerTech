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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `gamer_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player-id_UNIQUE` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Mark','Lannen','1234 Main Street','Apt 2','Missoula',26,'59801','USA','123-456-7890','marklannen@gmail.com','mLannen','test1234','gamer_MLannen'),(2,'Thurston','Moore','123 Main Street','Apt 1','New York',32,'59801','USA','123-456-7890','thurstonmoore@gmail.com','tMoore','test1234','gamer_TMoore'),(3,'Kim','Gordon','1234 Main Street','Apt 3','New York',32,'59801','USA','123-456-7890','kimgordon@gmail.com','kGordon','test1234','gamer_KGordon'),(4,'Lee','Ronaldo','123 Main Street','Apt 4','New York',32,'59801','USA','123-456-7890','leeronaldo@gmail.com','lRonaldo','test1234','gamer_LRonaldo'),(5,'Steve','Shelley','123 Main Street','Apt 5','New York',32,'59801','USA','123-456-7890','steveshelley@gmail.com','sShelly','test1234','gamer_SShelley'),(6,'Ian','McKaye','123 Main St','','Washington D.C.',51,'98765','USA','1234567812','ian@fugazi.com','iMcKellan','test123','IanM'),(7,'Stevie','Wonder','123 Main St','Apt 6','Philadelphia',40,'99999','USA','123456533','stevie@wonder.com','sWonder','test123','gamer_SWonder'),(20,'Joe','Lally',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jLally','test123',NULL),(21,'Eddie','Van Halen','123 Main St','Apt 5150','Pasadena',5,'OU182','USA','4567890345','eddie@vanhalen.com','eVanHalen','test123','gamer_eVanHalen'),(22,'Test','User','1','1','1',1,'1','1','1','1','1','1','1'),(38,'Robert','Smith','123 Main St','Apt 5','London',5,NULL,'England','441223327253','rob@cure.com','rSmith','test123','RobertS'),(39,'Alex','Lifeson','123 Main','Apt 5','Toronto',6,'59801','Canada','1234567890','alex@rush.com','aLifeson','test123','Alifeson'),(40,'Neal','Peart','123 Main','Apt 5','Santa Cruz',5,'12345','USA','1231231234','neal@rush.com','nPeart','test123','NealP'),(41,'Geddy','Lee','123 Main','Apt 5','Toronto',27,'59801','Canada','1234567890','geddy@rush.com','gLee','test123','GeddyL'),(42,'Terry','Brooks','123 Main','Apt 5','Toronto',27,'59801','Canada','1234567890','terry@rush.com','tBrooks','test123','TerryB'),(43,'Terry','Brooks','123 Main','Apt 5','Toronto',27,'59801','Canada','1234567890','terry@rush.com','tBrooks','test123','TerryB'),(44,'Terry','Brooks','123 Main','Apt 5','Toronto',27,'59801','Canada','1234567890','terry@rush.com','tBrooks','test123','TerryB'),(45,'Stephen ','Perkins','123 Main','Apt. 5','Long Beach',5,'00113','USA','1234567890','stephen@janes.com','&lt;script&gt;sPerkins&lt;/script&gt;','test1234','&lt;b&gt;StephenP&lt;/b&gt;');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-07  7:13:21
