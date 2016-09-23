-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 06:16 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iwawa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `case_id` int(11) NOT NULL,
  `description` text,
  `Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `description`, `Id`) VALUES
(1, 'ha aakkaka akaka          ', 1002),
(2, 'Good                    ', 1002),
(3, 'Amaze gufungwa ka 2        ', 1004),
(4, 'Atera umutekano muke            ', 1005),
(5, 'gfdfgdhfgjkdjkd', 1007),
(6, 'xxjvhjhdjghdjghdhj                 ', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `district_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `name`, `province_id`) VALUES
(1, 'Gasabo District', 1),
(2, 'Huye', 3),
(3, 'Nyarugenge', 1),
(4, 'Kicukiro', 1),
(5, 'Musanze', 2);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `Id` int(11) NOT NULL,
  `names` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `marital_status` varchar(30) DEFAULT NULL,
  `father_names` varchar(30) DEFAULT NULL,
  `mother_names` varchar(30) DEFAULT NULL,
  `father_nid` varchar(20) DEFAULT NULL,
  `mother_nid` varchar(20) DEFAULT NULL,
  `family_address` varchar(30) DEFAULT NULL,
  `ed_level` varchar(20) DEFAULT NULL,
  `family_tel` varchar(30) DEFAULT NULL,
  `sector` varchar(30) DEFAULT NULL,
  `cell` varchar(30) DEFAULT NULL,
  `village` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `district_id` int(11) DEFAULT NULL,
  `rec_date` date DEFAULT NULL,
  `leaving_date` date DEFAULT NULL,
  `requested_by` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`Id`, `names`, `gender`, `dob`, `nid`, `marital_status`, `father_names`, `mother_names`, `father_nid`, `mother_nid`, `family_address`, `ed_level`, `family_tel`, `sector`, `cell`, `village`, `status`, `reg_date`, `district_id`, `rec_date`, `leaving_date`, `requested_by`) VALUES
(1002, 'Ngabo Eric', 'Male', '2000-01-01', '272640092', 'Married', 'Ngabo Yvan', '882864452212', NULL, '0832484763663', 'Kigali', 'O Level', '0722345678', 'Gatenga', 'Kabuye ya I', 'Ituze II', 'graduated', '2016-01-11 17:09:46', 2, NULL, '2016-01-11', 'parents'),
(1003, 'MUPENZI Benjamin', 'Male', '2000-01-01', '272640092222', 'Single', 'Mugabo Yves', '8828644522', NULL, '384763663', 'Kigali', 'None', '0722345678', 'Gatenga', 'Kabuye ya I', 'Ituze', 'graduated', '2016-01-22 01:14:28', 3, NULL, NULL, 'Parents'),
(1004, 'Ineza Delices', 'Male', '2000-01-01', '272640092222', 'Single', 'Ngabo Yvan', '882864452212', NULL, '0832484763663', 'Kigali', 'Primary', '0782345678', 'Gisozi', 'Kabuye ya I', 'Ituze II', 'graduated', '2016-01-22 01:14:28', 3, NULL, NULL, 'Parents'),
(1005, 'Kadogo Innocent', 'Male', '1990-01-01', '272640092222', 'Single', 'Ngabo Yvan', '7000250', NULL, '0832484763663', 'Kigali', 'O Level', '0782345678', 'Gatenga', 'Kabuye ya I', 'Ituze II', 'graduated', '2016-01-22 01:14:28', 3, NULL, NULL, 'Police'),
(1006, 'Mugabo Alfed', 'Male', '2000-10-10', 'dvdvd', 'Single', 'Kalisa Adolfe', 'cxcx', NULL, 'fb', 'ddfxv', 'Primary', 'fggr', 'ffdfd', 'dvdvd', 'dfefeg', 'rejected', '2016-01-21 23:42:14', 0, NULL, NULL, 'Parents'),
(1007, 'Sabiti Robert', 'Male', '2000-10-10', '3895839583', 'Single', 'Nshimiyimana Adolphe', '74674627', NULL, '787487482', 'Gikondo', 'Primary', '078345678', 'SGM', '---', '--', 'rejected', '2016-03-16 08:12:28', 10203, NULL, '2016-01-21', 'Parents'),
(1008, 'UMULISA Neza Uwase', 'Female', '2000-10-10', '1999377539990', 'Single', 'Kalisa Adolfe', '--', NULL, '--', 'Gikondo', 'O Level', '0782345678', 'SGM', '--', '--', 'center', '2016-01-22 03:06:59', 10205, NULL, NULL, 'Parents'),
(1009, 'Kalisa Adolphe', 'Male', '2000-10-10', '3895839583980', 'Married', 'Kalisa Adolfe Senior', '7467462780', NULL, '02345678', 'Gikondo', 'Primary', '0789345678', 'SGM', 'dvdvd', '--', 'district', '2016-02-19 00:02:35', 1, NULL, NULL, 'Parents');

