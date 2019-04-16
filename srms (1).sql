-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2019 at 09:10 AM
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
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `Courseid`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(18, 7, 9, 9, 85, '2019-04-14 22:25:55', NULL),
(19, 7, 9, 10, 87, '2019-04-14 22:25:55', '2019-04-14 22:36:32'),
(20, 8, 10, 11, 83, '2019-04-15 09:24:13', '2019-04-15 09:24:52'),
(21, 9, 10, 11, 84, '2019-04-15 09:30:15', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `Enrollid`, `StudentEmail`, `Gender`, `DOB`, `Courseid`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'Naveen Garg', '024', 'gargnaveen96@gmail.com', 'Male', '1997-02-05', 9, '2019-04-14 21:32:25', '2019-04-14 21:51:09', 1),
(8, 'Abhisheka', '001', 'abhisheka01@gmail.com', 'Male', '1997-10-02', 10, '2019-04-15 09:23:35', '2019-04-14 21:13:00', 1),
(9, 'Naveen Garg', '024', 'gargnaveen96@gmail.com', 'Male', '1996-02-05', 10, '2019-04-15 09:27:30', '2019-04-14 21:13:00', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `CourseId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(28, '9', '10', 1, '2019-04-14 20:24:22', '2019-04-14 20:13:00'),
(29, '9', '9', 1, '2019-04-14 20:24:30', '2019-04-14 20:13:00'),
(30, '10', '11', 1, '2019-04-15 09:21:45', '2019-04-14 20:13:00');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(9, 'DBMS', 'MCA108', '2019-04-14 19:35:46', '2019-04-14 18:30:00'),
(10, 'OS', 'MCA106', '2019-04-14 19:40:42', '2019-04-14 18:30:00'),
(11, 'Programming in C', 'MCA103', '2019-04-15 09:21:23', '2019-04-14 18:30:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
