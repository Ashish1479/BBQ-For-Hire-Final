-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 05:36 AM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(57, 2, '::1', 9, 1),
(162, 78, '127.0.0.1', 31, 1),
(181, 17, '::1', 39, 1),
(188, 8, '::1', 45, 1),
(189, 8, '::1', 46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Ashish', 'ashish@gmail.com', 'SA', 'Adelaide', 'Adelaide', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 27, 'Ashish Pokhrel', 'cric79ashish@gmail.com', 'SA', 'slkfsiks', 'gt', 503935, 'Isiwi', '3345', '12/21', 1, 169, 1234),
(3, 27, 'Ashish Pokhrel', 'cric79ashish@gmail.com', 'SA', 'slkfsiks', 'gt', 503935, 'sd', '23435', '12/22', 1, 169, 455),
(4, 27, 'Ashish Pokhrel', 'cric79ashish@gmail.com', 'SA', 'slkfsiks', 'gt', 503935, 'Isiwi', '3333', '12/22', 0, 0, 123),
(5, 27, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(6, 37, 'Ashish  POkhrel', 'ar@gmail.com', 'SA', 'SA', 'SA', 5039, 'Asod', '3498 438943 89432', '12/22', 0, 0, 288),
(7, 37, 'Ashish  POkhrel', 'ar@gmail.com', 'SA', 'SA', 'SA', 50393, 'Asod', '3498 438943 89432', '12/22', 0, 0, 288),
(8, 37, 'Ashish  POkhrel', 'ar@gmail.com', 'SA', 'SA', 'SA', 5039, 'Ashish', '1903457859495489', '12/77', 1, 22, 122),
(9, 37, 'Ashish  POkhrel', 'ar@gmail.com', 'SA', 'SA', 'SA', 5039, 'Ashish ', '4544 3544 5434 ', '12/43', 1, 22, 123),
(10, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(11, 42, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(12, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(13, 42, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(14, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(15, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(16, 42, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(17, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(18, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(19, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(20, 42, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(21, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(22, 42, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(23, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977),
(24, 42, 'prashant  dhital', 'pires.madrid900@gmail.com', 'adelaide', 'sa', 'sa', 5065, 'prashant dhital', '5217 3982 6547 9879', '02/32', 0, 0, 977);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(76, 2, 78, 1, 169),
(77, 3, 78, 1, 169),
(78, 8, 17, 1, 22),
(79, 9, 17, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Gas BBQ Machine \r\n', 100, 'Price for One Day', 'gas.jpg', ''),
(4, 1, 3, 'Charcoal Bbq Machine\r\n', 80, 'Price for one day', 'charcoal.jpg', ''),
(8, 1, 4, 'Electric BBQ Machine\r\n', 169, 'Price for one day', 'electric.jpg', ''),
(16, 3, 6, 'Apron', 18, 'Plastic apron used for outdoor purposes. ', 'apron.jpg', ''),
(17, 3, 6, 'Gloves', 22, 'Heat Resistance Gloves used for outdoor purposes ', 'gloves.jpg', ''),
(78, 1, 5, 'Hot Sauces', 15, 'Mixed with Bbq Products', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pwdreset`
--

INSERT INTO `pwdreset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(1, 'ar@gmail.com', 'd4d4796c9c8be7ea', '$2y$10$Lrv.DywJK4r0SkCi95U.MetQ3lyQsXu5C/eGm4rodazoLwSItHzL.', '1621479900'),
(2, 'cric79.ashish@gmail.com', '17c527c71422652a', '$2y$10$Pjltvhfgjxcwsw/Ykxitt.RgdQwGxjQNYLr63B1lWVC3tg8IaMqc2', '1621485299'),
(5, 'ashdi', 'c7de3e0b7defc87f', '$2y$10$5yRS6iy8nuCL1V.9Uxqur.ethQYFYWG1ggC1oRECMhgG8GMincSci', '1621485769'),
(6, 'amrtieef@gmail.com', '5d5c5452718e5a10', '$2y$10$99I8M5B6mhKt.hVipyEg1.mtNyAGDJi7WYT9eYUHSWz.48oHX0IVa', '1621493697'),
(7, '', 'a86e0b238c08bcac', '$2y$10$fBCDQrdDSJOijSbA4Aepx.n62Ha4hm3Ue3SgBJX/8JlsjGqYt1196', '1623204902');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(1, 'Ashish Pokhrel', 'cric79.ashish@gmail.com', 'ash79', '$2y$10$QaW3oQSetcdrUdeCwSH.MuhKwz6zm42p.KGpkTDk1XDDtONIjZ0iq'),
(2, 'Ashish ', 'a@gmail.com', '1234', '$2y$10$R6KXpPUdf579iHMWUodU9.Da7wGx9B8I2Sr2STwifogKYu0FNkqtq'),
(3, 'Arjun Reddy', 'ar@gmail.com', 'ar79', '$2y$10$tsbz2wkhjMQvhCPbx8Mb3.zfYAbpVy6U8.GEu70AU.y2KD50wDTOq'),
(4, 'Ashish', 'staff@gmail.com', 'staff1479', '$2y$10$gpUArEDMrNEOd7aGaQU/ruWfeeH5v9NhbS7ZHEQL6oVMPWX9RFN0S'),
(5, 'aa', 'admin@gmail.com', 'qqqqq', '$2y$10$KfIjKFldGF.U.ubt8MsrsOGdlen/unpjDMqYiCjq8kZDG3B4tIzKW');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Ashish', 'Pokhrel', '951@gmail.com', '12233', '9448121558', 'ewre4t', 'sdcjns,djc'),
(27, 'Ashish', 'Pokhrel', 'cric79ashish@gmail.com', '123456789', '0451456470', 'SA', 'slkfsiks'),
(28, 'Ashish ', 'Pokhrel', 'aaaa@gmail.com', '123456789', '0451456470', 'w33r3', 'e543534'),
(29, 'Bryan', 'Robson', 'bryan@gmail.com', '12345678A', '0453456761', 'Anzac Highway', 'Adealdie '),
(30, 'Jamie', 'Lyon', 'jamie@gmail.com', '123456789A', '0451456470', '215 Anzac Highway', 'Adelaide'),
(31, 'Michael', 'Jordan', 'jordan@gmail.com', '12345678A', '0451456470', 'Anzac Highway', 'Adelaide'),
(35, 'parthik', 'guleria', 'pat@gmail.com', 'qwertyuiop', '0468370098', '19 derwent avenue, magill', 'adelaide'),
(37, 'Ashish ', 'POkhrel', 'ar@gmail.com', '123456789', '0451456470', 'SA', 'SA'),
(42, 'prashant ', 'dhital', 'pires.madrid900@gmail.com', '412f2bab000a09435d0e10cf21b1f09e', '0449506878', 'adelaide', 'sa'),
(44, 'KT', 'Lau', 'ktlau@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0451456470', 'Edwardstown', 'Adelaide'),
(46, 'Ash', 'Pokhrel', 'ash@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0451456470', '2A Daws Road ', 'Edwardstown');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'Ashish', 'Pokhrel', 'cric79.ashish@gmail.com', 'seveNine@79', '0451456470', 'SA', 'slkfsiks'),
(27, 'Ashish', 'Pokhrel', 'cric79ashish@gmail.com', '123456789', '0451456470', 'SA', 'slkfsiks'),
(28, 'Ashish ', 'Pokhrel', 'aaaa@gmail.com', '123456789', '0451456470', 'w33r3', 'e543534'),
(29, 'Bryan', 'Robson', 'bryan@gmail.com', '12345678A', '0453456761', 'Anzac Highway', 'Adealdie '),
(30, 'Jamie', 'Lyon', 'jamie@gmail.com', '123456789A', '0451456470', '215 Anzac Highway', 'Adelaide'),
(31, 'Michael', 'Jordan', 'jordan@gmail.com', '12345678A', '0451456470', 'Anzac Highway', 'Adelaide'),
(32, 'ASHISH', 'POKHREL', 'cric79ash@gmail.com', 'seveNine@79', '0451456470', '2/33 Railway Terrace', 'Adelaide'),
(33, 'ASHISH', 'POKHREL', 'cricashish@gmail.com', 'seveNine@79', '0451456470', '2/33 Railway Terrace', 'Adelaide'),
(34, 'ASHISH ', 'POKHREL', 'ash@gmail.com', 'qwertyasdf', '0424244344', '233 A rrd', '22343234'),
(35, 'parthik', 'guleria', 'pat@gmail.com', 'qwertyuiop', '0468370098', '19 derwent avenue, magill', 'adelaide'),
(36, 'Virat', 'Kohli', 'vk@gmail.com', 'Virat@123456', '0451456470', 'SA', 'Adelaide'),
(37, 'Ashish ', 'POkhrel', 'ar@gmail.com', '123456789', '0451456470', 'SA', 'SA'),
(38, 'Ashish ', 'POkhrel', 'cric79@gmail.com', 'seveNine79', '0451456470', 'SA', 'SA'),
(39, 'M', 'K', 'mk@gmail.com', '123456789', '0424343843', 'aa', 'aa'),
(40, 'R', 'J', 'rj@gmail.com', '123456789', '0434664357', 'SA', 'SA'),
(41, 'aaa', 'aaa', 'aaa@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', '0456424678', 'aaa', 'aaa'),
(42, 'prashant ', 'dhital', 'pires.madrid900@gmail.com', '412f2bab000a09435d0e10cf21b1f09e', '0449506878', 'adelaide', 'sa'),
(43, 'A', 'p', 'a@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0451456470', 'SA', 'Adelaide'),
(44, 'KT', 'Lau', 'ktlau@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0451456470', 'Edwardstown', 'Adelaide'),
(45, 'kt', 'lau', 'kt@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0451456470', 'Edwardstown', 'Adelaide'),
(46, 'Ash', 'Pokhrel', 'ash@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0451456470', '2A Daws Road ', 'Edwardstown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
