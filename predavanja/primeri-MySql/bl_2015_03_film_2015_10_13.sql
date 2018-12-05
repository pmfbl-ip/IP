CREATE DATABASE  IF NOT EXISTS `bl_2015_03_film` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `bl_2015_03_film`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bl_2015_03_film
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
-- Table structure for table `drzava`
--

DROP TABLE IF EXISTS `drzava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drzava` (
  `DrzavaId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`DrzavaId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drzava`
--

LOCK TABLES `drzava` WRITE;
/*!40000 ALTER TABLE `drzava` DISABLE KEYS */;
INSERT INTO `drzava` VALUES (1,'USA'),(2,'SFRJ'),(3,'Србија');
/*!40000 ALTER TABLE `drzava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `FilmId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ZanrId` int(11) NOT NULL,
  `Trajanje` int(11) DEFAULT '90' COMMENT 'Trajanje u minutama',
  `Godina` smallint(6) DEFAULT NULL COMMENT 'Godina proizvodnje',
  `DrzavaId` int(11) NOT NULL,
  `Ocjena` float DEFAULT NULL,
  `Glumci` varchar(2550) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''Ne zna se ko glumi''',
  `Opis` text COLLATE utf8_unicode_ci,
  `Reziser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Scenarista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zarada` double DEFAULT NULL,
  PRIMARY KEY (`FilmId`),
  KEY `ZanrId` (`ZanrId`),
  KEY `DrzavaId` (`DrzavaId`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`ZanrId`) REFERENCES `zanr` (`ZanrId`),
  CONSTRAINT `film_ibfk_2` FOREIGN KEY (`DrzavaId`) REFERENCES `drzava` (`DrzavaId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Последњи круг у Монци',2,102,1989,2,7.8,'Драган Николић, Јосиф Татић, Предраг Ејдус, Данило Бата Стојковић, Мики Крстовић','Interesantno...','Александар Бошковић',NULL,1000000),(2,'Ко то тамо пева',5,86,1980,2,8.9,'Данило Бата Стојковић, Павле Вујисић, Драган Николић, Неда Арнедић, Славко Штимац, Александар Берчек',NULL,'Слободан Шијан','Душан Ковачевић',2000000),(3,'Platoon',4,120,1986,1,8.1,'Charlie Sheen, William Defo, Tom Beringer','Rat u Vijetnamu iz ugla 19-godišnjeg regruta','Oliver Stone','Oliver Stone',9000000),(4,'Професионалац',5,95,2003,3,7,'Бора Тодоровић, Бранислав Лечић, Неда Арнедић, Мики Крстовић, Драган Јовановић, Јосиф Татић','Po pozorišnoj predstavi','Душан Ковачевић','Душан Ковачевић',1500000),(5,'Лепа села лепо горе',4,90,1995,3,8.43,' Никола Којо, Зоран Цвијановић, Драган Бјелогрлић',NULL,'Срђан Драгојевић','Вања Булић',2200000),(7,'Ми нисмо анђели',5,92,1994,3,7.7,'Драган Бјелогрлић, Никола Којо, Зоран Цвијановић, Предраг Мики Манојловић',NULL,'Срђан Драгојевић',NULL,4000000);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zanr`
--

DROP TABLE IF EXISTS `zanr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zanr` (
  `ZanrId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ZanrId`),
  KEY `Naziv` (`Naziv`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zanr`
--

LOCK TABLES `zanr` WRITE;
/*!40000 ALTER TABLE `zanr` DISABLE KEYS */;
INSERT INTO `zanr` VALUES (2,'акциони'),(3,'драма'),(5,'комедија'),(1,'криминалистички'),(7,'научна фантастика'),(4,'ратни'),(6,'фантастика');
/*!40000 ALTER TABLE `zanr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bl_2015_03_film'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 14:54:22
