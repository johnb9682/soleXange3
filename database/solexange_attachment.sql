-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: solexange
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) DEFAULT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL COMMENT 'now define as userid',
  `type_id` bigint(20) DEFAULT NULL COMMENT 'now define as productid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (35,'3_1.jpg','/static/upload/img/201609/20160926001158912326.jpg',1,38),(36,'3_2.jpg','/static/upload/img/201609/20160926001158912821.jpg',1,38),(37,'3_3.jpg','/static/upload/img/201609/20160926001158912740.jpg',1,38),(38,'3_4.jpg','/static/upload/img/201609/20160926001159371062.jpg',1,38),(39,'3_5.jpg','/static/upload/img/201609/20160926001159875310.jpg',1,38),(40,'2_1.jpg','/static/upload/img/201609/20160926001359591666.jpg',1,39),(41,'2_3.jpg','/static/upload/img/201609/20160926001359594195.jpg',1,39),(42,'2_2.jpg','/static/upload/img/201609/20160926001359596952.jpg',1,39),(43,'2_4.jpg','/static/upload/img/201609/20160926001400090711.jpg',1,39),(44,'2_5.jpg','/static/upload/img/201609/20160926001400092768.jpg',1,39),(45,'2_6.jpg','/static/upload/img/201609/20160926001400594905.jpg',1,39);
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-26 12:44:18
