-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Sep 2023 pada 01.48
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jawarakuv2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kapanewon`
--

CREATE TABLE `kapanewon` (
  `id_kapanewon` varchar(10) NOT NULL,
  `nm_kapanewon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kapanewon`
--

INSERT INTO `kapanewon` (`id_kapanewon`, `nm_kapanewon`) VALUES
('34.01.01', 'TEMON'),
('34.01.02', 'WATES'),
('34.01.03', 'PANJATAN'),
('34.01.04', 'GALUR'),
('34.01.05', 'LENDAH'),
('34.01.06', 'SENTOLO'),
('34.01.07', 'PENGASIH'),
('34.01.08', 'KOKAP'),
('34.01.09', 'GIRIMULYO'),
('34.01.10', 'NANGGULAN'),
('34.01.11', 'SAMIGALUH'),
('34.01.12', 'KALIBAWANG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kapanewon`
--
ALTER TABLE `kapanewon`
  ADD PRIMARY KEY (`id_kapanewon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
