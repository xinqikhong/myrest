-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2024 at 05:40 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koderkwq_myrestdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `locat` varchar(255) NOT NULL,
  `latitude` decimal(18,15) NOT NULL,
  `longitude` decimal(18,15) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `dessert` tinyint(1) NOT NULL,
  `drink` tinyint(1) NOT NULL,
  `pastries` tinyint(1) NOT NULL,
  `savory` tinyint(1) NOT NULL,
  `sweet` tinyint(1) NOT NULL,
  `sour` tinyint(1) NOT NULL,
  `spicy` tinyint(1) NOT NULL,
  `salty` tinyint(1) NOT NULL,
  `bitter` tinyint(1) NOT NULL,
  `seafood` tinyint(1) NOT NULL,
  `gluten_free` tinyint(1) NOT NULL,
  `others` tinyint(1) NOT NULL,
  `casual` tinyint(1) NOT NULL,
  `cafe` tinyint(1) NOT NULL,
  `fine_dining` tinyint(1) NOT NULL,
  `pubs_and_bars` tinyint(1) NOT NULL,
  `coffee_shop` tinyint(1) NOT NULL,
  `dessert_shop` tinyint(1) NOT NULL,
  `cuisine` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `picture`, `locat`, `latitude`, `longitude`, `food`, `dessert`, `drink`, `pastries`, `savory`, `sweet`, `sour`, `spicy`, `salty`, `bitter`, `seafood`, `gluten_free`, `others`, `casual`, `cafe`, `fine_dining`, `pubs_and_bars`, `coffee_shop`, `dessert_shop`, `cuisine`) VALUES
(1, 'R1198_1_MY_AM', 'Namaste India TTDI, 128, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Indian'),
(2, 'R1198_2_MY_AM', 'Namaste India TTDI, 128, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Indian'),
(3, 'R1199_1_MY_AM', 'Little Bourke, 124, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(4, 'R1199_2_MY_AM', 'Little Bourke, 124, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(5, 'R1200_1_MY_AM', 'Nara by Sticks N Maki, No. 118, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.136140000000000, 101.630741497407000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Japanese'),
(6, 'R1200_2_MY_AM', 'Nara by Sticks N Maki, No. 118, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.136140000000000, 101.630741497407000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Japanese'),
(7, 'R1201_1_MY_AM', 'Nara Japanese Lounge, No. 118A, 1st Floor, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Japanese'),
(8, 'R1201_2_MY_AM', 'Nara Japanese Lounge, No. 118A, 1st Floor, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Japanese'),
(9, 'R1202_1_MY_AM', 'Gringo\'s Malaysia (Tex-Mex Restaurant), 104A, 1st floor, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Mexican'),
(10, 'R1202_2_MY_AM', 'Gringo\'s Malaysia (Tex-Mex Restaurant), 104A, 1st floor, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Mexican'),
(11, 'R1203_1_MY_AM', 'Lye@110, 110a, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 'Western'),
(12, 'R1203_2_MY_AM', 'Lye@110, 110a, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 'Western'),
(13, 'R1204_1_MY_AM', 'Secret Recipe, 98, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(14, 'R1204_2_MY_AM', 'Secret Recipe, 98, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(15, 'R1205_1_MY_AM', 'Little Madness, 96A, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 'Western'),
(16, 'R1205_2_MY_AM', 'Little Madness, 96A, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 'Western'),
(17, 'R1206_1_MY_AM', 'Orito - TTDI, 80, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 TTDI, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'European'),
(18, 'R1206_2_MY_AM', 'Orito - TTDI, 80, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 TTDI, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'European'),
(19, 'R1207_1_MY_AM', 'Frisky Goat Bakery CafÃ©, 72, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'European'),
(20, 'R1207_2_MY_AM', 'Frisky Goat Bakery CafÃ©, 72, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'European'),
(21, 'R1208_1_MY_AM', 'Foo Foo Classic Desserts, 64A, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(22, 'R1208_2_MY_AM', 'Foo Foo Classic Desserts, 64A, Jalan Burhanuddin Helmi, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Western'),
(23, 'R1209_1_MY_AM', 'KGB @TTDI, 107, Jln Aminuddin Baki, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Western'),
(24, 'R1209_2_MY_AM', 'KGB @TTDI, 107, Jln Aminuddin Baki, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Western'),
(25, 'R1210_1_MY_AM', 'TBC Restaurant, 125, Jln Aminuddin Baki, Taman Tun Dr Ismail, 60000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', 3.146646000000000, 101.623352000000000, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 'Western');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
