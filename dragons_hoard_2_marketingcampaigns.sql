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
-- Table structure for table `marketingcampaigns`
--

DROP TABLE IF EXISTS `marketingcampaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketingcampaigns` (
  `CampaignID` int NOT NULL AUTO_INCREMENT,
  `CampaignName` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL,
  `Channel` varchar(100) DEFAULT NULL,
  `TargetAudience` varchar(255) DEFAULT NULL,
  `CampaignType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CampaignID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingcampaigns`
--

LOCK TABLES `marketingcampaigns` WRITE;
/*!40000 ALTER TABLE `marketingcampaigns` DISABLE KEYS */;
INSERT INTO `marketingcampaigns` VALUES (1,'Summer Sale Campaign','2024-06-01','2024-06-30',5000.00,'Online','General public','Sales promotion'),(2,'Back to School Campaign','2024-08-01','2024-09-15',8000.00,'Online and Offline','Students and parents','Seasonal promotion'),(3,'Holiday Season Campaign','2024-11-01','2024-12-31',10000.00,'Online and TV','Families','Seasonal promotion'),(4,'New Year Campaign','2025-01-01','2025-01-31',3000.00,'Social Media','Young adults','Special event promotion'),(5,'Spring Collection Launch','2025-03-01','2025-03-31',6000.00,'Online and Print','Fashion enthusiasts','Product launch');
/*!40000 ALTER TABLE `marketingcampaigns` ENABLE KEYS */;
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
