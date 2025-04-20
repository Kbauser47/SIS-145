-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 12:17 AM
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
-- Database: `crud_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Rayner Caba', 'cabarc750@gmail.com', '$2y$10$L/7NLCA5SslzwRoh2TB7Ge6hohJ0XkJ6ehBynkDoVkODtgG2sZ4Ae', '2025-04-18 17:52:11'),
(9, 'Sumire Cabas Condori', 'cabasumi@gmail.com', '$2y$10$U5Wg83.KQY6obz8gDMH27ON8KcOYUQD6MnevtkkLCqncZkfN3gcHC', '2025-04-18 23:57:38'),
(10, 'Juan Jose Ramirez', 'ramirs47@gmail.com', '$2y$10$p7J5mND0SwsX.hQyxXlbsOaSHqkAvR0bpiPLpk0qBcyqPxG684HDa', '2025-04-19 01:33:24'),
(11, 'Antonio Felipe Cabrito', 'anto@gmail.com', '$2y$10$9vrrv84vbOAugY.wJKn.3uc2mGqaatrD7kyOIs0Oe.LAnYb3LkrTO', '2025-04-19 01:35:11'),
(13, 'admin', 'admin@gmail.com', '$2y$10$Wy1UjNp5Qb7lkPFM33vUle49b8j.EFP.cuR2/8aIlM.IyDAtzn8ka', '2025-04-19 18:33:32');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
