-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2014 at 12:03 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fabrika`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE IF NOT EXISTS `drzava` (
  `drzava_id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  PRIMARY KEY (`drzava_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `drzava`
--

INSERT INTO `drzava` (`drzava_id`, `naziv`) VALUES
(1, 'Grčka'),
(2, 'Srbija'),
(3, 'Hrvatska'),
(4, 'Njemačka'),
(5, 'Republika Srpska'),
(6, 'Federacija BiH'),
(7, 'Crna Gora'),
(8, 'Albanija');

-- --------------------------------------------------------

--
-- Table structure for table `mjesto`
--

CREATE TABLE IF NOT EXISTS `mjesto` (
  ` mjesto_id` int(11) NOT NULL AUTO_INCREMENT,
  `drzava_id` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  PRIMARY KEY (` mjesto_id`),
  KEY `drzava_id` (`drzava_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `mjesto`
--

INSERT INTO `mjesto` (` mjesto_id`, `drzava_id`, `naziv`) VALUES
(1, 5, 'Banja Luka'),
(4, 5, 'Bjeljina'),
(5, 5, 'Trebinje'),
(6, 5, 'Nevesinje'),
(7, 6, 'Sarajevo'),
(8, 6, 'Tuzla'),
(9, 1, 'Atina'),
(10, 1, 'Pirej'),
(11, 1, 'Solun'),
(12, 2, 'Beograd'),
(13, 2, 'Novi Sad'),
(14, 2, 'Požarevac'),
(15, 3, 'Zagreb'),
(16, 3, 'Virovitica'),
(17, 4, 'Berlin'),
(18, 4, 'Bon'),
(19, 4, 'Frankfurt na Majni'),
(20, 7, 'Podgorica'),
(21, 7, 'Bar'),
(22, 8, 'Tirana'),
(23, 8, 'Drač');

-- --------------------------------------------------------

--
-- Table structure for table `radnik`
--

CREATE TABLE IF NOT EXISTS `radnik` (
  `radnik_id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  `prezime` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  `mjesto_id` int(11) NOT NULL,
  PRIMARY KEY (`radnik_id`),
  KEY `mjesto_id` (`mjesto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `snadbevac`
--

CREATE TABLE IF NOT EXISTS `snadbevac` (
  `snadbevac_id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  PRIMARY KEY (`snadbevac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `snadbevac`
--

INSERT INTO `snadbevac` (`snadbevac_id`, `naziv`) VALUES
(1, 'Rudi Cajavec'),
(2, 'EI Niš');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mjesto`
--
ALTER TABLE `mjesto`
  ADD CONSTRAINT `mjesto_ibfk_1` FOREIGN KEY (`drzava_id`) REFERENCES `drzava` (`drzava_id`);

--
-- Constraints for table `radnik`
--
ALTER TABLE `radnik`
  ADD CONSTRAINT `radnik_ibfk_1` FOREIGN KEY (`mjesto_id`) REFERENCES `mjesto` (` mjesto_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
