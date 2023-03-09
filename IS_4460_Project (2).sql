-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2023 at 02:21 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IS_4460_Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Follow`
--

CREATE TABLE `Follow` (
  `Follow_id` int(11) NOT NULL,
  `Member_ID` varchar(16) NOT NULL,
  `Restaurant_ID` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Food`
--

CREATE TABLE `Food` (
  `Food_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Restaurant_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `Member_id` int(16) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `User_ID` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`Member_id`, `Name`, `email`, `User_ID`) VALUES
(24, 'Molly Nelson', 'mnelson@email.com', '43'),
(25, 'Billy Moore', 'bmoore@gmail.com', '44'),
(26, 'Test Run', 'test@run.com', '45');

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `Restaurant_ID` int(11) NOT NULL,
  `Restaurant_Name` varchar(128) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Address` varchar(128) NOT NULL,
  `Phone` varchar(16) NOT NULL,
  `Email` varchar(128) NOT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `Review_ID` int(11) NOT NULL,
  `Food_ID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `Review` varchar(256) NOT NULL,
  `Rating` decimal(2,1) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `Role_ID` int(11) NOT NULL,
  `Role_Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`Role_ID`, `Role_Name`) VALUES
(1, 'Member'),
(2, 'Restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `SubscriptionFee`
--

CREATE TABLE `SubscriptionFee` (
  `Fee_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `User_ID` int(11) NOT NULL,
  `FirstName` varchar(128) NOT NULL,
  `LastName` varchar(128) NOT NULL,
  `Username` varchar(128) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`User_ID`, `FirstName`, `LastName`, `Username`, `Password`, `Role_ID`) VALUES
(43, 'Molly', 'Nelson', 'mnelson', '$2y$10$rVwWCF4WveVeZMOqNg1UHu4BDzUrrZaeVwWDbXszTAis8iy0eIVV2', 1),
(44, 'Billy', 'Moore', 'bmoore', '$2y$10$3Tqqq1RxtCz7Bh6h8GYyDOixJWfS/fq4dlZOh8SJAQtbUvauDrvdC', 1),
(45, 'Test', 'Run', 'testrun', '$2y$10$HnsPA9fi/bWCCAKqo8hL3u7gjn.IZ3F6Ipe9OACfXd5JrO7ih7iSi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Follow`
--
ALTER TABLE `Follow`
  ADD PRIMARY KEY (`Follow_id`);

--
-- Indexes for table `Food`
--
ALTER TABLE `Food`
  ADD PRIMARY KEY (`Food_ID`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`Member_id`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`Restaurant_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`Review_ID`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`Role_ID`);

--
-- Indexes for table `SubscriptionFee`
--
ALTER TABLE `SubscriptionFee`
  ADD PRIMARY KEY (`Fee_ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Follow`
--
ALTER TABLE `Follow`
  MODIFY `Follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Food`
--
ALTER TABLE `Food`
  MODIFY `Food_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `Member_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `Restaurant_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `Review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `SubscriptionFee`
--
ALTER TABLE `SubscriptionFee`
  MODIFY `Fee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
