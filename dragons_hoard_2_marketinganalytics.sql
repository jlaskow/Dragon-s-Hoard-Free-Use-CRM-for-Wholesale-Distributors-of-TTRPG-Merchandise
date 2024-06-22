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
-- Table structure for table `marketinganalytics`
--

DROP TABLE IF EXISTS `marketinganalytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketinganalytics` (
  `AnalyticsID` int NOT NULL,
  `MetricName` varchar(45) DEFAULT NULL,
  `MetricValue` decimal(10,0) DEFAULT NULL,
  `MetricDate` varchar(45) DEFAULT NULL,
  `CampaignID` int NOT NULL,
  PRIMARY KEY (`AnalyticsID`),
  KEY `fk_marketinganalytics_MarketingCampaigns1_idx` (`CampaignID`),
  CONSTRAINT `fk_marketinganalytics_MarketingCampaigns1` FOREIGN KEY (`CampaignID`) REFERENCES `marketingcampaigns` (`CampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinganalytics`
--

LOCK TABLES `marketinganalytics` WRITE;
/*!40000 ALTER TABLE `marketinganalytics` DISABLE KEYS */;
INSERT INTO `marketinganalytics` VALUES (1,'Click-through Rate',0,'2024-06-20',1),(2,'Conversion Rate',0,'2024-06-20',1),(3,'Click-through Rate',0,'2024-06-21',2),(4,'Conversion Rate',0,'2024-06-21',2),(5,'Click-through Rate',0,'2024-06-22',3),(6,'Conversion Rate',0,'2024-06-22',3),(7,'Click-through Rate',0,'2024-06-23',4),(8,'Conversion Rate',0,'2024-06-23',4),(9,'Click-through Rate',0,'2024-06-24',5),(10,'Conversion Rate',0,'2024-06-24',5);
/*!40000 ALTER TABLE `marketinganalytics` ENABLE KEYS */;
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
