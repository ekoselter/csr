-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Sep 2024 pada 01.17
-- Versi server: 5.7.44
-- Versi PHP: 8.1.10

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
  `opd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(0, 'admin', '$2y$10$2VeRaMuNRwnb2R4vxPEMyO1smSXAtHrL.Tx/iGF0T/qyLyWlhJ6Ue', 0, 'admin'),
(2, 'pdam.kp', '$2y$10$Ab/KX.ITBrD5K.aHZU/vhefWZnVk6G/H9Omrefh6zX4FdF7iIv84i', 1, 'pdam.kp'),
(3, 'anekausaha.kp', '$2y$10$DmQVzfwvSfb63ooruaFoHek3MtlcmovfpO7eVQy/WW2akuwNm4dVC', 1, 'anekausaha.kp'),
(4, 'shinta.putrap', '$2y$10$6.CtqWfUw0Ur1dD4vBh4zuOQgEBFVy4VMoZYfItnDotgsl1419Tvi', 1, 'shinta.putrap'),
(5, 'nusamba.temon', '$2y$10$tZnEl.XEwwnHljw1aFJGPeZM8CzQstOeDHTw1nqjGBkieq44Ijnye', 1, 'nusamba.temon'),
(6, 'bank.kp', '$2y$10$9uY0w8mlRgI/bSFYnmEez.FCemvJbTyyTLPTAeGrEcvs19NEP/sNO', 1, 'bank.kp'),
(7, 'btpn.kp', '$2y$10$JcbCYh.VxLbyJgzB.yejVOchMgMfpD3SA4Wh9ryDoruaMLdGu8MYu', 1, 'btpn.kp'),
(8, 'bni.wates', '$2y$10$dAX48eZzLo6kxgUA5EBRXOjYs8XZzeOwqrVrQcnZRkoS0VcZMlMFO', 1, 'bni.wates'),
(9, 'bpr.ami', '$2y$10$4yWbRCuz27aei9VjtdzX7OjyFl1MKusbXTU/c1/V5Q3hQGW/pTlw6', 1, 'bpr.ami'),
(10, 'bri.wates', '$2y$10$Dwg5FN.9GcwwN/SkYfNZLerqo9qmaBbcYyJAfqfmFxfoxi1gAY3Ae', 1, 'bri.wates'),
(11, 'mandiri.wates', '$2y$10$Vk1TX23blvB4FuTbMZw/7eOCrJlIyNVx9rlasN17kZi/rOnvQ4Ley', 1, 'mandiri.wates'),
(12, 'bca.wates', '$2y$10$RTRTudLOaja606e3e42iKeVSt8NCMWyZTOXbzgRlcSNEfQZbgMjE2', 1, 'bca.wates'),
(13, 'bsi.wates', '$2y$10$1b6IGVoro/LhHBYmM.hqTeHhJOhvlN1KJU3u5J5rDhOjmBayw6bpu', 1, 'bsi.wates'),
(14, 'woori.sdr', '$2y$10$NDpysuyYowTLqo4oU3ThrOmc8a2bPLWZIYInkT8oL6IaZFomlOKKS', 1, 'woori.sdr'),
(15, 'pegadaian.wates', '$2y$10$zdfGOke.33ibv0a1udk0tuS4AzAZ4NKmbmOsHN5H9lhCztzreuTOu', 1, 'pegadaian.wates'),
(16, 'ujb.wates', '$2y$10$59o/voRsY7cq6fkxBR9YhOKhs4JJ8wsjEFknND43YwONiAZYC05T2', 1, 'ujb.wates'),
(17, 'khs.kp', '$2y$10$AEPs7CwJYOgjNT1euwXYXeuUpjc0KxDOWVpJYnmOdiDjydjZXmkOu', 1, 'khs.kp'),
(18, 'pln.wates', '$2y$10$DgmUWugtMyODQex1epDQVOnsVBz7w2rN88xbUYdIVsWujh5EOh50m', 1, 'pln.wates'),
(19, 'ap.support', '$2y$10$ap12.TgogxRzGUvANZc4O.PkEjmP3Csj8KgOxR/SzBVyKxxm8Irbi', 1, 'ap.support'),
(20, 'larissa.kp', '$2y$10$rUfNrOFP8yKYTiWOwlQcP.cODnvTBXaI98UbCquFSqtjD2MJsXANO', 1, 'larissa.kp'),
(21, 'ciomas.kp', '$2y$10$8WrCgGxooN8BCKRdmMKnCebFuStWABQ6nSVx0ciAM1cADQvQOeTtO', 1, 'ciomas.kp'),
(22, 'aleyah.kp', '$2y$10$ZL.TVIJqHV3v3c0JScnPxuty8K7cWnWW.2jIszWsIqw.rW6ovKWMC', 1, 'aleyah.kp'),
(23, 'js.gloves', '$2y$10$lv7uXxXh9Wo03hAAbAhUC.hIojQqYM5aOXm3QNTbvWV2bEGUYk5dy', 1, 'js.gloves'),
(24, 'lestari.pg', '$2y$10$JI8LMDxyi3.JrkV0czqgc.QaMGMkMjDGyb/Uc37Qt6WVJgIMUFWGu', 1, 'lestari.pg'),
(25, 'ska.kp', '$2y$10$8Er4M3mSAM/XYxVfdbG18OpdhcpxJ3VaEwn502xql6cUMQChkQWmW', 1, 'ska.kp'),
(26, 'sci.kp', '$2y$10$d7B3Oz6eY8gqyu1R0RWdPOPCZzvg/zxyu9egKtaRH0gjEdKsqtW9W', 1, 'sci.kp'),
(27, 'toto.jogko', '$2y$10$PK6F4XpLe6OpEbKWH0ah9uHVDhU44dTL7rM6KgxhHW/.fdbk/6HL.', 1, 'toto.jogko'),
(28, 'odixa.kp', '$2y$10$EAXhHFHX52oTC7.dFq2fLODBNf86VcDDs.EQ20oD50ZBdWfAVnZdW', 1, 'odixa.kp'),
(29, 'kbp.kp', '$2y$10$JC6mStGxPmfLbuPJfFe8YuAZT9adppy3Rw.H1plBznGhY5tF.Y8v2', 1, 'kbp.kp'),
(30, 'swk.kp', '$2y$10$0PWm9Pse57M04hfq/bOXCudAOB92oCgRG9norJbSSQ55uhVx78xcG', 1, 'swk.kp'),
(31, 'sak.kp', '$2y$10$U094qx4ufnE1WF6TfUxocOS.l9UcQ9/247jfms6PaVaK0WfQ0QKCC', 1, 'sak.kp'),
(32, 'putrapatria.kp', '$2y$10$hdBWEoC2ePg5oMWdX.J4z.Q7lqR3vsXdEeExVnuhuzdBTFcam/XTG', 1, 'putrapatria.kp'),
(33, 'bonafide.kp', '$2y$10$Hdg0xlifGCwuyMUp7GfVQugPHu00etiony/C6t2trG4/daclrmEDy', 1, 'bonafide.kp'),
(34, 'dian.niaga', '$2y$10$J3IYOUrA0ao3YUgGENb7ieGJ.05AKQAlnZCDALD9zJkLqUgOCCwRi', 1, 'dian.niaga'),
(35, 'harapan.kp', '$2y$10$ZXVb12OFWe0DZ9ilziLNSeR4Mqj8xP4Bzgh2Zf.3JY2.dcxLwiaf2', 1, 'harapan.kp'),
(36, 'hms.kp', '$2y$10$25jJkQ1Dcis7MsHqi3FHO.GbT7m7BoMWNLrffhbJebDKpjYwFFT3i', 1, 'hms.kp'),
(37, 'kai.wates', '$2y$10$GchSkU5GJ254IEyZv/uaee98KNGuh2h8tZT/uoCeJagY5iCzNaKL2', 1, 'kai.wates'),
(38, 'handika.kp', '$2y$10$JdPtHoN7Zwl.Np1cab3DCuaFCzs8HV8msIDWq/nfZRh313aM.CHBS', 1, 'handika.kp'),
(39, 'epotech.kp', '$2y$10$sds.ieVtE1Az//6AFOtSe.cMrNF0YSiqPqAXXTVYUNqJpVjrM.htu', 1, 'epotech.kp'),
(40, 'ikip.pgri', '$2y$10$b47tz4g2npr54z4ugjqdM.3GjbXPh.4ox8rLVg8cHiwDCU0OlQpwm', 1, 'ikip.pgri'),
(41, 'gapensi.kp', '$2y$10$LVCAVk2Vsf4b6.VeVmaX/.OHUlNxleoaN/HMYefbli2.fOKLpzX7S', 1, 'gapensi.kp'),
(42, 'kadin.kp', '$2y$10$Qicyw61b1obGVdDxX4tTMuQPtmSHca2zvtADJnWUvNcaHFkZakpzW', 1, 'kadin.kp'),
(43, 'askonas.kp', '$2y$10$C4H2dO0ywJA/mHwoI8m5TuQACiBxHiSohUUJ0JyD0M1CkVBsWfPce', 1, 'askonas.kp'),
(44, 'hipmi.kp', '$2y$10$veX5eYhiIzRXDFUOep46pe18rGvqim7Q07th/tDjMTx61o0KZKc4y', 1, 'hipmi.kp'),
(45, 'gapeksindo', '$2y$10$kvbNjVABDKJ3JZoE.L1I5erTrRrz4gQdH/uYlsJ3zT79T/jYSMM6W', 1, 'gapeksindo'),
(46, 'uny.wates', '$2y$10$hhJF4aKLykvmCmzysHGZRukRBOQnWIYdu38CeNN6ZbRTCB7Iy8zNm', 1, 'uny.wates'),
(47, 'sv.ugm', '$2y$10$EtSbpBFTV80tTZTsZ2s17uobYwSz8VWSaHEI02cM79if6kwt2DcGi', 1, 'sv.ugm'),
(48, 'uad.wates', '$2y$10$B10SalmaMbtk40MOc0hbaOB1cjgR52o01hTIyX7JFebyX7f6REgaq', 1, 'uad.wates'),
(49, 'ibisnovotel.kp', '$2y$10$jdBlab.ICdTv9JvD32Rx9.1b5pdCDsFYY2acbVnTyjlFFhHZF.cUG', 1, 'ibisnovotel.kp'),
(50, 'morazen', '$2y$10$SZjd1Y0SB3GxY0TjdQfo6uDkc51y8EONtYEpGKStlCXjlHvyaT6rK', 1, 'morazen'),
(51, 'astra.kp', '$2y$10$fbXJLY28E6sJxzY2jgS01u1rEmJONsqlimVJ.HablIHu35bx42C5a', 1, 'astra.kp'),
(52, 'indobel', '$2y$10$.UZDcP0PMGC38I9.AR.PGOZAH1EsHz4TBEJt6iztsUjsQkgnDl1X2', 1, 'indobel'),
(53, 'kothis.kp', '$2y$10$67TxHxjoGW3Bk3DVCe4GkuIkk49LNElL3H62nEtIgP4iSxi3UI0XS', 1, 'kothis.kp'),
(54, 'bjm.kp', '$2y$10$G4x.bsmAwkr534ofVP6kxeBOjlrn0URkV6eboFFQzTg93bwoWip12', 1, 'bjm.kp'),
(55, 'tmb.kp', '$2y$10$1r96vokDS.UBh73uod0R9uuPFBBz/C7JEDk8DYFYS8v17TbFznLku', 1, 'tmb.kp'),
(56, 'ajisetya', '$2y$10$08XIfW5ka/cBi9cdZ4XkTup1eDkQtZZ73KVvPYFWpKKriC/8dUOEO', 1, 'ajisetya'),
(57, 'kms.kp', '$2y$10$I8F5AU7.AE/c/OVbpWeGmOHSVg6Uk9L2mJ5usIkZNOzZA3RT8bjnG', 1, 'kms.kp'),
(58, 'wa.wates', '$2y$10$pejm7OdIEuHh9q93PNbdQePcbdzu1.z88UPyDACMq1sV1zXtZaacS', 1, 'wa.wates'),
(59, 'spm.kp', '$2y$10$wZGlnVy.76HotgP6WjSLE.s5JK02FIPWjxMrcRvm8FvMHHGTe.3hy', 1, 'spm.kp'),
(60, 'lgs.kp', '$2y$10$nTfpcKPMb2ff2g1ViJNYluzL6ocAvOzraby9oQIuzORfC90oKZfjS', 1, 'lgs.kp'),
(61, 'shinta.motor', '$2y$10$x/PKt5zfyfSGgedjvl53QOemMvA77fQRb35ZzpsoChjT06GikY3OG', 1, 'shinta.motor'),
(62, 'mag.kp', '$2y$10$0Z//0oE.ViWeMj0.pdtExOXEbiGPuDq9tQaFFWDjnKDTvU7cN.hzG', 1, 'mag.kp'),
(63, 'naturindo.surya', '$2y$10$YOV7IQcecL6f1Vd5I4KBgeL6krRBCbA5jh5K3cW4cb9Z7fLNJxL6e', 1, 'naturindo.surya'),
(64, 'kme.kp', '$2y$10$acaaskzANV2/6Iyk6csWjub.ABtdYuA/FBYN3NOm4gYp7rW9gG7oy', 1, 'kme.kp'),
(65, 'patra.maju', '$2y$10$hxFT3CDO/vyjzJ1e10jTnuFbVO2luqwFVkxKaX0CY/0KDb78HoFKu', 1, 'patra.maju'),
(66, 'bummy.kp', '$2y$10$bOLvr8glo4h840u.Tqp2v.kyI6Kp3jg.v8jjB3roSaUk9IVWDgTI2', 1, 'bummy.kp'),
(67, 'ips.kp', '$2y$10$VGk6/4DfNhe9J4S9QWZVBOcu9riq4QWgs/6TFpF0Jq83xmayksDF2', 1, 'ips.kp'),
(68, 'fajar.baru', '$2y$10$apG94CxZdA7IXJ5ZhSnQY.tTUfmxaFwC7VH9zyizJySzRSu6zNE2u', 1, 'fajar.baru'),
(69, 'pesona.wisma', '$2y$10$5fEK0ingir2UJG6JCKZzregdBFHl/EFRJPbVSMEjekUnSYtG4soXy', 1, 'pesona.wisma'),
(70, 'karya.adi', '$2y$10$WtmPcLyym6Pmhtg7MRLlgOs3dL05hGqbHCtpZz7oLskQfL4qJ3sPC', 1, 'karya.adi'),
(71, 'kerja.patra', '$2y$10$mZAOgeFDx4yyP.FGw8lz3OG7MAzLBdJsyppq1q.2FM7UAGa70NwI.', 1, 'kerja.patra'),
(72, 'bale.rante', '$2y$10$wN0oDvPP45rxQ8UZP1m..eRqKGRbt56xawxwCvPdGWInfmzuIfoty', 1, 'bale.rante'),
(73, 'telkom.kp', '$2y$10$aCmyJH/aLx0BFr2gBYkc8.d0YAHOgRMNjv5jrtKX4KaSsJMiLUMO2', 1, 'telkom.kp'),
(74, 'baznas.kp', '$2y$10$EYe86HSmW6.XWOhYziQOc.J.HPQ7GAMg2elAx/IxKs/ljMF0QweuO', 1, 'baznas.kp'),
(75, 'swiss.belhotel', '$2y$10$M8olUVgCd6YM0n2sDp3odedYNnxvpXpZgGlJHflEHxQeLmsFpgWDm', 1, 'swiss.belhotel'),
(76, 'jmi', '$2y$10$jE6H0x7x9rRUptZF26hql.1kre0E3XzsKiw9MSh1oy7BoJeoMAXMO', 1, 'jmi'),
(77, 'widya.segara', '$2y$10$HZDMHqsZyPW3gK/e4aU28OREIrKKpr9Bt0jOjl6.RmKnpvYk1CNHS', 1, 'widya.segara'),
(78, 'spbu.kp', '$2y$10$7HBuvQ9xubgb3YaeRkZ4luKFOWe2FKYR2L7HjMIXWkGSwoLp96HPO', 1, 'spbu.kp'),
(79, 'kharisma.wijaya', '$2y$10$TiPFtX/e9iftmiAn39b3xOPOUdXqN7G21EZkNmEHOS5lZxWl2wE3G', 1, 'kharisma.wijaya'),
(80, 'sumber.fiber', '$2y$10$BGGqJB8O1QD1dAF709lhZOL4xfAW0.faURXKuqGj2sYnckRQRO0Jq', 1, 'sumber.fiber'),
(81, 'pura.raharja', '$2y$10$KaqoncDACAu2ApC6M4.8t.z8kXQQ2FnQpglLfFZkPAqaIOSVAvpMi', 1, 'pura.raharja'),
(82, 'belle.amanah', '$2y$10$PNlM45Li1iQ3ZnA4q8YkOOKia95bNJpmNJeX2.jG4GRGv4btrOw7e', 1, 'belle.amanah'),
(83, 'bpd.wates', '$2y$10$mKJA6tqDhZcUX5.kvfVMquPtHWfRlJ.b26JhEi8ow7oOsSOLxQM5W', 1, 'bpd.wates'),
(84, 'ap.yia', '$2y$10$jZwubfG1G/U83LdOJQIaquzjQEn6mLosmaE.Nar4BQmTbqiuWC4Fy', 1, 'ap.yia'),
(85, 'isti.parama', '$2y$10$P7fmVzWPrJ5uqaVDwhUVo.6nqzBj3USPNp1v5dm51CyCezGjlD9g.', 1, 'isti.parama');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_csr`
--
ALTER TABLE `kegiatan_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
