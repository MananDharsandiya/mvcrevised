-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 08:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newmvc-manan_dharsandiya`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `status`, `password`, `created_at`, `updated_at`) VALUES
(2, 'admin1', 'admin2@gmail.com', 1, 'admin3', '2023-03-30 08:30:11', '2023-05-01 03:05:38'),
(6, 'admin2', 'admin2@gmail.com', 1, 'nikunj', '2023-03-30 10:01:32', '2023-05-01 03:06:44'),
(7, 'admin3', 'admin3@gmail.com', 2, 'nikkkkkk', '2023-03-30 01:54:04', '2023-05-01 03:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `parent_id`, `path`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '1', 'root', '', 1, '2023-04-03 09:41:41', '2023-04-12 14:47:21'),
(92, 1, '1=92', 'sdsd', 'sasassqaqwsqsqa', 1, '2023-05-22 11:04:06', '2023-05-22 11:46:44'),
(93, 92, '1=92=93', 'baddroom', 'good', 1, '2023-05-22 11:47:04', '0000-00-00 00:00:00'),
(94, 93, '1=92=93=94', 'chair', 'sdsd', 1, '2023-05-22 11:47:23', '0000-00-00 00:00:00'),
(95, 1, '1=95', 'bedsit', 'good', 1, '2023-05-22 11:47:54', '0000-00-00 00:00:00'),
(96, 92, '1=92=96', 'ddwsd', 'qsqsq', 2, '2023-05-22 11:48:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `mobile` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `shipping_address_id`, `billing_address_id`, `first_name`, `last_name`, `email`, `gender`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(23, 22, 21, 'harshad', 'parmar', 'harshadparmar9000@gmail.com', '', 2147483647, 'active', '2023-05-04 14:22:58', '2023-05-22 11:46:39'),
(24, 343, 34, 'manish', 'parmar', 'manish@gamil.com', '', 34543545, 'active', '2023-05-05 06:27:18', '2023-05-22 11:11:28'),
(27, 28, 27, 'harshad', 'parmar', 'harshadparmar@gmail.com', 'male', 2147483647, 'active', '2023-05-05 06:31:33', '2023-05-16 08:08:18'),
(34, 45, 44, '', '', '', '', 0, 'active', '2023-05-18 14:06:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`, `shipping_address_id`, `billing_address_id`, `address`, `city`, `state`, `country`, `zip_code`, `created_at`, `updated_at`) VALUES
(21, 23, 0, 0, 'Chabutra pasal no vistart SATHVARAPARA wadhwan SURENDRANAGAR', 'Surendranagar', 'Gujarat', 'India', 363030, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 23, 0, 0, 'SURENDRANAGAR', 'Gujrat', 'Gujarat', 'India', 363030, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 24, 0, 0, '', '', '', '', 0, '2023-05-05 04:27:40', NULL),
(27, 27, 0, 0, 'vastrapur', 'ahemedabad', 'Gujarat', 'India', 363030, '2023-05-05 04:31:33', '0000-00-00 00:00:00'),
(28, 27, 0, 0, '', '', '', '', 0, '2023-05-05 04:31:34', '0000-00-00 00:00:00'),
(44, 34, 0, 0, '', '', '', '', 0, '2023-05-18 12:06:59', NULL),
(45, 34, 0, 0, '', '', '', '', 0, '2023-05-18 12:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` int(11) NOT NULL,
  `entity_type_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `backend_type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `backend_model` varchar(255) NOT NULL,
  `input_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `code`, `backend_type`, `name`, `status`, `backend_model`, `input_type`) VALUES
(123, 1, '12311', 'int', '    222112', 1, '    asaq', 'select'),
(124, 3, '242', 'varchar', ' dsdd', 2, ' sqqqq', 'textarea'),
(129, 5, '333', 'decimal', 'fdfdf', 1, ' we', 'select'),
(130, 6, '2332', 'varchar', ' fddf', 1, ' rrrr', 'textarea'),
(131, 2, '323', 'text', ' 2323', 1, ' dfdf', 'select'),
(132, 1, '', 'int', ' ', 1, ' ', 'textbox');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `name`, `attribute_id`, `position`) VALUES
(48, '1', 123, 32232),
(50, '', 123, 0),
(51, '', 123, 0),
(52, '', 123, 0),
(53, '111', 129, 32323);

-- --------------------------------------------------------

--
-- Table structure for table `entity_type`
--

CREATE TABLE `entity_type` (
  `entity_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `entity_model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entity_type`
--

INSERT INTO `entity_type` (`entity_type_id`, `type_name`, `entity_model`) VALUES
(1, 'product', ''),
(2, 'category', ''),
(3, 'customer', ''),
(4, 'vendor', ''),
(5, 'salesman', ''),
(6, 'shipping', ''),
(7, 'payment', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', '1', '2023-02-13 08:53:38', '2023-04-05 08:29:01'),
(2, 'test2', '2', '2023-02-13 08:53:38', '2023-03-06 10:25:44'),
(3, 'test3', '1', '2023-02-13 08:53:38', '2023-02-13 08:53:38'),
(4, 'test4', '1', '2023-02-13 08:53:38', '2023-04-05 11:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `description` text NOT NULL,
  `color` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `sku`, `quantity`, `cost`, `price`, `status`, `description`, `color`, `material`, `created_at`, `updated_at`) VALUES
(1, 'oppo', '', '', '14.00', '12.00', '1', 'good', 'gold', 'METAL', '2023-05-02 15:26:59', '2023-05-17 07:04:41'),
(112, 'realme', '', '', '20000.00', '13000.00', '1', 'good', 'BLACK', 'METAL', '2023-05-02 15:27:32', '2023-05-04 13:54:14'),
(138, 'i phone', '', '', '75000.00', '109000.00', '1', 'this is a iphone ', 'blue', 'metal', '2023-05-22 10:26:26', '2023-05-22 10:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_int`
--

CREATE TABLE `product_int` (
  `value_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` tinyint(4) DEFAULT NULL,
  `small` tinyint(4) DEFAULT NULL,
  `base` tinyint(4) DEFAULT NULL,
  `gallery` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `salesman_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `company` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`salesman_id`, `first_name`, `last_name`, `email`, `gender`, `mobile`, `status`, `company`, `created_at`, `updated_at`) VALUES
(1, 'sales1', 'test', 'test@gmail.com', '', 9090909090, '2', 'test.co.ltd', '2023-02-13 08:53:38', '2023-05-22 11:41:29'),
(2, 'sales2', 'sales2', 'test1@gmail.com', 'Male', 2000000, '2', 'test2.co.ltd', '2023-02-13 08:53:38', '2023-05-05 06:16:37'),
(115, 'sale3', 'sale3', 'sale3@gmail.com', 'Female', 8490643834, '1', 'amd', '2023-05-04 14:39:07', '2023-05-16 08:13:13'),
(135, 'sale4', 'sale4', 'sale4@gmail.com', 'Male', 124224424, '1', 's.ngar', '2023-05-16 08:13:56', '0000-00-00 00:00:00'),
(141, 'SWWS', 'Sasq', 'saqsq', '', 0, '1', 'dwe', '2023-05-22 11:10:21', '2023-05-22 11:41:54'),
(142, '', '', '', '', 0, '1', '', '2023-05-22 11:11:44', NULL),
(143, 'sqs', 'sq', 'sqsq', 'Male', 0, '2', 'wwqs', '2023-05-22 11:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesman_address`
--

CREATE TABLE `salesman_address` (
  `address_id` int(11) NOT NULL,
  `salesman_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip_code` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesman_address`
--

INSERT INTO `salesman_address` (`address_id`, `salesman_id`, `address`, `city`, `state`, `country`, `zip_code`) VALUES
(1, 1, 'test', 'testCity', 'testState', 'tCountry', 0),
(2, 2, 'test2', 'testCity2', 'test2State', 'test2Country', 222222),
(114, 141, '', '', '', '', 0),
(116, 142, '', '', '', '', 0),
(119, 143, 'wdwdw', 'ssqs', 'sqsq', 'sqsqas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesman_price`
--

CREATE TABLE `salesman_price` (
  `entity_id` int(11) NOT NULL,
  `salesman_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `salesman_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(20,0) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'oppo', '100', '1', '2023-03-27 05:35:13', '2023-05-01 11:53:45'),
(2, 'realme', '200', '2', '2023-03-27 05:35:26', '2023-05-01 11:54:04'),
(3, 'MI', '1000', '1', '2023-03-27 05:35:37', '2023-05-01 11:54:14'),
(5, 'i phone', '2000', '1', '2023-03-27 06:06:23', '2023-05-01 11:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `mobile` int(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `Company` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `first_name`, `last_name`, `email`, `gender`, `mobile`, `status`, `Company`, `created_at`, `updated_at`) VALUES
(2, 'harshad', 'parmar', 'harshadparmar9000@gmail.com', 'SELECT Gender', 2147483647, '1', '', '2023-02-14 10:39:23', '2023-05-22 11:46:32'),
(14, 'manish', 'parmar', 'manishparmar0796@gmail.com', 'MALE', 2147483647, 'ACTIVE', '', '2023-04-06 01:54:58', '2023-05-04 10:36:02'),
(24, 'anish', 'patel', 'anishpatel3838@gmail.com', 'MALE', 2147483647, '1', 'aqsq', '2023-05-04 10:36:25', '2023-05-22 11:41:14'),
(25, 'jeel', 'butani', 'jeelbutani@gmail.com', 'MALE', 2147483647, 'ACTIVE', '', '2023-05-04 10:36:37', '2023-05-04 10:53:27'),
(29, 'paresh', 'panchal', 'pareshpanchal@gmail.com', 'MALE', 2147483647, '1', '', '2023-05-15 10:35:02', '2023-05-15 10:36:03'),
(30, 'qaqw', 'qwq', 'sq', 'MALE', 0, '1', 'qqq', '2023-05-22 11:40:21', '2023-05-22 11:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_address`
--

CREATE TABLE `vendor_address` (
  `address_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip_code` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_address`
--

INSERT INTO `vendor_address` (`address_id`, `vendor_id`, `address`, `city`, `state`, `country`, `zip_code`) VALUES
(2, 2, 'Chabutra pasal no vistart SATHVARAPARA wadhwan SURENDRANAGAR', 'Surendranagar', 'Gujarat', 'testCountry', 363030),
(17, 14, 'dfer', 'dcfv', 'ssss', 'iui', 123456),
(24, 14, 'dfeSsSr', 'dcfvSASAS', 'ssssASAS', 'iui', 123456),
(33, 24, 'Mahesana', 'Mahesana', 'Gujarat', 'India', 314001),
(34, 25, 'vastrapur', 'ahemedabad', 'Gujarat', 'India', 363030),
(41, 30, '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `billing_address_id` (`billing_address_id`),
  ADD KEY `shippinig_address_id` (`shipping_address_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `eav_attribute_ibfk_1` (`entity_type_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `entity_type`
--
ALTER TABLE `entity_type`
  ADD PRIMARY KEY (`entity_type_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_int`
--
ALTER TABLE `product_int`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_media_ibfk_1` (`product_id`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`salesman_id`);

--
-- Indexes for table `salesman_address`
--
ALTER TABLE `salesman_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `salesman_address_ibfk_1` (`salesman_id`);

--
-- Indexes for table `salesman_price`
--
ALTER TABLE `salesman_price`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `salesman_price_ibfk_2` (`salesman_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_address`
--
ALTER TABLE `vendor_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `vendor_address_ibfk_1` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `entity_type`
--
ALTER TABLE `entity_type`
  MODIFY `entity_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `product_int`
--
ALTER TABLE `product_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `salesman`
--
ALTER TABLE `salesman`
  MODIFY `salesman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `salesman_address`
--
ALTER TABLE `salesman_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `salesman_price`
--
ALTER TABLE `salesman_price`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vendor_address`
--
ALTER TABLE `vendor_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `eav_attribute_ibfk_1` FOREIGN KEY (`entity_type_id`) REFERENCES `entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `eav_attribute_option_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_int`
--
ALTER TABLE `product_int`
  ADD CONSTRAINT `product_int_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_int_ibfk_2` FOREIGN KEY (`entity_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_media`
--
ALTER TABLE `product_media`
  ADD CONSTRAINT `product_media_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesman_address`
--
ALTER TABLE `salesman_address`
  ADD CONSTRAINT `salesman_address_ibfk_1` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesman_price`
--
ALTER TABLE `salesman_price`
  ADD CONSTRAINT `salesman_price_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salesman_price_ibfk_2` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendor_address`
--
ALTER TABLE `vendor_address`
  ADD CONSTRAINT `vendor_address_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
