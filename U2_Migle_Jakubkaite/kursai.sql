-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 11:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursai`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `id` int(6) NOT NULL,
  `kurso_id` int(6) NOT NULL,
  `tekstas` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`id`, `kurso_id`, `tekstas`) VALUES
(1, 2, 'Labai geri kursai'),
(2, 1, 'Daug išmokau'),
(3, 4, 'Šaunus dėstytojas'),
(4, 3, 'Nuostabu!'),
(5, 5, 'Viskas labai gerai'),
(6, 2, 'Smarkiai patobulėjau');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `id` int(6) NOT NULL,
  `autorius` varchar(200) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `pavadinimas` varchar(100) NOT NULL,
  `trumpai` varchar(200) NOT NULL,
  `aprasas` varchar(3000) NOT NULL,
  `nuotrauka` varchar(1000) DEFAULT NULL,
  `populiarumas` int(6) DEFAULT NULL,
  `kaina` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`id`, `autorius`, `data`, `pavadinimas`, `trumpai`, `aprasas`, `nuotrauka`, `populiarumas`, `kaina`) VALUES
(1, 'Vardenis Pavardenis', '2021-06-22 08:26:34', 'PHP Pagrindai', 'Mokoma PHP pagrindų', 'Mokoma visų svarbiausių PHP pagrindų', 'img/php.jpg', 123, 110),
(2, 'Vardis Pavardis', '2021-06-22 08:29:38', 'HTML/CSS Įvadas', 'Mokoma HTML/CSS pagrindų', 'Mokoma visų svarbiausių HTML/CSS pagrindų', 'img/css.jpg', 45, 230),
(3, 'Vardė Pavardė', '2021-06-22 08:29:38', 'Pažintis Su GIT', 'Mokoma GIT pagrindų', 'Mokoma visų GIT pagrindų', 'img/git.jpg', 45, 120),
(4, 'Vardenytė Pavardenytė', '2021-06-22 08:35:09', 'JavaScript Žaliems', 'Mokoma JavaScript pagrindų', 'Mokoma visų svarbiausių JavaScript pagrindų', 'img/js.jpg', 214, 350),
(5, 'Vardauskas Pavardauskas', '2021-06-22 08:35:09', 'MySQL Pagrindai', 'Mokoma MySQL pagrindų', 'Mokoma visų svarbiausių MySQL pagrindų', 'img/mysql.jpg', 57, 180);

-- --------------------------------------------------------

--
-- Table structure for table `reitingas`
--

CREATE TABLE `reitingas` (
  `id` int(6) NOT NULL,
  `kurso_id` int(6) NOT NULL,
  `balas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reitingas`
--

INSERT INTO `reitingas` (`id`, `kurso_id`, `balas`) VALUES
(1, 2, 5),
(2, 1, 4),
(3, 4, 4),
(4, 3, 5),
(5, 3, 3),
(6, 5, 4),
(7, 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reitingas`
--
ALTER TABLE `reitingas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
