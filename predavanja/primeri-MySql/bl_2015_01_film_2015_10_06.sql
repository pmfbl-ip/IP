-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 05:10 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_01_filmovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `FilmId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `Zanr` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `Trajanje` int(11) DEFAULT '90' COMMENT 'Trajanje u minutama',
  `Godina` smallint(6) DEFAULT NULL COMMENT 'Godina proizvodnje',
  `Drzava` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `Ocjena` float DEFAULT NULL,
  `Glumci` varchar(2550) COLLATE cp1250_croatian_ci NOT NULL DEFAULT '''Ne zna se ko glumi''',
  `Opis` text COLLATE cp1250_croatian_ci,
  `Reziser` varchar(255) COLLATE cp1250_croatian_ci DEFAULT NULL,
  `Scenarista` varchar(255) COLLATE cp1250_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`FilmId`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`FilmId`, `Naziv`, `Zanr`, `Trajanje`, `Godina`, `Drzava`, `Ocjena`, `Glumci`, `Opis`, `Reziser`, `Scenarista`) VALUES
(1, 'Poslednji krug u Monci', 'akcioni', 102, 1989, 'SFRJ', 7.8, 'Dragan Nikolić, Josif Tatić, Predrag Ejdus, Danilo Bata Stojković, Miki Krstović', 'Interesantno...', 'Aleksandar Bošković', NULL),
(2, 'Ko to tamo peva', 'comedy', 86, 1980, 'SFRJ', 8.9, 'Danilo Bata Stojković, Pavle Vujisić, Dragan Nikolić, Neda Arnedić, Slavko Štimac, Aleksandar Berček', NULL, 'Slobodan Šijan', 'Dušan Kovačević'),
(3, 'Platoon', 'ratni', 120, 1986, 'USA', 8.1, 'Čarli Šin, Vijam Defo, Tom Berindžer', 'Rat u Vijetnamu iz ugla 19-godišnjeg regruta', 'Oliver Ston', 'Oliver Ston'),
(4, 'Profesionalac', 'komedija', 95, 2003, 'Srbija', 7, 'Bora Todorović, Branislav Lečić, Neda Arnedić, Miki Krsović, Dragan Jovanović, Josif Tatić', 'Po pozorišnoj predstavi', 'Dušan Kovačević', 'Dušan Kovačević');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
