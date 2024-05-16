-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 06:51 PM
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
-- Database: `musico_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_konser`
--

CREATE TABLE `daftar_konser` (
  `id` int(11) NOT NULL,
  `nama_konser` varchar(255) NOT NULL,
  `tanggal_konser` date NOT NULL,
  `harga_tiket` varchar(100) NOT NULL,
  `lokasi_konser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_konser`
--

INSERT INTO `daftar_konser` (`id`, `nama_konser`, `tanggal_konser`, `harga_tiket`, `lokasi_konser`) VALUES
(1, 'Anak JakSel: The Musical!', '2024-03-09', '125.000', 'GKJ, DKI Jakarta'),
(2, 'The Hold On Tight Tour', '2024-06-20', '800.000', 'Aruba Hall, DKI Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_rincian_tiket`
--

CREATE TABLE `daftar_rincian_tiket` (
  `id` int(11) NOT NULL,
  `nama_konser` varchar(255) NOT NULL,
  `jenis_tiket` varchar(255) NOT NULL,
  `harga_tiket` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `stock_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_login`
--

CREATE TABLE `data_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_login`
--

INSERT INTO `data_login` (`id`, `username`, `password`) VALUES
(1, 'rizky', 'rizky'),
(2, 'acell', 'acell');

-- --------------------------------------------------------

--
-- Table structure for table `data_signup`
--

CREATE TABLE `data_signup` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_konser`
--
ALTER TABLE `daftar_konser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_rincian_tiket`
--
ALTER TABLE `daftar_rincian_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_login`
--
ALTER TABLE `data_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_signup`
--
ALTER TABLE `data_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_konser`
--
ALTER TABLE `daftar_konser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daftar_rincian_tiket`
--
ALTER TABLE `daftar_rincian_tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_login`
--
ALTER TABLE `data_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_signup`
--
ALTER TABLE `data_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
