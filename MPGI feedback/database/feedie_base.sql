-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 04:09 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedie_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `feed_no` int(6) NOT NULL,
  `st_username` varchar(50) NOT NULL,
  `te_username` varchar(50) NOT NULL,
  `sub_code` varchar(7) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `cover` int(2) DEFAULT NULL,
  `discuss` int(2) DEFAULT NULL,
  `knowledge` int(2) DEFAULT NULL,
  `communicate` int(2) DEFAULT NULL,
  `inspire` int(2) DEFAULT NULL,
  `punctual` int(2) DEFAULT NULL,
  `engage` int(2) DEFAULT NULL,
  `prepare` int(2) DEFAULT NULL,
  `guidance` int(2) DEFAULT NULL,
  `available` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `feeds`
--

TRUNCATE TABLE `feeds`;
--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feed_no`, `st_username`, `te_username`, `sub_code`, `sub_name`, `class`, `cover`, `discuss`, `knowledge`, `communicate`, `inspire`, `punctual`, `engage`, `prepare`, `guidance`, `available`) VALUES
(13, 'Aathira V E', 'ARUN K', 'CS306', 'Networking', 'CSE-A S6', 3, 4, 3, 2, 3, 2, 4, 3, 3, 2),
(14, 'Aathira V E', 'Khan Asrar', 'CS001', 'Human Computer Interaction', 'CSE-BE', 4, 3, 5, 3, 3, 3, 2, 4, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hods`
--

CREATE TABLE `hods` (
  `hod_username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dept` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `hods`
--

TRUNCATE TABLE `hods`;
--
-- Dumping data for table `hods`
--

INSERT INTO `hods` (`hod_username`, `password`, `dept`) VALUES
('ECEHOD', 'ecehod', 'ECE'),
('Kamtane AV', 'csehod', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `rollno` varchar(10) NOT NULL,
  `st_username` varchar(25) NOT NULL,
  `class` varchar(8) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `done` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `students`
--

TRUNCATE TABLE `students`;
--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rollno`, `st_username`, `class`, `password`, `done`) VALUES
('CSE-02', 'Aathira V E', 'CSE-BE', 'CSE-02', 0),
('CSE-03', 'Abhijith C', 'CSE-BE', 'abhijith', 0),
('CSE-04', 'Adith K V', 'CSE-BE', 'adith', 0),
('CSE-05', 'Aishwarya Ravi', 'CSE-BE', 'aiswarya', 0),
('CSE-06', 'Aiswarya S Prakash', 'CSE-BE', 'aiswarya', 0),
('CSE-07', 'Ajith P G', 'CSE-BE', 'ajith', 0),
('CSE-08', 'Akhila Keshav', 'CSE-BE', 'akhila', 0),
('CSE-09', 'Akhila N', 'CSE-BE', 'akhila', 0),
('CSE-10', 'Amrutha K B', 'CSE-BE', 'amrutha', 0),
('CSE-11', 'Anagha S Thadathil', 'CSE-BE', 'anagha', 0),
('CSE-12', 'Anjali Sunil', 'CSE-BE', 'anjali', 0),
('CSE-13', 'Anjana Das', 'CSE-BE', 'anjana', 0),
('CSE-14', 'Anusha K A', 'CSE-BE', 'anusha', 0),
('CSE-15', 'Arjun Jayesh', 'CSE-BE', 'arjun', 0),
('CSE-15', 'Aswathy M K', 'CSE-BE', 'aswathy', 0),
('CSE-16', 'Athulya M K', 'CSE-BE', 'athulya', 0),
('CSE-17', 'Baby Shafna K M', 'CSE-BE', 'babyshafna', 0),
('CSE-18', 'Bindhuja P', 'CSE-BE', 'bindhuja', 0),
('CSE-19', 'Chandni Chakkungal', 'CSE-BE', 'chandni', 0),
('CSE-20', 'Devkiran M', 'CSE-BE', 'devkiran', 0),
('CSE-21', 'Diya Lakshmi P', 'CSE-BE', 'diyalakshmi', 0),
('CSE-22', 'Geethu Seby', 'CSE-BE', 'geethu', 0),
('CSE-23', 'Heera Mohan', 'CSE-BE', 'heera', 0),
('CSE-24', 'Ijas Ali', 'CSE-BE', 'ijas', 0),
('CSE-25', 'Jayalakshmi S', 'CSE-BE', 'jayalakshmi', 0),
('CSE-26', 'Jayaraj A', 'CSE-BE', 'jayaraj', 0),
('CSE-27', 'Jijo Daniel', 'CSE-BE', 'jijo', 0),
('CSE-28', 'Jithin P Ganesh', 'CSE-BE', 'jithin', 0),
('CSE-29', 'Jithin Palathingal', 'CSE-BE', 'jithin', 0),
('CSE-30', 'Jovial John George', 'CSE-BE', 'jovial', 0),
('CSE-31', 'Keerthana Unnikrishnan', 'CSE-BE', 'keerthana', 0),
('CSE-01', 'Nidhi K S', 'CSE-BE', 'cse-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `te_username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dept` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teachers`
--

TRUNCATE TABLE `teachers`;
--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`te_username`, `password`, `dept`) VALUES
('Gaikwad S. Y.', 'gaikwad', 'CSE'),
('Katakdound Vikas', 'vikas', 'CSE'),
('Khan Asrar', 'khan', 'CSE'),
('Lathkar', 'lathkar', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `teachersinfo`
--

CREATE TABLE `teachersinfo` (
  `info_no` int(6) NOT NULL,
  `te_username` varchar(50) NOT NULL,
  `class` varchar(8) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_code` varchar(7) NOT NULL,
  `dept` varchar(5) NOT NULL,
  `overall` int(3) DEFAULT NULL,
  `class_strength` int(3) NOT NULL,
  `feed_applied` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teachersinfo`
--

TRUNCATE TABLE `teachersinfo`;
--
-- Dumping data for table `teachersinfo`
--

INSERT INTO `teachersinfo` (`info_no`, `te_username`, `class`, `sub_name`, `sub_code`, `dept`, `overall`, `class_strength`, `feed_applied`) VALUES
(1, 'Khan Asrar', 'CSE-BE', 'Human Computer Interaction', 'CS001', 'CSE', 70, 21, 3),
(2, 'Gaikwad S. Y.', 'CSE-BE', 'Mobile Computing', 'CS001', 'CSE', NULL, 21, 0),
(3, 'Lathkar', 'CSE-BE', 'Cloud Computing', 'CS302', 'CSE', NULL, 21, 0),
(4, 'Katakdound Vikas', 'CSE-BE', 'CNS', 'CS304', 'CSE', NULL, 21, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`feed_no`),
  ADD KEY `st_username` (`st_username`),
  ADD KEY `te_username` (`te_username`);

--
-- Indexes for table `hods`
--
ALTER TABLE `hods`
  ADD PRIMARY KEY (`hod_username`),
  ADD KEY `hod_username` (`hod_username`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_username`),
  ADD KEY `st_username` (`st_username`),
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`te_username`),
  ADD KEY `te_username` (`te_username`);

--
-- Indexes for table `teachersinfo`
--
ALTER TABLE `teachersinfo`
  ADD UNIQUE KEY `info_no` (`info_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `feed_no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teachersinfo`
--
ALTER TABLE `teachersinfo`
  MODIFY `info_no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
