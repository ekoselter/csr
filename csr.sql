-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jun 2024 pada 01.57
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
(1, 1, 2, '5000000', '1701912919_86f6afd364cfbecb4ef1.pdf', '2023-12-07 08:35:19'),
(2, 6, 2, '500000', '1701912986_53cea79371ba8097af08.png', '2023-12-07 08:36:26'),
(3, 6, 2, '10000000', '1718005638_1f30f238e3d395e76db1.pdf', '2024-06-10 14:47:18'),
(4, 8, 2, '10000000', NULL, NULL),
(5, 5, 2, '1000000', NULL, NULL);

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
  `biaya` varchar(20) NOT NULL DEFAULT '0',
  `volume` varchar(20) NOT NULL DEFAULT '0',
  `satuan` varchar(20) DEFAULT NULL,
  `opd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan_csr`
--

INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `volume`, `satuan`, `opd`) VALUES
(1, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT Sukatani Nganti, KT Ngudi Makmur Sebatang, KT Sederhana Tirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000', '115000', NULL, 'Dinas Pertanian dan Pangan'),
(2, '2024', '2', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'KWT Amrih Maju Teganing I, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '7642000', '', NULL, 'Dinas Pertanian dan Pangan'),
(3, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT Sarwoguno Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '10000000', '', NULL, 'Dinas Pertanian dan Pangan'),
(4, '2024', '1', '18', 'Pengadaan bibit tanaman perkebunan', 'KT Sarwoguno Menguri, KT Mulyodadi Teganing II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '15772500', '', NULL, 'Dinas Pertanian dan Pangan'),
(5, '2024', '3', '6', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Padukuhan Crangah, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '8500000', '', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(6, '2024', '1', '19', 'Bansos RTLH', '14 pedukuhan, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(7, '2024', '2', '5', 'Pengelolaan Jaringan Internet', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plamopang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '', '', NULL, 'Dinas Komunikasi dan Informatika'),
(8, '2024', '2', '19', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '2500000000', '2700000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(9, '2024', '4', '21', 'Bantuan sosial untuk PPKS', 'Pedukuhan Nganti dan Sebatang, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '3000000', '', NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(10, '2024', '2', '15', 'Pembangunan LPJU', 'Clapr I dan Clapar II, Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '', NULL, 'Dinas Perhubungan'),
(11, '2024', '2', '15', 'Pembangunan LPJU', 'Tegalrejo dan Sidowayah, Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '', NULL, 'Dinas Perhubungan'),
(12, '2024', '4', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Keji, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '65000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi\n'),
(13, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '16516000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(14, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Crangah, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(15, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Keji, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(16, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'PKK Kalurahan, Padukuhan Menguri dan Sungapan II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(17, '2024', '2', '10', 'Pembangunan Sistem Penyediaan Air Minum', 'sangon, plampang, kalibuko, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7810000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(18, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '2000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(19, '2024', '2', '15', 'Pembangunan LPJU', 'Plampang I, Plampang III, Sangon II, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '15000000', '', NULL, 'Dinas Perhubungan'),
(20, '2024', '3', '16', 'Bantuan peralatan produksi agro makanan dan minuman', 'Padukuhan Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '16966000', '', NULL, 'Dinas Perdagangan dan Perindustrian'),
(21, '2024', '2', '1', 'Pelatihan budidaya teknis perikanan kepada pokdakan', 'KT Sederhana Tirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '35000000', '', NULL, 'Dinas Kelautan dan Perikanan'),
(22, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Nganti, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '65000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(23, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Menguri dan Teganing II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(24, '2024', '4', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Padukuhan Sungapan II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '32975000', '', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(25, '2024', '1', '19', 'Bansos RTLH', 'pedukuhan klepu hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(26, '2024', '1', '19', 'Bansos RTLH', 'padukuhan bibis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(27, '2024', '1', '19', 'Bansos RTLH', 'padukuhan tegiri 1, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(28, '2024', '1', '19', 'Bansos RTLH', 'padukuhan tegiri 2, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(29, '2024', '1', '19', 'Bansos RTLH', 'padukuhan tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(30, '2024', '1', '19', 'Bansos RTLH', 'padukuhan tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(31, '2024', '1', '19', 'Bansos RTLH', 'padukuhan tegalrejo, soka, sermo lor, clapar 1, clapar 2, clapar 3 dan kalibiru, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(32, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', 'kalurahan hargowilis meliputi 13 padukuhan, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '2000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(33, '2024', '1', '19', 'Bansos RTLH', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(34, '2024', '1', '18', 'Bantuan prasarana pertanian tanaman pangan untuk kelompok tani', 'kelompok tani ngudi mulyo pad tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '13728500', '', NULL, 'Dinas Pertanian dan Pangan'),
(35, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', '13 Padukuhan di Kalurahan Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '2000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(36, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'Clapar II, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '8500000', '', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(37, '2024', '2', '15', 'Pengadaan Cermin Tikungan', 'Setiap padukuhan masing-masing 10 titik, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '3728500', '7376400', NULL, 'Dinas Perhubungan'),
(38, '2024', '2', '15', 'Pengadaan Cermin Tikungan', 'Gunung Kukusan,, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '3728500', '7376400', NULL, 'Dinas Perhubungan'),
(39, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7500000', '', NULL, 'Dinas Lingkungan Hidup'),
(40, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'Pedukuhan Plampang 1 Kalirejo 5 Unit, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7500000', '', NULL, 'Dinas Lingkungan Hidup'),
(41, '2024', '1', '4', 'Bantuan Sosial Dropping Air', 'Pedukuhan Plampang 1 Kalirejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '300000', '', NULL, 'Badan Penanggulangan Bencana Daerah'),
(42, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'KT. Sido Makmur Papak, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '29661100', '', NULL, 'Dinas Pertanian dan Pangan'),
(43, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Bank Sampah Uwuh Mulyo Hargotirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '1572300', '27500000', NULL, 'Dinas Lingkungan Hidup'),
(44, '2024', '2', '15', 'Pembangunan LPJU', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '2500000', '', NULL, 'Dinas Perhubungan'),
(45, '2024', '1', '19', 'Bansos RTLH', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(46, '2024', '2', '10', 'Pembangunan Jalan', 'Padukuhan Pendem,Karangasem, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '200000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(47, '2024', '1', '20', 'Bantuan Sosial bagi anak yatim piatu', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1000000', '', NULL, 'Sekretariat Daerah'),
(48, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Pendem,Karangasem,Talunombo,Parakan,Nabin,Kutogiri, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1572300', '27500000', NULL, 'Dinas Lingkungan Hidup'),
(49, '2024', '1', '18', 'Hibah Bibit Ternak (Sapi, kambing, domba)', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1685400', '28090000', NULL, 'Dinas Pertanian dan Pangan'),
(50, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', '6 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '100000', '', NULL, 'Dinas Lingkungan Hidup'),
(51, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', '6 padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '12500000', '36198100', NULL, 'Dinas Pertanian dan Pangan'),
(52, '2024', '2', '1', 'Pelatihan budidaya teknis perikanan kepada pokdakan', 'Padukuhan Girinyono RT 43, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '35000000', '', NULL, 'Dinas Kelautan dan Perikanan'),
(53, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Padukuhan Serang, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '1572300', '27500000', NULL, 'Dinas Lingkungan Hidup'),
(54, '2024', '1', '1', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'Padukuhan Serang Rt 02, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '1179800', '3314600', NULL, 'Dinas Kelautan dan Perikanan'),
(55, '2024', '1', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '737400', '14500000', NULL, 'Dinas Pertanian dan Pangan'),
(56, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '42000000', '', NULL, 'Dinas Lingkungan Hidup'),
(57, '2024', '3', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '7642000', '', NULL, 'Dinas Pertanian dan Pangan'),
(58, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '8500000', '', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(59, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'Padukuhan Kroco, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '7500000', '', NULL, 'Dinas Lingkungan Hidup'),
(60, '2024', '4', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Padukuhan Puyang, Padukuhan Pagutan, Padukuhan Kedungrong, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '5000', '115000', NULL, 'Dinas Pertanian dan Pangan'),
(61, '2024', '1', '4', 'Bantuan Sosial Dropping Air', 'Padukuhan Puyang, Pagutan, Plarangan, Sendang Mulyo, Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '300000', '', NULL, 'Badan Penanggulangan Bencana Daerah'),
(62, '2024', '2', '10', 'Pembangunan Jalan', 'Jeringan, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(63, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Ponces - Printali Padukuhan Pringtali No.Ruas 396/2.09.04.006, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(64, '2024', '2', '10', 'Pembangunan Jalan', 'Gowok, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(65, '2024', '2', '10', 'Pembangunan Jalan', 'pelem, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(66, '2024', '2', '10', 'Pembangunan Jalan', 'Pringtali, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(67, '2024', '2', '10', 'Pembangunan Jaringan Irigasi', 'Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(68, '2024', '2', '15', 'Pembangunan LPJU', 'Padukuhan Kaliduren, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, 'Dinas Perhubungan'),
(69, '2024', '2', '15', 'Pembangunan LPJU', 'Jeringan, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, 'Dinas Perhubungan'),
(70, '2024', '2', '15', 'Pembangunan LPJU', 'Jalan Pelemdukuh- Jarakan di PadukuhanJarakan, Padukuhan Kaliduren, Padukuhan Pelem, Padukuhan Gebang, dan PadukuhanKleben No.Ruas 159/1.09.04.015, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, 'Dinas Perhubungan'),
(71, '2024', '1', '18', 'Bantuan Sarana Produksi Hortikultura', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '', '', NULL, 'Dinas Pertanian dan Pangan'),
(72, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '100000', '', NULL, 'Dinas Lingkungan Hidup'),
(73, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1572300', '27500000', NULL, 'Dinas Lingkungan Hidup'),
(74, '2024', '4', '7', 'Pembangunan INSTALASI PENGOLAH AIR LIMBAH (Biogas, Limbah Ternak/Tahu Tempe)', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '30000000', '', NULL, 'Dinas Lingkungan Hidup'),
(75, '2024', '3', '6', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8500000', '', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(76, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8500000', '', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(77, '2024', '4', '21', 'Pembinaan Lembaga Kesejahteraan Sosial (LKS)', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8550000', '', NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(78, '2024', '2', '2', 'Penyediaan Sarana dan Prasarana Pemuda dan Olahraga', 'RT 30 RW 14, Padukuhan Balong VIII, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '60000000', '', NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(79, '2024', '2', '9', 'Pembangunan Pembangunan dan Rehab Toilet atau Rehab Pos Retribusi', 'Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '312000000', '', NULL, 'Dinas Pariwisata'),
(80, '2024', '1', '19', 'Bansos RTLH', 'Rt. 11 Rw. 05 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(81, '2024', '1', '19', 'Bansos RTLH', 'Rt. Rt.07 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(82, '2024', '1', '19', 'Bansos RTLH', 'Rt. 6 Rw. 03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(83, '2024', '1', '19', 'Bansos RTLH', 'Rt. 6 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(84, '2024', '1', '19', 'Bansos RTLH', 'Rt.07 Rw. 03Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(85, '2024', '1', '19', 'Bansos RTLH', 'Rt.5 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(86, '2024', '1', '19', 'Bansos RTLH', 'Rt. 17 Rw.8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(87, '2024', '1', '19', 'Bansos RTLH', 'Rt.16 Rw.8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(88, '2024', '1', '19', 'Bansos RTLH', 'Rt. 22 Rw.11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(89, '2024', '1', '19', 'Bansos RTLH', 'Rt.26 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(90, '2024', '1', '19', 'Bansos RTLH', 'Rt. 28 Rw.14 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(91, '2024', '1', '19', 'Bansos RTLH', 'Rt.27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(92, '2024', '1', '19', 'Bansos RTLH', 'Rt. 36 Rw.18 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(93, '2024', '1', '19', 'Bansos RTLH', 'Rt. 34 Rw.17 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(94, '2024', '1', '19', 'Bansos RTLH', 'Rt.36 Rw. 18 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(95, '2024', '1', '19', 'Bansos RTLH', 'Rt. 34 rw. 17 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(96, '2024', '1', '19', 'Bansos RTLH', 'Rt. 46 Rw. 22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(97, '2024', '1', '19', 'Bansos RTLH', 'Rt.43 Rw. 21 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(98, '2024', '1', '19', 'Bansos RTLH', 'Rt. 45 R w.22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(99, '2024', '1', '19', 'Bansos RTLH', 'Rt. 43 Rw. 21 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(100, '2024', '1', '19', 'Bansos RTLH', 'Rt. 49 rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(101, '2024', '1', '19', 'Bansos RTLH', 'Rt. 49. Rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(102, '2024', '1', '19', 'Bansos RTLH', 'Rt. 48 Rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(103, '2024', '1', '19', 'Bansos RTLH', 'Rt. 47 rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(104, '2024', '1', '19', 'Bansos RTLH', 'Rt. 47 rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(105, '2024', '1', '19', 'Bansos RTLH', 'Rt. 48 Rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(106, '2024', '1', '19', 'Bansos RTLH', 'Rt. 50 Rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(107, '2024', '1', '19', 'Bansos RTLH', 'Rt. 57 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(108, '2024', '1', '19', 'Bansos RTLH', 'Rt. 19 Rw. 9 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(109, '2024', '1', '19', 'Bansos RTLH', 'Rt. 19 Rw. 9 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(110, '2024', '1', '19', 'Bansos RTLH', 'Rt. Rt. 20 rw. 10 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(111, '2024', '1', '19', 'Bansos RTLH', 'Rt. 20 Rw. 10 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(112, '2024', '1', '19', 'Bansos RTLH', 'Rt. 39 rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(113, '2024', '1', '19', 'Bansos RTLH', 'Rt. 40 Rw. 20 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(114, '2024', '1', '19', 'Bansos RTLH', 'Rt. 38. Rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(115, '2024', '1', '19', 'Bansos RTLH', 'Rt.39 Rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(116, '2024', '1', '19', 'Bansos RTLH', 'Rt. 41 Rw. 20 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(117, '2024', '1', '19', 'Bansos RTLH', 'Rt.46 Rw.22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(118, '2024', '1', '19', 'Bansos RTLH', 'Rt. 46 Rw. 22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(119, '2024', '1', '19', 'Bansos RTLH', 'Rt.29 Rw. 14 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(120, '2024', '1', '19', 'Bansos RTLH', 'Rt. 27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(121, '2024', '1', '19', 'Bansos RTLH', 'Rt. 27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(122, '2024', '1', '19', 'Bansos RTLH', 'Rt.24 rw. 12 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(123, '2024', '3', '11', 'Pembinaan pengelolaan BUMDes', 'BUMDes Binangun Bantala Aji Banjarsari, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '21000000', '', NULL, 'Dinas Pemberdayaan Masyarakat dan Desa Pengendalian Penduduk dan Keluarga Berencana\n '),
(124, '2024', '2', '9', 'Pemberdayaan Pelaku Wisata', 'RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '2700000', '', NULL, 'Dinas Pariwisata'),
(125, '2024', '4', '9', 'Pengembangan Desa Wisata', 'RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '2700000', '', NULL, 'Dinas Pariwisata'),
(126, '2024', '2', '15', 'Pembangunan LPJU', 'Jalan Lokal Primer I Ruas Ngori-Nogosari, Gunung Kucir, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '15000000', '', NULL, 'Dinas Perhubungan'),
(127, '2024', '4', '7', 'Pembangunan Sumur Resapan', 'RT 27 RW 13 Padukuhan Klendrekan, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '3500000', '', NULL, 'Dinas Lingkungan Hidup'),
(128, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', 'Padukuhan Ngaran III, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '100000', '', NULL, 'Dinas Lingkungan Hidup'),
(129, '2024', '1', '19', 'Bansos RTLH', 'Rt.24 Rw.12 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(130, '2024', '1', '19', 'Bansos RTLH', 'Rt. 17 Rw. 8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(131, '2024', '1', '19', 'Bansos RTLH', 'Rt. 5 Rw. 3 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(132, '2024', '1', '19', 'Bansos RTLH', 'Rt. 05 Rw. 03 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(133, '2024', '1', '19', 'Bansos RTLH', 'Rt. 07 Rw. 04 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(134, '2024', '1', '19', 'Bansos RTLH', 'Rt. 08 Rw. 04 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(135, '2024', '1', '19', 'Bansos RTLH', 'Rt. 06 Rw. 03 Padukuhan Bangunrej, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(136, '2024', '1', '19', 'Bansos RTLH', 'Rt. 18 Pedukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(137, '2024', '1', '19', 'Bansos RTLH', 'RT.20 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(138, '2024', '1', '19', 'Bansos RTLH', 'Rt.19 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(139, '2024', '1', '19', 'Bansos RTLH', 'RT.20 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(140, '2024', '1', '19', 'Bansos RTLH', 'Rt. 33 Rw.16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(141, '2024', '1', '19', 'Bansos RTLH', 'Rt. 33 Rw.16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(142, '2024', '1', '19', 'Bansos RTLH', 'Rt. 33 Rw. 16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(143, '2024', '1', '19', 'Bansos RTLH', 'Rt. 32 Rw. 15 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(144, '2024', '1', '19', 'Bansos RTLH', 'Rt. 34 rw.17 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(145, '2024', '1', '19', 'Bansos RTLH', 'Rt. 35 Rw.18 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(146, '2024', '1', '19', 'Bansos RTLH', 'Rt. 36 Rw. 18 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(147, '2024', '1', '19', 'Bansos RTLH', 'Rt.22 Rw. 11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(148, '2024', '1', '19', 'Bansos RTLH', 'Rt.22 Rw. 11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(149, '2024', '1', '19', 'Bansos RTLH', 'Rt. 22 Rw.11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(150, '2024', '1', '19', 'Bansos RTLH', 'Rt. 11 Rw. 5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(151, '2024', '1', '19', 'Bansos RTLH', 'Rt. 11 Rw. 5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(152, '2024', '1', '19', 'Bansos RTLH', 'Rt. 10 Rw.5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(153, '2024', '1', '19', 'Bimtek Pengelola Perpustakaan', 'Rt. 10 Rw.5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(154, '2024', '1', '19', 'Bansos RTLH', 'Rt.26 Rw. 13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(155, '2024', '1', '19', 'Bansos RTLH', 'Rt.56 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(156, '2024', '1', '19', 'Bansos RTLH', 'Rt.56 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(157, '2024', '1', '19', 'Bansos RTLH', 'Rt. 14 Rw. 7 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(158, '2024', '1', '19', 'Bansos RTLH', 'Rt. 17 Rw. 8 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(159, '2024', '1', '19', 'Bansos RTLH', 'Rt.15 Rw. 07 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(160, '2024', '1', '19', 'Bimtek Pengelola Perpustakaan', 'Rt. 3 rw. 2 Padukuhan Tukharjo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(161, '2024', '2', '9', 'Pengembangan Desa Wisata', 'Desa Wisata Tinalah, Wisata Puncak Kleco, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '2700000', '', NULL, 'Dinas Pariwisata'),
(162, '2024', '2', '10', 'Rehabilitasi Jaringan Irigasi', 'Rt.39 Rt. 24 Rt. 12 Sendangrejo, Rt. 17 Rw 8. Taman, RT 18 RW. 9 Dusun Puyang, Rt.39 Rw.19 Pagutan, Rt.54 Rw.27 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '', '', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(163, '2024', '1', '19', 'Bansos RTLH', 'Kaliagung, Kab. Kulon Progo', '34.01.06', '34.01.06.2006', '15000000', '20000000', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(164, '2024', '4', '3', 'Bantuan Sosial Jamban Sehat', 'Kaliagung, Kab. Kulon Progo', '34.01.06', '34.01.06.2006', '2500000', '', NULL, 'Dinas Kesehatan'),
(165, '2024', '1', '14', 'Bantuan Sosial siswa miskin tingkat SMP', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '1350000', '', NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(166, '2024', '1', '14', 'Bantuan Sosial siswa miskin tingkat SD', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '1000000', '', NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(167, '2024', '1', '4', 'Pelatihan Kebencanaan', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '11000000', '', NULL, 'Badan Penanggulangan Bencana Daerah'),
(168, '2024', '2', '1', 'Pelatihan pembudidaya ikan dalam pengelolaan limbah perikanan kepada pokdakan', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '35000000', '', NULL, 'Dinas Kelautan dan Perikanan'),
(169, '2024', '4', '12', 'Pendampingan perempuan dan anak korban kekerasan', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '8550000', '', NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(170, '2024', '4', '17', 'Bimtek Pengelola Perpustakaan', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '10000000', '', NULL, 'Dinas Perpustakaan dan Kearsipan'),
(171, '2024', '3', '13', 'Pameran', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '32000000', '', NULL, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu');

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
  `biaya` varchar(20) NOT NULL DEFAULT '0',
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
(2, 'Perumda Air Minum Tirta Binangun                                                                                                                                                                                    ', 'Jumantoro', '082225091245', 2),
(3, 'Perumda Aneka Usaha', 'Suharyanto', '08174116978', 3);

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
(4, 'PROGRAM BINA LINGKUNGAN DAN SOSIAL');

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
(0, 'admin', '$2y$10$2VeRaMuNRwnb2R4vxPEMyO1smSXAtHrL.Tx/iGF0T/qyLyWlhJ6Ue', 0, 'admin'),
(2, 'pdam.kp', '$2y$10$qY1cetkRSFfQZaNjwY2GeegobGVApwSpCmshsi4KH5S7hShz2aDw6', 1, 'pdam.kp'),
(3, 'anekausaha.kp', '$2y$10$DmQVzfwvSfb63ooruaFoHek3MtlcmovfpO7eVQy/WW2akuwNm4dVC', 1, 'anekausaha.kp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_upload`
--
ALTER TABLE `kegiatan_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `urusan_bidang`
--
ALTER TABLE `urusan_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
