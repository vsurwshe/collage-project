-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2018 at 11:14 AM
-- Server version: 5.6.29-76.2-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webpione_mhis`
--

-- --------------------------------------------------------

--
-- Table structure for table `abd_2013`
--

CREATE TABLE IF NOT EXISTS `abd_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` float DEFAULT NULL,
  `Evapotranspiration` float DEFAULT NULL,
  `Water Yield` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='ABD_2013';

--
-- Dumping data for table `abd_2013`
--

INSERT INTO `abd_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', 1.78, 6.33, 5.03),
('2', '2/2013', 34.95, 12.58, 1.18),
('3', '3/2013', 0, 46.89, 0.85),
('4', '4/2013', 16.31, 94.28, 0.25),
('5', '5/2013', 21.05, 0.84, 0.1),
('6', '6/2013', 207.71, 17.08, 0.05),
('7', '7/2013', 476.28, 38.19, 100.2),
('8', '8/2013', 210.13, 44.16, 111.57),
('9', '9/2013', 138.96, 41.85, 191.24),
('10', '10/2013', 115.49, 27.06, 65.3),
('11', '11/2013', 14.63, 11.17, 29.75),
('12', '12/2013', 0, 7.87, 15.48);

-- --------------------------------------------------------

--
-- Table structure for table `abd_2014`
--

CREATE TABLE IF NOT EXISTS `abd_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abd_2014`
--

INSERT INTO `abd_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '9.52', '1.12'),
('2', '2/2014', '20.00', '20.52', '0.41'),
('3', '3/2014', '10.14', '40.42', '0.17'),
('4', '4/2014', '11.47', '68.74', '0.07'),
('5', '5/2014', '6.73', '4.84', '0.04'),
('6', '6/2014', '30.84', '13.26', '0.70'),
('7', '7/2014', '95.59', '33.05', '101.70'),
('8', '8/2014', '205.50', '50.11', '37.60'),
('9', '9/2014', '118.65', '39.58', '52.98'),
('10', '10/2014', '11.26', '19.58', '71.34'),
('11', '11/2014', '8.42', '9.89', '36.45'),
('12', '12/2014', '0.00', '4.73', '20.22');

-- --------------------------------------------------------

--
-- Table structure for table `abd_2015`
--

CREATE TABLE IF NOT EXISTS `abd_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abd_2015`
--

INSERT INTO `abd_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '2.00', '5.92', '0.67'),
('2', '2/2015', '23.16', '8.28', '0.24'),
('3', '3/2015', '4.53', '37.45', '0.11'),
('4', '4/2015', '9.36', '50.19', '0.05'),
('5', '5/2015', '3.36', '20.51', '6.29'),
('6', '6/2015', '164.76', '46.44', '0.15'),
('7', '7/2015', '54.42', '57.07', '9.50'),
('8', '8/2015', '136.33', '49.28', '76.66'),
('9', '9/2015', '124.12', '46.23', '43.54'),
('10', '10/2015', '29.47', '27.41', '23.83'),
('11', '11/2015', '4.21', '17.37', '14.24'),
('12', '12/2015', '0.00', '9.89', '10.77');

-- --------------------------------------------------------

--
-- Table structure for table `abd_2016`
--

CREATE TABLE IF NOT EXISTS `abd_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abd_2016`
--

INSERT INTO `abd_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '7.04', '0.56'),
('2', '2/2016', '7.36', '6.53', '0.22'),
('3', '3/2016', '3.26', '37.17', '0.08'),
('4', '4/2016', '9.89', '47.43', '0.03'),
('5', '5/2016', '0.00', '44.48', '0.53'),
('6', '6/2016', '137.39', '33.88', '71.12'),
('7', '7/2016', '370.26', '61.88', '169.60'),
('8', '8/2016', '107.80', '54.28', '204.87'),
('9', '9/2016', '317.62', '46.77', '198.13'),
('10', '10/2016', '', '', '0.00'),
('11', '11/2016', '', '', '0.00'),
('12', '12/2016', '', '', '0.00'),
('', '', '', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `beed_2013`
--

CREATE TABLE IF NOT EXISTS `beed_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beed_2013`
--

INSERT INTO `beed_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '0.00', '7.78', '0.92'),
('2', '2/2013', '16.34', '16.77', '0.33'),
('3', '3/2013', '8.29', '33.03', '0.14'),
('4', '4/2013', '9.37', '56.17', '0.06'),
('5', '5/2013', '5.50', '3.95', '0.03'),
('6', '6/2013', '25.20', '10.83', '0.57'),
('7', '7/2013', '78.11', '27.01', '83.10'),
('8', '8/2013', '167.92', '40.94', '30.72'),
('9', '9/2013', '96.95', '32.34', '43.29'),
('10', '10/2013', '9.20', '16.00', '58.30'),
('11', '11/2013', '6.88', '8.08', '29.79'),
('12', '12/2013', '0.00', '3.87', '16.52');

