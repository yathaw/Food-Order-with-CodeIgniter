-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2019 at 03:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_image`, `created_at`, `updated_at`) VALUES
(1, 'Night Life', 'image/category/barandclub.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(2, 'BBQ', 'image/category/bbq.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(3, 'Cake', 'image/category/cake.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(4, 'Chinese Food', 'image/category/china.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(5, 'Coffee', 'image/category/coffee.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(6, 'European Food', 'image/category/european.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(7, 'Fast Food', 'image/category/fastfood.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(8, 'Hot Pot', 'image/category/hotpot.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(9, 'Indian Food', 'image/category/india.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(10, 'Italy Food', 'image/category/italy.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(11, 'Japan Food', 'image/category/japan.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(12, 'Korean Food', 'image/category/korea.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(13, 'Noodle', 'image/category/noodle.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(14, 'Pizza', 'image/category/pizza.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(15, 'Porridge', 'image/category/porridge.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(16, 'Seafood', 'image/category/seafood.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(17, 'Steak', 'image/category/steak.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(18, 'Street Food', 'image/category/streetfood.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(19, 'Sushi', 'image/category/sushi.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(20, 'Thai Food', 'image/category/thailand.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(21, 'Traditional', 'image/category/traditional.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00'),
(22, 'Vegetarian', 'image/category/vegetarian.png', '2019-03-12 02:41:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cities_id` int(11) NOT NULL,
  `cities_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cities_id`, `cities_name`, `created_at`, `updated_at`) VALUES
(1, 'Yangon', '2019-03-12 02:42:58', '0000-00-00 00:00:00'),
(2, 'Mandalay', '2019-03-12 02:42:58', '0000-00-00 00:00:00'),
(3, 'Nay Pyi Taw', '2019-03-12 02:42:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(11) NOT NULL,
  `menus_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menus_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menus_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menus_description` text COLLATE utf8_unicode_ci NOT NULL,
  `menus_restaurantid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_voucherno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orders_menuid` int(11) NOT NULL,
  `orders_qty` int(11) NOT NULL,
  `orders_userid` int(11) NOT NULL,
  `orders_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orders_datetime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurants_id` int(11) NOT NULL,
  `restaurants_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurants_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurants_address` text COLLATE utf8_unicode_ci NOT NULL,
  `restaurants_phone` int(11) NOT NULL,
  `restaurants_categoryid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `townships_id` int(11) NOT NULL,
  `townships_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `townships_cityid` int(11) NOT NULL,
  `townships_deliveryprice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`townships_id`, `townships_name`, `townships_cityid`, `townships_deliveryprice`, `created_at`, `updated_at`) VALUES
(1, 'Ahlon', 1, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(2, 'Bahan', 1, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(3, 'Botahtaung', 1, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(4, 'Hlaing', 1, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(5, 'Kamayut', 1, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(6, 'Pabedan', 1, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(7, 'Pazundaung', 1, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(8, 'Yankin', 1, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(9, 'Tamwe', 1, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(10, 'Sanchaung', 1, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(11, 'Aungmyethazan', 2, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(12, 'Chanayethazan', 2, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(13, 'Chanmyathazi', 2, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(14, 'Maha Aungmye', 2, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(15, 'Patheingyi', 2, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(16, 'Pyigyidagun', 2, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(17, 'Amarapura', 2, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(18, 'Ottarathiri', 3, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(19, 'Dekkhinathiri', 3, '2500', '2019-03-12 02:49:51', '0000-00-00 00:00:00'),
(20, 'Pobbathiri', 3, '2000', '2019-03-12 02:49:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_address` text COLLATE utf8_unicode_ci NOT NULL,
  `users_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cities_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurants_id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`townships_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `restaurants_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `townships_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
