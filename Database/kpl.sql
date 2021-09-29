-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2021 pada 15.04
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `resetpasswords`
--

CREATE TABLE `resetpasswords` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `verif_code` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `email`, `verif_code`, `is_verified`) VALUES
(16, 'admin', '$2y$10$dQSH8jMyUWh4sua/zpl7A.zZbxk9m8KDFNrfME0DtU0.fsxzRZE0W', 'admin', '', '', 1),
(53, 'user', '$2y$10$zvoulUQEikW9V5IsN8dE3uaDtpXghthh08zAQozymtEqDVryUyzze', 'user', 'kharismaharani09@gmail.com', '4560e79adaf36b3fe1d1b48d11a7f9cd', 1),
(55, 'user2', '$2y$10$TH4bx3FsEiiDbTRBQV/UVue3KzTSgUBCdivUX9j6YUhPHrvUd2iTq', 'user', 'sembilanjuli01@gmail.com', 'bddedb1080f905d17eb688f11d0f6f9d', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id`, `username`, `waktu`) VALUES
(1, 'user', '2021-09-26 09:54:46'),
(2, 'user', '2021-09-26 18:50:34'),
(3, 'user', '2021-09-26 18:50:59'),
(4, 'user', '2021-09-26 19:46:34'),
(5, 'user', '2021-09-26 19:57:52'),
(6, 'user', '2021-09-26 20:02:28'),
(7, 'user', '2021-09-26 20:05:49'),
(8, 'user2', '2021-09-26 20:09:03'),
(9, 'user', '2021-09-26 20:11:39'),
(10, 'user', '2021-09-27 19:18:29'),
(11, 'user', '2021-09-27 19:26:19'),
(12, 'user2', '2021-09-27 19:48:45'),
(13, 'user2', '2021-09-27 19:54:55'),
(14, 'user2', '2021-09-27 19:59:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `resetpasswords`
--
ALTER TABLE `resetpasswords`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `resetpasswords`
--
ALTER TABLE `resetpasswords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
