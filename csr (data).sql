-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Okt 2024 pada 04.41
-- Versi server: 5.7.44
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csr`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kegiatan_csr`
--

CREATE TABLE `detail_kegiatan_csr` (
  `id` int(11) NOT NULL,
  `id_kegiatan_csr` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nominal` varchar(11) NOT NULL DEFAULT '0',
  `file` text,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_kegiatan_csr`
--

INSERT INTO `detail_kegiatan_csr` (`id`, `id_kegiatan_csr`, `id_user`, `nominal`, `file`, `waktu`) VALUES
(1, 3, 2, '10000000', '1725951694_df9800fbbeac3125f12a.pdf', '2024-09-10 14:01:34'),
(2, 3, 2, '150000000', '1726193228_62372a79b3c2a411e586.pdf', '2024-09-13 09:07:08'),
(3, 3, 2, '45000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kalurahan`
--

CREATE TABLE `kalurahan` (
  `id_kalurahan` varchar(15) NOT NULL,
  `nm_kalurahan` varchar(50) NOT NULL,
  `id_kapanewon` varchar(10) NOT NULL,
  `nm_kapanewon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kalurahan`
--

INSERT INTO `kalurahan` (`id_kalurahan`, `nm_kalurahan`, `id_kapanewon`, `nm_kapanewon`) VALUES
('34.01.01.2001', 'JANGKARAN', '34.01.01', 'TEMON'),
('34.01.01.2002', 'SINDUTAN', '34.01.01', 'TEMON'),
('34.01.01.2003', 'PALIHAN', '34.01.01', 'TEMON'),
('34.01.01.2004', 'GLAGAH', '34.01.01', 'TEMON'),
('34.01.01.2005', 'KALIDENGEN', '34.01.01', 'TEMON'),
('34.01.01.2006', 'PLUMBON', '34.01.01', 'TEMON'),
('34.01.01.2007', 'KEDUNDANG', '34.01.01', 'TEMON'),
('34.01.01.2008', 'DEMEN', '34.01.01', 'TEMON'),
('34.01.01.2009', 'KULUR', '34.01.01', 'TEMON'),
('34.01.01.2010', 'KALIGINTUNG', '34.01.01', 'TEMON'),
('34.01.01.2011', 'TEMON WETAN', '34.01.01', 'TEMON'),
('34.01.01.2012', 'TEMON KULON', '34.01.01', 'TEMON'),
('34.01.01.2013', 'KEBONREJO', '34.01.01', 'TEMON'),
('34.01.01.2014', 'JANTEN', '34.01.01', 'TEMON'),
('34.01.01.2015', 'KARANGWULUH', '34.01.01', 'TEMON'),
('34.01.02.2001', 'KARANGWUNI', '34.01.02', 'WATES'),
('34.01.02.2002', 'SOGAN', '34.01.02', 'WATES'),
('34.01.02.2003', 'KULWARU', '34.01.02', 'WATES'),
('34.01.02.2004', 'NGESTIHARJO', '34.01.02', 'WATES'),
('34.01.02.2005', 'BENDUNGAN', '34.01.02', 'WATES'),
('34.01.02.2006', 'TRIHARJO', '34.01.02', 'WATES'),
('34.01.02.2007', 'GIRIPENI', '34.01.02', 'WATES'),
('34.01.02.2008', 'WATES', '34.01.02', 'WATES'),
('34.01.03.2001', 'GARONGAN', '34.01.03', 'PANJATAN'),
('34.01.03.2002', 'PLERET', '34.01.03', 'PANJATAN'),
('34.01.03.2003', 'BUGEL', '34.01.03', 'PANJATAN'),
('34.01.03.2004', 'KANOMAN', '34.01.03', 'PANJATAN'),
('34.01.03.2005', 'DEPOK', '34.01.03', 'PANJATAN'),
('34.01.03.2006', 'BOJONG', '34.01.03', 'PANJATAN'),
('34.01.03.2007', 'TAYUBAN', '34.01.03', 'PANJATAN'),
('34.01.03.2008', 'GOTAKAN', '34.01.03', 'PANJATAN'),
('34.01.03.2009', 'PANJATAN', '34.01.03', 'PANJATAN'),
('34.01.03.2010', 'CERME', '34.01.03', 'PANJATAN'),
('34.01.03.2011', 'KREMBANGAN', '34.01.03', 'PANJATAN'),
('34.01.04.2001', 'BANARAN', '34.01.04', 'GALUR'),
('34.01.04.2002', 'KRANGGAN', '34.01.04', 'GALUR'),
('34.01.04.2003', 'NOMPOREJO', '34.01.04', 'GALUR'),
('34.01.04.2004', 'KARANGSEWU', '34.01.04', 'GALUR'),
('34.01.04.2005', 'TIRTORAHAYU', '34.01.04', 'GALUR'),
('34.01.04.2006', 'PANDOWAN', '34.01.04', 'GALUR'),
('34.01.04.2007', 'BROSOT', '34.01.04', 'GALUR'),
('34.01.04.2008', 'BLEBERAN', '34.01.04', 'GALUR'),
('34.01.05.2001', 'WAHYUHARJO', '34.01.05', 'LENDAH'),
('34.01.05.2002', 'BUMIREJO', '34.01.05', 'LENDAH'),
('34.01.05.2003', 'JATIREJO', '34.01.05', 'LENDAH'),
('34.01.05.2004', 'SIDOREJO', '34.01.05', 'LENDAH'),
('34.01.05.2005', 'GULUREJO', '34.01.05', 'LENDAH'),
('34.01.05.2006', 'NGENTAKREJO', '34.01.05', 'LENDAH'),
('34.01.06.2001', 'Demangrejo', '34.01.06', 'SENTOLO'),
('34.01.06.2002', 'SRIKAYANGAN', '34.01.06', 'SENTOLO'),
('34.01.06.2003', 'TUKSONO', '34.01.06', 'SENTOLO'),
('34.01.06.2004', 'SALAMREJO', '34.01.06', 'SENTOLO'),
('34.01.06.2005', 'SUKORENO', '34.01.06', 'SENTOLO'),
('34.01.06.2006', 'KALIAGUNG', '34.01.06', 'SENTOLO'),
('34.01.06.2007', 'SENTOLO', '34.01.06', 'SENTOLO'),
('34.01.06.2008', 'BANGUNCIPTO', '34.01.06', 'SENTOLO'),
('34.01.07.2001', 'TAWANGSARI', '34.01.07', 'PENGASIH'),
('34.01.07.2002', 'KARANGSARI', '34.01.07', 'PENGASIH'),
('34.01.07.2003', 'KEDUNGSARI', '34.01.07', 'PENGASIH'),
('34.01.07.2004', 'MARGOSARI', '34.01.07', 'PENGASIH'),
('34.01.07.2005', 'PENGASIH', '34.01.07', 'PENGASIH'),
('34.01.07.2006', 'SENDANGSARI', '34.01.07', 'PENGASIH'),
('34.01.07.2007', 'SIDOMULYO', '34.01.07', 'PENGASIH'),
('34.01.08.2001', 'HARGOMULYO', '34.01.08', 'KOKAP'),
('34.01.08.2002', 'HARGOREJO', '34.01.08', 'KOKAP'),
('34.01.08.2003', 'HARGOWILIS', '34.01.08', 'KOKAP'),
('34.01.08.2004', 'KALIREJO', '34.01.08', 'KOKAP'),
('34.01.08.2005', 'HARGOTIRTO', '34.01.08', 'KOKAP'),
('34.01.09.2001', 'JATIMULYO', '34.01.09', 'GIRIMULYO'),
('34.01.09.2002', 'GIRIPURWO', '34.01.09', 'GIRIMULYO'),
('34.01.09.2003', 'PENDOWOREJO', '34.01.09', 'GIRIMULYO'),
('34.01.09.2004', 'PURWOSARI', '34.01.09', 'GIRIMULYO'),
('34.01.10.2001', 'BANYUROTO', '34.01.10', 'NANGGULAN'),
('34.01.10.2002', 'DONOMULYO', '34.01.10', 'NANGGULAN'),
('34.01.10.2003', 'WIJIMULYO', '34.01.10', 'NANGGULAN'),
('34.01.10.2004', 'TANJUNGHARJO', '34.01.10', 'NANGGULAN'),
('34.01.10.2005', 'JATISARONO', '34.01.10', 'NANGGULAN'),
('34.01.10.2006', 'KEMBANG', '34.01.10', 'NANGGULAN'),
('34.01.11.2001', 'KEBONHARJO', '34.01.11', 'SAMIGALUH'),
('34.01.11.2002', 'BANJARSARI', '34.01.11', 'SAMIGALUH'),
('34.01.11.2003', 'PURWOHARJO', '34.01.11', 'SAMIGALUH'),
('34.01.11.2004', 'SIDOHARJO', '34.01.11', 'SAMIGALUH'),
('34.01.11.2005', 'GERBOSARI', '34.01.11', 'SAMIGALUH'),
('34.01.11.2006', 'NGARGOSARI', '34.01.11', 'SAMIGALUH'),
('34.01.11.2007', 'PAGERHARJO', '34.01.11', 'SAMIGALUH'),
('34.01.12.2001', 'BANJARARUM', '34.01.12', 'KALIBAWANG'),
('34.01.12.2002', 'BANJARASRI', '34.01.12', 'KALIBAWANG'),
('34.01.12.2003', 'BANJARHARJO', '34.01.12', 'KALIBAWANG'),
('34.01.12.2004', 'BANJAROYO', '34.01.12', 'KALIBAWANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_csr`
--

CREATE TABLE `kegiatan_csr` (
  `id` int(11) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `ruang_lingkup` varchar(10) NOT NULL,
  `urusan_bidang` varchar(10) NOT NULL,
  `program_kegiatan` text NOT NULL,
  `alamat` text NOT NULL,
  `kapanewon` varchar(20) NOT NULL,
  `kalurahan` varchar(20) NOT NULL,
  `biaya` int(20) NOT NULL DEFAULT '0',
  `volume` varchar(20) NOT NULL DEFAULT '0',
  `satuan` varchar(20) DEFAULT NULL,
  `opd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan_csr`
--

INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`) VALUES
(2, '2024', '5', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2015', 600000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(3, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2015', 600000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(4, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.01', '34.01.01.2015', 48596000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(5, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2006', 350000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(6, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2001', 805000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(7, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2011', 255000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(8, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2011', 250000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(9, '2024', '7', '18', 'pelatihan', '', '34.01.01', '34.01.01.2011', 25000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(10, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2004', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(11, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2003', 600000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(12, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.01', '34.01.01.2003', 30000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(13, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(14, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(15, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(16, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kadipaten/Ngrandu', '34.01.02', '34.01.02.2006', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(17, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cokrodipan RT 03 - Conegaran RT 24', '34.01.02', '34.01.02.2006', 400000000, '469', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(18, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Giripeni', '34.01.02', '34.01.02.2007', 208017743, '1200', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(19, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Giripeni', '34.01.02', '34.01.02.2007', 300000000, '2700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(20, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padukuhan Keboan', '34.01.02', '34.01.02.2001', 150000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(21, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Poktan Sido Mulyo', '34.01.02', '34.01.02.2001', 300000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(22, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Poktan Mulya Abadi', '34.01.02', '34.01.02.2001', 350000000, '800', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(23, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kuwirun - Jetis', '34.01.02', '34.01.02.2003', 350000000, '1821', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(24, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan Kanoman', '34.01.02', '34.01.02.2003', 360000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(25, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh - Granti', '34.01.02', '34.01.02.2004', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(26, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Ngestiharjo', '34.01.02', '34.01.02.2004', 150000000, '95', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(27, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Sawah Ngudi Rahayu (Pom Bensin Ke Selatan)', '34.01.02', '34.01.02.2002', 600000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(28, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Sawah Trimulyo RT. 08', '34.01.02', '34.01.02.2002', 150000000, '135', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(29, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sanggrahan Lor', '34.01.02', '34.01.02.2005', 250000000, '390', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(30, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Beji RT 02 RW 02', '34.01.02', '34.01.02.2008', 400000000, '450', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(31, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dipan RT 01 RW 14', '34.01.02', '34.01.02.2008', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(32, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(33, '2024', '7', '7', 'pelatihan', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(34, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2001', 30000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(35, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2001', 25000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(36, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 50000000, '10', 'titik', 'DINAS PERHUBUNGAN'),
(37, '2024', '6', '9', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 200000000, '1', 'unit', 'DINAS PARIWISATA'),
(38, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 300000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(39, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2002', 55000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(40, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2002', 75000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(41, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 300000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(42, '2024', '8', '', 'pendampingan Kalurahan dan kelompok masyarakat.', '', '34.01.03', '34.01.03.2003', 150000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(43, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2003', 25000000, '100', 'orang', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(44, '2024', '7', '18', 'pelatihan', '', '34.01.03', '34.01.03.2003', 150000000, '10', 'pedukuhan', 'DINAS PERTANIAN DAN PANGAN'),
(45, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh IV dan V Kanoman', '34.01.03', '34.01.03.2004', 366500000, '1340', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(46, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'SD Depok', '34.01.03', '34.01.03.2005', 500000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(47, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', '', '34.01.03', '34.01.03.2005', 25000000, '1', 'kali', 'DINAS KEBUDAYAAN'),
(48, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2005', 80000000, '1', 'kali', 'DINAS PERDAGANGAN'),
(49, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 100000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(50, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(51, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 200000000, '50', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(52, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 125000000, '25', 'titik', 'DINAS PERHUBUNGAN'),
(53, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(54, '2024', '7', '9', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS PARIWISATA'),
(55, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 125000000, '25', 'unit', 'DINAS PERHUBUNGAN'),
(56, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 225000000, '15', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(57, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2007', 45000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(58, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2007', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(59, '2024', '7', '11', 'pelatihan', '', '34.01.03', '34.01.03.2007', 12000000, '1', 'paket', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'),
(60, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2008', 100000000, '40', 'unit', 'DINAS PERHUBUNGAN'),
(61, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 15000000, '5', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(62, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 60000000, '20', 'unit', 'DINAS PERHUBUNGAN'),
(63, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', '', '34.01.03', '34.01.03.2009', 150000000, '5', 'Kelompok', 'DINAS LINGKUNGAN HIDUP'),
(64, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2009', 30000000, '25', 'umkm', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(65, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 10000000, '10', 'orang', 'DINAS TENAGA KERJA DAN TRANSMIGRASI '),
(66, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 50000000, '35', 'orang', 'DINAS KEBUDAYAAN'),
(67, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 360000000, '900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(68, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 150000000, '150', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(69, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 24000000, '12', 'lokasi', 'DINAS PERHUBUNGAN'),
(70, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 75000000, '15', 'Lokasi', 'DINAS PERHUBUNGAN'),
(71, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 20000000, '1', 'paket', 'DINAS KEBUDAYAAN'),
(72, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ped. 1-12 Kal. Krembangan', '34.01.03', '34.01.03.2011', 87500000, '35', 'titik', 'DINAS PERHUBUNGAN'),
(73, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(74, '2024', '7', '9', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS PARIWISATA'),
(75, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 125000000, '25', 'unit', 'DINAS PERHUBUNGAN'),
(76, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 225000000, '15', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(77, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2007', 45000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(78, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2007', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(79, '2024', '7', '11', 'pelatihan', '', '34.01.03', '34.01.03.2007', 12000000, '1', 'paket', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'),
(80, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2008', 100000000, '40', 'unit', 'DINAS PERHUBUNGAN'),
(81, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 15000000, '5', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(82, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 60000000, '20', 'unit', 'DINAS PERHUBUNGAN'),
(83, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', '', '34.01.03', '34.01.03.2009', 150000000, '5', 'Kelompok', 'DINAS LINGKUNGAN HIDUP'),
(84, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2009', 30000000, '25', 'umkm', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(85, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 10000000, '10', 'orang', 'DINAS TENAGA KERJA DAN TRANSMIGRASI '),
(86, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 50000000, '35', 'orang', 'DINAS KEBUDAYAAN'),
(87, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 360000000, '900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(88, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 150000000, '150', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(89, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 24000000, '12', 'lokasi', 'DINAS PERHUBUNGAN'),
(90, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 75000000, '15', 'Lokasi', 'DINAS PERHUBUNGAN'),
(91, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 20000000, '1', 'paket', 'DINAS KEBUDAYAAN'),
(92, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ped. 1-12 Kal. Krembangan', '34.01.03', '34.01.03.2011', 87500000, '35', 'titik', 'DINAS PERHUBUNGAN'),
(93, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Padukuhan Bleberan dan Padukuhan Sidakan Banaran (KWT Mekarsari Bleberan dan KWT Gumregah Sidakan)', '34.01.04', '34.01.04.2008', 30000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(94, '2024', '7', '22', 'pendampingan', 'PKK Kal.Kranggan', '34.01.04', '34.01.04.2002', 20000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(95, '2024', '7', '1', 'pendampingan', 'Pantai Trisik Kalurahan Banaran', '34.01.04', '34.01.04.2001', 42000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN'),
(96, '2024', '7', '22', 'pendampingan', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2002', 30000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(97, '2024', '8', '7', 'pendampingan Kalurahan dan kelompok masyarakat.', 'Kalurahan Nomporejo', '34.01.04', '34.01.04.2003', 18992200, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(98, '2024', '7', '22', 'pendampingan', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2002', 25000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(99, '2024', '7', '22', 'pendampingan', 'PKK Kal.Kranggan', '34.01.04', '34.01.04.2002', 25000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(100, '2024', '7', '6', 'pelatihan ', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '50', 'orang', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(101, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Pokdakan Wanita Berkah Mina Nomor Register : 34.01.04.KRG.KP.08.2022 Kranggan Kidul, Kal. Kranggan', '34.01.04', '34.01.04.2002', 20000000, '1', 'kelompok', 'DINAS KELAUTAN DAN PERIKANAN'),
(102, '2024', '6', '3', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'DINAS KESEHATAN'),
(103, '2024', '6', '14', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 15000000, '1', 'paket', 'DINAS PENDIDIKAN DAN OLAHRAGA'),
(104, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 40000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN'),
(105, '2024', '6', '3', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'DINAS KESEHATAN'),
(106, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 25000000, '50000', 'ekor', 'DINAS KELAUTAN DAN PERIKANAN'),
(107, '2024', '6', '9', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 30403082, '1', 'paket', 'DINAS PARIWISATA'),
(108, '2024', '6', '18', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Wahyuharjo (Bulak Sawah Kidul Blok 12)', '34.01.05', '34.01.05.2001', 280000000, '230', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(109, '2024', '6', '11', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo (TMMD Kwarakan-Jurug)', '34.01.05', '34.01.05.2004', 225000000, '450', 'm', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA'),
(110, '2024', '6', '15', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ngentakrejo (LPJU Padukuhan Mirisewu)', '34.01.05', '34.01.05.2006', 50000000, '40', 'titik', 'DINAS PERHUBUNGAN'),
(111, '2024', '6', '22', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Gulurejo (Rabat Beton, Padukuhan Kragilan)', '34.01.05', '34.01.05.2005', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(112, '2024', '6', '10', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo (Drainase Padukuhan Gentan) Gorong-gorong', '34.01.05', '34.01.05.2004', 105000000, '1', 'paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(113, '2024', '6', '15', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Wahyuharjo (No Ruas 2.05.01.002 Maesan - Potrogaten)', '34.01.05', '34.01.05.2001', 70000000, '4', 'titik', 'DINAS PERHUBUNGAN'),
(114, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo', '34.01.05', '34.01.05.2003', 65000000, '4', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(115, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an REBINGIN NIK.3401050102470001; SEMPU RT71)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(116, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an PRANDI SUCAHYO NIK.3401050509880001; CABEAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(117, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an SUNARYONO NIK.3401050304710001; CABEAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(118, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an SUMARDI NIK.3401052909680002; BANGERAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(119, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an MARWANTO NIK.3401052703870001; BANGERAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(120, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an NANANG SETIAWAN NIK.3401051811860001; JOGAHAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(121, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an KUATNO NIK.3301030712820001; TEMPEL)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(122, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an MURWANINGSIH NIK.3401055810690002; PANGGANG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(123, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an EDI SURANTO NIK.3401050306960002; GEGUNUNG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(124, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an PURWADI NIK.3401052002570001; KALANGAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(125, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an TRI WIRATMO NIK.3401052011870001; DEGOLAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(126, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an SUMIYONO NIK.3401050511950001; PERENG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(127, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an KEMIRAT NIK.3401051706670001; BONOSORO)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(128, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an SARIJO NIK.3401052006730001; NGIPIK)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(129, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bumirejo (an RUSMANI NIK.3401054307720014; DUKUH)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(130, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. LEGIYO NIK.3401052104720001; PENGKOL)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(131, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. PARIYO NIK.3401053112500041; PULO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(132, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. ISMADI NIK.3401050705780001; WONOLOPO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(133, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. PAINO NIK.3401050401056949; MENDIRO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(134, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. NGADIKIN NIK.3401050212110003; SUMURMULING)', '34.01.05', '34.01.05.2005', 17500000, '1 Unit', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(135, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. GIYEM NIK.3401057112330015; GEGULU)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(136, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. WALKITO NIK.3401050604650001; GEGULU)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(137, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. ROSIDI NIK.3401051312790013; SEMBUNGAN)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(138, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. MISKINEM NIK.3401057112540037; BONOREJO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(139, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (an. PURWANTO NIK.3308161203010002; KLIPUH)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(140, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an KATRINAH NIK.3411086505760001; BOTOKAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(141, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an DWIYATI NIK.3401055007540001; BOTOKAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(142, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo ( an SUPRIYADI NIK.3401050606860002; LENDAH)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(143, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an TUGIMAN NIK.3401053112590039; SUMBEREJO)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(144, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an PANUT NIK. 3401050709590001; SUMBEREJO)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(145, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an LASIMAN NIK.3401050203750001; JIMATAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(146, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an TRI QOMARUDIN NIK.3310202010840001; JATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(147, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an RIYADI HAMBALI NIK. 3401050303720002;\nJATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(148, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an SAMIRAN NIK.3401052005770007;\nJATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(149, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an SULASTRI NIK.3401055808750004;\nWONOGIRI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(150, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an DALIMIN NIK.3401053112550035;\nWONOGIRI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(151, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an SUMARNO NIK.3401052205750004;\nTEGALSARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(152, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (an MUGI ISMANTO NIK.3401050503600001;\nTEGALSARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(153, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an SISWO HADI SUWARNO NIK.3401053101510002;\nLEDOK)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(154, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an DALIYEM NIK.3401055011630002;\nGEDEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(155, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an SUMIYEM NIK. 3401055304650002; GERJEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(156, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an DWI ARIYANTO NIK.3401052302110001;\nSAPON)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(157, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an SARYONO NIK 3401051010820003; SENDEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(158, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an AFFAN KRISTIANTO NIK.3308191512930001;\nJURUG)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(159, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an ARIS ARIYANTA NIK.3401052102880001;\nKARANG)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(160, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an SUWARDI NIK.3401052305650001;\nKWARAKAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(161, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an DEDY KURNIAWAN NIK.3401052812970001;\nDIRAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(162, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Sidorejo (an SURONO NIK.3401050201770001;\nSEDAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(163, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (PURYANTO NIK.\n3401051004770003; PULO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(164, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUPARYANTO NIK.3401052001740001;\nPULO', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(165, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (MARYADI\nNIK.3401051307790014; PULO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(166, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SURYA ARI PRATAMA NIK.34010518001960001;\nWONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(167, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (ANI SURYANI NIK.3401056007920001;\nWONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(168, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (PRADIBTO NIK.3401052403740001;\nWONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(169, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUMIKIR\nNIK.340105304600003; MENDIRO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(170, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (MARDI PRAYOGO NIK.3401053112570008;\nMENDIRO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(171, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUPONO NIK.3401053112590023;\nSUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(172, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SAWALIJO NIK. 3401050511740002;\nSUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(173, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUYATNO NIK.3401052105840001;\nSUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(174, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (KENDAR WANTO NIK.3401051901850002;\nGEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(175, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (WINTOLO NIK.3401051202790002;\nGEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(176, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUNU PAMA NIK.3401052004670001;\nGEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(177, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SULARMAN NIK. 3401051012640002;\nSEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(178, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (FERI NUR RAHMAT NIK.3401053107930001;\nSEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(179, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SRI SURATMI NIK.3401054103790013;\nBONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(180, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (LESTARI NIK.3401055011600001;\nBONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(181, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (MARGONO NIK.3401050812650001;\nBONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(182, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (NGADIMAN NIK.3401052706760001;\nSEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(183, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (MULYONO NIK.3401052706760001;\nKLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(184, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (SUGIYANTO NIK.3401050204730013;\nKLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(185, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Gulurejo (ISJI NUR HIDAYATULLAH NIK.\n3401054403750001; KLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(186, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (ADI MULYONO NIK.3401050705460002;\nJATIREJO)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(187, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (TITIKNURDAYATI NIK.3401055706770002;\nJIMATAN)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(188, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (NRIMO TARUNO NIK.3401050406530001;\nJIMATAN)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(189, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (SUHERMAN NIK.3401050103690001;\nJATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`) VALUES
(190, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (SAINEM NIK.3401054707700001;\nJATISARi)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(191, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (SURATMI NIK.3401054802450001;\nJATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(192, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (BUDI SUMARNO NIK.3401050303720002;\nJATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(193, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (WAWAN SEJAHTERA NIK.3401052005770007;\nWONOGIRI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(194, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (EKO PRIYANTO NIK.3401055808750004;\nWONOGIRI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(195, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jatirejo (SARIMAN NIK.3401053112550035;\nBONOSORO)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN'),
(196, '2024', '6', '17', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 20000000, '1', 'paket', 'DINAS PERPUSTAKAAN DAN KEARSIPAN'),
(197, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo (Padukuhan Gentan)', '34.01.05', '34.01.05.2004', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(198, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ngentakrejo (RT35 Padukuhan\nMirisewu)', '34.01.05', '34.01.05.2006', 100000000, '150', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(199, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Gulurejo (PadukuhanWonolopo)', '34.01.05', '34.01.05.2005', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI '),
(200, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jatirejo (RT 37 Padukuhan Jimatan)', '34.01.05', '34.01.05.2003', 100000000, '150', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(201, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jatirejo (P3A GUNA TIRTA, P3A TANI MAKMUR, P3A TIRTO AJI)', '34.01.05', '34.01.05.2003', 200000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(202, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ngentakrejo (Bangket Jembatan RT03 RW06, Nglatiyan I)', '34.01.05', '34.01.05.2006', 100000000, '50', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(203, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ngentakrejo (Drainase)', '34.01.05', '34.01.05.2006', 221155000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(204, '2024', '6', '21', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo', '34.01.05', '34.01.05.2004', 15000000, '1', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(205, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo (nama kelompok dan nomor register kelompok perlu ditambahkan)', '34.01.05', '34.01.05.2004', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(206, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ngentakrejo (Cor Blok No Ruas 2.05.06.002 Nglatian - Mirisewu)', '34.01.05', '34.01.05.2006', 250000000, '182', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(207, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sidorejo (No Ruas 2.05.04.001 Sedan - Jekeling)', '34.01.05', '34.01.05.2004', 243500000, '187', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(208, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bumirejo ( No Ruas 2.05.02.006 Pasar Pon - Pasar Potrogaten)', '34.01.05', '34.01.05.2002', 200000000, '154', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(209, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bumirejo (No Ruas 2.05.02.001 Potrogaten Kalangan -Demangrejo )', '34.01.05', '34.01.05.2002', 250000000, '192', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(210, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bumirejo (No Ruas 2.05.02.002 Tempel - Bonosoro)', '34.01.05', '34.01.05.2002', 250000000, '192', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(211, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bumirejo (No Ruas 2.05.02.003 Sempu - Pereng - Degolan)', '34.01.05', '34.01.05.2002', 265000000, '204', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(212, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 15000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP'),
(213, '2024', '8', '6', 'pelatihan', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 15000000, '5', 'paket', 'DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH'),
(214, '2024', '6', '', 'kelompok masyarakat yang kepada membutuhkan', 'Wahyuharjo (Kelompok Seni Budaya Wahyu Budaya)', '34.01.05', '34.01.05.2001', 55000000, '1', 'paket', 'DINAS KEBUDAYAAN'),
(215, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jatirejo (Penutup Drainase Depan Kantor Kapanewon Lendah)', '34.01.05', '34.01.05.2003', 15000000, '1600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(216, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kemaras-Parakan', '34.01.07', '34.01.07.2007', 1000000000, '500', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(217, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Ngruno - Gunung pentul', '34.01.07', '34.01.07.2002', 1000000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(218, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kroco RT 20', '34.01.07', '34.01.07.2006', 210000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(219, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Klegen RT 13', '34.01.07', '34.01.07.2006', 250000000, '2100', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(220, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Girinyono RT 43', '34.01.07', '34.01.07.2006', 80000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(221, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Klegen,  Kroco Rt 17,RT 16, RT 22', '34.01.07', '34.01.07.2006', 460000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(222, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cumetuk, Kedungsogo, Kradenan', '34.01.07', '34.01.07.2003', 500000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(223, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Clawer RT 32', '34.01.07', '34.01.07.2005', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(224, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dayakan RT 15', '34.01.07', '34.01.07.2005', 500000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(225, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Serut RT 19-21', '34.01.07', '34.01.07.2005', 225000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(226, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lanjutan Pembangunan Aspal jalan Janturan s.d Jombokan (Balai Kalurahan - Siluwok)', '34.01.07', '34.01.07.2001', 1200000000, '3600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(227, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'BS Permika muda, BS Aisiyah, BS Widodaren, BS Giri Wangi, BS Permata', '34.01.07', '34.01.07.2007', 20000000, '5', 'BS (Bank Sampah)', 'DINAS LINGKUNGAN HIDUP'),
(228, '2024', '7', '18', 'pelatihan', 'Kelompok Tani Marsudi Tani', '34.01.07', '34.01.07.2002', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(229, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Kali Pening RT 26 RW 12', '34.01.07', '34.01.07.2002', 900000, '3000', NULL, 'DINAS PERTANIAN DAN PANGAN'),
(230, '2024', '7', '9', 'pelatihan', 'Masyarakat Kalurahan Kedungsari', '34.01.07', '34.01.07.2003', 20000000, '30', 'Orang', 'DINAS PARIWISATA'),
(231, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'KWT Mawar Lestari, Gegunung', '34.01.07', '34.01.07.2006', 21000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(232, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Kalurahan Margosari', '34.01.07', '34.01.07.2004', 20000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(233, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'KWT Tri Jaya Barokah, Derwolo', '34.01.07', '34.01.07.2005', 30000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(234, '2024', '7', '', 'pelatihan', 'Karangtaruna Dusun Clawer', '34.01.07', '34.01.07.2005', 12750000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(235, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'KWT Marsudi Luhur, KWT Sari Mulyo, KT Manunggal Roso', '34.01.07', '34.01.07.2001', 25000000, '3', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(236, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.08', '34.01.08.2001', 10000000, '20', 'Paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(237, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2002', 50000000, '1', 'Paket', 'DINAS KELAUTAN PERIKANAN'),
(238, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2004', 60000000, '2', 'Paket', 'DINAS KELAUTAN PERIKANAN'),
(239, '2024', '6', '7', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2001', 45000000, '6', 'unit', 'DINAS LINGKUNGAN HIDUP'),
(240, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', '', '34.01.08', '34.01.08.2002', 10000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(241, '2024', '6', '9', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2002', 50000000, '1', 'Paket', 'DINAS PARIWISATA'),
(242, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.08', '34.01.08.2001', 15000000, '6', 'Unit', 'DINAS KESEHATAN'),
(243, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.08', '34.01.08.2004', 62500000, '25', 'Unit', 'DINAS KESEHATAN'),
(244, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.08', '34.01.08.2004', 150000000, '10', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(245, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2002', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(246, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2003', 500000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(247, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2003', 440000000, '220', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(248, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2003', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(249, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2003', 35000000, '50', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(250, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2004', 600000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(251, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2004', 280000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(252, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2004', 154000000, '220', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(253, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2005', 480000000, '240', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(254, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2005', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(255, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Di padukuhan Tapen Jalan kabupaten Lokal primer I Ruas Karangwuluh - SP Sangon (1.01.15.012), Kab. Kulon Progo', '34.01.08', '34.01.08.2001', 400000000, '1', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(256, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kriyan - Ngulakan', '34.01.08', '34.01.08.2002', 100000000, '100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(257, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.08', '34.01.08.2004', 200000000, '10', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(258, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2002', 24000000, '4', 'Unit', 'DINAS PERHUBUNGAN'),
(259, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.08', '34.01.08.2003', 12000000, '2', 'Unit', 'DINAS PERHUBUNGAN'),
(260, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', '', '34.01.08', '34.01.08.2001', 30000000, '1', 'klpk', 'DINAS PERTANIAN DAN PANGAN'),
(261, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', '', '34.01.08', '34.01.08.2005', 30000000, '1', 'klpk', 'DINAS PERTANIAN DAN PANGAN'),
(262, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', '', '34.01.08', '34.01.08.2005', 60000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(263, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2002', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(264, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2002', 10000000, '10', 'Unit', 'DINAS PERTANIAN DAN PANGAN'),
(265, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2001', 45000000, '1', 'Unit', 'DINAS PERTANIAN DAN PANGAN'),
(266, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2002', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(267, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(268, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2003', 160000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(269, '2024', '7', '18', 'pelatihan', '', '34.01.08', '34.01.08.2005', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(270, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 60000000, '3', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(271, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(272, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 17500000, '350', 'btg', 'DINAS PERTANIAN DAN PANGAN'),
(273, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 10000000, '200', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(274, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(275, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2002', 20000000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(276, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(277, '2024', '7', '', 'penguatan kelembagaan sosial ekonomi masyarakat', '', '34.01.08', '34.01.08.2003', 20000000, '1', 'paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(278, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2001', 20000000, '1', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(279, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(280, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(281, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(282, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(283, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(284, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(285, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'klp', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(286, '2024', '7', '22', 'pelatihan', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'klp', 'DINAS TENAGA KERJA DAN TRANSMIGRASI '),
(287, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2002', 342000000, '2850', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(288, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2002', 350000000, '3400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(289, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2002', 5000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(290, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2001', 332500000, '350', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(291, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2001', 210000000, '2100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(292, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2003', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(293, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2004', 1000000000, '14000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(294, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2004', 10000000, '14000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(295, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '1. Muji Suwito  NIK 3401090506510003 Sokomoyo, RT 007, RW 002', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(296, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '2. Slamet Riyadi\nNIK 3401090403940002\nSokomoyo, RT 008, RW 002', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(297, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '3. Sudiyono\nNIK 3401090708630001\nGunungkelir, RT 030, RW 007', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(298, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '4. Yudi Kriswanto\nNIK 3403050107920057\nSonyo, RT 037, RW 008', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(299, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '5. Sindu\nNIK 3401093005820003\nSonyo, RT 037, RW 008\n', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(300, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '6. Cipto Iyono\nNIK 3401091908370001\nSonyo, RT 038, RW 009', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(301, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '7.  Mujiyo Kamto\nNIK  3401090601570002\nKembang, RT 048, RW 011', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(302, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '8.  Saino\nNIK 3401090303860001\nSumberjo, RT 060, RW 015', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(303, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '9. Eka Andriyanto Setiyawan\nNIK  3401090909970001\nBeteng, RT 063, RW 016', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(304, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '10. Rera Wintara\nNIK 3401092409990002\nBeteng 065, RW 017', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(305, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '1. Ponimin\nNIK 3401090211610001\nNgroto RT 02 RW 01', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(306, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '2. Badi\nNIK 3401093112560030\nTempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(307, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '3. Pariman\nNIK 3401093112620018\nTempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(308, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '4. Sunarto\nNIK 3401091401610001\nTempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(309, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '5. Suparyadi\nNIK 3401093112910004\nTileng RT 50 RW 23', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(310, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '6. Muhyatin\nNIK 3401091603590002\nKepek RT 31 RW 14', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(311, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '7. Amat Umar\nNIK 3401090107410006\nKepek RT 32 RW 14', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(312, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '8. Sudiyono\nNIK 3401090209540001\nKalingiwo RT 38 RW 17', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(313, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '9. Barso\nNIK 3401090805520003\nBanaran RT 41 RW 19', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(314, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '10. Iswanto\nNIK 3401091811680001\nMuten RT 08 RW 04', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(315, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '1. NGADINO/SARMI, NIK 3401092503620001, GEDONG, RT 50 RW 25', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(316, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '2. ANYONO, NIK 3401090305680001, NGAGLIK, RT 25, RW 13', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(317, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '3. MARJILAN, NIK 3401091012750001, NOGOSARI, RT 36, RW 18', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(318, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '4. KARTO MINARJO, NIK 3401093112370028, KARANGREJO, RT 43, RW 22', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(319, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '5. NICHO VERNANDO, 3401090502970001, PONCES, RT 47, RW 23', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(320, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '6. PRIYANTO, NIK 3401092001780001, PRANGKOKAN, RT 2 RW 1', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(321, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '7. TUKINAH, NIK 3401096707650001, PATIHOMBO, RT 16 RW 8', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(322, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '8. TULUSTRI, NIK 3401097112420003, NGROTO, RT 24 RW 12', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(323, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '9. DWI HARYANTO, NIK 3401090904800001, WONOSARI, RT 17 RW 9', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(324, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '10. SARJIYATI, NIK 3401095909710002, TEGALSARI, RT 6 RW 3', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(325, '2024', '6', '', 'kelompok masyarakat yang kepada membutuhkan', '', '34.01.09', '34.01.09.2004', 189750447, '1', 'Ls', 'DINAS KEBUDAYAAN'),
(326, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2001', 100000000, '12', 'RT', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI'),
(327, '2024', '7', '11', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.09', '34.01.09.2001', 50000000, 'BUMDES Jatimulyo', NULL, 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'),
(328, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.09', '34.01.09.2001', 278000000, '', NULL, 'DINAS PERTANIAN DAN PANGAN'),
(329, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI'),
(330, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI'),
(331, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI'),
(332, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sambiroto (Watukodok-Gegunung ) Banyuroto', '34.01.10', '34.01.10.2001', 150000000, '1', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(333, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Keso-Giripurwo Banyuroto', '34.01.10', '34.01.10.2001', 200299933, '1', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(334, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sambiroto-Gayam-Tawang Banyuroto', '34.01.10', '34.01.10.2001', 180143350, '2', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(335, '2024', '6', '', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Banyuroto', '34.01.10', '34.01.10.2001', 36000000, '10', 'Orang', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(336, '2024', '6', '', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Banyuroto', '34.01.10', '34.01.10.2001', 35000000, '30', 'Orang', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(337, '2024', '7', '', 'penguatan kelembagaan sosial ekonomi masyarakat;  ', 'Banyuroto', '34.01.10', '34.01.10.2001', 19799597, '4', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN'),
(338, '2024', '7', '', 'pelatihan', 'Banyuroto', '34.01.10', '34.01.10.2001', 80000000, '8', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN'),
(339, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Banyuroto', '34.01.10', '34.01.10.2001', 20000000, '8', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN'),
(340, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Banyuroto', '34.01.10', '34.01.10.2001', 99500000, '30000', 'Batang', 'DINAS PERTANIAN DAN PANGAN'),
(341, '2024', '7', '22', 'pelatihan', 'Banyuroto', '34.01.10', '34.01.10.2001', 100090000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(342, '2024', '7', '', 'pelatihan', 'Banyuroto', '34.01.10', '34.01.10.2001', 125005000, '8', 'Kelompok', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(343, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Donomerto-Kaliandong (Donomulyo)', '34.01.10', '34.01.10.2002', 473416241, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(344, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Banguncipto-Donomerto (Donomulyo)', '34.01.10', '34.01.10.2002', 556832482, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(345, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Donomulyo', '34.01.10', '34.01.10.2002', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(346, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Donomulyo', '34.01.10', '34.01.10.2002', 70000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(347, '2024', '6', '10', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Donomulyo', '34.01.10', '34.01.10.2002', 77565011, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(348, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Donomulyo', '34.01.10', '34.01.10.2002', 25851230, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(349, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Donomulyo', '34.01.10', '34.01.10.2002', 45000000, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(350, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Donomulyo', '34.01.10', '34.01.10.2002', 10000000, '10', 'Paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(351, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cepitan (Wijimulyo)', '34.01.10', '34.01.10.2003', 141852000, '9384', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(352, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rejoso - Donomulyo (Wijimulyo)', '34.01.10', '34.01.10.2003', 90000000, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(353, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 92244477, '70', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(354, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Demen-Cepitan (Wijimulyo)', '34.01.10', '34.01.10.2003', 55000000, '30', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(355, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh-Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 62700000, '57', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(356, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh-Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 55000000, '50', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(357, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cepitan RT 66 (Wijimulyo)', '34.01.10', '34.01.10.2003', 44000000, '40', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(358, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Wijimulyo', '34.01.10', '34.01.10.2003', 14000000, '7', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(359, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Wijimulyo', '34.01.10', '34.01.10.2003', 10265492, '50', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(360, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Wijimulyo', '34.01.10', '34.01.10.2003', 10000000, '30', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(361, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Wijimulyo', '34.01.10', '34.01.10.2003', 75000000, '1', 'Unit', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(362, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Wijimulyo', '34.01.10', '34.01.10.2003', 26000000, '1', 'Unit', 'DINAS PERTANIAN DAN PANGAN'),
(363, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 120000000, '8', 'KK', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK '),
(364, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 24000000, '16', 'KK', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK '),
(365, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 24213653, '345', 'Bibit', 'DINAS PERTANIAN DAN PANGAN'),
(366, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 5223589, '1714', 'Bibit', 'DINAS PERTANIAN DAN PANGAN'),
(367, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 30000000, '2', 'Ekor', 'DINAS PERTANIAN DAN PANGAN'),
(368, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 17400000, '232', 'Ekor', 'DINAS PERTANIAN DAN PANGAN'),
(369, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 27000000, '12', 'Ekor', 'DINAS PERTANIAN DAN PANGAN'),
(370, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 16200000, '12', 'ekor', 'DINAS PERTANIAN DAN PANGAN'),
(371, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Nanggulan, Karang (Jatisarono)', '34.01.10', '34.01.10.2005', 98696970, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(372, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 600000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(373, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(374, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2002', 200000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(375, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(376, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 195000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(377, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(378, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 300000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(379, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '180', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(380, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2002', 100000000, '1', 'LPMK', 'DINAS TENAGA KERJA DAN TRANSMIGRASI dan Transmigrasi'),
(381, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 198000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(382, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 195000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`) VALUES
(383, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(384, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(385, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', '', '34.01.12', '34.01.12.2002', 2000000, '1', 'kelompok', 'DINAS LINGKUNGAN HIDUP'),
(386, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 100000000, '1', 'LPMK', 'DINAS TENAGA KERJA DAN TRANSMIGRASI dan Transmigrasi'),
(387, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 195000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN'),
(388, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(389, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(390, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN'),
(391, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2001', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN'),
(392, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2003', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN'),
(393, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2004', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN'),
(394, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(395, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(396, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(397, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(398, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(399, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(400, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(401, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(402, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(403, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(404, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(405, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 2000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(406, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', '', '34.01.12', '34.01.12.2003', 2000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(407, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(408, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(409, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(410, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(411, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(412, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(413, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(414, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(415, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(416, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(417, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(418, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(419, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(420, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(421, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(422, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(423, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(424, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH'),
(425, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(426, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(427, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(428, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(429, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(430, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(431, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(432, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(433, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(434, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(435, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(436, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(437, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(438, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(439, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(440, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', '', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN'),
(441, '2024', '7', '9', 'Pendampingan', '', '34.01.12', '34.01.12.2004', 5000000, '1', 'kelompok', 'DINAS PARIWISATA'),
(442, '2024', '7', '9', 'Pendampingan', '', '34.01.12', '34.01.12.2002', 5000000, '1', 'kelompok', 'DINAS PARIWISATA'),
(443, '2024', '7', '9', 'Pendampingan', '', '34.01.12', '34.01.12.2001', 5000000, '1', 'kelompok', 'DINAS PARIWISATA'),
(444, '2024', '7', '6', 'Pelatihan', '', '34.01.12', '34.01.12.2001', 5000000, '1', 'kelompok', 'DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH'),
(445, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.12', '34.01.12.2002', 80000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(495, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2015', 600000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(496, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.01', '34.01.01.2015', 48596000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(497, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2006', 350000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(498, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2001', 805000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(499, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2011', 255000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(500, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2011', 250000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(501, '2024', '7', '18', 'pelatihan', '', '34.01.01', '34.01.01.2011', 25000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(502, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2004', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(503, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2003', 600000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(504, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '', '34.01.01', '34.01.01.2003', 30000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN'),
(505, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(506, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(507, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(508, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kadipaten/Ngrandu', '34.01.02', '34.01.02.2006', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(509, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cokrodipan RT 03 - Conegaran RT 24', '34.01.02', '34.01.02.2006', 400000000, '469', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(510, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Giripeni', '34.01.02', '34.01.02.2007', 208017743, '1200', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(511, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Giripeni', '34.01.02', '34.01.02.2007', 300000000, '2700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(512, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padukuhan Keboan', '34.01.02', '34.01.02.2001', 150000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(513, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Poktan Sido Mulyo', '34.01.02', '34.01.02.2001', 300000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(514, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Poktan Mulya Abadi', '34.01.02', '34.01.02.2001', 350000000, '800', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(515, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kuwirun - Jetis', '34.01.02', '34.01.02.2003', 350000000, '1821', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(516, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan Kanoman', '34.01.02', '34.01.02.2003', 360000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(517, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh - Granti', '34.01.02', '34.01.02.2004', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(518, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Ngestiharjo', '34.01.02', '34.01.02.2004', 150000000, '95', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(519, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Sawah Ngudi Rahayu (Pom Bensin Ke Selatan)', '34.01.02', '34.01.02.2002', 600000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(520, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Sawah Trimulyo RT. 08', '34.01.02', '34.01.02.2002', 150000000, '135', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(521, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sanggrahan Lor', '34.01.02', '34.01.02.2005', 250000000, '390', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(522, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Beji RT 02 RW 02', '34.01.02', '34.01.02.2008', 400000000, '450', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(523, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dipan RT 01 RW 14', '34.01.02', '34.01.02.2008', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(524, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(525, '2024', '7', '7', 'pelatihan', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(526, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2001', 30000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(527, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2001', 25000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(528, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 50000000, '10', 'titik', 'DINAS PERHUBUNGAN'),
(529, '2024', '6', '9', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 200000000, '1', 'unit', 'DINAS PARIWISATA'),
(530, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 300000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(531, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2002', 55000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(532, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2002', 75000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(533, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2002', 300000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(534, '2024', '8', '', 'pendampingan Kalurahan dan kelompok masyarakat.', '', '34.01.03', '34.01.03.2003', 150000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(535, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2003', 25000000, '100', 'orang', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN'),
(536, '2024', '7', '18', 'pelatihan', '', '34.01.03', '34.01.03.2003', 150000000, '10', 'pedukuhan', 'DINAS PERTANIAN DAN PANGAN'),
(537, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Dukuh IV dan V Kanoman', '34.01.03', '34.01.03.2004', 366500000, '1340', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(538, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'SD Depok', '34.01.03', '34.01.03.2005', 500000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(539, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', '', '34.01.03', '34.01.03.2005', 25000000, '1', 'kali', 'DINAS KEBUDAYAAN'),
(540, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2005', 80000000, '1', 'kali', 'DINAS PERDAGANGAN'),
(541, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 100000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(542, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(543, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 200000000, '50', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(544, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2006', 125000000, '25', 'titik', 'DINAS PERHUBUNGAN'),
(545, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(546, '2024', '7', '9', 'pelatihan', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS PARIWISATA'),
(547, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 125000000, '25', 'unit', 'DINAS PERHUBUNGAN'),
(548, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2007', 225000000, '15', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(549, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2007', 45000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(550, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2007', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(551, '2024', '7', '11', 'pelatihan', '', '34.01.03', '34.01.03.2007', 12000000, '1', 'paket', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'),
(552, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2008', 100000000, '40', 'unit', 'DINAS PERHUBUNGAN'),
(553, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 15000000, '5', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(554, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', '', '34.01.03', '34.01.03.2009', 60000000, '20', 'unit', 'DINAS PERHUBUNGAN'),
(555, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', '', '34.01.03', '34.01.03.2009', 150000000, '5', 'Kelompok', 'DINAS LINGKUNGAN HIDUP'),
(556, '2024', '7', '6', 'pelatihan', '', '34.01.03', '34.01.03.2009', 30000000, '25', 'umkm', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(557, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 10000000, '10', 'orang', 'DINAS TENAGA KERJA DAN TRANSMIGRASI '),
(558, '2024', '7', '', 'pelatihan', '', '34.01.03', '34.01.03.2009', 50000000, '35', 'orang', 'DINAS KEBUDAYAAN'),
(559, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 360000000, '900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(560, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 150000000, '150', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(561, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 24000000, '12', 'lokasi', 'DINAS PERHUBUNGAN'),
(562, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 75000000, '15', 'Lokasi', 'DINAS PERHUBUNGAN'),
(563, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 20000000, '1', 'paket', 'DINAS KEBUDAYAAN'),
(564, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Ped. 1-12 Kal. Krembangan', '34.01.03', '34.01.03.2011', 87500000, '35', 'titik', 'DINAS PERHUBUNGAN'),
(565, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Kranggan / Pulopete (Nomor Ruas 1.04.03.007)', '34.01.04', '34.01.04.2002', 65837169, '2', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(566, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kalurahan Brosot ( 1.04.05.008 / Kantor Pos-Tegal Buret )', '34.01.04', '34.01.04.2007', 350000000, '1900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(567, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan LP II no 2.04.02.006 ruas Sawahan - Jonggrangan (Padukuhan Bleberan Banaran)', '34.01.04', '34.01.04.2001', 250000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(568, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan BD Tirtorahayu-SMA 1 Galur (No Ruas 2.04.07.002)', '34.01.04', '34.01.04.2005', 224302263, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(569, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Cangaan-Ngremang No Ruas ( 1.04.07.009)', '34.01.06', '34.01.06.2001', 300000000, '2500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(570, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jelontoro Padukuhan Sawahan Banaran', '34.01.04', '34.01.04.2007', 35000000, '1', 'Ls', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(571, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jeronan Brosot  (Jalan Lingkungan depan makam jeronan / RT 40, 41, 42 , 43)', '34.01.04', '34.01.04.2007', 100000000, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(572, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bedoyo - Siliran II dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2004', 225581320, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(573, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sorogenen 1- Sorogenen 2', '34.01.04', '34.01.04.2003', 30000000, '3', 'titik', 'DINAS PERHUBUNGAN'),
(574, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lapangan Kranggan - SD Sepaten (Nomor Ruas 2.04.03.002)', '34.01.04', '34.01.04.2002', 120000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(575, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Imorenggo dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2004', 230000000, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(576, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Karang Brosot  ( Jalan Rowo - Kartika )', '34.01.04', '34.01.04.2007', 90000000, '700', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(577, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 30000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP'),
(578, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Gandu - Samiranan (Ruas jalan no 2.04.04.002)', '34.01.04', '34.01.04.2003', 386744150, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(579, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Darul ulum sorobayan-Trayu (No Ruas 2.04.07.004)', '34.01.04', '34.01.04.2005', 175000000, '1100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(580, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lapangan Kranggan Sepaten', '34.01.04', '34.01.04.2002', 250000000, '6000', 'm²', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA'),
(581, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lor Tanjung Padukuhan Sidorejo Banaran', '34.01.04', '34.01.04.2001', 287209244, '470', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(582, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan sigran-SMA 1 Galur (No Ruas 2.04.07.001)', '34.01.04', '34.01.04.2005', 100000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(583, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kalurahan Brosot  (sekitar Tugu Brosot dan  jalan Daendels)', '34.01.04', '34.01.04.2007', 30000000, '1', 'paket', 'DINAS PERHUBUNGAN'),
(584, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Ngepreh (No Ruas 1.04.01.003)', '34.01.04', '34.01.04.2006', 150000000, '60', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(585, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kidul Manggung Kelompok Tani Cipta Boga IV Nomor : Register 34.01.04.KRG.KT.04.2016 Nepi ,Kranggan, Galur, Kp ', '34.01.04', '34.01.04.2002', 78000000, '275', 'm', 'DINAS PERTANIAN DAN PANGAN'),
(586, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 100000000, '1', 'titik', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(587, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bulak Kulon Boro dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2006', 135000000, '60', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN'),
(588, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kalurahan Banaran ( sepanjang jalan LP 1 no 41 ruas 1.04.02.005 Banaran - Tanjung)', '34.01.04', '34.01.04.2001', 40000000, '', NULL, 'DINAS PERHUBUNGAN'),
(589, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Kelompok Tani Kalurahan Kranggan : KT Cipta Boga I s.d  KT Cipta Boga X (Nomor Register : 34.01.04.KRG.KT.01.2016, 34.01.04.KRG.KT.02.2016, 34.01.04.KRG.KT.03.2016, 34.01.04.KRG.KT.04.2016, 34.01.04.KRG.KT.05.2016, 34.01.04.KRG.KT.06.2016, 34.01.04.KRG.KT.07.2016, 34.01.04.KRG.KT.08.2016, Cipta 34.01.04.KRG.KT.09.2016)', '34.01.04', '34.01.04.2002', 27279056, '9', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN'),
(590, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bulak Nomporejo  (kelompok tani Bina Tani IV)', '34.01.04', '34.01.04.2003', 40000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(591, '2024', '7', '6', 'pelatihan', 'Kalurahan Pandowan', '34.01.04', '34.01.04.2006', 50000000, '20', 'orang', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH'),
(592, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', 'Kalurahan Brosot (Bank Sampah \"Merti Bumi Lestari\" Padukuhan Kutan Brosot)', '34.01.04', '34.01.04.2007', 160000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP'),
(593, '2024', '7', '11', 'pelatihan', 'BUMDes Binangun Migunani Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'Kelompok', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA Dalduk dan KB'),
(594, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(595, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Kalurahan Brosot  ( KWT Lestari Makmur Modinan Brosot)', '34.01.04', '34.01.04.2007', 31240250, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(596, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Kelompok Tani \"Wahana Tani\" (Gupit) dan Kelompok Tani \"Tani Sari\" (Siliran V)', '34.01.04', '34.01.04.2004', 92585110, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(597, '2024', '7', '21', 'pelatihan', 'Kalurahan Pandowan', '34.01.04', '34.01.04.2006', 15000000, '1', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(598, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Pokdakan Padukuhan Barongan, Gandu, Samiranan Nomporejo', '34.01.04', '34.01.04.2003', 45000000, '3', 'paket', 'DINAS KELAUTAN DAN PERIKANAN'),
(599, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'KWT Sekar Arum Nomor Register : 34.01.04.KRG.KT.16.2016 Kujon Lor, KWT Berkah Tani Nomor Register : 34.01.04.KRG.KT.17.2016 Kranggan Kidul dan KWT Sekar Wangi  Nomor Register : 34.01.04.KRG.KT.18.2016 Kranggan Kulon ,KWT Tunas Mekar Nomor Register : 34.01.04.KRG.KT.19.2016 Sepaten, Kal.Kranggan, Kap. Galur Kab. Kp', '34.01.04', '34.01.04.2002', 24000000, '4', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN'),
(600, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '1. KWT Mekar Sari (Diren) No. Register 34.01.04.PDW.KT.05.2016\n2. KWT Semi Makmur (Prembulan) No. Register 34.01.04.PDW.KT.07.2021', '34.01.04', '34.01.04.2002', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(601, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Padukuhan Bleberan dan Padukuhan Sidakan Banaran (KWT Mekarsari Bleberan dan KWT Gumregah Sidakan)', '34.01.04', '34.01.04.2008', 30000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(602, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Nomporejo (Mitra Sejahtera No Reg.95/BS/Galur/Nomporejo/2021)', '34.01.04', '34.01.04.2003', 48255850, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(603, '2024', '7', '22', 'pendampingan', 'PKK Kal.Kranggan', '34.01.04', '34.01.04.2002', 20000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(604, '2024', '7', '1', 'pendampingan', 'Pantai Trisik Kalurahan Banaran', '34.01.04', '34.01.04.2001', 42000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN'),
(605, '2024', '7', '22', 'pendampingan', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2002', 30000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(606, '2024', '8', '7', 'pendampingan Kalurahan dan kelompok masyarakat.', 'Kalurahan Nomporejo', '34.01.04', '34.01.04.2003', 18992200, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP'),
(607, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', '1. KWT Mekar Sari (Diren) No. Register 34.01.04.PDW.KT.05.2016\n2. KWT Semi Makmur (Prembulan) No. Register 34.01.04.PDW.KT.07.2021', '34.01.04', '34.01.04.2006', 8124025, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN'),
(608, '2024', '7', '22', 'pendampingan', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2006', 25000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_upload`
--

CREATE TABLE `kegiatan_upload` (
  `id` int(11) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `ruang_lingkup` text NOT NULL,
  `id_urusan` varchar(5) NOT NULL,
  `urusan_bidang` text NOT NULL,
  `program_kegiatan` text NOT NULL,
  `alamat` text NOT NULL,
  `id_kapanewon` varchar(50) NOT NULL,
  `kapanewon` varchar(20) NOT NULL,
  `id_kalurahan` varchar(50) NOT NULL,
  `kalurahan` text NOT NULL,
  `biaya` int(20) NOT NULL DEFAULT '0',
  `volume` varchar(20) NOT NULL DEFAULT '0',
  `satuan` varchar(20) DEFAULT NULL,
  `opd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` text NOT NULL,
  `penanggungjawab` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `nama_perusahaan`, `penanggungjawab`, `no_hp`, `id_user`) VALUES
(0, 'admin', 'admin', '08123', 0),
(2, 'Perumda Air Minum Tirta Binangun                                                                                                                                                                                                                                    ', 'Direktur', '082225091245', 2),
(3, 'Perumda Aneka Usaha', 'Suharyanto', '08174116978', 3),
(4, 'Bank BPR Shinta Putra Pengasih', 'Direktur', '0274', 4),
(5, 'BPR Nusamba Temon', 'Direktur', '0274', 5),
(6, 'Bank Kulon Progo', 'Direktur', '0274', 6),
(7, 'Bank BTPN', 'Direktur', '0274', 7),
(8, 'Bank BNI Cabang Wates', 'Direktur', '0274', 8),
(9, 'Bank BPR AMI', 'Direktur', '0274', 9),
(10, 'BRI Cabang Wates', 'Direktur', '0274', 10),
(11, 'Bank Mandiri Cabang Wates', 'Direktur', '0274', 11),
(12, 'Bank BCA Kancab Wates', 'Direktur', '0274', 12),
(13, 'Bank BSI Wates', 'Direktur', '0274', 13),
(14, 'Bank Woori Saudara', 'Direktur', '0274', 14),
(15, 'PT. Pegadaian Indonesia Cabang Wates', 'Direktur', '0274', 15),
(16, 'Universitas Janabadra Kampus Wates', 'Rektor', '0274', 16),
(17, 'CV. Karya Hidup Sentosa', 'Direktur', '0274', 17),
(18, 'PLN UNIT LAYANAN PELANGGAN WATES', 'Direktur', '0274', 18),
(19, 'PT. Angkasa Pura Support', 'Direktur', '0274', 19),
(20, 'PT. Larissa Anugerah Sejahtera', 'Direktur', '0274', 20),
(21, 'PT. Ciomas Adisatwa', 'Direktur', '0274', 21),
(22, 'PT. Aleyah Sinta Farma', 'Direktur', '0274', 22),
(23, 'PT. Jawa Sport Gloves', 'Direktur', '0274', 23),
(24, 'PT. Lestari Pelita Graha', 'Direktur', '0274', 24),
(25, 'PT. Sang Kyung Abadi', 'Direktur', '0274', 25),
(26, 'PT. Sung Chang Indonesia', 'Direktur', '0274', 26),
(27, 'PT. Toto Jogko Abadi Jaya', 'Direktur', '0274', 27),
(28, 'PT. Odixa Pharma Laboratories', 'Direktur', '0274', 28),
(29, 'PT. Kurnia Bumi Pertiwi', 'Direktur', '0274', 29),
(30, 'PT. Surya Watu Kencana', 'Direktur', '0274', 30),
(31, 'PT. Selo Adikarto', 'Direktur', '0274', 31),
(32, 'PT. Putra Patria Adikarsa', 'Direktur', '0274', 32),
(33, 'CV. Bonafide Anugerah Sentosa', 'Direktur', '0274', 33),
(34, 'PT. Dian Niaga Yogyakarta', 'Direktur', '0274', 34),
(35, 'CV. Tumpu Harapan', 'Direktur', '0274', 35),
(36, 'PT. Hanjaya Mandala Sampoerna', 'Direktur', '0274', 36),
(37, 'PT. Kereta Api Indonesia (Stasiun Wates)', 'Kepala', '0274', 37),
(38, 'CV. Handika Karya', 'Direktur', '0274', 38),
(39, 'PT. Epotech Indonesia', 'Direktur', '0274', 39),
(40, 'IKIP PGRI Wates', 'Rektor', '0274', 40),
(41, 'Gapensi Kulon Progo', 'Ketua', '0274', 41),
(42, 'Kadin Kulon Progo', 'Ketua', '0274', 42),
(43, 'DPC Askonas Kulon Progo', 'Ketua', '0274', 43),
(44, 'Hipmi Kulon Progo', 'Ketua', '0274', 44),
(45, 'Gapeksindo Kulon Progo', 'Ketua', '0274', 45),
(46, 'UNY Kampus Wates', 'Rektor', '0274', 46),
(47, 'Sekolah Vokasi UGM', 'Kepala', '0274', 47),
(48, 'Universitas Ahmad Dahlan Kampus Wates', 'Rektor', '0274', 48),
(49, 'PT. Lentera Prosper Indo (Hotel Ibis-Novotel YIA)', 'General Manager', '0274', 49),
(50, 'PT. Surabaya Mercusuar Indonesia (Hotel Morazen)', 'General Manager', '0274', 50),
(51, 'PT. Astra International', 'Direktur', '0274', 51),
(52, 'PT. Indobel Bamboo Merapi', 'Direktur', '0274', 52),
(53, 'PT. Kothis Jawa Indonesia', 'Direktur', '0274', 53),
(54, 'PT. Benoea Jaya Mandiri', 'Direktur', '0274', 54),
(55, 'PT. Telaga Mustika Buana', 'Direktur', '0274', 55),
(56, 'PT. Ajisetya Permana', 'Direktur', '0274', 56),
(57, 'PT. Kamila Nanggulan Sejahtera', 'Direktur', '0274', 57),
(58, 'PT. Warna Abadi Mitra Bersama', 'Direktur', '0274', 58),
(59, 'PT. Sakanti Patra Mandiri', 'Direktur', '0274', 59),
(60, 'PT. Liebe Green Standard Technology', 'Direktur', '0274', 60),
(61, 'CV. Shinta Motor Wates', 'Direktur', '0274', 61),
(62, 'PT. Margoredjo Abadi Gas', 'Direktur', '0274', 62),
(63, 'PT. Naturindo Surya Niaga', 'Direktur', '0274', 63),
(64, 'PT. Kulonprogo Mitra Energi', 'Direktur', '0274', 64),
(65, 'CV. Patra Maju Bersama', 'Direktur', '0274', 65),
(66, 'PT. Bummy Harapan Umat', 'Direktur', '0274', 66),
(67, 'PT. Indonesia Plafon Semesta', 'Direktur', '0274', 67),
(68, 'PT. Fajar Baru Kinaragas', 'Direktur', '0274', 68),
(69, 'CV. Pesona Wisma Pancoeran', 'Direktur', '0274', 69),
(70, 'CV. Karya Adi Mulia Perkasa', 'Direktur', '0274', 70),
(71, 'PT. Kerja Patra Mandiri', 'Direktur', '0274', 71),
(72, 'PT. Balerante Bella Energi', 'Direktur', '0274', 72),
(73, 'PT. Telekomunikasi Indonesia Area Kulon Progo', 'Direktur', '0274', 73),
(74, 'BAZNAS KULON PROGO', 'Ketua', '0274', 74),
(75, 'Swiss-Belhotel Airport Yogyakarta', 'General Manager', '0274', 75),
(76, 'PT. Jogja Magasa Iron', 'DIrektur', '0274', 76),
(77, 'CV. Widya Segara Karya', 'Direktur', '0274', 77),
(78, 'Asosiasi Pengusaha SPBU Kulon Progo', 'Ketua', '0274', 78),
(79, 'CV. Kharisma Wijaya Abadi', 'Direktur', '0274', 79),
(80, 'PT. Sumber Utama Fiber Indonesia', 'Direktur', '0274', 80),
(81, 'Yayasan Pura Raharja', 'Ketua', '0274', 81),
(82, 'PT. Belle Amanah Sejahtera', 'Direktur', '0274', 82),
(83, 'Bank BPD DIY Cabang Wates', 'Pimpinan', '0274', 83),
(84, 'Angkasa Pura Airports Bandara Internasional Yogyakarta', 'General Manager', '0274', 84),
(85, 'PT. Sentolo Isti Parama', 'Direktur', '0274', 85);

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi`
--

CREATE TABLE `publikasi` (
  `id` int(11) NOT NULL,
  `tgl` datetime DEFAULT NULL,
  `judul` varchar(100) NOT NULL,
  `slug` text NOT NULL,
  `deskripsi` text,
  `foto` text NOT NULL,
  `id_user` varchar(5) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `status` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `publikasi`
--

INSERT INTO `publikasi` (`id`, `tgl`, `judul`, `slug`, `deskripsi`, `foto`, `id_user`, `author`, `status`) VALUES
(2, '2023-12-06 04:10:01', 'judul', '7VCXVCxILIJAt4XqQfuH', '<p>deskripsi publikasi</p>', '1699860852_ce2cbf39c54573075014.jpg', '0', 'Admin', '1'),
(4, '2023-12-06 04:10:16', 'Berita Dari PDAM KP', 'Wukbm3mZdDoymaSxWHBo', '<p>deskripsi berita dari pdam kp</p>', '1699926693_39fc2ee70085bb339905.png', '2', 'PDAM KP', '1'),
(5, '2023-12-06 03:57:29', 'PENANDATANGANAN KERJASAMA DESA ECO-VILLAGE', 'csu7QO1thGrrDp4O3f8D', '<p>Dalam pelaksanaan penandatanganan kerjasama antara PT Hyundai Motor Manufacturing Indonesia (HMMI) dengan Desa Wanajaya pada program&nbsp; kegiatan Adopsi Desa Berbasis Lingkungan ( Desa Eco-Village) dan juga melibatkan kelompok masyarakat dalam pelatihan dan pemberdayaan bersama Ikatan Alumni Teknik Lingkungan Institut Teknologi Bandung (IATL ITB) dengan di hadiri oleh Sekretari Daerah, Kepala Badan Perencanaan Pembangunan Daerah, Camat Cibitung, Kepala Desa Wanajaya, Badan Amil Zakat Nasional, PT Hyundai Motor Manufacturing Indonesia (HMMI) dan Ikatan Alumni Teknik Lingkungan Institut Teknologi Bandung (IATL ITB) bersama-sama menyaksikan penandatanganan perjanjian antara PT HMMI dengan Desa Wanajaya dan PT HMMI dengan IATL ITB kerjasama TJSLP/CSR yang menjadi komitmen PT HMMI untuk berperan serta dalam pembangunan ekonomi berkelanjutan guna meningkatkan kualitas kehidupan dan lingkungan yang bermanfaat.</p>', '1701835049_9dab1cabe72031947fd4.png', '0', 'Admin', '1'),
(7, '2023-12-06 14:02:25', 'Program kegiatan CSR PT Kito Indonesia berupa gebyar Vaksin tahap 2', 'RgOKdSjA1sOJ8YhVBaDf', '<p>Program kegiatan CSR PT Kito Indonesia berupa gebyar Vaksin tahap 2 jenis Astrazaneca sebanyak 2.000 dosis di Kecamatan Cibarusah merupakan contoh konkret atas program CSR dalam bidang kesehatan upaya penanganan penurunan penyebaran covid-19 di Kabupaten Bekasi.<br />terimakasih yang sebesar-besarnya kepada PT Kito Indonesia yang telah memberikan kontribusi yang positif bagi pembangunan dan peningkatan kesejahteraan masyarakat, mari kita taati protokol kesehatan jangan abaikan dan saling mengingatkan.</p>', '1701846145_518193f846ec7f07d8e4.png', '0', 'admin', '1'),
(8, '2023-12-07 08:29:11', 'tefd', '5XF0xWxl0M0VaQZTedL6', '', '1701912551_82b9f49890d1b9039cc8.png', '2', 'pdam.kp', '0'),
(9, '2023-12-07 08:31:37', 'gfvb', '0eh308LTEIU0LMrW1Tas', '<p>&nbsp;zdsdxs</p>', '1701912697_09d393db5b349bccec3d.png', '2', 'pdam.kp', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang_lingkup`
--

CREATE TABLE `ruang_lingkup` (
  `id` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruang_lingkup`
--

INSERT INTO `ruang_lingkup` (`id`, `ket`) VALUES
(1, 'PROGRAM BANTUAN LANGSUNG PADA MASYARAKAT'),
(2, 'PROGRAM PEMBERDAYAAN MASYARAKAT DAN INFRASTRUKTUR'),
(3, 'PROGRAM KEMITRAAN USAHA MIKRO, KECIL, DAN KOPERASI, INDUSTRI KECIL DAN MENENGAH'),
(4, 'PROGRAM BINA LINGKUNGAN DAN SOSIAL'),
(6, 'PROGRAM YANG SECARA LANGSUNG DITUJUKAN KEPADA MASYARAKAT'),
(7, 'PROGRAM KEMITRAAN USAHA MIKRO, KECIL DAN KOPERASI'),
(8, 'BINA LINGKUNGAN LINGKUNGAN DAN SOSIAL ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `urusan_bidang`
--

CREATE TABLE `urusan_bidang` (
  `id` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `urusan_bidang`
--

INSERT INTO `urusan_bidang` (`id`, `ket`) VALUES
(1, 'Kelautan dan Perikanan'),
(2, 'Kepemudaan dan Olahraga'),
(3, 'Kesehatan'),
(4, 'Ketenteraman dan Ketertiban Umum serta Perlindungan Masyarakat'),
(5, 'Komunikasi dan Informatika'),
(6, 'Koperasi, Usaha Kecil dan Menengah'),
(7, 'Lingkungan Hidup'),
(8, 'Pangan'),
(9, 'Pariwisata'),
(10, 'Pekerjaan Umum dan Penataan Ruang'),
(11, 'Pemberdayaan Masyarakat dan Desa'),
(12, 'Pemberdayaan Perempuan dan Perlindungan Anak'),
(13, 'Penanaman Modal'),
(14, 'Pendidikan'),
(15, 'Perhubungan'),
(16, 'Perindustrian'),
(17, 'Perpustakaan'),
(18, 'Pertanian'),
(19, 'Perumahan Rakyat dan Kawasan Permukiman'),
(20, 'Sekretariat Daerah'),
(21, 'Sosial'),
(22, 'Tenaga Kerja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `password2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `password2`) VALUES
(0, 'admin', '$2y$10$NUpu54SYINvI.Tf3wCOhce2vO9rSBfYvoRfzdWPTcE9aCqUbsqjMu', 0, 'admin_csrKU!'),
(2, 'pdam.kp', '$2y$10$ia9HJGrTEYB06jOqP3H78.BQ3yYHfOO7h9V3vwg3dWIHq30n4/GYi', 1, 'pdam.kp_csrKU!'),
(3, 'anekausaha.kp', '$2y$10$P3sjxVtR4fqH2GEzETf42OKZQfnwOfaRKPPRX2QyxlO31W59IBbem', 1, 'anekausaha.kp_csrKU!'),
(4, 'shinta.putrap', '$2y$10$xJpTspa2U1c5/ErcprL/CeylY0x714v/D2k22rW8Bq8WQEYlTGdxG', 1, 'shinta.putrap_csrKU!'),
(5, 'nusamba.temon', '$2y$10$XKvErRRMalX0ixEKjllcueJ.SKUa8uCeQt0I/hMtM2Fh43SD9PXHK', 1, 'nusamba.temon_csrKU!'),
(6, 'bank.kp', '$2y$10$UYptlU.wrN8bCbxdkP15.e4GTNazCtcq5qIgrEQuHHEHeC9zWrwF.', 1, 'bank.kp_csrKU!'),
(7, 'btpn.kp', '$2y$10$vWU/RcUdCW/KXIDgqsePM.3Nw1uXs1xXlegb0/6JiyawB2CqSFuMi', 1, 'btpn.kp_csrKU!'),
(8, 'bni.wates', '$2y$10$h7ZeFMs1jJTKtlF6dxeLXeSJQqfFXCJSpe6bSn2zIBecjKblkZao2', 1, 'bni.wates_csrKU!'),
(9, 'bpr.ami', '$2y$10$FuPELKomqlmypRDl9Uozr.OuGpYwJeZSacJ3ZOtLiwpE0ptWZVDNK', 1, 'bpr.ami_csrKU!'),
(10, 'bri.wates', '$2y$10$3Y2aGMvbF3x7GD1bFmrpTuk06F6d4WJeEVfHWGrdtOpz8z/p8p5eC', 1, 'bri.wates_csrKU!'),
(11, 'mandiri.wates', '$2y$10$Fvarm1R5FPRyu.tdLqOeleVOn2.y2uu6IJIDX0n7JzNVPWjlpYVIe', 1, 'mandiri.wates_csrKU!'),
(12, 'bca.wates', '$2y$10$ybOKoItROMzhQPfOHdf4jexdyNuqjHbo3t3j7ehv9Yt2V/ZN2A.ru', 1, 'bca.wates_csrKU!'),
(13, 'bsi.wates', '$2y$10$XiwAevkbj9EL4iOJYQES0ut/cnoeI5D6mJTvptHf.eCmwH9JmIKXe', 1, 'bsi.wates_csrKU!'),
(14, 'woori.sdr', '$2y$10$X8TyPuFscVHsQ2J76g/I1uEHN3.1L83xCrFYl6R5BB5E1P.m1UJsu', 1, 'woori.sdr_csrKU!'),
(15, 'pegadaian.wates', '$2y$10$s1tz0zsyBUBnNmBL3KD7nua4Yk8HHO61LcpRlX9YaAUNm.Icy4bSK', 1, 'pegadaian.wates_csrKU!'),
(16, 'ujb.wates', '$2y$10$nnnZcZd.pghuNttFGWc29uoeGVqh5ANle5dIxwohMFuxvq5GNq6n6', 1, 'ujb.wates_csrKU!'),
(17, 'khs.kp', '$2y$10$DaxnO9efOGEH0SxDbD0hi.3jFgQduhGdPKT/t2yyHt6vvscFh54QC', 1, 'khs.kp_csrKU!'),
(18, 'pln.wates', '$2y$10$5RfJ9SFb2lcZyrnRj7h0W./lvX1G.D7CWF4MFNBeyIWzzW3QhR.fO', 1, 'pln.wates_csrKU!'),
(19, 'ap.support', '$2y$10$xl9QE9mH6y664JxKsk2oXuf37rf/7RlxiiXNlDsb8uacZAuuIyErS', 1, 'ap.support_csrKU!'),
(20, 'larissa.kp', '$2y$10$sxJI2J.OejwuyhdoDgtde.N2mbkT.JOo.ryuo3LuPztCaH9wtb3my', 1, 'larissa.kp_csrKU!'),
(21, 'ciomas.kp', '$2y$10$EIdt5sLwIsmC0wjY3JY1d.x4W3RaelvswdQirazhc6.d9x4bwycIS', 1, 'ciomas.kp_csrKU!'),
(22, 'aleyah.kp', '$2y$10$D8/kzHhFL6qkM11V/H9WieqEr6O0wux6nxKBZ2Mwxf2YMEdZ7xisq', 1, 'aleyah.kp_csrKU!'),
(23, 'js.gloves', '$2y$10$RqMWQcqjsxFSSDN2A6KgJeX3ody6yVnS53Fe/BUAqDW/wC0rLN5e2', 1, 'js.gloves_csrKU!'),
(24, 'lestari.pg', '$2y$10$2RCGc0F4DRZHSKjR40PwseOOitMY4XB9ako3x34b3.BqL/ItUeEQ.', 1, 'lestari.pg_csrKU!'),
(25, 'ska.kp', '$2y$10$xzGO6ct5NvYJjG2lSryMke8obkmjeUT6sUNPwKZImlIliMwzECECW', 1, 'ska.kp_csrKU!'),
(26, 'sci.kp', '$2y$10$Bw2mKhtIhI.05ye4ObyUD.1rtilO.w.MwLxBtEA9R2pVriozT7MlS', 1, 'sci.kp_csrKU!'),
(27, 'toto.jogko', '$2y$10$cFpfkR/X7kjcRSYywftuw.V.436SPhKzryCxq/neRSJ5c0icFft5C', 1, 'toto.jogko_csrKU!'),
(28, 'odixa.kp', '$2y$10$37HzkRcGn3b0rFGlf7EVouL2mDPdo6CUkmNaKoL3haX1DyBrZZvBS', 1, 'odixa.kp_csrKU!'),
(29, 'kbp.kp', '$2y$10$G88dPEYAG1mQoZT3PlFXzeF6Tey7xU9eBDtsUCgdymeApLtrXTbJ2', 1, 'kbp.kp_csrKU!'),
(30, 'swk.kp', '$2y$10$ATiy8YK.5dxYqoHouOCifOnEUQAMxqFgcFyxmfHrnre/RxNY.1nAe', 1, 'swk.kp_csrKU!'),
(31, 'sak.kp', '$2y$10$o8JrmTShGg2UZsDekzxqMu9R5sDIoqbEfqtMHlf9DW7vVkOip1hIW', 1, 'sak.kp_csrKU!'),
(32, 'putrapatria.kp', '$2y$10$PPI4pj/pY5nudtiVo.MuXOHgWQGFcA6ULLv4coqPinTgBbPujntcO', 1, 'putrapatria.kp_csrKU!'),
(33, 'bonafide.kp', '$2y$10$Ia/aFlLmCLB9gsMEGI5nMuGUJMHKpRy7USdKxUczhWPY9eVLuxW/O', 1, 'bonafide.kp_csrKU!'),
(34, 'dian.niaga', '$2y$10$lgYSrsbKapa5GM1c11beou5NAowL7U7vML/NVc7sbqKsbeL8savcq', 1, 'dian.niaga_csrKU!'),
(35, 'harapan.kp', '$2y$10$nPiSsU4abLOKu8qf/1tVbeXcBirpjx3Me00lLp2IlBdv3m1gKI2uK', 1, 'harapan.kp_csrKU!'),
(36, 'hms.kp', '$2y$10$wZrMVIx5E78mzH3GOxt5g.ITiF/nDlODDjAKa9EY3WK5zBJSxEg3C', 1, 'hms.kp_csrKU!'),
(37, 'kai.wates', '$2y$10$gLXOAz1bX76J8aDhua.zAOCBXt.pTjmH8Zzg7GfBDMCL.dNn.Zw3u', 1, 'kai.wates_csrKU!'),
(38, 'handika.kp', '$2y$10$C5OszrTyUUyfixUwr25epO4jD4ScOspKcIWzH2w8/FWJRhm6Pywgm', 1, 'handika.kp_csrKU!'),
(39, 'epotech.kp', '$2y$10$jv3Y.zZGMwRYNe1LAe2FruYvMJQaXL6WuW1qOnwdFBxKYTWshRYZ6', 1, 'epotech.kp_csrKU!'),
(40, 'ikip.pgri', '$2y$10$NGwDB5DVg1/CCE.9IWQyleKAXGB7HYs6u2MYZ87agxkKZw5unh0Fq', 1, 'ikip.pgri_csrKU!'),
(41, 'gapensi.kp', '$2y$10$r.nISPx/2PbyM7JgK7peyuljqBsnXU1B0gzu5W4g03ZkFI3uU0XEW', 1, 'gapensi.kp_csrKU!'),
(42, 'kadin.kp', '$2y$10$mC79g8Puz6qGox6FEDZsPe7qKBmaFdcljqrIRf0i8ymYDDpyTWPDO', 1, 'kadin.kp_csrKU!'),
(43, 'askonas.kp', '$2y$10$wYh43e2Ib8b7iLhJrmPrYuXBOY6dCp/M3X19ZSqlkwUkGJmBi4o3u', 1, 'askonas.kp_csrKU!'),
(44, 'hipmi.kp', '$2y$10$vyJvZO.o3lnXDDz0dFAh2OVjBgj1GGncriqj55jSU/amva03yOZOu', 1, 'hipmi.kp_csrKU!'),
(45, 'gapeksindo', '$2y$10$HtsN4f4gCFdqMUw.CbVq3ee/hC6sSYRSuebh1XgVqNms6rRyiYHVC', 1, 'gapeksindo_csrKU!'),
(46, 'uny.wates', '$2y$10$2yXX/3XpyY2ceRD3rNkG6uKg.R74xuOsl/gxpFmRslOAQIpI4sbgO', 1, 'uny.wates_csrKU!'),
(47, 'sv.ugm', '$2y$10$J0MaAsXZ.9ONqhrtbiu62OEZgK.c6ExsFk/SBM6mrNyP8/T7b8kni', 1, 'sv.ugm_csrKU!'),
(48, 'uad.wates', '$2y$10$//24dVvh7GRoJYnom0hMbeA4YeJAINlwzmms/kyyQWJef8Gcq.8Ti', 1, 'uad.wates_csrKU!'),
(49, 'ibisnovotel.kp', '$2y$10$p6r1hcgqSvbEa2/Qb2x/feuaOzVe3g2JhUsZ8ToOQUeo6Wo3nH.Om', 1, 'ibisnovotel.kp_csrKU!'),
(50, 'morazen', '$2y$10$UJ3j8/xsYxM04bKN.OiujejatRZKcjmUYCA6yqLN.eT0Lg9d8hcBO', 1, 'morazen_csrKU!'),
(51, 'astra.kp', '$2y$10$s1ZS.MGTiZyOeMx5l0ehcOpPQN8Z3v45DTVRRKccH/kfbSlT4Pzqm', 1, 'astra.kp_csrKU!'),
(52, 'indobel', '$2y$10$xQjcHcwJQadcnAnzWWgP3OeqYYQMAeeKDs1w6vaJZ.xBqhnfKiLA6', 1, 'indobel_csrKU!'),
(53, 'kothis.kp', '$2y$10$4btbMrccomgL1HdUKDXrUO0YhUSvTy4uKPVE7lpxENuVLj5/iy2BS', 1, 'kothis.kp_csrKU!'),
(54, 'bjm.kp', '$2y$10$xZ8MJDv7/i5FMfmufV3aeuRzoaBWg4as80rfan2Eb426Iva2gjqcy', 1, 'bjm.kp_csrKU!'),
(55, 'tmb.kp', '$2y$10$zh2dxES8Mf4AuA9FodlbUeAL9//AzE.dcygrFY5IUpqeEryfLuipO', 1, 'tmb.kp_csrKU!'),
(56, 'ajisetya', '$2y$10$STqqxfDzR4Z25I/6JnC.E.fsmmluIKHdAq8wS6kffMejJsoij8gS6', 1, 'ajisetya_csrKU!'),
(57, 'kms.kp', '$2y$10$ZZk9fUYmYzwL2abcKHeYR.V8e/H4i1kwBWSuRjLwM3WP1wT/9f/uq', 1, 'kms.kp_csrKU!'),
(58, 'wa.wates', '$2y$10$S5Tu4BHg1MBUmtRJs3KQqud7skDwjssI.gJc1pVlslKXF65XR2mSe', 1, 'wa.wates_csrKU!'),
(59, 'spm.kp', '$2y$10$jaDqr1m4GmoKmcWuSRrMRuMXL3OAdambWBQdEUF.lMTr//JTWoC5e', 1, 'spm.kp_csrKU!'),
(60, 'lgs.kp', '$2y$10$7sgZWnQ.QSYd90zdiMW0OeJQ4s60ZuDQ7IMHd9eXPhglYJguQMiQO', 1, 'lgs.kp_csrKU!'),
(61, 'shinta.motor', '$2y$10$iDLH222GQx9xKAneI20ESu3LJqxXjTFQShw9TY/AKbe48ARTz5TvG', 1, 'shinta.motor_csrKU!'),
(62, 'mag.kp', '$2y$10$LXWduO/9JeLFaKv2a7nibeyYvNwoqTn6r3zKwBdQtBF7zykGIka/u', 1, 'mag.kp_csrKU!'),
(63, 'naturindo.surya', '$2y$10$g9D5YtaCPMeZoNK6oSIRPuMEZ8cdQesU7yU9tZ3w215LbUCyUkhSK', 1, 'naturindo.surya_csrKU!'),
(64, 'kme.kp', '$2y$10$8XJ0m8MZgoA3eTrv/XGCXec0441FkhYXZN8droDUTcVMMXrNX56i2', 1, 'kme.kp_csrKU!'),
(65, 'patra.maju', '$2y$10$c9cj1npGulGXIDRk56h.CuXTTrO.vuigopDKiVQcnL4/kIwrzTZym', 1, 'patra.maju_csrKU!'),
(66, 'bummy.kp', '$2y$10$QDs087HLPo9yEiVUpurs6e.gPWdu8ee5qXuaxwxQU36Kes3WOpNcu', 1, 'bummy.kp_csrKU!'),
(67, 'ips.kp', '$2y$10$cNqHMmLnc5jOfKVQmMvNl.Z7VQ6FWHmM3EsWTHD.CSe20mTBXLiy2', 1, 'ips.kp_csrKU!'),
(68, 'fajar.baru', '$2y$10$Kxv2y1jFlh.f/1fB4clDy.qozr/7FKc7DAXb9VxFtWeDCluzn4T2m', 1, 'fajar.baru_csrKU!'),
(69, 'pesona.wisma', '$2y$10$MSIO81cY.4Zp8t63e8efL.RMdiMXZJ5B69JEh64YMz9RSX1qzsuXS', 1, 'pesona.wisma_csrKU!'),
(70, 'karya.adi', '$2y$10$X0RoX213AN1E2kRbQ45weOk0By01/fAXjiy7KxNCFAY0BCseXPgvi', 1, 'karya.adi_csrKU!'),
(71, 'kerja.patra', '$2y$10$ZFPjSk/IW6Y1JTe9AwtHIOx1IFCM.O9Q8ek2P/cp7fDaiQ5TVAyKK', 1, 'kerja.patra_csrKU!'),
(72, 'bale.rante', '$2y$10$snjyyFz0WyjjeHklFI9WKu.cvKOg/bk/uwLx.V3L88r53OfwJ98Ae', 1, 'bale.rante_csrKU!'),
(73, 'telkom.kp', '$2y$10$ho2Q03zBteIrOv4hBMIjD.ujTAC638CJkTaGVd4tddBCxMcQxBKm2', 1, 'telkom.kp_csrKU!'),
(74, 'baznas.kp', '$2y$10$NfuZlLNOOmoZPtKo/v8YFeZ8Gf.VO0U6G7wvLhF5emzFRaRIcKy3y', 1, 'baznas.kp_csrKU!'),
(75, 'swiss.belhotel', '$2y$10$Ews7LcpgjKPtwF6rQDG9.uV6yT4y57tSzT7pkLLmu64vparlf5Xdq', 1, 'swiss.belhotel_csrKU!'),
(76, 'jmi', '$2y$10$FHApj1u8hwR0wf8LTpsY.u49Ft4qmIaLCzcUY7hAqMdcAo59Ey.MK', 1, 'jmi_csrKU!'),
(77, 'widya.segara', '$2y$10$v3TJuKxuPTqnHn3O0w8wq.M2gwYO0PssEfxVpwy5anaCqUrX3/3p6', 1, 'widya.segara_csrKU!'),
(78, 'spbu.kp', '$2y$10$ktfXeIWN3MM2PJCYkRLP2.prwPr3KhTPgNjFYx8xwAvb3m8iCwvea', 1, 'spbu.kp_csrKU!'),
(79, 'kharisma.wijaya', '$2y$10$gn02nCKxeCfN/740Vt/oruMpWBybEm3D/xQGGFSrQVVokHFwMdjGu', 1, 'kharisma.wijaya_csrKU!'),
(80, 'sumber.fiber', '$2y$10$TcTVvDMER/bd6uBDcDxs1etdzXvfOrX.IFicJMKsQwDXusW1gVuxm', 1, 'sumber.fiber_csrKU!'),
(81, 'pura.raharja', '$2y$10$LQFVqHV2Z4jUP8lI4lHMguoMXgld/oAEhBvzgAY2szvg8wF1wHGAq', 1, 'pura.raharja_csrKU!'),
(82, 'belle.amanah', '$2y$10$.k786lSeAkMnLwLAbS0e.efOQOsieExid0Q41zifaUVSRDgSitNZm', 1, 'belle.amanah_csrKU!'),
(83, 'bpd.wates', '$2y$10$deMGZl7BT0Ij7uk2P6szT.AqVaG0e4daOXLfqN92JU3NRxNVW2yY6', 1, 'bpd.wates_csrKU!'),
(84, 'ap.yia', '$2y$10$68xJVR3y0xG6ShteiZyYPuXRVViWX8PNGXcAqZLXutWQxvOyOPetq', 1, 'ap.yia_csrKU!'),
(85, 'isti.parama', '$2y$10$J902.O9QA0h1Wzpt3gwLC.CXA7/sgU3n71V2BoY86/szFAEQOtdtW', 1, 'isti.parama_csrKU!');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_kegiatan_csr`
--
ALTER TABLE `detail_kegiatan_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kalurahan`
--
ALTER TABLE `kalurahan`
  ADD PRIMARY KEY (`id_kalurahan`);

--
-- Indeks untuk tabel `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan_upload`
--
ALTER TABLE `kegiatan_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `urusan_bidang`
--
ALTER TABLE `urusan_bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_kegiatan_csr`
--
ALTER TABLE `detail_kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_upload`
--
ALTER TABLE `kegiatan_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `urusan_bidang`
--
ALTER TABLE `urusan_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
