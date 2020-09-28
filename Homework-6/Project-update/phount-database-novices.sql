CREATE DATABASE `phount` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `expertise-category` (
  `category-id` int NOT NULL AUTO_INCREMENT,
  `category-name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `expertise-subject` (
  `subject-id` int NOT NULL AUTO_INCREMENT,
  `subject-name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`subject-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `experts` (
  `user-id` int NOT NULL AUTO_INCREMENT,
  `user-name` varchar(100) DEFAULT NULL,
  `password` varbinary(50) DEFAULT NULL,
  `first-name` varchar(100) DEFAULT NULL,
  `last-name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address-1` varchar(100) DEFAULT NULL,
  `address-2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `expertise-category` int DEFAULT NULL,
  `expertise-subject` int DEFAULT NULL,
  `expertscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='				';
CREATE TABLE `novices` (
  `user-id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `user-name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `first-name` varchar(100) DEFAULT NULL,
  `last-name` varchar(100) DEFAULT NULL,
  `address-1` varchar(100) DEFAULT NULL,
  `address-2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state-id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `expertise-category` int DEFAULT NULL,
  PRIMARY KEY (`user-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
