-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Paul_hyrax`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'paul kapaiko', '2026-02-10', 800000, 3),
(2, 'pauline kea', '2020-02-13', 120000, 1),
(3, 'sarah Ann Conner', '2024-02-06', 90000, 1),
(4, 'johan mwajuma', '2017-02-02', 600000, 2),
(5, 'kahindi mlalama', '2018-02-14', 6000, 2),
(6, 'juma Femi', '2026-02-12', 800000, 2),
(7, 'john vadit', '2022-02-02', 120000, 3),
(8, 'Tomas Ramas', '2016-02-10', 600000, 1),
(9, 'victor Jones', '2018-02-01', 800000, 2),
(11, 'Alli Bildi', '2025-02-10', 900000, 1),
(12, 'Mohammed abdi', '2000-08-04', 56000, 1),
(14, 'johan abdi', '2001-08-10', 42800, 2),
(15, 'Amani mohammed', '2005-10-09', 850000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(2, 'orange', 'very sweet and nutritious fruit', 50, 'bed8.jpg'),
(3, 'orange', 'very sweet and nutritious fruit', 50, 'bed8.jpg'),
(4, 'setbook(kidagaa kimemwozea)', 'one of the latest interesting setbook', 400, 'bed8.jpg'),
(5, 'bookshelf', 'one of the modern bookshelf and mostly used in schools', 80000, 'bed8.jpg'),
(6, 'iphone 17', 'the latest version of phones used in Kenya.Expensive but very useful.', 50000, 'bed8.jpg'),
(7, 'mountain bike', 'Can be used in very steep mountains without struggling.', 300000, 'bed8.jpg'),
(8, 'jeep', 'Can climb any steep mountain reason being the latest typy of jeep with a very horsepower', 10000000, 'jeep-6771343_1920.jpg'),
(9, 'machine gun', 'A very powerful machine gun with a very poiwerful magnification usually used in serious battles', 50000000, 'machine-gun-7393020_1920.png'),
(10, 'german bed', 'have a nice night sleep with our types of bed', 80000, 'bed2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'kapaikopaul-hash', '13paul@kapaiko', 'kapaikopaul0@gmail.com', '0780891925'),
(2, 'kapaikopaul', '1330', 'kapaikopaul7@gmail.com', '0780891925'),
(3, 'paulz', 'p1330', 'kapaikopaul7@gmail.com', '0780891925'),
(4, 'paulz', 'p1330', 'kapaikopaul7@gmail.com', '0780891925'),
(5, 'kapaiko', 'p1327', 'kapaikopaul17@gmail.com', '0719253202'),
(6, 'fred', 'p1327', 'kapaikofred17@gmail.com', '0788322242'),
(7, 'jeemoz', '123456', 'rukainejames@gmail.com', '0794368206');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
