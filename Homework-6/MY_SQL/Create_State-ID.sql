CREATE DATABASE `esports` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `admins` (
  `first-name` varchar(100) DEFAULT NULL,
  `last-name` varchar(100) DEFAULT NULL,
  `admin-id` int NOT NULL AUTO_INCREMENT,
  `street-1` varchar(100) DEFAULT NULL,
  `street-2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state-id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `user-name` varchar(50) NOT NULL,
  `password` varbinary(50) NOT NULL,
  `gamer-tag` varchar(50) DEFAULT NULL,
  `games-played` varchar(50) DEFAULT NULL,
  `subscribe-to-correspondence` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`admin-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `games-played` (
  `game-name` varchar(50) DEFAULT NULL,
  `game-id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`game-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `players` (
  `player-id` int NOT NULL AUTO_INCREMENT,
  `first-name` varchar(100) DEFAULT NULL,
  `last-name` varchar(100) DEFAULT NULL,
  `address-1` varchar(100) DEFAULT NULL,
  `address-2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state-id` int DEFAULT NULL,
  `zip` varchar(14) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `user-name` varchar(50) NOT NULL,
  `password` varbinary(50) NOT NULL,
  `gamer-tag` varchar(50) DEFAULT NULL,
  `games-played` varchar(50) DEFAULT NULL,
  `subscribe-to-correspondence` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`player-id`),
  UNIQUE KEY `player-id_UNIQUE` (`player-id`),
  UNIQUE KEY `user-name_UNIQUE` (`user-name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `state-id` (
  `state-id` int NOT NULL AUTO_INCREMENT,
  `state-name` varchar(50) DEFAULT NULL,
  `state-abbreviation` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`state-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
