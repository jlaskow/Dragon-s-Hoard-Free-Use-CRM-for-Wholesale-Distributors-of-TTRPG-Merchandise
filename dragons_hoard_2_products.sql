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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(225) NOT NULL,
  `Description` longtext,
  `Category` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `ManufacturerID` int DEFAULT NULL,
  `StockQuantity` int DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`),
  KEY `FK_Products_Manufacturers_idx` (`ManufacturerID`),
  CONSTRAINT `FK_Products_Manufacturers` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'The Lost Mine of Phandelver','A classic introductory adventure for Dungeons & Dragons 5th Edition.','Adventure Module',29.99,1,50,'2023-01-01'),(2,'Curse of Strahd','Enter the domain of dread and face the vampire lord in this Gothic horror adventure.','Adventure Module',39.99,1,30,'2023-01-02'),(3,'Tomb of Annihilation','Explore the jungles of Chult and uncover the secrets of the Death Curse.','Adventure Module',34.99,1,40,'2023-01-03'),(4,'Dragon Heist','Embark on a treasure hunt through the streets of Waterdeep in this urban adventure.','Adventure Module',32.99,1,45,'2023-01-04'),(5,'Storm King\'s Thunder','Confront the giants threatening the Sword Coast in this epic adventure.','Adventure Module',37.99,2,35,'2023-01-05'),(6,'Out of the Abyss','Descend into the Underdark and survive its perils in this dark adventure.','Adventure Module',36.99,2,25,'2023-01-06'),(7,'Ghost of Saltmarsh','Sail the seas and uncover maritime mysteries in this coastal adventure.','Adventure Module',31.99,2,28,'2023-01-07'),(8,'Rise of Tiamat','Join forces to thwart the draconic goddess Tiamat\'s schemes in this climactic adventure.','Adventure Module',38.99,2,33,'2023-01-08'),(9,'Descent into Avernus','Embark on a journey through the first layer of the Nine Hells in this infernal adventure.','Adventure Module',39.99,3,37,'2023-01-09'),(10,'Hoard of the Dragon Queen','Foiled cultists\' plans and disrupt the Dragon Queen\'s draconic designs.','Adventure Module',33.99,3,42,'2023-01-10'),(11,'Waterdeep: Dungeon of the Mad Mage','Descend into the depths of Undermountain and survive the madness of Halaster Blackcloak.','Adventure Module',40.99,3,39,'2023-01-11'),(12,'Candlekeep Mysteries','Delve into a collection of short adventures set in the iconic library of Candlekeep.','Adventure Module',29.99,2,48,'2023-01-12'),(13,'Eberron: Rising from the Last War','Explore the war-torn world of Eberron and uncover its secrets in this campaign setting book.','Campaign Setting',44.99,1,31,'2023-01-13'),(14,'Explorer\'s Guide to Wildemount','Discover the continent of Wildemount and its rich lore in this campaign setting book.','Campaign Setting',42.99,2,36,'2023-01-14'),(15,'Van Richten\'s Guide to Ravenloft','Uncover horrors and create chilling adventures in the domains of dread with this gothic horror book.','Supplement',39.99,3,29,'2023-01-15'),(16,'Mythic Odysseys of Theros','Embark on epic adventures inspired by Greek mythology in the world of Theros.','Campaign Setting',37.99,4,32,'2023-01-16'),(17,'Strixhaven: A Curriculum of Chaos','Attend a magical university and explore the mysteries of Strixhaven in this campaign setting book.','Campaign Setting',33.99,4,27,'2023-01-17'),(18,'Icewind Dale: Rime of the Frostmaiden','Survive the frozen tundra of Icewind Dale and uncover its chilling secrets.','Adventure Module',35.99,4,34,'2023-01-18'),(19,'The Wild Beyond the Witchlight','Embark on a whimsical adventure into the Feywild with this colorful module.','Adventure Module',30.99,5,41,'2023-01-19'),(20,'Fizban\'s Treasury of Dragons','Uncover the lore of dragons and add new draconic options to your games with this supplement.','Supplement',28.99,5,46,'2023-01-20'),(21,'Dragon Miniature','Hand-painted dragon figurine for tabletop RPGs.','Figurine',12.99,5,50,'2023-01-21'),(22,'Elf Ranger Miniature','Detailed elf ranger miniature for tabletop games.','Figurine',8.99,5,40,'2023-01-22'),(23,'Orc Barbarian Miniature','Vicious orc barbarian miniature for battles on the tabletop.','Figurine',9.99,4,30,'2023-01-23'),(24,'Metal Dice Set','Heavy-duty metal dice set for a tactile gaming experience.','Dice Set',29.99,4,35,'2023-01-24'),(25,'Polyhedral Dice Set','Standard polyhedral dice set in assorted colors.','Dice Set',12.99,4,60,'2023-01-25'),(26,'Dwarven Forge Miniature Terrain','High-quality miniature terrain pieces for realistic tabletop settings.','Terrain',39.99,4,25,'2023-01-26'),(27,'Giant Spider Miniature','Creepy giant spider miniature for encounters in dark dungeons.','Figurine',14.99,4,20,'2023-01-27'),(28,'Crystal Dice Set','Translucent crystal dice set for a mystical gaming experience.','Dice Set',19.99,1,45,'2023-01-28'),(29,'Dragonborn Paladin Miniature','Noble dragonborn paladin miniature for heroic battles.','Figurine',10.99,2,38,'2023-01-29'),(30,'Wooden Dice Tray','Handcrafted wooden dice tray to keep your rolls fair and stylish.','Accessory',24.99,3,42,'2023-01-30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
