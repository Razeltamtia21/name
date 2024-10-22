-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2024 pada 15.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas11`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari5`
--

CREATE TABLE `hari5` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_name` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hari5`
--

INSERT INTO `hari5` (`id`, `name`, `create_name`) VALUES
(1, NULL, '2024-10-22 20:41:45'),
(2, 'razel', '2024-10-22 20:43:22'),
(3, 'andi', '2024-10-22 20:44:22'),
(4, 'athalla', '2024-10-22 20:44:25'),
(5, 'daffa', '2024-10-22 20:44:29'),
(6, 'aldi', '2024-10-22 20:44:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hari5`
--
ALTER TABLE `hari5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hari5`
--
ALTER TABLE `hari5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