-- --------------------------------------------------------

--
-- Table structure for table `beed_2014`
--

CREATE TABLE IF NOT EXISTS `beed_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beed_2014`
--

INSERT INTO `beed_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '1.46', '5.17', '4.11'),
('2', '2/2014', '28.56', '10.28', '0.97'),
('3', '3/2014', '0.00', '38.31', '0.69'),
('4', '4/2014', '13.33', '77.04', '0.20'),
('5', '5/2014', '17.20', '0.68', '0.08'),
('6', '6/2014', '169.73', '13.96', '0.04'),
('7', '7/2014', '389.18', '31.21', '81.88'),
('8', '8/2014', '171.70', '36.08', '91.17'),
('9', '9/2014', '113.55', '34.20', '156.26'),
('10', '10/2014', '94.37', '22.11', '53.36'),
('11', '11/2014', '11.95', '9.12', '24.31'),
('12', '12/2014', '0.00', '6.43', '12.65');

-- --------------------------------------------------------

--
-- Table structure for table `beed_2015`
--

CREATE TABLE IF NOT EXISTS `beed_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beed_2015`
--

INSERT INTO `beed_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.63', '4.84', '0.55'),
('2', '2/2015', '18.92', '6.77', '0.19'),
('3', '3/2015', '3.70', '30.60', '0.09'),
('4', '4/2015', '7.65', '41.01', '0.04'),
('5', '5/2015', '2.75', '16.76', '5.14'),
('6', '6/2015', '134.63', '37.95', '0.12'),
('7', '7/2015', '44.47', '46.63', '7.76'),
('8', '8/2015', '111.40', '40.26', '62.64'),
('9', '9/2015', '101.42', '37.78', '35.58'),
('10', '10/2015', '24.08', '22.40', '19.47'),
('11', '11/2015', '3.44', '14.19', '11.63'),
('12', '12/2015', '0.00', '8.08', '8.80');

-- --------------------------------------------------------

--
-- Table structure for table `beed_2016`
--

CREATE TABLE IF NOT EXISTS `beed_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beed_2016`
--

INSERT INTO `beed_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '5.75', '0.46'),
('2', '2/2016', '6.02', '5.34', '0.18'),
('3', '3/2016', '2.66', '30.37', '0.06'),
('4', '4/2016', '8.08', '38.76', '0.02'),
('5', '5/2016', '0.00', '36.34', '0.43'),
('6', '6/2016', '112.26', '27.69', '58.11'),
('7', '7/2016', '302.55', '50.56', '138.58'),
('8', '8/2016', '88.09', '44.35', '167.40'),
('9', '9/2016', '259.54', '38.22', '161.90'),
('10', '10/2016', '0.00', '0.00', '0.00'),
('11', '11/2016', '0.00', '0.00', '0.00'),
('12', '12/2016', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `god_2013`
--

CREATE TABLE IF NOT EXISTS `god_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` float DEFAULT NULL,
  `Evapotranspiration` float DEFAULT NULL,
  `Water Yield` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='god_2013';

--
-- Dumping data for table `god_2013`
--

INSERT INTO `god_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', 1.78, 6.02, 4.78),
('2', '2/2013', 34.95, 11.95, 1.13),
('3', '3/2013', 0, 44.54, 0.81),
('4', '4/2013', 16.31, 89.56, 0.24),
('5', '5/2013', 21.05, 0.8, 0.1),
('6', '6/2013', 207.71, 16.23, 0.05),
('7', '7/2013', 476.28, 36.28, 95.18),
('8', '8/2013', 210.13, 41.95, 105.98),
('9', '9/2013', 138.96, 39.76, 181.65),
('10', '10/2013', 115.49, 25.71, 62.03),
('11', '11/2013', 14.63, 10.61, 28.26),
('12', '12/2013', 0, 7.48, 14.71);

