-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2017 at 04:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_member`
--

CREATE TABLE `add_member` (
  `month` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_member`
--

INSERT INTO `add_member` (`month`, `name`, `phone`, `email`) VALUES
('May', 'rk', '76565', 'bjhjh'),
('May', 'sohag', '656', 'sdfh'),
('May', 'zihad', '54564', 'sdfj');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`name`, `date`, `cost`) VALUES
('sohag', '2017-05-02', 400);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `username`, `password`, `email`) VALUES
('rocky', 'rk', '007', 'rk@gmail.com'),
('sohag', 'sohag', '211', 'sohag@gmail.com'),
('tarek', 'Trk', '123', 'fjfjhfhj'),
('Ziadul Islam', 'Zihad', '196', 'jahsdh');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`name`, `date`, `breakfast`, `lunch`, `dinner`) VALUES
('sohag', '2017-05-07', 3, 4, 7),
('zihad', '2017-05-04', 3, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `othersbill`
--

CREATE TABLE `othersbill` (
  `elecbill` int(11) NOT NULL,
  `netbill` int(11) NOT NULL,
  `gasbill` int(11) NOT NULL,
  `other` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `othersbill`
--

INSERT INTO `othersbill` (`elecbill`, `netbill`, `gasbill`, `other`) VALUES
(1020, 600, 800, 500);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`name`, `date`, `balance`) VALUES
('rk', '2017-05-02', 10),
('sohag', '2017-05-07', 520),
('zihad', '2017-05-13', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `name` varchar(30) NOT NULL,
  `hrent` int(11) NOT NULL,
  `elecbill` int(11) NOT NULL,
  `netbill` int(11) NOT NULL,
  `gasbill` int(11) NOT NULL,
  `otherbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`name`, `hrent`, `elecbill`, `netbill`, `gasbill`, `otherbill`) VALUES
('zihad', 1800, 510, 300, 400, 250),
('sohag', 2200, 510, 300, 400, 250),
('rk', 2400, 340, 200, 267, 167);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_member`
--
ALTER TABLE `add_member`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
