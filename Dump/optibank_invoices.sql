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
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `ivID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `type` varchar(2) NOT NULL,
  `kod` varchar(4) NOT NULL,
  `debit` float NOT NULL,
  `saldo` float NOT NULL,
  `clientID` int NOT NULL,
  `dogID` int NOT NULL,
  PRIMARY KEY (`ivID`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  UNIQUE KEY `id_UNIQUE` (`ivID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'Фонд развития банка','7324000000001','П','7327',4777900,-4442510,0,0),(2,'Касса','1010000000001','А','1010',8266410,0,0,0),(67,'Тек. счет клиента','3014004600491','П','3014',200,0,46,49),(68,'Кредитный счет клиента','2400000100193','А','2400',6.48,0,1,19),(69,'Тек. счет клиента','3014004600501','П','3014',4301230,0,46,50),(70,'Процентный счет','1273004600502','П','1273',1234.57,0,46,50),(71,'Тек. счет клиента','3014000100511','П','3014',2000,0,1,51),(72,'Тек. счет клиента','3014000100521','П','3014',200,0,1,52),(73,'Процентный счет','1273000100512','П','1273',13,0,1,51),(74,'Кредитный счет клиента','2400004600203','А','2400',0,0,46,20),(75,'Кредитный счет клиента','2400004600213','А','2400',0,0,46,21),(76,'Тек. счет клиента','3014004600531','П','3014',0,0,46,53),(77,'Тек. счет клиента','3014004600541','П','3014',0,0,46,54),(78,'Кредитный счет клиента','2400004600223','А','2400',3.9852,0,46,22),(79,'Тек. счет клиента','3014005500551','П','3014',405.2,0,55,55),(81,'Кредитный счет клиента','2400005500233','А','2400',97.2,0,55,23),(82,'Кредитный счет клиента','2400004600243','А','2400',0,0,46,24),(83,'Процентный счет','1273004600542','П','1273',0,0,46,54),(84,'Тек. счет клиента','3014006500561','П','3014',4000,0,65,56),(85,'Процентный счет кредита','1673004600214','П','1673',0,0,46,21),(86,'Кредитный счет клиента','2400006500253','А','2400',14904,0,65,25),(87,'Кредитный счет клиента','2400004600263','А','2400',0,0,46,26),(88,'Процентный счет кредита','1673004600264','П','1673',0,0,46,26),(89,'Тек. счет клиента','3014004600571','П','3014',0,0,46,57),(90,'Процентный счет','1273004600572','П','1273',0,0,46,57),(91,'Процентный счет кредита','1673006500254','П','1673',1055.7,0,65,25),(92,'Кредитный счет клиента','2400004600273','А','2400',0,0,46,27),(93,'Процентный счет кредита','1673004600274','П','1673',0,0,46,27),(94,'Тек. счет клиента','3014004600581','П','3014',0,0,46,58),(95,'Тек. счет клиента','3014004600591','П','3014',0,0,46,59),(96,'Процентный счет','1273004600592','П','1273',0,0,46,59),(97,'Кредитный счет клиента','2400004600283','А','2400',0,0,46,28),(98,'Процентный счет кредита','1673004600284','П','1673',0,0,46,28),(99,'Тек. счет клиента','3014004600601','П','3014',0,0,46,60),(100,'Процентный счет','1273004600602','П','1273',0,0,46,60),(101,'Тек. счет клиента','3014007100611','П','3014',324,0,71,61),(102,'Тек. счет клиента','3014006200621','П','3014',6000,0,62,62),(103,'Процентный счет','1273006200622','П','1273',39,0,62,62),(104,'Процентный счет','1273006500562','П','1273',26,0,65,56),(105,'Тек. счет клиента','3014004600631','П','3014',0,0,46,63),(106,'Тек. счет клиента','3014004600641','П','3014',0,0,46,64),(107,'Процентный счет','1273004600642','П','1273',0,0,46,64),(108,'Процентный счет','1273004600582','П','1273',0,0,46,58),(109,'Тек. счет клиента','3014004600651','П','3014',0,0,46,65),(110,'Тек. счет клиента','3014004600661','П','3014',0,0,46,66),(111,'Процентный счет','1273004600662','П','1273',0,0,46,66),(112,'Тек. счет клиента','3014004600671','П','3014',0,0,46,67),(113,'Процентный счет','1273004600672','П','1273',0,0,46,67),(114,'Тек. счет клиента','3014006500681','П','3014',6600,0,65,68),(115,'Процентный счет','1273006500682','П','1273',42.9,0,65,68),(116,'Кредитный счет клиента','2400004600293','А','2400',4000,0,46,29),(117,'Процентный счет кредита','1673004600294','П','1673',23.3333,0,46,29),(118,'Тек. счет клиента','3014004600691','П','3014',10452,0,46,69),(119,'Тек. счет клиента','3014006500701','П','3014',4274,0,65,70),(120,'Процентный счет','1273006500702','П','1273',111.124,0,65,70),(121,'Процентный счет','1273004600692','П','1273',3,0,46,69),(122,'Тек. счет клиента','3014004600711','П','3014',1000,0,46,71),(123,'Кредитный счет клиента','2400004600303','А','2400',30000,30000,46,30),(124,'Процентный счет кредита','1673004600304','П','1673',0,0,46,30),(125,'Кредитный счет клиента','2400004600313','А','2400',50000,50000,46,31),(126,'Процентный счет кредита','1673004600314','П','1673',0,0,46,31),(127,'Тек. счет клиента','3014004600731','П','3014',60000,0,46,73),(128,'Кредитный счет клиента','2400004600323','А','2400',100000,100000,46,32),(129,'Кредитный счет клиента','2400004600333','А','2400',120000,120000,46,33),(130,'Процентный счет кредита','1673004600334','П','1673',0,0,46,33),(131,'Кредитный счет клиента','2400004600343','А','2400',130000,130000,46,34),(132,'Процентный счет кредита','1673004600344','П','1673',0,0,46,34),(133,'Кредитный счет клиента','2400004600353','А','2400',50000,50000,46,35),(134,'Процентный счет кредита','1673004600354','П','1673',0,0,46,35),(135,'Процентный счет кредита','1673004600324','П','1673',0,0,46,32),(136,'Тек. счет клиента','3014004600741','П','3014',4000,0,46,74),(137,'Тек. счет клиента','3014004600751','П','3014',34840,0,46,75),(138,'Тек. счет клиента','3014004600761','П','3014',34840,0,46,76),(139,'Кредитный счет клиента','2400004600363','А','2400',1000,1000,46,36),(140,'Процентный счет кредита','1673004600364','П','1673',280.384,0,46,36),(141,'Тек. счет клиента','3014004600771','П','3014',3500,3500,46,77),(142,'Кредитный счет клиента','2400004600373','А','2400',2000,0,46,37),(143,'Процентный счет кредита','1673004600374','П','1673',0,0,46,37),(144,'Кредитный счет клиента','2400004600383','А','2400',2000,0,46,38),(145,'Процентный счет кредита','1673004600384','П','1673',140,0,46,38),(146,'Кредитный счет клиента','2400004600393','А','2400',20000,0,46,39),(147,'Кредитный счет клиента','2400004600403','А','2400',2000,0,46,40),(148,'Процентный счет кредита','1673004600404','П','1673',140,0,46,40),(149,'Кредитный счет клиента','2400004600413','А','2400',5000,0,46,41),(150,'Кредитный счет клиента','2400004600423','А','2400',10000,0,46,42),(151,'Кредитный счет клиента','2400004600433','А','2400',20000,0,46,43),(152,'Процентный счет кредита','1673004600434','П','1673',123,0,46,43),(153,'Кредитный счет клиента','2400004600443','А','2400',1000,0,46,44),(154,'Процентный счет кредита','1673004600444','П','1673',140,0,46,44),(155,'Тек. счет клиента','3014004600781','П','3014',20000,0,46,78),(156,'Процентный счет','1273004600782','П','1273',260,0,46,78),(157,'Тек. счет клиента','3014004600791','П','3014',2000,0,46,79),(158,'Процентный счет','1273004600792','П','1273',52,0,46,79),(159,'Тек. счет клиента','3014004600801','П','3014',2000,0,46,80),(160,'Процентный счет','1273004600802','П','1273',26,0,46,80),(161,'Процентный счет','1273004600772','П','1273',0,0,46,77),(162,'Процентный счет','1273004600762','П','1273',20.0548,0,46,76),(163,'Процентный счет','1273004600752','П','1273',40.0548,0,46,75),(164,'Процентный счет','1273004600742','П','1273',52.1425,0,46,74),(165,'Тек. счет клиента','3014007500811','П','3014',200000,0,75,81),(166,'Процентный счет','1273007500812','П','1273',2600,0,75,81),(167,'Кредитный счет клиента','2400004600453','А','2400',2000,0,46,45),(168,'Процентный счет кредита','1673004600454','П','1673',140,0,46,45),(169,'Процентный счет кредита','1673004600394','П','1673',2803.84,0,46,39),(170,'Процентный счет','1273004600732','П','1273',6.41096,0,46,73),(171,'Процентный счет','1273004600722','П','1273',100.822,0,46,72),(172,'Тек. счет клиента','3014004600821','П','3014',20000,0,46,82),(173,'Тек. счет клиента','3014004600831','П','3014',20000,0,46,83),(174,'Процентный счет','1273004600832','П','1273',260,0,46,83),(175,'Процентный счет','1273004600822','П','1273',514.301,0,46,82),(176,'Тек. счет клиента','3014004600841','П','3014',0,0,46,84),(177,'Тек. счет клиента','3014004600851','П','3014',0,0,46,85),(178,'Тек. счет клиента','3014004600861','П','3014',600,0,46,86),(179,'Кредитный счет клиента','2400004600463','А','2400',600,0,46,46),(180,'Процентный счет кредита','1673004600464','П','1673',168.115,0,46,46),(181,'Кредитный счет клиента','2400004600473','А','2400',600,0,46,47),(182,'Процентный счет кредита','1673004600474','П','1673',0,0,46,47),(183,'Кредитный счет клиента','2400004600483','А','2400',200,0,46,48),(184,'Процентный счет','1273004600862','П','1273',31.2214,0,46,86),(185,'Тек. счет клиента','3014004600871','П','3014',0,0,46,87),(186,'Тек. счет клиента','3014008900881','П','3014',200,0,89,88),(187,'Кредитный счет клиента','2400008900493','А','2400',1000,0,89,49),(188,'Тек. счет клиента','3014006200891','П','3014',2000,0,62,89),(189,'Процентный счет','1273006200892','П','1273',0,0,62,89),(190,'Тек. счет клиента','3014006200901','П','3014',2000,0,62,90),(191,'Процентный счет','1273006200902','П','1273',52.0712,0,62,90),(192,'Кредитный счет клиента','2400006200503','А','2400',400,0,62,50),(193,'Процентный счет кредита','1673006200504','П','1673',0,0,62,50),(194,'Кредитный счет клиента','2400004600513','А','2400',400,0,46,51),(195,'Процентный счет кредита','1673004600514','П','1673',0,0,46,51),(196,'Тек. счет клиента','3014010000911','П','3014',2000,0,100,91),(197,'Процентный счет','1273010000912','П','1273',0,0,100,91),(198,'Кредитный счет клиента','2400010000523','А','2400',20000,0,100,52),(199,'Процентный счет кредита','1673010000524','П','1673',0,0,100,52),(200,'Процентный счет кредита','1673004600254','П','1673',500,0,46,25);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
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
