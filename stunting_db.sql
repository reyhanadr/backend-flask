-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Bulan Mei 2025 pada 12.25
-- Versi server: 8.0.30
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stunting_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('d5e8991e4675');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id` int NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `nama_orang_tua` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id`, `nik`, `nama_anak`, `nama_orang_tua`) VALUES
(1, '3328106803030009', 'Amedeo Cavendish', 'Slamet Raharjo'),
(3, '3328106803030098', 'Sofia', 'Sutati'),
(4, '3328107788995576', 'denis', 'nanang'),
(5, '3328112233446688', 'putri', 'putra'),
(6, '3344668855337598', 'rani', 'yanti'),
(7, '3344665522433876', 'raniya', 'yanto'),
(8, '3344574576779966', 'raniya', 'yanto'),
(9, '3366886647559987', 'raniya', 'yanto'),
(10, '6763883798760976', 'rini', 'rana'),
(11, '4545782343557632', 'lana', 'lini'),
(12, '9898768594935798', 'kai', 'oki'),
(13, '9879877609656398', 'jaki', 'joyo'),
(14, '9898768976654587', 'yowf', 'yani'),
(15, '2121212121212121', 'gea', 'dea'),
(16, '3328106803030087', 'Amir', 'Sulastri'),
(17, '7676767698983409', 'pilo', 'apip'),
(18, '4884698965987654', 'yunus', 'uli'),
(19, '7865457698670987', 'hido', 'jiko'),
(20, '8484848484849384', 'rati', 'tira'),
(21, '8569876587636988', 'tika', 'tio'),
(23, '3344762398460056', 'alvaro', 'ade sulistia'),
(24, '3344734825285480', 'Aleta', 'Titin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_ibu_prediction`
--

CREATE TABLE `calon_ibu_prediction` (
  `id_prediction` int NOT NULL,
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `usia` int NOT NULL,
  `tinggi_badan` float NOT NULL,
  `berat_badan` float NOT NULL,
  `riwayat_gizi` enum('ya','tidak') NOT NULL,
  `konsumsi_gizi` enum('sering','jarang','tidak pernah') NOT NULL,
  `cek_kesehatan` enum('ya','tidak') NOT NULL,
  `riwayat_stunting` enum('ya','tidak') NOT NULL,
  `pendidikan` enum('tidak sekolah','sd','smp','sma','d3','s1','s2') NOT NULL,
  `pola_asuh` enum('sudah','belum') NOT NULL,
  `ekonomi` enum('kurang baik','cukup baik','baik','baik sekali') NOT NULL,
  `hasil_prediksi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `calon_ibu_prediction`
--

INSERT INTO `calon_ibu_prediction` (`id_prediction`, `id_user`, `username`, `usia`, `tinggi_badan`, `berat_badan`, `riwayat_gizi`, `konsumsi_gizi`, `cek_kesehatan`, `riwayat_stunting`, `pendidikan`, `pola_asuh`, `ekonomi`, `hasil_prediksi`, `created_at`) VALUES
(12, 9, 'user2', 22, 156, 42, 'ya', 'jarang', 'tidak', 'ya', 'sma', 'belum', 'baik', 'Risiko sedang | BMI: 17.26 (Underweight)', '2025-04-12 11:13:03'),
(13, 9, 'user2', 22, 155, 54, 'ya', 'sering', 'tidak', 'ya', 'sma', 'sudah', 'baik', 'Risiko rendah | BMI: 22.48 (Normal)', '2025-04-12 11:13:46'),
(14, 9, 'user2', 22, 167, 75, 'tidak', 'jarang', 'tidak', 'ya', 'd3', 'sudah', 'baik', 'Risiko rendah | BMI: 26.89 (Overweight)', '2025-04-12 11:14:35'),
(15, 12, 'farrasdwilestari', 22, 155, 54, 'ya', 'sering', 'tidak', 'ya', 'sma', 'sudah', 'baik', 'Risiko rendah | BMI: 22.48 (Normal)', '2025-04-12 11:23:51'),
(16, 13, 'syaghinna', 22, 167, 75, 'tidak', 'jarang', 'tidak', 'ya', 'd3', 'sudah', 'baik', 'Risiko rendah | BMI: 26.89 (Overweight)', '2025-04-12 11:26:00'),
(17, 14, 'shifaaulya', 22, 156, 42, 'ya', 'jarang', 'tidak', 'ya', 'sma', 'belum', 'baik', 'Risiko sedang | BMI: 17.26 (Underweight)', '2025-04-12 11:28:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `device_raw_data`
--

CREATE TABLE `device_raw_data` (
  `id` bigint UNSIGNED NOT NULL,
  `berat_badan` decimal(5,2) NOT NULL,
  `tinggi_badan` decimal(5,2) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'unprocessed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `device_raw_data`
--

INSERT INTO `device_raw_data` (`id`, `berat_badan`, `tinggi_badan`, `timestamp`, `status`) VALUES
(1, 0.02, 41.30, '2025-04-13 03:44:30', 'Stunting Berat'),
(2, 0.02, 73.58, '2025-04-13 03:44:36', 'Stunting Berat'),
(3, 0.02, 43.05, '2025-04-13 03:44:42', 'Stunting Berat'),
(4, 0.03, 28.02, '2025-04-13 03:48:31', 'Stunting'),
(5, 0.04, 33.00, '2025-04-13 03:48:37', 'Stunting'),
(6, 0.04, 42.28, '2025-04-13 03:48:43', 'Stunting'),
(7, 6.19, 74.28, '2025-04-13 03:48:49', 'Stunting'),
(8, 0.06, 45.43, '2025-04-13 03:48:55', 'Stunting'),
(9, 0.05, 45.24, '2025-04-13 03:49:01', 'Stunting'),
(10, 0.06, 42.23, '2025-04-13 03:49:07', 'Stunting'),
(11, 0.06, 43.10, '2025-04-13 03:49:13', 'Stunting'),
(12, 0.04, 60.85, '2025-04-13 03:53:47', 'Stunting'),
(13, 0.05, 41.54, '2025-04-13 03:53:53', 'Stunting'),
(14, 0.05, 43.70, '2025-04-13 03:53:59', 'Stunting'),
(15, 0.06, 74.47, '2025-04-13 03:54:06', 'Stunting'),
(16, 0.05, 75.16, '2025-04-13 03:54:12', 'Stunting'),
(17, 0.03, 60.87, '2025-04-13 03:56:42', 'Stunting'),
(18, 0.04, 42.15, '2025-04-13 03:56:48', 'Stunting'),
(19, 0.04, 74.52, '2025-04-13 03:56:54', 'Stunting'),
(20, 0.05, 71.85, '2025-04-13 03:57:01', 'Stunting'),
(21, 0.05, 59.51, '2025-04-13 04:01:42', 'Stunting'),
(22, 0.05, 60.41, '2025-04-13 04:01:48', 'Stunting'),
(23, 0.06, 75.16, '2025-04-13 04:01:54', 'Stunting'),
(24, 0.06, 74.57, '2025-04-13 04:02:00', 'Stunting'),
(25, 0.04, 59.08, '2025-04-13 04:14:43', 'Stunting'),
(26, 0.04, 74.70, '2025-04-13 04:14:49', 'Stunting'),
(27, 2.28, 40.72, '2025-04-13 04:14:55', 'Stunting'),
(28, 2.57, 75.10, '2025-04-13 04:15:01', 'Stunting'),
(29, 2.22, 77.58, '2025-04-13 04:15:07', 'Stunting'),
(30, 2.18, 72.02, '2025-04-13 04:15:13', 'Stunting'),
(31, 2.28, 72.36, '2025-04-13 04:15:19', 'Stunting'),
(32, 0.06, 72.56, '2025-04-13 04:15:25', 'Stunting'),
(33, 0.06, 42.68, '2025-04-13 04:15:32', 'Stunting'),
(34, 0.06, 73.80, '2025-04-13 04:15:38', 'Stunting'),
(35, 0.06, 37.92, '2025-04-13 04:15:44', 'Stunting'),
(36, 0.06, 74.09, '2025-04-13 04:15:51', 'Stunting'),
(37, 0.06, 72.09, '2025-04-13 04:15:57', 'Stunting'),
(38, 0.05, 72.54, '2025-04-13 04:16:03', 'Stunting'),
(39, 0.06, 73.63, '2025-04-13 04:16:09', 'Stunting'),
(40, 4.10, 39.14, '2025-04-13 04:16:15', 'Stunting'),
(41, 0.06, 74.33, '2025-04-13 04:16:21', 'Stunting'),
(42, 0.06, 75.59, '2025-04-13 04:16:27', 'Stunting'),
(43, 0.06, 73.38, '2025-04-13 04:16:33', 'Stunting'),
(44, 0.05, 60.81, '2025-04-13 04:19:19', 'Stunting'),
(45, 2.25, 26.15, '2025-04-13 04:19:25', 'Stunting'),
(46, 0.07, 74.38, '2025-04-13 04:19:31', 'Stunting'),
(47, 0.07, 40.16, '2025-04-13 04:19:37', 'Stunting'),
(48, 0.07, 77.05, '2025-04-13 04:19:43', 'Stunting'),
(49, 0.07, 63.53, '2025-04-13 04:19:49', 'Stunting'),
(50, 0.07, 76.69, '2025-04-13 04:19:55', 'Stunting'),
(51, 0.07, 73.38, '2025-04-13 04:20:01', 'Stunting'),
(52, 0.07, 73.97, '2025-04-13 04:20:07', 'Stunting'),
(53, 0.07, 74.40, '2025-04-13 04:20:13', 'Stunting'),
(54, 0.07, 73.90, '2025-04-13 04:20:19', 'Stunting'),
(55, 0.07, 75.42, '2025-04-13 04:20:25', 'Stunting'),
(56, 0.07, 73.80, '2025-04-13 04:20:31', 'Stunting'),
(57, 0.07, 72.90, '2025-04-13 04:20:37', 'Stunting'),
(58, 0.07, 73.31, '2025-04-13 04:20:43', 'Stunting'),
(59, 0.07, 72.83, '2025-04-13 04:20:49', 'Stunting'),
(60, 0.07, 74.70, '2025-04-13 04:20:55', 'Stunting'),
(61, 0.07, 76.78, '2025-04-13 04:21:02', 'Stunting'),
(62, 0.08, 39.29, '2025-04-13 04:21:08', 'Stunting'),
(63, 0.05, 60.76, '2025-04-13 04:25:29', 'Stunting'),
(64, 0.05, 59.52, '2025-04-13 04:25:35', 'Stunting'),
(65, 0.06, 74.52, '2025-04-13 04:25:41', 'Stunting'),
(66, 6.40, 41.08, '2025-04-13 04:25:47', 'Tidak Stunting'),
(67, 3.67, 43.27, '2025-04-13 04:25:53', 'Stunting'),
(68, 4.90, 42.20, '2025-04-13 04:25:59', 'Stunting'),
(69, 5.03, 43.02, '2025-04-13 04:26:05', 'Stunting'),
(70, 0.12, 41.78, '2025-04-13 04:26:11', 'Stunting'),
(71, 0.08, 40.92, '2025-04-13 04:26:17', 'Stunting'),
(72, 0.05, 60.39, '2025-04-13 04:30:17', 'Stunting'),
(73, 0.06, 41.84, '2025-04-13 04:30:23', 'Stunting'),
(74, 0.06, 41.52, '2025-04-13 04:30:29', 'Stunting'),
(75, 0.06, 76.46, '2025-04-13 04:30:35', 'Stunting'),
(76, 0.06, 41.08, '2025-04-13 04:30:41', 'Stunting'),
(77, 0.06, 41.49, '2025-04-13 04:30:47', 'Stunting'),
(78, 6.11, 27.34, '2025-04-13 04:30:53', 'Tidak Stunting'),
(79, 5.44, 44.39, '2025-04-13 04:30:59', 'Stunting'),
(80, 6.61, 42.97, '2025-04-13 04:31:05', 'Tidak Stunting'),
(81, 0.07, 75.01, '2025-04-13 04:31:12', 'Stunting'),
(82, 0.00, 27.83, '2025-04-13 04:32:32', 'Stunting'),
(83, 3.54, 41.42, '2025-04-13 04:32:38', 'Stunting'),
(84, 3.19, 74.77, '2025-04-13 04:32:44', 'Stunting'),
(85, 2.76, 42.97, '2025-04-13 04:32:50', 'Stunting'),
(86, 2.94, 40.74, '2025-04-13 04:32:56', 'Stunting'),
(87, 2.79, 40.58, '2025-04-13 04:33:02', 'Stunting'),
(88, 0.00, 59.68, '2025-04-13 04:33:08', 'Stunting'),
(89, 8.99, 43.44, '2025-04-13 04:33:14', 'Tidak Stunting'),
(90, 0.00, 41.72, '2025-04-13 04:33:20', 'Stunting'),
(91, 0.00, 59.42, '2025-04-13 04:33:26', 'Stunting'),
(92, 0.00, 40.99, '2025-04-13 04:33:32', 'Stunting'),
(93, 0.00, 42.44, '2025-04-13 04:33:38', 'Stunting'),
(94, 0.00, 74.33, '2025-04-13 04:33:44', 'Stunting'),
(95, 0.00, 40.77, '2025-04-13 04:33:50', 'Stunting'),
(96, 0.00, 75.86, '2025-04-13 04:33:56', 'Stunting'),
(97, 0.00, 27.50, '2025-04-13 04:34:02', 'Stunting'),
(98, 0.00, 27.48, '2025-04-13 04:37:49', 'Stunting'),
(99, 2.27, 59.98, '2025-04-13 04:37:55', 'Stunting'),
(100, 2.25, 42.51, '2025-04-13 04:38:01', 'Stunting'),
(101, 0.00, 41.76, '2025-04-13 04:38:07', 'Stunting'),
(102, 0.00, 41.38, '2025-04-13 04:38:13', 'Stunting'),
(103, 0.00, 71.83, '2025-04-13 04:38:19', 'Stunting'),
(104, 0.00, 34.07, '2025-04-13 04:38:26', 'Stunting'),
(105, 0.00, 72.09, '2025-04-13 04:38:32', 'Stunting'),
(106, 0.00, 41.13, '2025-04-13 04:38:38', 'Stunting'),
(107, 0.00, 41.54, '2025-04-13 04:38:44', 'Stunting'),
(108, 0.00, 41.10, '2025-04-13 04:38:50', 'Stunting'),
(109, 0.00, 40.52, '2025-04-13 04:38:56', 'Stunting'),
(110, 0.00, 74.94, '2025-04-13 04:39:02', 'Stunting'),
(111, 0.00, 74.04, '2025-04-13 04:39:08', 'Stunting'),
(112, 0.00, 41.42, '2025-04-13 04:39:14', 'Stunting'),
(113, 0.00, 44.02, '2025-04-13 04:39:20', 'Stunting'),
(114, 0.00, 43.13, '2025-04-13 04:39:26', 'Stunting'),
(115, 0.00, 40.76, '2025-04-13 04:39:32', 'Stunting'),
(116, 0.00, 41.59, '2025-04-13 04:39:38', 'Stunting'),
(117, 0.00, 41.18, '2025-04-13 04:39:44', 'Stunting'),
(118, 0.00, 39.29, '2025-04-13 04:39:51', 'Stunting'),
(119, 0.00, 40.52, '2025-04-13 04:39:56', 'Stunting'),
(120, 0.00, 39.80, '2025-04-13 04:40:03', 'Stunting'),
(121, 0.00, 42.06, '2025-04-13 04:40:09', 'Stunting'),
(122, 0.00, 41.44, '2025-04-13 04:40:15', 'Stunting'),
(123, 0.00, 76.63, '2025-04-13 04:40:21', 'Stunting'),
(124, 0.00, 41.74, '2025-04-13 04:40:27', 'Stunting'),
(125, 0.25, 60.75, '2025-04-13 04:44:49', 'Stunting'),
(126, 8.96, 27.33, '2025-04-13 04:44:55', 'Tidak Stunting'),
(127, 8.53, 41.79, '2025-04-13 04:45:01', 'Tidak Stunting'),
(128, 8.43, 40.96, '2025-04-13 04:45:07', 'Tidak Stunting'),
(129, 8.02, 41.15, '2025-04-13 04:45:13', 'Tidak Stunting'),
(130, 0.27, 45.01, '2025-04-13 04:45:19', 'Stunting'),
(131, 0.27, 41.98, '2025-04-13 04:45:25', 'Stunting'),
(132, 0.27, 42.18, '2025-04-13 04:45:31', 'Stunting'),
(133, 0.27, 58.23, '2025-04-13 04:45:37', 'Stunting'),
(134, 0.26, 45.01, '2025-04-13 04:45:43', 'Stunting'),
(135, 0.26, 38.97, '2025-04-13 04:45:49', 'Stunting'),
(136, 0.27, 40.72, '2025-04-13 04:45:56', 'Stunting'),
(137, 0.27, 39.99, '2025-04-13 04:46:02', 'Stunting'),
(138, 0.27, 42.57, '2025-04-13 04:46:08', 'Stunting'),
(139, 0.28, 40.09, '2025-04-13 04:46:14', 'Stunting'),
(140, 0.28, 39.77, '2025-04-13 04:46:20', 'Stunting'),
(141, 0.27, 60.00, '2025-04-13 04:46:26', 'Stunting'),
(142, 0.27, 44.92, '2025-04-13 04:46:32', 'Stunting'),
(143, 0.27, 72.71, '2025-04-13 04:46:38', 'Stunting'),
(144, 0.27, 41.06, '2025-04-13 04:46:44', 'Stunting'),
(145, 0.27, 59.44, '2025-04-13 04:46:50', 'Stunting'),
(146, 0.01, 26.58, '2025-04-13 04:54:48', 'Stunting'),
(147, 1.52, 26.92, '2025-04-13 04:54:54', 'Stunting'),
(148, 2.31, 75.37, '2025-04-13 04:55:00', 'Stunting'),
(149, 1.50, 43.27, '2025-04-13 04:55:06', 'Stunting'),
(150, 1.13, 40.13, '2025-04-13 04:55:12', 'Stunting'),
(151, 0.02, 41.44, '2025-04-13 04:55:18', 'Stunting'),
(152, 0.02, 42.54, '2025-04-13 04:55:25', 'Stunting'),
(153, 0.02, 41.37, '2025-04-13 04:55:31', 'Stunting'),
(154, 0.02, 38.51, '2025-04-13 04:55:37', 'Stunting'),
(155, 0.02, 74.55, '2025-04-13 04:55:43', 'Stunting'),
(156, 0.00, 71.61, '2025-04-13 04:55:49', 'Stunting'),
(157, 0.00, 73.48, '2025-04-13 04:55:55', 'Stunting'),
(158, 0.00, 73.58, '2025-04-13 04:56:01', 'Stunting'),
(159, 0.00, 44.41, '2025-04-13 04:56:07', 'Stunting'),
(160, 0.04, 60.25, '2025-04-13 06:09:15', 'Stunting'),
(161, 0.05, 60.25, '2025-04-13 06:09:21', 'Stunting'),
(162, 0.05, 76.35, '2025-04-13 06:09:27', 'Stunting'),
(163, 0.05, 74.93, '2025-04-13 06:09:33', 'Stunting'),
(164, 0.06, 102.70, '2025-04-13 06:09:39', 'Stunting'),
(165, 0.00, 21.51, '2025-04-13 06:09:45', 'Stunting'),
(166, 0.02, 23.04, '2025-04-13 06:10:02', 'Stunting'),
(167, 0.02, 7.54, '2025-04-13 06:10:09', 'Stunting'),
(168, 0.02, 24.04, '2025-04-13 06:10:15', 'Stunting'),
(169, 0.02, 21.53, '2025-04-13 06:10:21', 'Stunting'),
(170, 0.03, 21.99, '2025-04-13 06:10:27', 'Stunting'),
(171, 0.03, 21.27, '2025-04-13 06:10:33', 'Stunting'),
(172, 0.03, 36.86, '2025-04-13 06:10:39', 'Stunting'),
(173, 0.03, 140.94, '2025-04-13 06:10:45', 'Data Tidak Ditemukan'),
(174, 0.03, 138.28, '2025-04-13 06:10:51', 'Data Tidak Ditemukan'),
(175, 0.04, 123.63, '2025-04-13 06:10:57', 'Stunting'),
(176, 0.04, 124.94, '2025-04-13 06:11:03', 'Stunting'),
(177, 0.04, 121.45, '2025-04-13 06:11:09', 'Stunting'),
(178, 0.04, 122.63, '2025-04-13 06:11:15', 'Stunting'),
(179, 0.04, 123.58, '2025-04-13 06:11:21', 'Stunting'),
(180, 0.04, 115.11, '2025-04-13 06:11:27', 'Stunting'),
(181, 0.04, 120.96, '2025-04-13 06:11:33', 'Stunting'),
(182, 0.04, 119.48, '2025-04-13 06:11:39', 'Stunting'),
(183, 0.04, 123.63, '2025-04-13 06:11:45', 'Stunting'),
(184, 0.04, 125.43, '2025-04-13 06:11:51', 'Stunting'),
(185, 0.04, 120.67, '2025-04-13 06:11:57', 'Stunting'),
(186, 0.04, 121.06, '2025-04-13 06:12:03', 'Stunting'),
(187, 0.04, 122.88, '2025-04-13 06:12:09', 'Stunting'),
(188, 0.04, 107.53, '2025-04-13 06:12:15', 'Stunting'),
(189, 0.04, 121.47, '2025-04-13 06:12:21', 'Stunting'),
(190, 0.04, 121.08, '2025-04-13 06:12:28', 'Stunting'),
(191, 0.04, 122.03, '2025-04-13 06:12:34', 'Stunting'),
(192, 0.04, 125.70, '2025-04-13 06:12:40', 'Stunting'),
(193, 22.67, 122.59, '2025-04-13 06:12:46', 'Tidak Stunting'),
(194, 22.69, 121.62, '2025-04-13 06:12:52', 'Tidak Stunting'),
(195, 22.69, 121.37, '2025-04-13 06:12:58', 'Tidak Stunting'),
(196, 22.75, 139.52, '2025-04-13 06:13:04', 'Data Tidak Ditemukan'),
(197, 22.67, 124.89, '2025-04-13 06:13:10', 'Tidak Stunting'),
(198, 0.04, 121.81, '2025-04-13 06:13:16', 'Stunting'),
(199, 0.04, 121.74, '2025-04-13 06:13:22', 'Stunting'),
(200, 0.04, 124.51, '2025-04-13 06:13:28', 'Stunting'),
(201, 0.03, 122.03, '2025-04-13 06:13:34', 'Stunting'),
(202, 0.04, 120.62, '2025-04-13 06:13:40', 'Stunting'),
(203, 0.03, 120.23, '2025-04-13 06:13:46', 'Stunting'),
(204, 0.03, 123.80, '2025-04-13 06:13:52', 'Stunting'),
(205, 0.03, 120.38, '2025-04-13 06:13:58', 'Stunting'),
(206, 0.04, 122.01, '2025-04-13 06:14:04', 'Stunting'),
(207, 0.04, 124.28, '2025-04-13 06:14:10', 'Stunting'),
(208, 0.03, 108.82, '2025-04-13 06:14:16', 'Stunting'),
(209, 0.04, 122.44, '2025-04-13 06:14:22', 'Stunting'),
(210, 0.04, 122.78, '2025-04-13 06:14:28', 'Stunting'),
(211, 0.03, 123.09, '2025-04-13 06:14:34', 'Stunting'),
(212, 0.04, 126.32, '2025-04-13 06:14:40', 'Stunting'),
(213, 0.03, 123.95, '2025-04-13 06:14:47', 'Stunting'),
(214, 0.04, 122.81, '2025-04-13 06:14:53', 'Stunting'),
(215, 0.04, 123.09, '2025-04-13 06:14:59', 'Stunting'),
(216, 0.03, 125.11, '2025-04-13 06:15:05', 'Stunting'),
(217, 0.03, 124.36, '2025-04-13 06:15:11', 'Stunting'),
(218, 0.04, 122.29, '2025-04-13 06:15:17', 'Stunting'),
(219, 0.03, 123.29, '2025-04-13 06:15:23', 'Stunting'),
(220, 0.04, 122.22, '2025-04-13 06:15:29', 'Stunting'),
(221, 0.04, 121.98, '2025-04-13 06:15:35', 'Stunting'),
(222, 0.03, 121.95, '2025-04-13 06:15:41', 'Stunting'),
(223, 0.04, 120.62, '2025-04-13 06:15:47', 'Stunting'),
(224, 0.03, 121.85, '2025-04-13 06:15:53', 'Stunting'),
(225, 0.04, 122.92, '2025-04-13 06:15:59', 'Stunting'),
(226, 0.04, 119.55, '2025-04-13 06:16:05', 'Stunting'),
(227, 0.04, 119.84, '2025-04-13 06:16:11', 'Stunting'),
(228, 0.04, 123.46, '2025-04-13 06:16:17', 'Stunting'),
(229, 0.04, 125.11, '2025-04-13 06:16:23', 'Stunting'),
(230, 0.04, 120.26, '2025-04-13 06:16:29', 'Stunting'),
(231, 0.04, 121.03, '2025-04-13 06:16:35', 'Stunting'),
(232, 0.04, 122.22, '2025-04-13 06:16:41', 'Stunting'),
(233, 0.04, 124.70, '2025-04-13 06:16:47', 'Stunting'),
(234, 0.04, 121.50, '2025-04-13 06:16:53', 'Stunting'),
(235, 0.04, 121.68, '2025-04-13 06:17:00', 'Stunting'),
(236, 0.03, 122.25, '2025-04-13 06:17:06', 'Stunting'),
(237, 0.04, 122.17, '2025-04-13 06:17:12', 'Stunting'),
(238, 0.04, 123.32, '2025-04-13 06:17:18', 'Stunting'),
(239, 0.03, 123.77, '2025-04-13 06:17:24', 'Stunting'),
(240, 0.03, 124.53, '2025-04-13 06:17:30', 'Stunting'),
(241, 0.04, 122.80, '2025-04-13 06:17:36', 'Stunting'),
(242, 0.04, 121.66, '2025-04-13 06:17:42', 'Stunting'),
(243, 0.04, 121.18, '2025-04-13 06:17:48', 'Stunting'),
(244, 0.04, 124.31, '2025-04-13 06:17:54', 'Stunting'),
(245, 0.04, 121.68, '2025-04-13 06:18:00', 'Stunting'),
(246, 0.00, 41.51, '2025-05-02 02:26:48', 'Stunting'),
(247, 0.00, 19.26, '2025-05-02 02:26:54', 'Stunting'),
(248, 0.00, 18.61, '2025-05-02 02:27:00', 'Stunting'),
(249, 0.00, 19.38, '2025-05-02 02:27:06', 'Stunting'),
(250, 0.00, 22.51, '2025-05-02 02:27:12', 'Stunting'),
(251, 0.00, 21.45, '2025-05-02 02:27:18', 'Stunting'),
(252, 0.00, 18.99, '2025-05-02 02:27:24', 'Stunting'),
(253, 0.00, 18.48, '2025-05-02 02:27:33', 'Stunting'),
(254, 0.00, 17.75, '2025-05-02 02:27:39', 'Stunting'),
(255, 0.00, 19.62, '2025-05-02 02:27:46', 'Stunting'),
(256, 0.00, 17.08, '2025-05-02 02:27:52', 'Stunting'),
(257, 0.00, 17.24, '2025-05-02 02:27:58', 'Stunting'),
(258, 0.00, 16.73, '2025-05-02 02:28:04', 'Stunting'),
(259, 0.00, 17.24, '2025-05-02 02:28:10', 'Stunting'),
(260, 0.00, 18.50, '2025-05-02 02:28:16', 'Stunting'),
(261, 0.00, 78.88, '2025-05-02 02:28:22', 'Stunting'),
(262, 0.00, 19.02, '2025-05-02 02:28:28', 'Stunting'),
(263, 0.00, 18.58, '2025-05-02 02:28:34', 'Stunting'),
(264, 0.00, 18.48, '2025-05-02 02:28:40', 'Stunting'),
(265, 0.00, 19.52, '2025-05-02 02:28:46', 'Stunting'),
(266, 0.00, 21.57, '2025-05-02 02:28:52', 'Stunting'),
(267, 0.00, 18.99, '2025-05-02 02:28:58', 'Stunting'),
(268, 0.00, 120.00, '2025-05-02 02:29:04', 'None'),
(269, 0.00, 119.58, '2025-05-02 02:29:10', 'None'),
(270, 0.00, 16.63, '2025-05-02 02:29:17', 'Stunting'),
(271, 0.00, 18.38, '2025-05-02 02:29:23', 'Stunting'),
(272, 0.00, 19.01, '2025-05-02 02:29:29', 'Stunting'),
(273, 0.00, 18.92, '2025-05-02 02:29:35', 'Stunting'),
(274, 0.00, 13.80, '2025-05-02 02:29:41', 'Stunting'),
(275, 0.00, 75.72, '2025-05-02 02:29:47', 'Stunting'),
(276, 0.00, 77.42, '2025-05-02 02:29:53', 'Stunting'),
(277, 0.00, 21.74, '2025-05-02 02:29:59', 'Stunting'),
(278, 0.00, 19.06, '2025-05-02 02:30:05', 'Stunting'),
(279, 0.00, 17.88, '2025-05-02 02:30:12', 'Stunting'),
(280, 0.00, 118.39, '2025-05-02 02:30:18', 'None'),
(281, 0.00, 121.16, '2025-05-02 02:30:24', 'None'),
(282, 0.00, 18.72, '2025-05-02 02:30:30', 'Stunting'),
(283, 0.00, 20.03, '2025-05-02 02:30:36', 'Stunting'),
(284, 0.00, 75.74, '2025-05-02 02:30:42', 'Stunting'),
(285, 0.00, 22.41, '2025-05-02 02:30:49', 'Stunting'),
(286, 0.00, 22.08, '2025-05-02 02:30:55', 'Stunting'),
(287, 0.00, 7.41, '2025-05-02 02:31:01', 'Stunting'),
(288, 0.00, 17.20, '2025-05-02 02:31:07', 'Stunting'),
(289, 0.00, 19.23, '2025-05-02 02:31:13', 'Stunting'),
(290, 0.00, 119.10, '2025-05-02 02:31:19', 'None'),
(291, 0.00, 22.05, '2025-05-02 02:31:25', 'Stunting'),
(292, 0.00, 18.97, '2025-05-02 02:31:31', 'Stunting'),
(293, 0.00, 119.51, '2025-05-02 02:31:37', 'None'),
(294, 0.00, 19.31, '2025-05-02 02:31:43', 'Stunting'),
(295, 0.00, 18.90, '2025-05-02 02:31:49', 'Stunting'),
(296, 0.00, 120.39, '2025-05-02 02:31:55', 'None'),
(297, 0.00, 119.70, '2025-05-02 02:32:01', 'None'),
(298, 0.00, 18.87, '2025-05-02 02:32:08', 'Stunting'),
(299, 0.00, 20.50, '2025-05-02 02:32:14', 'Stunting'),
(300, 0.00, 78.30, '2025-05-02 02:32:20', 'Stunting'),
(301, 0.00, 19.23, '2025-05-02 02:32:26', 'Stunting'),
(302, 0.00, 18.73, '2025-05-02 02:32:32', 'Stunting'),
(303, 0.00, 19.91, '2025-05-02 02:32:38', 'Stunting'),
(304, 0.00, 21.59, '2025-05-02 02:32:44', 'Stunting'),
(305, 0.00, 18.00, '2025-05-02 02:32:50', 'Stunting'),
(306, 0.00, 120.36, '2025-05-02 02:32:56', 'None'),
(307, 0.00, 76.23, '2025-05-02 02:33:02', 'Stunting'),
(308, 0.00, 19.47, '2025-05-02 02:33:08', 'Stunting'),
(309, 0.00, 21.01, '2025-05-02 02:33:14', 'Stunting'),
(310, 0.00, 21.78, '2025-05-02 02:33:20', 'Stunting'),
(311, 0.00, 18.99, '2025-05-02 02:33:27', 'Stunting'),
(312, 0.00, 16.64, '2025-05-02 02:33:33', 'Stunting'),
(313, 0.00, 17.31, '2025-05-02 02:33:39', 'Stunting'),
(314, 0.00, 18.73, '2025-05-02 02:33:45', 'Stunting'),
(315, 0.00, 21.18, '2025-05-02 02:33:51', 'Stunting'),
(316, 0.00, 19.99, '2025-05-02 02:33:57', 'Stunting'),
(317, 0.00, 18.73, '2025-05-02 02:34:03', 'Stunting'),
(318, 0.00, 18.38, '2025-05-02 02:34:09', 'Stunting'),
(319, 0.00, 20.15, '2025-05-02 02:34:15', 'Stunting'),
(320, 0.00, 18.43, '2025-05-02 02:34:21', 'Stunting'),
(321, 0.00, 21.83, '2025-05-02 02:34:27', 'Stunting'),
(322, 0.00, 21.88, '2025-05-02 02:34:33', 'Stunting'),
(323, 0.00, 18.68, '2025-05-02 02:34:39', 'Stunting'),
(324, 0.00, 19.11, '2025-05-02 02:34:45', 'Stunting'),
(325, 0.00, 16.52, '2025-05-02 02:34:52', 'Stunting'),
(326, 0.00, 17.66, '2025-05-02 02:34:58', 'Stunting'),
(327, 0.00, 22.12, '2025-05-02 02:35:04', 'Stunting'),
(328, 0.00, 17.73, '2025-05-02 02:35:10', 'Stunting'),
(329, 0.00, 17.66, '2025-05-02 02:35:16', 'Stunting'),
(330, 0.00, 18.99, '2025-05-02 02:35:22', 'Stunting'),
(331, 0.00, 20.18, '2025-05-02 02:35:28', 'Stunting'),
(332, 0.00, 92.00, '2025-05-02 02:35:34', 'Stunting'),
(333, 0.00, 18.73, '2025-05-02 02:35:40', 'Stunting'),
(334, 0.00, 18.85, '2025-05-02 02:35:46', 'Stunting'),
(335, 0.00, 21.52, '2025-05-02 02:35:52', 'Stunting'),
(336, 0.00, 19.47, '2025-05-02 02:35:58', 'Stunting'),
(337, 0.00, 18.87, '2025-05-02 02:36:04', 'Stunting'),
(338, 0.00, 119.51, '2025-05-02 02:36:10', 'None'),
(339, 0.00, 20.89, '2025-05-02 02:36:16', 'Stunting'),
(340, 0.00, 18.09, '2025-05-02 02:36:22', 'Stunting'),
(341, 0.00, 19.47, '2025-05-02 02:36:28', 'Stunting'),
(342, 0.00, 21.79, '2025-05-02 02:36:34', 'Stunting'),
(343, 0.00, 20.83, '2025-05-02 02:36:40', 'Stunting'),
(344, 0.00, 18.51, '2025-05-02 02:36:46', 'Stunting'),
(345, 0.00, 19.31, '2025-05-02 02:36:52', 'Stunting'),
(346, 0.00, 92.51, '2025-05-02 02:36:58', 'Stunting'),
(347, 0.00, 19.91, '2025-05-02 02:37:05', 'Stunting'),
(348, 0.00, 16.08, '2025-05-02 02:37:11', 'Stunting'),
(349, 0.00, 75.90, '2025-05-02 02:37:17', 'Stunting'),
(350, 0.00, 21.57, '2025-05-02 02:37:23', 'Stunting'),
(351, 0.00, 19.47, '2025-05-02 02:37:29', 'Stunting'),
(352, 0.00, 75.60, '2025-05-02 02:37:35', 'Stunting'),
(353, 0.00, 76.40, '2025-05-02 02:37:41', 'Stunting'),
(354, 0.00, 79.49, '2025-05-02 02:37:48', 'Stunting'),
(355, 0.00, 16.27, '2025-05-02 02:37:54', 'Stunting'),
(356, 0.00, 18.56, '2025-05-02 02:38:00', 'Stunting'),
(357, 0.00, 17.22, '2025-05-02 02:38:06', 'Stunting'),
(358, 0.00, 19.30, '2025-05-02 02:38:12', 'Stunting'),
(359, 0.00, 19.06, '2025-05-02 02:38:18', 'Stunting'),
(360, 0.00, 122.54, '2025-05-02 02:38:24', 'None'),
(361, 0.00, 19.87, '2025-05-02 02:38:30', 'Stunting'),
(362, 0.00, 18.90, '2025-05-02 02:38:36', 'Stunting'),
(363, 0.00, 18.97, '2025-05-02 02:38:42', 'Stunting'),
(364, 0.00, 76.14, '2025-05-02 02:38:48', 'Stunting'),
(365, 0.00, 76.50, '2025-05-02 02:38:54', 'Stunting'),
(366, 0.00, 19.75, '2025-05-02 02:39:01', 'Stunting'),
(367, 0.00, 19.47, '2025-05-02 02:39:07', 'Stunting'),
(368, 0.00, 18.82, '2025-05-02 02:39:13', 'Stunting'),
(369, 0.00, 21.03, '2025-05-02 02:39:19', 'Stunting'),
(370, 0.00, 19.86, '2025-05-02 02:39:26', 'Stunting'),
(371, 0.00, 17.53, '2025-05-02 02:39:32', 'Stunting'),
(372, 0.00, 78.63, '2025-05-02 02:39:38', 'Stunting'),
(373, 0.00, 17.08, '2025-05-02 02:39:44', 'Stunting'),
(374, 0.00, 18.67, '2025-05-02 02:39:50', 'Stunting'),
(375, 0.00, 18.63, '2025-05-02 02:39:56', 'Stunting'),
(376, 0.00, 18.43, '2025-05-02 02:40:02', 'Stunting'),
(377, 0.00, 19.47, '2025-05-02 02:40:08', 'Stunting'),
(378, 18.23, 19.43, '2025-05-02 02:40:14', 'Tdk Stunting'),
(379, 14.87, 13.18, '2025-05-02 02:40:20', 'Tdk Stunting'),
(380, 0.00, 18.50, '2025-05-02 02:40:26', 'Stunting'),
(381, 0.00, 120.34, '2025-05-02 02:40:32', 'None'),
(382, 0.00, 18.31, '2025-05-02 02:40:38', 'Stunting'),
(383, 0.00, 94.88, '2025-05-02 02:40:44', 'Stunting'),
(384, 0.00, 16.78, '2025-05-02 02:40:51', 'Stunting'),
(385, 0.00, 88.60, '2025-05-02 02:40:57', 'Stunting'),
(386, 0.00, 15.91, '2025-05-02 02:41:03', 'Stunting'),
(387, 0.00, 70.48, '2025-05-02 02:41:09', 'Stunting'),
(388, 0.00, 17.87, '2025-05-02 02:41:15', 'Stunting'),
(389, 0.00, 19.70, '2025-05-02 02:41:21', 'Stunting'),
(390, 0.00, 84.83, '2025-05-02 02:41:27', 'Stunting'),
(391, 0.00, 62.27, '2025-05-02 02:41:33', 'Stunting'),
(392, 0.00, 17.59, '2025-05-02 02:41:39', 'Stunting'),
(393, 0.00, 19.19, '2025-05-02 02:41:45', 'Stunting'),
(394, 0.00, 18.82, '2025-05-02 02:41:51', 'Stunting'),
(395, 0.00, 88.04, '2025-05-02 02:41:57', 'Stunting'),
(396, 0.84, 57.82, '2025-05-02 02:42:03', 'Stunting'),
(397, 0.00, 17.65, '2025-05-02 02:42:09', 'Stunting'),
(398, 0.00, 22.20, '2025-05-02 04:22:20', 'Stunting'),
(399, 0.00, 36.23, '2025-05-02 04:22:26', 'Stunting'),
(400, 0.00, 35.41, '2025-05-02 04:22:32', 'Stunting'),
(401, 0.00, 22.25, '2025-05-02 04:22:38', 'Stunting'),
(402, 0.00, 24.50, '2025-05-02 04:22:44', 'Stunting'),
(403, 0.00, 45.92, '2025-05-02 04:22:50', 'Stunting'),
(404, 0.00, 25.91, '2025-05-02 04:22:56', 'Stunting'),
(405, 0.00, 23.24, '2025-05-02 04:23:03', 'Stunting'),
(406, 0.00, 91.53, '2025-05-02 04:23:09', 'Stunting'),
(407, 0.00, 8.02, '2025-05-02 04:23:15', 'Stunting'),
(408, 0.00, 57.63, '2025-05-02 04:23:21', 'Stunting'),
(409, 0.00, 20.54, '2025-05-02 04:23:29', 'Stunting'),
(410, 0.00, 21.91, '2025-05-02 04:23:35', 'Stunting'),
(411, 0.00, 22.90, '2025-05-02 04:23:41', 'Stunting'),
(412, 9.43, 19.75, '2025-05-02 04:23:48', 'Tdk Stunting'),
(413, 7.24, 21.69, '2025-05-02 04:23:55', 'Stunting'),
(414, 6.86, 72.23, '2025-05-02 04:24:01', 'Stunting'),
(415, 4.69, 22.18, '2025-05-02 04:24:07', 'Stunting'),
(416, 3.82, 25.62, '2025-05-02 04:24:14', 'Stunting'),
(417, 3.15, 20.23, '2025-05-02 04:24:20', 'Stunting'),
(418, 3.02, 19.82, '2025-05-02 04:24:28', 'Stunting'),
(419, 0.06, 22.10, '2025-05-02 04:24:35', 'Stunting'),
(420, 0.06, 24.34, '2025-05-02 04:24:43', 'Stunting'),
(421, 0.06, 20.94, '2025-05-02 04:24:52', 'Stunting'),
(422, 0.06, 85.03, '2025-05-02 04:24:59', 'Stunting'),
(423, 0.06, 69.05, '2025-05-02 04:25:06', 'Stunting'),
(424, 0.06, 27.57, '2025-05-02 04:25:12', 'Stunting'),
(425, 0.06, 20.62, '2025-05-02 04:25:19', 'Stunting'),
(426, 0.06, 21.67, '2025-05-02 04:25:27', 'Stunting'),
(427, 0.06, 22.69, '2025-05-02 04:25:34', 'Stunting'),
(428, 0.06, 21.47, '2025-05-02 04:25:40', 'Stunting'),
(429, 0.06, 68.22, '2025-05-02 04:25:47', 'Stunting'),
(430, 0.06, 9.20, '2025-05-02 04:25:53', 'Stunting'),
(431, 0.06, 23.09, '2025-05-02 04:26:01', 'Stunting'),
(432, 0.06, 22.64, '2025-05-02 04:26:07', 'Stunting'),
(433, 0.05, 23.05, '2025-05-02 04:26:14', 'Stunting'),
(434, 0.06, 20.84, '2025-05-02 04:26:21', 'Stunting'),
(435, 0.05, 22.56, '2025-05-02 04:26:28', 'Stunting'),
(436, 0.06, 24.07, '2025-05-02 04:26:35', 'Stunting'),
(437, 0.05, 22.58, '2025-05-02 04:26:41', 'Stunting'),
(438, 0.01, 18.61, '2025-05-02 04:26:48', 'Stunting'),
(439, 0.02, 21.10, '2025-05-02 04:26:55', 'Stunting'),
(440, 0.01, 22.47, '2025-05-02 04:27:01', 'Stunting'),
(441, 0.01, 22.05, '2025-05-02 04:27:08', 'Stunting'),
(442, 0.01, 23.83, '2025-05-02 04:27:14', 'Stunting'),
(443, 0.01, 22.80, '2025-05-02 04:27:20', 'Stunting'),
(444, 0.01, 22.68, '2025-05-02 04:27:27', 'Stunting'),
(445, 0.01, 24.21, '2025-05-02 04:27:34', 'Stunting'),
(446, 0.01, 23.09, '2025-05-02 04:27:41', 'Stunting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mpasi`
--

CREATE TABLE `mpasi` (
  `id` int NOT NULL,
  `nama_makanan` varchar(255) NOT NULL,
  `usia_minimum` int NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mpasi`
--

INSERT INTO `mpasi` (`id`, `nama_makanan`, `usia_minimum`, `deskripsi`, `created_at`) VALUES
(1, 'wortel bubur', 6, 'Bahan- bahan:\n2 sdm Nasi\n1 buah Wortel kecil (buang tengahnya)\n1/2 buah Labu siam\n1/4 buah Tahu kuning\nSecukupnya Keju cheddar\n100 ml Air\ncara membuat: \n1.Bersihkan dan potong semua sayuran\n2.Rebus wortel sampai agak empuk\n3.Rebus air, dan semua bahan, tunggu sampai agak mengental dan air berkurang\n4.Blender semua bahan. Siap disajikan:)', '2025-03-05 09:25:01'),
(3, 'Bubur Udang Tahu', 6, 'Bahan:  \n1. 60 gram nasi \n2. 45 gram udang giling \n3. 30 ml santan cair \n4. 20 gram tahu, potong kecil-kecil \n5. 10 gram tomat, potong kecil-kecil \n6. Kemangi secukupnya \n7. Daun salam secukupnya \n8. Jeruk nipis secukupnya \n9. Garam secukupnya (jika diperlukan) \nBumbu Halus:  \n1. 1 butir bawang merah \n2. ½ siung bawang putih \n3. 1 butir kemiri \n4. 1/3 cm jahe \n5. Gula secukupnya (jika diperlukan) \nCara Membuat:  \n1. Lumuri udang dengan air jeruk nipis dan garam, lalu diamkan sekitar 15 menit. \n2. Campur udang, tahu, tomat, kemangi, santan cair, dan bumbu halus hingga merata. \n3. Bungkus dengan daun pisang, masukkan juga daun salam. Kukus hingga matang. Ketika akan dicampur dengan nasi, ambil kemangi dan daun salamnya. Lalu saring hingga teksturnya sesuai yang diinginkan.', '2025-03-22 22:17:20'),
(4, 'Bubur Puyuh Hati Ayam', 6, 'Bahan:\n\n60 gram nasi\n45 gram udang giling\n30 ml santan cair\n20 gram tahu, potong kecil-kecil\n10 gram tomat, potong kecil-kecil\nKemangi secukupnya\nDaun salam secukupnya\nJeruk nipis secukupnya\nGaram secukupnya (jika diperlukan)\nBumbu Halus:\n\n1 butir bawang merah\n½ siung bawang putih\n1 butir kemiri\n1/3 cm jahe\nGula secukupnya (jika diperlukan)\nCara Membuat:\n\nLumuri udang dengan air jeruk nipis dan garam, lalu diamkan sekitar 15 menit.\nCampur udang, tahu, tomat, kemangi, santan cair, dan bumbu halus hingga merata.\nBungkus dengan daun pisang, masukkan juga daun salam. Kukus hingga matang. Ketika akan dicampur dengan nasi, ambil kemangi dan daun salamnya. Lalu saring hingga teksturnya sesuai yang diinginkan.', '2025-03-23 08:55:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stunting_prediction`
--

CREATE TABLE `stunting_prediction` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `jenis_kelamin` int NOT NULL,
  `umur` int NOT NULL,
  `berat_badan` float NOT NULL,
  `tinggi_badan` float NOT NULL,
  `z_score` float NOT NULL,
  `hasil_prediksi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_prediksi` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_anak` int DEFAULT NULL,
  `nik` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `stunting_prediction`
--

INSERT INTO `stunting_prediction` (`id`, `user_id`, `nama_anak`, `jenis_kelamin`, `umur`, `berat_badan`, `tinggi_badan`, `z_score`, `hasil_prediksi`, `tanggal_prediksi`, `id_anak`, `nik`) VALUES
(18, 5, 'lana', 1, 12, 5, 90, 0.909091, 'Tidak Stunting', '2025-04-10 10:44:41', 11, '4545782343557632'),
(19, 5, 'rini', 0, 12, 4.3, 60, -4.54545, 'Stunting', '2025-04-10 18:59:06', 10, '6763883798760976'),
(22, 5, 'denis', 1, 12, 4, 60, -4.54545, 'Stunting', '2025-04-11 04:35:53', 4, '3328107788995576'),
(26, 12, 'alvaro', 1, 27, 15.7, 88, 0.545455, 'Tidak Stunting', '2025-04-12 18:38:24', 23, '3344762398460056'),
(29, 9, 'rini', 0, 12, 5, 70, -2.76, 'Tidak Stunting', '2025-04-13 05:04:57', 10, '6763883798760976'),
(30, 5, 'Aleta', 2, 60, 22.69, 121.37, 5.44, 'Tidak Stunting', '2025-04-13 06:16:25', 24, '3344734825285480'),
(31, 5, 'Amir', 1, 3, 9.43, 19.75, -6.45, 'Stunting', '2025-05-02 04:23:55', 16, '3328106803030087');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(5, 'bidanristi', '$2b$12$DneUpY7OHkc7JGEdyHw7XOfjOwqbwfrwIP.LyKj3U9R0BJXTdrHd2', 'bidan'),
(7, 'bidan2', '$2b$12$JmvZRoTyAJjjJW9Yisg1DeZTLcXL4Wc.uuj4qTn.8ePMv12f78HKm', 'bidan'),
(8, 'admin1', '$2b$12$Rsr78HPdIFWICoEs5wL5NO1y7xehvWm31TCR0QBSjXmuFtafIvZO6', 'admin'),
(9, 'user2', '$2b$12$eF6D9qf8uOSu.ZbHwZ0IjewY1lQmBdHfnE4gEeTiqyMw7VWJHbuf6', 'user'),
(10, 'Ame', '$2b$12$4Nz.0e099ZFg8is1eumi8OI6sm1fBoSzIo2HUxY2NdNoVOriCQB9e', 'user'),
(11, 'farras dwi lestari', '$2b$12$F3DIEbiRoHm/uOJi5rD/GefPUHnGrNhNLFVRaNJDu1jr5I1KuW4FW', 'user'),
(12, 'farrasdwilestari', '$2b$12$TTb0BkRe/jZPmvTBK4CH6.JqiAyBOmLmEGkKNq9YcETT6AQSCwX/u', 'user'),
(13, 'syaghinna', '$2b$12$19bfACQAvd.wvo3gtwC68.OHa2MTRVG.JjG1pjf289cFjzk/7nzI2', 'user'),
(14, 'shifaaulya', '$2b$12$Euzjg30Z9m6jBj0aoHx05uemsy.3Rb/edl60u2P33Dz5a0a1xeMkq', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `calon_ibu_prediction`
--
ALTER TABLE `calon_ibu_prediction`
  ADD PRIMARY KEY (`id_prediction`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `device_raw_data`
--
ALTER TABLE `device_raw_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `mpasi`
--
ALTER TABLE `mpasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stunting_prediction`
--
ALTER TABLE `stunting_prediction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_anak` (`id_anak`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anak`
--
ALTER TABLE `anak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `calon_ibu_prediction`
--
ALTER TABLE `calon_ibu_prediction`
  MODIFY `id_prediction` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `device_raw_data`
--
ALTER TABLE `device_raw_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT untuk tabel `mpasi`
--
ALTER TABLE `mpasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `stunting_prediction`
--
ALTER TABLE `stunting_prediction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `calon_ibu_prediction`
--
ALTER TABLE `calon_ibu_prediction`
  ADD CONSTRAINT `calon_ibu_prediction_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stunting_prediction`
--
ALTER TABLE `stunting_prediction`
  ADD CONSTRAINT `stunting_prediction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stunting_prediction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stunting_prediction_ibfk_3` FOREIGN KEY (`id_anak`) REFERENCES `anak` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