-- --------------------------------------------------------

--
-- Table structure for table `god_2014`
--

CREATE TABLE IF NOT EXISTS `god_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` float DEFAULT NULL,
  `Evapotranspiration` float DEFAULT NULL,
  `Water Yield` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='god_2013';

--
-- Dumping data for table `god_2014`
--

INSERT INTO `god_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', 0, 9.05, 1.07),
('2', '2/2014', 19, 19.5, 0.39),
('3', '3/2014', 9.64, 38.4, 0.17),
('4', '4/2014', 10.9, 65.3, 0.07),
('5', '5/2014', 6.4, 4.6, 0.04),
('6', '6/2014', 69.3, 12.6, 0.67),
('7', '7/2014', 59.8, 31.4, 96.6),
('8', '8/2014', 125.2, 47.6, 35.72),
('9', '9/2014', 112.7, 37.6, 50.33),
('10', '10/2014', 10.7, 18.6, 67.77),
('11', '11/2014', 8, 9.4, 34.63),
('12', '12/2014', 0, 4.5, 19.21);

-- --------------------------------------------------------

--
-- Table structure for table `god_2015`
--

CREATE TABLE IF NOT EXISTS `god_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` float DEFAULT NULL,
  `Evapotranspiration` float DEFAULT NULL,
  `Water Yield` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='god_2013';

--
-- Dumping data for table `god_2015`
--

INSERT INTO `god_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', 1.9, 5.63, 0.64),
('2', '2/2015', 22, 7.87, 0.23),
('3', '3/2015', 4.31, 35.58, 0.11),
('4', '4/2015', 8.9, 47.68, 0.05),
('5', '5/2015', 3.2, 19.49, 5.98),
('6', '6/2015', 156.5, 44.12, 0.15),
('7', '7/2015', 51.7, 54.21, 9.03),
('8', '8/2015', 129.5, 46.81, 72.82),
('9', '9/2015', 117.9, 43.92, 41.36),
('10', '10/2015', 28, 26.04, 22.64),
('11', '11/2015', 4, 16.5, 13.53),
('12', '12/2015', 0, 9.4, 10.23);

-- --------------------------------------------------------

--
-- Table structure for table `god_2016`
--

CREATE TABLE IF NOT EXISTS `god_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` float DEFAULT NULL,
  `Evapotranspiration` float DEFAULT NULL,
  `Water Yield` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='god_2013';

--
-- Dumping data for table `god_2016`
--

INSERT INTO `god_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', 0, 6.69, 0.54),
('2', '2/2016', 7, 6.21, 0.21),
('3', '3/2016', 3.1, 35.31, 0.08),
('4', '4/2016', 9.4, 45.06, 0.03),
('5', '5/2016', 0, 42.25, 0.51),
('6', '6/2016', 130.5, 32.19, 67.56),
('7', '7/2016', 351.7, 58.78, 161.1),
('8', '8/2016', 102.4, 51.56, 194.6),
('9', '9/2016', 301.7, 44.43, 188.2),
('10', '10/2016', 0, 0, 0),
('11', '11/2016', 0, 0, 0),
('12', '12/2016', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hing_2013`
--

CREATE TABLE IF NOT EXISTS `hing_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hing_2013`
--

