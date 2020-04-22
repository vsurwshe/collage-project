-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2017 at 01:55 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `loca`
--

CREATE TABLE `loca` (
  `lan` double NOT NULL,
  `lng` double NOT NULL,
  `title` varchar(20) NOT NULL,
  `desc` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loca`
--

INSERT INTO `loca` (`lan`, `lng`, `title`, `desc`) VALUES
(19.1383, 77.321, 'Naded', 'Nanded is a city in Maharashtra state'),
(51.5074, 0.1278, 'London', 'London, the capital of England '),
(18.4088, 76.5604, 'Latur', 'Latur is a city in the Marathwada region'),
(20.117, 78.1108, 'Yavatmal', 'Yavatmal district known as Yeotmal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
