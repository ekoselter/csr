-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Bulan Mei 2025 pada 04.47
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
  `waktu` datetime DEFAULT NULL,
  `vol_salur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `aktifitas` varchar(255) DEFAULT NULL,
  `alamat` text NOT NULL,
  `kapanewon` varchar(20) NOT NULL,
  `kalurahan` varchar(20) NOT NULL,
  `biaya` int(20) NOT NULL DEFAULT '0',
  `volume` varchar(20) NOT NULL DEFAULT '0',
  `satuan` varchar(20) DEFAULT NULL,
  `opd` varchar(100) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan_csr`
--

INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `aktifitas`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`, `status`) VALUES
(1, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jembatan dan  Jalan Usaha tani Karangwuluh', '', '34.01.01', '34.01.01.2015', 600000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN', '1'),
(3, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Sringkel - PLN (Plumbon)', '', '34.01.01', '34.01.01.2006', 350000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(4, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan ruas jalan Pasir Mendit Jangkaran', '', '34.01.01', '34.01.01.2001', 805000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(5, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rabat Beton Jalan Permukiman (Temon Wetan)', '', '34.01.01', '34.01.01.2011', 255000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(6, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Usaha tani Temon Wetan', '', '34.01.01', '34.01.01.2011', 250000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN', '0'),
(7, '2024', '7', '18', 'pelatihan', 'Pelatihan dan Bantuan Pokdakan Temon Wetan', '', '34.01.01', '34.01.01.2011', 25000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN', '0'),
(8, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab saluran sekunder Pedukuhan Kretek Glagah', '', '34.01.01', '34.01.01.2004', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(9, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jalan Glaeng Palihan', '', '34.01.01', '34.01.01.2003', 600000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(10, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan alat mesin kendaraan roda 3 (Palihan)', '', '34.01.01', '34.01.01.2003', 30000000, '1', 'Kegiatan', 'DINAS PERTANIAN DAN PANGAN', '0'),
(11, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perbaikan Jembatan Dumpoh Kebonrejo', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(12, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perbaikan Jembatan Siwuni (Kebonrejo)', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(13, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perbaikan Jembatan dekat MTS Kebonrejo', '', '34.01.01', '34.01.01.2013', 300000000, '1', 'Kegiatan', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(14, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Peningkatan Jalan Primer 2 (No 46 ruas 2.02.05.003, nama ruas: Tambak - Cokrodipan)', 'Kadipaten/Ngrandu', '34.01.02', '34.01.02.2006', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(15, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi/Peningkatan  Jalan Primer 2 (No 44 ruas 2.02.05.001, nama ruas: Klewonan - Ngrandu)', 'Cokrodipan RT 03 - Conegaran RT 24', '34.01.02', '34.01.02.2006', 400000000, '469', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(16, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Bantuan pemberdayaan ekonomi produktif disabilitas (60 disabilitas)', 'Giripeni', '34.01.02', '34.01.02.2007', 208017743, '1200', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(17, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jalan Aspal Taman Makam Pahlawan-Tegallembut; No Ruas 2.02.07.006', 'Giripeni', '34.01.02', '34.01.02.2007', 300000000, '2700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(18, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Coor Blok Jalan Tengah Sawah Padukuhan Keboan', 'Padukuhan Keboan', '34.01.02', '34.01.02.2001', 150000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(19, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan usaha tani Poktan Sido Mulyo', 'Poktan Sido Mulyo', '34.01.02', '34.01.02.2001', 300000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(20, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bantuan Pemasangan Jaringan listrik Pertanian dan sarpras pengairan Mulya Abadi', 'Poktan Mulya Abadi', '34.01.02', '34.01.02.2001', 350000000, '800', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(21, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan dan Pelebaran Jalan (Aspal) Kuwirun-Jetis No ruas 2.02.03.001', 'Kuwirun - Jetis', '34.01.02', '34.01.02.2003', 350000000, '1821', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(22, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Drainase Kulwaru (Siwatu)', 'Pedukuhan Kanoman', '34.01.02', '34.01.02.2003', 360000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(23, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan bulak Dukuh - Granti dengan nomor ruas 2.02.04.007', 'Dukuh - Granti', '34.01.02', '34.01.02.2004', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(24, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Bantuan pemberdayaan ekonomi produktif disabilitas', 'Ngestiharjo', '34.01.02', '34.01.02.2004', 150000000, '95', 'ekor', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(25, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan Usaha Tani (Bulak Sawah Ngudi Rahayu, Pom Bensin Ke Selatan)', 'Bulak Sawah Ngudi Rahayu (Pom Bensin Ke Selatan)', '34.01.02', '34.01.02.2002', 600000000, '600', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(26, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan Usaha Tani Bulak Sawah Trimulyo RT. 08', 'Bulak Sawah Trimulyo RT. 08', '34.01.02', '34.01.02.2002', 150000000, '135', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(27, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Saluran Drainase Cyclope', 'Sanggrahan Lor', '34.01.02', '34.01.02.2005', 250000000, '390', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(28, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Normalisasi Drainase ', 'Beji RT 02 RW 02', '34.01.02', '34.01.02.2008', 400000000, '450', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(29, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Aspal RT 01 RW 14 Dipan   (Pasar Ikan ke Barat)', 'Dipan RT 01 RW 14', '34.01.02', '34.01.02.2008', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(30, '2024', '7', '6', 'pelatihan', 'Pelatihan Sablon', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(31, '2024', '7', '7', 'pelatihan', 'Pelatihan Pengelolaan Sampah (Bank Sampah) & timbangan digital untuk bank sampah', '', '34.01.03', '34.01.03.2001', 20000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(32, '2024', '7', '', 'pelatihan', 'Pelatihan tata boga', '', '34.01.03', '34.01.03.2001', 30000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(33, '2024', '7', '', 'pelatihan', 'Pelatihan membuat souvenir', '', '34.01.03', '34.01.03.2001', 25000000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(34, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'PJU', '', '34.01.03', '34.01.03.2002', 50000000, '10', 'titik', 'DINAS PERHUBUNGAN', '0'),
(35, '2024', '6', '9', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Joglo Pariwisata', '', '34.01.03', '34.01.03.2002', 200000000, '1', 'unit', 'DINAS PARIWISATA', '0'),
(36, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Wisata Sawah Surjan', '', '34.01.03', '34.01.03.2002', 300000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(37, '2024', '7', '', 'pelatihan', 'Pelatihan las Listrik dan Karbit', '', '34.01.03', '34.01.03.2002', 55000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(38, '2024', '7', '', 'pelatihan', 'Pelatihan Batik', '', '34.01.03', '34.01.03.2002', 75000000, '', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(39, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Evakuasi Bencana SD Muh - Ring I', '', '34.01.03', '34.01.03.2002', 300000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(40, '2024', '8', '', 'pendampingan Kalurahan dan kelompok masyarakat.', 'Pembinaan Kawasan Siaga Bencana Kapanewon', '', '34.01.03', '34.01.03.2003', 150000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(41, '2024', '7', '', 'pelatihan', 'Pelatihan Pengembangan Usaha Kerajinan', '', '34.01.03', '34.01.03.2003', 25000000, '100', 'orang', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(42, '2024', '7', '18', 'pelatihan', 'Pelatihan dan Penguatan Modal Usaha Pertanian dan Peternakan', '', '34.01.03', '34.01.03.2003', 150000000, '10', 'pedukuhan', 'DINAS PERTANIAN DAN PANGAN', '0'),
(43, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Aspal (Hotmik)', 'Dukuh IV dan V Kanoman', '34.01.03', '34.01.03.2004', 366500000, '1340', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(44, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perbaikan Jalan Depan SD Depok', 'SD Depok', '34.01.03', '34.01.03.2005', 500000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(45, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pelatihan Aksara Jawa', '', '34.01.03', '34.01.03.2005', 25000000, '1', 'kali', 'DINAS KEBUDAYAAN', '0'),
(46, '2024', '7', '', 'pelatihan', 'Pelatihan Produk Unggulan', '', '34.01.03', '34.01.03.2005', 80000000, '1', 'kali', 'DINAS PERDAGANGAN', '0'),
(47, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor  Jalan Batas Bojong dan Garongan', '', '34.01.03', '34.01.03.2006', 100000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(48, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Program Kegiatan P3TGAI', '', '34.01.03', '34.01.03.2006', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(49, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehap Saluran Air Dk VII ( Pak Sudar )', '', '34.01.03', '34.01.03.2006', 200000000, '50', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(50, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengadaan Penerangan lampu jalan ', '', '34.01.03', '34.01.03.2006', 125000000, '25', 'titik', 'DINAS PERHUBUNGAN', '0'),
(51, '2024', '7', '6', 'pelatihan', 'Pelatihan Penggunaan teknologi informasi untuk kegiatan ekonomi produktif', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(52, '2024', '7', '9', 'pelatihan', 'Pelatihan Pokdarwis', '', '34.01.03', '34.01.03.2006', 25000000, '1', 'paket', 'DINAS PARIWISATA', '0'),
(53, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengadaan Penerangan lampu jalan  Ki Hadi Sugito', '', '34.01.03', '34.01.03.2007', 125000000, '25', 'unit', 'DINAS PERHUBUNGAN', '0'),
(54, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi RTLH', '', '34.01.03', '34.01.03.2007', 225000000, '15', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(55, '2024', '7', '', 'pelatihan', 'Pelatihan Tanggap Bencana', '', '34.01.03', '34.01.03.2007', 45000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(56, '2024', '7', '6', 'pelatihan', 'Pelatihan Penggunaan Teknologi Informasi untuk kegiatan ekonomi Produktif', '', '34.01.03', '34.01.03.2007', 25000000, '1', 'paket', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(57, '2024', '7', '11', 'pelatihan', 'Pelatihan Pengembangan BUMDes', '', '34.01.03', '34.01.03.2007', 12000000, '1', 'paket', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(58, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'LPJU', '', '34.01.03', '34.01.03.2008', 100000000, '40', 'unit', 'DINAS PERHUBUNGAN', '0'),
(59, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'SPAL', '', '34.01.03', '34.01.03.2009', 15000000, '5', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(60, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'LPJU', '', '34.01.03', '34.01.03.2009', 60000000, '20', 'unit', 'DINAS PERHUBUNGAN', '0'),
(61, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', 'Pembinaan Penanganan Limbah Sampah', '', '34.01.03', '34.01.03.2009', 150000000, '5', 'Kelompok', 'DINAS LINGKUNGAN HIDUP', '0'),
(62, '2024', '7', '6', 'pelatihan', 'Pelatihan Pelaku UMKM', '', '34.01.03', '34.01.03.2009', 30000000, '25', 'umkm', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(63, '2024', '7', '', 'pelatihan', 'Pelatihan Stir Mobil', '', '34.01.03', '34.01.03.2009', 10000000, '10', 'orang', 'DINAS TENAGA KERJA DAN TRANSMIGRASI ', '0'),
(64, '2024', '7', '', 'pelatihan', 'Pelatihan Karawitan', '', '34.01.03', '34.01.03.2009', 50000000, '35', 'orang', 'DINAS KEBUDAYAAN', '0'),
(65, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Corblok Jln. Gunung Setorini - Gotakan V', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 360000000, '900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(66, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan saluran irigasi', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 150000000, '150', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(67, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemasangan rambu - rambu jalan ', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 24000000, '12', 'lokasi', 'DINAS PERHUBUNGAN', '0'),
(68, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemasangan Penerangan Jalan', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 75000000, '15', 'Lokasi', 'DINAS PERHUBUNGAN', '0'),
(69, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pelatihan Mocopat', 'Pedukuhan I-X Kal Cerme', '34.01.03', '34.01.03.2010', 20000000, '1', 'paket', 'DINAS KEBUDAYAAN', '0'),
(70, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'LPJU', 'Ped. 1-12 Kal. Krembangan', '34.01.03', '34.01.03.2011', 87500000, '35', 'titik', 'DINAS PERHUBUNGAN', '0'),
(71, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Saluran Pengatus Irigasi (Drainase)', 'Jalan Kranggan / Pulopete (Nomor Ruas 1.04.03.007)', '34.01.04', '34.01.04.2002', 65837169, '2', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(72, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Berkala jalan ', 'Kalurahan Brosot ( 1.04.05.008 / Kantor Pos-Tegal Buret )', '34.01.04', '34.01.04.2007', 350000000, '1900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(73, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Jalan LP II no 2.04.02.006 ruas Sawahan - Jonggrangan (Padukuhan Bleberan Banaran)', '34.01.04', '34.01.04.2001', 250000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(74, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jalan BD Tirtorahayu-SMA 1 Galur (No Ruas 2.04.07.002)', '34.01.04', '34.01.04.2005', 224302263, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(75, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jalan Cangaan-Ngremang No Ruas ( 1.04.07.009)', '34.01.06', '34.01.06.2001', 300000000, '2500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(76, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Pemukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Jelontoro Padukuhan Sawahan Banaran', '34.01.04', '34.01.04.2007', 35000000, '1', 'Ls', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(77, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Pemukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Jeronan Brosot  (Jalan Lingkungan depan makam jeronan / RT 40, 41, 42 , 43)', '34.01.04', '34.01.04.2007', 100000000, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(78, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Bedoyo - Siliran II dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2004', 225581320, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(79, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Sorogenen 1- Sorogenen 2', '34.01.04', '34.01.04.2003', 30000000, '3', 'titik', 'DINAS PERHUBUNGAN', '0'),
(80, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan ', 'Lapangan Kranggan - SD Sepaten (Nomor Ruas 2.04.03.002)', '34.01.04', '34.01.04.2002', 120000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(81, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Imorenggo dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2004', 230000000, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(82, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Karang Brosot  ( Jalan Rowo - Kartika )', '34.01.04', '34.01.04.2007', 90000000, '700', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(83, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai ', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 30000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(84, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Gandu - Samiranan (Ruas jalan no 2.04.04.002)', '34.01.04', '34.01.04.2003', 386744150, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(85, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jalan Darul ulum sorobayan-Trayu (No Ruas 2.04.07.004)', '34.01.04', '34.01.04.2005', 175000000, '1100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(86, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Sarana Prasarana Pemuda Olahraga', 'Lapangan Kranggan Sepaten', '34.01.04', '34.01.04.2002', 250000000, '6000', 'm²', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(87, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Usaha Tani', 'Lor Tanjung Padukuhan Sidorejo Banaran', '34.01.04', '34.01.04.2001', 287209244, '470', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(88, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jalan sigran-SMA 1 Galur (No Ruas 2.04.07.001)', '34.01.04', '34.01.04.2005', 100000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(89, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Kalurahan Brosot  (sekitar Tugu Brosot dan  jalan Daendels)', '34.01.04', '34.01.04.2007', 30000000, '1', 'paket', 'DINAS PERHUBUNGAN', '0'),
(90, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani ', 'Bulak Ngepreh (No Ruas 1.04.01.003)', '34.01.04', '34.01.04.2006', 150000000, '60', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(91, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani ', 'Kidul Manggung Kelompok Tani Cipta Boga IV Nomor : Register 34.01.04.KRG.KT.04.2016 Nepi ,Kranggan, Galur, Kp ', '34.01.04', '34.01.04.2002', 78000000, '275', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(92, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Dropping Air ', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 100000000, '1', 'titik', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(93, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Bulak Kulon Boro dengan Ruas 1.04.01.003', '34.01.04', '34.01.04.2006', 135000000, '60', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(94, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Kalurahan Banaran ( sepanjang jalan LP 1 no 41 ruas 1.04.02.005 Banaran - Tanjung)', '34.01.04', '34.01.04.2001', 40000000, '', NULL, 'DINAS PERHUBUNGAN', '0'),
(95, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bantuan prasarana pertanian tanaman pangan untuk kelompok tani ', 'Kelompok Tani Kalurahan Kranggan : KT Cipta Boga I s.d  KT Cipta Boga X (Nomor Register : 34.01.04.KRG.KT.01.2016, 34.01.04.KRG.KT.02.2016, 34.01.04.KRG.KT.03.2016, 34.01.04.KRG.KT.04.2016, 34.01.04.KRG.KT.05.2016, 34.01.04.KRG.KT.06.2016, 34.01.04.KRG.KT.07.2016, 34.01.04.KRG.KT.08.2016, Cipta 34.01.04.KRG.KT.09.2016)', '34.01.04', '34.01.04.2002', 27279056, '9', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(96, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan prasarana pertanian tanaman pangan untuk kelompok tani', 'Bulak Nomporejo  (kelompok tani Bina Tani IV)', '34.01.04', '34.01.04.2003', 40000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(97, '2024', '7', '6', 'pelatihan', 'Pelatihan Kewirausahaan SDM pelaku UMKM', 'Kalurahan Pandowan', '34.01.04', '34.01.04.2006', 50000000, '20', 'orang', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(98, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup.', 'Fasilitasi sarana prasarana persampahan untuk bank sampah ', 'Kalurahan Brosot (Bank Sampah \"Merti Bumi Lestari\" Padukuhan Kutan Brosot)', '34.01.04', '34.01.04.2007', 160000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(99, '2024', '7', '11', 'pelatihan', 'Pembinaan Pengelolaan BUMDes', 'BUMDes Binangun Migunani Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'Kelompok', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA Dalduk dan KB', '0'),
(100, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan sosial dropping air ', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(101, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Kalurahan Brosot  ( KWT Lestari Makmur Modinan Brosot)', '34.01.04', '34.01.04.2007', 31240250, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(102, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Prasarana Pertanian tanaman Pangan Kelompok tani ', 'Kelompok Tani \"Wahana Tani\" (Gupit) dan Kelompok Tani \"Tani Sari\" (Siliran V)', '34.01.04', '34.01.04.2004', 92585110, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(103, '2024', '7', '21', 'pelatihan', 'Pelatihan Kewirausahaan P2WKSS dan Desa Prima', 'Kalurahan Pandowan', '34.01.04', '34.01.04.2006', 15000000, '1', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(104, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'Pokdakan Padukuhan Barongan, Gandu, Samiranan Nomporejo', '34.01.04', '34.01.04.2003', 45000000, '3', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(105, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pengelolaan pekarangan untuk KWT (kecuali ikan)', 'KWT Sekar Arum Nomor Register : 34.01.04.KRG.KT.16.2016 Kujon Lor, KWT Berkah Tani Nomor Register : 34.01.04.KRG.KT.17.2016 Kranggan Kidul dan KWT Sekar Wangi  Nomor Register : 34.01.04.KRG.KT.18.2016 Kranggan Kulon ,KWT Tunas Mekar Nomor Register : 34.01.04.KRG.KT.19.2016 Sepaten, Kal.Kranggan, Kap. Galur Kab. Kp', '34.01.04', '34.01.04.2002', 24000000, '4', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(106, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pengelolaan pekarangan untuk KWT (kecuali ikan)', '1. KWT Mekar Sari (Diren) No. Register 34.01.04.PDW.KT.05.2016\n2. KWT Semi Makmur (Prembulan) No. Register 34.01.04.PDW.KT.07.2021', '34.01.04', '34.01.04.2002', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(107, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Padukuhan Bleberan dan Padukuhan Sidakan Banaran (KWT Mekarsari Bleberan dan KWT Gumregah Sidakan)', '34.01.04', '34.01.04.2008', 30000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(108, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Nomporejo (Mitra Sejahtera No Reg.95/BS/Galur/Nomporejo/2021)', '34.01.04', '34.01.04.2003', 48255850, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(109, '2024', '7', '22', 'pendampingan', 'Pembinaan dan workshop LPK', 'PKK Kal.Kranggan', '34.01.04', '34.01.04.2002', 20000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(110, '2024', '7', '1', 'pendampingan', 'Pembinaan kelompok nelayan kecil', 'Pantai Trisik Kalurahan Banaran', '34.01.04', '34.01.04.2001', 42000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(111, '2024', '7', '22', 'pendampingan', 'Pembinaan dan workshop LPK ', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2002', 30000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(112, '2024', '8', '7', 'pendampingan Kalurahan dan kelompok masyarakat.', 'Sosialisasi masyarakat dalam pengelolaan lingkungan hidup', 'Kalurahan Nomporejo', '34.01.04', '34.01.04.2003', 18992200, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(113, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pengelolaan pekarangan untuk KWT (kecuali ikan)', '1. KWT Mekar Sari (Diren) No. Register 34.01.04.PDW.KT.05.2016\n2. KWT Semi Makmur (Prembulan) No. Register 34.01.04.PDW.KT.07.2021', '34.01.04', '34.01.04.2006', 8124025, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(114, '2024', '7', '22', 'pendampingan', 'Pembinaan dan workshop LPK ', 'Karang Taruna Bhakti Muda Kal.Kranggan', '34.01.04', '34.01.04.2002', 25000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(115, '2024', '7', '18', 'pendampingan', 'Jaringan irigasi kawasan perkebunan', 'Kalurahan Banaran ( Kelompok P3A Tirto Mulyo (3/BNR/IV/03), Sri Rejeki (2/BNR/IV/03), Marsudi Luhur (5/BNR/IV/03), Tirta Jaya (6/BNR/IV/03), Sumber Rejeki (7/BNR/IV/03), dan Sumberdadi (4/BNR/IV/03)', '34.01.04', '34.01.04.2001', 15000000, '6', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(116, '2024', '7', '22', 'pendampingan', 'Pembinaan dan workshop LPK ', 'PKK Kal.Kranggan', '34.01.04', '34.01.04.2002', 25000000, '1', 'kelompok', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(117, '2024', '7', '6', 'pelatihan ', 'Pelatihan Kewirausahaan SDM Pelaku UMKM', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '50', 'orang', 'DINAS KOPERASI USAHA KECIL DAN MENEGAH', '0'),
(118, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan ', 'Pokdakan Wanita Berkah Mina Nomor Register : 34.01.04.KRG.KP.08.2022 Kranggan Kidul, Kal. Kranggan', '34.01.04', '34.01.04.2002', 20000000, '1', 'kelompok', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(119, '2024', '6', '3', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Jaminan Kesehatan', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'DINAS KESEHATAN', '0'),
(120, '2024', '6', '14', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pembangunan sarana dan prasarana pemuda olah raga', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 15000000, '1', 'paket', 'DINAS PENDIDIKAN DAN OLAHRAGA', '0'),
(121, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan pengolahan dan pemasaran produk ikan dan sejenisnya kepada kelompok', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 40000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(122, '2024', '6', '3', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pengelolaan alkon klinik KB Puskesmas', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 10000000, '1', 'paket', 'DINAS KESEHATAN', '0'),
(123, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 25000000, '50000', 'ekor', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(124, '2024', '6', '9', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengembangan Desa Wisata', 'Kalurahan Banaran', '34.01.04', '34.01.04.2001', 30403082, '1', 'paket', 'DINAS PARIWISATA', '0'),
(125, '2024', '6', '18', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jaringan irigasi kawasan\npertanian', 'Wahyuharjo (Bulak Sawah Kidul Blok 12)', '34.01.05', '34.01.05.2001', 280000000, '230', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(126, '2024', '6', '11', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'TMMD', 'Sidorejo (TMMD Kwarakan-Jurug)', '34.01.05', '34.01.05.2004', 225000000, '450', 'm', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', '0'),
(127, '2024', '6', '15', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU\n(Kampung)', 'Ngentakrejo (LPJU Padukuhan Mirisewu)', '34.01.05', '34.01.05.2006', 50000000, '40', 'titik', 'DINAS PERHUBUNGAN', '0'),
(128, '2024', '6', '22', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Gulurejo (Rabat Beton, Padukuhan Kragilan)', '34.01.05', '34.01.05.2005', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(129, '2024', '6', '10', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU\nLingkungan)', 'Sidorejo (Drainase Padukuhan Gentan) Gorong-gorong', '34.01.05', '34.01.05.2004', 105000000, '1', 'paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(130, '2024', '6', '15', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Wahyuharjo (No Ruas 2.05.01.002 Maesan - Potrogaten)', '34.01.05', '34.01.05.2001', 70000000, '4', 'titik', 'DINAS PERHUBUNGAN', '0'),
(131, '2024', '6', '21', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Pemberian Bimbingan Sosial kepada Keluarga Penyandang Disabilitas Terlantar, Anak Terlantar, Lanjut Usia Terlantar, serta Gelandangan Pengemis dan Masyarakat', 'Jatirejo', '34.01.05', '34.01.05.2003', 65000000, '4', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(132, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo  (SEMPU RT71)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(133, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo  (CABEAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(134, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (CABEAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(135, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (BANGERAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(136, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (BANGERAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(137, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (JOGAHAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(138, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (TEMPEL)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(139, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (PANGGANG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(140, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (GEGUNUNG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(141, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (KALANGAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(142, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (DEGOLAN)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(143, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (PERENG)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(144, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (BONOSORO)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(145, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (NGIPIK)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(146, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Bumirejo (DUKUH)', '34.01.05', '34.01.05.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(147, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (PENGKOL)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(148, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (PULO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(149, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (WONOLOPO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(150, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (MENDIRO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(151, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (SUMURMULING)', '34.01.05', '34.01.05.2005', 17500000, '1 Unit', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(152, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (GEGULU)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(153, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (GEGULU)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(154, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (SEMBUNGAN)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(155, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (BONOREJO)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(156, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gulurejo (KLIPUH)', '34.01.05', '34.01.05.2005', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(157, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (BOTOKAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(158, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (BOTOKAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(159, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (LENDAH)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(160, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (SUMBEREJO)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(161, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (SUMBEREJO)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(162, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (JIMATAN)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(163, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(164, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(165, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `aktifitas`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`, `status`) VALUES
(166, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (WONOGIRI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(167, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (WONOGIRI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(168, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (TEGALSARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(169, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Jatirejo (TEGALSARI)', '34.01.05', '34.01.05.2003', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(170, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (LEDOK)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(171, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (GEDEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(172, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (GERJEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(173, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (SAPON)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(174, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (SENDEN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(175, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (JURUG)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(176, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (KARANG)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(177, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (KWARAKAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(178, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (DIRAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(179, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sidorejo (SEDAN)', '34.01.05', '34.01.05.2004', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(180, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban\nSehat', 'Gulurejo (PULO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(181, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (PULO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(182, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (PULO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(183, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (WONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(184, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (WONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(185, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (WONOLOPO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(186, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (MENDIRO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(187, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (MENDIRO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(188, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(189, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(190, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SUMURMULING)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(191, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (GEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(192, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (GEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(193, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (GEGULU)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(194, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(195, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(196, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (BONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(197, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (BONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(198, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (BONOREJO)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(199, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (SEMBUNGAN)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(200, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (KLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(201, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (KLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(202, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Gulurejo (KLIPUH)', '34.01.05', '34.01.05.2005', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(203, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JATIREJO)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(204, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JIMATAN)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(205, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JIMATAN)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(206, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(207, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JATISARi)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(208, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(209, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (JATISARI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(210, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (WONOGIRI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(211, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (WONOGIRI)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(212, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat', 'Jatirejo (BONOSORO)', '34.01.05', '34.01.05.2003', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(213, '2024', '6', '17', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Perpustakaan Kalurahan', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 20000000, '1', 'paket', 'DINAS PERPUSTAKAAN DAN KEARSIPAN', '0'),
(214, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Sidorejo (Padukuhan Gentan)', '34.01.05', '34.01.05.2004', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(215, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Ngentakrejo (RT35 Padukuhan\nMirisewu)', '34.01.05', '34.01.05.2006', 100000000, '150', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(216, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Gulurejo (PadukuhanWonolopo)', '34.01.05', '34.01.05.2005', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI ', '0'),
(217, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Jatirejo (RT 37 Padukuhan Jimatan)', '34.01.05', '34.01.05.2003', 100000000, '150', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(218, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jaringan Irigasi', 'Jatirejo (P3A GUNA TIRTA, P3A TANI MAKMUR, P3A TIRTO AJI)', '34.01.05', '34.01.05.2003', 200000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(219, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU\nLingkungan)', 'Ngentakrejo (Bangket Jembatan RT03 RW06, Nglatiyan I)', '34.01.05', '34.01.05.2006', 100000000, '50', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(220, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU\nLingkungan)', 'Ngentakrejo (Drainase)', '34.01.05', '34.01.05.2006', 221155000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(221, '2024', '6', '21', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemberian Bimbingan Sosial kepada Keluarga Penyandang Disabilitas Terlantar, Anak Terlantar, Lanjut Usia Terlantar, serta Gelandangan Pengemis dan\nMasyarakat', 'Sidorejo', '34.01.05', '34.01.05.2004', 15000000, '1', 'paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(222, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bantuan prasarana pertanian tanaman pangan\nuntuk kelompok tani', 'Sidorejo (nama kelompok dan nomor register kelompok perlu ditambahkan)', '34.01.05', '34.01.05.2004', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(223, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Ngentakrejo (Cor Blok No Ruas 2.05.06.002 Nglatian - Mirisewu)', '34.01.05', '34.01.05.2006', 250000000, '182', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(224, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Sidorejo (No Ruas 2.05.04.001 Sedan - Jekeling)', '34.01.05', '34.01.05.2004', 243500000, '187', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(225, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Bumirejo ( No Ruas 2.05.02.006 Pasar Pon - Pasar Potrogaten)', '34.01.05', '34.01.05.2002', 200000000, '154', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(226, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Bumirejo (No Ruas 2.05.02.001 Potrogaten Kalangan -Demangrejo )', '34.01.05', '34.01.05.2002', 250000000, '192', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(227, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Bumirejo (No Ruas 2.05.02.002 Tempel - Bonosoro)', '34.01.05', '34.01.05.2002', 250000000, '192', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(228, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekontruksi Jalan', 'Bumirejo (No Ruas 2.05.02.003 Sempu - Pereng - Degolan)', '34.01.05', '34.01.05.2002', 265000000, '204', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(229, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Fasilitasi sarana prasarana persampahan untuk bank\nsampah', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 15000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(230, '2024', '8', '6', 'pelatihan', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Wahyuharjo', '34.01.05', '34.01.05.2001', 15000000, '5', 'paket', 'DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH', '0'),
(231, '2024', '6', '', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah alat kesenian (Kostum seni budaya)', 'Wahyuharjo (Kelompok Seni Budaya Wahyu Budaya)', '34.01.05', '34.01.05.2001', 55000000, '1', 'paket', 'DINAS KEBUDAYAAN', '0'),
(232, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU\nLingkungan)', 'Jatirejo (Penutup Drainase Depan Kantor Kapanewon Lendah)', '34.01.05', '34.01.05.2003', 15000000, '1600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(233, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Jalan LP I (SD) No. 96 No. Ruas 1.06.05.006', 'Sukoreno-Desa Tuksono', '34.01.06', '34.01.06.2003', 214500000, '1365', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(234, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Jalan LP II (TW-KS) no. 241 No. Ruas 2.06.03.001', 'Taruban Wetan -Kalisoko', '34.01.06', '34.01.06.2003', 503250000, '3203', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(235, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Aspal SP Kalimenur - Cemetuk (Ruas 97)', 'Kalimenur', '34.01.06', '34.01.06.2005', 450000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(236, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Corblok Ruas Degung-Sidowayah (2.06.06.008)', 'Ngaglik, Mertan, Sidowayah', '34.01.06', '34.01.06.2005', 250000000, '925', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(237, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Gedangan- Suren (2.06.07.001)', 'Suren, Sukoreno', '34.01.06', '34.01.06.2005', 250000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(238, '2024', '8', '18', 'pelatihan', 'Pelatihan Pertanian Bawang Merah', 'Gapoktan Rukun Makaryo, Sukoreno', '34.01.06', '34.01.06.2005', 44574100, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(239, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan/Perbaikan Jalan Sukoreno Kalipenten (No. Ruas 193)', 'Kaliagung', '34.01.06', '34.01.06.2006', 400000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(240, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan/Perbaikan Jalan Banyunganti Kidul-Degung (No. Ruas 198)', 'Kaliagung', '34.01.06', '34.01.06.2006', 400000000, '', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(241, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Rumah Tidak layak Huni', 'Kaliagung', '34.01.06', '34.01.06.2006', 102000000, '7', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(242, '2024', '6', '3', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengadaan Jamban Bagi Keluarga Miskin', 'Kaliagung', '34.01.06', '34.01.06.2006', 6000000, '3', 'Unit', 'DINAS KESEHATAN', '0'),
(243, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Talud dan Cor Blok jalan', 'Jalan Bibis', '34.01.09', '34.01.09.2002', 325000000, '204', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(244, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan Demangrejo - Karangasem', 'Jalan Bulak Kayangan', '34.01.06', '34.01.06.2005', 352603221, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(245, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH Pergiwatu Wetan RT 33RW17', 'Pergiwatu Wetan, Srikayangan', '34.01.06', '34.01.06.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(246, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH Gowangsan RT 24 RW 12', 'Gowangsan, Srikayangan', '34.01.06', '34.01.06.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(247, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH Malangan RT 19 RW 10', 'Malangan, Srikayangan', '34.01.06', '34.01.06.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(248, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH Gowangsan RT21RW 11', 'Gowangsan, Srikayangan', '34.01.06', '34.01.06.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(249, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH Pergiwatu Kulon RT 31,RW  16', 'Pergiwatu Kulon, Srikayangan', '34.01.06', '34.01.06.2002', 17500000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(250, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Panjul  RT 27 RW 14 ', 'Panjul, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(251, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI  Panjul RT26 RW 13', 'Panjul, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(252, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Pergiwatu Kulon RT 3RW1 ', 'Pergiwatu Wetan, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(253, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Kradenan RT 54 Rw 27', 'Kradenan, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(254, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Kradenan RT 54 RW 27', 'Kradenan, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(255, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANSASI Kagok RT 58 RW 2 ', 'Kagok, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(256, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Kagok RT 60 RW 30 ', 'Kagok, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(257, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Malangan RT17 RW 09 ', 'Malangan, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(258, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Malangan  Rt 17 Rw 09 ', 'Malangan, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(259, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'JAMBANISASI Karangasem Kulon', 'Karangasem Kulon, Srikayangan', '34.01.06', '34.01.06.2002', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(260, '2024', '8', '6', 'pelatihan', 'Pelatihan Pengolahan Tepung Bawang Merah dan Pemasaran', 'Kelompok Desa Prima Srikayangan', '34.01.06', '34.01.06.2002', 30000000, '30', 'Orang', ' DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH', '0'),
(261, '2024', '6', '14', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Revitalisasi Lapangan Desa', 'Banguncipto', '34.01.06', '34.01.06.2008', 280000000, '1', 'Unit', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(262, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Talud Jalan Desa (SD N Banguncipto-Bantarjo)', 'Perempatan ke barat', '34.01.06', '34.01.06.2008', 105000000, '40', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(263, '2024', '6', '14', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pembinaan Karang Taruna', 'Banguncipto', '34.01.06', '34.01.06.2008', 45000000, '1', 'Lembaga', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(264, '2024', '6', '', 'pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Pelaksanaan Budaya dan Adat', 'Banguncipto', '34.01.06', '34.01.06.2008', 70000000, '6', 'Kegiatan', 'DINAS KEBUDAYAAN', '0'),
(265, '2024', '7', '11', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Peningkatan Kapasitas LKK Kalurahan Banguncipto', 'Banguncipto', '34.01.06', '34.01.06.2008', 50000000, '5', 'Lembaga', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(266, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Jalan Usaha Tani', 'Wetan Kenteng, Demangrejo', '34.01.06', '34.01.06.2001', 200000000, '500', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(267, '2024', '6', '22', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Wetan Kenteng, Demangrejo', '34.01.06', '34.01.06.2001', 200000000, '500', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(268, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan RTLH', 'Belik RT 15 RW 07 Demangrejo', '34.01.06', '34.01.06.2001', 50000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(269, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Demangan, Demangejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(270, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Demangan, Demangejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(271, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Karang Patihan, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(272, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Karang Patihan, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(273, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Kijan, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(274, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Kijan, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(275, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Belik, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(276, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi ', 'Belik, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(277, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi ', 'Banaran, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(278, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Banaran, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(279, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Jambanisasi', 'Kenteng, Demangrejo', '34.01.06', '34.01.06.2001', 2500000, '1', 'Unit', 'DINAS KESEHATAN', '0'),
(280, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Jalan', 'Kalibondol-Gunung Rawas', '34.01.06', '34.01.06.2007', 400000000, '2400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(281, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Usaha Tani', 'Gunung Rawas, Sentolo', '34.01.06', '34.01.06.2007', 250000000, '90', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(282, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Talud', 'Gunung Rawas, Sentolo', '34.01.06', '34.01.06.2007', 150000000, '600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(283, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH ', 'Sentolo Lor,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(284, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Gunung Rawas,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(285, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Gedangan,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(286, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Jangkang Lor,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(287, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Jelok,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(288, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Kalibondol,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(289, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', 'Siwalan,  Sentolo', '34.01.06', '34.01.06.2007', 15000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(290, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan ruas jl Banyumeneng lor-Plelen', 'Kemaras-Parakan', '34.01.07', '34.01.07.2007', 1000000000, '500', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(291, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Jalan dg hot mix', 'Jalan Ngruno - Gunung pentul', '34.01.07', '34.01.07.2002', 1000000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(292, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Cor blok PAUD - Joglo', 'Kroco RT 20', '34.01.07', '34.01.07.2006', 210000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(293, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'JUT Bulak Klegen', 'Klegen RT 13', '34.01.07', '34.01.07.2006', 250000000, '2100', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(294, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Corblok Jalan tengah Jl. Ontorejo ', 'Girinyono RT 43', '34.01.07', '34.01.07.2006', 80000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(295, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Aspal Balai Desa Sendangsari - Kroco', 'Klegen,  Kroco Rt 17,RT 16, RT 22', '34.01.07', '34.01.07.2006', 460000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(296, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perbaikan Jalan Cumetuk  - Kradenan', 'Cumetuk, Kedungsogo, Kradenan', '34.01.07', '34.01.07.2003', 500000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(297, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lanjutan Cor jalan Jatilembreh-Jamus', 'Clawer RT 32', '34.01.07', '34.01.07.2005', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(298, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Drainase dan gorong-gorong', 'Dayakan RT 15', '34.01.07', '34.01.07.2005', 500000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(299, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Corblok Jalan', 'Serut RT 19-21', '34.01.07', '34.01.07.2005', 225000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(300, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Aspal Jalan Kabupaten', 'Lanjutan Pembangunan Aspal jalan Janturan s.d Jombokan (Balai Kalurahan - Siluwok)', '34.01.07', '34.01.07.2001', 1200000000, '3600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(301, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Pengelolaan sampah (Pelatihan)', 'BS Permika muda, BS Aisiyah, BS Widodaren, BS Giri Wangi, BS Permata', '34.01.07', '34.01.07.2007', 20000000, '5', 'BS (Bank Sampah)', 'DINAS LINGKUNGAN HIDUP', '0'),
(302, '2024', '7', '18', 'pelatihan', 'Pelatihan pembuatan pupuk', 'Kelompok Tani Marsudi Tani', '34.01.07', '34.01.07.2002', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(303, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Restoking Ikan Nila', 'Kali Pening RT 26 RW 12', '34.01.07', '34.01.07.2002', 900000, '3000', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(304, '2024', '7', '9', 'pelatihan', 'Pelatihan Pengembangan Wisata Desa', 'Masyarakat Kalurahan Kedungsari', '34.01.07', '34.01.07.2003', 20000000, '30', 'Orang', 'DINAS PARIWISATA', '0'),
(305, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Traktor lahan kering dan sprayer, KWT Mawar lestari Padukuhan Gegunung, 1 paket', 'KWT Mawar Lestari, Gegunung', '34.01.07', '34.01.07.2006', 21000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(306, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Penambahan modal usaha & bibit  kelompok ternak', 'Kalurahan Margosari', '34.01.07', '34.01.07.2004', 20000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(307, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Pelatihan Pengolahan sampah plastik dan kompos', 'KWT Tri Jaya Barokah, Derwolo', '34.01.07', '34.01.07.2005', 30000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(308, '2024', '7', '', 'pelatihan', 'Pelatihan industri kreatif kayu (karangtaruna)', 'Karangtaruna Dusun Clawer', '34.01.07', '34.01.07.2005', 12750000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(309, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Penguatan Kelembagaan Kelompok Tani', 'KWT Marsudi Luhur, KWT Sari Mulyo, KT Manunggal Roso', '34.01.07', '34.01.07.2001', 25000000, '3', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(310, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Droping Air, Pedukuhan Tankisan 1 dan Tangkisan 2', '', '34.01.08', '34.01.08.2001', 10000000, '20', 'Paket', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(311, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Poklahsar Lancar Nigunani Anjir (34.01.08.HGW.LAHSAR 03.022)', '', '34.01.08', '34.01.08.2002', 50000000, '1', 'Paket', 'DINAS KELAUTAN PERIKANAN', '0'),
(312, '2024', '7', '1', 'peningkatan kemampuan manajemen dan produktivitas', 'Pokdakan Mino Argo Sango  1, Pokdakan Banyu Mili Kalibuko', '', '34.01.08', '34.01.08.2004', 60000000, '2', 'Paket', 'DINAS KELAUTAN PERIKANAN', '0'),
(313, '2024', '6', '7', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan IPAH  Tangkisan 1 dan Tangkisan 2', '', '34.01.08', '34.01.08.2001', 45000000, '6', 'unit', 'DINAS LINGKUNGAN HIDUP', '0'),
(314, '2024', '8', '7', 'pelestarian alam dan lingkungan hidup', 'Penanaman Pohon di daerah tangkapan Mata Air dan Sungai KT. Wono Karyo  Kliripan', '', '34.01.08', '34.01.08.2002', 10000000, '1', 'Paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(315, '2024', '6', '9', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jemparingan Braja Lungit Kliripan', '', '34.01.08', '34.01.08.2002', 50000000, '1', 'Paket', 'DINAS PARIWISATA', '0'),
(316, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jambanisasi', '', '34.01.08', '34.01.08.2001', 15000000, '6', 'Unit', 'DINAS KESEHATAN', '0'),
(317, '2024', '6', '3', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jambanisasi', '', '34.01.08', '34.01.08.2004', 62500000, '25', 'Unit', 'DINAS KESEHATAN', '0'),
(318, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', '', '34.01.08', '34.01.08.2004', 150000000, '10', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(319, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan Peningkatan Jalan Ngaseman -Kec.Kokap (2.08.02.0005)', '', '34.01.08', '34.01.08.2002', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(320, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  ruas jalan clapar-kalingiwo, clereng  (1.08.03.008)  Pedukuhan Clapar III', '', '34.01.08', '34.01.08.2003', 500000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(321, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Girinyono - Tamanan (2.08.01.007)', '', '34.01.08', '34.01.08.2003', 440000000, '220', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(322, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Ruas Sermo lor - Soko ((2.08.03.005)', '', '34.01.08', '34.01.08.2003', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(323, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Talud. Kalibiru-Clapar (2.08.01.003)', '', '34.01.08', '34.01.08.2003', 35000000, '50', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(324, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Jalan Lokal Primer 1 Kokap-Kalirejo (1.08.02.005) di Gunung Kukusan, Kab. Kulon Progo', '', '34.01.08', '34.01.08.2004', 600000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(325, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Talud Sangon-Kalirejo (1.08.04.012) Sangon - Kalirejo', '', '34.01.08', '34.01.08.2004', 280000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `aktifitas`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`, `status`) VALUES
(326, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Talud Pripih-Kalirejo (1.08.01.0001', '', '34.01.08', '34.01.08.2004', 154000000, '220', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(327, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Pelebaran dan peningkatan Jalan Sungapan - Sermo (1.08.03.009) sepanjang ', '', '34.01.08', '34.01.08.2005', 480000000, '240', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(328, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Jalan  Ruas Segajih-Clapar (2.08.05.001)', '', '34.01.08', '34.01.08.2005', 400000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(329, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jembatan', 'Di padukuhan Tapen Jalan kabupaten Lokal primer I Ruas Karangwuluh - SP Sangon (1.01.15.012), Kab. Kulon Progo', '34.01.08', '34.01.08.2001', 400000000, '1', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(330, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jaringan Irigasi Permukaan', 'Kriyan - Ngulakan', '34.01.08', '34.01.08.2002', 100000000, '100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(331, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'RTLH', '', '34.01.08', '34.01.08.2004', 200000000, '10', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(332, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'CERMIN Ruas  Gunung Penthol - Hargorejo (1.07.02.002)  Anjir - Penggung', '', '34.01.08', '34.01.08.2002', 24000000, '4', 'Unit', 'DINAS PERHUBUNGAN', '0'),
(333, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'CERMIN Banyak tikungan tajam dan rawan kecelakaan di ruas jalan lokal primer  (             ) ', '', '34.01.08', '34.01.08.2003', 12000000, '2', 'Unit', 'DINAS PERHUBUNGAN', '0'),
(334, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Pemberdayaan Masyarakat dalam Penganeka ragaman konsusi pangan berbasis sumberdaya lokal KWT Sedyo Rukun Kadigunung', '', '34.01.08', '34.01.08.2001', 30000000, '1', 'klpk', 'DINAS PERTANIAN DAN PANGAN', '0'),
(335, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Pemberdayaan Masyarakat dalam Penganeka ragaman konsusi pangan berbasis sumberdaya lokal KWT Amrih Maju Teganing I', '', '34.01.08', '34.01.08.2005', 30000000, '1', 'klpk', 'DINAS PERTANIAN DAN PANGAN', '0'),
(336, '2024', '7', '18', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Pelatihan Budidaya Tanaman Manggis KT Sarwoguno, KT Mulyodadi  Teganing II', '', '34.01.08', '34.01.08.2005', 60000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(337, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Peremajaan Tanaman Kelapa KT Sempulur   Ngaseman', '', '34.01.08', '34.01.08.2002', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(338, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Sprayer  KT. Maju  Kriyan', '', '34.01.08', '34.01.08.2002', 10000000, '10', 'Unit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(339, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Traktor Gapoktan Sidomulyo', '', '34.01.08', '34.01.08.2001', 45000000, '1', 'Unit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(340, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bibit Kambing Bligon  KWT Kebonku Penggung', '', '34.01.08', '34.01.08.2002', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(341, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bibit Kambing Bligon  KT. Panca Karya Tegiri 1', '', '34.01.08', '34.01.08.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(342, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit Sapi KT Giri Maju Tegiri 1, KT Sejahtera  Claar 3', '', '34.01.08', '34.01.08.2003', 160000000, '2', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(343, '2024', '7', '18', 'pelatihan', 'Pelatihan olahan Nira Kelapa  KT Sarwoguno Menguri', '', '34.01.08', '34.01.08.2005', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(344, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Fasilitasi Pupuk Organik KT Suka Tani Nganti, KT.Ngudi Makmur Sebatang, KT Sederhana Tirto', '', '34.01.08', '34.01.08.2005', 60000000, '3', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(345, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Fasilitasi Rumah Produksi Pupuk KT Sarwoguno Menguri', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(346, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Peremajaan Pohon Kelapa (Genjah enthok) KT Sarwoguno Menguri, KT Mulyodadi Teganing III', '', '34.01.08', '34.01.08.2005', 17500000, '350', 'btg', 'DINAS PERTANIAN DAN PANGAN', '0'),
(347, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bibit Tanaman Alpukat KT Mulyodadi, Teganing III', '', '34.01.08', '34.01.08.2005', 10000000, '200', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(348, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantun Peralatan Produksi Olahan Nira Kelapa : Kelompok Tani    Sarwodadi  Menguri', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(349, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Kelompok Pegrajin Sangkar Burung  Kelompok KRIYAN MAKARYO', '', '34.01.08', '34.01.08.2002', 20000000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(350, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Sarana Prasarana Pengrajin Kayu  Hargotrito , Crangah', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'Paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(351, '2024', '7', '', 'penguatan kelembagaan sosial ekonomi masyarakat', 'Koordinasi, Sinkronisasi dan Pelaksanaan Pemberdayaan Industri dan Peran Serta Masyarakat UKM Olahan Pangan , Olahan dan Packaging   UMKM Lestari Clapar', '', '34.01.08', '34.01.08.2003', 20000000, '1', 'paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(352, '2024', '7', '22', 'pelatihan', 'Pelatihan Komputer dan IT Karang Taruna', '', '34.01.08', '34.01.08.2001', 20000000, '1', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(353, '2024', '7', '22', 'pelatihan', 'Pelatihan IT Sub.Karang Taruna Nganti dan Pedukuhan Tirto', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(354, '2024', '7', '22', 'pelatihan', 'Pelatihan Bahasa Inggris untuk Karang Taruna', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(355, '2024', '7', '22', 'pelatihan', 'Pelatihan Membatik', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(356, '2024', '7', '22', 'pelatihan', 'Pelatihan  Las Sub.Karangtaruna Klepu', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(357, '2024', '7', '22', 'pelatihan', 'Pengolahan Bambu di Menguri', '', '34.01.08', '34.01.08.2005', 20000000, '1', NULL, 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(358, '2024', '7', '22', 'pelatihan', 'Pelatihan Menjahit  ', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(359, '2024', '7', '22', 'pelatihan', 'Pelatihan Percetakan, Pedukuhan Crangah', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'klp', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(360, '2024', '7', '22', 'pelatihan', 'Pelatihan Pertukangan Kelompok Pedukuhan Keji', '', '34.01.08', '34.01.08.2005', 20000000, '1', 'klp', 'DINAS TENAGA KERJA DAN TRANSMIGRASI ', '0'),
(361, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan jalan aspal, bangket dan drainase (ruas jalan Primer II Giripurwo s/d Sentoyo) (Sekaro, Bulu, Kebonromo)', '', '34.01.09', '34.01.09.2002', 342000000, '2850', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(362, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan  jalan aspal dan talud (Grigak, Nglengkong, Kebonromo, Sekaro)', '', '34.01.09', '34.01.09.2002', 350000000, '3400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(363, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cermin tikungan cembung', '', '34.01.09', '34.01.09.2002', 5000000, '1', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(364, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Ruas Jalan Beteng - Pucung', '', '34.01.09', '34.01.09.2001', 332500000, '350', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(365, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perawatan Jalan/pengaspalan Ruas jalan Branti - Gondangan', '', '34.01.09', '34.01.09.2001', 210000000, '2100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(366, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan talud dan pengaspalan jalan lokal primer II Turusan-Purwosari (Kalingiwo)', '', '34.01.09', '34.01.09.2003', 200000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(367, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Kualitas Jalan Kabupaten Ruas Tlogosari-Purwosari (Pengaspalan jalan) (Padukuhan Patihombo, Wonosari, Ngroto, Ngaglik, Penggung)', '', '34.01.09', '34.01.09.2004', 1000000000, '14000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(368, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan Kualitas Jalan Kabupaten Jalur Gedong - Gendu (Pengaspalan jalan) (Padukuhan Gedong, Wonosari, Ngroto)', '', '34.01.09', '34.01.09.2004', 10000000, '14000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(369, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sokomoyo, RT 007, RW 002', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(370, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sokomoyo, RT 008, RW 002', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(371, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Gunungkelir, RT 030, RW 007', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(372, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sonyo, RT 037, RW 008', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(373, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sonyo, RT 037, RW 008\n', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(374, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sonyo, RT 038, RW 009', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(375, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Kembang, RT 048, RW 011', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(376, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Sumberjo, RT 060, RW 015', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(377, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Beteng, RT 063, RW 016', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(378, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Beteng 065, RW 017', '34.01.09', '34.01.09.2001', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(379, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Ngroto RT 02 RW 01', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(380, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Tempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(381, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Tempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(382, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Tempel RT 26 RW 12', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(383, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Tileng RT 50 RW 23', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(384, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Kepek RT 31 RW 14', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(385, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Kepek RT 32 RW 14', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(386, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Kalingiwo RT 38 RW 17', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(387, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Banaran RT 41 RW 19', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(388, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'Muten RT 08 RW 04', '34.01.09', '34.01.09.2003', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(389, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'GEDONG, RT 50 RW 25', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(390, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'NGAGLIK, RT 25, RW 13', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(391, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'NOGOSARI, RT 36, RW 18', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(392, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'KARANGREJO, RT 43, RW 22', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(393, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'PONCES, RT 47, RW 23', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(394, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'PRANGKOKAN, RT 2 RW 1', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(395, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'PATIHOMBO, RT 16 RW 8', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(396, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'NGROTO, RT 24 RW 12', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(397, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'WONOSARI, RT 17 RW 9', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(398, '2024', '6', '10', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos RTLH', 'TEGALSARI, RT 6 RW 3', '34.01.09', '34.01.09.2004', 20000000, '1', 'Rumah', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(399, '2024', '6', '', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah alat kesenian', '', '34.01.09', '34.01.09.2004', 189750447, '1', 'Ls', 'DINAS KEBUDAYAAN', '0'),
(400, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya (Padukuhan Sukomoyo RT 12)', '', '34.01.09', '34.01.09.2001', 100000000, '12', 'RT', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI', '0'),
(401, '2024', '7', '11', 'peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Mesin DTG Sablon Kaos Digital', '', '34.01.09', '34.01.09.2001', 50000000, '', NULL, 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(402, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Alat dan Rumah Produksi Pengolahan Bubuk Coklat (Pedukuhan Kembang)', '', '34.01.09', '34.01.09.2001', 278000000, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(403, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya (Pedukuhan Muten)', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI', '0'),
(404, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya (Pedukuhan Kalingiwo)', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI', '0'),
(405, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya (Pedukuhan Kepek) (Balai Desa-Kayangan)', '', '34.01.09', '34.01.09.2003', 100000000, '300', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI DAN TRANSMIGRASI', '0'),
(406, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Peningkatan jalan Lokal Primer II ', 'Sambiroto (Watukodok-Gegunung ) Banyuroto', '34.01.10', '34.01.10.2001', 150000000, '1', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(407, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan jalan', 'Keso-Giripurwo Banyuroto', '34.01.10', '34.01.10.2001', 200299933, '1', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(408, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Perawatan jalan aspal Lokal Primer II ', 'Sambiroto-Gayam-Tawang Banyuroto', '34.01.10', '34.01.10.2001', 180143350, '2', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(409, '2024', '6', '', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Jaminan Hidup PMKS Miskin (usia produktif)', 'Banyuroto', '34.01.10', '34.01.10.2001', 36000000, '10', 'Orang', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(410, '2024', '6', '', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Bantuan Disabilitas', 'Banyuroto', '34.01.10', '34.01.10.2001', 35000000, '30', 'Orang', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(411, '2024', '7', '', 'penguatan kelembagaan sosial ekonomi masyarakat;  ', 'Pembinaan POKWASMAS', 'Banyuroto', '34.01.10', '34.01.10.2001', 19799597, '4', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(412, '2024', '7', '', 'pelatihan', 'Pelatihan  Kelp Tani', 'Banyuroto', '34.01.10', '34.01.10.2001', 80000000, '8', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(413, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Kelompok Tani ( Benih dan Alsitan)', 'Banyuroto', '34.01.10', '34.01.10.2001', 20000000, '8', 'Kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(414, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit buah-buahan', 'Banyuroto', '34.01.10', '34.01.10.2001', 99500000, '30000', 'Batang', 'DINAS PERTANIAN DAN PANGAN', '0'),
(415, '2024', '7', '22', 'pelatihan', 'Pelatihan Las dan Montir', 'Banyuroto', '34.01.10', '34.01.10.2001', 100090000, '1', 'Paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(416, '2024', '7', '', 'pelatihan', 'Bantuan KUBE', 'Banyuroto', '34.01.10', '34.01.10.2001', 125005000, '8', 'Kelompok', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(417, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyelenggaraan Jalan Kabupaten/ Kota (Aspal Jalan)', 'Donomerto-Kaliandong (Donomulyo)', '34.01.10', '34.01.10.2002', 473416241, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(418, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyelenggaraan Jalan Kabupaten/ Kota (Aspal Jalan)', 'Banguncipto-Donomerto (Donomulyo)', '34.01.10', '34.01.10.2002', 556832482, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(419, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Pengembangan Prasarana Pertanian (Bantuan Power Treser)', 'Donomulyo', '34.01.10', '34.01.10.2002', 15000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(420, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Pengembangan Prasarana Pertanian (Bantuan Power Treser)', 'Donomulyo', '34.01.10', '34.01.10.2002', 70000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(421, '2024', '6', '10', ' pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya ', 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/ Kota', 'Donomulyo', '34.01.10', '34.01.10.2002', 77565011, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(422, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengelolaan dan Pengembangan Sistem Air Limbah Domestik dalam Daerah Kabupaten/ Kota', 'Donomulyo', '34.01.10', '34.01.10.2002', 25851230, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(423, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Lantainisasi', 'Donomulyo', '34.01.10', '34.01.10.2002', 45000000, '10', 'Paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(424, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Disabilitas', 'Donomulyo', '34.01.10', '34.01.10.2002', 10000000, '10', 'Paket', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(425, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan Jalan', 'Cepitan (Wijimulyo)', '34.01.10', '34.01.10.2003', 141852000, '9384', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(426, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan', 'Rejoso - Donomulyo (Wijimulyo)', '34.01.10', '34.01.10.2003', 90000000, '100', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(427, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan ', 'Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 92244477, '70', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(428, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Usahatani', 'Demen-Cepitan (Wijimulyo)', '34.01.10', '34.01.10.2003', 55000000, '30', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(429, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bangket Jalan ', 'Dukuh-Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 62700000, '57', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(430, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan', 'Dukuh-Demen (Wijimulyo)', '34.01.10', '34.01.10.2003', 55000000, '50', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(431, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Cor Blok Jalan', 'Cepitan RT 66 (Wijimulyo)', '34.01.10', '34.01.10.2003', 44000000, '40', 'm3', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(432, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'SPAL (Saluran Pembuangan Air Limbah)', 'Wijimulyo', '34.01.10', '34.01.10.2003', 14000000, '7', 'Unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(433, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit Durian Unggul', 'Wijimulyo', '34.01.10', '34.01.10.2003', 10265492, '50', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(434, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit Alpokat', 'Wijimulyo', '34.01.10', '34.01.10.2003', 10000000, '30', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(435, '2024', '7', '', 'peningkatan kemampuan manajemen dan produktivitas', 'Pelatihan Ekonomi Produktif untuk Penyandang Disabilitas', 'Wijimulyo', '34.01.10', '34.01.10.2003', 75000000, '1', 'Unit', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(436, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bantuan Traktor Kecil', 'Wijimulyo', '34.01.10', '34.01.10.2003', 26000000, '1', 'Unit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(437, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Corblok dan Bangket ', 'Klampis (Bancik, Sawah Gedhe) Tanjungharjo', '34.01.10', '34.01.10.2004', 204890958, 'P 150m L 3m T 10cm', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(438, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Klampis RT 19 RW 07 Tanjungharjo', '34.01.10', '34.01.10.2004', 58000000, 'P 260m L 25m T 10cm', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(439, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'jalan tanggulangin - klampis Tanjungharjo', '34.01.10', '34.01.10.2004', 70320766, '300', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(440, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Jalan', 'Sadang RT 32 (Ruas Kemukus-Besilen) Tanjungharjo', '34.01.10', '34.01.10.2004', 275000000, '1500', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(441, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jaringan Irigasi Tersier', 'Klajuran (selatan PIN) Tanjungharjo', '34.01.10', '34.01.10.2004', 60000000, 'P 150 m L 05 T 05', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(442, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Bangket Jalan', 'Klajuran RT 12 Tanjungharjo', '34.01.10', '34.01.10.2004', 17900000, 'P 120m L 03m T 055m', NULL, 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(443, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Pembangunan RTLH', 'Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 120000000, '8', 'KK', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK ', '0'),
(444, '2024', '6', '', 'bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Jambanisasi', 'Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 24000000, '16', 'KK', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK ', '0'),
(445, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Bibit Kelengkeng bagi Kelompok Tani', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 24213653, '345', 'Bibit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(446, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Bibit Pepaya bagi Kelompok Tani', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 5223589, '1714', 'Bibit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(447, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Sapi bagi Kelompok Tani', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 30000000, '2', 'Ekor', 'DINAS PERTANIAN DAN PANGAN', '0'),
(448, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Ayam Betina untuk 58 KK', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 17400000, '232', 'Ekor', 'DINAS PERTANIAN DAN PANGAN', '0'),
(449, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Kambing Bligon jantan bagi Kelompok Tani', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 27000000, '12', 'Ekor', 'DINAS PERTANIAN DAN PANGAN', '0'),
(450, '2024', '7', '18', 'peningkatan kemampuan manajemen dan produktivitas', 'Pemberian Bantuan Kambing Bligon betina bagi Kelompok Tani', 'Se Kalurahan Tanjungharjo', '34.01.10', '34.01.10.2004', 16200000, '12', 'ekor', 'DINAS PERTANIAN DAN PANGAN', '0'),
(451, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Sensit Jalan Usaha Tani, JUT', 'Nanggulan, Karang (Jatisarono)', '34.01.10', '34.01.10.2005', 98696970, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(452, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jalan Aspal', 'Karang RT 30,31 dan Bejaten (Jatisarono)', '34.01.10', '34.01.10.2005', 165021200, '2200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(453, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengaspalan jalan', 'Jatingarang Lor RT 45 (Jatisarono)', '34.01.10', '34.01.10.2005', 153600000, '1600', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(454, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jalan Aspal', 'Sepat-Kamal (jatisarono)', '34.01.10', '34.01.10.2005', 157466136, '800', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(455, '2024', '6', '3', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Diklat Kader Kesehatan', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 11671380, '48', 'orang', 'DINAS KESEHATAN KP', '0'),
(456, '2024', '7', '1', 'Pelatihan', 'Pelatihan Ketrampilan PKK Kalurahan (lomba cipta menu)', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 24000000, '12', 'lembaga', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(457, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pelatihan dan Baantuan KWT', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 2500000, '2', 'kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(458, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Kegiatan Kelompok Tani (komposer/fermentasi/Pupuk Organik)', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 6000000, '3', 'kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(459, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Kegiatan Kelompok Ikan', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 29423389, '5', 'kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(460, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit Ikan', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 8000000, '4', 'kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(461, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bibit Buah-bahan', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 15000000, '600', 'batang', 'DINAS PERTANIAN DAN PANGAN', '0'),
(462, '2024', '7', '6', 'Penguatan kelembagaan sosial ekonomi masyarakat', 'Diklat Kepemimpinan Karang Taruna/ Pelatihan di bidang perdagangan pengusaha dengan  Online', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 10000000, '1', 'paket', ' DINAS KOPERASI USAHA MIKRO KECIL MENENGAH', '0'),
(463, '2024', '6', '', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Santunan Rumah Tangga Miskin', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 45000000, '45', 'orang', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(464, '2024', '6', '', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Santunan Yatim Piatu', 'Kalurahan Jatisarono', '34.01.10', '34.01.10.2005', 40000000, '4', 'lembaga', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(465, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Gapura Selamat Datang Masuk Kabupaten Kulon Progo', 'Kembang ', '34.01.10', '34.01.10.2006', 280000000, '1', 'buah', 'DINAS PEKERJAAN UMUM', '0'),
(466, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman', 'Kembang ', '34.01.10', '34.01.10.2006', 25000000, '300', 'buah', 'DINAS PERTANIAN DAN PANGAN', '0'),
(467, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Berem Jalan Inspeksi Saluran Tersier Kalisangga', 'Kembang ', '34.01.10', '34.01.10.2006', 146625513, '1', 'paket', 'DINAS PEKERJAAN UMUM', '0'),
(468, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bangket Jalan Kalisoka', 'Kembang ', '34.01.10', '34.01.10.2006', 200000000, '1', 'paket', 'DINAS PEKERJAAN UMUM', '0'),
(469, '2024', '7', '22', 'Pelatihan', 'Pendidikan dan pelatihan ketrampilan\nbagi pencari kerja', 'Kembang ', '34.01.10', '34.01.10.2006', 20000000, '4', 'paket', 'DINAS TENAGA KERJA', '0'),
(470, '2024', '7', '18', 'Pelatihan', 'Pelatihan Sekolah Lapang\n(SLPTT/SLPHT) untuk Petani', 'Kembang ', '34.01.10', '34.01.10.2006', 20000000, '4', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(471, '2024', '7', '', 'Pelatihan', 'Pelatihan kelompok ekonomi produktif', 'Kembang ', '34.01.10', '34.01.10.2006', 18875171, '1', 'paket', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(472, '2024', '7', '10', 'Pelatihan', 'Pelatihan Lingkungan Sehat Sanitasi\nTotal Berbasis Masyarakat Kalurahan', 'Kembang ', '34.01.10', '34.01.10.2006', 25000000, '1', 'paket', 'DINAS PEKERJAAN UMUM', '0'),
(473, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Kaliduren RT.07', '34.01.11', '34.01.11.2001', 197209800, '90', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(474, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Gowok RT.01', '34.01.11', '34.01.11.2001', 196259500, '60', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(475, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Pringtali', '34.01.11', '34.01.11.2001', 20000000, '8', 'titik', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(476, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Dangsambuh', '34.01.11', '34.01.11.2001', 1500000000, '1500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(477, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Pelem', '34.01.11', '34.01.11.2001', 700000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(478, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jln. Kabupaten Pelem Dukuh - Jarakan 1.09.04.015 ', '34.01.11', '34.01.11.2001', 2147483647, '3800', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(479, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jln. Kabupaten Pringtali - Dungromo 1.09.04.016', '34.01.11', '34.01.11.2001', 300000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(480, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Jln. Kabupaten Tegalsari -  Kebonharjo(Kleben) 1.09.04.014', '34.01.11', '34.01.11.2001', 1300000000, '1300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(481, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Pengaspalan  Jln. Lingkungan Kaliduren RT.07', '34.01.11', '34.01.11.2001', 700000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(482, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jln. Ponces - Pringtali 2.09.04.006', '34.01.11', '34.01.11.2001', 1000000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(483, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jln. Kabupaten BD. Kebonharjo - Kedunggupit 2.12.01.001', '34.01.11', '34.01.11.2001', 900000000, '900', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(484, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Peningkatan Jln. Prangkokan - Ngori (1.09.04.017)', '34.01.11', '34.01.11.2001', 2000000000, '2000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(485, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jaringan Irigasi\n', 'JIDES Curug Glimpang Gowok', '34.01.11', '34.01.11.2001', 199500000, '325', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(486, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Embung', 'Curug Glimpang Gowok', '34.01.11', '34.01.11.2001', 235000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(487, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jaringan Irigasi\n', 'JIDES Dung Salak Jeringan (P3A Dung Salak) Ketua Barsidi, SPd', '34.01.11', '34.01.11.2001', 350000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(488, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jaringan Irigasi\n', ' JIDES Dung Surateman', '34.01.11', '34.01.11.2001', 185000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(489, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Embung', 'Dung Surateman Kleben', '34.01.11', '34.01.11.2001', 250000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(490, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Pembangunan Sistem Penyediaan Sistem Air Minum ', 'Dangsambuh', '34.01.11', '34.01.11.2001', 65000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(491, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Berkala Jalan', 'Jln.Ngori-Nogosari 1.12.01.001 (Sepanjang Gunung Kucir -  Ngaran II)', '34.01.11', '34.01.11.2002', 1500000000, '1500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(492, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Pembangunan Sistem Penyediaan Sistem Air Minum ', 'Gowok', '34.01.11', '34.01.11.2001', 110392000, '1', 'paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `aktifitas`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`, `status`) VALUES
(493, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Rehabilitasi Jembatan', 'Jln. Kabupaten Pringtali - Dungromo 1.09.04.016 (Lokasi Dung Laronan)', '34.01.11', '34.01.11.2002', 198500000, '10', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(494, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Ruas jalan : Ngargosari - Gayam nomor 510', '34.01.11', '34.01.11.2006', 500000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(495, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jembatan', 'Ngaliyan RT 12 RW 03', '34.01.11', '34.01.11.2006', 350000000, '96', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(496, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan bangket', 'Trayu RT 33 RW 13 dan Ngaliyan RT 02 RW 01', '34.01.11', '34.01.11.2006', 95000000, '7 dan 8', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(497, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehab Jembatan', 'Trayu RT 33 RW 13 dan Ngaliyan RT 02 RW 01', '34.01.11', '34.01.11.2006', 600000000, '80 dan 60', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(498, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Ruas jalan : Canden - Mbojong - Mendolo nomor 730', '34.01.11', '34.01.11.2006', 750000000, '1500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(499, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Corblok Jalan', 'Ruas jalan : Segitik  - Tritis nomor 514', '34.01.11', '34.01.11.2007', 300000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(500, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'perbaikan rumah tidak layak huni', 'Ngaliyan : 3 , Pucung : 3 , Petet : 3 , Tegalsari : 3 , Tritis : 6 , Trayu : 3 . Tulangan : 3 , Ngaliyan Gunung A : 3 , Ngaliyan Gunung B : 3 , Canden : 3 , Nguntuk - untuk : 3 ', '34.01.11', '34.01.11.2006', 612000000, '36', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(501, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jembatan', 'Ruas 124 Ngaliyan-Trayu/Suroloyo', '34.01.11', '34.01.11.2006', 500000000, '40', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(502, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan/rehabilitasi Irigasi ', ' Ngaliyan Gunung B ', '34.01.11', '34.01.11.2006', 750000000, '800', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(503, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Di Pedukuhan Gegerbajing Ruas Gegerbajing-Jetis', '34.01.11', '34.01.11.2007', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(504, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Bangket  Jalan', 'Di Pedukuhan Plono Barat dan Ngemplak Ruas Jalan Plono-Sinogo', '34.01.11', '34.01.11.2007', 1500000000, '50 dan 20', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(505, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Ngemplak,Pagerharjo', '34.01.11', '34.01.11.2007', 2000000000, '60', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(506, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Bangket Jalan', 'Sinogo,Pagerharjo', '34.01.11', '34.01.11.2007', 500000000, '53', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(507, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Bangket  Jalan dan Drainase', 'Padukuhan Suren Ruas Jalan Pengos - Serguyu', '34.01.11', '34.01.11.2007', 2147483647, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(508, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Di Padukuhan Jobolawang,Blekok 2', '34.01.11', '34.01.11.2007', 500000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(509, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Kabupaten Ruas Serguyu - Ngori', 'Suren - Kalinongko', '34.01.11', '34.01.11.2007', 200000000, '2', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(510, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Kabupaten Ruas Kemesu - Sinogo', 'Sinogo dan Kemesu', '34.01.11', '34.01.11.2007', 500000000, '2', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(511, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan/rehabilitasi Irigasi ', 'Persawahan Ngrahu', '34.01.11', '34.01.11.2003', 200000000, '20', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(512, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'RT 52 RW 25, Padukuhan Ngaran II, Banjarsari, Jalan Lokal Primer II Ruas 466/2.12.02.004 Ngaran II-Balong, Banjarsari', '34.01.11', '34.01.11.2002', 770000000, '370', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(513, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'RT 08 RW 03, Padukuhan Kaliapak, Banjarsari, Jalan Lokal Primer I Ruas 194 Clumprit-Ps. Bendo, Banjarsari', '34.01.11', '34.01.11.2002', 1000000000, '480', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(514, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jaringan  Irigasi', 'RT 40 RW 19, Padukuhan Balong V, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 90000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(515, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial; ', 'Bansos RTLH', 'Banjarsari', '34.01.11', '34.01.11.2002', 330000000, '22', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(516, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Kabupaten No. 194 Ruas Clumprit - Pasar Bendo ', 'Pedukuhan Kaliapak Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 500000000, '1080', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(517, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Gedung Kantor', 'kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 500000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(518, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Kabupaten Ruas Ngaran II - Balong ', 'Jalan Kabupaten Ruas Ngaran II - Balong ', '34.01.11', '34.01.11.2002', 500000000, '3000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(519, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'jalan Kabupaten Ruas Balong I Banjarsari – Sendangmulyo Purwoharjo ', 'jalan Kabupaten Ruas Balong I Banjarsari – Sendangmulyo Purwoharjo ', '34.01.11', '34.01.11.2003', 250000000, '3000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(520, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'jalan Kabupaten Ruas Gunung Kucir - Taman ', 'jalan Kabupaten Ruas Gunung Kucir - Taman ', '34.01.11', '34.01.11.2002', 600000000, '5000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(521, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'jalan Kabupaten Ruas Nogosari - Ngori', 'jalan Kabupaten Ruas Nogosari - Ngori', '34.01.11', '34.01.11.2006', 300000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(522, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jalan Pertanian Ngaran III - Kaliwunglon', 'Jalan Pertanian Ngaran III - Kaliwunglon', '34.01.11', '34.01.11.2002', 400000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(523, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Jembatan Kaliwunglon', 'Jembatan Kaliwunglon', '34.01.11', '34.01.11.2002', 350000000, '1', 'paket', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(524, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Tukarjo - Bangunrejo', '34.01.11', '34.01.11.2003', 800000000, '1500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(525, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Taman - Gorolangu', '34.01.11', '34.01.11.2003', 1000000000, '2000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(526, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Pagutan - Sendangrejo', '34.01.11', '34.01.11.2003', 300000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(527, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jembatan', 'Jering Tukarjo - Pagutan', '34.01.11', '34.01.11.2003', 2000000000, '40', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(528, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jembatan', 'Sendangrejo', '34.01.11', '34.01.11.2003', 500000000, '6', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(529, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Plarangan - Tetes', '34.01.11', '34.01.11.2003', 300000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(530, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jaringan  Irigasi', 'Sendangrejo, Tukharjo, Besole, Taman, Bangunrejo, Puyang', '34.01.11', '34.01.11.2003', 1200000000, '6', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(531, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehap Gedung', 'Plarangan Purwoharjo', '34.01.11', '34.01.11.2003', 150000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(532, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Besole Sendangrejo Purwoharjo', '34.01.11', '34.01.11.2003', 300000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(533, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Program Pembangunan rumah tidak layak huni', 'Padukuhan Tukharjo,Bangunrejo,Plarangan, Taman, Puyang, Sendangrejo, Kalinongko, Sendangmulyo, Besole, Pagutan, Junut, Duwet, Kedungrong, Dukuh Purwoharjo', '34.01.11', '34.01.11.2003', 800000000, '40', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(534, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Bangket', 'Jalan Taman Gorolangu, Tukharjo Gorolangu, Sendangrejo -Pagutan', '34.01.11', '34.01.11.2003', 150000000, '120', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(535, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jembatan', 'Ruas Jalan No 1.12.05.008 Menggermalang, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 300000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(536, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Ruas jalan no 1.11.02.003 Sendat RT 65 RW 32 Gerbosari Samigaluh ', '34.01.11', '34.01.11.2005', 500000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(537, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'jalan Karang Gerbosari Samigaluh ke dusun Ketaon Gerbosari Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(538, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Keceme RT 78 RW 38, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 700000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(539, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Ruas Jalan Jati-Tlogo No 2.12.05.001 Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 250000000, '350', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(540, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Menggermalang RT 73 RW 36 Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(541, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Ruas Jalan Jati-Keceme No 2.12.05.001, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 2147483647, '3500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(542, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Tlogo RT 52 RW 26 hingga Kayugede RT 67 RW 33 Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 700000000, '1000', 'm2', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(543, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Ngroto, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 1000000000, '15', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(544, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Kayugede RT 70 RW 34 sampai Sendat RT 66 RW 32 Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 900000000, '125', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(545, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 1400000000, '2', 'km', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(546, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Jeruk, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 280000000, '400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(547, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Berkala Jalan', 'Kayugede, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 700000000, '1000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(548, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Ketaon RT 28 RW 14, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 1400000000, '2000', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(549, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan', 'Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '4400', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(550, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Ketaon RT 29 RW 15, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '500', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(551, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Ketaon, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 50000000, '30', 'titik', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(552, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Menggermalang, Gerbosari Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '750', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(553, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Jetis RT 41 RW 21, sampai RT 42 RW 21 Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 100000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(554, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Clumprit RT 37 RW 19,  Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 125000000, '275', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(555, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Karang, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 70000000, '100', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(556, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Jati, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 50000000, '30', 'titik', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(557, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Karang, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 50000000, '30', 'titik', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(558, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jembatan', 'Penghubung Tlogo-Sumbo, Tlogo RT 52 RW 26 Gerbosari, Samigaluh, Kab. Kulon Progo\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(559, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jembatan', 'Penghubung Jati-Tlogo, Tlogo RT 51 RW 26 Gerbosari, Samigaluh, Kab. Kulon Progo, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(560, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Kemiriombo-Manggis, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 350000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(561, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Kemiriombo, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 70000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(562, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Jetis, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 70000000, '700', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(563, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ngroto RT/RW 034/017, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(564, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ngroto RT/RW 032/016, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(565, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ngroto RT/RW 033/017, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(566, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ngroto RT/RW 013/016, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(567, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', '  Ketaon, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(568, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ketaon Rt 30/15, Gerbosari, Samigaluh \n , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(569, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ketaon Rt 30/15, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(570, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ketaon, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(571, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Ketaon, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(572, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Jeruk 13/07, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(573, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Jeruk 09/05, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(574, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Jeruk 13/07, Gerbosari, Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(575, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Kayugede Rt 068 Rw 033 Gerbosari Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(576, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Kayugede Rt 070 Rw 034 Gerbosari Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(577, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Menggermalang Rt 072 Rw 035 Gerbosari Samigaluh\n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(578, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Jati, Gerbosari, Samigaluh \n, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(579, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Keceme RT 77 RW 38 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(580, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Keceme RT 75 RW 37 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(581, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Keceme RT 75 RW 37 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(582, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Karang  RT 46 RW 23 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(583, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Manggis RT 25 RW 13 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(584, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Manggis RT 23 RW 132Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(585, '2024', '6', '10', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'perbaikan rumah tidak layak huni', 'Kayugede RT 67 RW 33 Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 20000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(586, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pemeliharaan Berkala Taman', 'Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 200000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(587, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(588, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Ketaon, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(589, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(590, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Jetis, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(591, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Ketaon, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(592, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Menggermalang, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(593, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'Jati, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(594, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pembangunan jaringan irigasi', 'DI Bimo Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 0, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(595, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan', 'Ruas Jalan Munggang Wetan-Nglambur No.Ruas 190/1.12.04.007', '34.01.11', '34.01.11.2004', 100000000, '150', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(596, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Gedung Kantor', 'Komplek Kalurahan Sidoharjo', '34.01.11', '34.01.11.2004', 150000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(597, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rehabilitasi Jaringan Irigasi', 'Gebang, Munggang Lor dan Sulur', '34.01.11', '34.01.11.2004', 150000000, '3', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(598, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Jln. Kabupaten Pelem Dukuh - Jarakan 1.09.04.015 ', '34.01.11', '34.01.11.2001', 85000000, '34', 'unit', 'DINAS PERHUBUNGAN', '0'),
(599, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Jln. Kabupaten Pringtali - Banjarsari 2.12.01.002', '34.01.11', '34.01.11.2002', 50000000, '20', 'unit', 'DINAS PERHUBUNGAN', '0'),
(600, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengadaan Guard Rail', 'Jalan Kabupaten Sp.Ngori - Nogosari 1.12.01.001 (Jeringan)', '34.01.11', '34.01.11.2006', 60000000, '2', 'unit', 'DINAS PERHUBUNGAN', '0'),
(601, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Jalan Kabupaten Ruas Serguyu- Ngori', '34.01.11', '34.01.11.2007', 200000000, '10', 'titik', 'DINAS PERHUBUNGAN', '0'),
(602, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Jalan Lokal Primer I Ruas Ngori-Nogosari, Gunung Kucir, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 75000000, '5', 'buah', 'DINAS PERHUBUNGAN', '0'),
(603, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Padukuhan Tukharjo,Bangunrejo,Plarangan, Taman, Puyang, Sendangrejo, Kalinongko, Sendangmulyo, Besole, Pagutan, Junut, Duwet, Kedungrong, Dukuh', '34.01.11', '34.01.11.2003', 280000000, '150', 'titik', 'DINAS PERHUBUNGAN', '0'),
(604, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengadaan Cermin Tikungan', 'Ruas Jalan Munggang Wetan - Nglambur No.Ruas 190/1.12.04.007', '34.01.11', '34.01.11.2004', 12000000, '6', 'unit', 'DINAS PERHUBUNGAN', '0'),
(605, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Ruas Jalan Boro -  Karang No.Ruas 174/1.11.02.003(Munggang Wetan Sidoharjo sd. Karang Gerbosari)', '34.01.11', '34.01.11.2004', 500000000, '50', 'unit', 'DINAS PERHUBUNGAN', '0'),
(606, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU', 'Nyemani, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 100000000, '50', 'titik', 'DINAS PERHUBUNGAN', '0'),
(607, '2024', '6', '11', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'TMMD', 'Jarakan', '34.01.11', '34.01.11.2001', 50000000, '1', 'kegiatan', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(608, '2024', '6', '11', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'TMMD', 'RT 54 RW 26, Padukuhan Ngaran III, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 150000000, '151', 'm', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(609, '2024', '6', '11', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'TMMD', 'RT 64 RW 29, Padukuhan Kaliwunglon, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 150000000, '151', 'm', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(610, '2024', '7', '11', 'Pelatihan', 'Pembinaan pengelolaan BUMDes', 'BUMDes Binangun Bantala Aji Banjarsari, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 10000000, '1', 'paket', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(611, '2024', '6', '11', 'penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Karya Bhakti', 'Padukuhan Duwet Rt. 48 Rw. 23  , Kalinongko Rt. 28 Rw. 14, Bangunrejo RT 8 Rw.4, Purwoharjo', '34.01.11', '34.01.11.2003', 1500000000, '2000', 'm', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(612, '2024', '7', '11', 'Pelatihan', 'Pembinaan pengelolaan BUMDes', 'pengurus Bumdes, Purwoharjo', '34.01.11', '34.01.11.2003', 10000000, '10 orang', 'orang/kelompok', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(613, '2024', '6', '11', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'pelaksanaan TMMD', 'ruas totogan keceme', '34.01.11', '34.01.11.2005', 400000000, '1', 'lokasi', 'DINAS PEMBERDAYAAN MASYARAKAT DESA PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '0'),
(614, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Kaliduren RT. 08', '34.01.11', '34.01.11.2001', 100000000, '72', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(615, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Pingtali (Gang Wungu)', '34.01.11', '34.01.11.2001', 100000000, '72', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(616, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Gowok RT.02-03', '34.01.11', '34.01.11.2001', 100000000, '72', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(617, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Besole, Tukharjo, Pagutan, Duwet, Bangunrejo, Kalinongko, Dukuh, Taman, Sendangmulyo, Junut, Sendangrejo Purwoharjo', '34.01.11', '34.01.11.2003', 1100000000, '11', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(618, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Manggis RT 25 RW 13 Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(619, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Ngroto Rt 32/16 dan Rt 33/17, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(620, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(621, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'RT 26 RW 13 Manggis Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(622, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'RT 67 RW 33 Kayugede Gerbosari Samigaluh', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(623, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya', 'Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 100000000, '250', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(624, '2024', '6', '22', 'Subsidi, berupa penyediaan pembiayaan untuk proyek pengembangan masyarakat, penyelenggaraan fasilitas umum atau bantuan modal usaha skala mikro dan kecil; ', 'Pembangunan Kandang Komunal', 'Kelompok Tani Gotro Gowok Ketua SUWARDI', '34.01.11', '34.01.11.2001', 270000000, '1', 'Klp', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(625, '2024', '6', '22', 'Subsidi, berupa penyediaan pembiayaan untuk proyek pengembangan masyarakat, penyelenggaraan fasilitas umum atau bantuan modal usaha skala mikro dan kecil; ', 'Cetak Sawah Baru ', 'Tanah Kas Desa (Gebang)', '34.01.11', '34.01.11.2004', 25000000, '5', 'Ha', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(626, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Kleben', '34.01.11', '34.01.11.2001', 250000000, '500', 'm', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(627, '2024', '7', '22', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit tanaman perkebunan (Alpukat, Kelapa Hibrida)', 'Tanah Kas Desa (Gebang)', '34.01.11', '34.01.11.2004', 12000000, '6', 'paket', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', '0'),
(628, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Jeringan, Kaliduren, Kedunggupit, Kleben, Jarakan ', '34.01.11', '34.01.11.2001', 15000000, '5', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(629, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Hand Traktor', 'Kelompok Tani  \" NGUDI LESTARI NO.REK 34.01.11.KBH.KT.11.2016 \" Jeringan RT. 13', '34.01.11', '34.01.11.2001', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(630, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Hibah Bibit Ternak (Sapi, kambing, domba)', 'Kelompok Tani \" GOTRO \" Gowok ketua Poktan SUWARDI', '34.01.11', '34.01.11.2001', 250000000, '10', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `aktifitas`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`, `status`) VALUES
(631, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk Organik', 'Kelompok Tani : Murih Makmur ( Tulangan ) , Guno Martani ( Nguntuk - untuk ) , Sido Maju ( Petet ) , Sedyomaju ( Pucung ) , Krido Martani ( Canden ) , Ngudi Makmur ( Ngaliyan ) , Arum sari ( Tritis ) , Sedyorukun ( Ngaliyan Gunung B ) , Rukun ( Trayu ) , Ngudi Lestari ( Ngaliyan Gunung A ) , Akur sari ( Tegalsari ) ', '34.01.11', '34.01.11.2006', 82500000, '11', 'ton', 'DINAS PERTANIAN DAN PANGAN', '0'),
(632, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Bibit Sengon, Durian,alpukat', 'Kelompok Tani : Murih Makmur ( Tulangan ) , Guno Martani ( Nguntuk - untuk ) , Sido Maju ( Petet ) , Sedyomaju ( Pucung ) , Krido Martani ( Canden ) , Ngudi Makmur ( Ngaliyan ) , Arum sari ( Tritis ) , Sedyorukun ( Ngaliyan Gunung B ) , Rukun ( Trayu ) , Ngudi Lestari ( Ngaliyan Gunung A ) , Akur sari ( Tegalsari ) , Sari madu ( Ngaliyan )', '34.01.11', '34.01.11.2006', 210000000, '48000', 'bibit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(633, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Ngaliyan Gunung B', '34.01.11', '34.01.11.2006', 200000000, '400', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(634, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk Pertanian Perkebunan', 'Kelompok Tani, Banjarsari', '34.01.11', '34.01.11.2002', 160000000, '16', 'kelompok', 'DINAS PERTANIAN DAN PANGAN', '0'),
(635, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Hibah Bibit Ternak (Sapi, kambing, domba)', 'Kelompok Tani Lestari, KT ngudilestari, KT Tani Makmur, KT Tani rezeki, KT Sidomakmur, KT Sumberrezeki, KT Samiremen, KT Tani Maju, KT Sumber lestari, KTSumber rejo, KT Sumber rezeki, KT ngudi Subur, KT Sedyo Mulyo, KT Ngudi Subur di Purwoharjo', '34.01.11', '34.01.11.2003', 1400000000, '14', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(636, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk dan Peralatan Perkebunan', 'Kelompok Tani Lestari, KT ngudilestari, KT Tani Makmur, KT Tani rezeki, KT Sidomakmur, KT Sumberrezeki, KT Samiremen, KT Tani Maju, KT Sumber lestari, KTSumber rejo, KT Sumber rezeki, KT ngudi Subur, KT Sedyo Mulyo, KT Ngudi Subur di Purwoharjo', '34.01.11', '34.01.11.2003', 25000000, '19 Klp', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(637, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT Menoreh Makmur, KT Menoreh KT Subur, KT Maju, KT Putra, KTMadu SaRI, Menoreh Maju, KT Subur, KT Tentrem, KT Sedyo Rukun, KT Guyub, KT Mekar, KT Ngudi Rahayu, KT Akur, KT Margo rejo, KT Makmur, KT Rahayu, KT Marem, Gerbosari', '34.01.11', '34.01.11.2005', 30000000, '14 Klp', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(638, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT Menoreh Makmur, KT Menoreh KT Subur, KT Maju, KT Putra, KTMadu SaRI, Menoreh Maju, KT Subur, KT Tentrem, KT Sedyo Rukun, KT Guyub, KT Mekar, KT Ngudi Rahayu, KT Akur, KT Margo rejo, KT Makmur, KT Rahayu, KT Marem, Gerbosari', '34.01.11', '34.01.11.2005', 20000000, '3', 'unit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(639, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT Menoreh Makmur, KT Menoreh KT Subur, KT Maju, KT Putra, KTMadu SaRI, Menoreh Maju, KT Subur, KT Tentrem, KT Sedyo Rukun, KT Guyub, KT Mekar, KT Ngudi Rahayu, KT Akur, KT Margo rejo, KT Makmur, KT Rahayu, KT Marem, Gerbosari', '34.01.11', '34.01.11.2005', 30000000, '3', 'unit', 'DINAS PERTANIAN DAN PANGAN', '0'),
(640, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani', 'Tukharjo -Pagutan Purwoharjo', '34.01.11', '34.01.11.2003', 200000000, '400', 'm', 'DINAS PERTANIAN DAN PANGAN', '0'),
(641, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'KWT Puyang, KWT Pagutan, KWT Kedungrong, Purwoharjo', '34.01.11', '34.01.11.2003', 35000000, '3', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(642, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit tanaman perkebunan (Alpukat, Kelapa Hibrida)', 'Bantuan bibit buah-buahan untuk kelompok tani Marem. Jetis, Gerbosari, Samigaluh// Pj Hadi Nursiyamto// No Reg: 003/GBS/XI/2003. (Durian 100 batang, kelengkeng 100 batang, apokat 100 batang).\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(643, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit tanaman perkebunan (Alpukat, Kelapa Hibrida)', 'Bantuan bibit buah-buahan untuk kelompok tani Marem. Jetis, Gerbosari, Samigaluh// Pj Hadi Nursiyamto// No Reg: 003/GBS/XI/2003. (Durian 100 batang, Manggis 100 batang, apokat 100 batang).\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(644, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit tanaman perkebunan (Alpukat, Kelapa Hibrida)', 'Permohonan Kambing 30 ekor KT. TANI PUTRA Jati, Gerbosari, Samigaluh\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(645, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit tanaman perkebunan (Alpukat, Kelapa Hibrida)', 'Permohonan Traktor Capung dan pemotong rumput  KT. MELAR Ketaon, Gerbosari, Samigaluh\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(646, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Hibah Bibit Ternak (Sapi, kambing, domba)', 'Penguatan Modal Kelompok ternak kambing KELOMPOK KARANG TARUNA Clumprit, Gerbosari, Samigaluh\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(647, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Bantuan alat Pencacah Rumput Gerbosari  3 Kelompok Gerbosari, Samigaluh', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(648, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Penguatan modal KWT Gerbosari  5 Kelompok Gerbosari, Samigaluh\n', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(649, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Pembuatan Kawasan pertanian terpadu Gerbosari, Samigaluh', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(650, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Bantuan Penguatan Modal Kelompok Budidaya perikanan 5 Kelompok  Gerbosari, Samigaluh', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(651, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Bantuan Peralatan Kelompok Pertukangan Kayu Gerbosari, Samigaluh', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(652, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Bibit Panili KT \"Tentrem\"	', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(653, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan Pupuk ', 'Pemanfaatan Pekarangan KWT \"Menoreh Subur\" No.Reg: 34.01.11.GBR.KT.04.2016', '34.01.11', '34.01.11.2005', 0, '', NULL, 'DINAS PERTANIAN DAN PANGAN', '0'),
(654, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Hibah Bibit Ternak (Sapi, kambing, domba)', 'Kelompok Tani Kalurahan Sidoharjo', '34.01.11', '34.01.11.2004', 320000000, '4', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(655, '2024', '7', '1', 'Peningkatan kemampuan manajemen dan produktivitas', 'Restoking Perairan Darat', 'Kleben aliran sungai Dung Sono', '34.01.11', '34.01.11.2001', 10000000, '1', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(656, '2024', '7', '1', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'POKDAKAN WANITA Kedunggupit ', '34.01.11', '34.01.11.2002', 30000000, '3', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(657, '2024', '7', '1', 'Pelatihan', 'Pelatihan budidaya teknis perikanan kepada pokdakan', 'Kaliduren, Kedunggupit, Jeringan', '34.01.11', '34.01.11.2002', 15000000, '3', 'kelompok', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(658, '2024', '7', '1', 'Pelatihan', 'Pelatihan pembudidaya ikan dalam pengendalian hama penyakit ikan (HPI) kepada pokdakan', 'Kaliduren, Kedunggupit, Jeringan', '34.01.11', '34.01.11.2002', 10000000, '2', 'kelompok', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(659, '2024', '7', '1', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'Pokdakan Ngudi makmur Ngaliyan, Pokdakan Argomino Ngaliyan Gunung B , Pokdakan Mina sari Trayu', '34.01.11', '34.01.11.2006', 72000000, '6000', 'ekor', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(660, '2024', '7', '1', 'Peningkatan kemampuan manajemen dan produktivitas', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'Kelompok Wanita Tani Kalurahan Sidoharjo', '34.01.11', '34.01.11.2004', 90000000, '18', 'paket', 'DINAS KELAUTAN DAN PERIKANAN', '0'),
(661, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Jamban Sehat ', 'Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Gebang', '34.01.11', '34.01.11.2002', 240000000, '30', 'unit', 'DINAS KESEHATAN', '0'),
(662, '2024', '6', '3', 'Pemberian layanan pendidikan, kesehatan dan olahraga serta layanan umum lainnya', 'Penyemprotan (fogging) ', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben ', '34.01.11', '34.01.11.2001', 10000000, '10', 'lokasi', 'DINAS KESEHATAN', '0'),
(663, '2024', '6', '3', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembagangunan PUSTU', 'Gebang', '34.01.11', '34.01.11.2004', 337923980, '1', 'unit', 'DINAS KESEHATAN', '0'),
(664, '2024', '6', '', 'Subsidi, berupa penyediaan pembiayaan untuk proyek pengembangan masyarakat, penyelenggaraan fasilitas umum atau bantuan modal usaha skala mikro dan kecil', 'Rumah Pruduksi Sabut Kelapa', 'Gebang', '34.01.11', '34.01.11.2004', 198962777, '1', 'unit', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(665, '2024', '6', '', 'Subsidi, berupa penyediaan pembiayaan untuk proyek pengembangan masyarakat, penyelenggaraan fasilitas umum atau bantuan modal usaha skala mikro dan kecil', 'Bantuan peralatan produksi agro makanan dan minuman', 'Kelompok UMKM \" Bogomulyo\" Jeringan', '34.01.11', '34.01.11.2001', 35000000, '1', 'kelompok', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', '0'),
(666, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai ', 'Gowok, Jarakan, Kaliduren, Kleben, Kedunggupit, Jeringan, Pringtali, Gebang', '34.01.11', '34.01.11.2001', 35000000, '5', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(667, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Bank Sampah Pulung Sari Tegalsari , TPST Ngaliyan', '34.01.11', '34.01.11.2006', 40000000, '2', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(668, '2024', '6', '7', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Sumur Resapan', 'RT 27 RW 13 Padukuhan Klendrekan, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 20000000, '4', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(669, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai ', 'Padukuhan Ngaran III, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 40000000, '1', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(670, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'penanaman pohon di daerah', 'kenanga, kai manggis, sekepyar, dersono, semurup, kluwihan, cemara, njoho', '34.01.11', '34.01.11.2006', 40000000, '8', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(671, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'pengelolaan sampah', 'bank sampah sumbo dan jati', '34.01.11', '34.01.11.2005', 10000000, '2', 'paket', 'DINAS LINGKUNGAN HIDUP', '0'),
(672, '2024', '6', '5', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pengelolaan Jaringan Internet', 'Pemerintah Kalurahan Kebonharjo', '34.01.11', '34.01.11.2001', 50000000, '1', 'unit', 'DINAS KOMUNIKASI DAN INFORMATIKA', '0'),
(673, '2024', '6', '5', 'Pelatihan', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Padukuhan Tukharjo,Bangunrejo,Plarangan, Taman, Puyang, Sendangrejo, Kalinongko, Sendangmulyo, Besole, Pagutan, Junut, Duwet, Kedungrong, Dukuh Purwoharjo', '34.01.11', '34.01.11.2003', 140000000, '14', 'unit', 'DINAS KOMUNIKASI DAN INFORMATIKA', '0'),
(674, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Sarana, Prasarana dan Utilitas PAUD', 'Jarakan', '34.01.11', '34.01.11.2001', 65000000, '1', 'unit', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(675, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Sarana, Prasarana dan Utilitas PAUD', 'Kedunggupit', '34.01.11', '34.01.11.2001', 50000000, '1', 'unit', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(676, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Sarana Prasarana Pemuda Olahraga', 'Gebang', '34.01.11', '34.01.11.2001', 100000000, '1', 'unit', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(677, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Sarana dan Prasarana Pemuda dan Olahraga', 'Lapangan Ngaliyan RT  01 RW 01', '34.01.11', '34.01.11.2006', 150000000, '1050', 'm', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(678, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Penyediaan Sarana dan Prasarana Pemuda dan Olahraga', 'RT 30 RW 14, Padukuhan Balong VIII, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 95000000, '375', 'm', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(679, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Gedung PAUD', 'RT 61 RW 28, Padukuhan Kaliwunglon, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 40000000, '1', 'Paket', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(680, '2024', '6', '14', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Gedung PAUD', 'Sebo, Sidoharjo, Samigaluh, Kulon Progo', '34.01.11', '34.01.11.2004', 150000000, '1', 'unit', 'DINAS PENDIDIKAN PEMUDA DAN OLAHRAGA', '0'),
(681, '2024', '6', '', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Bantuan Bronjong', 'Trayu,Petet,Tritis,Pucung,Tegalsari,Nguntuk-untuk', '34.01.11', '34.01.11.2006', 120000000, '300', 'buah', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(682, '2024', '6', '', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'bantuan sosial droping air', '7 padukuhan, Kalurahan Gerbosari', '34.01.11', '34.01.11.2005', 14000000, '14', 'liter tangki', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(683, '2024', '6', '', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bantuan Sosial Dropping Air ', 'Padukuhan Puyang, Pagutan, Plarangan, Sendang Mulyo, Junut, Purwoharjo', '34.01.11', '34.01.11.2003', 30000000, '100', 'tangki', 'BADAN PENANGGULANGAN BENCANA DAERAH', '0'),
(684, '2024', '7', '9', 'Penguatan kelembagaan sosial ekonomi masyarakat', 'Pengembangan Desa Wisata', 'Desa Wisata Tinalah, Wisata Puncak Kleco', '34.01.11', '34.01.11.2003', 500000000, '2', 'lokasi', 'DINAS PARIWISATA', '0'),
(685, '2024', '7', '9', 'Pelatihan', 'pelatihan bagi pelaku wisata', 'pelaku wisata di wisata suroloyo dan agrowisata krisan', '34.01.11', '34.01.11.2005', 30000000, '2', 'paket', 'DINAS PARIWISATA', '0'),
(686, '2024', '8', '9', 'Pelestarian alam dan lingkungan hidup', 'tersedianya petugas kebersihan dan sarana pembuangan sampah', 'suroloyo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'DINAS PARIWISATA', '0'),
(687, '2024', '7', '9', 'Penguatan kelembagaan sosial ekonomi masyarakat', 'pengembangan desa wisata sariloyo', 'sariloyo', '34.01.11', '34.01.11.2005', 15000000, '1', 'paket', 'DINAS PARIWISATA', '0'),
(688, '2024', '7', '9', 'Penguatan kelembagaan sosial ekonomi masyarakat', 'Pemberdayaan Pelaku Wisata', ' RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 10000000, '1', 'paket', 'DINAS PARIWISATA', '0'),
(689, '2024', '7', '9', 'Penguatan kelembagaan sosial ekonomi masyarakat', 'Pengembangan Desa Wisata', ' RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari', '34.01.11', '34.01.11.2002', 200000000, '1', 'paket', 'DINAS PARIWISATA', '0'),
(690, '2024', '7', '6', 'Pelatihan', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'RT 48 RW 23, Padukuhan Balong 1, Banjarsari.', '34.01.11', '34.01.11.2002', 40000000, '8', 'orang', ' DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH DAN USAHA MIKRO KECIL MENENGAH', '0'),
(691, '2024', '7', '6', 'Pelatihan', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Padukuhan Tukharjo,Bangunrejo,Plarangan, Taman, Puyang, Sendangrejo, Kalinongko, Sendangmulyo, Besole, Pagutan, Junut, Duwet, Kedungrong, Dukuh Purwoharjo', '34.01.11', '34.01.11.2003', 140000000, '14', 'unit', ' DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH DAN USAHA MIKRO KECIL MENENGAH', '0'),
(692, '2024', '6', '20', 'Kelompok masyarakat yang kepada membutuhkan', 'Hibah Rumah Ibadah', 'Tukharjo Purwoharjo', '34.01.11', '34.01.11.2003', 100000000, '1', 'unit', 'SEKRETARIAT DAERAH', '0'),
(693, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Karang, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(694, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Ketaon, Gerbosari, Samigaluh , Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(695, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', ' Jati, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(696, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Clumprit, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(697, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Kayugede, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(698, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Keceme , Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(699, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Kayugede, Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(700, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Karang Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(701, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Manggis Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(702, '2024', '6', '20', 'kelompok masyarakat yang kepada membutuhkan', 'Hibah kepada Badan dan Lembaga Nirlaba, Sukarela Bersifat Sosial Kemasyarakatan (Tempat ibadah, pondok pesantren, dan lain-lain)', 'Kayugede Gerbosari, Samigaluh, Kab. Kulon Progo', '34.01.11', '34.01.11.2005', 10000000, '1', 'paket', 'SEKRETARIAT DAERAH', '0'),
(703, '2024', '7', '', 'Pelatihan', 'Pelatihan kewirausahaan P2WKSS dan Desa Prima ', 'kelompok P2WKSS Ngroto dan Ketaon, Gerbosari', '34.01.11', '34.01.11.2005', 30000000, '2', 'kelompok', 'DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', '0'),
(704, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Klepu-Duwet (Aspal Hotmix) (1.11.03.006)', '', '34.01.12', '34.01.12.2003', 600000000, '300', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(705, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Kedungrong - Klepu  (2.11.01.005)', '', '34.01.12', '34.01.12.2001', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(706, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jembatan Kisik RT 58', '', '34.01.12', '34.01.12.2002', 200000000, '1', 'unit', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(707, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Slanden - Pantog Kulon (2.11.04.006)', '', '34.01.12', '34.01.12.2004', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(708, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Usaha Tani Bulak Kedondong KT Ngudi Santoso (34.01.12.BAR.KT.03.2016)', '', '34.01.12', '34.01.12.2001', 195000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(709, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Ngemplak-Beku (2.11.03.001)', '', '34.01.12', '34.01.12.2003', 300000000, '250', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(710, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Usaha Tani Sentul - Degan II (Kali Glagah) - KT Jati Manunggal (34.01.12.BAR.KT.07.2016)', '', '34.01.12', '34.01.12.2001', 300000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(711, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Tanjung - Semagung (2.11.04.005)', '', '34.01.12', '34.01.12.2004', 300000000, '180', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(712, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat karya corblok jalan  Tlangu - Ngepung', '', '34.01.12', '34.01.12.2002', 100000000, '1', 'LPMK', 'DINAS TENAGA KERJA DAN TRANSMIGRASI dan Transmigrasi', '0'),
(713, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jaringan irigasi pertanian Bulak Degan - KT Jati Manunggal (34.01.12.BAR.KT.07.2016)', '', '34.01.12', '34.01.12.2001', 198000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(714, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan jalan usaha tani Demangan - KT Ayem Lestari (34.01.12.BAH.KT.06.2016)', '', '34.01.12', '34.01.12.2003', 195000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(715, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Bongklang - Ringin (2.11.04.003)', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(716, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Kalibawang - Sentul / Semawung (1.11.03.005)', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(717, '2024', '8', '7', 'Pelestarian alam dan lingkungan hidup', 'Sosialisasi masyarakat dalam pengelolaan lingkungan hidup untuk peternak babi se-Kalurahan Banjarasri', '', '34.01.12', '34.01.12.2002', 2000000, '1', 'kelompok', 'DINAS LINGKUNGAN HIDUP', '0'),
(718, '2024', '6', '22', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Padat Karya corblok Jalan Cikalan-Ngemplak', '', '34.01.12', '34.01.12.2003', 100000000, '1', 'LPMK', 'DINAS TENAGA KERJA DAN TRANSMIGRASI dan Transmigrasi', '0'),
(719, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jalan Usaha Tani Bulak Dekso - KT Tunas Harapan Kriyan (34.01.12.BAR.KT.15.2016)', '', '34.01.12', '34.01.12.2001', 195000000, '1', 'Paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(720, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Pasar Bendo - Beku / Potronalan (1.11.04.007)', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(721, '2024', '6', '10', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Rekonstruksi Jalan/Peningkatan Jalan Slanden - Bolon / Slanden (1.11.04.008)', '', '34.01.12', '34.01.12.2004', 300000000, '200', 'm', 'DINAS PEKERJAAN UMUM PERUMAHAN DAN KAWASAN PERMUKIMAN', '0'),
(722, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU Jalan Klepu-Duwet (1.11.03.006)', '', '34.01.12', '34.01.12.2003', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN', '0'),
(723, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU Jalan Degan - Nogosari / Mejing (1.11.01.001)', '', '34.01.12', '34.01.12.2001', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN', '0'),
(724, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU Jalan Demangan-Kalisentul (2.11.03.007)', '', '34.01.12', '34.01.12.2003', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN', '0'),
(725, '2024', '6', '15', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan LPJU Jalan Ps. Bendo - Beku (1.11.04.007)', '', '34.01.12', '34.01.12.2004', 75000000, '5', 'unit', 'DINAS PERHUBUNGAN', '0'),
(726, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Durian KT Andum Rejeki Padaan Ngasem (34.01.12.BAH.KT.03.2016)', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(727, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Durian KT Kelapa Mas Kliwonan (34.01.12.BAH.KT.04.2016)', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(728, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Durian KT Mekar Gerbosari Gerpule (34.01.12.BAH.KT.02.2016)', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(729, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Durian KT Ngudi Rahayu Padaan Kulon (34.01.12.BAH.KT.18.2016)', '', '34.01.12', '34.01.12.2003', 30000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(730, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Kelapa Super KT Ngudi Rahayu Padaan Kulon (34.01.12.BAH.KT.18.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(731, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Amor Ayem Ngrajun (34.01.12.BAH.KT.07.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(732, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Andum Rejeki Padaan Ngasem (34.01.12.BAH.KT.03.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(733, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Ayem Lestari Demangan (34.01.12.BAH.KT.06.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(734, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Kelapa Mas Kliwonan (34.01.12.BAH.KT.04.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(735, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Kuncup Mekar Salak Malang (34.01.12.BAH.KT.05.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(736, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan Bibit Tanaman Padi Varietas umur pendek KT Ngudi Raharjo Padaaan Wetan (34.01.12.BAH.KT.16.2016)', '', '34.01.12', '34.01.12.2003', 3000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(737, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit Tanaman Ubi Kayu KT Ayem Lestari Demangan (34.01.12.BAH.KT.06.2016)', '', '34.01.12', '34.01.12.2003', 2000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(738, '2024', '7', '18', 'Peningkatan kemampuan manajemen dan produktivitas', 'Pengadaan bibit Tanaman Ubi Kayu KT Mekarsari Kenaran (34.01.12.BAH.KT.26.2016)', '', '34.01.12', '34.01.12.2003', 2000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(739, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu', 'Degan II RT 083 RW 042 ', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(740, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Kedondong II RT 056 RW 028', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(741, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Ngentak RT 073 RW 037', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(742, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Sayangan RT 009 RW 005', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(743, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Padaan Kulon', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(744, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Salam', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(745, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Gerpule', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(746, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Padaan Ngasem', '34.01.12', '34.01.12.2003', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(747, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Paras RT 054 RW 027', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(748, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Paras RT 055 RW 028', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(749, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Kepiton RT 050 RW 25', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(750, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Kepiton RT 050 RW 25', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(751, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Paras', '34.01.12', '34.01.12.2002', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(752, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Kedondong I', '34.01.12', '34.01.12.2001', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(753, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Pantog Wetan Rt 004 Rw 002 ', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(754, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Pantog Kulon Rt 007 Rw 004', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(755, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Banjaran Rt 011 Rw 006', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(756, '2024', '6', '20', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Yapitu ', 'Tanjung Rt 055 Rw 027', '34.01.12', '34.01.12.2004', 1000000, '1', 'anak', 'SEKRETARIAT DAERAH', '0'),
(757, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Padaan Ngasem RT 024 RW 011', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(758, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Cikalan RT 058 RW 025', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(759, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Kliwonan  RT 009 RW 005', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(760, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Padaan Kulon RT 021 RW 010', '34.01.12', '34.01.12.2003', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(761, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Tanjung Rt 54 Rw 26', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(762, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Semagung', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(763, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Semawung Rt 70 Rw 34', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(764, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Kajoran ', '34.01.12', '34.01.12.2004', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(765, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Sumbersari', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(766, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Sumbersari', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(767, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Nglebeng', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(768, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Nglebeng', '34.01.12', '34.01.12.2002', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(769, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Mejing', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(770, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Popohan', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(771, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Klepu', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(772, '2024', '6', '3', 'Bantuan sosial dalam bentuk uang, barang, maupun jasa kepada para penyandang masalah kesejahteraan sosial dan potensi sumber kesejahteraan sosial', 'Bansos Jamban Sehat', 'Brajan', '34.01.12', '34.01.12.2001', 2500000, '1', 'unit', 'DINAS KESEHATAN', '0'),
(773, '2024', '7', '9', 'Pendampingan', 'Pemberdayaan Pelaku Wisata / Pelatihan Tour Guide Desa Wisata Banjaroyo', '', '34.01.12', '34.01.12.2004', 5000000, '1', 'kelompok', 'DINAS PARIWISATA', '0'),
(774, '2024', '7', '9', 'Pendampingan', 'Pemberdayaan Pelaku Wisata / Pelatihan Tour Guide Desa Wisata Banjarasri', '', '34.01.12', '34.01.12.2002', 5000000, '1', 'kelompok', 'DINAS PARIWISATA', '0'),
(775, '2024', '7', '9', 'Pendampingan', 'Pemberdayaan Pelaku Wisata / Pelatihan Tour Guide Desa Wisata Banjararum', '', '34.01.12', '34.01.12.2001', 5000000, '1', 'kelompok', 'DINAS PARIWISATA', '0'),
(776, '2024', '7', '6', 'Pelatihan', 'Pelatihan Kewirausahaan SDM pelaku UMKM / Pengemasan Produk pelaku UMKM se-Kalibawang', '', '34.01.12', '34.01.12.2002', 5000000, '1', 'kelompok', 'DINAS KOPERASI DAN USAHA MIKRO KECIL MENENGAH', '0'),
(777, '2024', '6', '18', 'Penyediaan pembiayaan untuk kegiatan pengembangan sosial, ekonomi, dan budaya masyarakat serta pembangunan/rehabilitasi fasilitas umum.', 'Pembangunan Jaringan Irigasi Kawasan Pertanian - P3A Makmur Ganasari', '', '34.01.12', '34.01.12.2002', 80000000, '1', 'paket', 'DINAS PERTANIAN DAN PANGAN', '0'),
(778, '2024', '1', '1', 'tes', 'tes', 'tes', '34.01.01', '34.01.01.2001', 20000, '30', 'tes', '34ewfds', '0'),
(779, '2024', '1', '2', 'tes222', 'def', 'sfsdf', '34.01.05', '34.01.05.2001', 2000, '3', 'kg', 'dsfdsf', '0'),
(780, '2024', '9', '1', 'tes99', 'tes99', 'tes99', '34.01.01', '34.01.01.2012', 0, '30', 'kg', 'tes99', '1'),
(781, '2024', '1', '1', 'xxxxxxxxxxxxx', 'xxxxxxxxxxxxx', 'xxxxxxxxxxxxx', '34.01.01', '34.01.01.2002', 0, '30', 'kg', 'xxxxxxxxxxxxx', '1'),
(782, '2024', '1', '1', 'ttttttttttttt', 'ttttttttttttt', 'ttttttttttttt', '34.01.09', '34.01.09.2001', 20000, '4', 'ttttttttttttt', 'ttttttttttttt', '0'),
(783, '2024', '1', '1', 'eeeee', 'eeeee', 'eeeee', '34.01.09', '34.01.09.2001', 0, '4', 'm', 'sf', '1'),
(784, '2024', '2', '2', 'rrrrrrrrrrrrrrrrerrr', 'rrrrrrrrrrrrrrrrerrr', 'rrrrrrrrrrrrrrrrerrr', '34.01.02', '34.01.02.2001', 2000000, '30', 'kg', 'rrrrrrrrrrrrrrrrerrr', '1'),
(785, '2024', '1', '3', 'werew', 'werew', 'werew', '34.01.07', '34.01.07.2001', 20000, '3', 'kg', 'werew', '1'),
(786, '2024', '1', '1', 'ttttttttttttt', 'ttttttttttttt', 'ttttttttttttt', '34.01.03', '34.01.03.2001', 20000, '30', 'kg', 'ttttttttttttt', '1'),
(787, '2024', '2', '4', 'ttttttttttttttt', 'ttttttttttttttt', 'ttttttttttttttt', '34.01.01', '34.01.01.2001', 20000, '30', 'kg', 'ttttttttttttttt', '1'),
(788, '2024', '1', '3', 'rrrrrrrrrrrr', 'rrrrrrrrrrrr', 'rrrrrrrrrrrr', '34.01.05', '34.01.05.2001', 20000, '30', 'kg', 'rrrrrrrrrrrr', '1'),
(791, '2024', '2', '1', 'teszz', 'teszz', 'teszz', '34.01.08', '34.01.08.2001', 20000, '30', 'm', 'teszz', '1'),
(792, '2025', '1', '1', 'tes11', 'K', 'S', '34.01.01', '34.01.01.2001', 21, '1', 'kg', 'DE', '1');

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
  `aktifitas` varchar(255) DEFAULT NULL,
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
(2, '2023-12-06 04:10:01', 'judul', '7VCXVCxILIJAt4XqQfuH', '<p>deskripsi publikasi</p>', '1699860852_ce2cbf39c54573075014.jpg', '0', 'Admin', '0'),
(4, '2023-12-06 04:10:16', 'Berita Dari PDAM KP', 'Wukbm3mZdDoymaSxWHBo', '<p>deskripsi berita dari pdam kp</p>', '1699926693_39fc2ee70085bb339905.png', '2', 'PDAM KP', '0'),
(5, '2023-12-06 03:57:29', 'PENANDATANGANAN KERJASAMA DESA ECO-VILLAGE', 'csu7QO1thGrrDp4O3f8D', '<p>Dalam pelaksanaan penandatanganan kerjasama antara PT Hyundai Motor Manufacturing Indonesia (HMMI) dengan Desa Wanajaya pada program&nbsp; kegiatan Adopsi Desa Berbasis Lingkungan ( Desa Eco-Village) dan juga melibatkan kelompok masyarakat dalam pelatihan dan pemberdayaan bersama Ikatan Alumni Teknik Lingkungan Institut Teknologi Bandung (IATL ITB) dengan di hadiri oleh Sekretari Daerah, Kepala Badan Perencanaan Pembangunan Daerah, Camat Cibitung, Kepala Desa Wanajaya, Badan Amil Zakat Nasional, PT Hyundai Motor Manufacturing Indonesia (HMMI) dan Ikatan Alumni Teknik Lingkungan Institut Teknologi Bandung (IATL ITB) bersama-sama menyaksikan penandatanganan perjanjian antara PT HMMI dengan Desa Wanajaya dan PT HMMI dengan IATL ITB kerjasama TJSLP/CSR yang menjadi komitmen PT HMMI untuk berperan serta dalam pembangunan ekonomi berkelanjutan guna meningkatkan kualitas kehidupan dan lingkungan yang bermanfaat.</p>', '1701835049_9dab1cabe72031947fd4.png', '0', 'Admin', '1'),
(7, '2023-12-06 14:02:25', 'Program kegiatan CSR PT Kito Indonesia berupa gebyar Vaksin tahap 2', 'RgOKdSjA1sOJ8YhVBaDf', '<p>Program kegiatan CSR PT Kito Indonesia berupa gebyar Vaksin tahap 2 jenis Astrazaneca sebanyak 2.000 dosis di Kecamatan Cibarusah merupakan contoh konkret atas program CSR dalam bidang kesehatan upaya penanganan penurunan penyebaran covid-19 di Kabupaten Bekasi.<br />terimakasih yang sebesar-besarnya kepada PT Kito Indonesia yang telah memberikan kontribusi yang positif bagi pembangunan dan peningkatan kesejahteraan masyarakat, mari kita taati protokol kesehatan jangan abaikan dan saling mengingatkan.</p>', '1701846145_518193f846ec7f07d8e4.png', '0', 'admin', '1'),
(8, '2023-12-07 08:29:11', 'tefd', '5XF0xWxl0M0VaQZTedL6', '', '1701912551_82b9f49890d1b9039cc8.png', '2', 'pdam.kp', '0'),
(11, '2025-03-11 09:32:34', 'tes 2', 'g45UN3IRXqbyVs4NsQTL', '&lt;p&gt;deskripsi&lt;/p&gt;', '1741662610_b5a266035fba615680fa.jpg', '2', 'pdam.kp', '1'),
(13, '2025-03-14 11:45:30', 'tes aje', 'hCzIfsbD0xSmQejYdrJO', '&lt;p&gt;uye&lt;/p&gt;', '1741927530_d67fe45c6ff606030aed.png', '2', 'pdam.kp', '1');

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
(8, 'BINA LINGKUNGAN LINGKUNGAN DAN SOSIAL '),
(9, 'TES'),
(10, 'TES2');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