INSERT INTO `hing_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '1.34', '4.75', '3.77'),
('2', '2/2013', '26.21', '9.43', '0.89'),
('3', '3/2013', '0.00', '35.16', '0.63'),
('4', '4/2013', '12.23', '70.71', '0.18'),
('5', '5/2013', '15.79', '0.63', '0.07'),
('6', '6/2013', '155.78', '12.81', '0.03'),
('7', '7/2013', '357.21', '28.64', '75.15'),
('8', '8/2013', '157.60', '33.12', '83.68'),
('9', '9/2013', '104.22', '31.39', '143.43'),
('10', '10/2013', '86.61', '20.30', '48.97'),
('11', '11/2013', '10.97', '8.37', '22.31'),
('12', '12/2013', '0.00', '5.90', '11.61');

-- --------------------------------------------------------

--
-- Table structure for table `hing_2014`
--

CREATE TABLE IF NOT EXISTS `hing_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hing_2014`
--

INSERT INTO `hing_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '7.14', '0.84'),
('2', '2/2014', '15.00', '15.39', '0.30'),
('3', '3/2014', '7.61', '30.32', '0.13'),
('4', '4/2014', '8.60', '51.56', '0.05'),
('5', '5/2014', '5.05', '3.63', '0.03'),
('6', '6/2014', '23.13', '9.94', '0.52'),
('7', '7/2014', '71.69', '24.79', '76.27'),
('8', '8/2014', '154.12', '37.58', '28.20'),
('9', '9/2014', '88.98', '29.68', '39.74'),
('10', '10/2014', '8.44', '14.68', '53.51'),
('11', '11/2014', '6.31', '7.42', '27.34'),
('12', '12/2014', '0.00', '3.55', '15.16');

-- --------------------------------------------------------

--
-- Table structure for table `hing_2015`
--

CREATE TABLE IF NOT EXISTS `hing_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hing_2015`
--

INSERT INTO `hing_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.50', '4.44', '0.50'),
('2', '2/2015', '17.37', '6.21', '0.18'),
('3', '3/2015', '3.40', '28.09', '0.08'),
('4', '4/2015', '7.02', '37.64', '0.03'),
('5', '5/2015', '2.52', '15.38', '4.72'),
('6', '6/2015', '123.57', '34.83', '0.11'),
('7', '7/2015', '40.82', '42.80', '7.13'),
('8', '8/2015', '102.25', '36.96', '57.49'),
('9', '9/2015', '93.09', '34.67', '32.65'),
('10', '10/2015', '22.10', '20.56', '17.87'),
('11', '11/2015', '3.15', '13.02', '10.68'),
('12', '12/2015', '0.00', '7.42', '8.07');

-- --------------------------------------------------------

--
-- Table structure for table `hing_2016`
--

CREATE TABLE IF NOT EXISTS `hing_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hing_2016`
--

INSERT INTO `hing_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '5.28', '0.42'),
('2', '2/2016', '5.52', '4.90', '0.16'),
('3', '3/2016', '2.44', '27.88', '0.06'),
('4', '4/2016', '7.42', '35.57', '0.02'),
('5', '5/2016', '0.00', '33.36', '0.40'),
('6', '6/2016', '103.04', '25.41', '53.34'),
('7', '7/2016', '277.70', '46.41', '127.20'),
('8', '8/2016', '80.85', '40.71', '153.65'),
('9', '9/2016', '238.22', '35.08', '148.60'),
('10', '10/2016', '0.00', '0.00', '0.00'),
('11', '11/2016', '0.00', '0.00', '0.00'),
('12', '12/2016', '0.00', '0.00', '0.00'),
('1', '1/2016', '0.00', '5.28', '0.42'),
('2', '2/2016', '5.52', '4.90', '0.16'),
('3', '3/2016', '2.44', '27.88', '0.06'),
('4', '4/2016', '7.42', '35.57', '0.02'),
('5', '5/2016', '0.00', '33.36', '0.40'),
('6', '6/2016', '103.04', '25.41', '53.34'),
('7', '7/2016', '277.70', '46.41', '127.20'),
('8', '8/2016', '80.85', '40.71', '153.65'),
('9', '9/2016', '238.22', '35.08', '148.60'),
('10', '10/2016', '0.00', '0.00', '0.00'),
('11', '11/2016', '0.00', '0.00', '0.00'),
('12', '12/2016', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `jal_2013`
--

CREATE TABLE IF NOT EXISTS `jal_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jal_2013`
--

INSERT INTO `jal_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '1.65', '5.86', '4.65'),
('2', '2/2013', '32.33', '11.63', '1.10'),
('3', '3/2013', '0.00', '43.37', '0.78'),
('4', '4/2013', '15.09', '87.21', '0.23'),
('5', '5/2013', '19.47', '0.77', '0.09'),
('6', '6/2013', '192.13', '15.80', '0.04'),
('7', '7/2013', '440.56', '35.33', '92.69'),
('8', '8/2013', '194.37', '40.85', '103.20'),
('9', '9/2013', '128.54', '38.71', '176.89'),
('10', '10/2013', '106.83', '25.03', '60.40'),
('11', '11/2013', '13.53', '10.33', '27.52'),
('12', '12/2013', '0.00', '7.28', '14.32');

-- --------------------------------------------------------

--
-- Table structure for table `jal_2014`
--

CREATE TABLE IF NOT EXISTS `jal_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jal_2014`
--

INSERT INTO `jal_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '8.81', '1.04'),
('2', '2/2014', '18.50', '18.98', '0.37'),
('3', '3/2014', '9.38', '37.39', '0.16'),
('4', '4/2014', '10.61', '63.59', '0.06'),
('5', '5/2014', '6.23', '4.47', '0.03'),
('6', '6/2014', '28.53', '12.27', '0.65'),
('7', '7/2014', '88.42', '30.57', '94.07'),
('8', '8/2014', '190.09', '46.35', '34.78'),
('9', '9/2014', '109.75', '36.61', '49.01'),
('10', '10/2014', '10.42', '18.11', '65.99'),
('11', '11/2014', '7.79', '9.15', '33.72'),
('12', '12/2014', '0.00', '4.38', '18.70'),
('1', '1/2014', '0.00', '8.81', '1.04'),
('2', '2/2014', '18.50', '18.98', '0.37'),
('3', '3/2014', '9.38', '37.39', '0.16'),
('4', '4/2014', '10.61', '63.59', '0.06'),
('5', '5/2014', '6.23', '4.47', '0.03'),
('6', '6/2014', '28.53', '12.27', '0.65'),
('7', '7/2014', '88.42', '30.57', '94.07'),
('8', '8/2014', '190.09', '46.35', '34.78'),
('9', '9/2014', '109.75', '36.61', '49.01'),
('10', '10/2014', '10.42', '18.11', '65.99'),
('11', '11/2014', '7.79', '9.15', '33.72'),
('12', '12/2014', '0.00', '4.38', '18.70');

