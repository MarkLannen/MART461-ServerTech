-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: phount
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
-- Table structure for table `experts`
--

DROP TABLE IF EXISTS `experts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experts` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `expertise_category` int DEFAULT NULL,
  `expertise_subject` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experts`
--

LOCK TABLES `experts` WRITE;
/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` VALUES (1,'Mark','Lannen','1714 Schilling Street',NULL,'Missoula',NULL,'59801','USA','marklannen@gmail.com',NULL,'marklannen',NULL,1,1),(2,'Mark','Lannen','1234 Main St','Apt. 5','Missoula',27,'59801','USA','mark@lannen.com','123-456-7890','mLannen','test1234',NULL,NULL),(3,'Neal','Peart','1234 Main St','Apt. 15','Santa Cruz',5,'95060','United States','neal@rush.com','+11236543333','nPeart','test1234',NULL,NULL),(4,'Neal','Peart','1234 Main St','Apt. 15','Santa Cruz',5,'95060','United States','neal@rush.com','+11236543333','nPeart','test1234',NULL,NULL),(5,'Alex','Lifeson','123 Rush Ln','Apt 17','Toronto',27,'59801','Canada','alex@rush.com','1234567890','aLifeson','test123',NULL,NULL),(6,'Alex','Lifeson','123 Rush Ln','Apt 17','Toronto',27,'59801','Canada','alex@rush.com','1234567890','aLifeson','test123',NULL,NULL),(7,'Perry','Farrell','123 Main','Apt. 5','Los Angeles',5,'00113','United States','perry@janes.com','1234567890','pFarrell','test123',NULL,NULL),(12,'Shuddhabha','Lannen','1714 Schilling','#1','Missoula',27,'59801','USA','shuddhabha@lannen.com','1234567890','ShuddhabaL','test123',NULL,NULL),(36,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(37,'test','teest','test','test','test',5,'test','test','test','test','test','test',NULL,NULL),(38,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(39,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(40,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(41,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(42,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(43,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL),(44,'Michael','Cassens','123 Main','Apt 5','Missoula',27,'59801','USA','m@c.com','1234567890','mCassens','test123',NULL,NULL);
/*!40000 ALTER TABLE `experts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:17:35
