-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 06:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameuniverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `ConsumerID` int(11) NOT NULL COMMENT 'Primary Key',
  `FirstName` varchar(30) NOT NULL COMMENT 'Consumer first name',
  `LastName` varchar(30) NOT NULL COMMENT 'Consumer last name',
  `DateofBirth` date NOT NULL COMMENT 'Consumer date of birth',
  `Gender` enum('Male','Female','Other') DEFAULT 'Male' COMMENT 'Consumer gender',
  `Email` varchar(20) NOT NULL COMMENT 'Consumer email',
  `Password` varchar(30) NOT NULL COMMENT 'Consumer password',
  `MobileNumber` int(12) NOT NULL COMMENT 'Consumer mobile number',
  `Address` varchar(40) NOT NULL COMMENT 'Consumer address',
  `Postcode` varchar(9) NOT NULL COMMENT 'Consumer postcode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceID` int(11) NOT NULL COMMENT 'Primary Key',
  `OrderDate` date NOT NULL COMMENT 'Date of order',
  `EstimatedDeliveryDate` date NOT NULL COMMENT 'Estimated delivery date of order',
  `Quantity` tinyint(5) NOT NULL COMMENT 'Quantity of order',
  `DeliveryCost` decimal(5,2) NOT NULL COMMENT 'Fee of delivery',
  `TotalCost` decimal(5,2) NOT NULL COMMENT 'Total cost of product',
  `TypeofPayment` enum('Credit/Debit','Voucher') NOT NULL COMMENT 'Payment of product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL COMMENT 'PRIMARY KEY',
  `ConsumerID` int(11) NOT NULL COMMENT 'ID of consumer (foreign key)',
  `ProductID` int(11) NOT NULL COMMENT 'ID of product (foreign key)',
  `InvoiceID` int(11) NOT NULL COMMENT 'ID of invoice (foreign key)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL COMMENT 'Primary Key',
  `Name` varchar(50) NOT NULL COMMENT 'Name of product',
  `Description` varchar(100) NOT NULL COMMENT 'Description of product',
  `Image` longblob NOT NULL COMMENT 'Image of product',
  `Category` enum('Adventure','Fighting','Horror','Party','Platformer','Puzzle','Racing','RPG','Sandbox','Shooter','Simulator','Sport','Stealth','Strategy') NOT NULL COMMENT 'Category of product',
  `Platform` enum('NES','SNES','N64','GCN','Wii','Wii u','Switch','Xbox','Xbox 360','Xbox One','Xbox Series S/X','PS1','PS2','PS3','PS4','PS5','PC') NOT NULL COMMENT 'Platform of product',
  `Price` decimal(5,2) NOT NULL COMMENT 'Price of product',
  `ReviewScore` decimal(2,2) NOT NULL COMMENT 'ReviewScore of product',
  `AgeRating` int(5) NOT NULL COMMENT 'AgeRating of product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`ConsumerID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `ConsumerID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY';

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
