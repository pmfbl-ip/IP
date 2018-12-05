-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2014 at 10:13 AM
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
-- Table structure for table `proizvodjac`
--

CREATE TABLE IF NOT EXISTS `proizvodjac` (
  `proizvodjac_id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE cp1250_croatian_ci NOT NULL,
  PRIMARY KEY (`proizvodjac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `proizvodjac`
--

INSERT INTO `proizvodjac` (`proizvodjac_id`, `naziv`) VALUES
(1, 'Rudi Cajavec'),
(2, 'EI Niš');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
