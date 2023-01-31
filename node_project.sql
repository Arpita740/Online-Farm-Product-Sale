-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 05:02 PM
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
-- Database: `node_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(255) NOT NULL,
  `apassword` varchar(10) NOT NULL,
  `aphone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `apassword`, `aphone`) VALUES
('arpitasanyal914@gmail.com', '$2b$10$sDJ', 7407103705),
('as', '$2b$10$A/u', 7407103705);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `cusername` varchar(255) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `cphone` bigint(20) NOT NULL,
  `cfname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`createdAt`, `cusername`, `cpassword`, `cphone`, `cfname`) VALUES
('2023-01-15', 'Arpita', '$2b$10$NgTjQ.OHjudln95.ECAdquiMpf2e8l/WIdim/G2p3DYXwkUXGlH1O', 7407103705, 'Arpita Sanyal');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(8,0) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `products_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cost`, `name`, `email`, `status`, `city`, `address`, `phone`, `date`, `products_ids`) VALUES
(8, '450', 'Arpita Sanyal', 'missarpitasanyal@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-15 21:56:49', ',2,1'),
(9, '150', 'Arpita Sanyal', 'missarpitasanyal@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-16 11:14:15', ',1'),
(10, '150', 'Arpita Sanyal', 'test@test.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-16 12:57:05', ',1'),
(11, '150', 'Arpita Sanyal', 'missarpitasanyal@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-16 14:09:56', ',1'),
(12, '1500', 'Arpita Sanyal', 'arpita@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-16 15:11:06', ',1,2,5,7'),
(13, '150', 'Arpit', 'arpita@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-16 15:16:10', ',1'),
(14, '150', 'Arpita Sanyal', 'missarpita@gmail.com', ' paid', 'KALIAGANJ', '1 no. Ward, Near Tarabazar, Pithtola', '07407103705', '2023-01-31 21:24:43', ',1');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `transaction_id` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transaction_id`, `date`) VALUES
(8, 'c1b8a5', '2023-01-15 21:56:49'),
(9, '7b697f', '2023-01-16 11:14:15'),
(10, '2e2705', '2023-01-16 12:57:05'),
(11, '3ad4dc', '2023-01-16 14:09:56'),
(12, 'd1889e', '2023-01-16 15:11:06'),
(13, 'ba8c05', '2023-01-16 15:16:10'),
(14, '6f7ca4', '2023-01-31 21:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sale_price` float DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `price` float DEFAULT NULL,
  `image` text NOT NULL,
  `type` varchar(256) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sale_price`, `name`, `price`, `image`, `type`, `category`) VALUES
(1, 150, 'bajra', 300, '1.jpg', 'grain', 'grain'),
(2, 0, 'green apple', 300, '2.jpg', 'fruit', 'fruit'),
(3, 0, 'ladyfinger', 200, '3.jpg', 'vegetable', 'vegetable'),
(4, 100, 'rice', 200, '4.jpg', 'grain', 'grain'),
(5, 0, 'chikooo', 250, '5.jpg', 'fruit', 'fruit'),
(6, 0, 'wheat', 350, '6.jpg', 'grain', 'grain'),
(7, 500, 'tomato', 1000, '8.jpeg', 'fruit', 'fruit'),
(8, NULL, 'grapes', 500, '9.jpeg', 'fruit', 'fruit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusername`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
