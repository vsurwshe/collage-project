-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 06:57 AM
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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `rollno` varchar(10) NOT NULL,
  `st_username` varchar(25) NOT NULL,
  `class` varchar(8) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `done` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rollno`, `st_username`, `class`, `password`, `done`) VALUES
('CSE-02', 'Aathira V E', 'CSE-BE', 'aathira', 0),
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
('NCE15CS019', 'Athulya M K', 'CSE-BE', 'athulya', 0),
('NCE15CS020', 'Baby Shafna K M', 'CSE-BE', 'babyshafna', 0),
('NCE15CS022', 'Bindhuja P', 'CSE-BE', 'bindhuja', 0),
('NCE15CS023', 'Chandni Chakkungal', 'CSE-BE', 'chandni', 0),
('NCE15CS024', 'Devkiran M', 'CSE-BE', 'devkiran', 0),
('NCE15CS025', 'Diya Lakshmi P', 'CSE-BE', 'diyalakshmi', 0),
('NCE15CS026', 'Geethu Seby', 'CSE-BE', 'geethu', 0),
('NCE15CS027', 'Heera Mohan', 'CSE-BE', 'heera', 0),
('NCE15CS028', 'Ijas Ali', 'CSE-BE', 'ijas', 0),
('NCE15CS029', 'Jayalakshmi S', 'CSE-BE', 'jayalakshmi', 0),
('NCE15CS030', 'Jayaraj A', 'CSE-BE', 'jayaraj', 0),
('NCE15CS031', 'Jijo Daniel', 'CSE-BE', 'jijo', 0),
('NCE15CS033', 'Jithin P Ganesh', 'CSE-BE', 'jithin', 0),
('NCE15CS032', 'Jithin Palathingal', 'CSE-BE', 'jithin', 0),
('NCE15CS034', 'Jovial John George', 'CSE-BE', 'jovial', 0),
('NCE15CS035', 'Keerthana Unnikrishnan', 'CSE-BE', 'keerthana', 0),
('NCE15CS037', 'Liyas Thomas', 'CSE-BE', 'liyas', 0),
('NCE15CS038', 'Meera M', 'CSE-BE', 'meera', 0),
('NCE15CS040', 'Merin George C', 'CSE-BE', 'merin', 0),
('NCE15CS041', 'Mohammed Anoop P N', 'CSE-BE', 'anoop', 0),
('NCE15CS042', 'Muvin M', 'CSE-BE', 'muvin', 0),
('NCE15CS043', 'Namitha H', 'CSE-BE', 'namitha', 0),
('NCE15CS044', 'Nandini V K', 'CSE-BE', 'nandini', 0),
('CSE-01', 'Nidhi K S', 'CSE-BE', 'cse-01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_username`),
  ADD KEY `st_username` (`st_username`),
  ADD KEY `rollno` (`rollno`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