-- --------------------------------------------------------

--
-- Table structure for table `jal_2015`
--

CREATE TABLE IF NOT EXISTS `jal_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jal_2015`
--

INSERT INTO `jal_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.85', '5.48', '0.62'),
('2', '2/2015', '21.42', '7.66', '0.22'),
('3', '3/2015', '4.19', '34.64', '0.10'),
('4', '4/2015', '8.66', '46.43', '0.04'),
('5', '5/2015', '3.11', '18.98', '5.82'),
('6', '6/2015', '152.40', '42.96', '0.14'),
('7', '7/2015', '50.34', '52.79', '8.79'),
('8', '8/2015', '126.11', '45.58', '70.91'),
('9', '9/2015', '114.81', '42.77', '40.27'),
('10', '10/2015', '27.26', '25.35', '22.04'),
('11', '11/2015', '3.89', '16.06', '13.17'),
('12', '12/2015', '0.00', '9.15', '9.96'),
('1', '1/2015', '1.85', '5.48', '0.62'),
('2', '2/2015', '21.42', '7.66', '0.22'),
('3', '3/2015', '4.19', '34.64', '0.10'),
('4', '4/2015', '8.66', '46.43', '0.04'),
('5', '5/2015', '3.11', '18.98', '5.82'),
('6', '6/2015', '152.40', '42.96', '0.14'),
('7', '7/2015', '50.34', '52.79', '8.79'),
('8', '8/2015', '126.11', '45.58', '70.91'),
('9', '9/2015', '114.81', '42.77', '40.27'),
('10', '10/2015', '27.26', '25.35', '22.04'),
('11', '11/2015', '3.89', '16.06', '13.17'),
('12', '12/2015', '0.00', '9.15', '9.96');

-- --------------------------------------------------------

--
-- Table structure for table `jal_2016`
--

CREATE TABLE IF NOT EXISTS `jal_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jal_2016`
--

INSERT INTO `jal_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '6.51', '0.52'),
('2', '2/2016', '6.81', '6.04', '0.20'),
('3', '3/2016', '3.01', '34.38', '0.07'),
('4', '4/2016', '9.15', '43.88', '0.02'),
('5', '5/2016', '0.00', '41.14', '0.49'),
('6', '6/2016', '127.08', '31.34', '65.79'),
('7', '7/2016', '342.49', '57.24', '156.88'),
('8', '8/2016', '99.72', '50.21', '189.50'),
('9', '9/2016', '293.80', '43.26', '183.27'),
('10', '10/2016', '0.00', '26.48', '0.00'),
('11', '11/2016', '0.00', '13.14', '0.00'),
('12', '12/2016', '0.00', '7.10', '0.00'),
('1', '1/2016', '0.00', '6.51', '0.52'),
('2', '2/2016', '6.81', '6.04', '0.20'),
('3', '3/2016', '3.01', '34.38', '0.07'),
('4', '4/2016', '9.15', '43.88', '0.02'),
('5', '5/2016', '0.00', '41.14', '0.49'),
('6', '6/2016', '127.08', '31.34', '65.79'),
('7', '7/2016', '342.49', '57.24', '156.88'),
('8', '8/2016', '99.72', '50.21', '189.50'),
('9', '9/2016', '293.80', '43.26', '183.27'),
('10', '10/2016', '0.00', '26.48', '0.00'),
('11', '11/2016', '0.00', '13.14', '0.00'),
('12', '12/2016', '0.00', '7.10', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `ltr_2013`
--

CREATE TABLE IF NOT EXISTS `ltr_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltr_2013`
--

INSERT INTO `ltr_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '1.37', '5.41', '4.30'),
('2', '2/2013', '26.89', '10.75', '1.01'),
('3', '3/2013', '0.00', '40.08', '0.72'),
('4', '4/2013', '12.55', '80.60', '0.21'),
('5', '5/2013', '16.20', '0.72', '0.09'),
('6', '6/2013', '159.81', '14.60', '0.04'),
('7', '7/2013', '366.44', '32.65', '85.66'),
('8', '8/2013', '161.67', '37.75', '95.38'),
('9', '9/2013', '106.92', '35.78', '163.48'),
('10', '10/2013', '88.85', '23.13', '55.82'),
('11', '11/2013', '11.25', '9.54', '25.43'),
('12', '12/2013', '0.00', '6.73', '13.23');

-- --------------------------------------------------------

--
-- Table structure for table `ltr_2014`
--

CREATE TABLE IF NOT EXISTS `ltr_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltr_2014`
--

INSERT INTO `ltr_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '8.14', '0.96'),
('2', '2/2014', '17.10', '17.55', '0.35'),
('3', '3/2014', '8.67', '34.56', '0.15'),
('4', '4/2014', '9.81', '58.77', '0.06'),
('5', '5/2014', '5.76', '4.14', '0.03'),
('6', '6/2014', '26.37', '11.34', '0.60'),
('7', '7/2014', '81.72', '28.26', '86.94'),
('8', '8/2014', '175.68', '42.84', '32.14'),
('9', '9/2014', '101.43', '33.84', '45.29'),
('10', '10/2014', '9.63', '16.74', '60.99'),
('11', '11/2014', '7.20', '8.46', '31.16'),
('12', '12/2014', '0.00', '4.05', '17.28');

