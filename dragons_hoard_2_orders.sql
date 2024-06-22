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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `TotalAmmount` decimal(10,2) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT NULL,
  `ShippingAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `OrderID_UNIQUE` (`OrderID`),
  KEY `FK_Orders_Distributors_idx` (`CustomerID`),
  CONSTRAINT `FK_Orders_Distributors` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-05-15',3,89.99,'Shipped','123 Main St, Anytown, CA 12345'),(2,'2023-05-16',7,45.50,'Delivered','456 Elm St, Springfield, IL 67890'),(3,'2023-05-17',12,127.75,'Shipped','789 Oak St, Gotham City, NY 54321'),(4,'2023-05-18',5,35.00,'Delivered','321 Pine St, Smallville, KS 24680'),(5,'2023-05-19',1,52.99,'Pending','567 Maple St, Metropolis, DC 13579'),(6,'2023-05-20',9,74.49,'Shipped','876 Cedar St, Star City, CA 97531'),(7,'2023-05-21',8,19.99,'Shipped','234 Birch St, Central City, MO 86420'),(8,'2023-05-22',10,109.95,'Delivered','432 Spruce St, Coast City, WA 86420'),(9,'2023-05-23',2,29.99,'Delivered','654 Fir St, Atlantis, FL 24680'),(10,'2023-05-24',15,42.00,'Shipped','876 Oak St, Wakanda, NJ 97531'),(11,'2023-05-25',4,15.99,'Shipped','432 Willow St, Asgard, TX 13579'),(12,'2023-05-26',6,68.50,'Delivered','987 Pine St, Olympus, CA 97531'),(13,'2023-05-27',11,39.95,'Shipped','321 Cedar St, Themyscira, WA 86420'),(14,'2023-05-28',13,82.75,'Shipped','543 Elm St, Mordor, MO 97531'),(15,'2023-05-29',14,25.99,'Delivered','789 Maple St, Xanadu, IL 24680'),(16,'2023-06-01',3,55.00,'Shipped','123 Main St, Anytown, CA 12345'),(17,'2023-06-02',7,85.99,'Delivered','456 Elm St, Springfield, IL 67890'),(18,'2023-06-03',12,22.50,'Pending','789 Oak St, Gotham City, NY 54321'),(19,'2023-06-04',5,125.75,'Shipped','321 Pine St, Smallville, KS 24680'),(20,'2023-06-05',1,38.00,'Delivered','567 Maple St, Metropolis, DC 13579'),(21,'2023-06-06',9,49.99,'Shipped','876 Cedar St, Star City, CA 97531'),(22,'2023-06-07',8,69.99,'Shipped','234 Birch St, Central City, MO 86420'),(23,'2023-06-08',10,15.50,'Delivered','432 Spruce St, Coast City, WA 86420'),(24,'2023-06-09',2,105.00,'Shipped','654 Fir St, Atlantis, FL 24680'),(25,'2023-06-10',15,32.99,'Delivered','876 Oak St, Wakanda, NJ 97531'),(26,'2023-06-11',4,75.00,'Shipped','234 Pine St, Smalltown, TX 54321'),(27,'2023-06-12',11,18.99,'Delivered','567 Elm St, Sunnydale, CA 67890'),(28,'2023-06-13',6,39.50,'Pending','789 Oak St, Hill Valley, CA 13579'),(29,'2023-06-14',13,95.25,'Shipped','321 Maple St, Rivertown, IL 97531'),(30,'2023-06-15',3,55.00,'Delivered','123 Main St, Anytown, CA 12345'),(31,'2023-06-16',7,85.99,'Shipped','456 Elm St, Springfield, IL 67890'),(32,'2023-06-17',12,22.50,'Delivered','789 Oak St, Gotham City, NY 54321'),(33,'2023-06-18',5,125.75,'Shipped','321 Pine St, Smallville, KS 24680'),(34,'2023-06-19',1,38.00,'Delivered','567 Maple St, Metropolis, DC 13579'),(35,'2023-06-20',9,49.99,'Shipped','876 Cedar St, Star City, CA 97531'),(36,'2023-06-21',8,69.99,'Delivered','234 Birch St, Central City, MO 86420'),(37,'2023-06-22',10,15.50,'Shipped','432 Spruce St, Coast City, WA 86420'),(38,'2023-06-23',2,105.00,'Delivered','654 Fir St, Atlantis, FL 24680'),(39,'2023-06-24',15,32.99,'Shipped','876 Oak St, Wakanda, NJ 97531'),(40,'2023-06-25',4,75.00,'Delivered','234 Pine St, Smalltown, TX 54321'),(41,'2023-06-26',11,18.99,'Shipped','567 Elm St, Sunnydale, CA 67890'),(42,'2023-06-27',6,39.50,'Delivered','789 Oak St, Hill Valley, CA 13579'),(43,'2023-06-28',13,95.25,'Shipped','321 Maple St, Rivertown, IL 97531'),(44,'2023-06-29',3,55.00,'Delivered','123 Main St, Anytown, CA 12345'),(45,'2023-06-30',7,85.99,'Shipped','456 Elm St, Springfield, IL 67890'),(46,'2023-07-01',12,42.75,'Pending','789 Oak St, Gotham City, NY 54321'),(47,'2023-07-02',5,89.50,'Shipped','321 Pine St, Smallville, KS 24680'),(48,'2023-07-03',1,28.00,'Delivered','567 Maple St, Metropolis, DC 13579'),(49,'2023-07-04',9,54.99,'Shipped','876 Cedar St, Star City, CA 97531'),(50,'2023-07-05',8,49.99,'Delivered','234 Birch St, Central City, MO 86420');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  7:40:30
