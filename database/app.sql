-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2023 at 07:01 PM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tenant`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_06_064715_create_companies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 0),
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(8, 'App\\Models\\User', 6001),
(6, 'App\\Models\\User', 6052),
(2, 'App\\Models\\User', 6053),
(4, 'App\\Models\\User', 6054),
(4, 'App\\Models\\User', 6055),
(5, 'App\\Models\\User', 6056);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read user management', 'web', '2023-11-03 09:30:10', '2023-11-03 09:30:10'),
(2, 'write user management', 'web', '2023-11-03 09:30:10', '2023-11-03 09:30:10'),
(3, 'create user management', 'web', '2023-11-03 09:30:10', '2023-11-03 09:30:10'),
(4, 'read content management', 'web', '2023-11-03 09:30:10', '2023-11-03 09:30:10'),
(5, 'write content management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(6, 'create content management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(7, 'read financial management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(8, 'write financial management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(9, 'create financial management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(10, 'read reporting', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(11, 'write reporting', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(12, 'create reporting', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(13, 'read payroll', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(14, 'Add Campaigns', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(15, 'Execute Campaigns', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(16, 'Archive Campaigns', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(17, 'Add Payment Methods', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(18, 'Edit Payment Methods', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(19, 'Delete Payment Methods', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(20, 'Edit Billing Details', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(21, 'Add Users', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(22, 'Edit Users', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(23, 'Delete Users', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(24, 'Add Stores', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(25, 'Edit Stores', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(26, 'Delete Stores', 'web', '2023-08-29 01:11:34', '2023-08-29 01:11:34'),
(27, 'create repository management', 'web', '2023-11-03 09:30:11', '2023-11-03 09:30:11'),
(28, 'edit articles', 'web', '2023-11-03 10:26:34', '2023-11-03 10:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'web', '2023-08-15 15:24:58', '2023-08-15 15:24:58'),
(2, 'Manager', 'web', '2023-08-15 19:45:49', '2023-08-15 19:45:49'),
(3, 'administrator', 'web', '2023-11-03 09:28:23', '2023-11-03 09:28:23'),
(4, 'developer', 'web', '2023-11-03 09:28:24', '2023-11-03 09:28:24'),
(5, 'analyst', 'web', '2023-11-03 09:28:24', '2023-11-03 09:28:24'),
(6, 'support', 'web', '2023-11-03 09:28:24', '2023-11-03 09:28:24'),
(7, 'trial', 'web', '2023-11-03 09:28:24', '2023-11-03 09:28:24'),
(8, 'writer', 'web', '2023-11-03 10:26:34', '2023-11-03 10:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(11, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(10, 6),
(11, 6),
(12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `password`, `profile_photo_path`, `avatar`, `last_login_ip`, `last_login_at`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dr. Rodger Schaefer', 'khettinger@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'utH3uURdj5', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(2, NULL, 'Max Hagenes IV', 'xmacejkovic@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'mBG9APyrqD', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(3, NULL, 'Lola Schroeder', 'collin.crooks@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '9zRc3ZdUmZ', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(4, NULL, 'Germaine Rolfson', 'bernhard.garnett@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'DqvGyao8co', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(5, NULL, 'Catherine Simonis', 'jazmyn66@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'NapU2GzpDK', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(6, NULL, 'Marjorie Paucek', 'kailyn76@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'DYN1NRXw5J', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(7, NULL, 'Jaylen Klein', 'marks.claire@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'XCZO83vrRO', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(8, NULL, 'Dedric Ortiz', 'halle56@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ukZaMWSQqL', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(9, NULL, 'Shawna Ebert', 'sschiller@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'retxaaM2pW', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(10, NULL, 'Reba Emmerich', 'hilpert.maybelle@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'Djx7W5VKE0', '2023-11-06 00:54:37', '2023-11-06 00:54:37'),
(11, NULL, 'Mr. Stanford Skiles', 'jacobson.winnifred@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'dxWwdGDEPe', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(12, NULL, 'Freeman Schulist', 'newton.kohler@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '40DQIxuQPx', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(13, NULL, 'Cassandra Blanda', 'cartwright.esperanza@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'BHiWiQUE69', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(14, NULL, 'Hanna Fay', 'gibson.rashad@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'NeLvQ1pSIo', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(15, NULL, 'Moshe Ruecker', 'buddy.lueilwitz@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'yDwjKXljKH', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(16, NULL, 'Marcel Bruen', 'gulgowski.bernard@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'p8NpqN1vN9', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(17, NULL, 'Dr. Claudia Harber', 'evie.goodwin@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'zHSNC2LBbz', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(18, NULL, 'Adela Steuber', 'lemuel67@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'jAB8GtekXB', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(19, NULL, 'Lukas Durgan Sr.', 'vborer@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ECQawjltBc', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(20, NULL, 'Samson Reichel', 'jackeline.zboncak@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'MSDih91GRi', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(21, NULL, 'Ryann Tillman', 'scarlett.nitzsche@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'tsJSsyMHrH', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(22, NULL, 'Jada Hackett', 'lewis41@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'nQVkPPA2nF', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(23, NULL, 'Kamren McKenzie', 'ilangworth@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'WYFFCYYjaA', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(24, NULL, 'Nakia Treutel', 'barbara.stroman@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'HT2pQeX0mr', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(25, NULL, 'Lowell Ferry', 'darien74@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'IJMy2HlluX', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(26, NULL, 'Kelley Tillman', 'sgislason@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ycioBwPNTi', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(27, NULL, 'Albina Mann', 'mitchell.russ@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'K4LNubwJw6', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(28, NULL, 'Clare Leannon', 'gladys17@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '1kbyzecXXS', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(29, NULL, 'Rhett Purdy', 'xmurazik@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'SdxZNCsCKr', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(30, NULL, 'Dr. Billy Bins V', 'green.ned@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'vOOVGUOq2m', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(31, NULL, 'Regan Emard', 'layla54@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'LE2RizshE1', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(32, NULL, 'Kallie Rohan DVM', 'qsipes@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'rHUa68CInY', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(33, NULL, 'Dr. Dillan McGlynn', 'ford69@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'OF3sBf0cHL', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(34, NULL, 'Miss Hillary Pollich', 'dwitting@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '9C0g6kanuL', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(35, NULL, 'Cydney Yost', 'arnold.schoen@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '48cF6cRURM', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(36, NULL, 'Emmanuel Padberg', 'ollie.trantow@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ZzdjjUeY4U', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(37, NULL, 'Lauriane Gulgowski II', 'padberg.tristian@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '76s82NJu20', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(38, NULL, 'Santa Williamson', 'johanna.maggio@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'jOPQplyTvA', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(39, NULL, 'Isac Jones', 'harris.deonte@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ruW4dOFDpN', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(40, NULL, 'Jay Okuneva II', 'garfield09@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'Qqje8zZerF', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(41, NULL, 'Dr. Adelbert Hessel', 'cmann@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'niF2iVlCQD', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(42, NULL, 'Mr. Ethel West III', 'vkoss@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'o9M2LMu1jg', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(43, NULL, 'Prof. Florida Hermann IV', 'gibson.eugenia@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'kRtWILQVfq', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(44, NULL, 'Dr. Tatum Windler III', 'barmstrong@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'uYfic7IrjL', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(45, NULL, 'Franz Hettinger', 'noemie96@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'g5xq0mkWdD', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(46, NULL, 'Jerome Abbott', 'elaina.mertz@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '2iynynDpt5', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(47, NULL, 'Earline Friesen', 'maureen.reinger@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'QfqOc5EhW8', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(48, NULL, 'Larue Jenkins DVM', 'teagan31@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'QwU11MpyRy', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(49, NULL, 'Dr. Rosendo Stoltenberg', 'bradford74@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'hlptnnPBqG', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(50, NULL, 'Rosalyn Boehm', 'vivien.turcotte@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'oeuqHKQbST', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(51, NULL, 'Isai D\'Amore', 'stuart.hayes@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'TqvXHk2BpF', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(52, NULL, 'Vickie Nicolas I', 'lueilwitz.kyle@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '91U5Wqnnkq', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(53, NULL, 'Dr. Frankie Gutmann PhD', 'donna32@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'V7JTHpOgqt', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(54, NULL, 'Marjolaine Towne', 'streich.ray@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'PibMn1UvoI', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(55, NULL, 'Prof. Colby Hamill', 'rodriguez.gregory@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'q0jNVYouE0', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(56, NULL, 'Dr. Alberta Brakus', 'douglas.ezra@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'PktGJ8vqLA', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(57, NULL, 'Kurt Emard', 'hwilderman@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '2VAhOQu5tT', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(58, NULL, 'Prof. Kris Purdy', 'kessler.talia@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'dSV0I2WyIV', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(59, NULL, 'Daisha Monahan', 'fritsch.harvey@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'JCy8ZxahTi', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(60, NULL, 'Henriette Reynolds', 'greenfelder.zena@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'XXm2Kxg4Fv', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(61, NULL, 'Dr. Loyce Smitham V', 'rashad.kemmer@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'gLlNUdt2vL', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(62, NULL, 'Alyce Klein', 'lauriane19@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'Gp1IPmrc8H', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(63, NULL, 'Norwood Keebler', 'jeffrey24@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'MFcwnQkSFK', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(64, NULL, 'Willow Kemmer', 'dwalter@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'QXluYCn4mZ', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(65, NULL, 'Louisa O\'Kon', 'alang@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'JHZBFX4pQk', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(66, NULL, 'Oren Marquardt', 'gunnar34@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'ynpAvg8JzT', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(67, NULL, 'Verdie Yost', 'schuyler16@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'bg65QQHwUg', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(68, NULL, 'Dr. Lloyd Nienow Sr.', 'mac78@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'iv8AXKeN7Q', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(69, NULL, 'Dr. Jonathan Bahringer', 'irwin20@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'sBOzUplc6y', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(70, NULL, 'Nestor Cassin', 'otilia77@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '5r5MjBN6wm', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(71, NULL, 'Prof. Bernadette Ward PhD', 'jaylen49@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'WHVTouuYUb', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(72, NULL, 'Brycen Murazik V', 'justen.treutel@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'zzEDZPJA7H', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(73, NULL, 'Dr. Hailey Shields', 'elbert57@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '6gdHUtLVNZ', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(74, NULL, 'Ocie Zulauf', 'langworth.brock@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'f54YJpSFzt', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(75, NULL, 'Anjali Olson', 'christ.oreilly@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'zUMd0vLFD4', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(76, NULL, 'Ezra Schroeder', 'legros.jalyn@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'nzYH5ncjbv', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(77, NULL, 'Madie Price', 'holly77@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'Ym7KTX7a0X', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(78, NULL, 'Marina Turcotte', 'hills.eryn@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'xqN7DAAmX4', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(79, NULL, 'Sister Mann', 'gottlieb.kay@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'V3wFUWfZs4', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(80, NULL, 'Dr. Alana Grimes Jr.', 'tristin.sporer@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '3SvPplF9Ua', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(81, NULL, 'Webster Trantow III', 'quinton06@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'zcjQaWWdVl', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(82, NULL, 'Andy Corwin MD', 'rylan.lebsack@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'RQNou9sWkZ', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(83, NULL, 'Adella Gleichner II', 'reilly.savanna@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '0yyk9MAEnv', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(84, NULL, 'Mrs. Margarett Bailey MD', 'murazik.eliezer@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'gx4dkZdA34', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(85, NULL, 'Crawford Ernser', 'zbeier@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'a1zI8zyTm3', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(86, NULL, 'Miss Colleen Harvey', 'egerlach@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'rkC3sLBxP4', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(87, NULL, 'Hal Kulas', 'marianne.wuckert@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'YIa3Y0NnZW', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(88, NULL, 'Jasmin Marks', 'vreichert@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'XUHNTnW1nX', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(89, NULL, 'Prof. Billie Donnelly II', 'stehr.willis@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'n3Z501Ulwp', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(90, NULL, 'Alanna Wolff PhD', 'nwilkinson@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'tNkLM00Rfh', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(91, NULL, 'Paolo Stoltenberg', 'dfarrell@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'w17PLUNt32', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(92, NULL, 'Darien Anderson', 'dvolkman@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'Zzp58Dvb7W', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(93, NULL, 'Clark Emmerich', 'kunde.frederique@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '2WFn8zWSRd', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(94, NULL, 'Prof. Ellis Walter', 'hickle.mekhi@example.net', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', '4OSXbQpluN', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(95, NULL, 'Cassandra Runte DVM', 'makenna72@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'RjoHQMl6Ml', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(96, NULL, 'Tyree Lang', 'csteuber@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'l7QB2Sgf4S', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(97, NULL, 'Prof. Keaton Weber I', 'kimberly67@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'f5a9rUpH3p', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(98, NULL, 'Dr. Robin Littel MD', 'jroberts@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'PH6XCdLyA3', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(99, NULL, 'Enrique Kshlerin', 'prohaska.stanton@example.org', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'XICeiQoXCB', '2023-11-06 00:54:38', '2023-11-06 00:54:38'),
(100, NULL, 'Victoria Sanford Sr.', 'mueller.mandy@example.com', '$2y$12$GgFuNOFhj7yicjIaJWvpPOsUzh4sJHLcJGHn/DKryh39m0P0waXFq', NULL, NULL, NULL, NULL, '2023-11-06 00:54:37', 'zTWC5eKpQv', '2023-11-06 00:54:38', '2023-11-06 00:54:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
