-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 03:57 PM
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
-- Database: `uts_dpw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `judul`, `penulis`, `deskripsi`, `created_at`, `updated_at`) VALUES
(6, 6, '1. Forza Horizon 5', 'Arief Muhammad', 'Franchise Forza Horizon 5 membawa ke Meksiko yang sangat indah. Playground Games dengan cermat menciptakan versi Meksiko yang menakjubkan yang hidup dalam HDR. Jika kamu ingin menguji monitor atau TV baru kamu, Forza Horizon 5 adalah tempat yang tepat.\r\n\r\nRealisme yang ditambahkan pengaturan ini tidak tertandingi dan merupakan salah satu implementasi HDR terbaik dalam sebuah game. Ini hanyalah penggunaan HDR terbaik di PC dan salah satu game terbaik tahun 2021.', '2022-08-23 07:46:08', '2022-08-23 09:54:10'),
(7, 6, '2. Microsoft Flight Simulator 2020', 'Arief Muhammad Akrom', 'Puncak game HDR di PC tidak lain adalah Microsoft Flight Simulator 2020. HDR adalah teknik rendering yang memungkinkan pengembang game membuat rentang nada visual yang lebih realistis, dan ini sangat penting untuk misi Flight Simulator untuk menciptakan kembali seluruh Bumi.', '2022-08-23 07:47:08', '2022-08-27 06:25:40'),
(12, 6, '3. God of War', 'Arief Muhammad Akrom', 'Ketika God of War rilis di PC, ia membawa rangkaian lengkap opsi penyesuaian grafis, termasuk dukungan HDR. Penggemar yang memainkan God of War di PlayStation sudah tahu betapa hebatnya tampilan game ini di HDR.', '2022-08-27 06:28:11', '2022-08-27 06:28:28'),
(13, 8, '4. Death Stranding', 'anyaaa', 'Saat dirilis di PS4, Death Stranding memamerkan betapa indahnya sebuah game open-world yang unik. Kemudian, ketika datang ke PC, Hideo Kojima bahkan dapat mewujudkan visinya dengan lebih baik dengan extra horsepower yang tersedia di beberapa pengaturan, dan peningkatan ini muncul di HDR.\r\n\r\nDunia Death Stranding menggabungkan lingkungan berbatu yang luas dengan hub futuristik dan Beached Things. Death Stranding tidak menghindar dari inspirasi sinematiknya, dan implementasi HDR membantunya mencapai titik tersebut.', '2022-08-27 06:30:15', '2022-08-27 06:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `nama`, `isi`, `created_at`, `updated_at`) VALUES
(3, 'Bocil epep', 'request game epep ngab', '2022-08-23 09:33:06', '2022-08-23 09:33:06'),
(7, 'Selsa', 'mantap', '2022-08-27 06:30:47', '2022-08-27 06:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'arfmhmmdakrm', 'katente168@gmail.com', 'Arief Muhammad Akrom', '$2y$10$iGm6C5a3r/MB8lCJS2BitOQKJ71XMEcs0Q74qJe5S62rTOeTTx3Sa', NULL, '2022-08-23 07:15:03', '2022-08-23 07:15:03'),
(8, 'anya123', 'anya@gmail.com', 'Anya Geraldine', '$2y$10$ZzJd16XpigxvGDRzJSKtVOIFHdpBDvnzS31JLe9Y/P9EGfxPMRjA6', NULL, '2022-08-27 06:28:57', '2022-08-27 06:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 17, '+6289531231716', '2022-08-23 02:02:12', '2022-08-23 02:02:12'),
(2, 6, '+6289531231716', '2022-08-23 07:15:03', '2022-08-23 07:15:03'),
(3, 7, '+6289531238989', '2022-08-23 09:30:05', '2022-08-23 09:30:05'),
(4, 8, '+6289531238989', '2022-08-27 06:28:57', '2022-08-27 06:28:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
