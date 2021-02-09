-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 12:27 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionis`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `roletypeid` int(11) DEFAULT NULL,
  `createdate` varchar(50) DEFAULT NULL,
  `accountstatus` int(11) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `contact`, `username`, `pass`, `address`, `roletypeid`, `createdate`, `accountstatus`, `company`, `logo`) VALUES
(1, 'muazan', 'muazan@gmail.com', '0301', 'muazan1', '123', 'karachi', 1, '2021-12-12', 1, 'aptech', 'aptech.png'),
(2, 'ahmed', 'ahmed@gmail.com', '0302', 'ahmed1', '123', 'karachi', 2, '2021-12-12', 0, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cnic` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `e_status` varchar(50) DEFAULT NULL,
  `e_date` varchar(50) DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `cnic`, `designation`, `e_status`, `e_date`, `salary`) VALUES
(1, 'Muazan', 'muazan.web@gmail.com', '1210146617095', 'Director', 'active', '2020', '500000'),
(2, 'Umair ', 'umair@gmail.com', '4220153745855', 'CEO', 'active', '2020', '6000000'),
(3, 'Irfan', 'irfan.web@gmail.com', '4586156621856', 'Director', 'active', '2020', '5500000'),
(4, 'Bilal', 'bilal@gmail.com', '1415748546666', 'Manager', 'active', '2020', '4000000'),
(5, 'Irfan', 'shoaib.web@gmail.com', '4456156621856', 'Defense Manager', 'active', '2020', '5200000'),
(6, 'farooq', 'drfarooq@gmail.com', '9865525565254', 'Doctor', 'active', '2020', '4000000'),
(7, 'Jawwad', 'jawwad@gmail.com', '4587693201254', 'HR ', 'active', '2020', '480000'),
(8, 'Shahzaib', 'shaxi@gmail.com', '4785126390124', 'Watch Man', 'active', '2020', '500000'),
(9, 'Maaz', 'alaptech@gmail.com', '4876416458963', 'Imam Sahab', 'active', '2020', '7000000'),
(10, 'Ahsan', 'ahsan@gmail.com', '7856953621012', 'Haji Kanjoos', 'active', '2020', '3500000');

-- --------------------------------------------------------

--
-- Table structure for table `roletype`
--

CREATE TABLE `roletype` (
  `id` int(11) NOT NULL,
  `roletype` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `rolestatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roletype`
--

INSERT INTO `roletype` (`id`, `roletype`, `description`, `rolestatus`) VALUES
(1, 'Administrator', 'All rights', '1'),
(2, 'Customer', 'view-cancel-order-recieve', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `roletype`
--
ALTER TABLE `roletype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roletype` (`roletype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roletype`
--
ALTER TABLE `roletype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