-- --------------------------------------------------------

--
-- Table structure for table `part_trainings`
--

CREATE TABLE IF NOT EXISTS `part_trainings` (
  `part_training_id` int(11) NOT NULL,
  `training_id` int(11) DEFAULT NULL,
  `performance` varchar(50) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`part_training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part_trainings`
--

INSERT INTO `part_trainings` (`part_training_id`, `training_id`, `performance`, `Id`) VALUES
(1, 2, 'Excellent', 1002),
(2, 3, 'Good', 1002),
(3, 1, '', 1003),
(4, 3, '', 1004),
(5, 3, 'Excellent', 1004),
(6, 5, '', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `province_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `name`) VALUES
(1, 'Kigali'),
(2, 'North'),
(3, 'South');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(11) NOT NULL,
  `description` text,
  `Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `description`, `Id`) VALUES
(1, 'Gusoma no kwandika', 1002),
(2, 'Kudoda', 1004),
(3, 'Writting and Reading', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
  `training_id` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `reward` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`training_id`, `title`, `reward`, `year`) VALUES
(1, 'Imyuga', 'A1', 2015),
(2, 'Kubaza', 'A1', 2015),
(3, 'Kudoda', 'Success', 2016),
(4, 'Test', 'Az', 2016),
(5, 'Kwiga Gusoma no Kwandika', '---', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `names` varchar(50) NOT NULL,
  `usr_username` varchar(50) NOT NULL,
  `usr_password` varchar(50) NOT NULL,
  `usr_role` varchar(50) NOT NULL,
  `usr_status` varchar(50) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `names`, `usr_username`, `usr_password`, `usr_role`, `usr_status`, `ref_id`) VALUES
(10191, 'Mugabo Alfed', 'mugabo', '123', 'district', 'unlocked', 1),
(10192, 'Mugabo Alfed', 'mugabo', '123', 'district', 'unlocked', 1),
(10193, 'Kalisa Adolphe', 'kalisa', '123', 'center', 'unlocked', 0),
(10194, 'Umutoni Kelly', 'kelly', '123', 'district', 'unlocked', 2),
(10195, 'Ingabire Innocente', 'ingabire', '123', 'center', 'unlocked', 0),
(10196, 'muhire yves', 'muhire', '123', 'admin', 'unlocked', 0),
(10197, 'Mugabo Yves', 'bob', '123', 'district', 'unlocked', 1),
(10198, 'Ngabo Eric', 'eric', '123', 'center', 'unlocked', 0),
(10199, 'Sano Eric', 'sano', '123', 'center', 'unlocked', 0),
(10200, 'Tuyisenge Maxime', 'max', '123', 'district', 'unlocked', 4),
(10201, 'Ingabire Innocente', 'brain', '123', 'center', 'unlocked', 0),
(10202, 'Mugabo Alfed', 'mugabo1', '123', 'parent', 'unlocked', 0),
(10203, 'Kalisa Adolphe', 'kagabo', '123', 'parent', 'unlocked', 0),
(10204, 'UMUHOZA Natacha', 'natty', '123', 'district', 'unlocked', 5),
(10205, 'UMULISA Neza', 'neza', '123', 'parent', 'unlocked', 0),
(10206, 'Rwangalinde Armand', 'Armando', 'iam', 'district', 'unlocked', 3),
(10207, 'MUKAGATETE', 'mami', 'iam', 'parent', 'unlocked', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