-- --------------------------------------------------------

--
-- Table structure for table `ltr_2015`
--

CREATE TABLE IF NOT EXISTS `ltr_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltr_2015`
--

INSERT INTO `ltr_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.71', '5.06', '0.57'),
('2', '2/2015', '19.80', '7.08', '0.20'),
('3', '3/2015', '3.87', '32.02', '0.09'),
('4', '4/2015', '8.01', '42.91', '0.04'),
('5', '5/2015', '2.88', '17.54', '5.38'),
('6', '6/2015', '140.85', '39.70', '0.13'),
('7', '7/2015', '46.53', '48.78', '8.12'),
('8', '8/2015', '116.55', '42.12', '65.53'),
('9', '9/2015', '106.11', '39.52', '37.22'),
('10', '10/2015', '25.20', '23.43', '20.37'),
('11', '11/2015', '3.60', '14.85', '12.17'),
('12', '12/2015', '0.00', '8.46', '9.20');

-- --------------------------------------------------------

--
-- Table structure for table `ltr_2016`
--

CREATE TABLE IF NOT EXISTS `ltr_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltr_2016`
--

INSERT INTO `ltr_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '6.02', '0.48'),
('2', '2/2016', '6.30', '5.58', '0.18'),
('3', '3/2016', '2.79', '31.77', '0.07'),
('4', '4/2016', '8.46', '40.55', '0.02'),
('5', '5/2016', '0.00', '38.02', '0.45'),
('6', '6/2016', '117.45', '28.97', '60.80'),
('7', '7/2016', '316.53', '52.90', '144.99'),
('8', '8/2016', '92.16', '46.40', '175.14'),
('9', '9/2016', '271.53', '39.98', '169.38'),
('10', '10/2016', '0.00', '0.00', '0.00'),
('11', '11/2016', '0.00', '0.00', '0.00'),
('12', '12/2016', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `obd_2013`
--

CREATE TABLE IF NOT EXISTS `obd_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obd_2013`
--

INSERT INTO `obd_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '1.12', '4.44', '3.52'),
('2', '2/2013', '22.05', '8.81', '0.83'),
('3', '3/2013', '0.00', '32.87', '0.59'),
('4', '4/2013', '10.29', '66.09', '0.17'),
('5', '5/2013', '13.28', '0.59', '0.07'),
('6', '6/2013', '131.04', '11.97', '0.03'),
('7', '7/2013', '300.48', '26.77', '70.24'),
('8', '8/2013', '132.57', '30.95', '78.21'),
('9', '9/2013', '87.67', '29.34', '134.05'),
('10', '10/2013', '72.86', '18.97', '45.77'),
('11', '11/2013', '9.23', '7.83', '20.85'),
('12', '12/2013', '0.00', '5.52', '10.85');

-- --------------------------------------------------------

--
-- Table structure for table `obd_2014`
--

CREATE TABLE IF NOT EXISTS `obd_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obd_2014`
--

INSERT INTO `obd_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '6.67', '0.78'),
('2', '2/2014', '14.02', '14.39', '0.28'),
('3', '3/2014', '7.11', '28.33', '0.12'),
('4', '4/2014', '8.04', '48.19', '0.05'),
('5', '5/2014', '4.72', '3.39', '0.02'),
('6', '6/2014', '21.62', '9.29', '0.49'),
('7', '7/2014', '67.01', '23.17', '71.29'),
('8', '8/2014', '144.05', '35.12', '26.36'),
('9', '9/2014', '83.17', '27.74', '37.14'),
('10', '10/2014', '7.89', '13.72', '50.01'),
('11', '11/2014', '5.90', '6.93', '25.55'),
('12', '12/2014', '0.00', '3.32', '14.17');

