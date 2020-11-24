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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experts`
--

LOCK TABLES `experts` WRITE;
/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` VALUES (141,'Mark','Lannen','555 Main St','#5','Missoula',27,'59801','United States','mark@lannen.com','1234567890','mLannen','test123',NULL,NULL),(142,'Neal','Peart','1234 Main St','Apt. 15','Santa Cruz',5,'95060','United States','neal@rush.com','+11236543333','nPeart','test123',NULL,NULL),(143,'Geddy','Lee','123 Main','Apt 5','Toronto',23,'59801','Canada','geddy@rush.com','1234567890','gLee','test123',NULL,NULL),(144,'Alex','Lifeson','123 Rush Ln','Apt 17','Toronto',51,'59801','Canada','alex@rush.com','1234567890','aLifeson','test123',NULL,NULL),(145,'Ian','McKaye','123 Main','Blvd','Washington',9,'00001','United States','ian@fugazi.com','9990001234','iMckaye','test123',NULL,NULL),(146,'Brendan','Canty','567 Main','Circle','Washington',9,'00001','United States','brendan@fugazi.com','9995551234','bCanty','test123',NULL,NULL),(147,'Guy','Picciotto','123 North','#5','Washington',9,'00001','United States','guy@fugazi.com','9995551234','gPicciotto','test123',NULL,NULL),(148,'Joe','Lalley','456 Central','#3','Washington',9,'56765','USA','joe@fugazi.com','3456543123','jLalley','test123',NULL,NULL),(149,'Perry','Farrell','123 Main','Apt. 5','Los Angeles',5,'00113','United States','perry@janes.com','1234567890','pFarrell','test123',NULL,NULL),(150,'Dave','Navarro','123 Main','Apt 5','Long Beach',5,'30890','United States','dave@janes.com','1234567890','dNavarro','test123',NULL,NULL),(151,'Stephen','Perkins','123 Main','Apt. 5','Long Beach',5,'00113','United States','stephen@janes.com','1234567890','sPerkins','test123',NULL,NULL),(152,'Eric','Aker','123 Janes Boulevard','#15','Long Beach',5,'90712','United States','eric@janes.com','+15555559999','eAker','test123',NULL,NULL),(153,'Joe','Strummer','#5','Sandanista Ln','London',22,'CB5 8DW','UK','joe@clash.com','01223 327 253','jStrummer','test123',NULL,NULL),(154,'Mick','Jones','#4','Sandanista Ln','Londo',40,'45g LE2','UK','mick@clash.com','456 789','mJones','test123',NULL,NULL),(155,'Topper ','Headon','#1 ','Drum Cir','London',11,'654 UJ8','UK','topper@clash.com','342 098','tHeadon','test123',NULL,NULL),(156,'Paul','Simonon','#9','Bass Rd','London',39,'87R LE4','UK','paul@clash.com','545 777','pSimonon','test123',NULL,NULL),(157,'Johnny','Rotten','76 Anarchy Way','Apt. 15','Los Angeles',5,'12335','United States','johnny@pistols.com','+11234565789','jRotten','test123',NULL,NULL),(158,'Steve','Jones','#1','Queens Rd','London',13,'45T yh7','UK','steve@pistols.com','34587987','sJones','test123',NULL,NULL),(159,'Sid','Vicious','# 7','My Way','London',33,'54321','UK','sid@pistols.com','555 889','sVicious','test123',NULL,NULL),(160,'Paul','Cook','#4 ','Anarchy Rd','London',27,'654 UJ8','United Kingdom','paul@pistols.com','342098','pCook','test123',NULL,NULL),(161,'Eddie','Van Halen','#1','Strat Way','Long Beach',5,'015150','USA','eddie@halen.com','2345 68790','eHalen','test123',NULL,NULL),(162,'David','Lee Roth','#3','Diamond Way','Long Beach',5,'65432','USA','dave@halen.com','2346  66 6666','dHalen','test123',NULL,NULL),(163,'Michael','Anthony','#4','Bass Rd','Missoula',27,'59801','United States','michael@halen.com','1234567890','mAnthony','test123',NULL,NULL),(164,'Alex','Van Halen','#9 ','Drum Cir','Long Beach',5,'56789','USA','alex@halen.com','test123','aHalen','test123',NULL,NULL),(165,'Test','TEst','Test','Test','Test',1,'Test','Test','Test','Test','Test','test123',NULL,NULL),(166,'Test','Test','Test','Test','Test',1,'Test','Test','Test','Test','Test','Test',NULL,NULL),(167,'Mark','Smith','123 Main','#5','Missoula',27,'59801','USA','mark@gmail.com','123 456 7890','mSmith','test123',NULL,NULL);
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

-- Dump completed on 2020-11-23 21:07:03
