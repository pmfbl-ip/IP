CREATE DATABASE  IF NOT EXISTS `var_customers` /*!40100 DEFAULT CHARACTER SET latin2 COLLATE latin2_croatian_ci */;
USE `var_customers`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: var_customers
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) COLLATE latin2_croatian_ci NOT NULL DEFAULT '',
  `LAST_NAME` varchar(45) COLLATE latin2_croatian_ci NOT NULL DEFAULT '',
  `ADDRESS` varchar(45) COLLATE latin2_croatian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Id_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1547301019 DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Vladimir','Filipovic','Studentski trg 16, Beograd, Srbija'),(2,'Jelena','Jovic','Terazije 24, Beograd, Srbija'),(1547301018,'Dragan','Dzaijc','Bulevar JNA 12, Beograd, Srbija');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placed_order`
--

DROP TABLE IF EXISTS `placed_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placed_order` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(10) NOT NULL DEFAULT '0',
  `DATE_PLACED` date DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1547255771 DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placed_order`
--

LOCK TABLES `placed_order` WRITE;
/*!40000 ALTER TABLE `placed_order` DISABLE KEYS */;
INSERT INTO `placed_order` VALUES (1,1,'2012-12-12',10),(2,1,'2012-12-14',15),(3,2,'2012-12-15',5),(1547255770,1547301018,'2012-12-16',30);
/*!40000 ALTER TABLE `placed_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'var_customers'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-11 12:03:36
