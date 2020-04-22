-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2018 at 12:46 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `slambook`
--

CREATE TABLE `slambook` (
  `id` int(11) NOT NULL,
  `FN` varchar(400) NOT NULL,
  `MN` varchar(400) NOT NULL,
  `LN` varchar(400) NOT NULL,
  `FUL_N` varchar(400) NOT NULL,
  `NIC_N` varchar(400) NOT NULL,
  `FAT_N` varchar(400) NOT NULL,
  `MOT_N` varchar(400) NOT NULL,
  `B_N_S_N` varchar(400) NOT NULL,
  `BS_F_N` varchar(400) NOT NULL,
  `FIRST_CN` varchar(400) NOT NULL,
  `KNOWME` varchar(400) NOT NULL,
  `HouseNumber` varchar(400) NOT NULL,
  `LandMark` varchar(400) NOT NULL,
  `City` varchar(400) NOT NULL,
  `District` varchar(400) NOT NULL,
  `State` varchar(400) NOT NULL,
  `Country` varchar(400) NOT NULL,
  `ZiPCode` varchar(400) NOT NULL,
  `EarthCoordinatesLN_LT` varchar(400) NOT NULL,
  `EmailId` varchar(400) NOT NULL,
  `Website` varchar(400) NOT NULL,
  `SkypeId` varchar(400) NOT NULL,
  `LinkedIn` varchar(400) NOT NULL,
  `Twitter` varchar(400) NOT NULL,
  `Google` varchar(400) NOT NULL,
  `Facebook` varchar(400) NOT NULL,
  `Eskimi` varchar(400) NOT NULL,
  `OtherId` varchar(400) NOT NULL,
  `MobileNumber` varchar(400) NOT NULL,
  `LandLineNumber` varchar(400) NOT NULL,
  `VOIP Number` varchar(400) NOT NULL,
  `DateOfBirth` varchar(400) NOT NULL,
  `ZodiacAstroSign` varchar(400) NOT NULL,
  `Gender` varchar(400) NOT NULL,
  `FavouriteColor` varchar(400) NOT NULL,
  `FavouriteDress` varchar(400) NOT NULL,
  `FavouriteMusic` varchar(400) NOT NULL,
  `FavouriteGame` varchar(400) NOT NULL,
  `FavouriteDish` varchar(400) NOT NULL,
  `FavouriteBook` varchar(400) NOT NULL,
  `FavouriteActor` varchar(400) NOT NULL,
  `FavouriteSportPerson` varchar(400) NOT NULL,
  `MoreInterestAbout` varchar(400) NOT NULL,
  `Thingsyoulikemostly` varchar(400) NOT NULL,
  `Funniestmomentinyourlife` varchar(400) NOT NULL,
  `Dislikedish` varchar(400) NOT NULL,
  `Dislikethings` varchar(400) NOT NULL,
  `Crazyaboutthingslike` varchar(400) NOT NULL,
  `Anyotherdislike` varchar(400) NOT NULL,
  `Whatyoulikeonme` varchar(400) NOT NULL,
  `Whatyoudislikeonme` varchar(400) NOT NULL,
  `Mostremembermomentwithme` varchar(400) NOT NULL,
  `Suggestionstome` varchar(400) NOT NULL,
  `Mostundesirablemomentbyme` varchar(400) NOT NULL,
  `Firstmeetwithme` varchar(400) NOT NULL,
  `Lifeambition` varchar(400) NOT NULL,
  `Inspiredby` varchar(400) NOT NULL,
  `Yourrolemodel` varchar(400) NOT NULL,
  `AboutYourSelf` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slambook`
--
ALTER TABLE `slambook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slambook`
--
ALTER TABLE `slambook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
