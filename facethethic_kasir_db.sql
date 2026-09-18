-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2026 pada 01.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facethethic_kasir_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `description`, `created_at`) VALUES
(1, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:12:33'),
(2, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:12:39'),
(3, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:12:43'),
(4, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:12:49'),
(5, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:12:54'),
(6, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 15:15:46'),
(7, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-17 15:16:48'),
(8, 2, 'LOGIN', 'Login ke sistem', '2026-09-17 15:16:59'),
(9, 2, 'LOGOUT', 'Logout dari sistem', '2026-09-17 15:17:12'),
(10, 3, 'LOGIN', 'Login ke sistem', '2026-09-17 15:17:20'),
(11, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:18:14'),
(12, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:35:13'),
(13, 2, 'LOGIN', 'Login ke sistem', '2026-09-17 22:36:22'),
(14, 2, 'CREATE_TRANSACTION', 'Transaksi INV-20260917223804-833', '2026-09-17 22:38:04'),
(15, 2, 'LOGOUT', 'Logout dari sistem', '2026-09-17 22:39:35'),
(16, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:39:37'),
(17, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-17 22:40:55'),
(18, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:41:01'),
(19, 2, 'LOGIN', 'Login ke sistem', '2026-09-17 22:41:19'),
(20, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:58:06'),
(21, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 22:59:31'),
(22, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-17 23:00:20'),
(23, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 23:00:23'),
(24, 1, 'LOGIN', 'Login ke sistem', '2026-09-17 23:13:59'),
(25, 2, 'LOGIN', 'Login ke sistem', '2026-09-17 23:14:42'),
(26, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 00:10:10'),
(27, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 00:12:08'),
(28, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 00:12:19'),
(29, 2, 'LOGOUT', 'Logout dari sistem', '2026-09-18 00:14:03'),
(30, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 00:18:33'),
(31, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:02:01'),
(32, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:03:53'),
(33, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:06:49'),
(34, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:06:51'),
(35, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 12:07:04'),
(36, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:09:09'),
(37, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:25:37'),
(38, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 12:28:18'),
(39, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 12:28:28'),
(40, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 12:28:29'),
(41, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 12:28:30'),
(42, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 12:28:40'),
(43, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 12:29:11'),
(44, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 12:29:25'),
(45, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 12:29:26'),
(46, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 12:29:27'),
(47, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 12:29:41'),
(48, 4, 'CREATE_TRANSACTION', 'Transaksi INV-20260918123039-726', '2026-09-18 12:30:39'),
(49, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 12:54:18'),
(50, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 13:04:30'),
(51, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 13:21:13'),
(52, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 13:24:50'),
(53, 1, 'CREATE_PRODUCT', 'Menambah produk permen', '2026-09-18 13:26:13'),
(54, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 13:27:10'),
(55, 2, 'ADJUST_STOCK', 'Menambah 50 stok', '2026-09-18 13:28:30'),
(56, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 13:29:40'),
(57, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 13:30:14'),
(58, 4, 'CREATE_TRANSACTION', 'Transaksi INV-20260918133228-842', '2026-09-18 13:32:28'),
(59, 4, 'LOGIN', 'Login ke sistem', '2026-09-18 13:33:10'),
(60, 4, 'CREATE_TRANSACTION', 'Transaksi INV-20260918133410-880', '2026-09-18 13:34:10'),
(61, 4, 'CREATE_TRANSACTION', 'Transaksi INV-20260918134049-127', '2026-09-18 13:40:49'),
(62, 4, 'PAY_KASBON', 'Pembayaran kasbon INV-20260918134049-127 sebesar 15010', '2026-09-18 13:41:49'),
(63, 4, 'CREATE_TRANSACTION', 'Transaksi INV-20260918134451-663', '2026-09-18 13:44:51'),
(64, 4, 'LOGOUT', 'Logout dari sistem', '2026-09-18 13:49:20'),
(65, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 13:49:23'),
(66, 1, 'ADJUST_STOCK', 'Menambah 35 stok', '2026-09-18 13:58:52'),
(67, 1, 'ADJUST_STOCK', 'Menambah 2 stok', '2026-09-18 13:59:26'),
(68, 1, 'CREATE_USER', 'Membuat akun dwi', '2026-09-18 14:05:47'),
(69, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:09:41'),
(70, 5, 'LOGIN', 'Login ke sistem', '2026-09-18 14:09:53'),
(71, 5, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:11:35'),
(72, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 14:11:38'),
(73, 1, 'CREATE_USER', 'Membuat akun rachel', '2026-09-18 14:12:25'),
(74, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:12:29'),
(75, 6, 'LOGIN', 'Login ke sistem', '2026-09-18 14:12:37'),
(76, 6, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:13:50'),
(77, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 14:14:13'),
(78, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:14:37'),
(79, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 14:14:51'),
(80, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 14:34:40'),
(81, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:35:39'),
(82, 2, 'LOGIN', 'Login ke sistem', '2026-09-18 14:36:02'),
(83, 2, 'LOGOUT', 'Logout dari sistem', '2026-09-18 14:36:22'),
(84, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 14:36:25'),
(85, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 22:40:19'),
(86, 1, 'LOGOUT', 'Logout dari sistem', '2026-09-18 22:48:20'),
(87, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 23:02:21'),
(88, 1, 'LOGIN', 'Login ke sistem', '2026-09-18 23:14:31'),
(89, 1, 'UPDATE_PROFILE', 'Memperbarui profil akun sendiri', '2026-09-18 23:15:22'),
(90, 1, 'UPDATE_PROFILE', 'Memperbarui profil akun sendiri', '2026-09-18 23:15:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT '',
  `phone` varchar(30) DEFAULT '',
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `branches`
--

INSERT INTO `branches` (`id`, `code`, `name`, `address`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MDN', 'Pusat Medan', 'Medan, Sumatera Utara', '', 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04'),
(2, 'CBG01', 'Cabang 1', 'Medan', '', 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04'),
(3, 'CBG02', 'Cabang 2', 'Medan', '', 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04'),
(4, 'CBG03', 'Cabang 3', 'Medan', '', 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04'),
(5, 'CBG04', 'Cabang 4', 'Medan', '', 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `branch_stocks`
--

CREATE TABLE `branch_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `branch_stocks`
--

INSERT INTO `branch_stocks` (`id`, `branch_id`, `product_id`, `stock`, `updated_at`) VALUES
(1, 2, 1, 150, '2026-09-17 15:06:04'),
(2, 2, 2, 80, '2026-09-17 15:06:04'),
(3, 2, 3, 117, '2026-09-18 13:44:51'),
(4, 3, 1, 150, '2026-09-17 15:06:04'),
(5, 3, 2, 80, '2026-09-17 15:06:04'),
(6, 3, 3, 120, '2026-09-17 15:06:04'),
(7, 4, 1, 150, '2026-09-17 15:06:04'),
(8, 4, 2, 80, '2026-09-17 15:06:04'),
(9, 4, 3, 120, '2026-09-17 15:06:04'),
(10, 5, 1, 150, '2026-09-17 15:06:04'),
(11, 5, 2, 80, '2026-09-17 15:06:04'),
(12, 5, 3, 120, '2026-09-17 15:06:04'),
(13, 1, 1, 249, '2026-09-17 22:38:04'),
(14, 1, 2, 250, '2026-09-17 15:06:04'),
(15, 1, 3, 249, '2026-09-17 22:38:04'),
(16, 1, 4, 35, '2026-09-18 13:58:52'),
(17, 2, 4, 46, '2026-09-18 13:59:26'),
(18, 3, 4, 0, '2026-09-18 13:26:13'),
(19, 4, 4, 0, '2026-09-18 13:26:13'),
(20, 5, 4, 0, '2026-09-18 13:26:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Umum', 'aktif', '2026-09-17 15:06:04'),
(2, 'FACETHEHTIC', 'aktif', '2026-09-17 15:06:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Umum', 'aktif', '2026-09-17 22:15:41'),
(3, 'FACETHEHTIC', 'aktif', '2026-09-17 23:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `photo` text DEFAULT NULL,
  `phone` varchar(30) DEFAULT '',
  `email` varchar(150) DEFAULT '',
  `ktp` varchar(50) DEFAULT '',
  `gender` enum('L','P') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `branch_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `photo`, `phone`, `email`, `ktp`, `gender`, `birthdate`, `birth_date`, `address`, `notes`, `created_at`, `branch_id`) VALUES
(1, 'Devi', '', '0812908372912', '', '', '', NULL, NULL, '', '', '2026-09-18 12:30:10', 2),
(2, 'umi', '', '08137572899', 'deviputrianisinaga@gmail.com', '', '', NULL, NULL, 'Jl. Dorowati , RT 0, RW 0, Dorowati, Sidorame Barat I, Sidorame, Medan, Sumatera Utara, 20233', '', '2026-09-18 13:48:12', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorite_products`
--

CREATE TABLE `favorite_products` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasbon_payments`
--

CREATE TABLE `kasbon_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `note` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kasbon_payments`
--

INSERT INTO `kasbon_payments` (`id`, `transaction_id`, `amount`, `user_id`, `note`, `created_at`) VALUES
(1, 5, 15010.00, 4, '', '2026-09-18 13:41:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(40) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category` varchar(80) DEFAULT '',
  `unit` varchar(30) NOT NULL DEFAULT 'pcs',
  `purchase_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `min_stock` int(11) NOT NULL DEFAULT 100,
  `online_stock` int(11) NOT NULL DEFAULT 0,
  `is_favorite` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `sku`, `barcode`, `name`, `description`, `favorite`, `brand_id`, `category_id`, `category`, `unit`, `purchase_price`, `selling_price`, `min_stock`, `online_stock`, `is_favorite`, `status`, `created_at`, `updated_at`) VALUES
(1, 'P001', NULL, 'Produk Contoh A', '', 1, 1, NULL, 'Umum', 'pcs', 5000.00, 7500.00, 100, 0, 0, 'aktif', '2026-09-17 15:06:04', '2026-09-18 13:55:08'),
(2, 'P002', NULL, 'Produk Contoh B', '', 1, 1, NULL, 'Umum', 'pcs', 8000.00, 12000.00, 100, 0, 0, 'aktif', '2026-09-17 15:06:04', '2026-09-18 13:54:17'),
(3, 'P003', NULL, 'Produk Contoh C', '', 0, 2, NULL, 'FACETHEHTIC', 'pcs', 10000.00, 15000.00, 100, 0, 0, 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:06:04'),
(4, 'A001', '', 'permen', '', 1, 1, NULL, 'umum', 'pcs', 10000.00, 20000.00, 100, 0, 0, 'aktif', '2026-09-18 13:26:13', '2026-09-18 13:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_barcodes`
--

CREATE TABLE `product_barcodes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_key` varchar(80) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'store_name', 'FACE', '2026-09-18 14:07:34'),
(2, 'store_tagline', 'KASIR INTERNAL', '2026-09-17 15:06:04'),
(3, 'low_stock_threshold', '100', '2026-09-17 15:06:04'),
(7, 'language', 'id', '2026-09-18 14:35:05'),
(8, 'theme', 'light', '2026-09-18 14:07:34'),
(94, 'logo_url', '', '2026-09-18 23:15:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_histories`
--

CREATE TABLE `stock_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('in','out','adjust') NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `before_stock` int(11) NOT NULL DEFAULT 0,
  `after_stock` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stock_histories`
--

INSERT INTO `stock_histories` (`id`, `branch_id`, `product_id`, `user_id`, `type`, `quantity`, `before_stock`, `after_stock`, `note`, `created_at`) VALUES
(1, 2, 4, 2, 'in', 50, 0, 50, '', '2026-09-18 13:28:30'),
(2, 1, 4, 1, 'in', 35, 0, 35, '', '2026-09-18 13:58:52'),
(3, 2, 4, 1, 'in', 2, 44, 46, '', '2026-09-18 13:59:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(40) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid` decimal(15,2) NOT NULL DEFAULT 0.00,
  `change_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` enum('selesai','batal') NOT NULL DEFAULT 'selesai',
  `transaction_date` date DEFAULT NULL,
  `payment_method` enum('tunai','transfer','qris','kasbon') NOT NULL DEFAULT 'tunai',
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `invoice_no`, `user_id`, `branch_id`, `customer_id`, `subtotal`, `discount`, `tax`, `total`, `paid`, `change_amount`, `status`, `transaction_date`, `payment_method`, `description`, `due_date`, `created_at`) VALUES
(1, 'INV-20260917223804-833', 2, 1, NULL, 22500.00, 0.00, 0.00, 22500.00, 22500.00, 0.00, 'selesai', NULL, 'tunai', NULL, NULL, '2026-09-17 22:38:04'),
(2, 'INV-20260918123039-726', 4, 2, NULL, 15000.00, 0.00, 0.00, 15000.00, 15000.00, 0.00, 'selesai', NULL, 'tunai', '', NULL, '2026-09-18 12:30:39'),
(3, 'INV-20260918133228-842', 4, 2, NULL, 80.00, 0.00, 0.00, 80.00, 80.00, 0.00, 'selesai', NULL, 'transfer', '', NULL, '2026-09-18 13:32:28'),
(4, 'INV-20260918133410-880', 4, 2, NULL, 40.00, 0.00, 0.00, 40.00, 40.00, 0.00, 'selesai', NULL, 'transfer', '', NULL, '2026-09-18 13:34:10'),
(5, 'INV-20260918134049-127', 4, 2, 1, 15000.00, 50.00, 60.00, 15010.00, 0.00, 0.00, 'selesai', NULL, 'kasbon', '', '2026-10-02', '2026-09-18 13:40:49'),
(6, 'INV-20260918134451-663', 4, 2, 1, 15000.00, 0.00, 0.00, 15000.00, 0.00, 0.00, 'selesai', NULL, 'kasbon', '', '2026-10-10', '2026-09-18 13:44:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `transaction_id`, `product_id`, `quantity`, `price`, `subtotal`) VALUES
(1, 1, 3, 1, 15000.00, 15000.00),
(2, 1, 1, 1, 7500.00, 7500.00),
(3, 2, 3, 1, 15000.00, 15000.00),
(4, 3, 4, 4, 20.00, 80.00),
(5, 4, 4, 2, 20.00, 40.00),
(6, 5, 3, 1, 15000.00, 15000.00),
(7, 6, 3, 1, 15000.00, 15000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_payments`
--

CREATE TABLE `transaction_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_method` enum('tunai','kasbon') NOT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `phone` varchar(30) DEFAULT '',
  `email` varchar(120) DEFAULT '',
  `photo` longtext DEFAULT NULL,
  `role` enum('bos','admin_pusat','admin_cabang','pegawai') NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `phone`, `email`, `photo`, `role`, `branch_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bos', '$2b$10$x4lQFoa8AWlH45LVYPUUAe0spRz2cpzymb1Bfiv.VRMrjd..qcVEe', 'DWIKA NINGSIHH', '', '', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAWfmNhQlgAABZ+anVtYgAAAB5qdW1kYzJwYQARABCAAACqADibcQNjMnBhAAAAFlhqdW1iAAAAR2p1bWRjMm1hABEAEIAAAKoAOJtxA3VybjpjMnBhOjJiM2E4ZDY5LTdlN2EtNDlkNC1hMTQ3LTQ3NTgxMTI1NDFjNAAAAAOTanVtYgAAAClqdW1kYzJhcwARABCAAACqADibcQNjMnBhLmFzc2VydGlvbnMAAAAAuGp1bWIAAABEanVtZGNib3IAEQAQgAAAqgA4m3ETYzJwYS5pbmdyZWRpZW50LnYzAAAAABhjMnNoKPhMhUWsjmJcuNO7u6TNXQAAAGxjYm9yo2lkYzpmb3JtYXRpaW1hZ2UvcG5namluc3RhbmNlSUR4LHhtcDppaWQ6MjcxYzVkNDYtYWE2ZS00MDE2LTlmNDItMmI1MzQ2ZDE4Nzk2bHJlbGF0aW9uc2hpcGhwYXJlbnRPZgAAAeJqdW1iAAAAQWp1bWRjYm9yABEAEIAAAKoAOJtxE2MycGEuYWN0aW9ucy52MgAAAAAYYzJzaLitKxtoGT+H62BkpYSOsEQAAAGZY2JvcqJnYWN0aW9uc4KiZmFjdGlvbmtjMnBhLm9wZW5lZGpwYXJhbWV0ZXJzoWtpbmdyZWRpZW50c4GiY3VybHgtc2VsZiNqdW1iZj1jMnBhLmFzc2VydGlvbnMvYzJwYS5pbmdyZWRpZW50LnYzZGhhc2hYIIph1UKVKR8TAUPL3lE64jdtx0wpZhEBdqAtPjdkNjoGpGZhY3Rpb254HWNvbS5hbnRocm9waWMuY2xhdWRlLnByb3ZpZGVkanBhcmFtZXRlcnOheB9jb20uYW50aHJvcGljLm9yaWdpbi1jb25maWRlbmNlZ3Vua25vd25rZGVzY3JpcHRpb254ZkNsYXVkZSBwcm92aWRlZCB0aGlzIGZpbGUgYXQgdGhlIHJlcXVlc3Qgb2YgYSB1c2VyIGFuZCBtYXkgaGF2ZSBjcmVhdGVkIG9yIG1vZGlmaWVkIHRoZSBmaWxlIGNvbnRlbnRzLm1zb2Z0d2FyZUFnZW50oWRuYW1lZkNsYXVkZXJhbGxBY3Rpb25zSW5jbHVkZWT1AAAAyGp1bWIAAABAanVtZGNib3IAEQAQgAAAqgA4m3ETYzJwYS5oYXNoLmRhdGEAAAAAGGMyc2jPxuSABWq6EDcF4OzIx+96AAAAgGNib3KlY2FsZ2ZzaGEyNTZjcGFkTQAAAAAAAAAAAAAAAABkaGFzaFgg4XJonglZFmDZaxb57Ex5u+h3yCg9pZeyTvgLnm7+ib9kbmFtZW5qdW1iZiBtYW5pZmVzdGpleGNsdXNpb25zgaJlc3RhcnQYIWZsZW5ndGgZFooAAAI+anVtYgAAACdqdW1kYzJjbAARABCAAACqADibcQNjMnBhLmNsYWltLnYyAAAAAg9jYm9ypWNhbGdmc2hhMjU2aXNpZ25hdHVyZXhNc2VsZiNqdW1iZj0vYzJwYS91cm46YzJwYToyYjNhOGQ2OS03ZTdhLTQ5ZDQtYTE0Ny00NzU4MTEyNTQxYzQvYzJwYS5zaWduYXR1cmVqaW5zdGFuY2VJRHgseG1wOmlpZDphNmRjMjhkNi05ZjIyLTQ4ZDYtYTU4Ny1kODEwMmE2MzQ5ZjNyY3JlYXRlZF9hc3NlcnRpb25zg6JjdXJseC1zZWxmI2p1bWJmPWMycGEuYXNzZXJ0aW9ucy9jMnBhLmluZ3JlZGllbnQudjNkaGFzaFggimHVQpUpHxMBQ8veUTriN23HTClmEQF2oC0+N2Q2OgaiY3VybHgqc2VsZiNqdW1iZj1jMnBhLmFzc2VydGlvbnMvYzJwYS5hY3Rpb25zLnYyZGhhc2hYINvqTrjTPpF1I9OAwhntSfg4+Z2KNWBgC9OVRM28HUjZomN1cmx4KXNlbGYjanVtYmY9YzJwYS5hc3NlcnRpb25zL2MycGEuaGFzaC5kYXRhZGhhc2hYIGXUxux2ASUBnO8ex9sZyKbYFnd7Q21f7illpbKgQqxHdGNsYWltX2dlbmVyYXRvcl9pbmZvo2RuYW1lb0FudGhyb3BpYyBGaWxlc2d2ZXJzaW9uZTEuMC4wa3NwZWNWZXJzaW9uZTIuNC4wAAAQOGp1bWIAAAAoanVtZGMyY3MAEQAQgAAAqgA4m3EDYzJwYS5zaWduYXR1cmUAAAAQCGNib3LShFkCEqIBJhghWQIKMIICBjCCAY2gAwIBAgIUQOWgCu7COdC+uIP6BkIFPWdVEwAwCgYIKoZIzj0EAwMwSTEXMBUGA1UEChMOQW50aHJvcGljLCBQQkMxLjAsBgNVBAMTJUFudGhyb3BpYyBDb250ZW50IENyZWRlbnRpYWxzIFJvb3QgQ0EwHhcNMjYwODA3MTg0MzU2WhcNMjgwODA2MTk0MzU2WjBEMRcwFQYDVQQKEw5BbnRocm9waWMsIFBCQzEpMCcGA1UEAxMgQW50aHJvcGljIENsYXVkZSBDb250ZW50IFNpZ25pbmcwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAASYegpry1AYBRTVNL1CpTlbROnY3dey+UrsF9C3phYrATN3ZHf93Mo8RQN0KOUuOn19P4oWNFWe5n2/She9N7eTo1gwVjAOBgNVHQ8BAf8EBAMCB4AwFQYDVR0lBA4wDAYKKwYBBAGD6F4CATAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFM5R4gSBTmRbI/jjxM+aPpzB11zCMAoGCCqGSM49BAMDA2cAMGQCMDFzHRSeAXrSy1WOzkbhPZ6Km2wGTmZ/2gK18k8BQGXyqz88Rdrz6CTX9flAnYNVxgIwcF9c3fVhqmJKpi+UhasNUMko69cyX6STPfta3Q8EjyzDjzoyrol46FP6VFHhvUcJoWNwYWRZDZ4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD2WEAatf0Mn3lnre5mk22I9FMegBcEMb50D2YZS6gjZQrCATkfHWdjKCaiOJKQ9YM8u29xRXUVZZPWDsCym9LDuKVnxNh67AAAAf5QTFRF9p2X/l9Y/GKd+5Fcupta/1ok/yg67Dew4kjQtqmK4TfJ+Oq0/yRn39/fvY0yvr/AvsC/CwsL/9EX2sB//v79yZM17Ojq8+nNxZhJxsfH19fX69iv+/PW0gLEuLm5x6ls/sYGu5ZM5smS07R0yaNY+eez6gGQ/7gD2cWT2QK00LmJ+gNw/qcH/4cE/5cFeHh48dSWZ2dnx440+dfvlZWVV1dXh4eH8NvK+Mjt2syp/3gEp6enR0hIvKVu8ajo1hTJ9LfqNzc33NKu/mcNvZM7/xlS41jW/tdT/kcs/zc2/tlw/LfU4gSkvsDA/yZN3DXQ8xaM/lgX/KjO98it2ibL5mbY/8Yv/tIx7HbU9ZbU/lUq8IbU4hWq/jRJ9Vix5yix/8pQ+cdz/+aS+3W17pfm/qct/7ZtKioq2xS1/wlZ+jiP/svW53jg/rcq/7ew3kPT/meW/5Qq/7VT/+Fy6obi/plM/hhu9iWP9Eqp/lly/ncu/jlz/pRw/qVsFhYW3+DgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAO2PpEAAAAIB0Uk5T//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8VB6TqAAAWpUlEQVR42tWdiV/ayNvAUdu9j9/7vnFyLpFAEFEE5BZUPGs92qpt16O1tdV2e27P7Xa72/7rv+eZmYQAEQgE3Hc+u1ZhCN88ea55ZjIJCL42QjKZTLFanT842t8/OpivVovwAiH+fkvAN9xMcf7o1tf37t2hbWsC22+03bz53a1388UM+TdBk+Lmwf7xvShtW6xNNLVfbq7tn1aL5F8BXT36k/NaDZjv3LkH7c5vzeTfvKteNPTm/p83HLhfH+8fHR0c7IIqgy4Xi9X5+dODo6P9te84M7aF359XLwyabD6sEd/4+vhot3qe2pJMdf5o7foCx6bc5AKgiw+fWsQfjg+qnVgZoJ+u3fyFc1/fLw4YevP4xuQklfCH4U1i+zvyoxwMBrdlRSG0KYqML8j4u9WpeuvmAudeqw4OmlBkgL7x1CJGQMCTFdLsk/l7Qfs94L6+YGGTgUCT3eNJijz8kBEzKFlp9znaiYOT6vPrTNxr86Tv0JmDYYp8488D9mUKwChKpx8HdYEPsJM4XWPi/v0001foTOApQz7eJZxBVrzKyf4QmefY199l+ge9y6XMNJngl3fluOCT2zJh2s2lPd8n6MzDPxD5w/Az9sVBpQdXCx+n2ELxFnWCC88z/YDepZrx4WGR2l5QVnrMItAwGfZzin193ndoLuZhGhAyXEo9Z1oKx16jwr5V9Bd699MTQH5KPQZI2b/UWN7+kXqS616E3RH0s1d/APMfr4pMGX1N6Qm7akXmSNaKfkGDmJ9MPnm6y+xeEXxu4AIRe54K++a8P9CBH56srv7wCn1GH5Ap9rZM/QgKe+GdD9BkeBXa0G7tSvahcZ1jwt4nvUJnXiHzK3SiSlAR+tbYwTPUjaxleoMufATkawFCtZkIfWxwfPy5T+NjsRfoZx9XrwFzv8XsFPY7VOzrxe6hN4eA+RNjFvrfCKU+Reqb1W6hN+9eu3ZtaJN6DWEgjYat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', 'bos', NULL, 'aktif', '2026-09-17 15:06:04', '2026-09-18 23:15:22'),
(2, 'adminpusat', '$2b$10$/fwWPJnRLnwR74L7TKRjP.ECaSAP0hA9RQuh69XyfE4SnpDiPTtUG', 'Eriati Erlinda', '', '', '', 'admin_pusat', NULL, 'aktif', '2026-09-17 15:06:04', '2026-09-18 14:14:28'),
(3, 'admincabang1', '$2b$10$x4lQFoa8AWlH45LVYPUUAe0spRz2cpzymb1Bfiv.VRMrjd..qcVEe', 'Admin Cabang 1', '', '', '', 'admin_cabang', 2, 'aktif', '2026-09-17 15:06:04', '2026-09-17 15:11:26'),
(4, 'pegawai1', '$2b$10$rfqqYQGglrRdCBKow0yQROReoT.G7U2tgf5dcXCl3jpe3XYSy3tgS', 'Pegawai Cabang 1', '', '', '', 'pegawai', 2, 'aktif', '2026-09-17 15:06:04', '2026-09-18 13:29:57'),
(5, 'dwi', '$2b$10$M8/Pwi5wP7wIXjRz4B3LW.NPbKog.YmivFxJ0H1eZCL.bneSlZHKe', 'Dwika', '', '', '', 'pegawai', 4, 'aktif', '2026-09-18 14:05:47', '2026-09-18 14:05:47');
INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `phone`, `email`, `photo`, `role`, `branch_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'rachel', '$2b$10$LCYQSLv42JcfV4PPXVskme5u9Evwe87iHbUWjUnYjNLc.iYk439Bu', 'Rachel Silaban', '', '', 'data:image/png;base64,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', 'admin_cabang', 4, 'aktif', '2026-09-18 14:12:25', '2026-09-18 23:16:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_log_user` (`user_id`);

--
-- Indeks untuk tabel `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `branch_stocks`
--
ALTER TABLE `branch_stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_branch_product` (`branch_id`,`product_id`),
  ADD KEY `fk_stock_product` (`product_id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `kasbon_payments`
--
ALTER TABLE `kasbon_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `fk_products_brand` (`brand_id`);

--
-- Indeks untuk tabel `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode` (`barcode`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indeks untuk tabel `stock_histories`
--
ALTER TABLE `stock_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `fk_tx_user` (`user_id`),
  ADD KEY `fk_tx_branch` (`branch_id`),
  ADD KEY `fk_tx_customer` (`customer_id`);

--
-- Indeks untuk tabel `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_transaction` (`transaction_id`),
  ADD KEY `fk_item_product` (`product_id`);

--
-- Indeks untuk tabel `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_branch` (`branch_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `branch_stocks`
--
ALTER TABLE `branch_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kasbon_payments`
--
ALTER TABLE `kasbon_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `stock_histories`
--
ALTER TABLE `stock_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaction_payments`
--
ALTER TABLE `transaction_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `fk_log_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `branch_stocks`
--
ALTER TABLE `branch_stocks`
  ADD CONSTRAINT `fk_stock_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_stock_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD CONSTRAINT `favorite_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_brand` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD CONSTRAINT `product_barcodes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_tx_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `fk_tx_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tx_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `fk_item_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_item_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD CONSTRAINT `transaction_payments_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
