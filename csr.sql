-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 10 Jun 2024 pada 10.36
-- Versi Server: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(3, 6, 2, '10000000', NULL, NULL),
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
  `permasalahan` text NOT NULL,
  `alamat` text NOT NULL,
  `kapanewon` varchar(20) NOT NULL,
  `kalurahan` varchar(20) NOT NULL,
  `biaya` varchar(20) NOT NULL DEFAULT '0',
  `biaya2` varchar(20) NOT NULL DEFAULT '0',
  `keterangan` text,
  `sumber_usulan` varchar(20) DEFAULT NULL,
  `opd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan_csr`
--

INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `permasalahan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `biaya2`, `keterangan`, `sumber_usulan`, `opd`) VALUES
(1, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'Fasilitasi pupuk dan bibit organik untuk kelompok tani sebanyak 3 Kelompok Tani', 'KT Sukatani Nganti, KT Ngudi Makmur Sebatang, KT Sederhana Tirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000', '115000', 'Tergantung jenis bibitnya', NULL, 'Dinas Pertanian dan Pangan'),
(2, '2024', '2', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Pelatihan Kelompok Wanita Tani sebanyak 1 KWT', 'KWT Amrih Maju Teganing I, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '7642000', '', 'Pelatihan (untuk 20 orang + 5 Panitia)', NULL, 'Dinas Pertanian dan Pangan'),
(3, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'Bantuan rumah produksi pupuk untuk 1 Kelompok Tani', 'KT Sarwoguno Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '10000000', '', 'Rumah Kompos', NULL, 'Dinas Pertanian dan Pangan'),
(4, '2024', '1', '18', 'Pengadaan bibit tanaman perkebunan', 'Pengadaan bibit kelapa genjah enthog untuk 2 Kelompok Tani', 'KT Sarwoguno Menguri, KT Mulyodadi Teganing II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '15772500', '', 'Fasilitasi Penumbuhan Lumbung Mataraman Untuk KWT', NULL, 'Dinas Pertanian dan Pangan'),
(5, '2024', '3', '6', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Pelatihan kriya kayu dan fasilitasi alat untuk 1 Padukuhan', 'Padukuhan Crangah, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '8500000', '', 'Pelatihan utk 20 org, halfday tidak termasuk alat/bahan', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(6, '2024', '1', '19', 'Bansos RTLH', 'Bantuan stimulan rumah tidak layak huni sejumlah 100 unit untuk 14 Padukuhan', '14 pedukuhan, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(7, '2024', '2', '5', 'Pengelolaan Jaringan Internet', 'Masih banyak wilayah yang belum terjangkau jaringan internet', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plamopang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '', '', NULL, NULL, 'Dinas Komunikasi dan Informatika'),
(8, '2024', '2', '19', 'Penyediaan Prasarana Sarana Utilitas Permukiman (Jalan Lingkungan, Drainase Lingkungan, PJU Lingkungan)', 'Masih banyak jalan lingkungan yang masih jalan tanah dan dimusim penghujan sangat licin sehingga membahayakan bagi pengguna jalan', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '2500000000', '2700000000', 'Jalan lingkungan', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(9, '2024', '4', '21', 'Bantuan sosial untuk PPKS', 'Pembinaan/ Penangangan Disabilitas, Tuna Rungu, Tuna Wicara, Jompo dan ODGJ untuk 2 Padukuhan', 'Pedukuhan Nganti dan Sebatang, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '3000000', '', 'Bantuan Sosial utk difabel', NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(10, '2024', '2', '15', 'Pembangunan LPJU', 'Merupakan jalan utama Jalur Girinyono-Tamanan yang saat ini masih kurang penerangannya 25 titik', 'Clapr I dan Clapar II, Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '', 'LPJU', NULL, 'Dinas Perhubungan'),
(11, '2024', '2', '15', 'Pembangunan LPJU', 'Sering terjadi kecelakaan di jalan antara Kantor Kalurahan sampai Sidowayah 15 titik', 'Tegalrejo dan Sidowayah, Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '', 'LPJU', NULL, 'Dinas Perhubungan'),
(12, '2024', '4', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Kursus Komputer, stir Mobil, Las, Bahasa Inggris untuk 1 Padukuhan', 'Padukuhan Keji, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '65000000', '', 'Komputer asumsi 100 org', NULL, 'Dinas Tenaga Kerja dan Transmigrasi\n'),
(13, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan Pengolahan Bambu untuk 1 Padukuhan', 'Padukuhan Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '16516000', '', 'RAB Pelatihan Bambu (20 orang, 3 hari, 8JPL)', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(14, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan percetakan untuk 1 Padukuhan', 'Padukuhan Crangah, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', 'per orang', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(15, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan pertukangan untuk 1 Padukuhan', 'Padukuhan Keji, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', 'per orang', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(16, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'pelatihan menjahit untuk 3 Kelompok', 'PKK Kalurahan, Padukuhan Menguri dan Sungapan II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', 'per orang', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(17, '2024', '2', '10', 'Pembangunan Sistem Penyediaan Air Minum', 'Dimusim kemarau kalirejo selalu kekurangan air bersih', 'sangon, plampang, kalibuko, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7810000', '', 'SPAM', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(18, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', 'Masih banyak warga masyarakat yang belum menggunakan meteran listrik sendirian ( SR ) sejumlah 100 KK', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '2000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(19, '2024', '2', '15', 'Pembangunan LPJU', 'Banyak tempat-tempat strategis yang masih gelap 3 titik dengan anggaran Rp 36.000.000,-', 'Plampang I, Plampang III, Sangon II, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '15000000', '', NULL, NULL, 'Dinas Perhubungan'),
(20, '2024', '3', '16', 'Bantuan peralatan produksi agro makanan dan minuman', 'Pelatihan Pengolahan bahan dari Nira kelapa untuk 1 Padukuhan', 'Padukuhan Menguri, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '16966000', '', 'RAB Pelatihan gula (20 orang, 3 hari, 8JPL)', NULL, 'Dinas Perdagangan dan Perindustrian'),
(21, '2024', '2', '1', 'Pelatihan budidaya teknis perikanan kepada pokdakan', 'Pelatihan Perikanan air darat dan pemberian bibit untuk 1 kelompok', 'KT Sederhana Tirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '35000000', '', 'Pelatihan dg asumsi 100 orang', NULL, 'Dinas Kelautan dan Perikanan'),
(22, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan IT bagi Karang Taruna untuk 1 kelompok', 'Padukuhan Nganti, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '65000000', '', 'Pelatihan dengan asumsi 100 org', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(23, '2024', '3', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan ekonomi produktif untuk Karang Taruna untuk 2 kelompok', 'Padukuhan Menguri dan Teganing II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '5000000', '', 'Pelatihan per orang', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(24, '2024', '4', '22', 'fasilitasi sertifikasi kompetensi pendaftar pelatihan penempatan peserta pelatihan', 'Pelatihan karawitan untuk 1 Padukuhan', 'Padukuhan Sungapan II, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '32975000', '', 'utk 25 org, 20x pertemuan', NULL, 'Dinas Tenaga Kerja dan Transmigrasi'),
(25, '2024', '1', '19', 'Bansos RTLH', 'rumah belum layak huni dan belum memenuhi standar kesehatan', 'pedukuhan klepu hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(26, '2024', '1', '19', 'Bansos RTLH', 'rumah belum layak huni dan belum memenuhi standar kesehatan', 'padukuhan bibis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(27, '2024', '1', '19', 'Bansos RTLH', 'rumah belum layak huni dan belum memenuhi standar kesehatan', 'padukuhan tegiri 1, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(28, '2024', '1', '19', 'Bansos RTLH', 'rumah belum layak huni dan belum memenuhi standar kesehatan', 'padukuhan tegiri 2, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(29, '2024', '1', '19', 'Bansos RTLH', 'rumah belum layak huni dan belum memenuhi standar kesehatan', 'padukuhan tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(30, '2024', '1', '19', 'Bansos RTLH', 'rumah tidak layak huni dan memenuhi standar kesehatan', 'padukuhan tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(31, '2024', '1', '19', 'Bansos RTLH', 'rumah tidak layak huni dan memenuhi standar kesehatan', 'padukuhan tegalrejo, soka, sermo lor, clapar 1, clapar 2, clapar 3 dan kalibiru, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(32, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', 'rumah tidak layak huni dan memenuhi standar kesehatan', 'kalurahan hargowilis meliputi 13 padukuhan, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '2000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(33, '2024', '1', '19', 'Bansos RTLH', 'Masih banyak rumah warga yang belum layak huni, baik dari segi bangunan fisik maupun dari segi kesehatan sejumlah 10 unit dengan anggaran Rp. 350.000.000,-', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(34, '2024', '1', '18', 'Bantuan prasarana pertanian tanaman pangan untuk kelompok tani', 'sarana dan prasarana belum memadai', 'kelompok tani ngudi mulyo pad tegalrejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '13728500', '', NULL, NULL, 'Dinas Pertanian dan Pangan'),
(35, '2024', '2', '19', 'Penyediaan SR Listrik bagi warga miskin', 'sebagian warag belum memiliki SR', '13 Padukuhan di Kalurahan Hargowilis, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '2000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(36, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'Masyarakat kurang pendapatannya, sehingga peningkatan ekonominya sangat lambat', 'Clapar II, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '8500000', '', 'Pelatihan utk 20 org, halfdaym tidak termasuk alat/bahan', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(37, '2024', '2', '15', 'Pengadaan Cermin Tikungan', 'banyak tikungan tajam yang rawan terjadi kecelakaan denganmedan pegunungan', 'Setiap padukuhan masing-masing 10 titik, Kab. Kulon Progo', '34.01.08', '34.01.08.2003', '3728500', '7376400', 'shbj 2024', NULL, 'Dinas Perhubungan'),
(38, '2024', '2', '15', 'Pengadaan Cermin Tikungan', 'Banyak tikungan tajam dan rawan kecelakaan di ruas jalan lokal primer 1 Kokap-Kalirejo ( 1.08.01.005 ) sebanyak 10 unit', 'Gunung Kukusan,, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '3728500', '7376400', 'shbj 2024', NULL, 'Dinas Perhubungan'),
(39, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'Dimusim kemarau selalu terjadi bencana kekeringan, sehingga perlu bantuan 100 unit IPAH', 'Kalibuko I, Kalibuko II, Papak, Sangon I, Sangon II, Sengir, Plampang I, Plampang II, Plampang III, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7500000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(40, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'Pada Musim Kemarau Kesulitan Air Bersih', 'Pedukuhan Plampang 1 Kalirejo 5 Unit, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '7500000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(41, '2024', '1', '4', 'Bantuan Sosial Dropping Air', 'Pedukuhan Plampang 1 sulit Air bersih ketika kemarau', 'Pedukuhan Plampang 1 Kalirejo, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '300000', '', 'per tangki', NULL, 'Badan Penanggulangan Bencana Daerah'),
(42, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'Limbah Organing di Papak Melimpah diperlukan alat pengolahan untuk pertanian Organik', 'KT. Sido Makmur Papak, Kab. Kulon Progo', '34.01.08', '34.01.08.2004', '29661100', '', NULL, NULL, 'Dinas Pertanian dan Pangan'),
(43, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Kurangnya saran prasarana pengelaan sampah', 'Bank Sampah Uwuh Mulyo Hargotirto, Kab. Kulon Progo', '34.01.08', '34.01.08.2005', '1572300', '27500000', '27.500.000 untuk Mesin Pencacah;\n1.572.300 untuk Timbangan Digital', NULL, 'Dinas Lingkungan Hidup'),
(44, '2024', '2', '15', 'Pembangunan LPJU', 'Kalurahan Sidomulyo masih minim LPJU', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '2500000', '', NULL, NULL, 'Dinas Perhubungan'),
(45, '2024', '1', '19', 'Bansos RTLH', 'Masih banyak terdapat rumah yang tidak layak huni', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(46, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan usaha tani 200 m untuk akses jalan petani 2 titik', 'Padukuhan Pendem,Karangasem, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '200000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(47, '2024', '1', '20', 'Bantuan Sosial bagi anak yatim piatu', 'Masih minimnya bantuan bagi anak yatim piatu', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1000000', '', 'Dasar APBD 2023', NULL, 'Sekretariat Daerah'),
(48, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'terdapat 6 bank sampah yang belum berfungsi optimal', 'Pendem,Karangasem,Talunombo,Parakan,Nabin,Kutogiri, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1572300', '27500000', '27.500.000 untuk Mesin Pencacah;\n1.572.300 untuk Timbangan Digital', NULL, 'Dinas Lingkungan Hidup'),
(49, '2024', '1', '18', 'Hibah Bibit Ternak (Sapi, kambing, domba)', 'terdapat kelompok tani ternak yang masih menginginkan bantuan untuk pengembangan usaha ternak', '13 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '1685400', '28090000', '21.681.600 - 28.090.000 sapi;  \n1.685.400 - 1.685.400 kambing; \n2.809.000 - 10.674.200 Domba\n', NULL, 'Dinas Pertanian dan Pangan'),
(50, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', 'terdapat beberapa tempat mata air dengan kondisi tanaman yang berkurang', '6 Padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '100000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(51, '2024', '1', '18', 'Bantuan Pupuk dan Peralatan Perkebunan', 'beberapa padukuhan membutuhkan traktor cakar baja untuk tanah kegalan', '6 padukuhan, Kab. Kulon Progo', '34.01.07', '34.01.07.2007', '12500000', '36198100', NULL, NULL, 'Dinas Pertanian dan Pangan'),
(52, '2024', '2', '1', 'Pelatihan budidaya teknis perikanan kepada pokdakan', 'Hasil panen dan pemasaran ikan lele belum maksimal Pokdakan Jagading Ulam', 'Padukuhan Girinyono RT 43, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '35000000', '', 'Pelatihan dg asumsi 100 orang', NULL, 'Dinas Kelautan dan Perikanan'),
(53, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'perlengkapan dan peralatan untuk kegiatan bank sampah masih minim Bank sampah Serang Bersinar', 'Padukuhan Serang, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '1572300', '27500000', '27.500.000 untuk Mesin Pencacah;\n1.572.300 untuk Timbangan Digital', NULL, 'Dinas Lingkungan Hidup'),
(54, '2024', '1', '1', 'Bantuan benih dan sarana prasarana produksi budidaya ikan kepada Pokdakan', 'sarana prasarana ( kolam bulat) dan kebutuhan pengadaan benih serta pakan masih terbatas. tidak bisa berproduksi banyak (pokdakan Mikasa ) untuk 20 orang', 'Padukuhan Serang Rt 02, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '1179800', '3314600', '400 - 700 per ekor;\n1.179.800 - 3.314.600 per kolam ', NULL, 'Dinas Kelautan dan Perikanan'),
(55, '2024', '1', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'pengolahan lahan kurang maksimal dibutuhkan Handtraktor capung dan Hand Sprayer Elektrik untuk 10 kelompok KWT di wilayah Sendangsari', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '737400', '14500000', ' Hand Sprayer 737.400;\nHandtraktor  Capung 14.500.000', NULL, 'Dinas Pertanian dan Pangan'),
(56, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'dibutuhkan kendaraan bank sampah roda 3 untuk operasional kegiatan bank sampah sebanyak 13 Unit untuk 13kelompokBank Sampah se- Sendangsari', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '42000000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(57, '2024', '3', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'KWT dan PKK membutuhkan pelatihan dan pendampingan pemasaran produk pangan lokal. sebanyak 100 orang', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '7642000', '', 'Pelatihan (untuk 20 orang + 5 Panitia)', NULL, 'Dinas Pertanian dan Pangan'),
(58, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'masih minimnya pengetahuan tentang pembuatan, pemasaran dan pengemasan produk olahan pangan bagi UMKM untuk 60 orang', 'Sendangsari, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '8500000', '', 'Pelatihan utk 20 org, halfdaym tidak termasuk alat/bahan', NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(59, '2024', '4', '7', 'Pembangunan INSTALASI PEMANEN AIR HUJAN (IPAH)', 'terganggunya pola tanam ,', 'Padukuhan Kroco, Kab. Kulon Progo', '34.01.07', '34.01.07.2006', '7500000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(60, '2024', '4', '8', 'Bantuan pengelolaan pekarangan untuk KWT (kecuali ikan)', 'Banyak lahan pekarangan belum dimanfaatkan membutuhkan 10.000 batang bibit tananam buah seperti alpukat, durian dan manggis', 'Padukuhan Puyang, Padukuhan Pagutan, Padukuhan Kedungrong, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '5000', '115000', NULL, NULL, 'Dinas Pertanian dan Pangan'),
(61, '2024', '1', '4', 'Bantuan Sosial Dropping Air', 'Adanya wilayah yang mengalami kekeringan di Musim Kemarua kebutuhan pada musim kemarau 100 tangki', 'Padukuhan Puyang, Pagutan, Plarangan, Sendang Mulyo, Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '300000', '', 'per tangki', NULL, 'Badan Penanggulangan Bencana Daerah'),
(62, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Cor blok atau jalan lingkungan rusak berat sepanjang 325 meter', 'Jeringan, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', 'per meter', NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(63, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Cor blok atau jalan lingkungan candi rusak berat sepanjang 600 meter', 'Jalan Ponces - Printali Padukuhan Pringtali No.Ruas 396/2.09.04.006, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(64, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Cor blok atau jalan lingkungan rusak berat sepanjang 400 meter', 'Gowok, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(65, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Cor blok atau jalan lingkungan rusak berat sepanjang 600 meter', 'pelem, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(66, '2024', '2', '10', 'Pembangunan Jalan', 'Jalan Cor blok atau jalan lingkungan produksi bulu rusak berat sepanjang 325 meter', 'Pringtali, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(67, '2024', '2', '10', 'Pembangunan Jaringan Irigasi', 'Perlunya Bendungan dan Saluran irigasi Dungceleng untuk Peningkatan hasil pertanian', 'Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1000000', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(68, '2024', '2', '15', 'Pembangunan LPJU', 'Memberikan kenyamanan dan keamanan masyarakat sebanyak 70 titik', 'Padukuhan Kaliduren, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, NULL, 'Dinas Perhubungan'),
(69, '2024', '2', '15', 'Pembangunan LPJU', 'Memberikan kenyamanan dan keamanan masyarakat', 'Jeringan, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, NULL, 'Dinas Perhubungan'),
(70, '2024', '2', '15', 'Pembangunan LPJU', 'Rawan tindak kriminal dan kecelakaan meningkatkan kualitas jalan lingkungan', 'Jalan Pelemdukuh- Jarakan di PadukuhanJarakan, Padukuhan Kaliduren, Padukuhan Pelem, Padukuhan Gebang, dan PadukuhanKleben No.Ruas 159/1.09.04.015, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '2500000', '', NULL, NULL, 'Dinas Perhubungan'),
(71, '2024', '1', '18', 'Bantuan Sarana Produksi Hortikultura', 'Meningkatkan potensi Kalurahan dengan Demplot Tanaman Kelapa dan kopi untuk ketersediaan bibit tanaman unggul seluas 8000 m2', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '', '', NULL, NULL, 'Dinas Pertanian dan Pangan'),
(72, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', 'Pelestarian mata air', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '100000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(73, '2024', '4', '7', 'Fasilitasi sarana prasarana persampahan untuk bank sampah', 'Melestarikan lingkungan, mengurangi pencemaran, meningkatkan perekonomian dan Pengelolaan bank sampah', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '1572300', '27500000', '27.500.000 untuk Mesin Pencacah;\n1.572.300 untuk Timbangan Digital', NULL, 'Dinas Lingkungan Hidup'),
(74, '2024', '4', '7', 'Pembangunan INSTALASI PENGOLAH AIR LIMBAH (Biogas, Limbah Ternak/Tahu Tempe)', 'Pengolahan limbah domestik dalam upaya peningkatan fasilitas sarana prasarana kesehatan rumah tangga', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '30000000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(75, '2024', '3', '6', 'Pelatihan kewirausahaan SDM pelaku UMKM', 'Meningkatkan kesejahteraan warga', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8500000', '', NULL, NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(76, '2024', '3', '6', 'Pelatihan penguatan kelembagaan UMKM', 'Meningkatkan kesejahteraan warga dengan pengadaan Alat untuk pengembangan ekonomi Pedesaan non Pertanian', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8500000', '', NULL, NULL, 'Dinas Koperasi Usaha Kecil dan Menengah'),
(77, '2024', '4', '21', 'Pembinaan Lembaga Kesejahteraan Sosial (LKS)', 'Peningkatan kapasitas atau Pelatihan penyuluhan pemberdayaan Perempuan dan perlindungan Anak sebagai upaya perlindungan perempuan dan anak', 'Gowok, Jarakan, Kaliduren, Kedunggupit, Jeringan, Pringtali, Pelem, Gebang, Dangsambuh, Kleben, Kab. Kulon Progo', '34.01.11', '34.01.11.2001', '8550000', '', NULL, NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(78, '2024', '2', '2', 'Penyediaan Sarana dan Prasarana Pemuda dan Olahraga', 'Lantai Lapangan GOR Banjarsari saat ini masih lantai semen agar lebih aman saat di gunakan perlu pengadaan lantai interlock seluas 15x25 meter', 'RT 30 RW 14, Padukuhan Balong VIII, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '60000000', '', 'Dindik, utk lap bulu tangkis GOR Djarum Magelang', NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(79, '2024', '2', '9', 'Pembangunan Pembangunan dan Rehab Toilet atau Rehab Pos Retribusi', 'Lokasi agrowisata Bukit Tanggulangsi belum ada Bangunan Toilet', 'Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '312000000', '', NULL, NULL, 'Dinas Pariwisata'),
(80, '2024', '1', '19', 'Bansos RTLH', 'Masih banyak rumah yang belum memenuhi standart kelayakan a.n Mirat 3401114501460001', 'Rt. 11 Rw. 05 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(81, '2024', '1', '19', 'Bansos RTLH', 'Masih banyak rumah yang belum memenuhi standart kelayakan a.n Ngatinem NIK : 3401117112390080', 'Rt. Rt.07 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(82, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Kemijan NIK : 3401113110640001', 'Rt. 6 Rw. 03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(83, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Wakidi NIK : 3401112911670001', 'Rt. 6 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(84, '2024', '1', '19', 'Bansos RTLH', 'Masih banyak rumah yang belum memenuhi standart kelayakan a.n Ngatijah NIK : 3401117012470004', 'Rt.07 Rw. 03Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(85, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Boniyem NIK 3401115602440001', 'Rt.5 Rw.03 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(86, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sukirno NIK : 3401112106750000', 'Rt. 17 Rw.8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(87, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sumanto NIK 3603160203780004', 'Rt.16 Rw.8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(88, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Tri Waluyo NIK : 3401111811850001', 'Rt. 22 Rw.11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(89, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Mei Riyadi NIK : 3401111405880004', 'Rt.26 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(90, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Diyono Al Waljidi NIK : 3401111703560001', 'Rt. 28 Rw.14 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(91, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Somonadi NIK : 3401112210510001', 'Rt.27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(92, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudarmadi NIK : 3401112904720002', 'Rt. 36 Rw.18 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(93, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Muklas NIK : 3401112905980001', 'Rt. 34 Rw.17 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(94, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Juminto NIK : 3401112207700000', 'Rt.36 Rw. 18 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(95, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Dalidi NIK : 3401111001780003', 'Rt. 34 rw. 17 Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(96, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Kirjan NIK : 3401110710670001', 'Rt. 46 Rw. 22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(97, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Suraji NIK : 3401110508650000', 'Rt.43 Rw. 21 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(98, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Ngateno NIK : 3401111109620001', 'Rt. 45 R w.22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(99, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Waginem NIK : 3401114103520001', 'Rt. 43 Rw. 21 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(100, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sarijo NIK : 3401112707500001', 'Rt. 49 rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(101, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Martilah NIK : 3401115904610002', 'Rt. 49. Rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(102, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Daladi NIK : 3401110403660000', 'Rt. 48 Rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(103, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Poniyo NIK : 3401112201540001', 'Rt. 47 rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(104, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Kemiran NIK : 3401112401640001', 'Rt. 47 rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(105, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sugiman NIK : 3401110405600001', 'Rt. 48 Rw. 23 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(106, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Supoyo NIK : 3401112807680001', 'Rt. 50 Rw. 24 Duwet, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(107, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Kariyonadi NIK : 3401112112420001', 'Rt. 57 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(108, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Widi Wiyono NIK : 3401113112390025', 'Rt. 19 Rw. 9 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(109, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sarjiyono NIK : 3401112511790002', 'Rt. 19 Rw. 9 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(110, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sugeng Sugono NIK : 3401111109670001', 'Rt. Rt. 20 rw. 10 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(111, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Wiji Wiyono NIK : 3401113112400020', 'Rt. 20 Rw. 10 Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(112, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sardi NIK : 3401110205520001', 'Rt. 39 rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(113, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Legiman NIK : 3401112706710001', 'Rt. 40 Rw. 20 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(114, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Suparian NIK : 3401110704710003', 'Rt. 38. Rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(115, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Ngatiyah NIK : 3401114206540001', 'Rt.39 Rw. 19 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(116, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n PonijanNIK : 3401111302830001', 'Rt. 41 Rw. 20 Pagutan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(117, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sugeng Riyadi NIK : 3401110205840002', 'Rt.46 Rw.22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(118, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Keman NIK : 3401113112700005', 'Rt. 46 Rw. 22 Junut, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(119, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Komdi NIK : 3401112610400001', 'Rt.29 Rw. 14 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(120, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Saijo NIK : 3401113112590013', 'Rt. 27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(121, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Pariyem NIK : 3401115106390001', 'Rt. 27 Rw.13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(122, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Harjo Sumardiyono NIK : 3401111510440001', 'Rt.24 rw. 12 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(123, '2024', '3', '11', 'Pembinaan pengelolaan BUMDes', 'Pengelolaan unit usaha yang masih sulit dan pengelolaan keuanga n yang belum rapi', 'BUMDes Binangun Bantala Aji Banjarsari, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '21000000', '', NULL, NULL, 'Dinas Pemberdayaan Masyarakat dan Desa Pengendalian Penduduk dan Keluarga Berencana\n '),
(124, '2024', '2', '9', 'Pemberdayaan Pelaku Wisata', 'SDM kurang/Peningkatan SDM pelaku wisata', 'RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '2700000', '', NULL, NULL, 'Dinas Pariwisata'),
(125, '2024', '4', '9', 'Pengembangan Desa Wisata', 'Pengembangan Desa Wisata masih terkendala SDM dan Anggaran', 'RT 5 RW 2 Padukuhan Kaliapak, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '2700000', '', NULL, NULL, 'Dinas Pariwisata'),
(126, '2024', '2', '15', 'Pembangunan LPJU', 'Belum adanya lampu penerangan jalan membutuhkan 5 titik', 'Jalan Lokal Primer I Ruas Ngori-Nogosari, Gunung Kucir, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '15000000', '', NULL, NULL, 'Dinas Perhubungan'),
(127, '2024', '4', '7', 'Pembangunan Sumur Resapan', 'Agar tingkat air tanah terjaga dan menjaga mata air', 'RT 27 RW 13 Padukuhan Klendrekan, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '3500000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(128, '2024', '4', '7', 'Penanaman pohon di daerah tangkapan sekitar mata air dan sempadan sungai', 'Menjaga Kelestarian Sumber mata air', 'Padukuhan Ngaran III, Kalurahan Banjarsari, Kab. Kulon Progo', '34.01.11', '34.01.11.2002', '100000', '', NULL, NULL, 'Dinas Lingkungan Hidup'),
(129, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Parji NIK : 3401110610580001', 'Rt.24 Rw.12 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(130, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Musiman NIK : 3401110711520002', 'Rt. 17 Rw. 8 Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(131, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudarmanto NIK : 3401112503620003', 'Rt. 5 Rw. 3 Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(132, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Alvian Nursyaid NIK : 3401 1111 03950001', 'Rt. 05 Rw. 03 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(133, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Ngatijah NIK : 3401 1170 12470004', 'Rt. 07 Rw. 04 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(134, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Maryoto NIK : 3401 1113 04760001', 'Rt. 08 Rw. 04 Padukuhan Bangunrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(135, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Kemijan NIK : 3401 1131 10640001', 'Rt. 06 Rw. 03 Padukuhan Bangunrej, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(136, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Martiyah NIK : 3401 119 012490003', 'Rt. 18 Pedukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(137, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Widi Wiyono NIK : 3401 1131 12390025', 'RT.20 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(138, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sarjiyono NIK : 3401 11251 1790002', 'Rt.19 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(139, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Slamet Iswanto NIK : 3403 08020 2720002', 'RT.20 Padukuhan Puyang, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(140, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Suratinah NIK : 3401 114112 310003', 'Rt. 33 Rw.16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(141, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudikarto NIK : 3401 11010 7430003', 'Rt. 33 Rw.16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(142, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Musinah NIK : 3401 1170073 70002', 'Rt. 33 Rw. 16 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(143, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Ngajilut NIK : 3401 110809 0001', 'Rt. 32 Rw. 15 Sendang Mulyo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(144, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudiwiyono NIK : 3401 110502 550001', 'Rt. 34 rw.17 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(145, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudarman NIK : 3401 11211 2720001', 'Rt. 35 Rw.18 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(146, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sudarmadi NIK : 3401 112904 720002', 'Rt. 36 Rw. 18 Padukuhan Besole, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(147, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Parjo NIK : 3401 11220 2690001', 'Rt.22 Rw. 11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(148, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sugiyo NIK : 3401 112307 090005', 'Rt.22 Rw. 11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(149, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Priyono NIK : 3401 11270 4920002', 'Rt. 22 Rw.11 Sendangrejo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(150, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Daliyo NIK : 3401 110807 630002', 'Rt. 11 Rw. 5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(151, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Pujiyono NIK : 3401 1108 2161 0003', 'Rt. 11 Rw. 5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(152, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Suwardi NIK : 3401 113012 730001', 'Rt. 10 Rw.5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(153, '2024', '1', '19', 'Bimtek Pengelola Perpustakaan', 'Rumah yang belum memenuhi standart kelayakan a.n Mujini NIK : 3401 1131 01760001', 'Rt. 10 Rw.5 Plarangan, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(154, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Marwiyah NIK : 3401 11460 2530002', 'Rt.26 Rw. 13 Kalinongko, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(155, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Sugiyem NIK : 3401 1143025 60003', 'Rt.56 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(156, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Wartono NIK : 3401 111802 650001', 'Rt.56 Rw. 28 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(157, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Mujianto NIK : 3401 110111 730001', 'Rt. 14 Rw. 7 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(158, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Wujud NIK : 3401 11240 7650001', 'Rt. 17 Rw. 8 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(159, '2024', '1', '19', 'Bansos RTLH', 'Rumah yang belum memenuhi standart kelayakan a.n Muhamad Maskur NIK : 3402 13130 7780002', 'Rt.15 Rw. 07 Padukuhan Taman, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(160, '2024', '1', '19', 'Bimtek Pengelola Perpustakaan', 'Rumah yang belum memenuhi standart kelayakan a.n Mudi Utomo NIK : 3401 11311 228 0014', 'Rt. 3 rw. 2 Padukuhan Tukharjo, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(161, '2024', '2', '9', 'Pengembangan Desa Wisata', 'Tempat wisata yang masih perlu pengembangan', 'Desa Wisata Tinalah, Wisata Puncak Kleco, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '2700000', '', NULL, NULL, 'Dinas Pariwisata'),
(162, '2024', '2', '10', 'Rehabilitasi Jaringan Irigasi', 'Banyak lahan persawahan yang mengalami kekeringan', 'Rt.39 Rt. 24 Rt. 12 Sendangrejo, Rt. 17 Rw 8. Taman, RT 18 RW. 9 Dusun Puyang, Rt.39 Rw.19 Pagutan, Rt.54 Rw.27 Dukuh, Kab. Kulon Progo', '34.01.11', '34.01.11.2003', '', '', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(163, '2024', '1', '19', 'Bansos RTLH', 'Rehap rumah tidak layak huni', 'Kaliagung, Kab. Kulon Progo', '34.01.06', '34.01.06.2006', '15000000', '20000000', NULL, NULL, 'Dinas Pekerjaan Umum Perumahan dan Kawasan Permukiman'),
(164, '2024', '4', '3', 'Bantuan Sosial Jamban Sehat', 'Pengadaan jamban sehat bagi keluarga miskin', 'Kaliagung, Kab. Kulon Progo', '34.01.06', '34.01.06.2006', '2500000', '', NULL, NULL, 'Dinas Kesehatan');
INSERT INTO `kegiatan_csr` (`id`, `tahun`, `ruang_lingkup`, `urusan_bidang`, `program_kegiatan`, `permasalahan`, `alamat`, `kapanewon`, `kalurahan`, `biaya`, `biaya2`, `keterangan`, `sumber_usulan`, `opd`) VALUES
(165, '2024', '1', '14', 'Bantuan Sosial siswa miskin tingkat SMP', 'Masih terdapat anak miskin tingkatan SMP yang kekurangan dalam menunjang kebutuhan hidup maupun fasilitas pendidikan.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '1350000', '', NULL, NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(166, '2024', '1', '14', 'Bantuan Sosial siswa miskin tingkat SD', 'Masih terdapat anak miskin tingkatan SDyang kekurangan dalam menunjang kebutuhan hidup maupun fasilitas pendidikan.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '1000000', '', NULL, NULL, 'Dinas Pendidikan Pemuda dan Olahraga'),
(167, '2024', '1', '4', 'Pelatihan Kebencanaan', 'Masih kurangnya pengetahuan tentang palatihan kebencanaan bagi relawan yang ada di Kalurahan Demangrejo maka dari itu diperlukan pelatihan kebencanaan.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '11000000', '', NULL, NULL, 'Badan Penanggulangan Bencana Daerah'),
(168, '2024', '2', '1', 'Pelatihan pembudidaya ikan dalam pengelolaan limbah perikanan kepada pokdakan', 'Kelompok budidaya ikan yang masih kurang mengenai pengelolaan limbah.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '35000000', '', NULL, NULL, 'Dinas Kelautan dan Perikanan'),
(169, '2024', '4', '12', 'Pendampingan perempuan dan anak korban kekerasan', 'Masih sangat kurang edukasi mengenai pendampingan perempuan dan anak korban kekerasan maka dari itu sangat diperlukan bantuan untuk kegiatan sosialisasi.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '8550000', '', NULL, NULL, 'Dinas Sosial Pemberdayaan Perempuan dan Perlindungan Anak'),
(170, '2024', '4', '17', 'Bimtek Pengelola Perpustakaan', 'Perpustakaan ada dengan sarana yang memadai namun pengelolaan perpustakaan perlu dilakukan bimbingan.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '10000000', '', NULL, NULL, 'Dinas Perpustakaan dan Kearsipan'),
(171, '2024', '3', '13', 'Pameran', 'Ada banyak potensi pegiat seni rupa di Demangrejo namun untuk kegiatan dan media penyaluran bakat yang potensial tidak ada. maka dari itu, untuk memperkenalkan dan mempromosikan potensi ini kami mengajukan untuk difasilitasi kegiatan pameran seni rupa.', 'Demangrejo, Sentolo, Kulon Progo, Kab. Kulon Progo', '34.01.06', '34.01.06.2001', '32000000', '', NULL, NULL, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu');

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
  `permasalahan` text NOT NULL,
  `alamat` text NOT NULL,
  `id_kapanewon` varchar(50) NOT NULL,
  `kapanewon` varchar(20) NOT NULL,
  `id_kalurahan` varchar(50) NOT NULL,
  `kalurahan` text NOT NULL,
  `biaya` varchar(20) NOT NULL DEFAULT '0',
  `biaya2` varchar(20) NOT NULL DEFAULT '0',
  `keterangan` text,
  `sumber_usulan` varchar(20) DEFAULT NULL,
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
-- Indexes for table `detail_kegiatan_csr`
--
ALTER TABLE `detail_kegiatan_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kalurahan`
--
ALTER TABLE `kalurahan`
  ADD PRIMARY KEY (`id_kalurahan`);

--
-- Indexes for table `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_upload`
--
ALTER TABLE `kegiatan_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urusan_bidang`
--
ALTER TABLE `urusan_bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kegiatan_csr`
--
ALTER TABLE `detail_kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `kegiatan_upload`
--
ALTER TABLE `kegiatan_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `urusan_bidang`
--
ALTER TABLE `urusan_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
