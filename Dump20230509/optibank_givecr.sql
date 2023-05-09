-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: optibank
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `givecr`
--

DROP TABLE IF EXISTS `givecr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `givecr` (
  `dogID` int NOT NULL AUTO_INCREMENT,
  `clientID` int NOT NULL,
  `summa` float NOT NULL,
  `creditName` varchar(45) NOT NULL,
  `curName` varchar(45) NOT NULL,
  `dateOfStart` date NOT NULL,
  `dateOfFinish` date NOT NULL,
  `period` int NOT NULL,
  `percent` float NOT NULL,
  `accumulation` float NOT NULL,
  PRIMARY KEY (`dogID`),
  UNIQUE KEY `dogID_UNIQUE` (`dogID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `givecr`
--

LOCK TABLES `givecr` WRITE;
/*!40000 ALTER TABLE `givecr` DISABLE KEYS */;
INSERT INTO `givecr` VALUES (19,1,200,'Кредит с ан. платежем','RUB','2018-04-17','2018-10-14',6,23,232.899),(20,46,0,'Кредит с ан. платежем','BYN','2019-05-07','2019-06-06',1,14,0),(22,46,123,'Кредит с ан. платежем','RUB','2019-05-07','2019-07-06',2,23,113.393),(23,55,3000,'Кредит с ан. платежем','RUB','2019-05-07','2019-06-06',1,23,2765.67),(24,46,0,'Кредит с ан. платежем','BYN','2019-05-09','2019-06-08',1,14,0),(48,46,200,'Кредит с ан. платежем','BYN','2019-05-05','2020-04-29',12,14,112.384),(49,89,1000,'Кредит с ан. платежем','BYN','2019-05-05','2020-07-28',15,14,561.918);
/*!40000 ALTER TABLE `givecr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09  5:20:06
