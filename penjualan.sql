-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 28, 2023 at 09:33 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_26_194119_create_products_table', 1),
(6, '2023_01_26_195137_create_product_transactions_table', 1),
(7, '2023_01_26_195209_create_product_transaction_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `name`, `price`, `description`, `image`, `dimension`, `currency`, `discount`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'SKUSKILNP', 'So klin23 Pewangi', 2500, 'lorem ipsum', 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png', '13 CM X 10 CM', 'IDR', 0, 'PCS', NULL, NULL),
(2, 'SKUSKILNL', 'So klin 333', 6000, 'lorem ipsum', 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png', '13 CM X 10 CM', 'IDR', 0, 'PCS', NULL, NULL),
(3, 'SKUSKILNR', 'So klin Pewangi33', 5000, 'lorem ipsum', 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png', '13 CM X 10 CM', 'IDR', 0, 'PCS', NULL, NULL),
(4, 'SKUSKILNPL', 'So klin Pewangi33', 1200, 'lorem ipsum', 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/6/7/545e27d6-5083-4a06-91ba-5a005c63e7ea.png', '13 CM X 10 CM', 'IDR', 0, 'PCS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_transactions`
--

CREATE TABLE `product_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transactions`
--

INSERT INTO `product_transactions` (`id`, `document_code`, `document_number`, `user`, `created_at`, `updated_at`) VALUES
(6, 'TRX', '1674930350-2295', 'wahyu lombok', '2023-01-28 10:25:50', '2023-01-28 10:25:50'),
(7, 'TRX', '1674941374-0575', 'wahyu lombok', '2023-01-28 13:29:34', '2023-01-28 13:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_transaction_details`
--

CREATE TABLE `product_transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transaction_details`
--

INSERT INTO `product_transaction_details` (`id`, `document_code`, `document_number`, `product_code`, `price`, `quantity`, `sub_total`, `unit`, `currency`, `created_at`, `updated_at`) VALUES
(2, 'TRX', '1674930350-2295', 'SKUSKILNL', 6000, 1, 6000, 'PCS', 'IDR', '2023-01-28 10:25:50', '2023-01-28 10:25:50'),
(3, 'TRX', '1674930350-2295', 'SKUSKILNP', 2500, 5, 12500, 'PCS', 'IDR', '2023-01-28 10:25:50', '2023-01-28 10:25:50'),
(4, 'TRX', '1674930350-2295', 'SKUSKILNR', 5000, 1, 5000, 'PCS', 'IDR', '2023-01-28 10:25:50', '2023-01-28 10:25:50'),
(5, 'TRX', '1674941374-0575', 'SKUSKILNP', 2500, 1, 2500, 'PCS', 'IDR', '2023-01-28 13:29:34', '2023-01-28 13:29:34'),
(6, 'TRX', '1674941374-0575', 'SKUSKILNL', 6000, 1, 6000, 'PCS', 'IDR', '2023-01-28 13:29:34', '2023-01-28 13:29:34'),
(7, 'TRX', '1674941374-0575', 'SKUSKILNR', 5000, 1, 5000, 'PCS', 'IDR', '2023-01-28 13:29:34', '2023-01-28 13:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wahyu lombok', 'wahyudipe6@gmail.com', NULL, '$2y$10$SZqMy2OrNNQV6rOLTedOXuUodGSo3KrTxwiL2ipYhEzt3aWQakCaK', 'azbR49XRecdnYk9sxL8l1kl7SxU5TcsuBfDP4fDxhwMnZ4m0pUsWOXzo6yWS', '2023-01-27 23:55:07', '2023-01-27 23:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transaction_details`
--
ALTER TABLE `product_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_transactions`
--
ALTER TABLE `product_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_transaction_details`
--
ALTER TABLE `product_transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
