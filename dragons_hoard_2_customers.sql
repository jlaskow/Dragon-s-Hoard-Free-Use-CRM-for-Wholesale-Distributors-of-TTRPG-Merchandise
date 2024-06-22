-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dragons_hoard_2
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(225) NOT NULL,
  `Email` varchar(225) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Address` varchar(225) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Zip` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `CustomerType` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Fire and Ice Gaming','fireandice@example.com','123-456-7890','123 Main St','Anytown','CA','12345','USA','Retail','2023-01-01'),(2,'Jane Smith','janesmith@example.com','987-654-3210','456 Elm St','Smallville','TX','67890','USA','Individual','2023-01-02'),(3,'Great Escape Gaming','gegaming@example.com','555-123-4567','789 Oak Ave','Big City','NY','54321','USA','Retail','2023-01-03'),(4,'Sarah Brown','sarahb@example.com','222-333-4444','101 Pine Blvd','Cozyville','FL','98765','USA','Individual','2023-01-04'),(5,'Adventure is Nice','adventureisnice@example.com','444-555-6666','222 Cedar Dr','Mountainview','WA','13579','USA','Retail','2023-01-05'),(6,'Emily Davis','emilyd@example.com','777-888-9999','333 Spruce Ln','Lakeside','MI','24680','USA','Individual','2023-01-06'),(7,'Stinky Dragon','sd@example.com','333-222-1111','444 Birch St','Greenfield','OH','86420','USA','Retail','2023-01-07'),(8,'Olivia Garcia','oliviag@example.com','666-777-8888','555 Maple Ave','Sunshine','CA','97531','USA','Individual','2023-01-08'),(9,'Critical Store','cs@example.com','999-000-1111','666 Walnut Rd','Seaside','FL','12312','USA','Retail','2023-01-09'),(10,'Isabella Hernandez','isabellah@example.com','111-222-3333','777 Redwood Blvd','Hilltop','CA','54321','USA','Individual','2023-01-10'),(11,'The Adventure Zone','taz@example.com','111-000-9999','888 Magnolia St','Riverdale','TX','98765','USA','Retail','2023-01-11'),(12,'Sophia Lopez','sophial@example.com','222-333-4444','999 Pineapple Dr','Beachtown','FL','13579','USA','Individual','2023-01-12'),(13,'Good Time Society','gts@example.com','555-444-3333','123 Elmwood Ave','Meadowville','NY','86420','USA','Retail','2023-01-13'),(14,'Amelia Wilson','ameliaw@example.com','444-555-6666','456 Oakwood Rd','Highland','WA','97531','USA','Individual','2023-01-14'),(15,'Not Another DnD Shop','nadd@example.com','777-888-9999','789 Birch Ln','Mountainview','CA','12345','USA','Retail','2023-01-15');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  7:40:29
