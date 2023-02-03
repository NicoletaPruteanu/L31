-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 12:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronix`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_log`
--

CREATE TABLE `ad_log` (
  `id` int(11) NOT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `apwd` varchar(50) DEFAULT NULL,
  `secques` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ad_log`
--

INSERT INTO `ad_log` (`id`, `aname`, `apwd`, `secques`) VALUES
(1, 'electronixadmin', '12345678', 'dreaming');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Asus'),
(3, 'Dell'),
(4, 'Nikon'),
(5, 'Samsung'),
(7, 'Motorola'),
(8, 'Intel');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(19, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Motherboards'),
(3, 'Desktops'),
(4, 'Cameras'),
(5, 'Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prd_id` int(100) NOT NULL,
  `prd_cat` int(100) NOT NULL,
  `prd_brand` int(100) NOT NULL,
  `prd_title` varchar(255) NOT NULL,
  `prd_price` int(100) NOT NULL,
  `prd_desc` text NOT NULL,
  `prd_img` text NOT NULL,
  `prd_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prd_id`, `prd_cat`, `prd_brand`, `prd_title`, `prd_price`, `prd_desc`, `prd_img`, `prd_keyword`) VALUES
(14, 4, 5, 'Samsung webcam', 6500, 'digital webcam with optical zoom', 'camera.png', 'webcam,samsung,camera,samsung camera,cameras'),
(15, 5, 7, 'Motorola maxi m23', 3800, '5 MP Primary Camera\n2 MP Secondary Camera\nDual Sim (GSM + UMTS)\nAndroid v4.4 (KitKat)', '20140904-193820-moto-e.jpg', 'motorola mobile,android,motorola,android phone,android mobiles'),
(16, 5, 7, 'Moto-Turbo mx888', 4800, '\nAndroid v4.4.4 OS\nDual Sim (GSM + GSM)\n5 inch HD Screen\n8 MP Primary Camera', '20150312-04712-moto-turbo.jpg', 'motorola mobile,android,motorola,android phone,android mobiles'),
(17, 5, 2, 'Asus568-molixva', 4300, '1 GB RAM\n8 MP Primary Camera\n2 MP Secondary Camera\n1.2 Ghz Quad Core', 'asus-ze550ml-ze550ml-1a076ww-125x125-imae6qafassv5kcz.jpeg', 'Asus mobile,android,asus,android phone,android mobiles'),
(20, 2, 2, 'ASUS M5A78L-M LX Motherboard', 3895, 'Form Factor Micro-ATX\r\nSocket type AM3+\r\nAudio Codec Realtec ALC887\r\nBuffered Memory', '18279201679984motherboard138606973113875996181389273744.jpg', 'asus,gaming,raltek,motherboard'),
(23, 4, 4, 'Nikon Coolpix P600  Optical Zoom', 18000, '16.1 Megapixel,\r\ncolor:black,\r\n60X Otical Zoom,\r\nISO 100 to 6400 Senstivity,\r\n3 inch vari Angle Display', 'digital-camera-391444626208.jpg', 'nikon,camera,black,zoom,cameras'),
(24, 0, 0, '', 0, '', '', ''),
(25, 0, 0, '', 0, '', '', ''),
(26, 0, 0, '', 0, '', '', ''),
(27, 0, 0, '', 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_log`
--
ALTER TABLE `ad_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aname` (`aname`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_log`
--
ALTER TABLE `ad_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prd_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
