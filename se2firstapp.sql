-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2016 at 06:20 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `se2firstapp`
--
CREATE DATABASE IF NOT EXISTS `se2firstapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `se2firstapp`;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `followerID` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`followerID`,`userID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`followerID`, `userID`) VALUES
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_place_id` (`lat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `lat`, `long`) VALUES
(1, 'mohamed', 'mhmdsamir@gmail.com', '123', 30.0310036, 31.2127736),
(2, 'mohamed', 'mhmdsamir1@gmail.com', '123', 0, NULL),
(3, 'mohamed', 'mhmdsamir91@gmail.com', '123456789', NULL, NULL),
(4, 'mohamed', 'mhmdsamir92@gmail.com', '123456789', NULL, NULL),
(5, 'mohamed', 'm.samir', '123456789', 30, 31);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`followerID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
