-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: peritool
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `pregnancies`
--

DROP TABLE IF EXISTS `pregnancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregnancies` (
  `idPregnancy` int unsigned NOT NULL AUTO_INCREMENT,
  `clientId` int unsigned NOT NULL,
  `careResponsibleID` int unsigned DEFAULT NULL,
  `dpa` date DEFAULT NULL,
  `ddm_calculate` date DEFAULT NULL,
  `gravida` tinyint DEFAULT NULL,
  `para` tinyint DEFAULT NULL,
  `aborta` tinyint DEFAULT NULL,
  `deliveryPlaceExpected` varchar(45) DEFAULT NULL,
  `deliveryPlaceReal` varchar(45) DEFAULT NULL,
  `bloodGroupID` int unsigned DEFAULT NULL,
  `isAVAC` tinyint unsigned NOT NULL DEFAULT '0',
  `strepBStatus` varchar(45) DEFAULT 'Non testé',
  `babyName` varchar(45) DEFAULT NULL,
  `gaveBirth` tinyint unsigned NOT NULL DEFAULT '0',
  `deliveryDate` datetime DEFAULT NULL,
  `isArchived` tinyint NOT NULL DEFAULT '0',
  `creationDate` datetime NOT NULL,
  `createdByID` int unsigned NOT NULL,
  `lastUpdateDate` datetime DEFAULT NULL,
  `lastUpdateddByID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idPregnancy`),
  UNIQUE KEY `iPpregnancy_UNIQUE` (`idPregnancy`),
  KEY `Pregnancy-CreatedBy_idx` (`createdByID`),
  KEY `Pregnancy-LastUpdatedBy_idx` (`lastUpdateddByID`),
  KEY `Pregnancy-BloodGroup_idx` (`bloodGroupID`),
  KEY `Pregnancy-Client_idx` (`clientId`),
  KEY `Pregnancy-CareResponsible_idx` (`careResponsibleID`),
  CONSTRAINT `Pregnancy-BloodGroup` FOREIGN KEY (`bloodGroupID`) REFERENCES `_bloodGroups` (`idBloodGroup`) ON DELETE RESTRICT,
  CONSTRAINT `Pregnancy-CareResponsible` FOREIGN KEY (`careResponsibleID`) REFERENCES `users` (`idUser`) ON DELETE RESTRICT,
  CONSTRAINT `Pregnancy-Client` FOREIGN KEY (`clientId`) REFERENCES `clients` (`idClient`) ON DELETE RESTRICT,
  CONSTRAINT `Pregnancy-CreatedBy` FOREIGN KEY (`createdByID`) REFERENCES `users` (`idUser`) ON DELETE RESTRICT,
  CONSTRAINT `Pregnancy-LastUpdatedBy` FOREIGN KEY (`lastUpdateddByID`) REFERENCES `users` (`idUser`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregnancies`
--

LOCK TABLES `pregnancies` WRITE;
/*!40000 ALTER TABLE `pregnancies` DISABLE KEYS */;
INSERT INTO `pregnancies` VALUES (1,1,1,'2024-03-07',NULL,1,0,0,NULL,NULL,NULL,0,'Non testé',NULL,0,NULL,0,'2023-09-03 18:04:40',1,NULL,NULL),(2,2,1,'2021-02-04',NULL,1,0,0,NULL,NULL,NULL,0,'Non testé','Lily',1,'2021-02-11 00:00:00',1,'2023-09-03 18:08:57',1,'2021-02-11 00:00:00',1),(3,2,1,'2024-05-16',NULL,2,1,0,NULL,NULL,NULL,1,'Non testé',NULL,0,NULL,0,'2023-09-03 18:09:52',1,NULL,NULL),(4,3,2,'2024-01-31',NULL,4,2,1,NULL,NULL,NULL,0,'Non testé',NULL,0,NULL,0,'2023-09-03 18:10:41',1,NULL,NULL),(5,5,1,'2023-09-02',NULL,3,2,0,NULL,NULL,NULL,0,'Non testé',NULL,0,NULL,0,'2023-09-03 18:16:16',1,NULL,NULL),(6,4,2,'2023-09-01',NULL,1,0,0,NULL,NULL,NULL,0,'Non testé','Fabien',1,'2023-09-01 09:31:00',0,'2023-09-03 18:19:00',1,NULL,NULL),(7,3,1,'2020-05-04',NULL,3,1,0,NULL,NULL,NULL,0,'Négatif','Ernest',1,'2021-02-11 09:31:00',1,'2023-09-03 18:19:00',1,NULL,NULL);
/*!40000 ALTER TABLE `pregnancies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-03 18:39:16
