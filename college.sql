-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 10:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `csnotice`
--

CREATE TABLE `csnotice` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csnotice`
--

INSERT INTO `csnotice` (`id`, `name`, `text`) VALUES
(1, 'Vaibhav', 'cvsdc');

-- --------------------------------------------------------

--
-- Table structure for table `fycs`
--

CREATE TABLE `fycs` (
  `rno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Day3` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fycs`
--

INSERT INTO `fycs` (`rno`, `name`, `Day3`) VALUES
(1, 'student1', 'A'),
(2, 'student2', 'A'),
(3, 'student3', 'A'),
(4, 'student4', 'A'),
(5, 'student5', 'A'),
(6, 'student6', 'A'),
(7, 'student7', 'A'),
(8, 'student8', 'A'),
(9, 'student9', 'A'),
(10, 'student10', 'A'),
(11, 'student11', 'P'),
(12, 'student12', 'P'),
(13, 'student13', 'P'),
(14, 'student14', 'A'),
(15, 'student15', 'A'),
(16, 'student16', 'A'),
(17, 'student17', 'A'),
(18, 'student18', 'A'),
(19, 'student19', 'A'),
(20, 'student20', 'A'),
(21, 'student21', 'A'),
(22, 'student22', 'A'),
(23, 'student23', 'A'),
(24, 'student24', 'A'),
(25, 'student25', 'A'),
(26, 'student26', 'A'),
(27, 'student27', 'A'),
(28, 'student28', 'A'),
(29, 'student29', 'A'),
(30, 'student30', 'A'),
(31, 'student31', 'A'),
(32, 'student32', 'A'),
(33, 'student33', 'A'),
(34, 'student34', 'A'),
(35, 'student35', 'A'),
(36, 'student36', 'A'),
(37, 'student37', 'A'),
(38, 'student38', 'A'),
(39, 'student39', 'A'),
(40, 'student40', 'A'),
(41, 'student41', 'P'),
(42, 'student42', 'P'),
(43, 'student43', 'P'),
(44, 'student44', 'P'),
(45, 'student45', 'P'),
(46, 'student46', 'P'),
(47, 'student47', 'P'),
(48, 'student48', 'P'),
(49, 'student49', 'P'),
(50, 'student50', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `fycsresult`
--

CREATE TABLE `fycsresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fycsresult`
--

INSERT INTO `fycsresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', NULL, NULL),
(2, 'student2', NULL, NULL),
(3, 'student3', NULL, NULL),
(4, 'student4', NULL, NULL),
(5, 'student5', NULL, NULL),
(6, 'student6', NULL, NULL),
(7, 'student7', NULL, NULL),
(8, 'student8', NULL, NULL),
(9, 'student9', NULL, NULL),
(10, 'student10', NULL, NULL),
(11, 'student11', NULL, NULL),
(12, 'student12', NULL, NULL),
(13, 'student13', NULL, NULL),
(14, 'student14', NULL, NULL),
(15, 'student15', NULL, NULL),
(16, 'student16', NULL, NULL),
(17, 'student17', NULL, NULL),
(18, 'student18', NULL, NULL),
(19, 'student19', NULL, NULL),
(20, 'student20', NULL, NULL),
(21, 'student21', NULL, NULL),
(22, 'student22', NULL, NULL),
(23, 'student23', NULL, NULL),
(24, 'student24', NULL, NULL),
(25, 'student25', NULL, NULL),
(26, 'student26', NULL, NULL),
(27, 'student27', NULL, NULL),
(28, 'student28', NULL, NULL),
(29, 'student29', NULL, NULL),
(30, 'student30', NULL, NULL),
(31, 'student31', NULL, NULL),
(32, 'student32', NULL, NULL),
(33, 'student33', NULL, NULL),
(34, 'student34', NULL, NULL),
(35, 'student35', NULL, NULL),
(36, 'student36', NULL, NULL),
(37, 'student37', NULL, NULL),
(38, 'student38', NULL, NULL),
(39, 'student39', NULL, NULL),
(40, 'student40', NULL, NULL),
(41, 'student41', NULL, NULL),
(42, 'student42', NULL, NULL),
(43, 'student43', NULL, NULL),
(44, 'student44', NULL, NULL),
(45, 'student45', NULL, NULL),
(46, 'student46', NULL, NULL),
(47, 'student47', NULL, NULL),
(48, 'student48', NULL, NULL),
(49, 'student49', NULL, NULL),
(50, 'student50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fyit`
--

CREATE TABLE `fyit` (
  `rno` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Day2` varchar(2) NOT NULL DEFAULT 'A',
  `Day4` varchar(2) NOT NULL DEFAULT 'A',
  `Day5` varchar(2) NOT NULL DEFAULT 'A',
  `Day24` varchar(2) NOT NULL DEFAULT 'A',
  `Day3` varchar(2) NOT NULL DEFAULT 'A',
  `Day11` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fyit`
--

INSERT INTO `fyit` (`rno`, `name`, `Day2`, `Day4`, `Day5`, `Day24`, `Day3`, `Day11`) VALUES
(1, 'student1', 'P', 'A', 'P', 'A', 'P', 'P'),
(2, 'student2', 'P', 'P', 'P', 'A', 'P', 'P'),
(3, 'student3', 'P', 'A', 'P', 'A', 'P', 'P'),
(4, 'student4', 'P', 'P', 'P', 'A', 'A', 'P'),
(5, 'student5', 'P', 'A', 'P', 'A', 'A', 'P'),
(6, 'student6', 'P', 'A', 'P', 'P', 'A', 'P'),
(7, 'student7', 'P', 'A', 'P', 'A', 'A', 'P'),
(8, 'student8', 'P', 'A', 'P', 'A', 'A', 'P'),
(9, 'student9', 'P', 'A', 'P', 'A', 'A', 'P'),
(10, 'student10', 'P', 'A', 'P', 'A', 'A', 'P'),
(11, 'student11', 'P', 'A', 'P', 'A', 'A', 'P'),
(12, 'student12', 'P', 'A', 'P', 'A', 'P', 'P'),
(13, 'student13', 'P', 'A', 'P', 'A', 'P', 'A'),
(14, 'student14', 'P', 'A', 'P', 'A', 'P', 'A'),
(15, 'student15', 'P', 'A', 'P', 'A', 'A', 'A'),
(16, 'student16', 'P', 'A', 'P', 'A', 'A', 'P'),
(17, 'student17', 'P', 'A', 'P', 'P', 'A', 'A'),
(18, 'student18', 'P', 'A', 'P', 'A', 'A', 'A'),
(19, 'student19', 'P', 'A', 'P', 'A', 'A', 'P'),
(20, 'student20', 'P', 'A', 'P', 'A', 'A', 'P'),
(21, 'student21', 'A', 'A', 'P', 'A', 'A', 'P'),
(22, 'student22', 'P', 'A', 'A', 'A', 'A', 'P'),
(23, 'student23', 'P', 'A', 'A', 'A', 'A', 'A'),
(24, 'student24', 'P', 'A', 'A', 'A', 'A', 'P'),
(25, 'student25', 'P', 'A', 'A', 'A', 'A', 'A'),
(26, 'student26', 'P', 'A', 'A', 'A', 'A', 'A'),
(27, 'student27', 'P', 'A', 'A', 'P', 'A', 'A'),
(28, 'student28', 'P', 'A', 'A', 'P', 'A', 'P'),
(29, 'student29', 'P', 'A', 'A', 'A', 'A', 'A'),
(30, 'student30', 'P', 'A', 'A', 'A', 'A', 'P'),
(31, 'student31', 'P', 'A', 'A', 'A', 'A', 'A'),
(32, 'student32', 'P', 'A', 'A', 'A', 'A', 'A'),
(33, 'student33', 'P', 'A', 'A', 'A', 'A', 'P'),
(34, 'student34', 'P', 'A', 'A', 'A', 'A', 'A'),
(35, 'student35', 'P', 'A', 'A', 'A', 'A', 'P'),
(36, 'student36', 'A', 'A', 'A', 'A', 'A', 'A'),
(37, 'student37', 'P', 'A', 'A', 'A', 'A', 'A'),
(38, 'student38', 'A', 'A', 'A', 'P', 'A', 'P'),
(39, 'student39', 'A', 'A', 'A', 'A', 'A', 'A'),
(40, 'student40', 'A', 'A', 'A', 'A', 'A', 'P'),
(41, 'student41', 'P', 'A', 'A', 'A', 'A', 'P'),
(42, 'student42', 'P', 'A', 'A', 'A', 'A', 'A'),
(43, 'student43', 'P', 'A', 'A', 'A', 'A', 'A'),
(44, 'student44', 'P', 'A', 'A', 'A', 'A', 'P'),
(45, 'student45', 'P', 'A', 'A', 'A', 'A', 'A'),
(46, 'student46', 'P', 'A', 'A', 'A', 'A', 'A'),
(47, 'student47', 'P', 'A', 'A', 'A', 'A', 'P'),
(48, 'student48', 'P', 'A', 'A', 'A', 'A', 'A'),
(49, 'student49', 'P', 'A', 'A', 'A', 'A', 'P'),
(50, 'student50', 'P', 'A', 'A', 'A', 'A', 'A'),
(51, 'student51', 'P', 'A', 'A', 'A', 'A', 'P'),
(52, 'student52', 'P', 'A', 'A', 'A', 'A', 'P'),
(53, 'student53', 'P', 'A', 'A', 'A', 'A', 'A'),
(54, 'student54', 'P', 'A', 'A', 'A', 'A', 'A'),
(55, 'student55', 'P', 'A', 'A', 'A', 'A', 'A'),
(56, 'student56', 'P', 'A', 'A', 'A', 'A', 'P'),
(57, 'student57', 'A', 'A', 'A', 'A', 'A', 'A'),
(58, 'student58', 'A', 'A', 'A', 'A', 'A', 'A'),
(59, 'student59', 'P', 'A', 'A', 'A', 'A', 'P'),
(60, 'student60', 'P', 'A', 'A', 'A', 'A', 'P'),
(61, 'student61', 'A', 'A', 'A', 'A', 'A', 'P'),
(62, 'student62', 'A', 'A', 'A', 'A', 'A', 'P'),
(63, 'student63', 'P', 'A', 'A', 'A', 'A', 'P'),
(64, 'student64', 'P', 'A', 'A', 'A', 'A', 'P'),
(65, 'student65', 'P', 'A', 'A', 'A', 'A', 'P'),
(66, 'student66', 'P', 'A', 'A', 'A', 'A', 'P'),
(67, 'student67', 'P', 'A', 'A', 'A', 'A', 'P'),
(68, 'student68', 'P', 'A', 'A', 'A', 'A', 'P'),
(69, 'student69', 'P', 'A', 'A', 'A', 'A', 'P'),
(70, 'student70', 'P', 'A', 'A', 'A', 'A', 'P'),
(71, 'student71', 'P', 'A', 'A', 'A', 'A', 'P'),
(72, 'student72', 'P', 'A', 'A', 'A', 'A', 'P'),
(73, 'student73', 'P', 'A', 'A', 'A', 'A', 'A'),
(74, 'student74', 'P', 'A', 'A', 'A', 'A', 'A'),
(75, 'student75', 'P', 'A', 'A', 'A', 'A', 'A'),
(76, 'student76', 'P', 'A', 'A', 'A', 'A', 'P'),
(77, 'student77', 'P', 'A', 'A', 'A', 'A', 'P'),
(78, 'student78', 'P', 'A', 'A', 'A', 'A', 'P'),
(79, 'student79', 'P', 'A', 'A', 'A', 'A', 'P'),
(80, 'student80', 'P', 'A', 'A', 'A', 'A', 'P'),
(81, 'student81', 'P', 'A', 'A', 'A', 'A', 'P'),
(82, 'student82', 'P', 'A', 'A', 'A', 'A', 'P'),
(83, 'student83', 'P', 'A', 'A', 'A', 'A', 'P'),
(84, 'student84', 'P', 'A', 'A', 'A', 'A', 'P'),
(85, 'student85', 'P', 'A', 'A', 'A', 'A', 'A'),
(86, 'student86', 'P', 'A', 'A', 'A', 'A', 'A'),
(87, 'student87', 'P', 'A', 'A', 'A', 'A', 'A'),
(88, 'student88', 'P', 'A', 'A', 'A', 'A', 'A'),
(89, 'student89', 'P', 'A', 'A', 'A', 'A', 'A'),
(90, 'student90', 'P', 'A', 'A', 'A', 'A', 'A'),
(91, 'student91', 'P', 'A', 'A', 'A', 'A', 'P'),
(92, 'student92', 'P', 'A', 'A', 'A', 'A', 'P'),
(93, 'student93', 'A', 'A', 'A', 'A', 'A', 'A'),
(94, 'student94', 'A', 'A', 'A', 'A', 'P', 'A'),
(95, 'student95', 'A', 'A', 'A', 'A', 'P', 'P'),
(96, 'student96', 'A', 'A', 'A', 'A', 'A', 'A'),
(97, 'student97', 'A', 'A', 'A', 'A', 'A', 'P'),
(98, 'student98', 'A', 'A', 'A', 'A', 'A', 'A'),
(99, 'student99', 'A', 'A', 'A', 'A', 'A', 'A'),
(100, 'student100', 'A', 'A', 'A', 'A', 'A', 'A'),
(101, 'abc', 'A', 'A', 'A', 'A', 'A', 'A'),
(102, 'vaibhav', 'A', 'A', 'A', 'A', 'P', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `fyitresult`
--

CREATE TABLE `fyitresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fyitresult`
--

INSERT INTO `fyitresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', 'O', 'O'),
(2, 'student2', 'B+', 'A+'),
(3, 'student3', 'A+', 'A'),
(4, 'student4', 'B', 'B+'),
(5, 'student5', 'C', NULL),
(6, 'student6', 'A+', NULL),
(7, 'student7', 'A', NULL),
(8, 'student8', 'B+', NULL),
(9, 'student9', 'B', NULL),
(10, 'student10', 'C', 'A'),
(11, 'student11', 'A+', NULL),
(12, 'student12', 'A+', 'B+'),
(13, 'student13', 'A+', 'B+'),
(14, 'student14', 'A+', 'B'),
(15, 'student15', 'A+', 'C'),
(16, 'student16', 'A+', 'D'),
(17, 'student17', 'A+', 'F'),
(18, 'student18', 'A+', NULL),
(19, 'student19', 'A+', NULL),
(20, 'student20', 'A+', NULL),
(21, 'student21', 'A', NULL),
(22, 'student22', 'A', NULL),
(23, 'student23', 'A', NULL),
(24, 'student24', 'A', NULL),
(25, 'student25', 'A', NULL),
(26, 'student26', 'A', NULL),
(27, 'student27', 'A', NULL),
(28, 'student28', 'A', NULL),
(29, 'student29', 'A', NULL),
(30, 'student30', 'A', NULL),
(31, 'student31', 'B+', NULL),
(32, 'student32', 'B+', 'C'),
(33, 'student33', 'B+', 'C'),
(34, 'student34', 'B+', 'C'),
(35, 'student35', 'B+', 'C'),
(36, 'student36', 'B+', 'C'),
(37, 'student37', 'B', 'D'),
(38, 'student38', 'B', 'D'),
(39, 'student39', 'B', 'D'),
(40, 'student40', 'B', 'D'),
(41, 'student41', 'C', 'D'),
(42, 'student42', 'D', 'D'),
(43, 'student43', 'C', 'D'),
(44, 'student44', 'C', 'F'),
(45, 'student45', 'C', 'F'),
(46, 'student46', 'C', 'F'),
(47, 'student47', 'C', 'F'),
(48, 'student48', 'C', NULL),
(49, 'student49', 'D', NULL),
(50, 'student50', 'D', NULL),
(51, 'student51', 'D', NULL),
(52, 'student52', 'D', NULL),
(53, 'student53', 'D', NULL),
(54, 'student54', 'D', NULL),
(55, 'student55', 'D', NULL),
(56, 'student56', 'D', NULL),
(57, 'student57', 'D', NULL),
(58, 'student58', 'F', NULL),
(59, 'student59', 'F', NULL),
(60, 'student60', 'F', NULL),
(61, 'student61', 'F', NULL),
(62, 'student62', 'F', NULL),
(63, 'student63', 'F', NULL),
(64, 'student64', 'F', NULL),
(65, 'student65', 'F', NULL),
(66, 'student66', 'F', NULL),
(67, 'student67', 'F', NULL),
(68, 'student68', 'F', NULL),
(69, 'student69', 'F', NULL),
(70, 'student70', 'D', NULL),
(71, 'student71', 'D', NULL),
(72, 'student72', 'D', NULL),
(73, 'student73', 'C', NULL),
(74, 'student74', 'C', NULL),
(75, 'student75', 'C', NULL),
(76, 'student76', 'B', NULL),
(77, 'student77', 'B', NULL),
(78, 'student78', 'D', NULL),
(79, 'student79', 'C', NULL),
(80, 'student80', 'C', NULL),
(81, 'student81', 'B', NULL),
(82, 'student82', 'B+', NULL),
(83, 'student83', 'B+', NULL),
(84, 'student84', 'A', NULL),
(85, 'student85', 'A', NULL),
(86, 'student86', 'A', NULL),
(87, 'student87', 'A', NULL),
(88, 'student88', 'A', NULL),
(89, 'student89', 'A', NULL),
(90, 'student90', 'A', NULL),
(91, 'student91', 'A', NULL),
(92, 'student92', 'A', NULL),
(93, 'student93', 'A', NULL),
(94, 'student94', 'A', NULL),
(95, 'student95', 'A+', NULL),
(96, 'student96', 'B+', NULL),
(97, 'student97', 'B', NULL),
(98, 'student98', 'C', NULL),
(99, 'student99', 'D', NULL),
(100, 'student100', 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `itnotice`
--

CREATE TABLE `itnotice` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itnotice`
--

INSERT INTO `itnotice` (`id`, `name`, `text`) VALUES
(20, 'Annual Day', 'Your Annual Day is on 26/9/2018 All are Requested to attend it'),
(21, 'Hadoop Workshop', 'There is a Workshop on Hadoop and Cloud computing, all student are Requested to attend it\\nFee for the WorkShop is just 800/-'),
(22, 'Internal Test', 'Internal Test date for all year are going to be declared so please check notice every day'),
(23, 'Test', 'asdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjhasdasdvajsdvjasvdjavsjdvasjh');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `field` varchar(20) DEFAULT NULL,
  `subs` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `mob` bigint(13) NOT NULL,
  `date` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `field`, `subs`, `year`, `mob`, `date`, `email`, `fullname`) VALUES
(1, 'admin', 'admin', '', '', '', 0, '', '', ''),
(4, 'vaibhav', 'vaibhav2019', 'IT', 'sc', 'fy', 7506096605, '2019-01-02', 'pawarvaibhav021@gmail.com', 'vaibhav subhash pawar'),
(5, 'pooja', 'pooja1997', 'IT', 'android', 'fy', 8104651863, '1997-09-22', 'sonmalepooja@gmail.com', 'pooja hanumant sonmale');

-- --------------------------------------------------------

--
-- Table structure for table `student_detail`
--

CREATE TABLE `student_detail` (
  `rno` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mob` bigint(13) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `field` varchar(30) NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_detail`
--

INSERT INTO `student_detail` (`rno`, `uname`, `passwd`, `dob`, `email`, `mob`, `gender`, `field`, `year`) VALUES
(1, 'pp', 'pp', '5445', 'gsgsgs', 464649, 'Male', 'IT', 'FY'),
(32, 'vaibhav', '123', '12-04-1998', 'pawarvaibhav021@gmail.com', 7506096605, 'Male', 'IT', 'FY'),
(39, 'pooja', 'pooja', '22-9-97', 'sonmalepooja@gmail.com', 8104651863, 'Male', 'IT', 'TY'),
(63, 'pu', 'pu', '22-9', 'sonmalepooja@gmail.com', 6464646446, 'Male', 'IT', 'FY'),
(66, 'puu', 'puu', '22-9-', 'sonmalepooja@gmail.com', 5454545, 'Male', 'IT', 'FY'),
(32, 'vaibhav', '123', '12-04-1998', 'pawarvaibhav021@gmail.com', 7506096605, 'Male', 'IT', 'TY');

-- --------------------------------------------------------

--
-- Table structure for table `sycs`
--

CREATE TABLE `sycs` (
  `rno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Day17` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sycs`
--

INSERT INTO `sycs` (`rno`, `name`, `Day17`) VALUES
(1, 'student1', 'P'),
(2, 'student2', 'P'),
(3, 'student3', 'P'),
(4, 'student4', 'P'),
(5, 'student5', 'P'),
(6, 'student6', 'P'),
(7, 'student7', 'P'),
(8, 'student8', 'P'),
(9, 'student9', 'P'),
(10, 'student10', 'P'),
(11, 'student11', 'P'),
(12, 'student12', 'P'),
(13, 'student13', 'P'),
(14, 'student14', 'P'),
(15, 'student15', 'P'),
(16, 'student16', 'P'),
(17, 'student17', 'P'),
(18, 'student18', 'P'),
(19, 'student19', 'P'),
(20, 'student20', 'P'),
(21, 'student21', 'A'),
(22, 'student22', 'A'),
(23, 'student23', 'A'),
(24, 'student24', 'A'),
(25, 'student25', 'A'),
(26, 'student26', 'A'),
(27, 'student27', 'A'),
(28, 'student28', 'A'),
(29, 'student29', 'A'),
(30, 'student30', 'A'),
(31, 'student31', 'A'),
(32, 'student32', 'A'),
(33, 'student33', 'P'),
(34, 'student34', 'P'),
(35, 'student35', 'P'),
(36, 'student36', 'P'),
(37, 'student37', 'P'),
(38, 'student38', 'P'),
(39, 'student39', 'P'),
(40, 'student40', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `sycsresult`
--

CREATE TABLE `sycsresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sycsresult`
--

INSERT INTO `sycsresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', NULL, NULL),
(2, 'student2', NULL, NULL),
(3, 'student3', NULL, NULL),
(4, 'student4', NULL, NULL),
(5, 'student5', NULL, NULL),
(6, 'student6', NULL, NULL),
(7, 'student7', NULL, NULL),
(8, 'student8', NULL, NULL),
(9, 'student9', NULL, NULL),
(10, 'student10', NULL, NULL),
(11, 'student11', NULL, NULL),
(12, 'student12', NULL, NULL),
(13, 'student13', NULL, NULL),
(14, 'student14', NULL, NULL),
(15, 'student15', NULL, NULL),
(16, 'student16', NULL, NULL),
(17, 'student17', NULL, NULL),
(18, 'student18', NULL, NULL),
(19, 'student19', NULL, NULL),
(20, 'student20', NULL, NULL),
(21, 'student21', NULL, NULL),
(22, 'student22', NULL, NULL),
(23, 'student23', NULL, NULL),
(24, 'student24', NULL, NULL),
(25, 'student25', NULL, NULL),
(26, 'student26', NULL, NULL),
(27, 'student27', NULL, NULL),
(28, 'student28', NULL, NULL),
(29, 'student29', NULL, NULL),
(30, 'student30', NULL, NULL),
(31, 'student31', NULL, NULL),
(32, 'student32', NULL, NULL),
(33, 'student33', NULL, NULL),
(34, 'student34', NULL, NULL),
(35, 'student35', NULL, NULL),
(36, 'student36', NULL, NULL),
(37, 'student37', NULL, NULL),
(38, 'student38', NULL, NULL),
(39, 'student39', NULL, NULL),
(40, 'student40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `syit`
--

CREATE TABLE `syit` (
  `rno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `day29` varchar(2) NOT NULL DEFAULT 'A',
  `day2` varchar(2) NOT NULL DEFAULT 'A',
  `Day3` varchar(2) NOT NULL DEFAULT 'A',
  `Day4` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syit`
--

INSERT INTO `syit` (`rno`, `name`, `day29`, `day2`, `Day3`, `Day4`) VALUES
(1, 'student1', 'P', 'A', 'A', 'P'),
(2, 'student2', 'P', 'A', 'A', 'P'),
(3, 'student3', 'A', 'A', 'A', 'P'),
(4, 'student4', 'A', 'A', 'A', 'P'),
(5, 'student5', 'A', 'A', 'A', 'P'),
(6, 'student6', 'A', 'A', 'A', 'A'),
(7, 'student7', 'A', 'A', 'A', 'A'),
(8, 'student8', 'A', 'A', 'A', 'A'),
(9, 'student9', 'A', 'A', 'A', 'A'),
(10, 'student10', 'A', 'A', 'A', 'A'),
(11, 'student11', 'A', 'A', 'A', 'A'),
(12, 'student12', 'A', 'A', 'A', 'A'),
(13, 'student13', 'A', 'A', 'A', 'A'),
(14, 'student14', 'A', 'A', 'A', 'A'),
(15, 'student15', 'A', 'A', 'P', 'A'),
(16, 'student16', 'A', 'A', 'A', 'A'),
(17, 'student17', 'A', 'A', 'A', 'A'),
(18, 'student18', 'A', 'A', 'A', 'A'),
(19, 'student19', 'A', 'A', 'A', 'A'),
(20, 'student20', 'A', 'A', 'A', 'A'),
(21, 'student21', 'A', 'A', 'A', 'A'),
(22, 'student22', 'A', 'A', 'A', 'A'),
(23, 'student23', 'A', 'A', 'A', 'A'),
(24, 'student24', 'A', 'A', 'A', 'A'),
(25, 'student25', 'A', 'A', 'A', 'A'),
(26, 'student26', 'A', 'A', 'A', 'A'),
(27, 'student27', 'A', 'A', 'A', 'A'),
(28, 'student28', 'A', 'A', 'A', 'A'),
(29, 'student29', 'A', 'A', 'A', 'A'),
(30, 'student30', 'A', 'A', 'A', 'A'),
(31, 'student31', 'A', 'A', 'A', 'A'),
(32, 'student32', 'A', 'A', 'A', 'A'),
(33, 'student33', 'A', 'A', 'A', 'A'),
(34, 'student34', 'A', 'A', 'A', 'A'),
(35, 'student35', 'A', 'A', 'A', 'A'),
(36, 'student36', 'A', 'A', 'A', 'A'),
(37, 'student37', 'A', 'A', 'A', 'A'),
(38, 'student38', 'A', 'A', 'A', 'A'),
(39, 'student39', 'A', 'A', 'A', 'A'),
(40, 'student40', 'A', 'A', 'A', 'A'),
(41, 'student41', 'A', 'A', 'A', 'A'),
(42, 'student42', 'A', 'A', 'A', 'A'),
(43, 'student43', 'A', 'A', 'A', 'A'),
(44, 'student44', 'A', 'A', 'A', 'A'),
(45, 'student45', 'A', 'A', 'A', 'A'),
(46, 'student46', 'A', 'A', 'A', 'A'),
(47, 'student47', 'A', 'A', 'A', 'A'),
(48, 'student48', 'A', 'A', 'A', 'A'),
(49, 'student49', 'A', 'A', 'A', 'A'),
(50, 'student50', 'A', 'A', 'A', 'A'),
(51, 'student51', 'A', 'A', 'A', 'A'),
(52, 'student52', 'A', 'A', 'A', 'A'),
(53, 'student53', 'A', 'A', 'A', 'A'),
(54, 'student54', 'A', 'A', 'A', 'A'),
(55, 'student55', 'A', 'A', 'A', 'A'),
(56, 'student56', 'A', 'A', 'A', 'A'),
(57, 'student57', 'A', 'A', 'A', 'A'),
(58, 'student58', 'A', 'A', 'A', 'A'),
(59, 'student59', 'A', 'A', 'A', 'A'),
(60, 'student60', 'A', 'A', 'A', 'A'),
(61, 'student61', 'A', 'A', 'A', 'A'),
(62, 'student62', 'A', 'A', 'A', 'A'),
(63, 'student63', 'A', 'A', 'A', 'A'),
(64, 'student64', 'A', 'A', 'A', 'A'),
(65, 'student65', 'A', 'A', 'A', 'A'),
(66, 'student66', 'A', 'P', 'A', 'A'),
(67, 'student67', 'A', 'P', 'A', 'A'),
(68, 'student68', 'A', 'A', 'A', 'A'),
(69, 'student69', 'P', 'A', 'A', 'A'),
(70, 'student70', 'P', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `syitresult`
--

CREATE TABLE `syitresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syitresult`
--

INSERT INTO `syitresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', NULL, NULL),
(2, 'student2', NULL, NULL),
(3, 'student3', NULL, NULL),
(4, 'student4', NULL, NULL),
(5, 'student5', NULL, NULL),
(6, 'student6', NULL, NULL),
(7, 'student7', NULL, NULL),
(8, 'student8', NULL, NULL),
(9, 'student9', NULL, NULL),
(10, 'student10', NULL, NULL),
(11, 'student11', NULL, NULL),
(12, 'student12', NULL, NULL),
(13, 'student13', NULL, NULL),
(14, 'student14', NULL, NULL),
(15, 'student15', NULL, NULL),
(16, 'student16', NULL, NULL),
(17, 'student17', NULL, NULL),
(18, 'student18', NULL, NULL),
(19, 'student19', NULL, NULL),
(20, 'student20', NULL, NULL),
(21, 'student21', NULL, NULL),
(22, 'student22', NULL, NULL),
(23, 'student23', NULL, NULL),
(24, 'student24', NULL, NULL),
(25, 'student25', NULL, NULL),
(26, 'student26', NULL, NULL),
(27, 'student27', NULL, NULL),
(28, 'student28', NULL, NULL),
(29, 'student29', NULL, NULL),
(30, 'student30', NULL, NULL),
(31, 'student31', NULL, NULL),
(32, 'student32', NULL, NULL),
(33, 'student33', NULL, NULL),
(34, 'student34', NULL, NULL),
(35, 'student35', NULL, NULL),
(36, 'student36', NULL, NULL),
(37, 'student37', NULL, NULL),
(38, 'student38', NULL, NULL),
(39, 'student39', NULL, NULL),
(40, 'student40', NULL, NULL),
(41, 'student41', NULL, NULL),
(42, 'student42', NULL, NULL),
(43, 'student43', NULL, NULL),
(44, 'student44', NULL, NULL),
(45, 'student45', NULL, NULL),
(46, 'student46', NULL, NULL),
(47, 'student47', NULL, NULL),
(48, 'student48', NULL, NULL),
(49, 'student49', NULL, NULL),
(50, 'student50', NULL, NULL),
(51, 'student51', NULL, NULL),
(52, 'student52', NULL, NULL),
(53, 'student53', NULL, NULL),
(54, 'student54', NULL, NULL),
(55, 'student55', NULL, NULL),
(56, 'student56', NULL, NULL),
(57, 'student57', NULL, NULL),
(58, 'student58', NULL, NULL),
(59, 'student59', NULL, NULL),
(60, 'student60', NULL, NULL),
(61, 'student61', NULL, NULL),
(62, 'student62', NULL, NULL),
(63, 'student63', NULL, NULL),
(64, 'student64', NULL, NULL),
(65, 'student65', NULL, NULL),
(66, 'student66', NULL, NULL),
(67, 'student67', NULL, NULL),
(68, 'student68', NULL, NULL),
(69, 'student69', NULL, NULL),
(70, 'student70', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tycs`
--

CREATE TABLE `tycs` (
  `rno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tycs`
--

INSERT INTO `tycs` (`rno`, `name`) VALUES
(1, 'student1'),
(2, 'student2'),
(3, 'student3'),
(4, 'student4'),
(5, 'student5'),
(6, 'student6'),
(7, 'student7'),
(8, 'student8'),
(9, 'student9'),
(10, 'student10'),
(11, 'student11'),
(12, 'student12'),
(13, 'student13'),
(14, 'student14'),
(15, 'student15'),
(16, 'student16'),
(17, 'student17'),
(18, 'student18'),
(19, 'student19'),
(20, 'student20'),
(21, 'student21'),
(22, 'student22'),
(23, 'student23'),
(24, 'student24'),
(25, 'student25'),
(26, 'student26'),
(27, 'student27'),
(28, 'student28'),
(29, 'student29'),
(30, 'student30');

-- --------------------------------------------------------

--
-- Table structure for table `tycsresult`
--

CREATE TABLE `tycsresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tycsresult`
--

INSERT INTO `tycsresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', NULL, NULL),
(2, 'student2', NULL, NULL),
(3, 'student3', NULL, NULL),
(4, 'student4', NULL, NULL),
(5, 'student5', NULL, NULL),
(6, 'student6', NULL, NULL),
(7, 'student7', NULL, NULL),
(8, 'student8', NULL, NULL),
(9, 'student9', NULL, NULL),
(10, 'student10', NULL, NULL),
(11, 'student11', NULL, NULL),
(12, 'student12', NULL, NULL),
(13, 'student13', NULL, NULL),
(14, 'student14', NULL, NULL),
(15, 'student15', NULL, NULL),
(16, 'student16', NULL, NULL),
(17, 'student17', NULL, NULL),
(18, 'student18', NULL, NULL),
(19, 'student19', NULL, NULL),
(20, 'student20', NULL, NULL),
(21, 'student21', NULL, NULL),
(22, 'student22', NULL, NULL),
(23, 'student23', NULL, NULL),
(24, 'student24', NULL, NULL),
(25, 'student25', NULL, NULL),
(26, 'student26', NULL, NULL),
(27, 'student27', NULL, NULL),
(28, 'student28', NULL, NULL),
(29, 'student29', NULL, NULL),
(30, 'student30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tyit`
--

CREATE TABLE `tyit` (
  `rno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tyit`
--

INSERT INTO `tyit` (`rno`, `name`) VALUES
(1, 'student1'),
(2, 'student2'),
(3, 'student3'),
(4, 'student4'),
(5, 'student5'),
(6, 'student6'),
(7, 'student7'),
(8, 'student8'),
(9, 'student9'),
(10, 'student10'),
(11, 'student11'),
(12, 'student12'),
(13, 'student13'),
(14, 'student14'),
(15, 'student15'),
(16, 'student16'),
(17, 'student17'),
(18, 'student18'),
(19, 'student19'),
(20, 'student20'),
(21, 'student21'),
(22, 'student22'),
(23, 'student23'),
(24, 'student24'),
(25, 'student25'),
(26, 'student26'),
(27, 'student27'),
(28, 'student28'),
(29, 'student29'),
(30, 'student30'),
(31, 'student31'),
(32, 'student32'),
(33, 'student33'),
(34, 'student34'),
(35, 'student35'),
(36, 'student36'),
(37, 'student37'),
(38, 'student38'),
(39, 'student39'),
(40, 'student40'),
(41, 'student41'),
(42, 'student42'),
(43, 'student43'),
(44, 'student44'),
(45, 'student45'),
(46, 'student46'),
(47, 'student47'),
(48, 'student48'),
(49, 'student49'),
(50, 'student50'),
(51, 'student51'),
(52, 'student52'),
(53, 'student53'),
(54, 'student54'),
(55, 'student55'),
(56, 'student56'),
(57, 'student57'),
(58, 'student58'),
(59, 'student59'),
(60, 'student60'),
(61, 'student61'),
(62, 'student62'),
(63, 'student63'),
(64, 'student64');

-- --------------------------------------------------------

--
-- Table structure for table `tyitresult`
--

CREATE TABLE `tyitresult` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sem1grades` varchar(4) DEFAULT NULL,
  `sem2grades` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tyitresult`
--

INSERT INTO `tyitresult` (`rno`, `name`, `sem1grades`, `sem2grades`) VALUES
(1, 'student1', NULL, NULL),
(2, 'student2', NULL, NULL),
(3, 'student3', NULL, NULL),
(4, 'student4', NULL, NULL),
(5, 'student5', NULL, NULL),
(6, 'student6', NULL, NULL),
(7, 'student7', NULL, NULL),
(8, 'student8', NULL, NULL),
(9, 'student9', NULL, NULL),
(10, 'student10', NULL, NULL),
(11, 'student11', NULL, NULL),
(12, 'student12', NULL, NULL),
(13, 'student13', NULL, NULL),
(14, 'student14', NULL, NULL),
(15, 'student15', NULL, NULL),
(16, 'student16', NULL, NULL),
(17, 'student17', NULL, NULL),
(18, 'student18', NULL, NULL),
(19, 'student19', NULL, NULL),
(20, 'student20', NULL, NULL),
(21, 'student21', NULL, NULL),
(22, 'student22', NULL, NULL),
(23, 'student23', NULL, NULL),
(24, 'student24', NULL, NULL),
(25, 'student25', NULL, NULL),
(26, 'student26', NULL, NULL),
(27, 'student27', NULL, NULL),
(28, 'student28', NULL, NULL),
(29, 'student29', NULL, NULL),
(30, 'student30', NULL, NULL),
(31, 'student31', NULL, NULL),
(32, 'student32', NULL, NULL),
(33, 'student33', NULL, NULL),
(34, 'student34', NULL, NULL),
(35, 'student35', NULL, NULL),
(36, 'student36', NULL, NULL),
(37, 'student37', NULL, NULL),
(38, 'student38', NULL, NULL),
(39, 'student39', NULL, NULL),
(40, 'student40', NULL, NULL),
(41, 'student41', NULL, NULL),
(42, 'student42', NULL, NULL),
(43, 'student43', NULL, NULL),
(44, 'student44', NULL, NULL),
(45, 'student45', NULL, NULL),
(46, 'student46', NULL, NULL),
(47, 'student47', NULL, NULL),
(48, 'student48', NULL, NULL),
(49, 'student49', NULL, NULL),
(50, 'student50', NULL, NULL),
(51, 'student51', NULL, NULL),
(52, 'student52', NULL, NULL),
(53, 'student53', NULL, NULL),
(54, 'student54', NULL, NULL),
(55, 'student55', NULL, NULL),
(56, 'student56', NULL, NULL),
(57, 'student57', NULL, NULL),
(58, 'student58', NULL, NULL),
(59, 'student59', NULL, NULL),
(60, 'student60', NULL, NULL),
(61, 'student61', NULL, NULL),
(62, 'student62', NULL, NULL),
(63, 'student63', NULL, NULL),
(64, 'student64', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploadfycs`
--

CREATE TABLE `uploadfycs` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadfyit`
--

CREATE TABLE `uploadfyit` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadsycs`
--

CREATE TABLE `uploadsycs` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadsyit`
--

CREATE TABLE `uploadsyit` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadtycs`
--

CREATE TABLE `uploadtycs` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploadtyit`
--

CREATE TABLE `uploadtyit` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `fileExtension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csnotice`
--
ALTER TABLE `csnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fycs`
--
ALTER TABLE `fycs`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `fycsresult`
--
ALTER TABLE `fycsresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `fyit`
--
ALTER TABLE `fyit`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `fyitresult`
--
ALTER TABLE `fyitresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `itnotice`
--
ALTER TABLE `itnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sycs`
--
ALTER TABLE `sycs`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `sycsresult`
--
ALTER TABLE `sycsresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `syit`
--
ALTER TABLE `syit`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `syitresult`
--
ALTER TABLE `syitresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `tycs`
--
ALTER TABLE `tycs`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `tycsresult`
--
ALTER TABLE `tycsresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `tyit`
--
ALTER TABLE `tyit`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `tyitresult`
--
ALTER TABLE `tyitresult`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `uploadfycs`
--
ALTER TABLE `uploadfycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadfyit`
--
ALTER TABLE `uploadfyit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadsycs`
--
ALTER TABLE `uploadsycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadsyit`
--
ALTER TABLE `uploadsyit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadtycs`
--
ALTER TABLE `uploadtycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadtyit`
--
ALTER TABLE `uploadtyit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csnotice`
--
ALTER TABLE `csnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fycs`
--
ALTER TABLE `fycs`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `fycsresult`
--
ALTER TABLE `fycsresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `fyit`
--
ALTER TABLE `fyit`
  MODIFY `rno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `fyitresult`
--
ALTER TABLE `fyitresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `itnotice`
--
ALTER TABLE `itnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sycs`
--
ALTER TABLE `sycs`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sycsresult`
--
ALTER TABLE `sycsresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `syit`
--
ALTER TABLE `syit`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `syitresult`
--
ALTER TABLE `syitresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tycs`
--
ALTER TABLE `tycs`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tycsresult`
--
ALTER TABLE `tycsresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tyit`
--
ALTER TABLE `tyit`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tyitresult`
--
ALTER TABLE `tyitresult`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `uploadfycs`
--
ALTER TABLE `uploadfycs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploadfyit`
--
ALTER TABLE `uploadfyit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uploadsycs`
--
ALTER TABLE `uploadsycs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploadsyit`
--
ALTER TABLE `uploadsyit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploadtycs`
--
ALTER TABLE `uploadtycs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploadtyit`
--
ALTER TABLE `uploadtyit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
