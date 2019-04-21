-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2019 at 12:51 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '68eacb97d86f0c4621fa2b0e17cabd8c', '2019-04-14 22:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

DROP TABLE IF EXISTS `tblclasses`;
CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(80) DEFAULT NULL,
  `Year` int(4) NOT NULL,
  `Semester` int(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '2019-04-14 18:30:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `CourseName`, `Year`, `Semester`, `CreationDate`, `UpdationDate`) VALUES
(9, 'MCA', 1, 2, '2019-04-14 19:00:40', '2019-04-16 08:46:49'),
(10, 'MCA', 1, 1, '2019-04-15 09:20:07', '2019-04-14 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `Courseid` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `marks2` int(11) DEFAULT NULL,
  `marks1` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `Courseid`, `SubjectId`, `PostingDate`, `UpdationDate`, `marks2`, `marks1`, `marks`) VALUES
(18, 7, 9, 9, '2019-04-14 22:25:55', '2019-04-21 11:52:14', 24, 73, NULL),
(20, 8, 10, 11, '2019-04-15 09:24:13', '2019-04-17 19:49:23', 22, 69, NULL),
(24, 13, 10, 11, '2019-04-17 12:59:10', '2019-04-17 14:33:19', 22, 70, NULL),
(25, 14, 10, 14, '2019-04-21 12:04:07', NULL, 23, 68, NULL),
(26, 14, 10, 12, '2019-04-21 12:04:07', NULL, 22, 73, NULL),
(27, 14, 10, 13, '2019-04-21 12:04:07', NULL, 20, 75, NULL),
(28, 14, 10, 15, '2019-04-21 12:04:08', NULL, 21, 71, NULL),
(29, 14, 10, 11, '2019-04-21 12:04:08', NULL, 19, 69, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `Enrollid` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `Courseid` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '2019-04-14 21:13:00' ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `Enrollid`, `StudentEmail`, `Gender`, `DOB`, `Courseid`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'Naveen Garg', '024', 'gargnaveen96@gmail.com', 'Male', '1997-02-05', 9, '2019-04-14 21:32:25', '2019-04-14 21:51:09', 1),
(8, 'Abhisheka', '001', 'abhisheka01@gmail.com', 'Male', '1997-10-02', 10, '2019-04-15 09:23:35', '2019-04-14 21:13:00', 1),
(13, 'Prateek', '09', 'someone@gmail.com', 'Male', '1999-02-01', 10, '2019-04-17 12:57:19', '2019-04-14 21:13:00', 1),
(14, 'Harish', '016', 'someone3@gmail.com', 'Male', '1998-01-01', 10, '2019-04-21 12:02:56', '2019-04-14 21:13:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` varchar(12) NOT NULL,
  `SubjectId` varchar(12) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT '2019-04-14 20:13:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `CourseId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(28, '9', '10', 1, '2019-04-14 20:24:22', '2019-04-14 20:13:00'),
(29, '9', '9', 1, '2019-04-14 20:24:30', '2019-04-14 20:13:00'),
(30, '10', '11', 1, '2019-04-15 09:21:45', '2019-04-14 20:13:00'),
(33, '10', '12', 1, '2019-04-18 17:19:00', '2019-04-14 20:13:00'),
(34, '10', '13', 1, '2019-04-18 17:19:10', '2019-04-14 20:13:00'),
(35, '10', '14', 1, '2019-04-18 17:19:20', '2019-04-14 20:13:00'),
(37, '10', '15', 1, '2019-04-18 17:19:36', '2019-04-14 20:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(90) NOT NULL,
  `SubjectCode` varchar(90) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '2019-04-14 18:30:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SubjectCode` (`SubjectCode`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(9, 'DBMS', 'MCA108', '2019-04-14 19:35:46', '2019-04-14 18:30:00'),
(10, 'OS', 'MCA106', '2019-04-14 19:40:42', '2019-04-14 18:30:00'),
(11, 'Programming in C', 'MCA103', '2019-04-15 09:21:23', '2019-04-14 18:30:00'),
(12, 'Discrete Mathematics', 'MCA105', '2019-04-18 17:15:48', '2019-04-14 18:30:00'),
(13, 'Fundamentals of IT', 'MCA101', '2019-04-18 17:16:26', '2019-04-14 18:30:00'),
(14, 'Computer Organization', 'MCA107', '2019-04-18 17:17:00', '2019-04-14 18:30:00'),
(15, 'Principles and Practices of Management ', 'MCA109', '2019-04-18 17:17:28', '2019-04-14 18:30:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
