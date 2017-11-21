-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 07:21 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_slug` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_slug`) VALUES
(1, 'House hold', 'House Hold'),
(2, 'Drinks', 'Drinks'),
(3, 'Clothing', 'Clothing'),
(4, 'Fruits', 'Fruits'),
(5, 'Electronics', 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `chk_id` int(11) NOT NULL,
  `chk_item` int(11) NOT NULL,
  `chk_ref` text NOT NULL,
  `chk_timing` datetime NOT NULL,
  `chk_qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`chk_id`, `chk_item`, `chk_ref`, `chk_timing`, `chk_qty`) VALUES
(27, 3, '2017-07-10 12:28:37 1404242359', '2017-07-10 01:35:31', 1),
(113, 2, '2017-07-11 07:53:19 534267615', '2017-07-11 12:09:27', 2),
(154, 7, '2017-07-13 02:49:56 1571600159', '2017-07-13 02:49:56', 5),
(130, 3, '2017-07-11 07:53:19 534267615', '2017-07-11 03:33:56', 5),
(158, 3, '2017-08-15 02:07:50 2029114381', '2017-08-15 02:07:50', 3),
(157, 7, '2017-07-15 08:01:16 468988934', '2017-07-15 08:01:25', 1),
(155, 8, '2017-07-13 02:49:56 1571600159', '2017-07-13 02:55:01', 1),
(156, 9, '2017-07-15 08:01:16 468988934', '2017-07-15 08:01:16', 2),
(153, 7, '2017-07-13 06:44:42 1738993358', '2017-07-13 02:07:25', 1),
(159, 8, '2017-08-15 02:07:50 2029114381', '2017-08-15 02:08:19', 1),
(160, 3, '2017-09-28 04:21:22 908228865', '2017-09-28 04:21:22', 2),
(161, 7, '2017-09-28 04:21:22 908228865', '2017-09-28 04:21:39', 2),
(162, 3, '2017-09-30 06:17:22 423592047', '2017-09-30 06:17:22', 2),
(163, 7, '2017-09-30 06:17:22 423592047', '2017-09-30 06:17:38', 2),
(164, 7, '2017-11-19 10:39:58 591795073', '2017-11-19 10:39:58', 2),
(165, 10, '2017-11-19 10:50:47 2016757060', '2017-11-19 10:50:47', 1),
(166, 17, '2017-11-20 07:10:57 979211050', '2017-11-20 07:10:57', 3);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping`
--

CREATE TABLE `online_shopping` (
  `item_id` int(11) NOT NULL,
  `item_img` text NOT NULL,
  `item_title` text NOT NULL,
  `item_description` text NOT NULL,
  `item_cat` text NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_cost` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_discount` int(11) NOT NULL,
  `item_delivery` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_shopping`
--

INSERT INTO `online_shopping` (`item_id`, `item_img`, `item_title`, `item_description`, `item_cat`, `item_qty`, `item_cost`, `item_price`, `item_discount`, `item_delivery`) VALUES
(17, 'img/20.png', 'Domex Toilet Cleaner', 'Toilet Cleaner', 'House Hold', 1, 99, 149, 49, 2),
(11, 'img/32.png', 'Oranges', '', 'Fruits', 4, 40, 50, 10, 1),
(10, 'img/16.png', 'Sprite Cool Drink', '2 ltr Bottle', 'Drinks', 1, 89, 99, 10, 20),
(12, 'img/36.png', 'Strawberries', 'Bought from Ooty they are very delicious!', 'Fruits', 10, 50, 60, 10, 1),
(13, 'img/nokia_mobile.jpg', 'Nokia Mobile', 'Nokia Mobile ', 'Electronics', 1, 5000, 5500, 500, 7),
(14, 'img/watch.jpg', 'Rolex watch', 'Rolex a luxury addition', 'Electronics', 1, 150000, 140000, 10000, 10),
(16, 'img/tshirt.jpg', 'Nike Tee', 'Nike t-shirt for the purpose of the gym', 'Clothing', 1, 900, 999, 99, 5),
(18, 'img/15.png', 'Coke Zero', 'Sugar free coke', 'Drinks', 1, 29, 39, 10, 1),
(19, 'img/17.png', 'Dish Wash Gel', 'Vim gel to clean Dishes experience the power of lemon', 'House Hold', 1, 129, 149, 20, 2),
(20, 'img/18.png', 'Vim Bar', 'Experience the power of lemon with this bar ', 'House Hold', 1, 8, 10, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` text NOT NULL,
  `order_email` text NOT NULL,
  `order_contact` text NOT NULL,
  `order_state` text NOT NULL,
  `order_delivery_address` text NOT NULL,
  `order_checkout_ref` text NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `order_return_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_email`, `order_contact`, `order_state`, `order_delivery_address`, `order_checkout_ref`, `order_total`, `order_status`, `order_return_status`) VALUES
(10, 'opt2@lpu.com', 'rk.voore@gmail.com', '07660053503', 'SR nager', 'Nayanagar kodad, Kondapalli khamman district', '2017-11-20 07:10:57 979211050', 302, 0, 0),
(9, 'Ram', 'rk.voore@gmail.com', '07660053503', 'Telangana', '3-209/2/B', '2017-11-19 10:50:47 2016757060', 109, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(2) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone_no` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `name`, `email`, `phone_no`, `password`) VALUES
(1, 'RamKumar Voore ', 'rk.voore@gmail.com', '7660053503', '123456'),
(2, 'RamKumar Voore ', 'rk.voore@gmail.com', '7660053503', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`chk_id`);

--
-- Indexes for table `online_shopping`
--
ALTER TABLE `online_shopping`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `chk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `online_shopping`
--
ALTER TABLE `online_shopping`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
