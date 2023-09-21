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
-- Table structure for table `_toolPercentilesBabyWeight`
--

DROP TABLE IF EXISTS `_toolPercentilesBabyWeight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_toolPercentilesBabyWeight` (
  `idPercentile` int unsigned NOT NULL AUTO_INCREMENT,
  `gestationnalAge` tinyint unsigned DEFAULT NULL,
  `sexeFr` varchar(10) DEFAULT NULL,
  `3e` smallint unsigned DEFAULT NULL,
  `5e` smallint unsigned DEFAULT NULL,
  `10e` smallint unsigned DEFAULT NULL,
  `50e` smallint unsigned DEFAULT NULL,
  `90e` smallint unsigned DEFAULT NULL,
  `95e` smallint unsigned DEFAULT NULL,
  `97e` smallint unsigned DEFAULT NULL COMMENT 'Pourrait être hardcodé plutôt que provenir de DB... à voir au développement de cet outil.',
  PRIMARY KEY (`idPercentile`),
  UNIQUE KEY `idPercentile_UNIQUE` (`idPercentile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_toolPercentilesBabyWeight`
--

LOCK TABLES `_toolPercentilesBabyWeight` WRITE;
/*!40000 ALTER TABLE `_toolPercentilesBabyWeight` DISABLE KEYS */;
/*!40000 ALTER TABLE `_toolPercentilesBabyWeight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-03 18:39:17
