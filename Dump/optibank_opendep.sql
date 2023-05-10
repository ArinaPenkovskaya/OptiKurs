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
-- Table structure for table `opendep`
--

DROP TABLE IF EXISTS `opendep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opendep` (
  `dogID` int NOT NULL AUTO_INCREMENT,
  `clientID` int NOT NULL,
  `summa` float NOT NULL,
  `depositName` varchar(45) NOT NULL,
  `curName` varchar(45) NOT NULL,
  `dateOfStart` date NOT NULL,
  `dateOfFinish` date NOT NULL,
  `period` int NOT NULL,
  `percent` float NOT NULL,
  `accumulation` float NOT NULL,
  PRIMARY KEY (`dogID`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opendep`
--

LOCK TABLES `opendep` WRITE;
/*!40000 ALTER TABLE `opendep` DISABLE KEYS */;
INSERT INTO `opendep` VALUES (49,46,200,'Срочный вклад (№1)','BYN','2018-04-17','2020-04-06',24,2.6,26.3277),(53,46,0,'Срочный вклад (№1)','BYN','2019-05-07','2019-11-03',6,2.6,0),(52,1,200,'Срочный вклад (№1)','BYN','2019-05-04','2019-12-30',8,2.6,20.8855),(55,55,200,'Срочный вклад (№1)','USD','2019-05-07','2019-12-03',7,0.2,1.60329),(63,46,0,'Срочный вклад (№1)','BYN','2019-05-10','2019-11-06',6,2.6,0),(65,46,0,'Срочный вклад (№1)','BYN','2019-05-10','2019-11-06',6,2.6,0),(61,71,10000,'Срочный вклад (№1)','RUB','2019-05-10','2019-11-06',6,0.2,80),(71,46,1000,'Срочный вклад (№1)','BYN','2019-05-11','2020-05-05',12,2.6,103.929),(84,46,0,'Срочный вклад (№1)','BYN','2021-05-05','2021-11-01',6,2.6,0),(85,46,0,'Срочный вклад (№1)','BYN','2018-05-05','2018-11-01',6,2.6,0),(87,46,0,'Срочный вклад (№1)','BYN','2016-05-05','2016-11-01',6,2.6,0),(88,89,200,'Срочный вклад (№1)','BYN','2019-05-05','2019-11-01',6,2.6,20.8712);
/*!40000 ALTER TABLE `opendep` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09  5:20:05
