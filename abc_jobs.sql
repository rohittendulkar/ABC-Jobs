-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 02:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_jobs`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProgrammers` ()  SELECT * FROM programmer$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Username`, `Password`) VALUES
(761910905, 'hpulfer7', 'ZDYxuKVAVlv'),
(841356157, 'mmocquer6', 'zGqyuy');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `ProgID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`ProgID`, `JobID`) VALUES
(546622208, 456),
(1235624706, 123),
(1915654440, 456),
(2147483647, 123);

-- --------------------------------------------------------

--
-- Table structure for table `bulk_emails`
--

CREATE TABLE `bulk_emails` (
  `email_no` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Name` char(100) NOT NULL,
  `AdminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulk_emails`
--

INSERT INTO `bulk_emails` (`email_no`, `Email`, `Name`, `AdminID`) VALUES
(1, 'rameshtiwari@gmail.com', 'Ramesh', 761910905),
(2, 'kimono@gmail.com', 'kim', 761910905),
(3, 'gopal@gmail.com', 'gopal', 841356157);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_number` int(11) NOT NULL,
  `Company_name` varchar(100) NOT NULL,
  `Country` text NOT NULL,
  `City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_number`, `Company_name`, `Country`, `City`) VALUES
(1, 'Google', 'USA', 'Chicago'),
(2, 'Infosys', 'India', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `ProgID` int(11) NOT NULL,
  `ProfileID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`ProgID`, `ProfileID`) VALUES
(546622208, 8080),
(1235624706, 7679);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JobID` int(11) NOT NULL,
  `Job_Title` varchar(100) NOT NULL,
  `Job_Description` varchar(250) NOT NULL,
  `Company_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JobID`, `Job_Title`, `Job_Description`, `Company_number`) VALUES
(123, 'Software Developer', 'Software Developer doesnt need much experience.', 1),
(456, 'Team Lead', 'Team Leader needs a lot of experience to support the interns.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `remarks` varchar(100) NOT NULL,
  `Date_` date NOT NULL,
  `AdminID` int(11) NOT NULL,
  `ProgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ProfileID` int(11) NOT NULL,
  `CV` longblob NOT NULL,
  `About` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ProfileID`, `CV`, `About`) VALUES
(7679, 0x30, 'New but enthusiastic.'),
(8080, 0x30, 'Experienced and a born leader.');

-- --------------------------------------------------------

--
-- Table structure for table `programmer`
--

CREATE TABLE `programmer` (
  `ProgID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Last_name` char(100) NOT NULL,
  `First_name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programmer`
--

INSERT INTO `programmer` (`ProgID`, `Username`, `Password`, `Last_name`, `First_name`, `Email`) VALUES
(215123220, 'jrouxb', 'JmpotKtQh', 'Roux', 'Jannelle', 'jrouxb@chron.com'),
(457702397, 'ksutehall6', 'qmGZ6YZz3c', 'Sutehall', 'Katheryn', 'ksutehall6@mayoclinic.com'),
(546622208, 'gcutting0', 'kSigICzU34zv', 'Cutting', 'Germana', 'gcutting0@cyberchimps.com'),
(1160047944, 'mdoring', 'NU6fEH0', 'Dorin', 'Morton', 'mdoring@sina.com.cn'),
(1235624706, 'tskippingsf', 'ScbmW1kM1w7', 'Skippings', 'Travus', 'tskippingsf@blog.com'),
(1538735318, 'trickasse9', 'b7hGNL0', 'Rickasse', 'Thorn', 'trickasse9@discovery.com'),
(1879308886, 'cgeorgerd', 'QywnkT', 'Georger', 'Constance', 'cgeorgerd@imdb.com'),
(1915654440, 'efinicjj', 'oavasRj', 'Finicj', 'Elnora', 'efinicjj@delicious.com'),
(1989034071, 'jdalla8', 'Q6ovjRHxQ1', 'Dalla', 'Johann', 'jdalla8@yolasite.com'),
(2147483647, 'sclench1', 'PVUts9K', 'Clench', 'Sal', 'sclench1@sciencedirect.com');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `AdminID` int(11) NOT NULL,
  `ProgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`AdminID`, `ProgID`) VALUES
(0, 546622208),
(0, 1160047944),
(0, 1235624706),
(0, 1538735318),
(0, 1879308886),
(0, 1915654440),
(0, 1989034071),
(0, 2147483647),
(761910905, 215123220),
(841356157, 457702397);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`ProgID`,`JobID`),
  ADD KEY `JobID` (`JobID`);

--
-- Indexes for table `bulk_emails`
--
ALTER TABLE `bulk_emails`
  ADD PRIMARY KEY (`email_no`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_number`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`ProgID`,`ProfileID`),
  ADD KEY `ProfileID` (`ProfileID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `Company_number` (`Company_number`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`AdminID`,`ProgID`),
  ADD KEY `ProgID` (`ProgID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ProfileID`);

--
-- Indexes for table `programmer`
--
ALTER TABLE `programmer`
  ADD PRIMARY KEY (`ProgID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`AdminID`,`ProgID`),
  ADD KEY `ProgID` (`ProgID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulk_emails`
--
ALTER TABLE `bulk_emails`
  MODIFY `email_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`ProgID`) REFERENCES `programmer` (`ProgID`),
  ADD CONSTRAINT `apply_ibfk_2` FOREIGN KEY (`JobID`) REFERENCES `job` (`JobID`);

--
-- Constraints for table `bulk_emails`
--
ALTER TABLE `bulk_emails`
  ADD CONSTRAINT `bulk_emails_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`ProgID`) REFERENCES `programmer` (`ProgID`),
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ProfileID`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`Company_number`) REFERENCES `company` (`Company_number`);

--
-- Constraints for table `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  ADD CONSTRAINT `manages_ibfk_2` FOREIGN KEY (`ProgID`) REFERENCES `programmer` (`ProgID`);

--
-- Constraints for table `usertype`
--
ALTER TABLE `usertype`
  ADD CONSTRAINT `usertype_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  ADD CONSTRAINT `usertype_ibfk_2` FOREIGN KEY (`ProgID`) REFERENCES `programmer` (`ProgID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
