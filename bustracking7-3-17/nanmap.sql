-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2017 at 01:37 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map1`
--

-- --------------------------------------------------------

--
-- Table structure for table `nanmap`
--

CREATE TABLE `nanmap` (
  `Lan` double NOT NULL,
  `Lng` double NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Desc` varchar(50) NOT NULL,
  `Buskey` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nanmap`
--

INSERT INTO `nanmap` (`Lan`, `Lng`, `Title`, `Desc`, `Buskey`) VALUES
(19.1453016, 77.3203147, 'old monad', 'Nanded Maharashtra', 12345),
(19.1485091, 77.3067746, 'Gurudwara Banda Ghat Saheb', 'Nanded Maharashtra', 0),
(19.1497658, 77.3131046, 'Takhat Sachkhand Sri Hazur ', 'Abchal Nagar Sahib Nanded Maharashtra', 0),
(19.1497658, 77.3131046, 'NRI Yatri Niwas', 'Nanded Maharashtra', 0),
(19.1559025, 77.3113851, 'Punjab Bhavan', 'Nanded Maharashtra', 0),
(19.1867233, 77.2896552, 'nanded', 'nanded', 1234),
(19.1868702, 77.2894353, 'nanded', 'nanded', 1234),
(19.1860849, 77.2928953, 'nanded', 'nanded', 1234),
(19.1857809, 77.2951591, 'nanded', 'nanded', 1234);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
