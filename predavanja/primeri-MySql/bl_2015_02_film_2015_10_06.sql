-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 05:49 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_02_filmovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `FilmId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `ZanrId` int(11) NOT NULL,
  `Trajanje` int(11) DEFAULT '90' COMMENT 'Trajanje u minutama',
  `Godina` smallint(6) DEFAULT NULL COMMENT 'Godina proizvodnje',
  `Drzava` varchar(255) COLLATE cp1250_croatian_ci NOT NULL,
  `Ocjena` float DEFAULT NULL,
  `Glumci` varchar(2550) COLLATE cp1250_croatian_ci NOT NULL DEFAULT '''Ne zna se ko glumi''',
  `Opis` text COLLATE cp1250_croatian_ci,
  `Reziser` varchar(255) COLLATE cp1250_croatian_ci DEFAULT NULL,
  `Scenarista` varchar(255) COLLATE cp1250_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`FilmId`),
  KEY `ZanrId` (`ZanrId`),
  KEY `ZanrId_2` (`ZanrId`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`FilmId`, `Naziv`, `ZanrId`, `Trajanje`, `Godina`, `Drzava`, `Ocjena`, `Glumci`, `Opis`, `Reziser`, `Scenarista`) VALUES
(1, 'Poslednji krug u Monci', 5, 102, 1989, 'SFRJ', 7.8, 'Dragan Nikolić, Josif Tatić, Predrag Ejdus, Danilo Bata Stojković, Miki Krstović', 'Interesantno...', 'Aleksandar Bošković', NULL),
(2, 'Ko to tamo peva', 1, 86, 1980, 'SFRJ', 8.9, 'Danilo Bata Stojković, Pavle Vujisić, Dragan Nikolić, Neda Arnedić, Slavko Štimac, Aleksandar Berček', NULL, 'Slobodan Šijan', 'Dušan Kovačević'),
(3, 'Platoon', 1, 120, 1986, 'USA', 8.1, 'Čarli Šin, Vijam Defo, Tom Berindžer', 'Rat u Vijetnamu iz ugla 19-godišnjeg regruta', 'Oliver Ston', 'Oliver Ston'),
(4, 'Profesionalac', 1, 95, 2003, 'Srbija', 7, 'Bora Todorović, Branislav Lečić, Neda Arnedić, Miki Krsović, Dragan Jovanović, Josif Tatić', 'Po pozorišnoj predstavi', 'Dušan Kovačević', 'Dušan Kovačević'),
(5, 'Lepa sela lepo gore', 3, 90, 1995, 'Srbija', 8.43, 'Dragan Bjelogrlić, Milorad Mandić Manda, Nikola Kojo', NULL, 'Srđan Dragojević', 'Vanja Bulić');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`ZanrId`) REFERENCES `zanr` (`ZanrId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
