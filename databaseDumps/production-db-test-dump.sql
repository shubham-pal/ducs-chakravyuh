-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 10:03 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ducs_chakravyuh_mayajaal`
--

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE `hint` (
  `ques_id` int(11) NOT NULL,
  `hint_number` int(11) NOT NULL,
  `data` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hint`
--

INSERT INTO `hint` (`ques_id`, `hint_number`, `data`) VALUES
(1, 1, 'aGludDE='),
(1, 2, 'aGludDI='),
(2, 1, 'aGludDM='),
(2, 2, 'aGludDQ=');

-- --------------------------------------------------------

--
-- Table structure for table `levelcleartime`
--

CREATE TABLE `levelcleartime` (
  `level` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `time_micro` double NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `data` varchar(200) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `answer`, `data`, `type`) VALUES
(1, '9cdfb439c7876e703e307864c9167a15', 'hello', 'text'),
(2, 'ebb7e099481958b192561052613d8386', './img/q1.png', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture_url` varchar(400) NOT NULL,
  `blocked` bit(1) NOT NULL DEFAULT b'0',
  `level` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `level_update_time` datetime NOT NULL,
  `level_update_time_micro` double NOT NULL,
  `last_hint_time` datetime NOT NULL,
  `next_hint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `picture_url`, `blocked`, `level`, `points`, `level_update_time`, `level_update_time_micro`, `last_hint_time`, `next_hint`) VALUES
(2000642426699979, 'Jatin Rohilla', 'jatinrohilla073@gmail.com', 'https%3A%2F%2Fplatform-lookaside.fbsbx.com%2Fplatform%2Fprofilepic%2F%3Fasid%3D2000642426699979%26height%3D50%26width%3D50%26ext%3D1551509683%26hash%3DAeSTmMitzzPcQXdB', b'1111111111111111111111111111111', 1, 0, '2019-01-31 12:24:43', 1548917683.5476, '2019-01-31 12:24:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userattempt`
--

CREATE TABLE `userattempt` (
  `user_id` bigint(20) NOT NULL,
  `level` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_five_attempts` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hint`
--
ALTER TABLE `hint`
  ADD PRIMARY KEY (`ques_id`,`hint_number`);

--
-- Indexes for table `levelcleartime`
--
ALTER TABLE `levelcleartime`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userattempt`
--
ALTER TABLE `userattempt`
  ADD PRIMARY KEY (`user_id`,`level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
