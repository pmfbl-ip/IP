CREATE DATABASE  IF NOT EXISTS `bl_2013_01_studenti` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `bl_2013_01_studenti`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bl_2013_01_studenti
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
-- Table structure for table `mjesta`
--

DROP TABLE IF EXISTS `mjesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mjesta` (
  `MjestaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(45) NOT NULL,
  `Postanski Broj` varchar(10) NOT NULL,
  PRIMARY KEY (`MjestaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ocjene`
--

DROP TABLE IF EXISTS `ocjene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocjene` (
  `OcjeneId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PredmetiId` int(10) unsigned NOT NULL,
  `StudentiId` int(10) unsigned NOT NULL,
  `ProfesoriId` int(10) unsigned NOT NULL,
  `DatumPolaganja` datetime NOT NULL,
  `Ocjena` smallint(5) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`OcjeneId`),
  UNIQUE KEY `UIndex_SPP` (`PredmetiId`,`StudentiId`,`ProfesoriId`),
  KEY `FK_ocjene_2` (`ProfesoriId`),
  KEY `FK_ocjene_3` (`StudentiId`),
  CONSTRAINT `FK_ocjene_1` FOREIGN KEY (`PredmetiId`) REFERENCES `predmeti` (`PredmetiID`),
  CONSTRAINT `FK_ocjene_2` FOREIGN KEY (`ProfesoriId`) REFERENCES `profesori` (`ProfesoriId`),
  CONSTRAINT `FK_ocjene_3` FOREIGN KEY (`StudentiId`) REFERENCES `studenti` (`StudentiId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `predmeti`
--

DROP TABLE IF EXISTS `predmeti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predmeti` (
  `PredmetiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'Predmet',
  `Semestar` int(10) unsigned NOT NULL,
  PRIMARY KEY (`PredmetiID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profesori`
--

DROP TABLE IF EXISTS `profesori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesori` (
  `ProfesoriId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Prezime` varchar(45) NOT NULL,
  `Ime` varchar(45) NOT NULL,
  `GodinaRodjenja` smallint(5) unsigned NOT NULL,
  `MjestoRodjenja` int(10) unsigned NOT NULL,
  `MjestoStanovanja` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ProfesoriId`),
  KEY `IndPrezimeIme` (`Prezime`,`Ime`),
  KEY `FKeyMjestoRodjenja` (`MjestoRodjenja`),
  KEY `FK_profesori_2` (`MjestoStanovanja`),
  CONSTRAINT `FK_profesori_1` FOREIGN KEY (`MjestoRodjenja`) REFERENCES `mjesta` (`MjestaId`),
  CONSTRAINT `FK_profesori_2` FOREIGN KEY (`MjestoStanovanja`) REFERENCES `mjesta` (`MjestaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studenti` (
  `StudentiId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Prezime` varchar(45) NOT NULL,
  `Ime` varchar(45) NOT NULL,
  `BrojIndeksa` varchar(10) NOT NULL,
  `GodinaRodjenja` smallint(5) unsigned NOT NULL,
  `MjestoRodjenja` int(10) unsigned NOT NULL,
  `MjestoStanovanja` int(10) unsigned NOT NULL,
  PRIMARY KEY (`StudentiId`),
  UNIQUE KEY `UIndex_BI` (`BrojIndeksa`),
  KEY `IndPrezimeIme` (`Prezime`,`Ime`),
  KEY `IndBrojIndeksa` (`BrojIndeksa`),
  KEY `FK_studenti_1` (`MjestoRodjenja`),
  KEY `FK_studenti_2` (`MjestoStanovanja`),
  CONSTRAINT `FK_studenti_1` FOREIGN KEY (`MjestoRodjenja`) REFERENCES `mjesta` (`MjestaId`),
  CONSTRAINT `FK_studenti_2` FOREIGN KEY (`MjestoStanovanja`) REFERENCES `mjesta` (`MjestaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `vw_polozili`
--

DROP TABLE IF EXISTS `vw_polozili`;
/*!50001 DROP VIEW IF EXISTS `vw_polozili`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_polozili` (
  `Student` tinyint NOT NULL,
  `Predmet` tinyint NOT NULL,
  `Ocjena` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_proseci`
--

DROP TABLE IF EXISTS `vw_proseci`;
/*!50001 DROP VIEW IF EXISTS `vw_proseci`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_proseci` (
  `Prezime` tinyint NOT NULL,
  `Ime` tinyint NOT NULL,
  `Prosjek` tinyint NOT NULL,
  `Polozeno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_studentirodjeni`
--

DROP TABLE IF EXISTS `vw_studentirodjeni`;
/*!50001 DROP VIEW IF EXISTS `vw_studentirodjeni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_studentirodjeni` (
  `Ime` tinyint NOT NULL,
  `Prezime` tinyint NOT NULL,
  `RodjenU` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_studentirodjenistanuju`
--

DROP TABLE IF EXISTS `vw_studentirodjenistanuju`;
/*!50001 DROP VIEW IF EXISTS `vw_studentirodjenistanuju`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_studentirodjenistanuju` (
  `Ime` tinyint NOT NULL,
  `Prezime` tinyint NOT NULL,
  `RodjenU` tinyint NOT NULL,
  `StanujeU` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bl_2013_01_studenti'
--

--
-- Dumping routines for database 'bl_2013_01_studenti'
--

--
-- Final view structure for view `vw_polozili`
--

/*!50001 DROP TABLE IF EXISTS `vw_polozili`*/;
/*!50001 DROP VIEW IF EXISTS `vw_polozili`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_polozili` AS select concat(concat(`studenti`.`Prezime`,' '),`studenti`.`Ime`) AS `Student`,`predmeti`.`Ime` AS `Predmet`,`ocjene`.`Ocjena` AS `Ocjena` from ((`ocjene` join `studenti` on((`ocjene`.`StudentiId` = `studenti`.`StudentiId`))) join `predmeti` on((`ocjene`.`PredmetiId` = `predmeti`.`PredmetiID`))) where ((`ocjene`.`DatumPolaganja` >= '2013-01-01') and (`ocjene`.`DatumPolaganja` <= '2013-12-12')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_proseci`
--

/*!50001 DROP TABLE IF EXISTS `vw_proseci`*/;
/*!50001 DROP VIEW IF EXISTS `vw_proseci`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_proseci` AS select `s`.`Prezime` AS `Prezime`,`s`.`Ime` AS `Ime`,avg(`o`.`Ocjena`) AS `Prosjek`,count(`o`.`Ocjena`) AS `Polozeno` from (`ocjene` `o` join `studenti` `s` on((`o`.`StudentiId` = `s`.`StudentiId`))) group by `o`.`StudentiId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_studentirodjeni`
--

/*!50001 DROP TABLE IF EXISTS `vw_studentirodjeni`*/;
/*!50001 DROP VIEW IF EXISTS `vw_studentirodjeni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_studentirodjeni` AS select `studenti`.`Ime` AS `Ime`,`studenti`.`Prezime` AS `Prezime`,`mjesta`.`Ime` AS `RodjenU` from (`studenti` join `mjesta` on((`studenti`.`MjestoRodjenja` = `mjesta`.`MjestaId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_studentirodjenistanuju`
--

/*!50001 DROP TABLE IF EXISTS `vw_studentirodjenistanuju`*/;
/*!50001 DROP VIEW IF EXISTS `vw_studentirodjenistanuju`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_studentirodjenistanuju` AS select `studenti`.`Ime` AS `Ime`,`studenti`.`Prezime` AS `Prezime`,`mjesta`.`Ime` AS `RodjenU`,`mjesta2`.`Ime` AS `StanujeU` from ((`studenti` join `mjesta` on((`studenti`.`MjestoRodjenja` = `mjesta`.`MjestaId`))) join `mjesta` `mjesta2` on((`studenti`.`MjestoStanovanja` = `mjesta2`.`MjestaId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-08  6:38:16
