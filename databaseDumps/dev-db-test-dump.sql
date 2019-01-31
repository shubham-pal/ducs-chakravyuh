-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2016 at 03:08 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sankalan_chakra_2k16`
--

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE `hint` (
  `ques_id` int(11) NOT NULL,
  `hint_number` int(11) NOT NULL,
  `data` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hint`
--

INSERT INTO `hint` (`ques_id`, `hint_number`, `data`) VALUES
(1, 1, 'LOL1'),
(1, 2, 'LOL2'),
(2, 1, 'LOL1'),
(2, 2, 'LOL2'),
(3, 1, 'LOL1'),
(3, 2, 'LOL2'),
(4, 1, 'LOL1'),
(4, 2, 'LOL2'),
(5, 1, 'LOL1'),
(5, 2, 'LOL2'),
(6, 1, 'LOL1'),
(6, 2, 'LOL2');

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
  `data` varchar(100) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `answer`, `data`, `type`) VALUES
(1, 'testanswer', '1st question!', 'text'),
(2, 'ans2', '/img/1.png', 'image'),
(3, 'ans3', '3rd question!?', 'text'),
(4, 'testanswer', '4st question!', 'text'),
(5, 'ans2', '/img/1.png', 'image'),
(6, 'ans3', '3rd question!?', 'text');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
