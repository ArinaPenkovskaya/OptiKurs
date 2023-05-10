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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `clientID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `spp` varchar(5) NOT NULL,
  `npp` varchar(10) NOT NULL,
  `ipp` varchar(45) NOT NULL,
  `whogive` varchar(45) NOT NULL,
  `whengive` date NOT NULL DEFAULT '1000-10-10',
  `cityborn` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `mobilenum` varchar(45) NOT NULL,
  `homenum` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `job` varchar(45) NOT NULL,
  `post` varchar(45) NOT NULL,
  `citydoc` varchar(45) NOT NULL,
  `marriage` varchar(45) NOT NULL,
  `nat` varchar(45) NOT NULL,
  `invalid` varchar(45) NOT NULL,
  `old` varchar(45) NOT NULL,
  `money` int NOT NULL,
  PRIMARY KEY (`clientID`),
  UNIQUE KEY `ipp_UNIQUE` (`ipp`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (103,'Арина','Пеньковская','Андреевна','2003-05-15','MC','1234567','53515426855525','Минское РУВД','2017-01-12','Минск','Минск','Минск','80445597569','5146595','penkovskaya@gmail.com','Бгуир','Маркетолог','Минск','Не замужем','Беларус','Нет','Нет',1000),(104,'Владислав','Прокопов','Игоревич','2002-09-25','MC','7654321','98765432198754','Минское РУВД','2016-11-17','Минск','Минск','Боровляны','80336640387','6542682','prokopov@gmail.com','Транзистор','оператор','Минск','Не женат','Беларус','Нет','Нет',1200),(105,'Иван','Иванов','Иванович','1965-06-26','MR','6635635','54525421241','Брестское РУВД','2019-02-06','Брест','Брест','Брест','802954652458','6532556','ivanov@tut.by','Нет','Нет','Брест','Вдовец','Беларус','I','Да',900),(106,'Анна','Каренина','Николаевна','1996-11-13','MP','7545477','41857452552548','Гомельское РУВД','2013-06-01','Минск','Гомель','Гомель','802965352522','2653856','karenina@gmail.com','Беларусбанк','Банкир','Гомель','Замужем','Беларус','Нет','Нет',1900);
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

-- Dump completed on 2023-05-09  5:20:05
