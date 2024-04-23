-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 06:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `number` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `user_id`, `f_name`, `l_name`, `number`, `email`, `address`, `total_price`, `placed_on`, `payment_status`) VALUES
(37, 11, 'neema', 'tmg', 2147483647, 'neematamang02@gmail.com', 'damak8,jhapa', 579, '2023-12-14', 'pending'),
(38, 11, 'neema', 'tmg', 2147483647, 'neematamang02@gmail.com', 'damak8,jhapa', 45, '2023-12-14', 'pending'),
(39, 11, 'Neema', 'tamang', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 2, '2024-02-22', 'pending'),
(40, 18, 'Nima', 'Tamang', 2147483647, 'neematamang02@gmail.com', 'koteshwor-32, near hariyali avocado banquet', 57, '2024-03-06', 'pending'),
(41, 23, 'Neema', 'tamang', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 135, '2024-04-08', 'pending'),
(42, 6, 'nimsbro', 'tmg', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 4, '2024-04-13', 'completed'),
(43, 22, 'Sushant', 'acharya', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 135, '2024-04-15', 'pending'),
(44, 24, 'sandesh', 'chettri', 974231286, 'sandesh@gmail.com', 'kathmandu', 43, '2024-04-17', 'pending'),
(45, 24, 'sandesh', 'tamang', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 43, '2024-04-18', 'pending'),
(46, 22, 'sushant', 'Achrya', 4334, 'sushant@gmaiul.com', 'damak jhapa', 145, '2024-04-19', 'pending'),
(47, 22, 'Neema', 'tamang', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 145, '2024-04-19', 'pending'),
(48, 22, 'Neema', 'tamang', 2147483647, 'neematamang02@gmail.com', 'damak jhapa', 168, '2024-04-19', 'pending'),
(49, 22, 'supa', 'tmg', 2147483647, 'supa02@gmail.com', 'kathmandu,kamalphokhari', 425, '2024-04-21', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `subtotal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `image`, `quantity`, `subtotal`) VALUES
(71, 5, 37, 'Butter', '500', 'butter.jpg', 50, 0),
(72, 5, 38, 'Yogurt', '250', 'yogurt.jpg', 15, 0),
(73, 5, 39, 'Cheese', '300', 'cheese.jpg', 1, 0),
(75, 5, 36, 'Milk', '350', 'milk.jpg', 50, 1),
(93, 10, 37, 'Butter', '45', 'butter.jpg', 255, 0),
(104, 11, 36, 'Milk', '1.5', 'milk.jpg', 1, 0),
(116, 0, 63, 'gyan', '135', 'butter.jpg', 100, 0),
(118, 0, 62, 'Milk', '10', 'milk.jpg', 1, 0),
(119, 0, 67, 'aloo', '20', 'canvas-size.png', 1, 0),
(121, 0, 65, 'Ghee', '4', 'butter.jpg', 1, 0),
(126, 24, 67, 'aloo', '20', 'canvas-size.png', 1, 0),
(127, 24, 61, 'simp', '23', 'icons8-customer-100.png', 1, 0),
(132, 25, 63, 'gyan', '135', 'butter.jpg', 1, 0),
(133, 25, 64, 'Curd', '5', 'yogurt.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `pid`, `user_id`, `comment`, `reply`) VALUES
(39, 36, 10, 'good product', ''),
(40, 36, 11, '', ''),
(41, 36, 11, '', 'chup');

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_date` varchar(255) NOT NULL,
  `e_date` varchar(255) NOT NULL,
  `p_cost` int(255) NOT NULL,
  `selling` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expiry`
--

INSERT INTO `expiry` (`id`, `name`, `p_date`, `e_date`, `p_cost`, `selling`) VALUES
(3, 'yogurt', '04/28/2023', '04/23/2025', 10, 20),
(4, 'Milk', '3/16/2024', '3/15/2026', 2, 5),
(5, 'Ghee', '04/07/2024', '04/07/2026', 50, 80);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `b_id`, `p_id`, `qty`) VALUES
(1, 48, 61, 1),
(2, 48, 65, 1),
(3, 48, 63, 1),
(4, 49, 69, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `quantity`, `product_image`, `product_description`, `vendor_id`) VALUES
(61, 'abc', '30', 40, 'client-img2.png', 'kfjkhfjhvj', 4),
(63, 'Yogurt', '75', 100, 'yogurt.jpg', 'Pure buffalo milk yogurt', 6),
(64, 'Butter', '250', 50, 'butter.jpg', 'Home made butter', 6),
(65, 'Cheese', '300', 200, 'cheese.jpg', 'Organic cheese', 7),
(69, 'Milk', '85', 100, 'milk.jpg', 'Delicious pure milk', 4);

-- --------------------------------------------------------

--
-- Table structure for table `registerd_users`
--

CREATE TABLE `registerd_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registerd_users`
--

INSERT INTO `registerd_users` (`id`, `full_name`, `email`, `password`) VALUES
(6, 'Nima Tamang', 'nima@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(7, 'Nimatamang', 'nemtem@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(8, 'aus', 'aus@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(9, 'doraken', 'dorakendsan@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(10, 'rozim', 'maharjan@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(11, 'Nimatamang', 'neematamang02@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(12, 'Nimatamang', 'abc@gmail.com', 'a9993e364706816aba3e25717850c26c9cd0d89d'),
(13, '', 'supa@gmail.com', ''),
(14, 'supa', 'nanu@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(15, '', 'bhumika@gmail.com', ''),
(16, 'ram', 'ram@gmail.com', '123456'),
(17, 'rozim', 'rozim02@gmail.com', '123456'),
(18, 'bijay', 'bijay@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(19, '', 'farmer@gmail.com', '123456'),
(20, 'farmer', 'farmer@gmail.com', '123456'),
(21, 'hreetvik', 'hritviktamang@gmail.com', '159753'),
(22, 'supa', 'supa02@gmail.com', '123456'),
(23, 'devil', 'devil@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(24, 'sandesh', 'sandesh@gmail.com', '123456'),
(25, 'dimba', 'dimba@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `registerd_vendor`
--

CREATE TABLE `registerd_vendor` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registerd_vendor`
--

INSERT INTO `registerd_vendor` (`id`, `username`, `email`, `pass`) VALUES
(1, 'abc', 'abc@gmail.com', '123456'),
(2, 'test', 'test@gmail.com', '$2y$10$KzNtE12NAhrBcoEhLnhOBuGiG3xcrChfn3pNw52D24dmcTZkAiiTS'),
(3, 'testing', 'testing@gmail.com', '$2y$10$t82vGvla1F9LNunw87aLEu3du8FRiLz0ZJwWTwTFBq/.qS/qYBCKy'),
(4, 'vendor', 'vendor@gmail.com', '$2y$10$ePF0nLIYSoY0Hs.Hv6vXG.6UPvo8bFywPEnQoK7P0dzSm8Rq0bCx2'),
(5, 'rozim', 'rozim@gmail.com', '$2y$10$aMtQtcYEu.owBKX2bLsndeBSo1K8X7DjzvVK7o.MiWCpMNEZptpve'),
(6, 'tamang', 'tamang@gmail.com', '$2y$10$0TTY.d1K0Qx8yGvgPoGgVukQoiPLNSdeOJKihlYKOFeQGMD7kWrM6'),
(7, 'acharya', 'acharya@gmail.com', '$2y$10$ATvuEI9qAgN6pUsLYsw98.35qxAr1zcanzX8YHUMW53Xi.HNYroLa');

-- --------------------------------------------------------

--
-- Table structure for table `seller_login`
--

CREATE TABLE `seller_login` (
  `sellerid` int(11) NOT NULL,
  `sellerfname` varchar(100) NOT NULL,
  `selleremail` varchar(100) NOT NULL,
  `sellerpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_login`
--

INSERT INTO `seller_login` (`sellerid`, `sellerfname`, `selleremail`, `sellerpass`) VALUES
(1, 'nimsbro', 'nimsbro@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'nimsbro', 'bros@gmail.com', '$2y$10$I1qVBYm11uXKSEzM6Pwj8OVxefJ4d5E25SnV/uQUCrO/LZx4xAE9W'),
(3, 'nema', 'nema@gmail.com', '$2y$10$a.c51PaT99Hi/13LOYZCLumTcLhPS1fQCP1a5h9xUYr.vel0uSvzm'),
(4, 'rozim', 'rozim@gmail.com', '$2y$10$ZHuBXac4.1CgZjBEI7XG/.ePVxnDXH7uHROOpc5govpLN6TKzRBn2'),
(5, 'neema tmg', 'neematamang02@gmail.com', '$2y$10$Fk.6BIMYjyXEGtO8VNkHQeXhNop5WVHnNYpq2eSM8ljs0.E0cE.PG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expiry`
--
ALTER TABLE `expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_billing_id` (`b_id`),
  ADD KEY `fk_product_id` (`p_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendor_id` (`vendor_id`);

--
-- Indexes for table `registerd_users`
--
ALTER TABLE `registerd_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerd_vendor`
--
ALTER TABLE `registerd_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_login`
--
ALTER TABLE `seller_login`
  ADD PRIMARY KEY (`sellerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `expiry`
--
ALTER TABLE `expiry`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `registerd_users`
--
ALTER TABLE `registerd_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `registerd_vendor`
--
ALTER TABLE `registerd_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller_login`
--
ALTER TABLE `seller_login`
  MODIFY `sellerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_billing_id` FOREIGN KEY (`b_id`) REFERENCES `billing_details` (`id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `registerd_vendor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
