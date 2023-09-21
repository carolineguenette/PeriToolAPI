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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `idClient` int unsigned NOT NULL AUTO_INCREMENT,
  `lastName` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `partnerName` varchar(45) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `etablishmentID` int unsigned NOT NULL,
  `addressStreet` varchar(100) DEFAULT NULL,
  `addressCity` varchar(45) DEFAULT NULL,
  `addressProvince` varchar(45) DEFAULT NULL,
  `addressCountry` varchar(45) DEFAULT NULL,
  `addressPostalCode` varchar(45) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `telephone1Label` varchar(45) DEFAULT NULL,
  `telephone1Number` varchar(45) DEFAULT NULL,
  `telephone2Label` varchar(45) DEFAULT NULL,
  `telephone2Number` varchar(45) DEFAULT NULL,
  `creationDate` datetime NOT NULL,
  `createdByID` int unsigned NOT NULL,
  `lastUpdateDate` datetime DEFAULT NULL,
  `lastUpdatedByID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `idClient_UNIQUE` (`idClient`),
  KEY `Client-Etablishment_idx` (`etablishmentID`),
  KEY `Client-CreatedBy_idx` (`createdByID`),
  KEY `Client-UpdatedBy_idx` (`lastUpdatedByID`),
  CONSTRAINT `` FOREIGN KEY (`createdByID`) REFERENCES `users` (`idUser`),
  CONSTRAINT `Client-CreatedBy` FOREIGN KEY (`createdByID`) REFERENCES `users` (`idUser`) ON DELETE RESTRICT,
  CONSTRAINT `Client-Etablishment` FOREIGN KEY (`etablishmentID`) REFERENCES `etablishments` (`idEtablishment`) ON DELETE RESTRICT,
  CONSTRAINT `Client-UpdatedBy` FOREIGN KEY (`lastUpdatedByID`) REFERENCES `users` (`idUser`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'St-Pierre','Allison','Éric',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-03 18:02:47',1,NULL,NULL),(2,'Landry','Rébecca','Sébastin',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-03 18:08:57',1,NULL,NULL),(3,'Ardouin','Chloé','Isabelle',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-03 18:10:41',1,NULL,NULL),(4,'Del Amos','Carmen','Jose',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-03 18:16:05',1,NULL,NULL),(5,'Del Amos','Carmen','Jose',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-03 18:16:16',1,NULL,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
