CREATE DATABASE `phount` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `expertise-category` (
  `category-id` int NOT NULL AUTO_INCREMENT,
  `category-name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
