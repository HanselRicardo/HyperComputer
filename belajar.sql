-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql310.epizy.com
-- Generation Time: Sep 08, 2021 at 07:05 PM
-- Server version: 5.7.34-37
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_29274463_belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodebrg` varchar(5) NOT NULL,
  `namabarang` varchar(40) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodebrg`, `namabarang`, `harga`, `stok`) VALUES
('B001', 'FIGMA HOLOLIVE (USADA PEKORA)', 1200000, 55),
('B002', 'FIGMA HOLOLIVE (INUGAMI KORONE)', 1000000, 50),
('B003', 'FIGMA HOLOLIVE (SHIRAKAMI FUBUKI)', 1250000, 727),
('B004', 'FIGMA HOLOLIVE (OOZORA SUBARU)', 1500000, 50),
('B005', 'FIGMA HOLOLIVE (SHISHIRO BOTAN)', 2000000, 50),
('B006', 'FIGMA HOLOLIVE (KIRYU COCO)', 2500000, 50);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `kodebrg` varchar(16) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `namapembeli` varchar(32) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(32) NOT NULL,
  `kodepos` varchar(6) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `kodebrg`, `jumlah`, `namapembeli`, `alamat`, `kota`, `kodepos`, `telp`, `email`) VALUES
(15, 'B001', 5, 'Mohammad Noor Ihsan A', 'Rusun Bengpuspal TNI-AD, JL.PSM No.46', 'Bandung', '40285', '085155654205', 'ikhsanakbar2002@gmail.com'),
(16, 'B003', 50, 'udin', 'jalan wysi no.727', 'kukizi', '132727', '0872769177013', 'wysi.727@kukizi.osu.ppy.sh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebrg`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
