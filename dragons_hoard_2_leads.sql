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
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `LeadsID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `LeadSource` varchar(100) DEFAULT NULL,
  `LeadStatus` varchar(100) DEFAULT NULL,
  `EstimatedValue` decimal(10,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `FollowUpDate` date DEFAULT NULL,
  PRIMARY KEY (`LeadsID`),
  KEY `FK_Leads_Distributors_idx` (`CustomerID`),
  CONSTRAINT `FK_Leads_Distributors` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (1,1,'Website','20',500.00,'2024-06-20','2024-06-25'),(2,2,'Referral','40',1000.00,'2024-06-20','2024-06-24'),(3,3,'Advertisement','60',750.00,'2024-06-21','2024-06-26'),(4,4,'Website','30',600.00,'2024-06-21','2024-06-27'),(5,5,'Referral','50',1200.00,'2024-06-22','2024-06-28'),(6,6,'Advertisement','70',800.00,'2024-06-22','2024-06-29'),(7,7,'Website','25',550.00,'2024-06-23','2024-06-30'),(8,8,'Referral','45',950.00,'2024-06-23','2024-07-01'),(9,9,'Advertisement','65',700.00,'2024-06-24','2024-07-02'),(10,10,'Website','35',700.00,'2024-06-24','2024-07-03');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  7:40:31