-- --------------------------------------------------------

--
-- Table structure for table `obd_2015`
--

CREATE TABLE IF NOT EXISTS `obd_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obd_2015`
--

INSERT INTO `obd_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.40', '4.15', '0.47'),
('2', '2/2015', '16.23', '5.80', '0.16'),
('3', '3/2015', '3.18', '26.25', '0.08'),
('4', '4/2015', '6.56', '35.18', '0.03'),
('5', '5/2015', '2.36', '14.38', '4.41'),
('6', '6/2015', '115.49', '32.56', '0.11'),
('7', '7/2015', '38.15', '40.00', '6.66'),
('8', '8/2015', '95.57', '34.54', '53.74'),
('9', '9/2015', '87.01', '32.41', '30.52'),
('10', '10/2015', '20.66', '19.21', '16.70'),
('11', '11/2015', '2.95', '12.17', '9.98'),
('12', '12/2015', '0.00', '6.93', '7.54');

-- --------------------------------------------------------

--
-- Table structure for table `obd_2016`
--

CREATE TABLE IF NOT EXISTS `obd_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obd_2016`
--

INSERT INTO `obd_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '4.93', '0.39'),
('2', '2/2016', '5.16', '4.58', '0.15'),
('3', '3/2016', '2.28', '26.05', '0.05'),
('4', '4/2016', '6.93', '33.25', '0.02'),
('5', '5/2016', '0.00', '31.18', '0.37'),
('6', '6/2016', '96.30', '23.75', '49.85'),
('7', '7/2016', '259.55', '43.37', '118.89'),
('8', '8/2016', '75.57', '38.05', '143.61'),
('9', '9/2016', '222.65', '32.78', '138.89'),
('10', '10/2016', '0.00', '20.07', '0.00'),
('11', '11/2016', '0.00', '9.96', '0.00'),
('12', '12/2016', '0.00', '5.38', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `par_2013`
--

CREATE TABLE IF NOT EXISTS `par_2013` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `par_2013`
--

INSERT INTO `par_2013` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2013', '1.59', '5.65', '4.49'),
('2', '2/2013', '31.20', '11.23', '1.06'),
('3', '3/2013', '0.00', '41.86', '0.76'),
('4', '4/2013', '14.57', '84.18', '0.22'),
('5', '5/2013', '18.80', '0.75', '0.09'),
('6', '6/2013', '185.46', '15.25', '0.04'),
('7', '7/2013', '425.25', '34.10', '89.46'),
('8', '8/2013', '187.62', '39.43', '99.62'),
('9', '9/2013', '124.08', '37.37', '170.75'),
('10', '10/2013', '103.11', '24.16', '58.30'),
('11', '11/2013', '13.06', '9.97', '26.56'),
('12', '12/2013', '0.00', '7.03', '13.82');

-- --------------------------------------------------------

--
-- Table structure for table `par_2014`
--

CREATE TABLE IF NOT EXISTS `par_2014` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `par_2014`
--

INSERT INTO `par_2014` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2014', '0.00', '8.50', '1.00'),
('2', '2/2014', '17.86', '18.33', '0.36'),
('3', '3/2014', '9.06', '36.09', '0.15'),
('4', '4/2014', '10.24', '61.38', '0.06'),
('5', '5/2014', '6.01', '4.32', '0.03'),
('6', '6/2014', '27.54', '11.84', '0.62'),
('7', '7/2014', '85.35', '29.51', '90.80'),
('8', '8/2014', '183.48', '44.74', '33.57'),
('9', '9/2014', '105.93', '35.34', '47.31'),
('10', '10/2014', '10.05', '17.48', '63.70'),
('11', '11/2014', '7.52', '8.83', '32.55'),
('12', '12/2014', '0.00', '4.23', '18.05');

-- --------------------------------------------------------

--
-- Table structure for table `par_2015`
--

CREATE TABLE IF NOT EXISTS `par_2015` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `par_2015`
--

INSERT INTO `par_2015` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2015', '1.78', '5.29', '0.60'),
('2', '2/2015', '20.68', '7.39', '0.21'),
('3', '3/2015', '4.05', '33.44', '0.10'),
('4', '4/2015', '8.36', '44.81', '0.04'),
('5', '5/2015', '3.00', '18.32', '5.62'),
('6', '6/2015', '147.11', '41.47', '0.14'),
('7', '7/2015', '48.59', '50.95', '8.48'),
('8', '8/2015', '121.73', '44.00', '68.45'),
('9', '9/2015', '110.82', '41.28', '38.87'),
('10', '10/2015', '26.32', '24.47', '21.28'),
('11', '11/2015', '3.76', '15.51', '12.71'),
('12', '12/2015', '0.00', '8.83', '9.61');

-- --------------------------------------------------------

--
-- Table structure for table `par_2016`
--

CREATE TABLE IF NOT EXISTS `par_2016` (
  `id` varchar(20) NOT NULL,
  `Date_MY` varchar(10) NOT NULL,
  `Precipitation` varchar(20) NOT NULL,
  `Evapotranspiration` varchar(20) NOT NULL,
  `Water Yield` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `par_2016`
--

INSERT INTO `par_2016` (`id`, `Date_MY`, `Precipitation`, `Evapotranspiration`, `Water Yield`) VALUES
('1', '1/2016', '0.00', '6.28', '0.50'),
('2', '2/2016', '6.58', '5.83', '0.19'),
('3', '3/2016', '2.91', '33.19', '0.07'),
('4', '4/2016', '8.83', '42.35', '0.02'),
('5', '5/2016', '0.00', '39.71', '0.47'),
('6', '6/2016', '122.67', '30.25', '63.50'),
('7', '7/2016', '330.59', '55.25', '151.43'),
('8', '8/2016', '96.25', '48.46', '182.92'),
('9', '9/2016', '283.59', '41.76', '176.90'),
('10', '10/2016', '0.00', '0.00', '0.00'),
('11', '11/2016', '0.00', '0.00', '0.00'),
('12', '12/2016', '0.00', '0.00', '0.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
