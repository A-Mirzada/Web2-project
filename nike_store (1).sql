-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2025 at 06:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nike_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `section` enum('men','women','kids') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `section`, `price`, `image_url`, `created_at`) VALUES
(12, 'Nike Air Force', 'Shoes', 'men', 115.00, 'http://localhost:5000/uploads/1764708410033.png', '2025-12-02 20:46:54'),
(13, 'Nike Air Max', 'Shoes', 'men', 85.00, 'http://localhost:5000/uploads/1764708467720.png', '2025-12-02 20:47:51'),
(14, 'Nike Cap', 'Clothing', 'men', 35.00, 'http://localhost:5000/uploads/1764708551752.jpg', '2025-12-02 20:49:14'),
(15, 'Nike Dri-fit', 'Shirts', 'men', 65.00, 'http://localhost:5000/uploads/1764708604279.png', '2025-12-02 20:50:06'),
(16, 'Nike Jacket', 'jackets', 'men', 85.00, 'http://localhost:5000/uploads/1764708641915.png', '2025-12-02 20:50:46'),
(17, 'band', 'accessories', 'women', 50.00, 'http://localhost:5000/uploads/1764782695531.jpg', '2025-12-03 17:24:57'),
(18, 't shirt', 'clothing', 'women', 50.00, 'http://localhost:5000/uploads/1764803113051.jpg', '2025-12-03 23:05:15'),
(19, 'air jordan', 'shoes', 'kids', 120.00, 'http://localhost:5000/uploads/1764951100528.jpg', '2025-12-05 16:11:42'),
(20, 'kid\'s tech shirt', 'clothing', 'kids', 80.00, 'http://localhost:5000/uploads/1764952311772.jpg', '2025-12-05 16:31:53'),
(21, 'Nike Sweatpant', 'Clothing', 'men', 60.00, 'http://localhost:5000/uploads/1764953586132.png', '2025-12-05 16:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'karim korkomaz', 'karim@gmail.com', '$2b$10$KX9MqexZEK.I1FM.ZDhXwu9cO0ryorRdbl3FWfLUsyVdp2VjvTRV2', 'user', '2025-12-02 18:04:57'),
(3, 'admin', 'admin@example.com', '$2b$10$Lm3PmfZb9UJE/s83zFNpAOiGk2yX1Utk8b809Khqo.neXsFQr4wla', 'admin', '2025-12-02 18:07:05'),
(4, 'mizo', 'mizo@gmail.com', '$2b$10$LRvNmlxje6Tli1kopGbPBOgMIZ5zHoTmLQ90TOGBbYfpvDmktaCum', 'user', '2025-12-03 17:18:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
