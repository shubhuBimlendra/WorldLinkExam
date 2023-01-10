-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 03:30 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldlinkexamdb`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'product-4.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(2, 'product-8.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(3, 'product-1.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(4, 'product-2.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(5, 'product-3.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(6, 'product-5.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(7, 'product-6.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(8, 'product-7.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(9, 'product-10.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(10, 'product-9.jpg', '2023-01-10 01:19:44', '2023-01-10 01:19:44'),
(11, 'image/6AYjmukjJZ6yi7LOIhDjaVedKzpnQKDvj1WlaX6x.jpg', '2023-01-10 04:21:50', '2023-01-10 04:21:50'),
(12, 'image/UVlSVLz185dBEPz8vqDVnbRGrEafpt9PvoXSmCAV.jpg', '2023-01-10 07:09:43', '2023-01-10 07:09:43'),
(13, 'image/eGDsClvYA20yzt4nM9HDgCtIMrV1gP5diisQVKtw.jpg', '2023-01-10 07:34:47', '2023-01-10 07:34:47');

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
(5, '2023_01_10_061856_create_images_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Bimlendra Yadav', 'bimlendrayadav2075@gmail.com', NULL, '$2y$10$SWJ0HifjFDHh7MIl801ZCeDYkylj/9WRW4zR.DVe1zMgjxWE2/PH2', NULL, '2023-01-10 05:05:58', '2023-01-10 05:05:58'),
(2, 'Marquise Roberts', 'jerde.ima@example.org', '2023-01-10 07:25:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WfT6H5vfdv', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(3, 'Robyn Sanford', 'mmayert@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CCGfvFX4X3', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(4, 'Jaden Willms', 'hzemlak@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fenqvzzze8', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(5, 'Pansy Spinka Sr.', 'vhodkiewicz@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MmPXEcvhyJ', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(6, 'Dr. Jesus Luettgen', 'stoltenberg.rhoda@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MlOPOT0pOQ', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(7, 'Macy Mraz', 'kboehm@example.org', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sfj5RM9t4N', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(8, 'Mr. Adonis Kautzer Jr.', 'wwiegand@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YhI8b0SNZZ', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(9, 'Colin Jerde DVM', 'bergnaum.emie@example.org', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hNNBEFJeU0', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(10, 'Miss Kasey Trantow DVM', 'ines.collier@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xpuxi0bi4w', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(11, 'Danny Collins', 'iharvey@example.com', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '75Lr8HhrTj', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(12, 'Leopold Dare', 'demetrius88@example.net', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c8wNgWy9dx', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(13, 'Sanford Mayert', 'rlesch@example.com', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lzz7cTR4S0', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(14, 'Agnes Bosco', 'schoen.andre@example.org', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SjLKfSmavH', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(15, 'Anahi Lebsack', 'johnson.prince@example.org', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZTb6Lkhvck', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(16, 'Jack Mosciski', 'carolyne85@example.com', '2023-01-10 07:25:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jOJ4QmmaiP', '2023-01-10 07:25:08', '2023-01-10 07:25:08'),
(17, 'Bimlendra', 'bimlendra98@gmail.com', NULL, '$2y$10$Vx2t4F9l/EEo92x9cfE.feSJWg8pk4RBO3whaoTgFghz1vpNd5DNS', NULL, '2023-01-10 07:39:53', '2023-01-10 07:39:53');

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
