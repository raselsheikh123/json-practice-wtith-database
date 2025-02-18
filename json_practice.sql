-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2025 at 04:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax`
--

CREATE TABLE `ajax` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` varchar(15) NOT NULL,
  `phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ajax`
--

INSERT INTO `ajax` (`id`, `name`, `address`, `class`, `phone`) VALUES
(1, 'Rasel', 'Khulna', 'Ten', 1961143168),
(2, 'Hasib', 'Bagerhat', 'Nine', 1911234424),
(67, 'Rana', 'South Zone Private Hospital, Lift - 6, Flat 6C, 33 Outer Bypass Road, Hafiz Nagar More, Sonadanga, Khulna.', 'seven', 1961143168),
(68, 'Sumon', 'Choto Boyra', 'ten', 1961143168),
(70, 'Alamni', 'Choto Boyra', 'ten', 1961143168),
(71, 'Rubel', 'Choto Boyra', 'seven', 1961143168),
(72, 'Rasel Sheikh', 'Choto Boyra', 'eight', 1961143168),
(73, 'Salman', 'Jessore', 'eight', 1258456321);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax`
--
ALTER TABLE `ajax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax`
--
ALTER TABLE `ajax`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
