-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 05:53 PM
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
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(20) NOT NULL,
  `Password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`) VALUES
('Omar', 13467900);

-- --------------------------------------------------------

--
-- Table structure for table `aeroplane`
--

CREATE TABLE `aeroplane` (
  `Plane_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aeroplane`
--

INSERT INTO `aeroplane` (`Plane_ID`) VALUES
(1001),
(1002),
(1003),
(1004),
(1005),
(1006),
(1007),
(1008),
(1009),
(1010),
(1011),
(1012);

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `Agent_Membership_Number` varchar(20) NOT NULL,
  `Licence_Number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`Agent_Membership_Number`, `Licence_Number`) VALUES
('xyz', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `Air_id` varchar(20) NOT NULL,
  `Air_name` varchar(20) DEFAULT NULL,
  `Air_Type` varchar(20) DEFAULT NULL,
  `country_id` varchar(3) DEFAULT NULL,
  `Flight_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Port_ID` varchar(20) NOT NULL,
  `Port_name` varchar(20) DEFAULT NULL,
  `Port_Type` varchar(20) DEFAULT NULL,
  `Port_Runway` varchar(25) DEFAULT NULL,
  `Country_id` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bordingpass`
--

CREATE TABLE `bordingpass` (
  `Bording_id` varchar(20) DEFAULT NULL,
  `Ticket_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `Country_id` varchar(3) NOT NULL,
  `Country_Name` varchar(20) DEFAULT NULL,
  `Population` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`Country_id`, `Country_Name`, `Population`) VALUES
('AFG', 'Afghanistan', 29121286),
('ARG', 'Argentina', 41343201),
('AUS', 'Australia', 21515754),
('BD', 'Bangladesh', 160000000),
('BEL', 'Belgium', 10403000),
('BMU', 'Bermuda', 65365),
('BRA', 'Brazil', 201103330),
('COL', 'Colombia', 47790000),
('DZA', 'Algeria', 34586184),
('IN', 'India', 1020000000);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `Port_id` varchar(20) DEFAULT NULL,
  `arrival_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `Passport_No` int(20) DEFAULT NULL,
  `Flight_id` varchar(20) DEFAULT NULL,
  `Bording_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `Plane_ID` int(10) DEFAULT NULL,
  `Air_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Passport_No` int(20) NOT NULL,
  `Country_id` varchar(3) DEFAULT NULL,
  `DOE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Passport_No`, `Country_id`, `DOE`) VALUES
(10154555, 'BD', '2018-11-23'),
(10154556, 'AFG', '2017-11-23'),
(10154557, 'ARG', '2017-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `Port_ID` varchar(20) DEFAULT NULL,
  `dept_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(5) NOT NULL,
  `Ticket_Price` int(10) DEFAULT NULL,
  `Passport_no` int(20) DEFAULT NULL,
  `Flight_id` varchar(20) DEFAULT NULL,
  `Agent_Membership_Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_ID`, `Ticket_Price`, `Passport_no`, `Flight_id`, `Agent_Membership_Number`) VALUES
(10001, 10000, 10154555, 'xyz', 'xyz'),
(10002, 500, 10154554, 'xyz', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserName`,`Password`);

--
-- Indexes for table `aeroplane`
--
ALTER TABLE `aeroplane`
  ADD PRIMARY KEY (`Plane_ID`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`Agent_Membership_Number`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`Air_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Port_ID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Country_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Passport_No`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Ticket_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
