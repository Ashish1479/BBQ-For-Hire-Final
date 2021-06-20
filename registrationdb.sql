-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 05:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registrationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fb`
--

CREATE TABLE `fb` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb`
--

INSERT INTO `fb` (`ID`, `Name`, `Email`, `Feedback`) VALUES
(9, 'ASHISH', 'ashish@gmail.com', 'HEY, What is cheapest BBQ Machine available?'),
(10, '', '', ''),
(11, 'AShish ', 'ashishwe@gmail.com', 'Hey Ashish, '),
(12, 'Sophiya', 'sop.hi@gmail.com', 'I would like to know about requirements to rent the product.'),
(13, 'PArthik ', 'pat@gmail.com', 'Whats the cheapest machine available?'),
(14, 'Amandeep `', 'amandeep@gmail.com', 'Where is your shop?'),
(15, 'Ashish P0khrel', 'ashish@gmail.com', '123456789'),
(16, 'Ashish Pokhrel', 'ash@gmail.com', '123456789'),
(17, 'Ashish', 'ashish@gmail.com', '12345'),
(18, 'AP', 'ap@gmail.com', 'Hey'),
(19, 'Pathik Guleria', 'pg@gmail.com', 'Hey Whats your best product?');

-- --------------------------------------------------------

--
-- Table structure for table `pwd`
--

CREATE TABLE `pwd` (
  `ID` int(255) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pwd`
--

INSERT INTO `pwd` (`ID`, `Name`, `Email`) VALUES
(0, 'Ashish Pokhrel', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `DOB` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Firstname`, `Lastname`, `Gender`, `Email`, `DOB`, `Password`) VALUES
(1, 'Ashish', 'Pokhrel', 'Male', 'cric79.ashish@gmail.com', '14/07/1999', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Parthik ', 'Guleria', 'Male', 'parthik@gmail.com', '14/07/1999', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Riwaj', 'Thapa', 'Male', 'riwaj@gmail.com', '14/071999', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Ram', 'Pandey', 'Male', 'ramu@gmail.com', '14/07/1999', '58ecfdc7967e35bac8738978c0070a2c'),
(5, 'Mike ', 'Vu', 'Male', 'mikevu@gmail.com', '14/07/1981', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'Bryan', 'Robson', 'Male', 'bryan@gmail.com', '14/07/1981', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'Jamie', 'Lyon', 'Male', 'jamie@gmail.com', '12/05/1965', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'Michael', 'Jordan', 'Male', 'jordan@gmail.com', '12.06/1976', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 'Arjun', 'Pandey', 'Male', 'Arjun@gmail.com', '12/7/1999', 'a192862aa3bf46dffb57b12bdcc4c199'),
(10, 'ASHISH', 'POKHREL', '', 'qwertyasdf@gmail.com', '14/9/1988', '25f9e794323b453885f5181f1b624d0b'),
(11, 'ASHISH', 'POKHREL', 'Male', 'cric79@gmail.com', '14/07/1999', 'e089b1aa5248e592cfd83fdeddaecf01'),
(12, 'Ashish', 'Pokhrel', 'Male', 'cricket@gmail.com', '13/09/1988', '48e8a63572f351a40137e1afb06aeb2d'),
(13, 'ASHISH ', 'POKHREL', 'Male', 'ash@gmail.com', '14/07/1999', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'Prashant ', 'Dhital', 'Female', 'dhital@gmail.com', '14/07/1996', '6562c5c1f33db6e05a082a88cddab5ea'),
(15, 'Ashish ', 'POkhrel', 'Male', 'ashish@gmail.com', '14/07/1999', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fb`
--
ALTER TABLE `fb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pwd`
--
ALTER TABLE `pwd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fb`
--
ALTER TABLE `fb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
