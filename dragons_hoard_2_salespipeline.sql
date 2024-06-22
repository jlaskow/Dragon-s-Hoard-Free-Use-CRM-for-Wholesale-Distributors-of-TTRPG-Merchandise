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
-- Table structure for table `salespipeline`
--

DROP TABLE IF EXISTS `salespipeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salespipeline` (
  `PipelineID` int NOT NULL,
  `StageName` varchar(45) DEFAULT NULL,
  `ProbabilityToClose` decimal(10,0) DEFAULT NULL,
  `ExpectedRevenue` int DEFAULT NULL,
  `StageDate` date DEFAULT NULL,
  `LeadsID` int NOT NULL,
  PRIMARY KEY (`PipelineID`),
  UNIQUE KEY `PipelineID_UNIQUE` (`PipelineID`),
  KEY `fk_salespipeline_Leads1_idx` (`LeadsID`),
  CONSTRAINT `fk_salespipeline_Leads1` FOREIGN KEY (`LeadsID`) REFERENCES `leads` (`LeadsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespipeline`
--

LOCK TABLES `salespipeline` WRITE;
/*!40000 ALTER TABLE `salespipeline` DISABLE KEYS */;
INSERT INTO `salespipeline` VALUES (1,'Prospecting',0,1000,'2024-05-15',1),(2,'Qualification',0,2500,'2024-05-16',2),(3,'Needs Analysis',1,1800,'2024-05-17',3),(4,'Value Proposition',1,3000,'2024-05-18',4),(5,'Decision Making',1,2000,'2024-05-19',5),(6,'Proposal/Price Quote',1,3500,'2024-05-20',6),(7,'Negotiation/Review',1,4000,'2024-05-21',7),(8,'Closed Won',1,5000,'2024-05-22',8),(9,'Prospecting',0,1200,'2024-05-23',9),(10,'Qualification',1,2800,'2024-05-24',10),(11,'Needs Analysis',1,2100,'2024-05-25',1),(12,'Value Proposition',1,3200,'2024-05-26',2),(13,'Decision Making',1,2300,'2024-05-27',3),(14,'Proposal/Price Quote',1,3800,'2024-05-28',4),(15,'Negotiation/Review',1,4200,'2024-05-29',5),(16,'Closed Won',1,5500,'2024-05-30',6),(17,'Prospecting',0,1400,'2024-05-31',7),(18,'Qualification',1,2600,'2024-06-01',8),(19,'Needs Analysis',1,1900,'2024-06-02',9),(20,'Value Proposition',1,3300,'2024-06-03',10),(21,'Decision Making',1,2100,'2024-06-04',1),(22,'Proposal/Price Quote',1,3900,'2024-06-05',2),(23,'Negotiation/Review',1,4300,'2024-06-06',3),(24,'Closed Won',1,5800,'2024-06-07',4),(25,'Prospecting',0,1600,'2024-06-08',5),(26,'Qualification',1,2700,'2024-06-09',6),(27,'Needs Analysis',1,2000,'2024-06-10',7),(28,'Value Proposition',1,3500,'2024-06-11',8),(29,'Decision Making',1,2200,'2024-06-12',9),(30,'Proposal/Price Quote',1,4000,'2024-06-13',10),(31,'Negotiation/Review',1,4500,'2024-06-14',1),(32,'Closed Won',1,6000,'2024-06-15',2),(33,'Prospecting',0,1800,'2024-06-16',3),(34,'Qualification',1,2900,'2024-06-17',4),(35,'Needs Analysis',1,2200,'2024-06-18',5),(36,'Value Proposition',1,3600,'2024-06-19',6),(37,'Decision Making',1,2400,'2024-06-20',7),(38,'Proposal/Price Quote',1,4100,'2024-06-21',8),(39,'Negotiation/Review',1,4600,'2024-06-22',9),(40,'Closed Won',1,6200,'2024-06-23',10),(41,'Prospecting',0,2000,'2024-06-24',1),(42,'Qualification',1,3100,'2024-06-25',2),(43,'Needs Analysis',1,2400,'2024-06-26',3),(44,'Value Proposition',1,3700,'2024-06-27',4),(45,'Decision Making',1,2600,'2024-06-28',5),(46,'Proposal/Price Quote',1,4200,'2024-06-29',6),(47,'Negotiation/Review',1,4700,'2024-06-30',7),(48,'Closed Won',1,6400,'2024-07-01',8),(49,'Prospecting',1,2200,'2024-07-02',9),(50,'Qualification',1,3200,'2024-07-03',10);
/*!40000 ALTER TABLE `salespipeline` ENABLE KEYS */;
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
