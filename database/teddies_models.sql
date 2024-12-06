-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 08:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knapapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `teddies_models`
--

CREATE TABLE `teddies_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `color` varchar(255) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teddies_models`
--

INSERT INTO `teddies_models` (`id`, `_id`, `name`, `description`, `price`, `color`, `imageURL`, `created_at`, `updated_at`) VALUES
(3, '5be9c8541c9d440000665243', 'Norbert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2900.00, 'White', 'http://127.0.0.1:8000/images/teddy_1.jpg', '2024-09-02 17:38:58', '2024-09-02 17:38:58'),
(5, '5beaa8bf1c9d440000a57d94', 'Arnold', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3900.00, 'Dark brown', 'http://localhost:8000/images/teddy_2.jpg', '2024-09-02 17:44:45', '2024-09-02 16:44:45'),
(6, '5beaacd41c9d440000a57d97', 'Gustav', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4500.00, 'Pink', 'http://localhost:8000/images/teddy_4.jpg', '2024-09-02 17:47:08', '2024-09-02 17:47:08'),
(7, '5beaaa8f1c9d440000a57d95', 'Lenny and Carl', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5900.00, 'Brown', 'http://localhost:8000/images/teddy_3.jpg', '2024-09-02 18:06:07', '2024-09-02 18:06:07'),
(8, '5beaacd41c9d440000a57d97', 'Garfunkel', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5500.00, 'Chocolate', 'http://localhost:8000/images/teddy_5.jpg', '2024-09-02 18:07:44', '2024-09-02 18:07:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teddies_models`
--
ALTER TABLE `teddies_models`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teddies_models`
--
ALTER TABLE `teddies_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
