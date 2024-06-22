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
-- Table structure for table `salesforecast`
--

DROP TABLE IF EXISTS `salesforecast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesforecast` (
  `ForecastID` int NOT NULL AUTO_INCREMENT,
  `ProductID` int DEFAULT NULL,
  `ForecastDate` date DEFAULT NULL,
  `ForecastQuantity` int DEFAULT NULL,
  `ForecastMethod` varchar(100) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`ForecastID`),
  KEY `FK_SalesForecast_Products_idx` (`ProductID`),
  CONSTRAINT `FK_SalesForecast_Products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesforecast`
--

LOCK TABLES `salesforecast` WRITE;
/*!40000 ALTER TABLE `salesforecast` DISABLE KEYS */;
INSERT INTO `salesforecast` VALUES (1,1,'2024-06-01',100,'Statistical analysis','2024-05-15'),(2,2,'2024-06-01',80,'Historical trends','2024-05-15'),(3,3,'2024-06-01',120,'Market research','2024-05-15'),(4,4,'2024-06-01',90,'Statistical analysis','2024-05-15'),(5,5,'2024-06-01',110,'Historical trends','2024-05-15'),(6,6,'2024-06-01',95,'Market research','2024-05-15'),(7,7,'2024-06-01',105,'Statistical analysis','2024-05-15'),(8,8,'2024-06-01',85,'Historical trends','2024-05-15'),(9,9,'2024-06-01',115,'Market research','2024-05-15'),(10,10,'2024-06-01',75,'Statistical analysis','2024-05-15'),(11,1,'2024-07-01',110,'Statistical analysis','2024-06-15'),(12,2,'2024-07-01',85,'Historical trends','2024-06-15'),(13,3,'2024-07-01',130,'Market research','2024-06-15'),(14,4,'2024-07-01',95,'Statistical analysis','2024-06-15'),(15,5,'2024-07-01',120,'Historical trends','2024-06-15'),(16,6,'2024-07-01',100,'Market research','2024-06-15'),(17,7,'2024-07-01',110,'Statistical analysis','2024-06-15'),(18,8,'2024-07-01',90,'Historical trends','2024-06-15'),(19,9,'2024-07-01',120,'Market research','2024-06-15'),(20,10,'2024-07-01',80,'Statistical analysis','2024-06-15'),(21,1,'2024-08-01',120,'Statistical analysis','2024-07-15'),(22,2,'2024-08-01',90,'Historical trends','2024-07-15'),(23,3,'2024-08-01',140,'Market research','2024-07-15'),(24,4,'2024-08-01',100,'Statistical analysis','2024-07-15'),(25,5,'2024-08-01',130,'Historical trends','2024-07-15'),(26,6,'2024-08-01',105,'Market research','2024-07-15'),(27,7,'2024-08-01',120,'Statistical analysis','2024-07-15'),(28,8,'2024-08-01',95,'Historical trends','2024-07-15'),(29,9,'2024-08-01',125,'Market research','2024-07-15'),(30,10,'2024-08-01',85,'Statistical analysis','2024-07-15'),(31,1,'2024-09-01',130,'Statistical analysis','2024-08-15'),(32,2,'2024-09-01',95,'Historical trends','2024-08-15'),(33,3,'2024-09-01',150,'Market research','2024-08-15'),(34,4,'2024-09-01',110,'Statistical analysis','2024-08-15'),(35,5,'2024-09-01',140,'Historical trends','2024-08-15'),(36,6,'2024-09-01',110,'Market research','2024-08-15'),(37,7,'2024-09-01',130,'Statistical analysis','2024-08-15'),(38,8,'2024-09-01',100,'Historical trends','2024-08-15'),(39,9,'2024-09-01',130,'Market research','2024-08-15'),(40,10,'2024-09-01',90,'Statistical analysis','2024-08-15');
/*!40000 ALTER TABLE `salesforecast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  7:40:32
