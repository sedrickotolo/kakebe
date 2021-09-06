-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2021 at 11:58 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgxszumy_shop.kakebe.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT '1',
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OTP', 'otp_system', '1.5', 1, 'otp_system.jpg', '2021-07-18 20:32:38', '2021-07-18 20:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 23, 'lira Barogole', 'Uganda', 'Lira', NULL, '07774367', 0, '2021-07-19 01:38:06', '2021-07-19 01:38:06'),
(2, 23, 'lira Barogole', 'Uganda', 'Lira', NULL, '07774367', 0, '2021-07-19 01:38:15', '2021-07-19 01:38:15'),
(3, 19, 'Lira Main Street', 'Uganda', 'Lira', '256', '+256780286800', 0, '2021-07-19 11:03:30', '2021-07-19 11:03:30'),
(4, 19, 'Lira Main Street', 'Uganda', 'Lira', '256', '0777676206', 0, '2021-07-19 11:23:00', '2021-07-19 11:23:00'),
(5, 31, 'Barogole, Lira', 'Uganda', 'Lira', '256', '0777854154', 0, '2021-07-19 12:16:46', '2021-07-19 12:16:46'),
(6, 31, 'mango beach', 'Uganda', 'Lira City', '256', '0787250196', 0, '2021-07-19 14:35:59', '2021-07-19 14:35:59'),
(7, 33, 'Main Street', 'Uganda', 'Lira City', '32', '0780286800', 0, '2021-07-19 18:19:37', '2021-07-19 18:19:37'),
(8, 32, 'Barogole, Lira', 'Uganda', 'Lira City', '256', '0777854154', 0, '2021-07-19 18:21:19', '2021-07-19 18:21:19'),
(9, 35, 'Adekokwok, Lira', 'Uganda', 'Lira City', '256', '0772474256', 0, '2021-07-19 18:57:12', '2021-07-19 18:57:12'),
(10, 36, 'mango beach', 'Uganda', 'Lira City', '256', '0787250196', 0, '2021-07-19 19:21:12', '2021-07-19 19:21:12'),
(11, 37, 'LIRA', 'Uganda', 'Lira City', '49', '0788646146', 0, '2021-07-19 20:12:47', '2021-07-19 20:12:47'),
(12, 42, 'test', 'Uganda', 'Lira City', 'nmmn', '+343434343433', 0, '2021-07-19 22:36:39', '2021-07-19 22:36:39'),
(13, 49, 'Obote Avenue', 'Uganda', 'Lira City', NULL, '0394510777', 0, '2021-07-20 03:10:00', '2021-07-20 03:10:00'),
(14, 55, 'Voice of the Gospel Radio', 'Uganda', 'Lira City', '0000', '0786329628', 0, '2021-07-20 11:35:07', '2021-07-20 11:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `published` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(4, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:23', '2019-06-11 04:56:50'),
(5, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:41', '2019-03-12 05:58:57'),
(6, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-03-12 05:58:52', '2019-03-12 05:58:57'),
(7, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-05-26 05:16:38', '2019-05-26 05:17:34'),
(8, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-06-11 05:00:06', '2019-06-11 05:00:27'),
(9, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-06-11 05:00:15', '2019-06-11 05:00:29'),
(10, 'uploads/banners/banner.jpg', '#', 1, 0, '2019-06-11 05:00:24', '2019-06-11 05:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `banner` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_img` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 'MTN Uganda', '766', 0, 'mtn-uganda-veaqh', NULL, NULL, '2021-06-04 07:32:24', '2021-07-19 11:23:52'),
(4, 'Airtel', '804', 0, 'airtel-zlkhw', NULL, NULL, '2021-06-04 07:32:53', '2021-07-19 11:18:13'),
(5, 'Coca-Cola', '770', 0, 'coca-cola-xmj8v', NULL, NULL, '2021-06-04 07:33:19', '2021-07-19 11:19:49'),
(6, 'Adidas', '763', 0, 'adidas-tmivv', NULL, NULL, '2021-06-04 07:33:42', '2021-07-19 11:15:39'),
(7, 'Pepsi', '771', 0, 'pepsi-w2t0z', NULL, NULL, '2021-06-04 07:34:02', '2021-07-19 11:24:29'),
(8, 'Nike', '798', 0, 'nike-voqcs', NULL, NULL, '2021-06-04 07:34:18', '2021-07-19 11:25:17'),
(9, 'BMW', '790', 0, 'bmw-lpzse', NULL, NULL, '2021-06-04 07:40:24', '2021-07-19 11:19:21'),
(10, 'Mercedes', '747', 0, 'mercedes-3iijr', NULL, NULL, '2021-06-04 07:41:03', '2021-07-19 11:23:25'),
(11, 'Ford', '794', 0, 'ford-ex279', NULL, NULL, '2021-06-04 07:41:43', '2021-07-19 11:20:20'),
(13, 'Samsung', '772', 0, 'samsung-eqsnu', NULL, NULL, '2021-06-04 07:42:32', '2021-07-19 11:25:51'),
(14, 'Infinix', '797', 0, 'infinix-ar67b', NULL, NULL, '2021-06-04 07:42:57', '2021-07-19 11:22:04'),
(15, 'Tecno', '860', 0, 'tecno-qkwvy', 'Tecno', 'Techno Mobile', '2021-07-16 15:08:31', '2021-07-19 14:11:35'),
(16, 'Itel Mobile', '859', 0, 'itel-mobile-qaf8u', 'Itel Mobile', NULL, '2021-07-16 15:14:16', '2021-07-19 14:09:53'),
(17, 'Hisense', '776', 0, 'hisense-vwn3s', 'hisense', NULL, '2021-07-17 05:56:56', '2021-07-19 11:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 6, 'Adidas', 'en', '2021-07-19 08:47:37', '2021-07-19 08:47:37'),
(2, 4, 'Airtel', 'en', '2021-07-19 08:49:28', '2021-07-19 08:49:28'),
(4, 9, 'BMW', 'en', '2021-07-19 08:50:35', '2021-07-19 08:50:35'),
(5, 5, 'Coca-Cola', 'en', '2021-07-19 08:51:33', '2021-07-19 08:51:33'),
(6, 11, 'Ford', 'en', '2021-07-19 08:52:34', '2021-07-19 08:52:34'),
(7, 17, 'Hisense', 'en', '2021-07-19 08:53:13', '2021-07-19 08:53:13'),
(8, 14, 'Infinix', 'en', '2021-07-19 09:01:41', '2021-07-19 09:01:41'),
(9, 16, 'Itel Mobile', 'en', '2021-07-19 09:02:22', '2021-07-19 09:02:22'),
(10, 10, 'Mercedes', 'en', '2021-07-19 09:03:05', '2021-07-19 09:03:05'),
(11, 3, 'MTN Uganda', 'en', '2021-07-19 09:03:39', '2021-07-19 09:03:39'),
(12, 7, 'Pepsi', 'en', '2021-07-19 09:04:15', '2021-07-19 09:04:15'),
(13, 13, 'Samsung', 'en', '2021-07-19 09:04:52', '2021-07-19 09:04:52'),
(14, 15, 'Tecno', 'en', '2021-07-19 09:05:37', '2021-07-19 09:05:37'),
(15, 8, 'Nike', 'en', '2021-07-19 11:25:17', '2021-07-19 11:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', '2018-10-16 01:35:52', '2019-01-28 01:26:53'),
(2, 'system_default_currency', '29', '2018-10-16 01:36:58', '2021-07-19 01:44:03'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '0', '2018-10-17 03:01:59', '2021-07-19 01:43:10'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2019-01-31 05:09:10'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '40', '2019-01-31 06:18:04', '2021-07-19 16:16:13'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]', '2019-02-03 11:36:58', '2019-02-16 06:14:42'),
(19, 'google_analytics', '1', '2019-02-06 12:22:35', '2021-07-19 17:21:57'),
(20, 'facebook_login', '0', '2019-02-07 12:51:59', '2019-02-08 19:41:15'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2019-02-08 19:41:14'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '0', '2019-04-30 07:30:07', '2019-04-30 07:30:07'),
(38, 'wallet_system', '0', '2019-05-19 08:05:44', '2019-05-19 02:11:57'),
(39, 'coupon_system', '0', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(40, 'current_version', '4.8', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2021-07-19 17:24:27'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '1', '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', '2020-05-13 13:01:05', '2020-05-13 13:01:05'),
(56, 'pos_activation_for_seller', '1', '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'product_wise_shipping', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(58, 'flat_rate_shipping_cost', '0', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(59, 'shipping_cost_admin', '0', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(60, 'payhere_sandbox', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', '827', '2020-11-16 07:26:36', '2021-07-19 11:15:04'),
(65, 'show_language_switcher', NULL, '2020-11-16 07:26:36', '2021-07-19 02:15:13'),
(66, 'show_currency_switcher', NULL, '2020-11-16 07:26:36', '2021-07-19 02:15:13'),
(67, 'header_stikcy', 'on', '2020-11-16 07:26:36', '2021-07-19 14:17:55'),
(68, 'footer_logo', '752', '2020-11-16 07:26:36', '2021-07-19 11:27:44'),
(69, 'about_us_description', '<b>KaKebe \"Shop Online\"</b> is the leading Ecommerce platform in Northern Uganda and it is a marketplace where people can buy and sell goods', '2020-11-16 07:26:36', '2021-07-19 07:53:33'),
(70, 'contact_address', 'Obote Avenue, Lira City', '2020-11-16 07:26:36', '2021-07-19 01:17:06'),
(71, 'contact_phone', '0777854154 / 0757452098', '2020-11-16 07:26:36', '2021-07-19 01:17:06'),
(72, 'contact_email', 'shop@kakebe.com', '2020-11-16 07:26:36', '2021-07-19 01:17:06'),
(73, 'widget_one_labels', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(74, 'widget_one_links', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(75, 'widget_one', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(76, 'frontend_copyright_text', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(77, 'show_social_links', NULL, '2020-11-16 07:26:36', '2021-07-19 08:08:37'),
(78, 'facebook_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(79, 'twitter_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(80, 'instagram_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(81, 'youtube_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(82, 'linkedin_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(83, 'payment_method_images', '766,804', '2020-11-16 07:26:36', '2021-07-19 11:28:56'),
(84, 'home_slider_images', '[\"782\",\"812\",\"783\",\"784\"]', '2020-11-16 07:26:36', '2021-07-19 10:53:10'),
(85, 'home_slider_links', '[\"www.shop.kakebe.com\",\"www.shop.kakebe.com\",\"www.shop.kakebe.com\",\"www.shop.kakebe.com\"]', '2020-11-16 07:26:36', '2021-07-19 09:43:21'),
(86, 'home_banner1_images', '[\"813\",\"810\",\"788\"]', '2020-11-16 07:26:36', '2021-07-19 10:55:21'),
(87, 'home_banner1_links', '[\"www.shop.kakebe.com\",\"www.shop.kakebe.com\",\"www.shop.kakebe.com\"]', '2020-11-16 07:26:36', '2021-07-19 08:16:34'),
(88, 'home_banner2_images', '[\"812\",\"806\",\"758\"]', '2020-11-16 07:26:36', '2021-07-19 10:57:57'),
(89, 'home_banner2_links', '[\"www.shop.kakebe.com\",\"www.shop.kakebe.com\",\"www.shop.kakebe.com\"]', '2020-11-16 07:26:36', '2021-07-19 08:18:26'),
(90, 'home_categories', '[\"5\",\"6\",\"10\"]', '2020-11-16 07:26:36', '2021-07-19 08:20:14'),
(91, 'top10_categories', '[\"5\",\"6\",\"7\",\"8\",\"10\",\"12\"]', '2020-11-16 07:26:36', '2021-07-19 09:37:26'),
(92, 'top10_brands', '[\"3\",\"5\",\"7\",\"8\",\"13\",\"14\"]', '2020-11-16 07:26:36', '2021-07-19 09:39:18'),
(93, 'website_name', 'KaKebe \"Shop Online\"', '2020-11-16 07:26:36', '2021-07-19 02:46:49'),
(94, 'site_motto', 'You Order, We Deliver!', '2020-11-16 07:26:36', '2021-07-19 02:46:49'),
(95, 'site_icon', '85', '2020-11-16 07:26:36', '2021-07-19 02:47:46'),
(96, 'base_color', '#e62e04', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(97, 'base_hov_color', '#e62e04', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(98, 'meta_title', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(99, 'meta_description', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(100, 'meta_keywords', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(101, 'meta_image', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(102, 'site_name', 'KaKebe \"Shop Online\"', '2020-11-16 07:26:36', '2021-07-19 10:00:33'),
(103, 'system_logo_white', '752', '2020-11-16 07:26:36', '2021-07-19 11:33:44'),
(104, 'system_logo_black', '826', '2020-11-16 07:26:36', '2021-07-19 11:33:44'),
(105, 'timezone', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', '827', '2020-11-16 07:26:36', '2021-07-19 11:33:44'),
(107, 'iyzico_sandbox', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(108, 'iyzico', '0', '2020-12-30 16:45:56', '2021-07-19 12:17:34'),
(109, 'decimal_separator', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '0', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(111, 'bkash', '0', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(112, 'bkash_sandbox', '1', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'header_menu_labels', NULL, '2021-02-16 02:43:11', '2021-07-19 08:05:52'),
(114, 'header_menu_links', NULL, '2021-02-16 02:43:11', '2021-07-19 08:05:52'),
(115, 'proxypay', '0', '2021-06-20 11:25:42', '2021-07-19 12:17:33'),
(116, 'proxypay_sandbox', '1', '2021-06-20 11:25:42', '2021-06-20 11:25:42'),
(117, 'topbar_banner', NULL, '2021-07-19 02:15:13', '2021-07-19 08:05:52'),
(118, 'topbar_banner_link', NULL, '2021-07-19 02:15:13', '2021-07-19 02:15:13'),
(119, 'play_store_link', NULL, '2021-07-19 08:06:30', '2021-07-19 08:06:30'),
(120, 'app_store_link', NULL, '2021-07-19 08:06:30', '2021-07-19 08:06:30'),
(121, 'home_banner3_images', '[\"812\",\"810\",\"813\"]', '2021-07-19 09:41:39', '2021-07-19 10:59:20'),
(122, 'home_banner3_links', '[\"www.shop.kakebe.com\",\"www.shop.kakebe.com\",\"www.shop.kakebe.com\"]', '2021-07-19 09:41:39', '2021-07-19 09:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `temp_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT '0.00',
  `tax` double(8,2) DEFAULT '0.00',
  `shipping_cost` double(8,2) DEFAULT '0.00',
  `shipping_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pickup_point` int(11) DEFAULT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_applied` tinyint(4) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `owner_id`, `user_id`, `temp_user_id`, `address_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `shipping_type`, `pickup_point`, `discount`, `coupon_code`, `coupon_applied`, `quantity`, `created_at`, `updated_at`) VALUES
(3, 9, 23, NULL, 1, 4, NULL, 3000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-19 02:07:18', '2021-07-19 02:07:35'),
(4, 9, 26, NULL, 0, 5, NULL, 4000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 2, '2021-07-19 02:44:35', '2021-07-19 02:45:12'),
(5, 9, 26, NULL, 0, 4, NULL, 3000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 2, '2021-07-19 02:45:00', '2021-07-19 02:45:12'),
(7, 9, 28, NULL, 0, 116, NULL, 35000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-19 03:27:23', '2021-07-19 03:27:23'),
(10, 9, 29, NULL, 0, 27, NULL, 6000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-19 09:13:17', '2021-07-19 09:37:13'),
(33, 9, 37, NULL, 11, 144, '', 472000.00, 0.00, 0.00, 'home_delivery', NULL, 0.00, '', 0, 1, '2021-07-19 20:03:20', '2021-07-19 20:15:54'),
(35, 9, 41, NULL, 0, 30, '', 8000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-19 21:18:15', '2021-07-19 21:22:26'),
(38, 9, 47, NULL, 0, 4, '', 3000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-20 01:13:46', '2021-07-20 01:14:49'),
(40, 9, 48, NULL, 0, 10, NULL, 2000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-20 06:07:52', '2021-07-20 06:07:52'),
(41, 9, 55, NULL, 14, 87, NULL, 4000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 3, '2021-07-20 11:33:57', '2021-07-20 11:57:13'),
(42, 9, 55, NULL, 0, 9, NULL, 9000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-20 11:56:05', '2021-07-20 11:56:05'),
(43, 9, 55, NULL, 0, 32, NULL, 2000.00, 0.00, 0.00, '', NULL, 0.00, '', 0, 1, '2021-07-20 11:56:32', '2021-07-20 11:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT '0',
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `digital` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(4, 0, 0, 'Agro Inputs', 3, 10.00, '808', '785', 1, 0, 0, 'agro-inputs-jd31u', NULL, NULL, '2021-07-19 05:10:32', '2021-07-19 11:10:32'),
(5, 0, 0, 'Home Essentials', 10, 10.00, '781', '803', 1, 0, 0, 'supermarket-o2c1v', NULL, NULL, '2021-07-19 05:01:15', '2021-07-19 11:01:15'),
(6, 0, 0, 'Fresh Foods', 11, 10.00, '807', '796', 1, 0, 0, 'second-hand-kap8v', NULL, NULL, '2021-07-19 05:00:31', '2021-07-19 11:00:31'),
(7, 0, 0, 'Electronics', 8, 5.00, '756', '800', 1, 0, 0, 'electronics-bqcqh', NULL, NULL, '2021-07-19 05:02:36', '2021-07-19 11:02:36'),
(8, 0, 0, 'Beauty & Health', 7, 10.00, '738', '742', 1, 0, 0, 'health--beauty-qtwn8', NULL, NULL, '2021-07-19 05:04:05', '2021-07-19 11:04:05'),
(9, 0, 0, 'Fashion', 6, 10.00, '760', '745', 1, 0, 0, 'fashion-uk4ko', NULL, NULL, '2021-07-19 05:04:53', '2021-07-19 11:04:53'),
(10, 0, 0, 'Phones & Tablets', 4, 10.00, '805', '802', 1, 0, 0, 'phones--tablets-jpyyh', NULL, NULL, '2021-07-19 05:06:55', '2021-07-19 11:06:55'),
(11, 0, 0, 'Home & Office', 2, 10.00, '793', '795', 1, 0, 0, 'home--office-2eexo', NULL, NULL, '2021-07-19 05:07:41', '2021-07-19 11:07:41'),
(12, 0, 0, 'Baby Products', 5, 10.00, '778', '748', 1, 0, 0, 'baby-products-majc9', NULL, NULL, '2021-07-19 05:05:57', '2021-07-19 11:05:57'),
(13, 0, 0, 'Computing', 0, 10.00, '792', '791', 1, 0, 0, 'other-categories-eblaa', NULL, NULL, '2021-07-19 05:09:17', '2021-07-19 11:09:17'),
(14, 0, 0, 'Sporting Goods', 0, 10.00, '792', '742', 0, 0, 1, 'sporting-goods-ko93c', NULL, NULL, '2021-07-19 05:12:45', '2021-07-19 11:12:45'),
(15, 5, 1, 'FOOD CUPBOARD', 0, 0.00, NULL, NULL, 0, 0, 0, 'FOOD-CUPBOARD-fjj0x', NULL, NULL, '2021-06-03 07:38:08', '2021-06-03 07:38:08'),
(16, 5, 1, 'BEERS, WINES & SPIRITS', 0, 0.00, NULL, NULL, 0, 0, 0, 'BEERS-WINES--SPIRITS-aelO9', NULL, NULL, '2021-06-03 07:39:10', '2021-06-03 07:39:10'),
(18, 5, 1, 'CLEANING', 0, 0.00, NULL, NULL, 0, 0, 0, 'CLEANING-XIo1b', NULL, NULL, '2021-06-03 07:40:21', '2021-06-03 07:40:21'),
(19, 7, 1, 'TELEVISION & VIDEO', 0, 0.00, NULL, NULL, 0, 0, 0, 'TELEVISION--VIDEO-y1OsL', NULL, NULL, '2021-06-03 07:45:49', '2021-06-03 07:45:49'),
(20, 7, 1, 'HOME AUDIO', 0, 0.00, NULL, NULL, 0, 0, 0, 'HOME-AUDIO-keULo', NULL, NULL, '2021-06-03 07:46:33', '2021-06-03 07:46:33'),
(21, 7, 1, 'HOME APPLIANCES', 0, 0.00, NULL, NULL, 0, 0, 0, 'HOME-APPLIANCES-zVOqf', NULL, NULL, '2021-06-03 07:47:22', '2021-06-03 07:47:22'),
(22, 7, 1, 'CAMERA & PHOTOS', 0, 0.00, NULL, NULL, 0, 0, 0, 'CAMERA--PHOTOS-ATluv', NULL, NULL, '2021-06-03 07:56:37', '2021-06-03 07:56:37'),
(23, 8, 1, 'MAKEUP', 0, 0.00, NULL, NULL, 0, 0, 0, 'MAKEUP-6R0wS', NULL, NULL, '2021-06-03 07:59:37', '2021-06-03 07:59:37'),
(24, 8, 1, 'HAIR CARE', 0, 0.00, NULL, NULL, 0, 0, 0, 'HAIR-CARE-Pyjrg', NULL, NULL, '2021-06-03 08:00:06', '2021-06-03 08:00:06'),
(25, 8, 1, 'ORAL CARE', 0, 0.00, NULL, NULL, 0, 0, 0, 'ORAL-CARE-gvIc6', NULL, NULL, '2021-06-03 08:01:06', '2021-06-03 08:01:06'),
(26, 8, 1, 'FRAGRANCES', 0, 0.00, NULL, NULL, 0, 0, 0, 'FRAGRANCES-loUGw', NULL, NULL, '2021-06-03 08:01:41', '2021-06-03 08:01:41'),
(28, 8, 1, 'PERSONAL CARE', 0, 0.00, NULL, NULL, 0, 0, 0, 'PERSONAL-CARE-T7ZXD', NULL, NULL, '2021-06-03 08:02:34', '2021-06-03 08:02:34'),
(29, 9, 1, 'WOMEN\'S FASHION', 0, 0.00, NULL, NULL, 0, 0, 0, 'WOMENS-FASHION-6g6es', NULL, NULL, '2021-06-03 08:03:10', '2021-06-03 08:03:10'),
(30, 9, 1, 'MEN\'S FASHION', 0, 0.00, NULL, NULL, 0, 0, 0, 'MENS-FASHION-mIyS7', NULL, NULL, '2021-06-03 08:03:38', '2021-06-03 08:03:38'),
(31, 9, 1, 'KID\'S FASHION', 0, 0.00, NULL, NULL, 0, 0, 0, 'KIDS-FASHION-ICxh2', NULL, NULL, '2021-06-03 08:04:14', '2021-06-03 08:04:14'),
(32, 9, 1, 'SPORTS SHOP', 0, 0.00, NULL, NULL, 0, 0, 0, 'SPORTS-SHOP-8F3sm', NULL, NULL, '2021-06-03 08:04:52', '2021-06-03 08:04:52'),
(33, 9, 1, 'LUGGAGE & TRAVEL GEAR', 0, 0.00, NULL, NULL, 0, 0, 0, 'LUGGAGE--TRAVEL-GEAR-jxSq8', NULL, NULL, '2021-06-03 08:07:44', '2021-06-03 08:07:44'),
(34, 9, 1, 'WATCHES & SUNGLASSES', 0, 0.00, NULL, NULL, 0, 0, 0, 'WATCHES--SUNGLASSES-K8sS6', NULL, NULL, '2021-06-03 08:08:28', '2021-06-03 08:08:28'),
(35, 9, 1, 'WEDDINGS', 0, 0.00, NULL, NULL, 0, 0, 0, 'WEDDINGS-sKzQX', NULL, NULL, '2021-06-03 08:09:54', '2021-06-03 08:09:54'),
(36, 12, 1, 'APPAREL & ACCESSORIES', 0, 0.00, NULL, NULL, 0, 0, 0, 'APPAREL--ACCESSORIES-R4PvQ', NULL, NULL, '2021-06-03 08:10:47', '2021-06-03 08:10:47'),
(37, 12, 1, 'BATHING & SKIN CARE', 0, 0.00, NULL, NULL, 0, 0, 0, 'BATHING--SKIN-CARE-cjyFL', NULL, NULL, '2021-06-03 08:11:19', '2021-06-03 08:11:19'),
(38, 12, 1, 'DIAPERING', 0, 0.00, NULL, NULL, 0, 0, 0, 'DIAPERING-wlyiH', NULL, NULL, '2021-06-03 08:11:46', '2021-06-03 08:11:46'),
(39, 12, 1, 'FEEDING', 0, 0.00, NULL, NULL, 0, 0, 0, 'FEEDING-rNRIw', NULL, NULL, '2021-06-03 08:12:15', '2021-06-03 08:12:15'),
(40, 12, 1, 'HEALTH & BABY CARE', 0, 0.00, NULL, NULL, 0, 0, 0, 'HEALTH--BABY-CARE-TI1jv', NULL, NULL, '2021-06-03 08:12:58', '2021-06-03 08:12:58'),
(41, 10, 1, 'MOBILE PHONES', 0, 0.00, NULL, NULL, 0, 0, 0, 'MOBILE-PHONES-Fw7Ag', NULL, NULL, '2021-06-03 08:13:33', '2021-06-03 08:13:33'),
(42, 10, 1, 'TABLETS', 0, 0.00, NULL, NULL, 0, 0, 0, 'TABLETS-jRHRn', NULL, NULL, '2021-06-03 08:14:00', '2021-06-03 08:14:00'),
(43, 10, 1, 'CELL PHONE ACCESSORIES', 0, 0.00, NULL, NULL, 0, 0, 0, 'CELL-PHONE-ACCESSORIES-3Dili', NULL, NULL, '2021-06-03 08:14:37', '2021-06-03 08:14:37'),
(44, 11, 1, 'HOME & KITCHEN', 0, 0.00, NULL, NULL, 0, 0, 0, 'HOME--KITCHEN-RJTPW', NULL, NULL, '2021-06-03 08:15:38', '2021-06-03 08:15:38'),
(45, 11, 1, 'KITCHEN & DINING', 0, 0.00, NULL, NULL, 0, 0, 0, 'KITCHEN--DINING-sP79U', NULL, NULL, '2021-06-03 08:16:07', '2021-06-03 08:16:07'),
(46, 11, 1, 'ARTS, CRAFT & SEWING', 0, 0.00, NULL, NULL, 0, 0, 0, 'ARTS-CRAFT--SEWING-oiukP', NULL, NULL, '2021-06-03 08:16:34', '2021-06-03 08:16:34'),
(47, 11, 1, 'OFFICE PRODUCTS', 0, 0.00, NULL, NULL, 0, 0, 0, 'OFFICE-PRODUCTS-7Ifr0', NULL, NULL, '2021-06-03 08:17:08', '2021-06-03 08:17:08'),
(48, 11, 1, 'TOOLS & HOME IMPROVEMENT', 0, 0.00, NULL, NULL, 0, 0, 0, 'TOOLS--HOME-IMPROVEMENT-f9IBG', NULL, NULL, '2021-06-03 08:18:09', '2021-06-03 08:18:09'),
(49, 14, 1, 'Outdoor & Adventure', 1, 10.00, NULL, NULL, 0, 0, 0, 'Outdoor--Adventure-zUD51', NULL, NULL, '2021-07-10 16:42:25', '2021-07-10 16:42:25'),
(50, 14, 1, 'Racquet Sports', 2, 10.00, NULL, NULL, 0, 0, 0, 'Racquet-Sports-1P0vG', NULL, NULL, '2021-07-10 16:43:11', '2021-07-10 16:43:11'),
(51, 14, 1, 'Sport & Fitness', 3, 10.00, NULL, NULL, 0, 0, 0, 'Sport--Fitness-c1c4h', NULL, NULL, '2021-07-10 16:43:53', '2021-07-10 16:43:53'),
(52, 14, 1, 'Outdoor Recreaton', 5, 10.00, NULL, NULL, 0, 0, 0, 'Outdoor-Recreaton-QfuKs', NULL, NULL, '2021-07-10 16:44:32', '2021-07-10 16:44:32'),
(53, 13, 1, 'Computers & Laptops', 1, 10.00, NULL, NULL, 0, 0, 0, 'Computers--Laptops-aRQMX', NULL, NULL, '2021-07-10 16:45:22', '2021-07-10 16:45:22'),
(54, 13, 1, 'Printers and Printer Ink', 2, 10.00, NULL, NULL, 0, 0, 0, 'Printers-and-Printer-Ink-zU7VN', NULL, NULL, '2021-07-10 16:46:03', '2021-07-10 16:46:03'),
(55, 13, 1, 'Softwares', 4, 10.00, NULL, NULL, 0, 0, 0, 'Softwares-ZXckO', NULL, NULL, '2021-07-10 16:48:47', '2021-07-10 16:48:47'),
(56, 13, 1, 'Computer Accessories', 5, 10.00, NULL, NULL, 0, 0, 0, 'Computer-Accessories-EOHXa', NULL, NULL, '2021-07-10 16:49:30', '2021-07-10 16:49:30'),
(57, 15, 2, 'Sugar', 1, 10.00, NULL, NULL, 0, 0, 0, 'Sugar-baWeJ', NULL, NULL, '2021-07-10 16:51:49', '2021-07-10 16:51:49'),
(58, 15, 2, 'Flour & Meals', 0, 10.00, NULL, NULL, 0, 0, 0, 'Flour--Meals-UrNA1', NULL, NULL, '2021-07-10 16:52:30', '2021-07-10 16:52:30'),
(59, 15, 2, 'Beans, Grains & Rice', 0, 0.00, NULL, NULL, 0, 0, 0, 'Beans-Grains--Rice-AvAlH', NULL, NULL, '2021-07-10 16:53:18', '2021-07-10 16:53:18'),
(60, 15, 2, 'Snacks', 0, 0.00, NULL, NULL, 0, 0, 0, 'Snacks-jQHJc', NULL, NULL, '2021-07-10 16:53:45', '2021-07-10 16:53:45'),
(61, 15, 2, 'Soft Drinks', 0, 0.00, NULL, NULL, 0, 0, 0, 'Soft-Drinks-7pnYG', NULL, NULL, '2021-07-10 16:54:17', '2021-07-10 16:54:17'),
(62, 15, 2, 'Fruit Juice', 0, 0.00, NULL, NULL, 0, 0, 0, 'Fruit-Juice-eGgqb', NULL, NULL, '2021-07-10 16:54:41', '2021-07-10 16:54:41'),
(63, 15, 2, 'Water', 0, 0.00, NULL, NULL, 0, 0, 0, 'Water-4OPU8', NULL, NULL, '2021-07-10 16:54:58', '2021-07-10 16:54:58'),
(64, 15, 2, 'Coffee $ Tea', 0, 0.00, NULL, NULL, 0, 0, 0, 'Coffee--Tea-lKHkV', NULL, NULL, '2021-07-10 16:55:20', '2021-07-10 16:55:20'),
(65, 15, 2, 'Milk & Cream', 0, 0.00, NULL, NULL, 0, 0, 0, 'Milk--Cream-yLrI2', NULL, NULL, '2021-07-10 16:55:44', '2021-07-10 16:55:44'),
(66, 15, 2, 'Pasta', 0, 0.00, NULL, NULL, 0, 0, 0, 'Pasta-TDYVs', NULL, NULL, '2021-07-10 16:55:59', '2021-07-10 16:55:59'),
(67, 15, 2, 'Cooking Oil', 0, 0.00, NULL, NULL, 0, 0, 0, 'Cooking-Oil-2QFDW', NULL, NULL, '2021-07-10 16:56:26', '2021-07-10 16:56:26'),
(68, 15, 2, 'Spices', 0, 0.00, NULL, NULL, 0, 0, 0, 'Spices-0ewYH', NULL, NULL, '2021-07-10 16:56:54', '2021-07-10 16:56:54'),
(69, 15, 2, 'Breakfast Food', 0, 0.00, NULL, NULL, 0, 0, 0, 'Breakfast-Food-XYGG6', NULL, NULL, '2021-07-10 16:57:23', '2021-07-10 16:57:23'),
(70, 16, 2, 'Vodka', 0, 0.00, NULL, NULL, 0, 0, 0, 'Vodka-N9qKL', NULL, NULL, '2021-07-10 17:04:11', '2021-07-10 17:04:11'),
(71, 16, 2, 'Red & Rose Wines', 0, 0.00, NULL, NULL, 0, 0, 0, 'Red--Rose-Wines-xkNxo', NULL, NULL, '2021-07-10 17:04:47', '2021-07-10 17:04:47'),
(72, 16, 2, 'Spirit & Liquors', 0, 0.00, NULL, NULL, 0, 0, 0, 'Spirit--Liquors-Kw9d4', NULL, NULL, '2021-07-10 17:05:16', '2021-07-10 17:05:16'),
(73, 16, 2, 'Beers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Beers-kHo7C', NULL, NULL, '2021-07-10 17:05:34', '2021-07-10 17:05:34'),
(74, 16, 2, 'White wines', 0, 0.00, NULL, NULL, 0, 0, 0, 'White-wines-jXaGM', NULL, NULL, '2021-07-10 17:06:00', '2021-07-10 17:06:00'),
(75, 16, 2, 'Whiskey', 0, 0.00, NULL, NULL, 0, 0, 0, 'Whiskey-8ObvN', NULL, NULL, '2021-07-10 17:06:20', '2021-07-10 17:06:20'),
(76, 18, 2, 'Laundry', 0, 0.00, NULL, NULL, 0, 0, 0, 'Laundry-txwL1', NULL, NULL, '2021-07-10 17:09:38', '2021-07-10 17:09:38'),
(77, 18, 2, 'Household Air Fresheners', 0, 0.00, NULL, NULL, 0, 0, 0, 'Household-Air-Fresheners-Fdkd9', NULL, NULL, '2021-07-10 17:10:08', '2021-07-10 17:10:08'),
(78, 18, 2, 'Toilet Cleaners', 0, 0.00, NULL, NULL, 0, 0, 0, 'Toilet-Cleaners-f2fAj', NULL, NULL, '2021-07-10 17:11:47', '2021-07-10 17:11:47'),
(79, 18, 2, 'Toilet Rolls', 0, 0.00, NULL, NULL, 0, 0, 0, 'Toilet-Rolls-Y6O58', NULL, NULL, '2021-07-10 17:12:19', '2021-07-10 17:12:19'),
(80, 23, 2, 'Eyes', 0, 0.00, NULL, NULL, 0, 0, 0, 'Eyes-rJeQ4', NULL, NULL, '2021-07-10 17:14:29', '2021-07-10 17:14:29'),
(81, 23, 2, 'Face', 0, 0.00, NULL, NULL, 0, 0, 0, 'Face-bWAwY', NULL, NULL, '2021-07-10 17:14:43', '2021-07-10 17:14:43'),
(82, 23, 2, 'Lips', 0, 0.00, NULL, NULL, 0, 0, 0, 'Lips-sfD7s', NULL, NULL, '2021-07-10 17:14:56', '2021-07-10 17:14:56'),
(83, 23, 2, 'Makeup Sets', 0, 0.00, NULL, NULL, 0, 0, 0, 'Makeup-Sets-HhaAc', NULL, NULL, '2021-07-10 17:15:19', '2021-07-10 17:15:19'),
(84, 26, 2, 'Unisex', 0, 0.00, NULL, NULL, 0, 0, 0, 'Unisex-iI79Z', NULL, NULL, '2021-07-10 17:15:42', '2021-07-10 17:15:42'),
(85, 26, 2, 'Celebrity Fragrances', 0, 0.00, NULL, NULL, 0, 0, 0, 'Celebrity-Fragrances-Svm1Y', NULL, NULL, '2021-07-10 17:17:37', '2021-07-10 17:17:37'),
(86, 24, 2, 'Hair Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Hair-Accessories-hcxa4', NULL, NULL, '2021-07-10 17:17:57', '2021-07-10 17:17:57'),
(87, 24, 2, 'Shampoo', 0, 0.00, NULL, NULL, 0, 0, 0, 'Shampoo-yQ8Ti', NULL, NULL, '2021-07-10 17:18:18', '2021-07-10 17:18:18'),
(88, 24, 2, 'Extensions Wigs & Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Extensions-Wigs--Accessories-qDauZ', NULL, NULL, '2021-07-10 17:19:10', '2021-07-10 17:19:10'),
(89, 28, 2, 'Deodorant & Antiperspirant', 0, 0.00, NULL, NULL, 0, 0, 0, 'Deodorant--Antiperspirant-t1Eb8', NULL, NULL, '2021-07-10 17:19:59', '2021-07-10 17:19:59'),
(90, 28, 2, 'Hair Care', 0, 0.00, NULL, NULL, 0, 0, 0, 'Hair-Care-7TW5f', NULL, NULL, '2021-07-10 17:20:37', '2021-07-10 17:20:37'),
(91, 28, 2, 'Shave & Hair Removal', 0, 0.00, NULL, NULL, 0, 0, 0, 'Shave--Hair-Removal-U8cms', NULL, NULL, '2021-07-10 17:21:02', '2021-07-10 17:21:02'),
(92, 28, 2, 'Skin Care', 0, 0.00, NULL, NULL, 0, 0, 0, 'Skin-Care-JLDLc', NULL, NULL, '2021-07-10 17:21:22', '2021-07-10 17:21:22'),
(93, 28, 2, 'Men\'s Grooming', 0, 0.00, NULL, NULL, 0, 0, 0, 'Mens-Grooming-i4fco', NULL, NULL, '2021-07-10 17:21:45', '2021-07-10 17:21:45'),
(94, 28, 2, 'Sexual Wellness', 0, 0.00, NULL, NULL, 0, 0, 0, 'Sexual-Wellness-S90Rq', NULL, NULL, '2021-07-10 17:22:06', '2021-07-10 17:22:06'),
(95, 25, 2, 'Toothpaste', 0, 0.00, NULL, NULL, 0, 0, 0, 'Toothpaste-gFkb7', NULL, NULL, '2021-07-10 17:22:34', '2021-07-10 17:22:34'),
(96, 25, 2, 'Toothbrushes', 0, 0.00, NULL, NULL, 0, 0, 0, 'Toothbrushes-OyvqR', NULL, NULL, '2021-07-10 17:22:55', '2021-07-10 17:22:55'),
(97, 45, 2, 'Cookware', 0, 0.00, NULL, NULL, 0, 0, 0, 'Cookware-qQ9Xw', NULL, NULL, '2021-07-10 17:45:02', '2021-07-10 17:45:02'),
(98, 45, 2, 'Cutlery & Knife Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Cutlery--Knife-Accessories-o2Y66', NULL, NULL, '2021-07-10 17:45:44', '2021-07-10 17:45:44'),
(99, 45, 2, 'kitchen Utensils & Gadgets', 0, 0.00, NULL, NULL, 0, 0, 0, 'kitchen-Utensils--Gadgets-u3Nd3', NULL, NULL, '2021-07-10 17:46:23', '2021-07-10 17:46:23'),
(100, 45, 2, 'Bakeware', 0, 0.00, NULL, NULL, 0, 0, 0, 'Bakeware-iCEGa', NULL, NULL, '2021-07-10 17:46:42', '2021-07-10 17:46:42'),
(101, 45, 2, 'Dinning', 0, 0.00, NULL, NULL, 0, 0, 0, 'Dinning-QViC7', NULL, NULL, '2021-07-10 17:47:02', '2021-07-10 17:47:02'),
(102, 45, 2, 'Storage & Organisation', 0, 0.00, NULL, NULL, 0, 0, 0, 'Storage--Organisation-XIsq9', NULL, NULL, '2021-07-10 17:47:28', '2021-07-10 17:47:28'),
(103, 45, 2, 'Tableware', 0, 0.00, NULL, NULL, 0, 0, 0, 'Tableware-XHcHg', NULL, NULL, '2021-07-10 17:47:54', '2021-07-10 17:47:54'),
(104, 45, 2, 'Travel Drinkware', 0, 0.00, NULL, NULL, 0, 0, 0, 'Travel-Drinkware-ROKKl', NULL, NULL, '2021-07-10 17:48:18', '2021-07-10 17:48:18'),
(105, 44, 2, 'Furnture', 0, 0.00, NULL, NULL, 0, 0, 0, 'Furnture-Z6Dfv', NULL, NULL, '2021-07-10 21:03:05', '2021-07-10 21:03:05'),
(106, 44, 2, 'Home Decor', 0, 0.00, NULL, NULL, 0, 0, 0, 'Home-Decor-2ZbCG', NULL, NULL, '2021-07-10 21:03:42', '2021-07-10 21:03:42'),
(107, 44, 2, 'Beddng', 0, 0.00, NULL, NULL, 0, 0, 0, 'Beddng-OhF5X', NULL, NULL, '2021-07-10 21:04:06', '2021-07-10 21:04:06'),
(108, 44, 2, 'Bath', 0, 0.00, NULL, NULL, 0, 0, 0, 'Bath-udGhr', NULL, NULL, '2021-07-10 21:04:25', '2021-07-10 21:04:25'),
(109, 44, 2, 'Heating & Cooling Quality', 0, 0.00, NULL, NULL, 0, 0, 0, 'Heating--Cooling-Quality-zRfKM', NULL, NULL, '2021-07-10 21:05:18', '2021-07-10 21:05:18'),
(110, 44, 2, 'Storage & Organisation', 0, 0.00, NULL, NULL, 0, 0, 0, 'Storage--Organisation-9vLfy', NULL, NULL, '2021-07-10 21:05:49', '2021-07-10 21:05:49'),
(111, 44, 2, 'Wall Art', 0, 0.00, NULL, NULL, 0, 0, 0, 'Wall-Art-Nqyif', NULL, NULL, '2021-07-10 21:06:13', '2021-07-10 21:06:13'),
(112, 44, 2, 'Cleaning Supplies', 0, 0.00, NULL, NULL, 0, 0, 0, 'Cleaning-Supplies-o1gam', NULL, NULL, '2021-07-10 21:06:36', '2021-07-10 21:06:36'),
(113, 44, 2, 'Seasonal Decor', 0, 0.00, NULL, NULL, 0, 0, 0, 'Seasonal-Decor-eapO4', NULL, NULL, '2021-07-10 21:07:07', '2021-07-10 21:07:07'),
(114, 48, 2, 'Appliances', 0, 0.00, NULL, NULL, 0, 0, 0, 'appliances-f3hzb', NULL, NULL, '2021-07-10 15:20:37', '2021-07-10 21:20:37'),
(115, 48, 2, 'Electrical', 0, 0.00, NULL, NULL, 0, 0, 0, 'electrical-ih77b', NULL, NULL, '2021-07-10 15:21:28', '2021-07-10 21:21:28'),
(117, 48, 2, 'Kitchen & Bath Fixture', 0, 0.00, NULL, NULL, 0, 0, 0, 'kitchen--bath-fixture-e1oi8', NULL, NULL, '2021-07-10 15:23:53', '2021-07-10 21:23:53'),
(118, 48, 2, 'Lighting and Ceiling', 0, 0.00, NULL, NULL, 0, 0, 0, 'lighting-and-ceiling-tpuad', NULL, NULL, '2021-07-10 15:25:32', '2021-07-10 21:25:32'),
(119, 48, 2, 'Safety & Security', 0, 0.00, NULL, NULL, 0, 0, 0, 'safety--security-y49yi', NULL, NULL, '2021-07-10 15:25:58', '2021-07-10 21:25:58'),
(120, 46, 2, 'Beading & Jewelry Making', 0, 0.00, NULL, NULL, 0, 0, 0, 'Beading--Jewelry-Making-ntMIo', NULL, NULL, '2021-07-10 21:12:02', '2021-07-10 21:12:02'),
(121, 46, 2, 'Gifts Wrapping Supplies', 0, 0.00, NULL, NULL, 0, 0, 0, 'Gifts-Wrapping-Supplies-KWlyE', NULL, NULL, '2021-07-10 21:12:31', '2021-07-10 21:12:31'),
(122, 46, 2, 'Knitting & Crochet', 0, 0.00, NULL, NULL, 0, 0, 0, 'Knitting--Crochet-HqaGj', NULL, NULL, '2021-07-10 21:13:11', '2021-07-10 21:13:11'),
(123, 46, 2, 'Painting, Drawing & Art Supplies', 0, 0.00, NULL, NULL, 0, 0, 0, 'Painting-Drawing--Art-Supplies-A4RfM', NULL, NULL, '2021-07-10 21:13:51', '2021-07-10 21:13:51'),
(124, 46, 2, 'Party Decoration & Supplies', 0, 0.00, NULL, NULL, 0, 0, 0, 'Party-Decoration--Supplies-5bwrC', NULL, NULL, '2021-07-10 21:14:16', '2021-07-10 21:14:16'),
(125, 46, 2, 'Sewing', 0, 0.00, NULL, NULL, 0, 0, 0, 'Sewing-s3LyU', NULL, NULL, '2021-07-10 21:14:50', '2021-07-10 21:14:50'),
(126, 46, 2, 'Crafting', 0, 0.00, NULL, NULL, 0, 0, 0, 'Crafting-1djHX', NULL, NULL, '2021-07-10 21:15:09', '2021-07-10 21:15:09'),
(127, 11, 1, 'HOME APPLIANCES', 0, 0.00, NULL, NULL, 0, 0, 0, 'home-appliances-2ggrm', NULL, NULL, '2021-07-10 15:18:21', '2021-07-10 21:18:21'),
(128, 48, 2, 'Hardware', 0, 0.00, NULL, NULL, 0, 0, 0, 'Hardware-pbqf4', NULL, NULL, '2021-07-10 21:22:07', '2021-07-10 21:22:07'),
(129, 127, 2, 'Iron & Steamers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Iron--Steamers-fT0ez', NULL, NULL, '2021-07-10 21:27:27', '2021-07-10 21:27:27'),
(130, 127, 2, 'Fans', 0, 0.00, NULL, NULL, 0, 0, 0, 'Fans-fteKV', NULL, NULL, '2021-07-10 21:28:18', '2021-07-10 21:28:18'),
(131, 127, 2, 'Refrigerator', 0, 0.00, NULL, NULL, 0, 0, 0, 'Refrigerator-tzeKN', NULL, NULL, '2021-07-10 21:28:47', '2021-07-10 21:28:47'),
(132, 127, 2, 'Gas Cooker', 0, 0.00, NULL, NULL, 0, 0, 0, 'Gas-Cooker-yGCS6', NULL, NULL, '2021-07-10 21:29:07', '2021-07-10 21:29:07'),
(133, 127, 2, 'Freezers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Freezers-8gl3j', NULL, NULL, '2021-07-10 21:29:36', '2021-07-10 21:29:36'),
(134, 47, 2, 'Office & School Supplies', 0, 0.00, NULL, NULL, 0, 0, 0, 'Office--School-Supplies-BxOOj', NULL, NULL, '2021-07-10 21:30:19', '2021-07-10 21:30:19'),
(135, 47, 2, 'Office Electronics', 0, 0.00, NULL, NULL, 0, 0, 0, 'Office-Electronics-GolHE', NULL, NULL, '2021-07-10 21:31:07', '2021-07-10 21:31:07'),
(136, 47, 2, 'Office Furniture & Lighting', 0, 0.00, NULL, NULL, 0, 0, 0, 'Office-Furniture--Lighting-OZnWg', NULL, NULL, '2021-07-10 21:31:31', '2021-07-10 21:31:31'),
(137, 19, 2, 'Television', 0, 0.00, NULL, NULL, 0, 0, 0, 'Television-f8FJ2', NULL, NULL, '2021-07-10 21:46:30', '2021-07-10 21:46:30'),
(138, 19, 2, 'DVD Player', 0, 0.00, NULL, NULL, 0, 0, 0, 'DVD-Player-9ZTEI', NULL, NULL, '2021-07-10 21:47:06', '2021-07-10 21:47:06'),
(139, 19, 2, 'LED & LCD TVs', 0, 0.00, NULL, NULL, 0, 0, 0, 'LED--LCD-TVs-FGvuC', NULL, NULL, '2021-07-10 21:47:45', '2021-07-10 21:47:45'),
(140, 19, 2, 'Smart TV', 0, 0.00, NULL, NULL, 0, 0, 0, 'Smart-TV-5q4Pd', NULL, NULL, '2021-07-10 21:48:18', '2021-07-10 21:48:18'),
(141, 20, 2, 'Home Theatre System', 0, 0.00, NULL, NULL, 0, 0, 0, 'Home-Theatre-System-umYAl', NULL, NULL, '2021-07-10 21:53:08', '2021-07-10 21:53:08'),
(142, 20, 2, 'Speakers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Speakers-STAk7', NULL, NULL, '2021-07-10 21:53:31', '2021-07-10 21:53:31'),
(143, 20, 2, 'Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Accessories-qsETG', NULL, NULL, '2021-07-10 21:54:37', '2021-07-10 21:54:37'),
(144, 20, 2, 'Multimedia Wireless Systems', 0, 0.00, NULL, NULL, 0, 0, 0, 'Multimedia-Wireless-Systems-ixIia', NULL, NULL, '2021-07-10 21:55:23', '2021-07-10 21:55:23'),
(145, 20, 2, 'Player & Recorder', 0, 0.00, NULL, NULL, 0, 0, 0, 'Player--Recorder-w93VU', NULL, NULL, '2021-07-10 21:56:08', '2021-07-10 21:56:08'),
(146, 20, 2, 'Portable Audio', 0, 0.00, NULL, NULL, 0, 0, 0, 'Portable-Audio-fe1Hv', NULL, NULL, '2021-07-10 21:56:38', '2021-07-10 21:56:38'),
(147, 20, 2, 'Radios', 0, 0.00, NULL, NULL, 0, 0, 0, 'Radios-T4XNC', NULL, NULL, '2021-07-10 21:56:59', '2021-07-10 21:56:59'),
(148, 20, 2, 'Speakers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Speakers-PKUVP', NULL, NULL, '2021-07-10 21:57:46', '2021-07-10 21:57:46'),
(149, 20, 2, 'Stereo Components', 0, 0.00, NULL, NULL, 0, 0, 0, 'Stereo-Components-ebdxl', NULL, NULL, '2021-07-10 21:58:32', '2021-07-10 21:58:32'),
(150, 22, 2, 'Digital Cameras', 0, 0.00, NULL, NULL, 0, 0, 0, 'Digital-Cameras-O5aNI', NULL, NULL, '2021-07-10 21:59:39', '2021-07-10 21:59:39'),
(151, 22, 2, 'Film Photography', 0, 0.00, NULL, NULL, 0, 0, 0, 'Film-Photography-Ai54j', NULL, NULL, '2021-07-10 22:00:04', '2021-07-10 22:00:04'),
(152, 22, 2, 'Projector', 0, 0.00, NULL, NULL, 0, 0, 0, 'Projector-zUaXp', NULL, NULL, '2021-07-10 22:00:33', '2021-07-10 22:00:33'),
(153, 41, 2, 'Smart Phone', 0, 0.00, NULL, NULL, 0, 0, 0, 'Smart-Phone-ACifA', NULL, NULL, '2021-07-10 22:04:00', '2021-07-10 22:04:00'),
(154, 41, 2, 'Feature Phones', 0, 0.00, NULL, NULL, 0, 0, 0, 'Feature-Phones-Dhr0c', NULL, NULL, '2021-07-10 22:04:30', '2021-07-10 22:04:30'),
(155, 42, 2, 'Tablets', 0, 0.00, NULL, NULL, 0, 0, 0, 'Tablets-1Eb1Q', NULL, NULL, '2021-07-10 22:05:03', '2021-07-10 22:05:03'),
(156, 42, 2, 'Bags', 0, 0.00, NULL, NULL, 0, 0, 0, 'Bags-Qm9Zq', NULL, NULL, '2021-07-10 22:05:17', '2021-07-10 22:05:17'),
(157, 43, 2, 'Smart Watches', 0, 0.00, NULL, NULL, 0, 0, 0, 'Smart-Watches-eZu2F', NULL, NULL, '2021-07-10 22:05:42', '2021-07-10 22:05:42'),
(158, 43, 2, 'Batteries & Batteries Packs', 0, 0.00, NULL, NULL, 0, 0, 0, 'Batteries--Batteries-Packs-HVOmk', NULL, NULL, '2021-07-10 22:06:14', '2021-07-10 22:06:14'),
(159, 43, 2, 'Cases & Clips', 0, 0.00, NULL, NULL, 0, 0, 0, 'cases-lxdvt', NULL, NULL, '2021-07-10 16:07:14', '2021-07-10 22:07:14'),
(160, 43, 2, 'Chargers', 0, 0.00, NULL, NULL, 0, 0, 0, 'Chargers-nFTTU', NULL, NULL, '2021-07-10 22:08:13', '2021-07-10 22:08:13'),
(161, 43, 2, 'Data Connectivity', 0, 0.00, NULL, NULL, 0, 0, 0, 'Data-Connectivity-Sv8Xk', NULL, NULL, '2021-07-10 22:08:36', '2021-07-10 22:08:36'),
(162, 43, 2, 'Headsets', 0, 0.00, NULL, NULL, 0, 0, 0, 'Headsets-X0qhs', NULL, NULL, '2021-07-10 22:09:21', '2021-07-10 22:09:21'),
(163, 43, 2, 'Memory Card', 0, 0.00, NULL, NULL, 0, 0, 0, 'Memory-Card-OGrAV', NULL, NULL, '2021-07-10 22:09:39', '2021-07-10 22:09:39'),
(164, 43, 2, 'Selfie Stick & Tripods', 0, 0.00, NULL, NULL, 0, 0, 0, 'Selfie-Stick--Tripods-PpB5J', NULL, NULL, '2021-07-10 22:10:07', '2021-07-10 22:10:07'),
(165, 29, 2, 'Clothing', 0, 0.00, NULL, NULL, 0, 0, 0, 'Clothing-CsmHG', NULL, NULL, '2021-07-10 22:10:56', '2021-07-10 22:10:56'),
(166, 29, 2, 'Shoes', 0, 0.00, NULL, NULL, 0, 0, 0, 'Shoes-hj23s', NULL, NULL, '2021-07-10 22:11:17', '2021-07-10 22:11:17'),
(167, 29, 2, 'Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Accessories-6y5QP', NULL, NULL, '2021-07-10 22:11:44', '2021-07-10 22:11:44'),
(168, 29, 2, 'Jewelry', 0, 0.00, NULL, NULL, 0, 0, 0, 'Jewelry-2bXbj', NULL, NULL, '2021-07-10 22:12:07', '2021-07-10 22:12:07'),
(169, 29, 2, 'Handbags & Wallets', 0, 0.00, NULL, NULL, 0, 0, 0, 'Handbags--Wallets-IxNQX', NULL, NULL, '2021-07-10 22:13:20', '2021-07-10 22:13:20'),
(170, 29, 2, 'Costumes & Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Costumes--Accessories-2BsRV', NULL, NULL, '2021-07-10 22:14:08', '2021-07-10 22:14:08'),
(171, 30, 2, 'Clothing', 0, 0.00, NULL, NULL, 0, 0, 0, 'Clothing-Bvwwf', NULL, NULL, '2021-07-10 22:14:33', '2021-07-10 22:14:33'),
(172, 30, 2, 'Shoes Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Shoes-Accessories-HqAW9', NULL, NULL, '2021-07-10 22:14:57', '2021-07-10 22:14:57'),
(173, 30, 2, 'Jewelry', 0, 0.00, NULL, NULL, 0, 0, 0, 'Jewelry-CuqmI', NULL, NULL, '2021-07-10 22:15:20', '2021-07-10 22:15:20'),
(174, 30, 2, 'Costumes & Accessories', 0, 0.00, NULL, NULL, 0, 0, 0, 'Costumes--Accessories-2W59g', NULL, NULL, '2021-07-10 22:16:21', '2021-07-10 22:16:21'),
(175, 30, 2, 'Watches', 0, 0.00, NULL, NULL, 0, 0, 0, 'Watches-SVWeZ', NULL, NULL, '2021-07-10 22:16:43', '2021-07-10 22:16:43'),
(176, 31, 2, 'Boy\'s Fashion', 0, 0.00, NULL, NULL, 0, 0, 0, 'Boys-Fashion-ccgTa', NULL, NULL, '2021-07-10 22:17:07', '2021-07-10 22:17:07'),
(177, 31, 2, 'Girl\'s Fashion', 0, 0.00, NULL, NULL, 0, 0, 0, 'Girls-Fashion-bDGWr', NULL, NULL, '2021-07-10 23:16:19', '2021-07-10 23:16:19'),
(178, 31, 2, 'Boys', 0, 0.00, NULL, NULL, 0, 0, 0, 'Boys-V4ilX', NULL, NULL, '2021-07-10 23:16:43', '2021-07-10 23:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 5, 'Home Essentials', 'en', '2021-07-19 02:43:17', '2021-07-19 09:42:50'),
(2, 6, 'Fresh Foods', 'en', '2021-07-19 08:22:51', '2021-07-19 08:22:51'),
(3, 7, 'Electronics', 'en', '2021-07-19 08:25:46', '2021-07-19 08:25:46'),
(4, 8, 'Beauty & Health', 'en', '2021-07-19 08:31:05', '2021-07-19 08:31:05'),
(5, 9, 'Fashion', 'en', '2021-07-19 08:31:53', '2021-07-19 08:31:53'),
(6, 12, 'Baby Products', 'en', '2021-07-19 08:34:32', '2021-07-19 08:34:32'),
(7, 10, 'Phones & Tablets', 'en', '2021-07-19 08:36:02', '2021-07-19 08:36:02'),
(8, 4, 'Agro Inputs', 'en', '2021-07-19 08:38:54', '2021-07-19 08:38:54'),
(9, 11, 'Home & Office', 'en', '2021-07-19 08:40:22', '2021-07-19 08:40:22'),
(10, 13, 'Computing', 'en', '2021-07-19 08:42:21', '2021-07-19 08:42:21'),
(11, 14, 'Sporting Goods', 'en', '2021-07-19 08:43:31', '2021-07-19 08:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `cost`, `created_at`, `updated_at`) VALUES
(1, 227, 'Lira City', 0.00, '2021-07-19 01:22:03', '2021-07-19 14:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lira City', 'en', '2021-07-19 14:21:17', '2021-07-19 14:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT '1',
  `receiver_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(1, 29, 9, 'itel S16 Pro: Memory. 32GB ROM + 2GB RAM (Up to 32GB)', 1, 1, '2021-07-19 08:57:33', '2021-07-19 08:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(227, 'UG', 'Uganda', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(29, 'Uganda Shillings', 'UGX', 3750.00000, 1, 'Uganda Shillings', '2021-07-19 01:20:59', '2021-07-19 01:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(24, 32, '2021-07-19 18:16:19', '2021-07-19 18:16:19'),
(25, 33, '2021-07-19 18:18:25', '2021-07-19 18:18:25'),
(26, 34, '2021-07-19 18:46:28', '2021-07-19 18:46:28'),
(27, 35, '2021-07-19 18:54:25', '2021-07-19 18:54:25'),
(28, 36, '2021-07-19 19:18:58', '2021-07-19 19:18:58'),
(29, 37, '2021-07-19 20:05:40', '2021-07-19 20:05:40'),
(30, 38, '2021-07-19 20:19:44', '2021-07-19 20:19:44'),
(31, 39, '2021-07-19 20:35:49', '2021-07-19 20:35:49'),
(32, 40, '2021-07-19 20:58:35', '2021-07-19 20:58:35'),
(33, 41, '2021-07-19 21:22:26', '2021-07-19 21:22:26'),
(34, 42, '2021-07-19 22:33:40', '2021-07-19 22:33:40'),
(35, 43, '2021-07-19 22:42:58', '2021-07-19 22:42:58'),
(36, 44, '2021-07-20 00:12:50', '2021-07-20 00:12:50'),
(37, 45, '2021-07-20 00:29:56', '2021-07-20 00:29:56'),
(38, 46, '2021-07-20 00:32:03', '2021-07-20 00:32:03'),
(39, 47, '2021-07-20 01:14:49', '2021-07-20 01:14:49'),
(40, 48, '2021-07-20 02:11:35', '2021-07-20 02:11:35'),
(41, 49, '2021-07-20 03:06:45', '2021-07-20 03:06:45'),
(42, 50, '2021-07-20 03:50:15', '2021-07-20 03:50:15'),
(43, 51, '2021-07-20 09:06:56', '2021-07-20 09:06:56'),
(44, 52, '2021-07-20 10:31:42', '2021-07-20 10:31:42'),
(45, 53, '2021-07-20 11:09:11', '2021-07-20 11:09:11'),
(46, 54, '2021-07-20 11:10:44', '2021-07-20 11:10:44'),
(47, 55, '2021-07-20 11:29:32', '2021-07-20 11:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_translations`
--

CREATE TABLE `customer_package_translations` (
  `id` bigint(20) NOT NULL,
  `customer_package_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) DEFAULT '0.00',
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_translations`
--

CREATE TABLE `customer_product_translations` (
  `id` bigint(20) NOT NULL,
  `customer_product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `featured` int(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(20,2) DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_translations`
--

CREATE TABLE `flash_deal_translations` (
  `id` bigint(20) NOT NULL,
  `flash_deal_id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `footer_logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/pfdIuiMeXGkDAIpPEUrvUCbQrOHu484nbGfz77zB.png', NULL, 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/uHdGidSaRVzvPgDj6JFtntMqzJkwDk9659233jrb.png', 'Active Ecommerce CMS', 'Demo Address', 'Active eCommerce CMS is a Multi vendor system is such a platform to build a border less marketplace.', '1234567890', 'admin@example.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2019-03-13 08:01:06', '2019-03-13 02:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 29, 'fhhvb', '2021-07-19 08:57:33', '2021-07-19 08:57:33'),
(2, 1, 29, 'how are you', '2021-07-19 08:57:51', '2021-07-19 08:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01d1c7d93e3ee93f73951d2a8b62e432bf1df68c21f91c44abfd499b2f7fbd8c74db345be7f85c3f', 52, 1, 'Personal Access Token', '[]', 0, '2021-07-20 10:32:33', '2021-07-20 10:32:33', '2023-06-20 04:32:33'),
('07ccf206b07c62c06d0304cd68d785fe567ceda1151c8425c1be735c52efba0e586e6dfa03d39894', 10, 1, 'Personal Access Token', '[]', 0, '2021-07-18 20:43:37', '2021-07-18 20:43:37', '2023-06-18 14:43:37'),
('0b2af348e61ad4ff7115d47791668cb44eec9d7707889e49050ca50dba95229b4f64cb14f1b9424c', 22, 1, 'Personal Access Token', '[]', 0, '2021-07-19 01:19:39', '2021-07-19 01:19:39', '2023-06-18 19:19:39'),
('0f9212334f6f5bcf2c4ed5e4eca3b22395036319e4691d03af7f69ee29efe25d4be6212ef783282d', 14, 1, 'Personal Access Token', '[]', 0, '2021-07-18 21:18:38', '2021-07-18 21:18:38', '2023-06-18 15:18:38'),
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('3284cf4be0aa58a58432581917f77c7edff32cf3e12ad429f5379760f0fa29e52b18fd47acd4caa3', 33, 1, 'Personal Access Token', '[]', 0, '2021-07-19 18:18:45', '2021-07-19 18:18:45', '2023-06-19 12:18:45'),
('35c7cf8842f28f16d34bef154ebf8e04a4e4e28cd4436df975d92a3f5680a55e750eb22fca08efd1', 38, 1, 'Personal Access Token', '[]', 0, '2021-07-19 20:50:41', '2021-07-19 20:50:41', '2023-06-19 14:50:42'),
('457f94d5cad224693dae7b2223ed08d61187956c9ba7410b84677083759e23605500d051c80fba00', 35, 1, 'Personal Access Token', '[]', 0, '2021-07-19 18:55:11', '2021-07-19 18:55:11', '2023-06-19 12:55:11'),
('489b6c86e0cdcf9afa3ebd0193cd5d6c09ab553389920d578dc181aeaaff440a6865ae0d320a03a5', 29, 1, 'Personal Access Token', '[]', 0, '2021-07-19 08:23:43', '2021-07-19 08:23:43', '2023-06-19 02:23:43'),
('48fcedd7ad49b390c9e42ce5846fed54127895def5b4c862695ecc6160c1f9b0260ff771a632cb69', 45, 1, 'Personal Access Token', '[]', 0, '2021-07-20 00:30:22', '2021-07-20 00:30:22', '2023-06-19 18:30:22'),
('4cecf9f66882d99da669deea0ce0ed611a10a5c3f05e80317438a36fd4bb0dfa4b83229a2b70cbcf', 26, 1, 'Personal Access Token', '[]', 0, '2021-07-19 02:30:43', '2021-07-19 02:30:43', '2023-06-18 20:30:43'),
('530ddae6fc041fa7375ba43f1fd6727a370809cf3007fc97eaf385efe3472714067e2fdbb0091d28', 15, 1, 'Personal Access Token', '[]', 0, '2021-07-18 21:20:27', '2021-07-18 21:20:27', '2023-06-18 15:20:27'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('56167f97dd21ea633079851aa2a399fd11ddbad12bf30309636a4d1b8f5e03532e7da31fc76e1c41', 38, 1, 'Personal Access Token', '[]', 0, '2021-07-19 20:50:38', '2021-07-19 20:50:38', '2023-06-19 14:50:38'),
('630594946506041ade1ca2a564dca9f621a6f97bd13028b6933b7d25c71b5475b7bc3b140a09f189', 32, 1, 'Personal Access Token', '[]', 0, '2021-07-19 18:16:47', '2021-07-19 18:16:47', '2023-06-19 12:16:47'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6eed925704b72377460fd5362ba48a55a19fe13bf3acf10e96632d468849483a69236b84eee6141c', 46, 1, 'Personal Access Token', '[]', 0, '2021-07-20 00:33:41', '2021-07-20 00:33:41', '2023-06-19 18:33:41'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('7ddf8f7db4805ba7cde67e67a8fc3751ba9eb3531bb2493ada12963e3e58bc5f0a830b0e60715b72', 10, 1, 'Personal Access Token', '[]', 0, '2021-07-18 20:54:49', '2021-07-18 20:54:49', '2023-06-18 14:54:49'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('87699cd801e8199208f8ebe926e6b0f140cfc755ccf2a78146f52eab13fb7df8ed35898476183d28', 50, 1, 'Personal Access Token', '[]', 0, '2021-07-20 03:50:50', '2021-07-20 03:50:50', '2023-06-19 21:50:50'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('9700e583103876ad1e8a63d31a29a8e6e4d348cc7eb92c4fbc3f7158b779e1a3a2d2129f1d12ddcc', 40, 1, 'Personal Access Token', '[]', 0, '2021-07-19 20:59:03', '2021-07-19 20:59:03', '2023-06-19 14:59:03'),
('9dbb9b31ad689ffabe90a50d945d0e85fee72fb67408021d5de195fbf1d149da1140f84081dfd550', 48, 1, 'Personal Access Token', '[]', 0, '2021-07-20 05:59:26', '2021-07-20 05:59:26', '2023-06-19 23:59:26'),
('9dd5ba4c586224d83f4ff92f661542b162fa92597faf00b509200be467a6855172f31659efab1dab', 28, 1, 'Personal Access Token', '[]', 0, '2021-07-19 08:17:05', '2021-07-19 08:17:05', '2023-06-19 02:17:05'),
('9ed21623f997a92139d0a80c12a862fc6b849582eeaac07acaed1cb38b83eeeb255d920c4af7c433', 38, 1, 'Personal Access Token', '[]', 0, '2021-07-19 20:48:55', '2021-07-19 20:48:55', '2023-06-19 14:48:55'),
('a0a37b05bb72eaf524a9eb76f0c4229f84bbbe1d0365f4fce24cbb913f9dcf5976f57b72c2b38ad8', 49, 1, 'Personal Access Token', '[]', 0, '2021-07-20 03:08:23', '2021-07-20 03:08:23', '2023-06-19 21:08:23'),
('a1a4266d53626c87fce6d73371e12fe3da550a1a266a179634b3d8315ba21556ae8883d5e2fb84fa', 49, 1, 'Personal Access Token', '[]', 0, '2021-07-20 03:08:22', '2021-07-20 03:08:22', '2023-06-19 21:08:22'),
('a1f3028c692fa3a68c13c7b3797489526db1710e10aed05c6efe8d8b7e5f2ee3d47aa0f65fb94c03', 36, 1, 'Personal Access Token', '[]', 0, '2021-07-19 19:19:23', '2021-07-19 19:19:23', '2023-06-19 13:19:24'),
('a33c4f224f39a6fcf06d0c9ec59d60b0226e1342aa6828c244178f70e099ec72f71ed727661c7fd6', 31, 1, 'Personal Access Token', '[]', 0, '2021-07-19 12:15:13', '2021-07-19 12:15:13', '2023-06-19 06:15:13'),
('a86ab628652b003278ddc912a8933a32d3da982a10beabaf7bb463fd1d61bbcc737d363630a411da', 23, 1, 'Personal Access Token', '[]', 0, '2021-07-19 01:36:40', '2021-07-19 01:36:40', '2023-06-18 19:36:40'),
('a9cba18ad47b3eb57fedd69839aaf4bd379e02e9088fd9c0b30d571ae3ebea8f509cf49172c836ed', 55, 1, 'Personal Access Token', '[]', 0, '2021-07-20 11:30:49', '2021-07-20 11:30:49', '2023-06-20 05:30:49'),
('aeee7bbab97db514eca2ae43dcec7d72bc27560ef3c98d61a6edbe37c2202eb4322b1b786d59670d', 24, 1, 'Personal Access Token', '[]', 0, '2021-07-19 02:05:11', '2021-07-19 02:05:11', '2023-06-18 20:05:11'),
('b671cbcf24c0fc78f2cb3a6e70401ea832324ab678e1b66f2f190d12c52c1e1c0168ff5bdef0512c', 49, 1, 'Personal Access Token', '[]', 0, '2021-07-20 03:08:23', '2021-07-20 03:08:23', '2023-06-19 21:08:23'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c1ad14f1481e8c1a9f74a34dc0656b3847a79379697f63e000ab41521c2972bb18db26c68eceaa0e', 54, 1, 'Personal Access Token', '[]', 0, '2021-07-20 11:11:06', '2021-07-20 11:11:06', '2023-06-20 05:11:06'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('ca6b24e24a3e0092575d7487e3225d068aef36fbf31ee1f0c16e2cb3d9b5205330867edd748a2331', 48, 1, 'Personal Access Token', '[]', 0, '2021-07-20 02:12:14', '2021-07-20 02:12:14', '2023-06-19 20:12:14'),
('cd133e00d724e585bd0b7ac6bd0151b757a97a967c94f4b0827f9beef02a106d48a5f8014c92f71b', 24, 1, 'Personal Access Token', '[]', 0, '2021-07-19 01:45:58', '2021-07-19 01:45:58', '2023-06-18 19:45:58'),
('d006fab88acc9b99185c10c175b290777693459b29a1b6f061da82112a0d1f655abbfaa6a17fd99f', 44, 1, 'Personal Access Token', '[]', 0, '2021-07-20 00:13:24', '2021-07-20 00:13:24', '2023-06-19 18:13:24'),
('e5ebdae90446fe1ce35e3628e92c9873fb4c210ad875f197e3ebc79d10901716d1d5776f595ad519', 25, 1, 'Personal Access Token', '[]', 0, '2021-07-19 02:10:08', '2021-07-19 02:10:08', '2023-06-18 20:10:08'),
('e6b32db780ae99d637e81e445e24065c74d0d5e7158606d80f111fa385a54053373ee6429a14a138', 18, 1, 'Personal Access Token', '[]', 0, '2021-07-18 22:07:44', '2021-07-18 22:07:44', '2023-06-18 16:07:44'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('eaf802c88f4e3d1ae9da4aceaae9918eb64ad4a39a0844a36f3143feda55f770910eb032e7c0ea16', 43, 1, 'Personal Access Token', '[]', 0, '2021-07-19 22:43:26', '2021-07-19 22:43:26', '2023-06-19 16:43:27'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f2fa4781ee2196a99023bae2dd9e2ad1d7f453bb44e87968f4c2b22d12a70e24f54f8d7160cd5534', 53, 1, 'Personal Access Token', '[]', 0, '2021-07-20 11:09:52', '2021-07-20 11:09:52', '2023-06-20 05:09:52'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f778d9b8756df75af258bb783eba2bd9bfd0d0f2807ad390e85b6b52d479ac30a2de2fd9e28b642b', 28, 1, 'Personal Access Token', '[]', 0, '2021-07-19 03:26:44', '2021-07-19 03:26:44', '2023-06-18 21:26:44'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55'),
('f8c7f94c0cea1668e8d8b93b1c12e5e56701d213f2c1b6eb776b98539b3b02573ed0c960a969f2cd', 30, 1, 'Personal Access Token', '[]', 0, '2021-07-19 11:47:06', '2021-07-19 11:47:06', '2023-06-19 05:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci,
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext COLLATE utf8_unicode_ci,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT '0',
  `delivery_viewed` int(1) NOT NULL DEFAULT '1',
  `payment_status_viewed` int(1) DEFAULT '1',
  `commission_calculated` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `seller_id`, `shipping_address`, `delivery_status`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(19, 49, NULL, 9, '{\"name\":\"Oweta Jacob Emmy\",\"email\":\"oweta001@gmail.com\",\"address\":\"Obote Avenue\",\"country\":\"Uganda\",\"city\":\"Lira City\",\"postal_code\":null,\"phone\":\"0394510777\"}', 'confirmed', 'cash_on_delivery', 'unpaid', NULL, 35000.00, 0.00, '20210719-091027', 1626729027, 1, 0, 1, 0, '2021-07-20 03:10:27', '2021-07-20 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 2, NULL, 10000.00, 0.00, 0.00, 2, 'paid', 'delivered', NULL, NULL, NULL, '2021-07-19 01:39:16', '2021-07-19 01:39:52'),
(7, 4, 9, 71, NULL, 5800.00, 0.00, 0.00, 1, 'paid', 'delivered', NULL, NULL, NULL, '2021-07-19 12:17:18', '2021-07-19 12:18:58'),
(10, 6, 9, 49, NULL, 330000.00, 0.00, 0.00, 1, 'paid', 'delivered', NULL, NULL, NULL, '2021-07-19 14:19:47', '2021-07-19 14:23:31'),
(12, 8, 9, 134, NULL, 340000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 14:41:34', '2021-07-19 14:41:34'),
(13, 9, 9, 134, NULL, 340000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 14:42:49', '2021-07-19 14:42:49'),
(14, 10, 9, 9, NULL, 9000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 14:47:41', '2021-07-19 14:47:41'),
(15, 11, 9, 134, NULL, 340000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 14:48:53', '2021-07-19 14:48:53'),
(16, 12, 9, 134, NULL, 340000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 15:37:32', '2021-07-19 15:37:32'),
(17, 12, 9, 60, NULL, 590000.00, 0.00, 0.00, 1, 'unpaid', 'pending', NULL, NULL, NULL, '2021-07-19 15:37:32', '2021-07-19 15:37:32'),
(24, 19, 9, 116, NULL, 35000.00, 0.00, 0.00, 1, 'unpaid', 'confirmed', NULL, NULL, NULL, '2021-07-20 03:10:27', '2021-07-20 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `otp_configurations`
--

CREATE TABLE `otp_configurations` (
  `id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `otp_configurations`
--

INSERT INTO `otp_configurations` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'nexmo', '0', '2020-03-22 09:19:07', '2021-07-18 20:32:56'),
(2, 'otp_for_order', '1', '2020-03-22 09:19:07', '2020-03-22 09:19:07'),
(3, 'otp_for_delivery_status', '1', '2020-03-22 09:19:37', '2020-03-22 09:19:37'),
(4, 'otp_for_paid_status', '0', '2020-03-22 09:19:37', '2020-03-22 09:19:37'),
(5, 'twillo', '1', '2020-03-22 09:54:03', '2021-07-18 20:32:53'),
(6, 'ssl_wireless', '0', '2020-03-22 09:54:03', '2020-03-22 03:54:20'),
(7, 'fast2sms', '0', '2020-03-22 09:54:03', '2020-03-22 03:54:20'),
(8, 'mimo', '0', '2020-12-27 09:54:03', '2020-12-28 03:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20'),
(2, 'seller_policy_page', 'Seller Policy Pages', 'sellerpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 12:19:30'),
(3, 'return_policy_page', 'Return Policy Page', 'returnpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 10:14:41'),
(4, 'support_policy_page', 'Support Policy Page', 'supportpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2020-11-04 10:15:29'),
(6, 'privacy_policy_page', 'Privacy Policy Page', 'privacypolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:55', '2020-11-04 10:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `staff_id`, `name`, `address`, `phone`, `pick_up_status`, `cash_on_pickup_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'KaKebe Headquarter', 'Plot 23 Obote Avenue Near MTN Shop', '+256780286800', 1, NULL, '2021-07-19 07:59:33', '2021-07-19 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point_translations`
--

CREATE TABLE `pickup_point_translations` (
  `id` bigint(20) NOT NULL,
  `pickup_point_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pickup_point_translations`
--

INSERT INTO `pickup_point_translations` (`id`, `pickup_point_id`, `name`, `address`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'KaKebe Headquarter', 'Plot 23 Obote Avenue Near MTN Shop', 'en', '2021-07-19 07:59:33', '2021-07-19 07:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 12:54:45', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2019-10-29 12:54:47', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 12:54:49', '2019-02-04 17:50:15'),
(5, 'terms', NULL, '2019-10-29 12:54:51', '2019-10-28 18:00:00'),
(6, 'privacy_policy', NULL, '2019-10-29 12:54:54', '2019-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `variant_product` int(1) NOT NULL DEFAULT '0',
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci,
  `colors` mediumtext COLLATE utf8_unicode_ci,
  `variations` text COLLATE utf8_unicode_ci,
  `todays_deal` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '1',
  `stock_visibility_state` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = On, 0 = Off',
  `featured` int(11) NOT NULL DEFAULT '0',
  `seller_featured` int(11) NOT NULL DEFAULT '0',
  `current_stock` int(10) NOT NULL DEFAULT '0',
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT '1',
  `low_stock_quantity` int(11) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_start_date` int(11) DEFAULT NULL,
  `discount_end_date` int(11) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` text COLLATE utf8_unicode_ci,
  `is_quantity_multiplied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Mutiplied with shipping cost',
  `est_shipping_days` int(11) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(4, 'Fresh Onions 1kg', 'admin', 9, 6, NULL, '17', '17', 'youtube', NULL, '', NULL, 3000.00, 3000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Fresh Onions 1kg', '', '17', NULL, 'fresh-ewqit', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 13:53:13'),
(5, 'Carrots 1kg', 'admin', 9, 6, NULL, '24', '24', 'youtube', NULL, 'carrots,groceries', '<p>Fresh carrots straight from the garden to your kitchen</p>', 4000.00, 4000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Carrots 1kg', 'Fresh carrots straight from the garden to your kitchen', '24', NULL, 'fresh-x8nbb', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 20:45:16'),
(6, 'Couliy Flower', 'admin', 9, 6, NULL, '10', '10', 'youtube', NULL, 'couliy flower,groceries,fresh food', 'Fresh from the garden to your kitchen', 4000.00, 4000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Couliy Flower', 'Fresh from the garden to your kitchen', '10', NULL, 'fresh-issfn', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 02:15:40'),
(7, 'Fresh Beans 1kg', 'admin', 9, 6, NULL, '30', '30', 'youtube', NULL, 'fresh beans,groceries', '<p>Fresh from the garden to your kitchen</p>', 6000.00, 6000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Fresh Beans 1kg', 'Fresh from the garden to your kitchen', '30', NULL, 'fresh-evb6c', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 19:16:46'),
(8, 'Tomatoes 1kg', 'admin', 9, 6, NULL, '18', '18', 'youtube', NULL, 'fresh foods,tomato,tomatoes,groceries', '<p>Fresh from the garden to your kitchen</p>', 4000.00, 4000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Tomatoes 1kg', 'Fresh from the garden to your kitchen', '18', NULL, 'fresh-dapuw', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 18:10:23'),
(9, 'Fresh Peas 1kg', 'admin', 9, 6, NULL, '22', '22', 'youtube', NULL, 'peas,groceries,fresh foods', '<p>Fresh from the garden to your kitchen</p>', 9000.00, 9000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Fresh Peas 1kg', 'Fresh from the garden to your kitchen', '22', NULL, 'fresh-q2afy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 20:45:34'),
(10, 'Irish Potatoes 1kg', 'admin', 9, 6, NULL, '15', '15', 'youtube', NULL, 'irish,poatoes', '<p>Fresh from the garden to your kitchen</p>', 2000.00, 2000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Irish Potatoes 1kg', 'Fresh from the garden to your kitchen', '15', NULL, 'fresh-lzj5e', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:54:55'),
(11, 'Garlic 1 roll', 'admin', 9, 6, NULL, '8', '8', 'youtube', NULL, 'fresh,garlic,groceries', '<p>Fresh from the garden to your kitchen</p>', 4500.00, 4500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Garlic', 'Fresh from the garden to your kitchen', '8', NULL, 'fresh-jc9ka', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 18:10:32'),
(12, 'Ginger 1kg', 'admin', 9, 6, NULL, '11', '11', 'youtube', NULL, 'ginger,groceries,fresh', '<p>Fresh from the garden to your kitchen</p>', 5000.00, 5000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Ginger 1kg', 'Fresh from the garden to your kitchen', '11', NULL, 'fresh-ab8oa', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 18:10:28'),
(13, 'Pineapple 1 head', 'admin', 9, 6, NULL, '33', '33', 'youtube', NULL, 'pineapple,groceries,fresh', '<p>Fresh from the garden to your kitchen</p>', 5000.00, 5000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Pineapple', 'Fresh from the garden to your kitchen', '33', NULL, 'fresh-sh6pd', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:55:31'),
(14, 'Fresh Watermelon', 'admin', 9, 6, NULL, '32,14', '32,14', 'youtube', NULL, 'water melon,melon,fresh,groceries', '<p>Fresh from the garden to your kitchen</p>', 6000.00, 6000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Watermelon', 'Fresh from the garden to your kitchen', '32,14', NULL, 'fresh-ly8ve', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 02:48:53'),
(15, 'Passion Fruits 1kg', 'admin', 9, 6, NULL, '23', '23', 'youtube', NULL, 'passion,groceries,passion fruits', '<p>Fresh from the garden to your kitchen</p>', 6000.00, 6000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Passion Fruits 1kg', 'Fresh from the garden to your kitchen', '23', NULL, 'fresh-pmp1c', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:52:12'),
(16, 'Grapes 1kg', 'admin', 9, 6, NULL, '12,5', '12,5', 'youtube', NULL, 'grapes,groceries', '<p>Fresh from the garden to your kitchen</p>', 15000.00, 15000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Grapes 1kg', 'Fresh from the garden to your kitchen', '12,5', NULL, 'fresh-qpdph', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 02:53:49'),
(17, 'Apple', 'admin', 9, 6, NULL, '28,31,20', '28,31,20', 'youtube', NULL, 'apple,groceries,fresh', '<p>Fresh from the garden to your kitchen</p>', 2000.00, 2000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Apple', 'Fresh from the garden to your kitchen', '28,31,20', NULL, 'fresh-sbkfy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:52:13'),
(18, 'Whole Chicken 1kg', 'admin', 9, 6, NULL, '6', '6', 'youtube', NULL, 'chicken,groceries', '<p>Fresh from the garden to your kitchen</p>', 17000.00, 17000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Whole Chicken 1kg', 'Fresh from the garden to your kitchen', '6', NULL, 'fresh-uxe69', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 02:57:44'),
(19, 'Whole Chicken 1.2kg', 'admin', 9, 6, NULL, '6', '6', 'youtube', NULL, 'chicken,whole chicken', '<p>Fresh from the garden to your kitchen</p>', 18000.00, 18000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Whole Chicken 1.2kg', 'Fresh from the garden to your kitchen', '6', NULL, 'fresh-0kdzy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:52:14'),
(20, 'Whole Chicken 1.3kg', 'admin', 9, 6, NULL, '6', '6', 'youtube', NULL, 'whole chicken,chicken', '<p>Fresh from the garden to your kitchen</p>', 20000.00, 20000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Whole Chicken 1.3kg', 'Fresh from the garden to your kitchen', '6', NULL, 'fresh-tcizw', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 14:14:40'),
(21, 'Whole Chicken 1.5kg', 'admin', 9, 6, NULL, '6', '6', 'youtube', NULL, 'chicken', '<p>Fresh from the garden to your kitchen</p>', 25000.00, 25000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Whole Chicken 1.5kg', 'Fresh from the garden to your kitchen', '6', NULL, 'fresh-s5fjr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:07:52'),
(22, 'Chicken Drumsticks 1/2kg', 'admin', 9, 6, NULL, '7', '7', 'youtube', NULL, 'drumsticks,chicken', '<p>Fresh from the garden to your kitchen</p>', 10000.00, 10000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Drumsticks 1/2kg', 'Fresh from the garden to your kitchen', '7', NULL, 'fresh-niiqd', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 18:12:05'),
(23, 'Chicken Drumsticks 1kg', 'admin', 9, 6, NULL, '7', '7', 'youtube', NULL, 'chicken,drumsticks', '<p>Fresh from the garden to your kitchen</p>', 18000.00, 18000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Drumsticks 1kg', 'Fresh from the garden to your kitchen', '7', NULL, 'fresh-iht1l', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 18:12:06'),
(24, 'Chicken Wings 1kg', 'admin', 9, 6, NULL, '27', '27', 'youtube', NULL, 'chiken,wings,chicken wings', '<p>Fresh from the farm to your kitchen</p>', 16000.00, 16000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Wings 1kg', 'Fresh from the farm to your kitchen', '27', NULL, 'fresh-cggac', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:11:31'),
(25, 'Chicken Lollipops 1kg', 'admin', 9, 6, NULL, '19', '19', 'youtube', NULL, 'chicken,lollipops,chicken lollipops', '<p>Fresh from the farm to your kitchen</p>', 18000.00, 18000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Lollipops 1kg', 'Fresh from the farm to your kitchen', '19', NULL, 'fresh-ecjt0', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:52:19'),
(26, 'Chicken Lollipops 1/2kg', 'admin', 9, 6, NULL, '19', '19', 'youtube', NULL, 'chiken,lollipop,chicken lolliopop', '<p>Fresh from the farm to your kitchen</p>', 10000.00, 10000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Lollipops 1/2kg', 'Fresh from the farm to your kitchen', '19', NULL, 'fresh-v3jwb', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:25:01'),
(27, 'Chicken Cubes 250g', 'admin', 9, 6, NULL, '26', '26', 'youtube', NULL, 'chiken,cubes,chicken cubes', '<p>Fresh from the farm to your kitchen</p>', 6000.00, 6000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 3, 'Chicken Cubes 250g', 'Fresh from the farm to your kitchen', '26', NULL, 'fresh-dqvg2', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 22:37:03'),
(28, 'Quarter Chicken', 'admin', 9, 6, NULL, '21', '21', 'youtube', NULL, 'chicken,quarter,quarter chicken', '<p>Fresh from the farm to your kitchen</p>', 8000.00, 8000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Quarter Chicken', 'Fresh from the farm to your kitchen', '21', NULL, 'fresh-1ncz9', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:52:26'),
(29, 'Chicken Gizzard 1kg', 'admin', 9, 6, NULL, '13', '13', 'youtube', NULL, 'chicken,gizzard,chicken gizzard', '<p>Fresh from the farm to your kitchen</p>', 16000.00, 16000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Gizzard 1kg', 'Fresh from the farm to your kitchen', '13', NULL, 'fresh-amoey', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 09:53:59'),
(30, 'Chicken Gizzard 1/2kg', 'admin', 9, 6, NULL, '13', '13', 'youtube', NULL, 'chicken,gizzard,chicken gizzard', '<p>Fresh from the farm to your kitchen</p>', 8000.00, 8000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Chicken Gizzard 1/2kg', 'Fresh from the farm to your kitchen', '13', NULL, 'fresh-egpvr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:32:52'),
(31, 'Oranges 1kg', 'admin', 9, 6, NULL, '25,29', '25,29', 'youtube', NULL, 'oranges', '<p>Fresh from the garden to your kitchen</p>', 3000.00, 3000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Oranges 1kg', 'Fresh from the garden to your kitchen', '25,29', NULL, 'fresh-hywjp', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:34:01'),
(32, 'Bell Peppers', 'admin', 9, 6, NULL, '9,16', '9,16', 'youtube', NULL, 'pepper,bell pepper', '<p>Fresh from the garden to your kitchen</p>', 2000.00, 2000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Bell Peppers', 'Fresh from the garden to your kitchen', '9,16', NULL, 'fresh-z8oge', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:36:29', '2021-07-19 03:35:13'),
(34, 'Tecno T101 - Dual SIM 5MB HDD - 5MB RAM', 'admin', 9, 41, 15, '38', '38', 'youtube', NULL, 'phone,phones,mobile phone', NULL, 45000.00, 45000.00, 1, '[]', '[]', '[\"#000000\",\"#808080\"]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T101 - Dual SIM 5MB HDD - 5MB RAM', 'Planning to get a Tecno feature phone? Get the incredible Tecno T101 feature phone. This superb phone comes with a long battery life, FM Radio, a back camera and Mp3 player', '38', NULL, 'tecno-t101---dual-sim-5mb-hdd---5mb-ram-bwks5', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 02:15:37'),
(35, 'Tecno T201,', 'admin', 9, 41, 15, '37', '37', 'youtube', NULL, 'phones,mobile phone,cellphone', NULL, 55000.00, 55000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T201,', 'Tecno T201, MOS, 1.77 Display, 0.08MP Rear, GSM,1150mAh', '37', NULL, 'tecno-t201-z6bdy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 02:18:39'),
(36, 'Tecno T301 Dual Sim With Camera & Torch Light, Fm Radio, Loud Speaker', 'admin', 9, 41, 15, '39', '39', 'youtube', NULL, 'phones,mobile,mobile phone', '<p>A basic phone with 4MB RAM and 4MB ROM. it has long lasting battery capacity of 1150mAh it is equipped with fm loud speaker, palm chat and facebook.</p>', 45000.00, 45000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T301 Dual Sim With Camera & Torch Light, Fm Radio, Loud Speaker', 'A basic phone with 4MB RAM and 4MB ROM. it has long lasting battery capacity of 1150mAh it is equipped with fm loud speaker, palm chat and facebook.', '39', NULL, 'tecno-t301-dual-sim-with-camera--torch-light-fm-radio-loud-speaker-nnaxh', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 02:23:28'),
(37, 'Tecno T313 Dual SIM 1.77” 1150mAh Memory RAM In GB: 4 MB', 'admin', 9, 41, 15, '36', '36', 'youtube', NULL, 'phone,mobile phone,cellphones', '<p>A basic phone with 4MB RAM and 4MB ROM. it has long lasting battery capacity of 1150mAh it is equipped with fm loud speaker, palm chat and facebook.</p>', 52500.00, 52500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T313 Dual SIM 1.77” 1150mAh Memory RAM In GB: 4 MB', 'A phone from Necessary with 4MB of RAM and 4MB of storage', '36', NULL, 'tecno-t313-dual-sim-177-1150mah-memory-ram-in-gb-4-mb-etf61', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 02:30:37'),
(38, 'Tecno T351', 'admin', 9, 41, 15, '35', '35', 'youtube', NULL, '', '<p>Tecno T351 has 1.8\" (4.57 cm) display, 0.3 MPcamera, 1000 mAh battery.</p>', 51000.00, 51000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T351', 'Tecno T351 has 1.8\" (4.57 cm) display, 0.3 MPcamera, 1000 mAh battery.', '35', NULL, 'tecno-t351-xzlqi', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 02:57:53'),
(39, 'Tecno T372', 'admin', 9, 41, 15, '40', '40', 'youtube', NULL, '', '<p>Tecno T351 has 1.8\" (4.57 cm) display, 0.3 MPcamera, 1000 mAh battery.</p>', 62000.00, 62000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T372', 'Tecno T372 - Triple Sim - 2.4” Screen - 4mb Rom - 4mb Ram- 1150mAh Battery', '40', NULL, 'tecno-t372-fdsel', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:03:17'),
(40, 'Tecno T454', 'admin', 9, 41, 15, '41', '41', 'youtube', NULL, 'phone,mobile phone,cellphone', '<p>Tecno T454 Dual Sim,2.8\" Big Screen,with Camera Flash Light, 1500mah</p>', 70000.00, 70000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T454', 'Tecno T454 Dual Sim,2.8\" Big Screen,with Camera Flash Light, 1500mah', '41', NULL, 'tecno-t454-hpigs', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:08:46'),
(41, 'Tecno T402', 'admin', 9, 41, 15, '54', '54', 'youtube', NULL, 'phone,mobile phone,cellphone', '<p>Tecno T402, 2.4” Screen, Tripple Sim, Camera, 1500mAh</p>', 69000.00, 69000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T402', 'Tecno T402, 2.4” Screen, Tripple Sim, Camera, 1500mAh', '54', NULL, 'tecno-t402-mqoft', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:11:30'),
(42, 'Tecno T466', 'admin', 9, 41, 15, '44', '44', 'youtube', NULL, 'cellphoe,mobile phone,phones,mobile', '<p>Tecno T466-Triple SIM,2500MAH Battery, Bright Torch</p>', 72000.00, 72000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T466', 'Tecno T466-Triple SIM,2500MAH Battery, Bright Torch', '44', NULL, 'tecno-t466-czodm', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:28:05'),
(43, 'Tecno T528', 'admin', 9, 41, 15, '46', '46', 'youtube', NULL, 'cellphone,mobile,mobilephone,phones', '<p>Tecno T528- 2.8 Inches 8MB RAM 16MB ROM, 2500mAh Battery, Camera With Flash</p>', 80000.00, 80000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T528', 'Tecno T528- 2.8 Inches 8MB RAM 16MB ROM, 2500mAh Battery, Camera With Flash', '46', NULL, 'tecno-t528-hu6j3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:27:19'),
(44, 'Tecno T485', 'admin', 9, 41, 15, '47', '47', 'youtube', NULL, 'mobile,mobile phone,cellphone', '<p>Tecno T485 Feature Phone - 2.8\" - Dual Sim - 4000mAh - Loud FM Speaker -</p>', 97000.00, 97000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T485', 'Tecno T485 Feature Phone - 2.8\" - Dual Sim - 4000mAh - Loud FM Speaker -', '47', NULL, 'tecno-t485-nxp3u', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:26:31'),
(45, 'Tecno T661', 'admin', 9, 41, 15, '42', '42', 'youtube', NULL, 'mobile,mobile phone,cellphone', '<p>Tecno T661, Ultra Slim 9.9mm, Dual Sim, 2.4ips Screen, 1200mah Battery</p>', 92000.00, 92000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno T661', 'Tecno T661, Ultra Slim 9.9mm, Dual Sim, 2.4ips Screen, 1200mah Battery', '42', NULL, 'tecno-t661-7t3n4', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:25:35'),
(47, 'Tecno POP3 (BB2)', 'admin', 9, 41, 15, '59', '59', 'youtube', NULL, 'smartphones,phones,mobile phone', '<p>Tecno POP3 (BB2) 5.7\" Screen, 16GB ROM + 1GB RAM, Android 8.1 Oreo, 8MP + 5MP Camera, 3500mAh, Fingerprint &amp; Face ID</p>', 270000.00, 270000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno POP3 (BB2)', 'Tecno POP3 (BB2) 5.7\" Screen, 16GB ROM + 1GB RAM, Android 8.1 Oreo, 8MP + 5MP Camera, 3500mAh, Fingerprint & Face ID', '59', NULL, 'tecno-pop3-bb2-skx6l', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:24:07'),
(48, 'Tecno POP5 (BD2)', 'admin', 9, 41, 15, '52', '52', 'youtube', NULL, 'smartphone,phones,mobile phone,tecno', '<p>Tecno POP3 (BB2) 5.7\" Screen, 16GB ROM + 1GB RAM, Android 8.1 Oreo, 8MP + 5MP Camera, 3500mAh, Fingerprint &amp; Face ID</p>', 280000.00, 280000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno POP5 (BD2)', 'Tecno POP5 (BD2) 6.1\" HD+ Screen, 1GB RAM + 16GB ROM, 4000mAh, Android 10, 5MP + 5MP Camera, Fingerprint + Face ID', '52', NULL, 'tecno-pop5-bd2-zrl25', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:31:03'),
(49, 'Tecno POP 5 (BD2p)', 'admin', 9, 41, 15, '53', '53', 'youtube', NULL, 'Tecno POP 5 (BD2p),pop,techno', '<p>The New Hot 10T Series the highly anticipated gaming and entertainment smartphone addition to the  Hot 10 portfolio. The Infinix Hot 10T sets a new standard for power, innovation and style by combining sophisticated processing technologies with long-lasting battery performance, a triple camera with Super Nightscape imaging and an ultra-smooth display, encased in a stunning design inspired by nature.\r\n</p><p>The Hot 10T Series features Infinix’s powerful Dar-link optimization engine software, which improves graphic display and touchscreen sensitivity with self-learning AI algorithm capabilities that minimize lag time. With more than 2.7 billion mobile gamers expected by 2023, the Hot 10T smartphone is equipped with a MediaTek Helio G70 chipset to meet the increasing demand for enhanced gaming experiences.\r\n</p><p>Upgraded Design: The Hot 10T adopts pioneering Laser Micron Lithography Technology to create a beautiful shimmer appearance that draws inspiration from the Salar de Uyuni in Bolivia. With smooth-edges and an under-display selfie camera, the Hot 10T is a highly recommended gaming and entertainment device.\r\n</p><p>Buttery-Smooth Display: Boasting a cutting-edge 6.82” HD+ display with 90Hz refresh rate, consumers gain a brilliant viewing experience when watching the latest CGI visual effects. The 180Hz touch sampling rate delivers optimal responsiveness and the intuitive facial recognition enables faster, safer and more convenient device unlocking.\r\n</p><p>Triple 48MP HD Camera with AI: For the first time within the HOT portfolio, the Hot 10T packs a 48MP HD rear camera, an AI camera and a 2MP depth camera with rear Flash. The all-new Super Nightscape feature enables users to take impressive pictures in dark/low-light scenarios while the 2K resolution video recording captures authentic true-to-life footage.\r\n</p><p>MediaTek Helio G70 Chipset: This chipset packs a powerful performance while maximizing battery life for a superior gaming experience. Leveraging innovative dynamic resource management technology, the connectivity powered by MediaTek’s Helio G70 brings faster response times and quicker frame rates. Furthermore, this results in consistent &amp; reliable connectivity which significantly reduces lag time. \r\n</p><p>A 5000mAh Battery: The impressive battery offers 76 hours of calling time on a single charge. Enhanced by power-saving Power Marathon technology that provides an additional 25% power once the battery runs down to 5%, gamers no longer need to think about dreaded battery shutdowns when playing, or embarrassing low battery notifications on video calls. \r\n</p><p>Advanced Software: The DTS Audio processing technology helps elevate sound effects during gameplay. Users can customize the sound effects for better sound quality experiences in games, music and movies. The Infinix XO7.6 is based on Android 11 with a fresh and smarter interface than its predecessor.\r\n</p><p>Dar-link Ultimate Game Booster: The Hot 10T incorporates Infinix’s optimization engine software, the Dar-link Ultimate Game Booster, which works with the smartphone’s hardware to improve the graphic image stability and screen sensitivity.\r\n</p><p>Secured User Privacy: With user data protection and privacy as a priority, two key systems have been implemented into the Hot 10T. X-Proof secures the screen from behind so that user’s screens won’t be snooped on in public, furthermore, all user data on the device stays on the device and is never uploaded to the cloud. In an era when privacy is more prevalent than ever, Infinix has taken extra steps to fully secure it.\r\n</p><p>The Hot 10T features an AI portrait enhancing 8MP front camera to capture sharp images that reflect the results of a professional camera. This camera is the first-ever in the HOT series to offer eye-tracking autofocus, auto-blur videos and face beautification, empowering users to capture the perfect shot. \r\n</p><p>The Hot 10T also features a nightscape 48MP rear HD camera that allows users to take impressive images and videos in both day and night. The 240FPS slow-motion shooting also helps users capture smooth movements for the perfect action shot. \r\n</p><p>The ultimate smartphone entertainment experience with MediaTek’s Helio G70\r\n</p><p>The Hot 10T is the first in its series to be equipped with MediaTek’s Helio G70 chipset to provide an outstanding performance for avid mobile gamers. The octa-core CPU features two powerful Arm Cortex-A75 CPUs operating up to 2GHz and six Cortex-A55 processors operating up to 1.8GHz, interlinked by a large L3 cache for improved performance.\r\n</p><p>MediaTek’s HyperEngine combines various technologies to enhance the overall gaming experience with sustained performance for a longer period. With this feature, gamers can expect smoother performance in demanding game engines, along with intelligent dynamic management of CPU.\r\n</p><p>The Dual 4G SIM support provides exceptional voice and video call quality via VoLTE/ViLTE services, along with faster connection setup time, more reliable coverage and lower power consumption from either SIM connection.\r\n</p><p>The chipset also features built-in integrated voice wake-up capabilities (VoW) that minimize the power of applications in the Android OS, such as the always-on Google Assistant.\r\n</p><p>Play all day with a long-lasting battery\r\n</p><p>To provide users with a non-stop gaming experience, the Hot 10T comes equipped with a battery capacity of 5000mAh. Based on testing from the Infinix data lab, the Hot 10T supports 55 days on standby, 170 hours of music playback, 15.0 hours of continuous gaming or 76 hours of calls on a full charge.\r\n</p><p>The built-in Safe-Charge technology ensures that the power is automatically turned off once the device is fully charged to avoid overheating and wasting energy, while the Power Marathon technology contributes an extra 25% power when the battery runs low – that’s 3.5 hours of additional call time for users.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 330000.00, 330000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 2, 'Tecno POP 5 (BD2p)', 'Tecno POP 5 (BD2p) 6.1\" HD+ Display, 2GB RAM + 32GB ROM, 4000mAh, Android 10, 5MP + 5MP Camera, Fingerprint & Face ID', '53', NULL, 'tecno-pop-5-bd2p-0tukr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 14:23:10'),
(50, 'Tecno POP4 Air (BC1)', 'admin', 9, 41, 15, '49', '49', 'youtube', NULL, 'smartphone,phones,mobilephone,cellphone', '<p>Tecno POP4 Air (BC1) 6.52\" Screen, 1GB RAM + 16GB ROM, 5000mAh Battery, Android 10, 5MP + 5MP Camera, Fingerprint</p>', 320000.00, 320000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno POP4 Air (BC1)', 'Tecno POP4 Air (BC1) 6.52\" Screen, 1GB RAM + 16GB ROM, 5000mAh Battery, Android 10, 5MP + 5MP Camera, Fingerprint', '49', NULL, 'tecno-pop4-air-bc1-8r2ab', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:52:12'),
(51, 'Tecno POP4 (BC2c)', 'admin', 9, 41, 15, '43', '43', 'youtube', NULL, 'smartphone,mobile phone,cellphone', '<p>Tecno POP4 (BC2c) 6\" Big Screen, 2GB RAM + 32GB ROM, 5000mAh Battery, Android 10, 8MP + 5MP Camera, Fingerprint</p>', 330000.00, 330000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno POP4 (BC2c)', 'Tecno POP4 (BC2c) 6\" Big Screen, 2GB RAM + 32GB ROM, 5000mAh Battery, Android 10, 8MP + 5MP Camera, Fingerprint', '43', NULL, 'tecno-pop4-bc2c-hlm9z', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:55:02'),
(52, 'Tecno POP 4 (BC3', 'admin', 9, 41, 15, '51', '51', 'youtube', NULL, 'smartphone,mobilephone,phone', '<p>Tecno POP 4 (BC3) | 1gb RAM | 16gb ROM | 5000mAh | 5MP /8MP</p>', 340000.00, 340000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno POP 4 (BC3', 'Tecno POP 4 (BC3) | 1gb RAM | 16gb ROM | 5000mAh | 5MP /8MP', '51', NULL, 'tecno-pop-4-bc3-xlefr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 03:57:33'),
(54, 'TECNO Spark GO 2020 KE5 ( 32GB , 2 GB', 'admin', 9, 41, 15, '45', '45', 'youtube', NULL, 'smartphone,mobile phone', '<p>TECNO Spark GO 2020 KE5 ( 32GB , 2 GB</p>', 390000.00, 390000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'TECNO Spark GO 2020 KE5 ( 32GB , 2 GB', 'TECNO Spark GO 2020 KE5 ( 32GB , 2 GB', '45', NULL, 'tecno-spark-go-2020-ke5--32gb--2-gb-hpzg2', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 04:01:28'),
(55, 'Tecno Spark 5 Air KD6A', 'admin', 9, 41, 15, '56', '56', 'youtube', NULL, 'smartphone,phone,mobile', NULL, 400000.00, 400000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno Spark 5 Air KD6A', 'Tecno Spark 5 Air KD6A - 32GB HDD - 2GB RAM Smartphone', '56', NULL, 'tecno-spark-5-air-kd6a-yomqf', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 04:03:29'),
(56, 'Tecno Tab 4G P704A', 'admin', 9, 41, 15, NULL, '50', 'youtube', NULL, 'smartphone,phone,mobile phone', '<p>Tecno Tab 4G P704A Internal 32GB+2GB RAM 7\"IPS Screen Display 5000mAh Battery</p>', 440000.00, 440000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno Tab 4G P704A', 'Tecno Tab 4G P704A Internal 32GB+2GB RAM 7\"IPS Screen Display 5000mAh Battery', '50', NULL, 'tecno-tab-4g-p704a-1y89z', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 04:06:02'),
(57, 'Spark 5 PRO (KD7)', 'admin', 9, 41, 15, NULL, '55', 'youtube', NULL, 'smartphone,mobile,phone', '<p>Tecno Spark 5 PRO (KD7) 6.6\" HD+ 4GB RAM + 128GB ROM, , Android 10, 4G, 5000mAh, Ice Jadeite</p>', 470000.00, 470000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Spark 5 PRO (KD7)', 'Tecno Spark 5 PRO (KD7) 6.6\" HD+ 4GB RAM + 128GB ROM, , Android 10, 4G, 5000mAh, Ice Jadeite', '55', NULL, 'spark-5-pro-kd7-ux7yt', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 14:15:53'),
(58, 'Tecno Spark 7 P (KF7j)', 'admin', 9, 41, 15, '858', '858', 'youtube', NULL, 'smartphone,mobile,phone,tecno', '<p>Tecno Spark 7 P (KF7j) 6.8\" HD+, 64GB ROM +4GB RAM, 16MP Triple Camera, 5000mAh, Helio G70, 4G, Fingerprint</p>', 480000.00, 480000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno Spark 7 P (KF7j)', 'Tecno Spark 7 P (KF7j) 6.8\" HD+, 64GB ROM +4GB RAM, 16MP Triple Camera, 5000mAh, Helio G70, 4G, Fingerprint', '858', NULL, 'tecno-spark-7-p-kf7j-pdvfj', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 13:59:50'),
(59, 'Tecno Pouvoir 4 LC7', 'admin', 9, 41, 15, NULL, '58', 'youtube', NULL, 'smartphone,mobile,phone', '<p>Tecno Pouvoir 4 LC7 3GB RAM 32GB ROM</p>', 500000.00, 500000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Tecno Pouvoir 4 LC7', 'Tecno Pouvoir 4 LC7 3GB RAM 32GB ROM', '58', NULL, 'tecno-pouvoir-4-lc7-ztdxq', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 14:16:19'),
(60, 'Tecno Camon 17 (CG6)', 'admin', 9, 41, 15, '857', '857', 'youtube', NULL, 'smartphone,mobile,phone,tecno', '<p>Tecno Camon 17 (CG6) 6.6\" 90Hz HD+, 4GB RAM + 128GB ROM, 48MP Triple Rear + 8MP Selfie Camera, Android 11, 5000mAh</p>', 590000.00, 590000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Tecno Camon 17 (CG6)', 'Tecno Camon 17 (CG6) 6.6\" 90Hz HD+, 4GB RAM + 128GB ROM, 48MP Triple Rear + 8MP Selfie Camera, Android 11, 5000mAh', '857', NULL, 'tecno-camon-17-cg6-dmda7', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 15:37:32'),
(61, 'Tecno Camon 17P (CG7)', 'admin', 9, 41, 15, '856', '856', 'youtube', NULL, 'techno,camon 17,smart phone', '<p>Tecno Camon 17P smartphone was launched on 7th May 2021. The phone comes with a 6.80-inch display with a resolution of 1080x2460 pixels at a pixel density of 395 pixels per inch (ppi).Tecno Camon 17P comes with 6GB of RAM. The Tecno Camon 17P runs Android 11 and is powered by a 5000mAh battery. The Tecno Camon 17P supports proprietary fast charging.\r\n</p><p>As far as the cameras are concerned, the Tecno Camon 17P on the rear packs a 64-megapixel primary camera; a 2-megapixel camera; a 2-megapixel camera, and an AI camera. It sports a 16-megapixel camera on the front for selfies.\r\n</p><p>The Tecno Camon 17P runs HiOS 7.6 is based on Android 11 and packs 128GB of inbuilt storage. The Tecno Camon 17P measures 168.67 x 76.44 x 8.82mm (height x width x thickness) . It was launched in Frost Silver, Magnet Black, and and Spruce Green colours.\r\n</p><p>Connectivity options on the Tecno Camon 17P include Wi-Fi, GPS, and USB Type-C. Sensors on the phone include fingerprint sensor.</p>', 740000.00, 740000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno Camon 17P (CG7', 'Tecno Camon 17P (CG7) – 6.8″ 128GB ROM 6GB RAM 5000mAh', '200', NULL, 'tecno-camon-17p-cg7-pjda3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 13:58:30'),
(62, 'Tecno Camon 17 Pro CG8', 'admin', 9, 41, 15, '715', '718', 'youtube', NULL, 'smartphone,mobile,phone,tecno', '<p>Tecno Camon 17 Pro CG8 8GB RAM 256GB ROM</p>', 950000.00, 950000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Tecno Camon 17 Pro CG8', 'Tecno Camon 17 Pro CG8 8GB RAM 256GB ROM', '718', NULL, 'tecno-camon-17-pro-cg8-yvnfc', 0.00, NULL, 0, NULL, NULL, '2021-07-19 01:57:46', '2021-07-19 13:49:25'),
(64, 'Fortune Gold Oil 5 Litres', 'admin', 9, 67, NULL, '838', '838', 'youtube', NULL, 'oil,fortune gold,cooking oil', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 38000.00, 38000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune Gold Oil 5 Litres', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '838', NULL, 'fortune-gold-oil-5-litres-06ylq', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:53:32'),
(65, 'Fortune  Golden Fry Oil - 5Litres', 'admin', 9, 67, NULL, '838', '838', 'youtube', NULL, 'fortune gold,cooking oil', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 38500.00, 38500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'ltr', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune  Golden Fry Oil - 5Litres', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '838', NULL, 'fortune--golden-fry-oil---5litres-rgka9', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:45:05'),
(66, 'Fortune Butto Oil 1Litre-Sachet', 'admin', 9, 67, NULL, '869', '869', 'youtube', NULL, 'fortune,cookin oil,oil', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 7500.00, 7500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune Butto Oil 1Litre-Sachet', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '869', NULL, 'fortune-butto-oil-1litre-sachet-i4hoi', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:49:56'),
(67, 'Fortune Butto Oil 500ml-Sachet', 'admin', 9, 67, NULL, '848', '848', 'youtube', NULL, 'fortune,butto,oil,cooking oil', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 3500.00, 3500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune Butto Oil 500ml-Sachet', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '848', NULL, 'fortune-butto-oil-500ml-sachet-ljhqj', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 20:44:18'),
(68, 'Fortune Bull Oil 10Litre-Jerican', 'admin', 9, 67, NULL, '868', '868', 'youtube', NULL, 'fortune,oil,cooking oil,butto', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 75000.00, 75000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune Bull Oil 10Litre-Jerican', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '868', NULL, 'fortune-bull-oil-10litre-jerican-2km64', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:52:04'),
(69, 'Fortune Bull Oil 20Litre-Jerican', 'admin', 9, 67, NULL, '868', '868', 'youtube', NULL, 'fortune butto,oil,cooking oil', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 150000.00, 150000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Fortune Bull Oil 20Litre-Jerican', 'Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.', '868', NULL, 'fortune-bull-oil-20litre-jerican-c23or', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:54:02'),
(70, 'Supreme Flour Home Baking Flour - 2Kg', 'admin', 9, 58, NULL, '854,852', '852,854', 'youtube', NULL, 'supreme,baking,baking flour', '<p>New methods of refining wheat have ensured that our flour is whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.\r\n</p><p>Home Baking Flour is refined wheat that will ensure your baking turns out amazing because its whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.Choose from a wide range of Unique products on Jumia and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing. \r\n</p><p>Grab this deal and more from Jumia Uganda at unbeatable prices with doorstep delivery.</p>', 5800.00, 5800.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Supreme Flour Home Baking Flour - 2Kg', 'New methods of refining wheat have ensured that our flour is whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.\r\nHome Baking Flour is refined wheat that will ensure your baking turns out amazing because its whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.Choose from a wide range of Unique products on Jumia and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing. \r\nGrab this deal and more from Jumia Uganda at unbeatable prices with doorstep delivery.', '852,854', NULL, 'supreme-flour-home-baking-flour---2kg-thw25', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:56:37'),
(71, 'Azam Flour Home Baking Flour - 2Kg', 'admin', 9, 58, NULL, '69', '69', 'youtube', NULL, 'Baking flour,Azam,Wheat flour', NULL, 5800.00, 5800.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Azam Flour Home Baking Flour - 2Kg', 'Azam Home Baking Flour A popular product the trusted brand Azam, this home baking flour from Tanzania is in high demand in east and outh Africa.\r\n\r\nAzam Baking flour 2kg is of fine quality and can be used for all your baking purposes.Order from KaKebe at affordable prices and door step delivery.', '69', NULL, 'azam-flour-home-baking-flour---2kg-b1rdi', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:16:52'),
(72, 'Kakira Sugar - 2kg', 'admin', 9, 57, NULL, '842', '842', 'youtube', NULL, 'sugar,kakira', '<p>​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages</p>', 6500.00, 6500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Kakira Sugar - 2kg', '​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages', '842', NULL, 'kakira-sugar---2kg-aggyc', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:39:16'),
(73, 'Kakira Sugar - 1kg', 'admin', 9, 57, NULL, '835', '835', 'youtube', NULL, 'sugar,kakira', '​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages', 3000.00, 3000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Kakira Sugar - 1kg', '​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages', '835', NULL, 'kakira-sugar---1kg-dls57', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:42:26'),
(74, 'Kakira Sugar - 10kg', 'admin', 9, 57, NULL, '855', '855', 'youtube', NULL, 'sugar,kakira', '<p>​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages</p>', 32000.00, 32000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Kakira Sugar - 10kg', '​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages', '855', NULL, 'kakira-sugar---10kg-kw328', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:52:30'),
(75, 'Kakira Sugar - 50kg', 'admin', 9, 57, NULL, '878', '878', 'youtube', NULL, 'Sugar,Kakira', '<p>Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s! Get it Delivered to you when you order from KaKebe Shoponline today.</p>', 68000.00, 68000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Kakira Sugar - 50kg', 'Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s! Get it Delivered to you when you order from KaKebe Shoponline today.', '878', NULL, 'kakira-sugar---50kg-aabvh', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:14:44'),
(76, 'Kakira Sugar - 50kg', 'admin', 9, 57, NULL, '878', '878', 'youtube', NULL, 'kakira,sugar', '<p>Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s!</p>', 132000.00, 132000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Kakira Sugar - 50kg', 'Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s!', '878', NULL, 'kakira-sugar---50kg-rwspl', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:05:11'),
(77, 'Star Light Bar Soap 1kg', 'admin', 9, 18, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 3200.00, 3200.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Star-Light-Bar-Soap-1kg-uG4pM', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:48:19'),
(78, 'Bull Star 1kg', 'admin', 9, 18, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 3000.00, 3000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Bull-Star-1kg-CSW7p', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:38:00'),
(79, 'Bull Magic Soap 1kg', 'admin', 9, 18, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 3500.00, 3500.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Bull-Magic-Soap-1kg-7OT79', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:38:00');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(80, 'White Star Soap 1kg', 'admin', 9, 18, NULL, '882', '882', 'youtube', NULL, 'whitestar,bar,soap', '<p>White Star Bar Soap 1kg\r\n</p><p>Feel clean and invigorated with this hydrating body and Cloth bar and enjoy its crisp, refreshing scent \r\n</p><p>Grab this deal and more from KaKebe Uganda at unbeatable prices with doorstep delivery.</p>', 3800.00, 3800.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'White Star Soap 1kg', 'White Star Bar Soap 1kg\r\nFeel clean and invigorated with this hydrating body and Cloth bar and enjoy its crisp, refreshing scent \r\nGrab this deal and more from KaKebe Uganda at unbeatable prices with doorstep delivery.', '882', NULL, 'white-star-soap-1kg-it0yl', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:19:20'),
(81, 'White Star Magic 500g', 'admin', 9, 18, NULL, '880', '844', 'youtube', NULL, 'white star magic,powder detergent', '<p>Contains active organic matter and  stain sex enzymes which penetrates stains and digest the dirt to yield effective cleaning and brightening action. Improved formula which gives extra rich foam, leaves cloths brighter, cleaner and fresher</p>', 5000.00, 5000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'White Star Magic 500g', 'Contains active organic matter and  stain sex enzymes which penetrates stains and digest the dirt to yield effective cleaning and brightening action. Improved formula which gives extra rich foam, leaves cloths brighter, cleaner and fresher', '844', NULL, 'white-star-magic-500g-btukq', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:32:39'),
(82, 'White Star Magic 1kg', 'admin', 9, 18, NULL, '877', '877', 'youtube', NULL, 'white star,magic,detergent', '<p>​Magic Detergent 1000Gm</p><p><br></p>', 4000.00, 4000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'White Star Magic 1kg', '​Magic Detergent 1000Gm', '877', NULL, 'white-star-magic-1kg-hba9v', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:17:47'),
(83, 'ABC Dent 70g', 'admin', 9, 28, NULL, '884,883', '883,884', 'youtube', NULL, 'abc,abc dent,toothpaste', 'ABC dent', 500.00, 500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'ABC Dent 70g', 'ABC dent', '883,884', NULL, 'abc-dent-70g-7dsbl', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:19:32'),
(84, 'Aerial 500g', 'admin', 9, 28, NULL, '885', '885', 'youtube', NULL, '', '<p>Ariel detergent contains the power of stain removal ingredients, which helps to remove tough stains in one wash. It is formulated with deep cleaning ingredients that are like magnets for dirt. It penetrates into the fabric to dissolve even the toughest stains effortlessly. It is an ideal washing detergent for your washing machine. \r\n</p><p>Buy now online from Jumia Uganda at the best price and have it delivered right at your doorstep.\r\n</p><p>Specifications \r\n</p><p>Dowry\r\n</p><p>Volume:1kg\r\n</p><p>Formulated with deep cleaning ingredients\r\n</p><p>Removes tough stains in one wash\r\n</p><p>Contains the power of stain removal ingredients</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 4500.00, 4500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Aerial 500g', 'Ariel detergent contains the power of stain removal ingredients, which helps to remove tough stains in one wash. It is formulated with deep cleaning ingredients that are like magnets for dirt. It penetrates into the fabric to dissolve even the toughest stains effortlessly. It is an ideal washing detergent for your washing machine. \r\nBuy now online from Jumia Uganda at the best price and have it delivered right at your doorstep.\r\nSpecifications \r\nDowry\r\nVolume:1kg\r\nFormulated with deep cleaning ingredients\r\nRemoves tough stains in one wash\r\nContains the power of stain removal ingredients\r\n\r\n\r\n\r\n', '885', NULL, 'aerial-500g--ff22x', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:24:40'),
(85, 'Always Maxi Pads Extra Long 7 pads', 'admin', 9, 28, NULL, '890', '890', 'youtube', NULL, 'always,pads', '<p>Always Maxi Extra Long - (7\'S)\r\n</p><p>Are you getting the right protection from your pad? Using the wrong pad size can lead to leaks. Step up in size to help stop leaks. Now you can find your fit with Always Extra Long ultra thin sanitary pads. Always extra long ultra thin 7 sanitary pad with no stain for up to 8 hours. Very convenient and no need to worry about a stain. \r\n</p><p>Since its introduction in 1984, Always has made a woman’s period a more positive, happier experience. Always, the world’s leader in feminine protection is dedicated to helping women embrace womanhood positively from the very beginning of puberty through their adult lives. Always has a wide range of menstrual pads designed to fit different body types, period flows and preferences. And we all know, the better the fit, the better the protection. With Always, you\'re Good to go with up to 8 hours No Stain No Check.</p><p>\r\n</p>', 2800.00, 2800.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Always Maxi Pads Extra Long 7 pads', 'Always Maxi Extra Long - (7\'S)\r\nAre you getting the right protection from your pad? Using the wrong pad size can lead to leaks. Step up in size to help stop leaks. Now you can find your fit with Always Extra Long ultra thin sanitary pads. Always extra long ultra thin 7 sanitary pad with no stain for up to 8 hours. Very convenient and no need to worry about a stain. \r\nSince its introduction in 1984, Always has made a woman’s period a more positive, happier experience. Always, the world’s leader in feminine protection is dedicated to helping women embrace womanhood positively from the very beginning of puberty through their adult lives. Always has a wide range of menstrual pads designed to fit different body types, period flows and preferences. And we all know, the better the fit, the better the protection. With Always, you\'re Good to go with up to 8 hours No Stain No Check.\r\n', '890', NULL, 'always-maxi-pads-extra-long-7-pads-ufdwl', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:27:01'),
(86, 'Always Maxi Extra Long Pink', 'admin', 9, 28, NULL, '906,903', '906,903', 'youtube', NULL, 'always', '<p>Always Platinum Ultra Long 7 Sanitary Pads allows you to sleep comfortably through the night thanks to a micro-cushioned top layer that is supported by an absorbent core. A thicker core, as well as absorbent sides, means leaks are averted.</p>', 2300.00, 2300.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Always Maxi Extra Long Pink', 'Always Platinum Ultra Long 7 Sanitary Pads allows you to sleep comfortably through the night thanks to a micro-cushioned top layer that is supported by an absorbent core. A thicker core, as well as absorbent sides, means leaks are averted.', '906,903', NULL, 'always-maxi-extra-long-pink-wblv3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:32:52'),
(87, 'Raha Drinking Chochlate 200g', 'admin', 9, 5, NULL, '889', '887', 'youtube', NULL, 'chochalate,raha', '<p>Raha Drinking Chocolate 200G Jar</p><p>Raha is  Rich in Polyphenols That Provide Several Health Benefits. May Reduce High Blood Pressure by Improving Nitric Oxide Levels. May Lower Your Risk of Heart Attack and Stroke. May Improve Mood and Symptoms of Depression by Various Means. Hot chocolate, also known as drinking chocolate, cocoa, and as chocolate tea in Nigeria, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream .<br></p><p>It is a known as drinking chocolate, cocoa, and as chocolate tea in , is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream or marshmallows.</p><p>Chocolate is synonymous with celebration, happiness &amp; comfort. But there’s so much more to its wondrous charm than meets your taste buds.</p><p>Drinking Chocolate is a delicious hot chocolate drink. For that perfect cup sprinkle three heaped teaspoonfuls into a cup of hot milk and enjoy. Drinking Chocolate is perfect any time of the day<br></p><p><br></p><p>Buy this Drinking Chocolate from KaKebe to enjoy doorstep delivery!</p>', 4000.00, 4000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Raha Drinking Chochlate 200g', 'Raha Drinking Chocolate 200G JarRaha is  Rich in Polyphenols That Provide Several Health Benefits. May Reduce High Blood Pressure by Improving Nitric Oxide Levels. May Lower Your Risk of Heart Attack and Stroke. May Improve Mood and Symptoms of Depression by Various Means. Hot chocolate, also known as drinking chocolate, cocoa, and as chocolate tea in Nigeria, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream .It is a known as drinking chocolate, cocoa, and as chocolate tea in , is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream or marshmallows.Chocolate is synonymous with celebration, happiness &amp; comfort. But there’s so much more to its wondrous charm than meets your taste buds.Drinking Chocolate is a delicious hot chocolate drink. For that perfect cup sprinkle three heaped teaspoonfuls into a cup of hot milk and enjoy. Drinking Chocolate is perfect any time of the dayBuy this Drinking Chocolate from KaKebe to enjoy doorstep delivery!', '887', NULL, 'raha-drinking-chochlate-200g--2f6hs', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 20:44:41'),
(88, 'Blue band 250g', 'admin', 9, 5, NULL, '905,904', '905,904', 'youtube', NULL, 'blue band,tangerine', '<p>blue band</p>', 3500.00, 3500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Blue band 250g', 'blue band', '905,904', NULL, 'blue-band-250g--xegsx', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:31:20'),
(89, 'Lato Flavored Milk 200ml x 24', 'admin', 9, 65, NULL, '907', '907', 'youtube', NULL, 'latto,milk', '<p>latto milk</p>', 18000.00, 18000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lato Flavored Milk 200ml x 24', 'latto milk', '907', NULL, 'lato-flavored-milk-200ml-x-24--v8ud8', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:37:02'),
(90, 'Lato Milk Liquid 12x500ml', 'admin', 9, 65, NULL, '837', '837', 'youtube', NULL, 'Milk,Fresh Milk,Lato,Powder Milk', '<p>Lato UHT Milk comes from cow’s milk that is treated to high temperatures and then rapidly cooled to kill the bacteria and spores in the milk.\r\n</p><p>Lato Flavoured milk is a nutritious drink made from UHT milk with added natural flavours. It is particularly enjoyed by kids as its great taste encourages consumption and provides them with the essential nutrients they need to grow.\r\n</p><p>The UHT treatment increases the shelf life of the milk, allowing consumers the convnience to store it in ambient conditions without the need for refrigeration.\r\n</p><p>Lato&nbsp; milk in 200 ml and 500ml Fino pack fulfils basic consumer requirements of safety and hygiene at an affordable cost. Meeting the consumer need for long-life milk, the multi-layered pack can be stored in ambient conditions.\r\n</p><p>Available in 200 ml and 500 ml pouch made of a seven layer film with polyethylene, aluminum foil and paper board.\r\n</p><p>180 Days when sealed and stored at ambient room temperatures away from sunlight in a cool and dry place.\r\n</p><p>4 days once opened, to be refrigerated between 4° C – 6° C.\r\n</p><p>For consumption as liquid milk, preparation of tea, coffee and milk based beverages.\r\n</p><p>Not intended for infant feeding.\r\n</p><p>The Fino pack has a shelf life of 180 days\r\n</p><p>Order on KaKebe Shoponline and receive at your door step, STAY SAFE.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 20000.00, 20000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lato Milk Liquid 12x500ml', 'Lato UHT Milk comes from cow’s milk that is treated to high temperatures and then rapidly cooled to kill the bacteria and spores in the milk.\r\nLato Flavoured milk is a nutritious drink made from UHT milk with added natural flavours. It is particularly enjoyed by kids as its great taste encourages consumption and provides them with the essential nutrients they need to grow.\r\nThe UHT treatment increases the shelf life of the milk, allowing consumers the convnience to store it in ambient conditions without the need for refrigeration.\r\nLato&nbsp; milk in 200 ml and 500ml Fino pack fulfils basic consumer requirements of safety and hygiene at an affordable cost. Meeting the consumer need for long-life milk, the multi-layered pack can be stored in ambient conditions.\r\nAvailable in 200 ml and 500 ml pouch made of a seven layer film with polyethylene, aluminum foil and paper board.\r\n180 Days when sealed and stored at ambient room temperatures away from sunlight in a cool and dry place.\r\n4 days once opened, to be refrigerated between 4° C – 6° C.\r\nFor consumption as liquid milk, preparation of tea, coffee and milk based beverages.\r\nNot intended for infant feeding.\r\nThe Fino pack has a shelf life of 180 days\r\nOrder on KaKebe Shoponline and receive at your door step, STAY SAFE.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '837', NULL, 'lato-milk-liquid-12x500ml--t7pai', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:07:28'),
(91, 'Lato Flavoured Milk 24x250 ml', 'admin', 9, 65, NULL, '907', '907', 'youtube', NULL, 'lato,milk', '<p>lato milk</p>', 40000.00, 40000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lato Flavoured Milk 24x250 ml', 'lato milk', '907', NULL, 'lato-flavoured-milk-24x250-ml--wee7o', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:40:07'),
(92, 'Victoria Hand Sanitizer 400ml', 'admin', 9, 5, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 15000.00, 15000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Victoria-Hand-Sanitizer-400ml-6gsaY', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:27:28'),
(93, 'Habari Iodated Edible Table Salt 500g', 'admin', 9, 5, NULL, '863', '863', 'youtube', NULL, 'Salt,Iodate salt,Addible Salt', '<p>Habari Iodated Edible Salt, Table Salt - White\r\n</p><p>“Habari! My name is Habari. I enjoy hanging out with all kinds of food mainly cos I get along well with all of them. Perfect for cooking and table salt applications. \r\n</p><p>Select from a wide range of Unique products on KaKebe Shop online and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.</p>', 500.00, 500.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Habari Iodated Edible Table Salt 500g', 'Habari Iodated Edible Salt, Table Salt - White\r\n“Habari! My name is Habari. I enjoy hanging out with all kinds of food mainly cos I get along well with all of them. Perfect for cooking and table salt applications. \r\nSelect from a wide range of Unique products on KaKebe Shop online and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.', '863', NULL, 'habari-iodated-edible-table-salt-500g-uzsvc', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:33:41'),
(94, 'Pampers Pants Extra absorb channels 6-11kg size 3', 'admin', 9, 5, NULL, '865', '865', 'youtube', NULL, 'Pamp,Pampers,Pamper Pant', '<p>A great night\'s sleep means a good morning mood. Introducing new easy put-on Pampers pants for boys and girls.  Order your Pampers Pants – in a Great Value Pack from KaKebe Shop online and have it delivered straight at your doorstep.</p>', 7000.00, 7000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Pampers Pants Extra absorb channels 6-11kg size 3', 'A great night\'s sleep means a good morning mood. Introducing new easy put-on Pampers pants for boys and girls.  Order your Pampers Pants – in a Great Value Pack from KaKebe Shop online and have it delivered straight at your doorstep.', '865', NULL, 'pampers-pants-extra-absorb-channels-6-11kg-size-3-9tqzm', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:46:36'),
(95, 'Billa Spaghetti 250g', 'admin', 9, 5, NULL, '864', '864', 'youtube', NULL, 'billa,spaghetti', NULL, 1000.00, 1000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Billa Spaghetti 250g', 'Billa Spaghetti 250g', '864', NULL, 'billa-spaghetti-250g-rckgo', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:39:08'),
(96, 'Dabur Herbel natural toothpaste 150g', 'admin', 9, 5, NULL, '871', '871', 'youtube', NULL, 'Herbal Toothpaste,Dabur,Black Seeds', '<p>FLUORIDE FREE: Black Seed herbal toothpaste is a complete herbal oral and dental care necessity for your morning routine, Crafted with rich natural vegan ingredients for a natural alternative to commercial toothpastes\r\n</p><p>Multiple Benefits under herbal protection with key ingredients like Nigella Sativa ginger lemon sea salt grapefruit rose hip resin licorice olive oil and more all pack edged in a fine natural toothpaste tooth paste. It can  be used by both kids and adults where it also promotes health gums, fresh breath, whitening and also takes care for the sensitivity in the teeth.its a naturally herbal toothpaste that is made out of black seed or mostly known as black cummin plant  that is widely known world wide.\r\n</p><p>Many of us already look to fill our homes with organic foods and natural skincare products, and why not do the same for our teeth? Making the switch to organic and natural toothpastes means fewer chemicals and additives, and more natural whiteners and essential oils for minty fresh breath. We’ve highlighted 11 organic, natural, and fluoride-free toothpastes that are keeping you and your family cavity-free and clean all day. Whether you have a picky baby or sensitive gums, these toothpastes and toothpowders are sure to be gentle, refreshing, and loved by all.\r\n</p><p>Dabur Herb\'l toothpaste is enriched with natural ingredients like Blackseed oil and teatree oil that has natural anti bacterial properties.</p>', 1000.00, 1000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Dabur Herbel natural toothpaste 150g', 'FLUORIDE FREE: Black Seed herbal toothpaste is a complete herbal oral and dental care necessity for your morning routine, Crafted with rich natural vegan ingredients for a natural alternative to commercial toothpastes\r\nMultiple Benefits under herbal protection with key ingredients like Nigella Sativa ginger lemon sea salt grapefruit rose hip resin licorice olive oil and more all pack edged in a fine natural toothpaste tooth paste. It can  be used by both kids and adults where it also promotes health gums, fresh breath, whitening and also takes care for the sensitivity in the teeth.its a naturally herbal toothpaste that is made out of black seed or mostly known as black cummin plant  that is widely known world wide.\r\nMany of us already look to fill our homes with organic foods and natural skincare products, and why not do the same for our teeth? Making the switch to organic and natural toothpastes means fewer chemicals and additives, and more natural whiteners and essential oils for minty fresh breath. We’ve highlighted 11 organic, natural, and fluoride-free toothpastes that are keeping you and your family cavity-free and clean all day. Whether you have a picky baby or sensitive gums, these toothpastes and toothpowders are sure to be gentle, refreshing, and loved by all.\r\nDabur Herb\'l toothpaste is enriched with natural ingredients like Blackseed oil and teatree oil that has natural anti bacterial properties.', '871', NULL, 'dabur-herbel-natural-toothpaste-150g-ptn3x', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:54:22'),
(97, 'Lucid Fans FS40-1102R', 'admin', 9, 21, NULL, '872', '872', 'youtube', NULL, 'fan,electric fan,lucid', '<p>The Lucid Fun Is Powerful And Designed With A Quiet Breeze. It Is Also Designed with 5 blade Wings. The fan provides more powerful but quiet breeze, which can satisfy your needs. And the soundless breeze is perfect for indoor use, which can not only keep you cool, but also makes an infant sleep peacefully.\r\n</p><p>Oscillation stand fan: The fan has an oscillation feature which can distribute the air around the room and make the whole room cool.The 3 Wind Speed Mode settings Range from low to high level, you can easily choose suitable wind speeds to meet your different needs. And the 3 modes(normal, natural, sleeping) can make you get optimum comfort at different place in any time.\r\n</p><p>Adjustable Height and Swing Fan: The height of the fan can be adjusted from 44″ – 53″, getting air circulating to the spot where it is needed most. And the swing fan expands the cooling area, which is perfect for large space with more people.\r\n</p><p>The Fan Can Easily Be Operated Using A Remote Control To Choose The Different Speed Modes, Change The Oscillation Angels Or Turn</p>', 160000.00, 160000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lucid Fans FS40-1102R', 'The Lucid Fun Is Powerful And Designed With A Quiet Breeze. It Is Also Designed with 5 blade Wings. The fan provides more powerful but quiet breeze, which can satisfy your needs. And the soundless breeze is perfect for indoor use, which can not only keep you cool, but also makes an infant sleep peacefully.\r\nOscillation stand fan: The fan has an oscillation feature which can distribute the air around the room and make the whole room cool.The 3 Wind Speed Mode settings Range from low to high level, you can easily choose suitable wind speeds to meet your different needs. And the 3 modes(normal, natural, sleeping) can make you get optimum comfort at different place in any time.\r\nAdjustable Height and Swing Fan: The height of the fan can be adjusted from 44″ – 53″, getting air circulating to the spot where it is needed most. And the swing fan expands the cooling area, which is perfect for large space with more people.\r\nThe Fan Can Easily Be Operated Using A Remote Control To Choose The Different Speed Modes, Change The Oscillation Angels Or Turn', '872', NULL, 'lucid-fans-fs40-1102r-38luh', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 20:44:45'),
(98, 'Lucid Stainless Kettle LKT170655', 'admin', 9, 21, NULL, '879', '879', 'youtube', NULL, 'lucid,electric kettle', '<p>The Electric Kettle has been designed for your convenience and safety. The electric kettle has other amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.</p>', 110000.00, 110000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lucid Stainless Kettle LKT170655', 'The Electric Kettle has been designed for your convenience and safety. The electric kettle has other amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.', '879', NULL, 'lucid-stainless-kettle-lkt170655-1kfj7', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 15:38:03'),
(99, 'Lucid Dry Iron LM-1881', 'admin', 9, 21, NULL, '836', '836', 'youtube', NULL, 'lucid,flat iron', '<p>Wearing wrinkled clothes is the quickest way to announce that you are not paying attention to details, thus this  dry iron is there for you. A perfect hold due to low weight, you are sure to spend pleasant moments with this iron. Have a crinkle free day with handy light weight dry iron at ease.</p>', 40000.00, 40000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lucid Dry Iron LM-1881', 'Wearing wrinkled clothes is the quickest way to announce that you are not paying attention to details, thus this  dry iron is there for you. A perfect hold due to low weight, you are sure to spend pleasant moments with this iron. Have a crinkle free day with handy light weight dry iron at ease.', '836', NULL, 'lucid-dry-iron-lm-1881-zkrgy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:17:06'),
(100, 'Lucid Multi-function Blender LBMG19', 'admin', 9, 21, NULL, '847', '847', 'youtube', NULL, 'blender,electric blender,lucid', '<p>&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar..&nbsp;</p>', 130000.00, 130000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Lucid Multi-function Blender LBMG19', '&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar..&nbsp;', '847', NULL, 'lucid-multi-function-blender-lbmg19--fosms', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:14:44'),
(101, '2 in 1 Lucid Blender', 'admin', 9, 21, NULL, '853', '853', 'youtube', NULL, 'blender,electric blender,grinder,lucid', '<p>&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance.&nbsp;</p>', 110000.00, 11000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, '2 in 1 Lucid Blender', '&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance.&nbsp;', '853', NULL, '2-in-1-lucid-blender--tawcm', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 20:49:13'),
(102, 'Sunvita Cooking Oil 5l', 'admin', 9, 5, NULL, '841', '841', 'youtube', NULL, 'cooking oil,sun vita', '<p>Cooking Oil -1Litre.This is typically a blend of many different refined oils, is neutral-tasting and smelling. Want to get crispy-skinned fish or perfectly golden scallops?, this oil\'s your deal. The   Oil is a refined and fortified oil made for the perfect result of cooking. It will help you make the perfect meal for you and your family to enjoy. It is used for all purposes of frying, baking. Get this for yourself and enjoy nicely fried foods with your family. \r\n</p><p>Select from a wide range of Unique products on KaKebe and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.</p>', 40000.00, 40000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Sunvita Cooking Oil 5l', 'Cooking Oil -1Litre.This is typically a blend of many different refined oils, is neutral-tasting and smelling. Want to get crispy-skinned fish or perfectly golden scallops?, this oil\'s your deal. The   Oil is a refined and fortified oil made for the perfect result of cooking. It will help you make the perfect meal for you and your family to enjoy. It is used for all purposes of frying, baking. Get this for yourself and enjoy nicely fried foods with your family. \r\nSelect from a wide range of Unique products on KaKebe and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.', '841', NULL, 'sunvita-cooking-oil-5l-ky8ri', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:10:08'),
(103, 'Always Vaccum  Jug  2L TSC-30D', 'admin', 9, 21, NULL, '831,843', '831', 'youtube', NULL, 'always,jug,vaccum flask', '<p>Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\n</p><p>Take it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\n</p><p>Order onKakebe Uganda online and have it delivered to your door step\r\n</p><p>This vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 2.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\n</p><p>Stainless Steel Professional Thermos Flask\r\n</p><p>A double layer of stainless steel – keeps warm and doesn’t break.\r\n</p><p>The body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\n</p><p>Double-walled vacuum flask, stainless steel, with attached lid. Holds 2.0 Litres Suitable for dishwasher.\r\n</p><p>For more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.\r\n</p><p><br></p><p>\r\n</p>', 55000.00, 55000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Always Vaccum  Jug  2L TSC-30D', 'Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\nTake it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\nOrder onKakebe Uganda online and have it delivered to your door step\r\nThis vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 2.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\nStainless Steel Professional Thermos Flask\r\nA double layer of stainless steel – keeps warm and doesn’t break.\r\nThe body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\nDouble-walled vacuum flask, stainless steel, with attached lid. Holds 2.0 Litres Suitable for dishwasher.\r\nFor more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.', '831', NULL, 'always-vaccum--jug--2l-tsc-30d--4dxdw', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:01:11'),
(104, 'Always Vaccum  Jug  3L TSC-30D', 'admin', 9, 21, NULL, '840', '840', 'youtube', NULL, 'jug,always,vaccum flask,flask', '<p>Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\n</p><p>Take it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\n</p><p>Order on Kakebe Uganda online and have it delivered to your door step\r\n</p><p>This vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 3.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\n</p><p>Stainless Steel Professional Thermos Flask\r\n</p><p>A double layer of stainless steel – keeps warm and doesn’t break.\r\n</p><p>The body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\n</p><p>Double-walled vacuum flask, stainless steel, with attached lid. Holds 3.0 Litres Suitable for dishwasher.\r\n</p><p>For more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.\r\n</p><p><br></p><p>\r\n</p>', 65000.00, 65000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Always Vaccum  Jug  3L TSC-30D', 'Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\nTake it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\nOrder on Kakebe Uganda online and have it delivered to your door step\r\nThis vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 3.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\nStainless Steel Professional Thermos Flask\r\nA double layer of stainless steel – keeps warm and doesn’t break.\r\nThe body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\nDouble-walled vacuum flask, stainless steel, with attached lid. Holds 3.0 Litres Suitable for dishwasher.\r\nFor more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.\r\n\r\n', '840', NULL, 'always-vaccum--jug--3l-tsc-30d--nflda', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 13:56:07'),
(105, 'Phillips Flat Iron No. 1', 'admin', 9, 21, NULL, '845,851', '851', 'youtube', NULL, 'philips,flat iron', '<p>The Philips&nbsp; Dry Iron is what you need to keep tidy. This iconic Philips Iron helps to speed up your ironing‎,‎ gliding on all fabric types smoothly and easily‎.‎ The pointed tip also guarantees that you are able to access and straighten out all the wrinkles on your clothes‎,‎ no matter how hard‎‐to‎‐reach it may be.\r\n</p><p>Why not order this today on Golden Leaf Store.Philips&nbsp; Dry Iron is coated with a special non-stick layer for good gliding performance on all fabrics. The indicator light goes off when the required ironing temperature has been reached.</p><p>\r\n</p>', 75000.00, 75000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Phillips Flat Iron No. 1', 'The Philips&nbsp; Dry Iron is what you need to keep tidy. This iconic Philips Iron helps to speed up your ironing‎,‎ gliding on all fabric types smoothly and easily‎.‎ The pointed tip also guarantees that you are able to access and straighten out all the wrinkles on your clothes‎,‎ no matter how hard‎‐to‎‐reach it may be.\r\nWhy not order this today on Golden Leaf Store.Philips&nbsp; Dry Iron is coated with a special non-stick layer for good gliding performance on all fabrics. The indicator light goes off when the required ironing temperature has been reached.\r\n', '851', NULL, 'phillips-flat-iron-no-1-d78jz', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:33:12'),
(106, 'Juice Blender with Grinder BS-1156', 'admin', 9, 21, NULL, '867,866', '866', 'youtube', NULL, 'BLENDER,electric blender', '<p>Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance. \r\n</p><p>The pulse function gives you complete control as to how long you wish to run the blender on high-speed and also assists in the auto-clean function when used with a little warm water. We emphasize that the auto-clean feature is only useful for a quick clean-up but a regular cleaning will still be required on occasion for a more effective job.</p>', 160000.00, 160000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Juice Blender with Grinder BS-1156', 'Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance. \r\nThe pulse function gives you complete control as to how long you wish to run the blender on high-speed and also assists in the auto-clean function when used with a little warm water. We emphasize that the auto-clean feature is only useful for a quick clean-up but a regular cleaning will still be required on occasion for a more effective job.', '866', NULL, 'juice-blender-with-grinder-bs-1156-yczj3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:45:39'),
(107, 'Scalet Water boiler', 'admin', 9, 21, NULL, '846,849', '849', 'youtube', NULL, 'scarlet,water boiler,electric kettle', '<p>The Electric Kettle has been designed for your convenience and safety. The electric kettle has amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.\r\n</p><p><br></p>', 37000.00, 37000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Scalet Water boiler', 'The Electric Kettle has been designed for your convenience and safety. The electric kettle has amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.\r\n', '849', NULL, 'scalet-water-boiler--ullzs', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:30:41'),
(108, 'Supreme Posho 10kg ', 'admin', 9, 11, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 17000.00, 17000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Supreme-Posho-10kg--25C2I', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:27:25'),
(109, 'Supreme Posho 5kg ', 'admin', 9, 11, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 10000.00, 10000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Supreme-Posho-5kg--dqEMf', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(110, 'Starfry Cooking Oil 20 litres ', 'admin', 9, 67, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 150000.00, 150000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Starfry-Cooking-Oil-20-litres--YKf7R', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:27:38'),
(111, 'Starfry Cooking Oil10 litres ', 'admin', 9, 67, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 75000.00, 75000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Starfry-Cooking-Oil10-litres--A0IHS', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:28:06'),
(112, 'Starfry Cooking Oil17kg', 'admin', 9, 67, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 138000.00, 138000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Starfry-Cooking-Oil17kg-Ry97h', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:28:12'),
(113, 'Starfry Cooking Oil  8kg ', 'admin', 9, 67, 1, NULL, NULL, 'youtube', NULL, NULL, NULL, 68000.00, 68000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, 'pc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Starfry-Cooking-Oil--8kg--4crII', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:18:09', '2021-07-19 14:28:21'),
(114, 'itel it2163', 'admin', 9, 41, 16, '733', '733', 'youtube', NULL, 'Itel,phone,button phone', '<p>Strong phone frame</p><p>comes with charger</p><p>7 days batteries</p>', 32000.00, 32000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it2163', 'Strong phone framecomes with charger7 days batteries', '733', NULL, 'itel-6bjko', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:43:31'),
(115, 'itel it2160', 'admin', 9, 41, 16, '729', '729', 'youtube', NULL, 'itel,phone,mobile phone,button phone', '<p>This itel it2160 comes with charger and its battery is long lasting and it can take to about 7 days with power</p>', 33000.00, 33000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it2160', 'This itel it2160 comes with charger and its battery is long lasting and it can take to about 7 days with power', '729', NULL, 'itel-ksanc', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 18:12:50'),
(116, 'itel it2173', 'admin', 9, 41, 16, '732', '732', 'youtube', NULL, 'itel,mobile phone,button phone,phone', '<p>Strong frame&nbsp;</p><p>comes with charger&nbsp;</p><p>long lasting batteries</p>', 35000.00, 35000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'itel it2173', 'Strong frame&nbsp;comes with charger&nbsp;long lasting batteries', '732', NULL, 'itel-iexbr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-20 03:10:27'),
(117, 'itel it5606', 'admin', 9, 41, 16, '724', '724', 'youtube', NULL, 'itel,mobile phone,button phone,knobs,phone', '<p>strong Frame</p><p>come with batteries</p><p>long lasting batteries</p>', 45000.00, 45000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5606', 'strong Framecome with batterieslong lasting batteries', '724', NULL, 'itel-2a71i', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 13:33:07'),
(118, 'itel it5081', 'admin', 9, 41, 16, '719', '719', 'youtube', NULL, 'itel it5081,itel,phones', '<p>Itel5081 allows you to insert and use up to 2 Sim Cards in a single phone. Easily connect to different mobile networks and stay in touch with your loved ones. The it5081 makes calling much more comfortable and stress-free.More fun through Real Java\r\n</p><p>The it5081 gives you access to a number of amazing apps and games by means of its Real Java feature. Real Java makes it5615 compatible with multiple apps that have a Java version, which means that a great number of unexplored games and apps are no longer out of your reach.\r\n</p><p>With the internet browser Opera Mini, which comes preinstalled on the it5081, you can enjoy the Internet to the fullest without straining your data volume, because this fast, secure browser can not only block advertising or protect your privacy, but also save tons of data by streamlining your searches and downloads to make them as efficient as possible.Modelit5081</p>', 50000.00, 50000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5081', 'Itel5081 allows you to insert and use up to 2 Sim Cards in a single phone. Easily connect to different mobile networks and stay in touch with your loved ones. The it5081 makes calling much more comfortable and stress-free.More fun through Real Java\r\nThe it5081 gives you access to a number of amazing apps and games by means of its Real Java feature. Real Java makes it5615 compatible with multiple apps that have a Java version, which means that a great number of unexplored games and apps are no longer out of your reach.\r\nWith the internet browser Opera Mini, which comes preinstalled on the it5081, you can enjoy the Internet to the fullest without straining your data volume, because this fast, secure browser can not only block advertising or protect your privacy, but also save tons of data by streamlining your searches and downloads to make them as efficient as possible.Modelit5081', '719', NULL, 'itel-vyllo', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 13:34:18'),
(119, 'itel it5260', 'admin', 9, 41, 16, '725', '725', 'youtube', NULL, 'itel it5260,itel,phones', '<p>he it5260 features itel’s latest King voice feature, an innovative text to speech application that works as a personal interpreter letting you navigate your it5260 with the help of a voice assistant. So now, whenever you receive a call or navigate the it5260 menu, the phone can read the incoming number to you and help you find what you need in the menu.\r\n</p><p><br></p><p><br></p>', 55000.00, 55000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5260', 'he it5260 features itel’s latest King voice feature, an innovative text to speech application that works as a personal interpreter letting you navigate your it5260 with the help of a voice assistant. So now, whenever you receive a call or navigate the it5260 menu, the phone can read the incoming number to you and help you find what you need in the menu.', '725', NULL, 'itel-g3raf', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 13:43:00');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(120, 'itel it5615m', 'admin', 9, 41, 16, '730', '730', 'youtube', NULL, 'itel it5615m,itel,phone', '<p>Expand Your Phone Usage Time with the 2500mAh Battery and Super Battery Mode\r\n</p><p>Using the long-lasting 2500mAh battery, enjoy over 36 hours of phone calls and up to 55 days of phone usage. For even longer battery life and continued phone usage before your next charge, enter super battery mode.\r\n</p><p>The Spotlight Torch Provides the Ultimate Level of Brightness\r\n</p><p>With the it5615 feature phone’s illuminating LED torch, never be left in the dark again. The bright LED light serves as an effective flashlight to help you see more clearly. It can also be utilized as a reminder light whenever a call is received.\r\n</p><p>Tune in to Wireless FM Without Needing Headphones or Earbuds\r\n</p><p>Keep up with the greatest hits and the most current events while listening to Wireless FM. Stay connected with the latest news and media anywhere you go without ever needing to use earphones to tune in.\r\n</p><p>Frequently Used Apps Like Facebook Are Already Built-In\r\n</p><p>Stay online and network with friends and family through built-in social media apps such as Facebook. Keep up to date on the latest news and updates from your social circle and interact with them in real-time</p>', 57000.00, 57000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5615m', 'Expand Your Phone Usage Time with the 2500mAh Battery and Super Battery Mode\r\nUsing the long-lasting 2500mAh battery, enjoy over 36 hours of phone calls and up to 55 days of phone usage. For even longer battery life and continued phone usage before your next charge, enter super battery mode.\r\nThe Spotlight Torch Provides the Ultimate Level of Brightness\r\nWith the it5615 feature phone’s illuminating LED torch, never be left in the dark again. The bright LED light serves as an effective flashlight to help you see more clearly. It can also be utilized as a reminder light whenever a call is received.\r\nTune in to Wireless FM Without Needing Headphones or Earbuds\r\nKeep up with the greatest hits and the most current events while listening to Wireless FM. Stay connected with the latest news and media anywhere you go without ever needing to use earphones to tune in.\r\nFrequently Used Apps Like Facebook Are Already Built-In\r\nStay online and network with friends and family through built-in social media apps such as Facebook. Keep up to date on the latest news and updates from your social circle and interact with them in real-time', '730', NULL, 'itel-44ii1', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 13:47:05'),
(121, 'itel it5360', 'admin', 9, 41, 16, '711', '711', 'youtube', NULL, 'itel it5360,itel,phone', '<p>The Itel it5360 is just perfect! Its slim build and portable design make it easy to carry around and the 64MB memory can be expanded to 32GB via microSD. Take nice pictures with  rear camera with flash. The 1900mAh battery lasts through several hours of heavy use.\r\n</p><p>Ultra Slim Design\r\n</p><p>Not only does the itel it5360 have a nice shape, but it also features a silky sheen, thanks to its unique design.\r\n</p><p>2.8\" Big Screen\r\n</p><p>The itel it5360 2.8” screen lets you easily navigate all of the phone’s functions. It is ideal for capturing and viewing pictures, streaming video and for quickly finding useful information\r\n</p><p>Model itel 5360  has Display2.8\'\' Big Screen Camera Rear Camera 1.3MP with Flash Memory64MB ROM + 64MB RAM, up to 32GB\r\n</p><p>Battery Capacity1900mAh</p><p>\r\n</p>', 60000.00, 60000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5360', 'The Itel it5360 is just perfect! Its slim build and portable design make it easy to carry around and the 64MB memory can be expanded to 32GB via microSD. Take nice pictures with  rear camera with flash. The 1900mAh battery lasts through several hours of heavy use.\r\nUltra Slim Design\r\nNot only does the itel it5360 have a nice shape, but it also features a silky sheen, thanks to its unique design.\r\n2.8\" Big Screen\r\nThe itel it5360 2.8” screen lets you easily navigate all of the phone’s functions. It is ideal for capturing and viewing pictures, streaming video and for quickly finding useful information\r\nModel itel 5360  has Display2.8\'\' Big Screen Camera Rear Camera 1.3MP with Flash Memory64MB ROM + 64MB RAM, up to 32GB\r\nBattery Capacity1900mAh', '711', NULL, 'itel-bt4tv', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 13:47:58'),
(122, 'itel it5626', 'admin', 9, 41, 16, '727', '727', 'youtube', NULL, 'itel it5626,itel,phone', '<p>The iTel IT5626 has almost same specs as the iTel Power 700. It is a feature mobile phone and come with a 2500mAh battery that can last about 5 to 8 working days. It has a 2.8-inches screen and measures 139.6 x 57.8 x 14.7mm and come with four bright LED light overhead the phone</p><p>On the inside, the iTel IT5626 is got the UNiSOC SC6531C CPU pegged with 8MB RAM and 8MB ROM. The device support Java+ Opera mini, and come with 2G network with 900/1800 MHz band. It can store upto 2000 contacts and 500 messages and come with 0.08MP lens at the back.</p>', 70000.00, 70000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it5626', 'The iTel IT5626 has almost same specs as the iTel Power 700. It is a feature mobile phone and come with a 2500mAh battery that can last about 5 to 8 working days. It has a 2.8-inches screen and measures 139.6 x 57.8 x 14.7mm and come with four bright LED light overhead the phoneOn the inside, the iTel IT5626 is got the UNiSOC SC6531C CPU pegged with 8MB RAM and 8MB ROM. The device support Java+ Opera mini, and come with 2G network with 900/1800 MHz band. It can store upto 2000 contacts and 500 messages and come with 0.08MP lens at the back.', '727', NULL, 'itel-qvcxi', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:44:00'),
(123, 'itel it6350', 'admin', 9, 41, 16, '714', '714', 'youtube', NULL, 'itel it6350,itel,phone', '<p>itel it6350</p><p>long-lasting battery<br><br></p>', 83000.00, 83000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel it6350', 'itel it6350', '714', NULL, 'itel-qbvbq', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 18:12:57'),
(124, 'itel A14', 'admin', 9, 41, 16, '735', '735', 'youtube', NULL, 'itel A14,itel,smart phone', '<p>The itel A14 combines a user-friendly interface with innovative technology and a sleek design in one handy device. A 4 inch android smartphone that will satisfy your daily mobile computing needs.It has a 1.3GHz quad core processor and is equipped with a 2MP back camera and front camera 0.3mp that lets you take lovely pictures with friends and family.\r\n</p><p>Order for it online on Jumia and have it delivered to your doorstep. \r\n</p><p>Impressive View\r\n</p><p>The itel A14 Quad Core Phone has an impressive 4 inch display at an impressive resolution for vibrant and rich colour viewing. You will be able to view pictures and text in high definition whether you are indoors or outdoors. \r\n</p><p>Awesome Processor\r\n</p><p>The quad core processor of this phone will help to support multitasking and a seamless performance. The 1.3GHz processing speed will also allow you stream high definition content from the internet with ease.\r\n</p><p>Display\r\n</p><p>4.0\'\' screen\r\n</p><p>Resolution: 480*800\r\n</p><p>Operating System\r\n</p><p>Android 8.1 ( GO edition)\r\n</p><p>Processor\r\n</p><p>Mediatek 6572\r\n</p><p>Camera\r\n</p><p>Back 2.0 MP\r\n</p><p>Front 0.3 MP\r\n</p><p>Memory\r\n</p><p>8GB HDD\r\n</p><p>512MB RAM\r\n</p><p>up to 32GB flash\r\n</p><p>Connectivity\r\n</p><p>WiFi hotspot\r\n</p><p>Bluetooth\r\n</p><p>USB port\r\n</p><p>Earphone\r\n</p><p>Messaging\r\n</p><p>WhatsApp\r\n</p><p>Palmchat\r\n</p><p>Facebook\r\n</p><p>hotspot\r\n</p><p>Battery \r\n</p><p>Capacity: 1500mAh</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 130000.00, 130000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel A14', 'Itel A14 is a device run on Android 8.1 (Oreo,GO Edition) with 512MB RAM + 8GB ROM,1CARD', '735', NULL, 'itel-2zjv5', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:43:58'),
(125, 'itel A14 Plus', 'admin', 9, 41, 16, '712', '712', 'youtube', NULL, 'itel A14 Plus,itel,smart phone', '<p>Super Sleek &amp; Stylish DesignThe A14 Plus adopts an elegant and stylish design that is not only modern and trendy but practical and comfortable too! With a curved edge design and a 4” size, this mobile fits perfectly into the palm of one hand.</p><p>Enjoy All Day Usage with the 2500mAh BatteryThe A14 Plus has a 2500mAh big battery that can last for 2-3 days on one single charge! With an 60% increased battery size from the 1500mAh battery, this mobile allows you to enjoy and experience life with no worries!</p><p>A Bigger 16GB MemoryEnjoy 16GB ROM + 512MB RAM with the A14 Plus! Compared with other mobile phones of a similar price range, the A14 Plus has double the storage to ensure you can save all your favourite photos, music and videos.</p><p>Experience and Enjoy Dual FlashCapture natural and charming selfies with our A14 Plus! With Dual Flash and a soft front flash design, this mobile takes stunning selfies every time without hurting your eyes!</p>', 150000.00, 150000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel A14 Plus', 'iTel A14 Plus · Display: 4.0 inch 480 x 854 pixels WVGA display · Camera: 2 MP Back / 0.3 MP front · Memory: 512MB RAM / 16GB ROM · Platform: MT6580 CPU', '712', NULL, 'itel-co8tr', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:45:55'),
(126, 'itel A16', 'admin', 9, 41, 16, '709', '709', 'youtube', NULL, 'itel A16,itel,smart phone', '<p>The iTel A16 is very similar in design and specifications with the iTel A16 smartphone. And just like the A16, this unit is very cost effective and budget friendly phone from iTel mobile. The device features a 5-inch display with a screen resolution of 480 x 854 pixels and runs on Android v 8.1 (Oreo: Go Edition).\r\n</p><p>Specs wise. the device is powered by a Quad core, 1.3 GHz processor paired with 1 GB of RAM and an expandable 8GB internal storage. You get a 2050 mAh battery juice and just 2MP front and back camera sensors. Other sensors include Accelerometer and Face unlock features</p><p>\r\n</p>', 165000.00, 165000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel A16', 'itel A16 · Processor: Spreadtrum SC7731E · RAM: 512 MB · Storage: 8 GB · Display: 5 in, TN, 480 x 854 pixels, 24 bit · Camera: 2592 x 1944 pixels, 1280 x 720 pixels', '709', NULL, 'itel-gmone', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:43:58'),
(127, 'Itel A35 16GB ROM 1GB RAM', 'admin', 9, 41, 16, '706', '706', 'youtube', NULL, 'Itel A35 16GB ROM 1GB RAM,itel,smart phone', '<p>Better Performance with Android™ 10 (Go edition)\r\n</p><p>With system optimization for entry-level smartphones, the latest Android™ 10 (Go edition) operating system provides 3x more available storage out of the box with fewer pre-installed and much lighter apps.\r\n</p><p>Enjoy a Better and Bigger View with the 5.0”DisplayWith its 5.0” big screen display, A35 offers you an impressive viewing experience when you are watching video or reading news.\r\n</p><p><br></p>', 185000.00, 185000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Itel A35 16GB ROM 1GB RAM', 'Better Performance with Android™ 10 (Go edition)\r\nWith system optimization for entry-level smartphones, the latest Android™ 10 (Go edition) operating system provides 3x more available storage out of the box with fewer pre-installed and much lighter apps.\r\nEnjoy a Better and Bigger View with the 5.0”DisplayWith its 5.0” big screen display, A35 offers you an impressive viewing experience when you are watching video or reading news.', '706', NULL, 'itel-tieke', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 18:13:00'),
(128, 'Itel P15 5.0\" HD Screen, 16GB ROM + 1GB RAM, Android 9', 'admin', 9, 41, 16, '734', '734', 'youtube', NULL, 'Itel P15 5.0\" HD Screen,16GB ROM + 1GB RAM,Android 9,itel,smart phone', '<p>Itel P15 - 5 Inch, 16GB ROM, 1GB RAM, Android 9 Pie(Go edition), 4000mAh, 5MP + 5MP Camera with Front FlashThe specialty of itel P15 is its 4000 mAh big battery. You will hardly ever find such a powerful battery in this price range. 5-inches Full-View display is trendy and large compared to mostly 5-inch displays from other brands. Performance is reasonable and Android Go will further optimize it. You can\'t expect a better performance in this budget.  Again, there are very few phones in this price range with their battery and design as good as the P15. Moreover, the dual 5 MP autofocus back camera is also pretty good for the price. Overall, this smartphone can still be a fine choice for you.\r\n</p><p>Specifications\r\n</p><p>Network Scope 2G, 3G\r\n</p><p>Battery Type &amp; Performance 4000 mAh\r\n</p><p>Weight 0.1kg\r\n</p><p>Camera Factors (Back) LED Flash, autofocus\r\n</p><p>Camera Resolution (Back) Dual 5 Megapixel\r\n</p><p>Camera Resolution (Front) 5 Megapixel\r\n</p><p>Colors Available Champagne Gold, Piano Black\r\n</p><p>Display Size &amp; Resolution 5.0 inches, FWVGA 480 x 960 pixels, (168 ppi)\r\n</p><p>Display Type 18:9 ratio Full-View Touchscreen\r\n</p><p>Graphic Processing Unit (GPU) Mali 400\r\n</p><p>Memory Card Slot MicroSD, up to 32 GB\r\n</p><p>Operating System Android 9 Pie (Go Edition)\r\n</p><p>Processor Quad-Core, 1.3 GHz\r\n</p><p>RAM 2 GB\r\n</p><p>ROM 16 GB\r\n</p><p>Sensors Accelerometer\r\n</p><p>SIM Card Type Dual SIM (Nano-SIM, dual stand-by)\r\n</p><p>USB MicroUSB v2.0\r\n</p><p>Video Recording Yes\r\n</p><p>Wireless LAN Yes\r\n</p><p>Other Features - Bluetooth, GPS, A-GPS, MP3, MP4, Radio, GPRS, Edge, Multitouch, Loudspeaker\r\n</p><p><br></p><p>\r\n</p><p>\r\n</p>', 222000.00, 222000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel P15', 'Itel P15 5.0\" HD Screen, 16GB ROM + 1GB RAM, Android 9', '734', NULL, 'itel-dmm6x', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:44:14'),
(129, 'Itel A37 – 5.71inches 16GB 1GB RAM', 'admin', 9, 41, 16, '723', '723', 'youtube', NULL, 'Itel A37 – 5.71inches 16GB 1GB RAM,itel,smart phone', '<p>Given that the itel A37 is the successor to the A36, it makes perfect sense to compare the two and see what is new and if upgrading to the newer model is worth it. Both are pretty good phones but at the end of the day you have to choose one and in this case it should be one that ticks all the right boxes for you.\r\n</p><p>In this comparison review, I will highlight some of the key things you get on the new itel A37 and get to see if the upgrade is worth it.\r\n</p><p>The itel A37 comes with a new design concept and a waterdrop notch that houses the front facing camera. The waterdrop notch wasn’t even available on the A36 and gives the phone a screen to body ratio of 84.7%, far higher than the same price phones in the industry.\r\n</p><p>With the waterdrop notch, we are getting a much cleaner look that itel says brings “a natural beauty as well as a gentle touch experience on usage.”\r\n</p><p>Big DisplayAs for the display, the itel A37 comes with a bigger 5.7-inch IPS LCD display with a resolution of 1280 by 720 pixels. With a bigger display, media consumption is pleasant compared to what the itel A36 offered. You get to enjoy the sharper display as well as more vivid photos that add to the overall good experience.\r\n</p><p>The display is not just big but has color rendering effect which is richer and makes the photos and videos pop appearing more vivid and real.\r\n</p><p>Still on the display, there is the eye care mode that lets the screen become soft and warm and this helps reduce strain on your eyes and thus help you fall asleep faster even when you use the phone just before bedtime. Soft lightness is also important for those who spend so much time on their phones as it gives better protection to the eyes.\r\n</p><p>Hardware and ProcessorThe itel A37 is powered by a 1.3 GHz quad-core processor that the company has paired with 1GB of RAM and 16GB of storage space. Performance is good with this and might be better than most other smartphones within its price. The bigger storage space also allows you to save more photos and create memories.\r\n</p><p>The phone also comes with the FREEZER app that ensures that the apps that you do not use regularly are kept in the freezer until you need to use them. With this, the phone will not be slowed down by too many apps as is the case with most other phones. This is usually one of the causes of bad experiences among smartphone users.</p><p>\r\n</p>', 224000.00, 224000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel A37', 'Itel A37 – 5.71inches 16GB 1GB RAM', '723', NULL, 'itel-ocb8p', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:44:14'),
(130, 'itel A56 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery', 'admin', 9, 41, 16, '707', '707', 'youtube', NULL, 'itel A56 1 GB RAM,16 GB inbuilt · 4000 mAh Battery,itel,smart phone', '<p>The iTel A56 is a low-end smartphone from iTel Mobile. The major selling point of this new little guy is the presence of a large 4000mAh battery. This is same battery capacity used in recent iTel phones, including the iTel P15. But unlike the P15, the A56 comes in a 6.0-inch display with 480 x 960 pixels resolution.\r\n</p><p><br></p>', 245000.00, 245000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'itel A56', 'itel A56 · Dual Sim, 3G, 4G, VoLTE, Wi-Fi · Quad Core, 1.3 GHz Processor · 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery.', '707', NULL, 'itel-0dj1e', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:44:15'),
(131, 'itel A56 Pro 2 GB of RAM and 32 GB of storage', 'admin', 9, 41, 16, '722', '722', 'youtube', NULL, 'itel A56 Pro 2 GB of RAM and 32 GB of storage,a56,itel,smart phone', '<p>Bigger screen for a better experience Submerge in the wonders of the A56 Pro’s new 6\" IPS Full Screen Display. The 18:9 aspect ratio allows you to immerse yourself completely in movies and games. Even under bright sunlight the A56 Pro’s 500 nits super bright display and IPS panel will deliver the best viewing experience possible.\r\n</p><p>Longer duration battery for more freedom Powered by a massive 4000 mAh battery, along with Android’s smart energy-saving chipset, the A56 Pro will never let you down. It can support up to 21 hours of continuous calls, 54 hours of music playback and 8 hours of video playback. This gives you enough energy for a long day\r\n</p><p>Extra big memory for extra big files Never worry about storage. With its expanded memory, the A56 Pro gives you all the space you need for your favorite photos, songs and movies.\r\n</p><p>Compact and slim design Discover a classy and elegant design. The A56 Pro incorporates a rear glass effect and a bright mirror frame with deep reflections and an elegant gradient effect. It’s resistant and slim uni body as well as its curved edge further make it easy to operate and to hold in one hand.\r\n</p><p>Keep your personal information safe with advanced facial recognition Equipped with an infrared light sensor and an infrared camera, facial unlocking is instantaneous and always successful, now even under low light conditions thanks to the Screen Fill Light technology. The face unlock feature is safe and convenient, as it prevents thieves from stealing your information.</p>', 285000.00, 285000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel A56 Pro', 'itel A56 Pro is a slightly souped up version, with a bump in RAM and internal memory. The A56 Pro has 2 GB of RAM and 32 GB of storage', '722', NULL, 'itel-dshan', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:44:15'),
(132, 'itel P36 ROM: 16GB · RAM: 1GB · REAR CAMERA: 8MP Dual', 'admin', 9, 41, 16, '721', '721', 'youtube', NULL, 'itel P36 ROM: 16GB · RAM: 1GB · REAR CAMERA: 8MP Dual,itel,smart phone', '<p>The iTel is the direct successor of iTel P36 model of last year. The new model come in a refreshed design than it predecessor, and offers newer Android OS out of the box. From the front, the phone sports a 6.5-inch HD+ display with 720 x 1600 pixels, and have same IPS panel with a notch above the screen.\r\n</p><p>On the inside, the new iTel is powered by a quad-core UNISOC SC7731E @1.3GHz, along with Mali-T820 MP1 GPU, 2GB RAM and 32GB of internal storage.\r\n</p><p>For the camera department, you are getting two lenses at the back of the phone, an 8 MP main snapper and a 0.3 MP depth sensing lens, while a single 8-megapixel selfie shooter is left in the notch upfront.\r\n</p><p>There is also a rear placed fingerprint scanner, AI FaceID and a slot for dual SIM cards. The device has a 5000mAh battery on the side, and available in Gradient Purple, Gradient Blue and Dark Blue colors, while Google Android 10 (Go Edition) runs out of the box</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 290000.00, 290000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel P36', 'iTel P36 Key Specs · DISPLAY: 6.5 HD+ Waterdrop Fullscreen. · OS: Android Pie (Go Edition). · ROM: 16GB · RAM: 1GB · REAR CAMERA: 8MP Dual', '721', NULL, 'itel-lexpx', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 14:01:28'),
(133, 'Prime Tab 1: Memory: 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', 'admin', 9, 41, 16, '705', '705', 'youtube', NULL, 'Prime Tab 1: Memory: 1GB Ram 32GB built-in storage,itel,smart phone', '<p>Set a Time Limit on App Usage Through the Preloaded Kid Zone AppProtect your kids’ eye by limiting their amount of continuous app usage through the Kid Zone App. This app helps keep kids from playing hours of non-stop gaming without resting in between.</p><p>16GB of ROM Provides Large Storage AvailabilitySave all your favorite content and media on your phone without worrying about running out of memory. 16GB of ROM provides you with plenty of room on your device to store all your photos, songs and videos.</p><p>Take Beautiful Selfies and Portraits on the 5.0MP Rear CameraUse the 5.0MP rear camera and the 2.0MP front camera to capture wonderful moments and memories in real-time. With the assistance of helpful features such as beauty mode, you can continue to take your photography skills to the next level.\r\n</p><p><br></p>', 300000.00, 300000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Prime Tab 1', 'Itel Prime Tab 1 specs · Display: 7.0-inch, IPS LCD Capacitive Touch Screen · Memory: 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', '705', NULL, 'itel-l0oxg', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 14:02:54'),
(134, 'itel S16 Pro: Memory. 32GB ROM + 2GB RAM (Up to 32GB)', 'admin', 9, 41, 16, '731', '731', 'youtube', NULL, 'itel S16 Pro: Memory. 32GB ROM + 2GB RAM (Up to 32GB),itel,smart phone', '<p>The New Dot-notch DisplayExperiencing a new and innovative 6.6\" HD+ Dot-notch Full Screen with 1600*720 resolution, a 20:9 aspect ratio and a 90% screen-to-body ratio, S16 Pro provides a more fashionable design and a clearer view that is sure to satisfy any user\r\n</p><p>8.3 mm Super Slim Unibody Design for Super Stylish YouThe incredible unibody design provides an extra slim and portable experience whilst ensuring the mobile is splash and dust proof to give owners ultimate protection and peace of mind.\r\n</p><p>New &amp; Improved AI Selfie 2.0Add beauty effects and filters with the AI Face Beauty 3.0, blur the background with the AI Bokeh Effect, capture more detail with the AI Portrait HDR and snap a selfie just by smiling thanks to the smile shot feature!\"Stay Focused\" With AI Triple Rear CameraExperience the 8 mega-pixel main camera that captures stunning quality pictures combined with the 2 mega-pixel macro camera that brings you closer to the subjects that matter. The depth sensing camera can judge distance and depth that takes your photography to a new level!</p>', 340000.00, 340000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 4, 'itel S16 Pro', 'Memory. 32GB ROM + 2GB RAM (Up to 32GB). Battery Capacity. 4000mAh. Operating System. Android™ 10 (Go Edition). Processor. Quad-core 1.3GHz', '174', NULL, 'itel-jnh0r', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:46:07'),
(135, 'itel S16 Pro (4G): 2 GB RAM, 32 GB inbuilt; 4000 mAh Battery', 'admin', 9, 41, 16, '710', '710', 'youtube', NULL, 'itel,s16 pro,smart phone', '<p>The New Dot-notch DisplayExperiencing a new and innovative 6.6\" HD+ Dot-notch Full Screen with 1600*720 resolution, a 20:9 aspect ratio and a 90% screen-to-body ratio, S16 Pro provides a more fashionable design and a clearer view that is sure to satisfy any user</p><p>8.3 mm Super Slim Unibody Design for Super Stylish YouThe incredible unibody design provides an extra slim and portable experience whilst ensuring the mobile is splash and dust proof to give owners ultimate protection and peace of mind.\r\n</p><p>New &amp; Improved AI Selfie 2.0Add beauty effects and filters with the AI Face Beauty 3.0, blur the background with the AI Bokeh Effect, capture more detail with the AI Portrait HDR and snap a selfie just by smiling thanks to the smile shot feature!\r\n</p><p>\"Stay Focused\" With AI Triple Rear CameraExperience the 8 mega-pixel main camera that captures stunning quality pictures combined with the 2 mega-pixel macro camera that brings you closer to the subjects that matter. The depth sensing camera can judge distance and depth that takes your photography to a new level!\r\n</p><p><br></p>', 395000.00, 395000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'itel S16 Pro (4G)', 'Dual Sim, 3G, 4G, VoLTE, Wi-Fi; Quad Core, 1.3 GHz Processor; 2 GB RAM, 32 GB inbuilt; 4000 mAh Battery. 6.6 inches, 1600 x 720 px Display with Punch Hole', '710', NULL, 'itel-hwvjk', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 20:46:07'),
(136, 'itel P37', 'admin', 9, 41, 16, '713', '713', 'youtube', NULL, 'itel P37,itel,smart phone', '<p>The iTel is the direct successor of iTel P36 model of last year. The new model come in a refreshed design than it predecessor, and offers newer Android OS out of the box. From the front, the phone sports a 6.5-inch HD+ display with 720 x 1600 pixels, and have same IPS panel with a notch above the screen.\r\n</p><p>On the inside, the new iTel is powered by a quad-core UNISOC SC7731E @1.3GHz, along with Mali-T820 MP1 GPU, 2GB RAM and 32GB of internal storage.\r\n</p><p>For the camera department, you are getting two lenses at the back of the phone, an 8 MP main snapper and a 0.3 MP depth sensing lens, while a single 8-megapixel selfie shooter is left in the notch upfront.\r\n</p><p>There is also a rear placed fingerprint scanner, AI FaceID and a slot for dual SIM cards. The device has a 5000mAh battery on the side, and available in Gradient Purple, Gradient Blue and Dark Blue colors, while Google Android 10 (Go Edition) runs out of the box</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 315000.00, 315000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel P37', 'itel · Search · 5000mAh Big Battery + AI Power Master = Never Run Low on Charge · Explore The World With the 13MP Dual Camera · Worry-free Storage · 4G LTE', '713', NULL, 'itel-bajix', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 14:05:44'),
(137, 'itel P37 Pro (4G)', 'admin', 9, 41, 16, '708', '708', 'youtube', NULL, 'itel P37 Pro (4G),itel,smart phone', '<p>iTel P37 Pro is the higher variant of P37, and the direct upgrade to the P36 Pro LTE version of last year. About upgrade, the P37 Pro is offering a larger display as well as enormous internal storage. The model sports a 6.8-inches IPS screen with 720 x 1640 pixels resolution, while a dewdrop seat above the display.\r\n</p><p>Under the hood, the P37 Pro is powered by an octa-core 1.6GHz UNISOC SC9863A CPU pegged with PowerVR GE8322 GPU. The model has 2GB RAM and 32GB of expandable internal storage. For the software, iTel is still retaining Google Android 10 (Go Edition) out of the box.</p><p>As for the camera setup, you are getting dual sensors on the rear, and a single snapper upfront. The rear module includes a 13-megapixel primary lens along with a secondary AI sensor, while a single 8-megapixel selfie snapper is used in the notch upfront.</p><p>The device supports dual Nano-SIM with 4G LTE network, and available in Gradation Blue, Gradation Sea Blue and Gradient Green. You are also getting a fingerprint scanner on the rear, a 5000mAh battery and the aforementioned Google Android 10 (Go Edition) out of the box</p>', 350000.00, 350000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'itel P37 Pro (4G)', 'iTel P37 Pro is the higher variant of P37, and the direct upgrade to the P36 Pro LTE version of last year. About upgrade, the P37 Pro is offering a larger display as well as enormous internal storage. The model sports a 6.8-inches IPS screen with 720 x 1640 pixels resolution, while a dewdrop seat above the display.\r\nUnder the hood, the P37 Pro is powered by an octa-core 1.6GHz UNISOC SC9863A CPU pegged with PowerVR GE8322 GPU. The model has 2GB RAM and 32GB of expandable internal storage. For the software, iTel is still retaining Google Android 10 (Go Edition) out of the box.As for the camera setup, you are getting dual sensors on the rear, and a single snapper upfront. The rear module includes a 13-megapixel primary lens along with a secondary AI sensor, while a single 8-megapixel selfie snapper is used in the notch upfront.The device supports dual Nano-SIM with 4G LTE network, and available in Gradation Blue, Gradation Sea Blue and Gradient Green. You are also getting a fingerprint scanner on the rear, a 5000mAh battery and the aforementioned Google Android 10 (Go Edition) out of the box', '708', NULL, 'itel-f5d4a', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:43:20', '2021-07-19 14:06:28'),
(138, 'Infinix Smart 4 16Gb x653', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 340000.00, 340000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Smart 4 16Gb x653', NULL, NULL, 'Infinix-QEvIy', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:26'),
(139, 'Infinix Smart 5 x657 32Gb 2Gb Ram x657', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 350000.00, 350000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Smart 5 x657 32Gb 2Gb Ram x657', NULL, NULL, 'Infinix-UYYOb', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:27'),
(140, 'Infinix Smart HD 2021 - 6.1\" 2GB RAM 32GB ROM 8MP 5000mAh -', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 330000.00, 330000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Smart HD 2021 - 6.1\" 2GB RAM 32GB ROM 8MP 5000mAh -', NULL, NULL, 'Infinix-y5Ycn', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:28'),
(141, 'Infinix Hot 8 Lite 6.6\" 2GB RAM 32GB ROM 8MP 3G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 380000.00, 380000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Hot 8 Lite 6.6\" 2GB RAM 32GB ROM 8MP 3G', NULL, NULL, 'Infinix-IJqli', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:30'),
(142, 'Infinix Hot 8 x650B 2GB RAM 32GB ROM 8MP 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 447000.00, 447000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, NULL, 'Infinix Hot 8 x650B 2GB RAM 32GB ROM 8MP 4G', NULL, NULL, 'Infinix-rYY6L', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 11:03:55'),
(143, 'Infinix Hot 10 x682B 64GB ROM 3Gb RAM 4G', 'admin', 9, 41, 14, '818', '818', 'youtube', NULL, 'hot 10,smartphone,inifinix,mobile', '<p>First ever Octa-core Helio G70 in HOT series, intelligent management of CPU, GPU and memory, gaming performance has been greatly improved. Supports multi-tasking, rapid switch between tasks even during gaming.</p>', 520000.00, 520000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Infinix Hot 10 x682B 64GB ROM 3Gb RAM 4G', 'Infinix Hot 10 x682B 64GB ROM 3Gb RAM 4G', '818', NULL, 'infinix-adahg', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 18:31:44'),
(144, 'Infinix Hot 10 Play X688C 32GB ROM 2GB RAM 4G', 'admin', 9, 41, 14, '821', '821', 'youtube', NULL, '', '<p>Power Marathon</p><p>Non-stop Playing</p><p>MediaTek Helio G35</p><p>Smooth Game Playing</p><p>6.82” HD+ Video</p><p>Playing Display</p><p>8MP Beauty</p><p>Front Camera</p><p>13MP AI Dual</p><p>Rear Camera</p><p>Face Unlock</p><p>&amp; Fingerprint</p><p><br></p><p>Power Your Day with</p><p>6000mAh Super Battery</p>', 472000.00, 472000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Infinix Hot 10 Play X688C 32GB ROM 2GB RAM 4G', 'Infinix Hot 10 Play X688C 32GB ROM 2GB RAM 4G', '821', NULL, 'infinix-vcrtu', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 20:42:57'),
(145, 'Infinix Hot 10 Play X688B 64GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 530000.00, 530000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Hot 10 Play X688B 64GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-9nVkL', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:34'),
(146, 'Infinix Hot 10 Lite X657B 32 GB ROM 2GB RAM 4G', 'admin', 9, 41, 14, '828', '828', 'youtube', NULL, 'smartphone,infinix,mobile phone', '<p>5000 mAh</p><p>4-Day Battery Life 6.6\"HD+</p><p>Waterdrop Sunlight Display</p><p>8MP</p><p>Selfie Camera With Dual Flash</p><p>13MP</p><p>Triple Camera</p>', 385000.00, 385000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Infinix Hot 10 Lite X657B 32 GB ROM 2GB RAM 4G', 'Infinix Hot 10 Lite X657B 32 GB ROM 2GB RAM 4G', '828', NULL, 'infinix-5luuc', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 20:46:47'),
(147, 'Infinix 10 T X689C 64 GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 539000.00, 539000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix 10 T X689C 64 GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-47M7M', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:36'),
(148, 'Infinix 10 T X689C 128 GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 609000.00, 609000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix 10 T X689C 128 GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-D99oF', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:37'),
(149, 'Infinix Hot 9 Play X680 32GB ROM 2GB ROM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 478000.00, 478000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Hot 9 Play X680 32GB ROM 2GB ROM 4G', NULL, NULL, 'Infinix-4brq7', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:38'),
(150, 'Infinix Hot 9 x655 32 GB ROM 2GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 462000.00, 462000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Hot 9 x655 32 GB ROM 2GB RAM 4G', NULL, NULL, 'Infinix-ufqD3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:39'),
(151, 'Infinix Hot 9 x655C 64GB 3GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 495000.00, 495000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Hot 9 x655C 64GB 3GB RAM 4G', NULL, NULL, 'Infinix-scWg5', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:41'),
(152, 'Infinix S5 x652 64GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 576000.00, 576000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix S5 x652 64GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-enOb3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:42'),
(153, 'Infinix S5 Pro x660C 128GB ROM 6GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 860000.00, 860000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix S5 Pro x660C 128GB ROM 6GB RAM 4G', NULL, NULL, 'Infinix-bRWz0', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:51'),
(154, 'Infinix Note 7 Lite  x656 64GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 633000.00, 633000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 7 Lite  x656 64GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-KsILE', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:54'),
(155, 'Infinix Note 7 x690 64GB ROM 4 GB RAM 4G', 'admin', 9, 41, 14, '815', '815', 'youtube', NULL, 'smartphone,mobile,phone,infinix', '<p>Explore</p><p>Cinematic screen in the palm of your hand</p><p>With a tiny, punch-hole camera lens, the 6.95\" HD+ Infinity-O display makes for</p><p>an all around immersive experience.</p><p>6.95 HD+</p><p>Infinity-O display</p><p>91.5%<br></p><p>Screen-to-body ratio</p><p>20.5:9<br></p><p>Ratio</p><p><br></p><p>480</p><p>nit</p>', 714000.00, 714000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Infinix Note 7 x690 64GB ROM 4 GB RAM 4G', 'Infinix Note 7 x690 64GB ROM 4 GB RAM 4G', '191', NULL, 'infinix-lby6r', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 20:48:24'),
(156, 'Infinix Note 7 x690B 128GB ROM 6GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 813000.00, 813000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 7 x690B 128GB ROM 6GB RAM 4G', NULL, NULL, 'Infinix-dmBNK', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:55'),
(157, 'Infinix Note 8 x692 128GB 4GB RAM 4G', 'admin', 9, 41, 14, '825', '825', 'youtube', NULL, 'smartphone,infinix,mobile phone,32 gb', '<p>The set of high definition cameras allows you to capture every wonderful moment in life.</p><p>All those unbelievable detail, with crystal clear clarity and lifelike beauty.</p><p>Corning® Gorilla® Glass</p><p>5200mAh Massive Battery with Super Long Endurance</p><p>16M+ Portrait Lens Dual Front Camera<br></p><p>The intelligent 16MP front camera with Protrait Lens work closely to deliver stunning selfies.</p><p>6.95\" Dual Infinity-O Display</p><p>Prepared to Broaden Your Horizons</p><p>The Unprecedentedly Biggest Dual Front Camera Screen in Industry</p><p>Note 8 features a 20.5:9 screen with dual super tiny camera punch hole.</p><p>Time to levitating visual experience to a whole new level.</p><p>6.95\"<br></p><p>Dual Infinity-O Display</p><p>20.5:9</p><p>Ratio</p><p>1500:1<br></p><p>Contrast Ratio</p><p>480nit</p><p>Peak Brightness</p>', 780000.00, 780000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Infinix Note 8 x692 128GB 4GB RAM 4G', 'Infinix Note 8 x692 128GB 4GB RAM 4G', '185', NULL, 'infinix-nl4ex', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 20:43:21'),
(158, 'Infinix Note 8i x683 128GB ROM 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 654000.00, 654000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 8i x683 128GB ROM 4GB RAM 4G', NULL, NULL, 'Infinix-rEED3', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:58'),
(159, 'Infinix Zero 8 x687 128GB 8GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 980000.00, 980000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Zero 8 x687 128GB 8GB RAM 4G', NULL, NULL, 'Infinix-xtHr8', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:56'),
(160, 'Infinix Note 10 x693 128GB 4GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 690000.00, 690000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 10 x693 128GB 4GB RAM 4G', NULL, NULL, 'Infinix-UzZ44', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:28:03'),
(161, 'Infinix Note 10 x693 128GB 6GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 760000.00, 760000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 10 x693 128GB 6GB RAM 4G', NULL, NULL, 'Infinix-063Ra', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:58'),
(162, 'Infinix Note 10 PRO x695 128GB 8GB RAM 4G', 'admin', 9, 41, 14, NULL, NULL, 'youtube', NULL, NULL, NULL, 942000.00, 942000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, 'Infinix Note 10 PRO x695 128GB 8GB RAM 4G', NULL, NULL, 'Infinix-4sdoI', 0.00, NULL, 0, NULL, NULL, '2021-07-19 02:55:24', '2021-07-19 04:27:59'),
(163, 'Ladies Hand Bag 2 in 1', 'admin', 9, 29, NULL, NULL, '891', 'youtube', NULL, 'hand bag,ladies bag,bag', NULL, 85000.00, 85000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Ladies Hand Bag 2 in 1', '', '891', NULL, 'ladys-bag-9wity', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 15:35:24'),
(164, 'Ladies Hand Bag Single', 'admin', 9, 169, NULL, '896', '896', 'youtube', NULL, '', NULL, 90000.00, 90000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 1, 'Ladies Hand Bag Single', '', '896', NULL, 'ladys-bag-itrzd', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 18:19:48'),
(165, 'Ladies Hand Bag 4 in 1', 'admin', 9, 29, NULL, '897,902', '902', 'youtube', NULL, '', '<p>4 in 1 Ladies bags made with leather&nbsp;</p>', 130000.00, 130000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 1, 0, 0, '4 in 1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, 'Ladies Hand Bag 4 in 1', 'Ladies Hand Bag 4 in 1', '902', NULL, 'ladys-bag-mfvtq', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 15:28:21'),
(166, 'Ladies Hand Bag Rounded', 'admin', 9, 29, NULL, NULL, NULL, 'youtube', NULL, NULL, NULL, 65000.00, 65000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Ladys-Bag-usp7q', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 15:42:11'),
(167, 'Singl hand bag ', 'admin', 9, 29, NULL, NULL, NULL, 'youtube', NULL, NULL, NULL, 65000.00, 65000.00, 0, '[]', '[]', '[]', '[]', 0, 0, 'quantity', 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 'Ladys-Bag-kTLtP', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 15:46:56'),
(168, '3 in 1 Ladies Bag', 'admin', 9, 29, NULL, '914', '914', 'youtube', NULL, '', NULL, 125000.00, 125000.00, 0, '[]', '[]', '[]', '[]', 0, 1, 'quantity', 1, 0, 0, 0, '3 in 1', 1, NULL, 0.00, 'amount', 0, 0, NULL, NULL, 'flat_rate', NULL, 0, NULL, 0, '3 in 1 Ladies Bag', '', '914', NULL, 'ladys-bag-crgdn', 0.00, NULL, 0, NULL, NULL, '2021-07-19 15:24:56', '2021-07-19 17:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0',
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(37, 4, '', NULL, 3000.00, 99, NULL, '2021-07-19 01:51:01', '2021-07-19 13:53:13'),
(68, 5, '', NULL, 4000.00, 100, NULL, '2021-07-19 02:11:23', '2021-07-19 02:11:23'),
(69, 34, 'Black', 'Black', 45000.00, 10, NULL, '2021-07-19 02:15:37', '2021-07-19 02:15:37'),
(70, 34, 'Gray', 'Gray', 45000.00, 10, NULL, '2021-07-19 02:15:37', '2021-07-19 02:15:37'),
(71, 6, '', NULL, 4000.00, 100, NULL, '2021-07-19 02:15:40', '2021-07-19 02:15:40'),
(72, 7, '', NULL, 6000.00, 99, NULL, '2021-07-19 02:17:29', '2021-07-19 19:16:46'),
(87, 77, '', NULL, 3200.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(88, 78, '', NULL, 3000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(89, 79, '', NULL, 3500.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(102, 92, '', NULL, 15000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(118, 108, '', NULL, 17000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(119, 109, '', NULL, 10000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(120, 110, '', NULL, 150000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(121, 111, '', NULL, 75000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(122, 112, '', NULL, 138000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(123, 113, '', NULL, 68000.00, 10, NULL, '2021-07-19 02:18:09', '2021-07-19 02:18:09'),
(124, 35, '', NULL, 55000.00, 5, NULL, '2021-07-19 02:18:39', '2021-07-19 02:18:39'),
(125, 8, '', NULL, 4000.00, 100, NULL, '2021-07-19 02:19:52', '2021-07-19 14:23:58'),
(127, 36, '', NULL, 45000.00, 5, NULL, '2021-07-19 02:23:28', '2021-07-19 02:23:28'),
(128, 9, '', NULL, 9000.00, 99, NULL, '2021-07-19 02:29:32', '2021-07-19 14:47:41'),
(129, 37, '', NULL, 52500.00, 5, NULL, '2021-07-19 02:30:37', '2021-07-19 02:30:37'),
(130, 10, '', NULL, 2000.00, 100, NULL, '2021-07-19 02:35:32', '2021-07-19 02:35:32'),
(131, 11, '', NULL, 4500.00, 100, NULL, '2021-07-19 02:40:37', '2021-07-19 02:40:37'),
(158, 13, '', NULL, 5000.00, 100, NULL, '2021-07-19 02:47:10', '2021-07-19 02:47:10'),
(159, 14, '', NULL, 6000.00, 100, NULL, '2021-07-19 02:48:53', '2021-07-19 02:48:53'),
(160, 12, '', NULL, 5000.00, 100, NULL, '2021-07-19 02:49:56', '2021-07-19 02:49:56'),
(161, 15, '', NULL, 6000.00, 100, NULL, '2021-07-19 02:51:46', '2021-07-19 02:51:46'),
(162, 16, '', NULL, 15000.00, 100, NULL, '2021-07-19 02:53:49', '2021-07-19 02:53:49'),
(163, 138, '', NULL, 340000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(164, 139, '', NULL, 350000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(165, 140, '', NULL, 330000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(166, 141, '', NULL, 380000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(167, 142, '', NULL, 447000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 14:23:58'),
(170, 145, '', NULL, 530000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(172, 147, '', NULL, 539000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(173, 148, '', NULL, 609000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(174, 149, '', NULL, 478000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(175, 150, '', NULL, 462000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(176, 151, '', NULL, 495000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(177, 152, '', NULL, 576000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(178, 153, '', NULL, 860000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(179, 154, '', NULL, 633000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(181, 156, '', NULL, 813000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(183, 158, '', NULL, 654000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(184, 159, '', NULL, 980000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(185, 160, '', NULL, 690000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(186, 161, '', NULL, 760000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(187, 162, '', NULL, 942000.00, 5, NULL, '2021-07-19 02:55:24', '2021-07-19 02:55:24'),
(188, 17, '', NULL, 2000.00, 100, NULL, '2021-07-19 02:56:02', '2021-07-19 02:56:02'),
(189, 18, '', NULL, 17000.00, 100, NULL, '2021-07-19 02:57:44', '2021-07-19 02:57:44'),
(191, 19, '', NULL, 18000.00, 100, NULL, '2021-07-19 02:59:02', '2021-07-19 02:59:02'),
(194, 20, '', NULL, 20000.00, 100, NULL, '2021-07-19 03:00:27', '2021-07-19 03:00:27'),
(195, 38, '', NULL, 51000.00, 5, NULL, '2021-07-19 03:00:52', '2021-07-19 03:00:52'),
(198, 39, '', NULL, 62000.00, 5, NULL, '2021-07-19 03:06:33', '2021-07-19 03:06:33'),
(199, 21, '', NULL, 25000.00, 100, NULL, '2021-07-19 03:07:52', '2021-07-19 03:07:52'),
(200, 40, '', NULL, 70000.00, 5, NULL, '2021-07-19 03:08:46', '2021-07-19 03:08:46'),
(201, 22, '', NULL, 10000.00, 100, NULL, '2021-07-19 03:09:02', '2021-07-19 03:09:02'),
(202, 23, '', NULL, 18000.00, 100, NULL, '2021-07-19 03:10:05', '2021-07-19 03:10:05'),
(203, 41, '', NULL, 69000.00, 5, NULL, '2021-07-19 03:11:30', '2021-07-19 03:11:30'),
(204, 24, '', NULL, 16000.00, 100, NULL, '2021-07-19 03:11:31', '2021-07-19 03:11:31'),
(210, 25, '', NULL, 18000.00, 100, NULL, '2021-07-19 03:16:03', '2021-07-19 03:16:03'),
(220, 47, '', NULL, 270000.00, 5, NULL, '2021-07-19 03:24:07', '2021-07-19 03:24:07'),
(221, 26, '', NULL, 10000.00, 100, NULL, '2021-07-19 03:25:01', '2021-07-19 03:25:01'),
(222, 45, '', NULL, 92000.00, 5, NULL, '2021-07-19 03:25:35', '2021-07-19 03:25:35'),
(223, 27, '', NULL, 6000.00, 98, NULL, '2021-07-19 03:26:27', '2021-07-19 23:03:33'),
(224, 44, '', NULL, 97000.00, 5, NULL, '2021-07-19 03:26:31', '2021-07-19 03:26:31'),
(225, 43, '', NULL, 80000.00, 5, NULL, '2021-07-19 03:27:19', '2021-07-19 03:27:19'),
(227, 42, '', NULL, 72000.00, 5, NULL, '2021-07-19 03:28:09', '2021-07-19 03:28:09'),
(228, 28, '', NULL, 8000.00, 100, NULL, '2021-07-19 03:28:16', '2021-07-19 03:28:16'),
(230, 29, '', NULL, 16000.00, 100, NULL, '2021-07-19 03:30:11', '2021-07-19 03:30:11'),
(231, 48, '', NULL, 280000.00, 5, NULL, '2021-07-19 03:31:03', '2021-07-19 03:31:03'),
(232, 30, '', NULL, 8000.00, 100, NULL, '2021-07-19 03:32:52', '2021-07-19 03:32:52'),
(233, 31, '', NULL, 3000.00, 100, NULL, '2021-07-19 03:34:01', '2021-07-19 03:34:01'),
(234, 32, '', NULL, 2000.00, 100, NULL, '2021-07-19 03:35:13', '2021-07-19 03:35:13'),
(235, 50, '', NULL, 320000.00, 5, NULL, '2021-07-19 03:52:12', '2021-07-19 03:52:12'),
(237, 51, '', NULL, 330000.00, 5, NULL, '2021-07-19 03:55:02', '2021-07-19 03:55:02'),
(238, 52, '', NULL, 340000.00, 5, NULL, '2021-07-19 03:57:33', '2021-07-19 03:57:33'),
(242, 54, '', NULL, 390000.00, 5, NULL, '2021-07-19 04:01:28', '2021-07-19 04:01:28'),
(245, 55, '', NULL, 400000.00, 5, NULL, '2021-07-19 04:03:29', '2021-07-19 04:03:29'),
(249, 56, '', NULL, 440000.00, 5, NULL, '2021-07-19 04:06:27', '2021-07-19 04:06:27'),
(250, 57, '', NULL, 470000.00, 5, NULL, '2021-07-19 04:08:11', '2021-07-19 14:23:58'),
(258, 59, '', NULL, 500000.00, 5, NULL, '2021-07-19 04:16:56', '2021-07-19 14:23:58'),
(282, 49, '', NULL, 330000.00, 3, NULL, '2021-07-19 09:11:06', '2021-07-19 14:23:10'),
(286, 143, '', NULL, 520000.00, 4, NULL, '2021-07-19 13:01:07', '2021-07-19 18:31:44'),
(290, 144, '', NULL, 472000.00, 5, NULL, '2021-07-19 13:09:51', '2021-07-19 13:09:51'),
(291, 146, '', NULL, 385000.00, 5, NULL, '2021-07-19 13:14:08', '2021-07-19 13:14:08'),
(292, 155, '', NULL, 714000.00, 5, NULL, '2021-07-19 13:19:40', '2021-07-19 14:23:58'),
(294, 157, '', NULL, 780000.00, 5, NULL, '2021-07-19 13:22:00', '2021-07-19 13:22:00'),
(296, 114, '', NULL, 32000.00, 10, NULL, '2021-07-19 13:22:37', '2021-07-19 13:22:37'),
(298, 115, '', NULL, 33000.00, 10, NULL, '2021-07-19 13:28:49', '2021-07-19 13:28:49'),
(300, 116, '', NULL, 35000.00, 9, NULL, '2021-07-19 13:31:21', '2021-07-20 03:10:27'),
(301, 126, '', NULL, 165000.00, 10, NULL, '2021-07-19 13:32:22', '2021-07-19 13:32:22'),
(302, 117, '', NULL, 45000.00, 10, NULL, '2021-07-19 13:33:07', '2021-07-19 13:33:07'),
(304, 71, '', NULL, 5800.00, 9, NULL, '2021-07-19 13:34:09', '2021-07-19 13:34:09'),
(305, 118, '', NULL, 50000.00, 10, NULL, '2021-07-19 13:34:18', '2021-07-19 13:34:18'),
(307, 72, '', NULL, 6500.00, 10, NULL, '2021-07-19 13:39:32', '2021-07-19 13:39:32'),
(310, 73, '', NULL, 3000.00, 10, NULL, '2021-07-19 13:42:26', '2021-07-19 13:42:26'),
(311, 134, '', NULL, 340000.00, 6, NULL, '2021-07-19 13:42:51', '2021-07-19 15:37:32'),
(312, 119, '', NULL, 55000.00, 10, NULL, '2021-07-19 13:43:00', '2021-07-19 13:43:00'),
(314, 120, '', NULL, 57000.00, 10, NULL, '2021-07-19 13:47:05', '2021-07-19 13:47:05'),
(315, 121, '', NULL, 60000.00, 10, NULL, '2021-07-19 13:47:58', '2021-07-19 13:47:58'),
(316, 122, '', NULL, 70000.00, 10, NULL, '2021-07-19 13:48:53', '2021-07-19 13:48:53'),
(317, 62, '', NULL, 950000.00, 5, NULL, '2021-07-19 13:49:25', '2021-07-19 13:49:25'),
(319, 123, '', NULL, 83000.00, 10, NULL, '2021-07-19 13:50:52', '2021-07-19 13:50:52'),
(320, 124, '', NULL, 130000.00, 10, NULL, '2021-07-19 13:52:05', '2021-07-19 13:52:05'),
(321, 74, '', NULL, 32000.00, 10, NULL, '2021-07-19 13:52:30', '2021-07-19 13:52:30'),
(322, 125, '', NULL, 150000.00, 10, NULL, '2021-07-19 13:53:10', '2021-07-19 13:53:10'),
(323, 64, '', NULL, 38000.00, 10, NULL, '2021-07-19 13:53:32', '2021-07-19 13:53:32'),
(324, 61, '', NULL, 740000.00, 5, NULL, '2021-07-19 13:54:26', '2021-07-19 13:54:26'),
(325, 127, '', NULL, 185000.00, 10, NULL, '2021-07-19 13:54:37', '2021-07-19 13:54:37'),
(326, 128, '', NULL, 222000.00, 10, NULL, '2021-07-19 13:55:21', '2021-07-19 13:55:21'),
(327, 129, '', NULL, 224000.00, 10, NULL, '2021-07-19 13:56:05', '2021-07-19 13:56:05'),
(328, 104, '', NULL, 65000.00, 10, NULL, '2021-07-19 13:56:07', '2021-07-19 13:56:07'),
(329, 130, '', NULL, 245000.00, 9, NULL, '2021-07-19 13:56:59', '2021-07-19 19:21:23'),
(330, 131, '', NULL, 285000.00, 10, NULL, '2021-07-19 13:57:40', '2021-07-19 13:57:40'),
(331, 58, '', NULL, 480000.00, 5, NULL, '2021-07-19 13:59:50', '2021-07-19 13:59:50'),
(333, 103, '', NULL, 55000.00, 10, NULL, '2021-07-19 14:01:11', '2021-07-19 14:01:11'),
(334, 60, '', NULL, 590000.00, 4, NULL, '2021-07-19 14:01:18', '2021-07-19 15:37:32'),
(336, 132, '', NULL, 290000.00, 10, NULL, '2021-07-19 14:01:32', '2021-07-19 14:01:32'),
(337, 133, '', NULL, 300000.00, 10, NULL, '2021-07-19 14:02:54', '2021-07-19 14:02:54'),
(338, 135, '', NULL, 395000.00, 9, NULL, '2021-07-19 14:04:48', '2021-07-19 18:57:27'),
(339, 136, '', NULL, 315000.00, 10, NULL, '2021-07-19 14:05:44', '2021-07-19 14:05:44'),
(340, 137, '', NULL, 350000.00, 10, NULL, '2021-07-19 14:06:28', '2021-07-19 14:06:28'),
(341, 90, '', NULL, 20000.00, 10, NULL, '2021-07-19 14:07:28', '2021-07-19 14:07:28'),
(343, 102, '', NULL, 40000.00, 10, NULL, '2021-07-19 14:10:19', '2021-07-19 14:10:19'),
(345, 100, '', NULL, 130000.00, 10, NULL, '2021-07-19 14:14:44', '2021-07-19 14:14:44'),
(346, 99, '', NULL, 40000.00, 10, NULL, '2021-07-19 14:17:06', '2021-07-19 14:17:06'),
(348, 107, '', NULL, 37000.00, 10, NULL, '2021-07-19 14:30:41', '2021-07-19 14:30:41'),
(349, 105, '', NULL, 75000.00, 10, NULL, '2021-07-19 14:33:12', '2021-07-19 14:33:12'),
(350, 93, '', NULL, 500.00, 10, NULL, '2021-07-19 14:33:41', '2021-07-19 14:33:41'),
(351, 95, '', NULL, 1000.00, 10, NULL, '2021-07-19 14:39:08', '2021-07-19 14:39:08'),
(353, 65, '', NULL, 38500.00, 10, NULL, '2021-07-19 14:45:05', '2021-07-19 14:45:05'),
(354, 106, '', NULL, 160000.00, 10, NULL, '2021-07-19 14:45:39', '2021-07-19 14:45:39'),
(355, 94, '', NULL, 7000.00, 10, NULL, '2021-07-19 14:46:36', '2021-07-19 14:46:36'),
(356, 66, '', NULL, 7500.00, 10, NULL, '2021-07-19 14:49:56', '2021-07-19 14:49:56'),
(357, 67, '', NULL, 3500.00, 10, NULL, '2021-07-19 14:51:02', '2021-07-19 14:51:02'),
(360, 68, '', NULL, 75000.00, 10, NULL, '2021-07-19 14:52:04', '2021-07-19 14:52:04'),
(362, 97, '', NULL, 160000.00, 10, NULL, '2021-07-19 14:53:43', '2021-07-19 14:53:43'),
(363, 69, '', NULL, 150000.00, 10, NULL, '2021-07-19 14:54:02', '2021-07-19 14:54:02'),
(364, 96, '', NULL, 1000.00, 10, NULL, '2021-07-19 14:54:22', '2021-07-19 14:54:22'),
(365, 70, '', NULL, 5800.00, 10, NULL, '2021-07-19 14:56:37', '2021-07-19 14:56:37'),
(366, 76, '', NULL, 132000.00, 10, NULL, '2021-07-19 15:05:11', '2021-07-19 15:05:11'),
(369, 82, '', NULL, 4000.00, 10, NULL, '2021-07-19 15:17:47', '2021-07-19 15:17:47'),
(370, 80, '', NULL, 3800.00, 10, NULL, '2021-07-19 15:19:20', '2021-07-19 15:19:20'),
(372, 83, '', NULL, 500.00, 10, NULL, '2021-07-19 15:20:33', '2021-07-19 15:20:33'),
(374, 84, '', NULL, 4500.00, 10, NULL, '2021-07-19 15:24:40', '2021-07-19 15:24:40'),
(378, 166, '', NULL, 65000.00, 2, NULL, '2021-07-19 15:24:56', '2021-07-19 15:24:56'),
(379, 167, '', NULL, 65000.00, 2, NULL, '2021-07-19 15:24:56', '2021-07-19 15:24:56'),
(381, 75, '', NULL, 68000.00, 10, NULL, '2021-07-19 15:25:37', '2021-07-19 15:25:37'),
(382, 85, '', NULL, 2800.00, 10, NULL, '2021-07-19 15:27:01', '2021-07-19 15:27:01'),
(386, 165, '', NULL, 130000.00, 2, NULL, '2021-07-19 15:28:21', '2021-07-19 15:28:21'),
(387, 87, '', NULL, 4000.00, 10, NULL, '2021-07-19 15:29:27', '2021-07-19 15:29:27'),
(388, 88, '', NULL, 3500.00, 10, NULL, '2021-07-19 15:31:20', '2021-07-19 15:31:20'),
(391, 81, '', NULL, 5000.00, 10, NULL, '2021-07-19 15:32:39', '2021-07-19 15:32:39'),
(392, 86, '', NULL, 2300.00, 10, NULL, '2021-07-19 15:32:52', '2021-07-19 15:32:52'),
(395, 163, '', NULL, 85000.00, 2, NULL, '2021-07-19 15:35:24', '2021-07-19 15:35:24'),
(396, 164, '', NULL, 90000.00, 1, NULL, '2021-07-19 15:36:03', '2021-07-19 18:19:48'),
(397, 89, '', NULL, 18000.00, 10, NULL, '2021-07-19 15:37:02', '2021-07-19 15:37:02'),
(398, 98, '', NULL, 110000.00, 10, NULL, '2021-07-19 15:38:03', '2021-07-19 15:38:03'),
(399, 91, '', NULL, 40000.00, 10, NULL, '2021-07-19 15:40:07', '2021-07-19 15:40:07'),
(400, 168, '', NULL, 125000.00, 2, NULL, '2021-07-19 15:46:20', '2021-07-19 15:46:20'),
(401, 101, '', NULL, 110000.00, 10, NULL, '2021-07-19 20:49:13', '2021-07-19 20:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 0.00, 'amount', '2021-07-19 01:05:06', '2021-07-19 01:05:06'),
(3, 2, 3, 0.00, 'amount', '2021-07-19 01:10:32', '2021-07-19 01:10:32'),
(5, 4, 3, 0.00, 'amount', '2021-07-19 01:51:01', '2021-07-19 01:51:01'),
(6, 5, 3, 0.00, 'amount', '2021-07-19 02:11:23', '2021-07-19 02:11:23'),
(7, 34, 3, 0.00, 'amount', '2021-07-19 02:15:37', '2021-07-19 02:15:37'),
(8, 6, 3, 0.00, 'amount', '2021-07-19 02:15:40', '2021-07-19 02:15:40'),
(9, 7, 3, 0.00, 'amount', '2021-07-19 02:17:29', '2021-07-19 02:17:29'),
(10, 35, 3, 0.00, 'amount', '2021-07-19 02:18:39', '2021-07-19 02:18:39'),
(11, 8, 3, 0.00, 'amount', '2021-07-19 02:19:52', '2021-07-19 02:19:52'),
(13, 36, 3, 0.00, 'amount', '2021-07-19 02:23:28', '2021-07-19 02:23:28'),
(14, 9, 3, 0.00, 'amount', '2021-07-19 02:29:32', '2021-07-19 02:29:32'),
(15, 37, 3, 0.00, 'amount', '2021-07-19 02:30:37', '2021-07-19 02:30:37'),
(16, 10, 3, 0.00, 'amount', '2021-07-19 02:35:32', '2021-07-19 02:35:32'),
(17, 11, 3, 0.00, 'amount', '2021-07-19 02:40:37', '2021-07-19 02:40:37'),
(20, 13, 3, 0.00, 'amount', '2021-07-19 02:47:10', '2021-07-19 02:47:10'),
(21, 14, 3, 0.00, 'amount', '2021-07-19 02:48:53', '2021-07-19 02:48:53'),
(22, 12, 3, 0.00, 'amount', '2021-07-19 02:49:56', '2021-07-19 02:49:56'),
(23, 15, 3, 0.00, 'amount', '2021-07-19 02:51:46', '2021-07-19 02:51:46'),
(24, 16, 3, 0.00, 'amount', '2021-07-19 02:53:49', '2021-07-19 02:53:49'),
(25, 17, 3, 0.00, 'amount', '2021-07-19 02:56:02', '2021-07-19 02:56:02'),
(26, 18, 3, 0.00, 'amount', '2021-07-19 02:57:44', '2021-07-19 02:57:44'),
(28, 19, 3, 0.00, 'amount', '2021-07-19 02:59:02', '2021-07-19 02:59:02'),
(31, 20, 3, 0.00, 'amount', '2021-07-19 03:00:27', '2021-07-19 03:00:27'),
(32, 38, 3, 0.00, 'amount', '2021-07-19 03:00:52', '2021-07-19 03:00:52'),
(35, 39, 3, 0.00, 'amount', '2021-07-19 03:06:33', '2021-07-19 03:06:33'),
(36, 21, 3, 0.00, 'amount', '2021-07-19 03:07:52', '2021-07-19 03:07:52'),
(37, 40, 3, 0.00, 'amount', '2021-07-19 03:08:46', '2021-07-19 03:08:46'),
(38, 22, 3, 0.00, 'amount', '2021-07-19 03:09:02', '2021-07-19 03:09:02'),
(39, 23, 3, 0.00, 'amount', '2021-07-19 03:10:05', '2021-07-19 03:10:05'),
(40, 41, 3, 0.00, 'amount', '2021-07-19 03:11:30', '2021-07-19 03:11:30'),
(41, 24, 3, 0.00, 'amount', '2021-07-19 03:11:31', '2021-07-19 03:11:31'),
(47, 25, 3, 0.00, 'amount', '2021-07-19 03:16:03', '2021-07-19 03:16:03'),
(57, 47, 3, 0.00, 'amount', '2021-07-19 03:24:07', '2021-07-19 03:24:07'),
(58, 26, 3, 0.00, 'amount', '2021-07-19 03:25:01', '2021-07-19 03:25:01'),
(59, 45, 3, 0.00, 'amount', '2021-07-19 03:25:35', '2021-07-19 03:25:35'),
(60, 27, 3, 0.00, 'amount', '2021-07-19 03:26:27', '2021-07-19 03:26:27'),
(61, 44, 3, 0.00, 'amount', '2021-07-19 03:26:31', '2021-07-19 03:26:31'),
(62, 43, 3, 0.00, 'amount', '2021-07-19 03:27:19', '2021-07-19 03:27:19'),
(64, 42, 3, 0.00, 'amount', '2021-07-19 03:28:09', '2021-07-19 03:28:09'),
(65, 28, 3, 0.00, 'amount', '2021-07-19 03:28:16', '2021-07-19 03:28:16'),
(67, 29, 3, 0.00, 'amount', '2021-07-19 03:30:11', '2021-07-19 03:30:11'),
(68, 48, 3, 0.00, 'amount', '2021-07-19 03:31:03', '2021-07-19 03:31:03'),
(69, 30, 3, 0.00, 'amount', '2021-07-19 03:32:52', '2021-07-19 03:32:52'),
(70, 31, 3, 0.00, 'amount', '2021-07-19 03:34:01', '2021-07-19 03:34:01'),
(71, 32, 3, 0.00, 'amount', '2021-07-19 03:35:13', '2021-07-19 03:35:13'),
(72, 50, 3, 0.00, 'amount', '2021-07-19 03:52:12', '2021-07-19 03:52:12'),
(74, 51, 3, 0.00, 'amount', '2021-07-19 03:55:02', '2021-07-19 03:55:02'),
(75, 52, 3, 0.00, 'amount', '2021-07-19 03:57:33', '2021-07-19 03:57:33'),
(79, 54, 3, 0.00, 'amount', '2021-07-19 04:01:28', '2021-07-19 04:01:28'),
(82, 55, 3, 0.00, 'amount', '2021-07-19 04:03:29', '2021-07-19 04:03:29'),
(86, 56, 3, 0.00, 'amount', '2021-07-19 04:06:27', '2021-07-19 04:06:27'),
(87, 57, 3, 0.00, 'amount', '2021-07-19 04:08:11', '2021-07-19 04:08:11'),
(95, 59, 3, 0.00, 'amount', '2021-07-19 04:16:56', '2021-07-19 04:16:56'),
(118, 53, 3, 0.00, 'amount', '2021-07-19 09:07:08', '2021-07-19 09:07:08'),
(119, 49, 3, 0.00, 'amount', '2021-07-19 09:11:06', '2021-07-19 09:11:06'),
(123, 143, 3, 0.00, 'amount', '2021-07-19 13:01:07', '2021-07-19 13:01:07'),
(127, 144, 3, 0.00, 'amount', '2021-07-19 13:09:51', '2021-07-19 13:09:51'),
(128, 146, 3, 0.00, 'amount', '2021-07-19 13:14:08', '2021-07-19 13:14:08'),
(129, 155, 3, 0.00, 'amount', '2021-07-19 13:19:40', '2021-07-19 13:19:40'),
(131, 157, 3, 0.00, 'amount', '2021-07-19 13:22:00', '2021-07-19 13:22:00'),
(133, 114, 3, 0.00, 'amount', '2021-07-19 13:22:37', '2021-07-19 13:22:37'),
(135, 115, 3, 0.00, 'amount', '2021-07-19 13:28:49', '2021-07-19 13:28:49'),
(137, 116, 3, 0.00, 'amount', '2021-07-19 13:31:21', '2021-07-19 13:31:21'),
(138, 126, 3, 0.00, 'amount', '2021-07-19 13:32:22', '2021-07-19 13:32:22'),
(139, 117, 3, 0.00, 'amount', '2021-07-19 13:33:07', '2021-07-19 13:33:07'),
(141, 71, 3, 0.00, 'amount', '2021-07-19 13:34:09', '2021-07-19 13:34:09'),
(142, 118, 3, 0.00, 'amount', '2021-07-19 13:34:18', '2021-07-19 13:34:18'),
(144, 72, 3, 0.00, 'amount', '2021-07-19 13:39:32', '2021-07-19 13:39:32'),
(147, 73, 3, 0.00, 'amount', '2021-07-19 13:42:26', '2021-07-19 13:42:26'),
(148, 134, 3, 0.00, 'amount', '2021-07-19 13:42:51', '2021-07-19 13:42:51'),
(149, 119, 3, 0.00, 'amount', '2021-07-19 13:43:00', '2021-07-19 13:43:00'),
(151, 120, 3, 0.00, 'amount', '2021-07-19 13:47:05', '2021-07-19 13:47:05'),
(152, 121, 3, 0.00, 'amount', '2021-07-19 13:47:58', '2021-07-19 13:47:58'),
(153, 122, 3, 0.00, 'amount', '2021-07-19 13:48:53', '2021-07-19 13:48:53'),
(154, 62, 3, 0.00, 'amount', '2021-07-19 13:49:25', '2021-07-19 13:49:25'),
(156, 123, 3, 0.00, 'amount', '2021-07-19 13:50:52', '2021-07-19 13:50:52'),
(157, 124, 3, 0.00, 'amount', '2021-07-19 13:52:05', '2021-07-19 13:52:05'),
(158, 74, 3, 0.00, 'amount', '2021-07-19 13:52:30', '2021-07-19 13:52:30'),
(159, 125, 3, 0.00, 'amount', '2021-07-19 13:53:10', '2021-07-19 13:53:10'),
(160, 64, 3, 0.00, 'amount', '2021-07-19 13:53:32', '2021-07-19 13:53:32'),
(161, 61, 3, 0.00, 'amount', '2021-07-19 13:54:26', '2021-07-19 13:54:26'),
(162, 127, 3, 0.00, 'amount', '2021-07-19 13:54:37', '2021-07-19 13:54:37'),
(163, 128, 3, 0.00, 'amount', '2021-07-19 13:55:21', '2021-07-19 13:55:21'),
(164, 129, 3, 0.00, 'amount', '2021-07-19 13:56:05', '2021-07-19 13:56:05'),
(165, 104, 3, 0.00, 'amount', '2021-07-19 13:56:07', '2021-07-19 13:56:07'),
(166, 130, 3, 0.00, 'amount', '2021-07-19 13:56:59', '2021-07-19 13:56:59'),
(167, 131, 3, 0.00, 'amount', '2021-07-19 13:57:40', '2021-07-19 13:57:40'),
(168, 58, 3, 0.00, 'amount', '2021-07-19 13:59:50', '2021-07-19 13:59:50'),
(170, 103, 3, 0.00, 'amount', '2021-07-19 14:01:11', '2021-07-19 14:01:11'),
(171, 60, 3, 0.00, 'amount', '2021-07-19 14:01:18', '2021-07-19 14:01:18'),
(173, 132, 3, 0.00, 'amount', '2021-07-19 14:01:32', '2021-07-19 14:01:32'),
(174, 133, 3, 0.00, 'amount', '2021-07-19 14:02:54', '2021-07-19 14:02:54'),
(175, 135, 3, 0.00, 'amount', '2021-07-19 14:04:48', '2021-07-19 14:04:48'),
(176, 136, 3, 0.00, 'amount', '2021-07-19 14:05:44', '2021-07-19 14:05:44'),
(177, 137, 3, 0.00, 'amount', '2021-07-19 14:06:28', '2021-07-19 14:06:28'),
(178, 90, 3, 0.00, 'amount', '2021-07-19 14:07:28', '2021-07-19 14:07:28'),
(180, 102, 3, 0.00, 'amount', '2021-07-19 14:10:19', '2021-07-19 14:10:19'),
(182, 100, 3, 0.00, 'amount', '2021-07-19 14:14:44', '2021-07-19 14:14:44'),
(183, 99, 3, 0.00, 'amount', '2021-07-19 14:17:06', '2021-07-19 14:17:06'),
(185, 107, 3, 0.00, 'amount', '2021-07-19 14:30:41', '2021-07-19 14:30:41'),
(186, 105, 3, 0.00, 'amount', '2021-07-19 14:33:12', '2021-07-19 14:33:12'),
(187, 93, 3, 0.00, 'amount', '2021-07-19 14:33:41', '2021-07-19 14:33:41'),
(188, 95, 3, 0.00, 'amount', '2021-07-19 14:39:08', '2021-07-19 14:39:08'),
(190, 65, 3, 0.00, 'amount', '2021-07-19 14:45:05', '2021-07-19 14:45:05'),
(191, 106, 3, 0.00, 'amount', '2021-07-19 14:45:39', '2021-07-19 14:45:39'),
(192, 94, 3, 0.00, 'amount', '2021-07-19 14:46:36', '2021-07-19 14:46:36'),
(193, 66, 3, 0.00, 'amount', '2021-07-19 14:49:56', '2021-07-19 14:49:56'),
(194, 67, 3, 0.00, 'amount', '2021-07-19 14:51:02', '2021-07-19 14:51:02'),
(197, 68, 3, 0.00, 'amount', '2021-07-19 14:52:04', '2021-07-19 14:52:04'),
(199, 97, 3, 0.00, 'amount', '2021-07-19 14:53:43', '2021-07-19 14:53:43'),
(200, 69, 3, 0.00, 'amount', '2021-07-19 14:54:02', '2021-07-19 14:54:02'),
(201, 96, 3, 0.00, 'amount', '2021-07-19 14:54:22', '2021-07-19 14:54:22'),
(202, 70, 3, 0.00, 'amount', '2021-07-19 14:56:37', '2021-07-19 14:56:37'),
(203, 76, 3, 0.00, 'amount', '2021-07-19 15:05:11', '2021-07-19 15:05:11'),
(206, 82, 3, 0.00, 'amount', '2021-07-19 15:17:47', '2021-07-19 15:17:47'),
(207, 80, 3, 0.00, 'amount', '2021-07-19 15:19:20', '2021-07-19 15:19:20'),
(209, 83, 3, 0.00, 'amount', '2021-07-19 15:20:33', '2021-07-19 15:20:33'),
(211, 84, 3, 0.00, 'amount', '2021-07-19 15:24:40', '2021-07-19 15:24:40'),
(212, 75, 3, 0.00, 'amount', '2021-07-19 15:25:37', '2021-07-19 15:25:37'),
(213, 85, 3, 0.00, 'amount', '2021-07-19 15:27:01', '2021-07-19 15:27:01'),
(217, 165, 3, 0.00, 'amount', '2021-07-19 15:28:21', '2021-07-19 15:28:21'),
(218, 87, 3, 0.00, 'amount', '2021-07-19 15:29:27', '2021-07-19 15:29:27'),
(219, 88, 3, 0.00, 'amount', '2021-07-19 15:31:20', '2021-07-19 15:31:20'),
(222, 81, 3, 0.00, 'amount', '2021-07-19 15:32:39', '2021-07-19 15:32:39'),
(223, 86, 3, 0.00, 'amount', '2021-07-19 15:32:52', '2021-07-19 15:32:52'),
(226, 163, 3, 0.00, 'amount', '2021-07-19 15:35:24', '2021-07-19 15:35:24'),
(227, 164, 3, 0.00, 'amount', '2021-07-19 15:36:03', '2021-07-19 15:36:03'),
(228, 89, 3, 0.00, 'amount', '2021-07-19 15:37:02', '2021-07-19 15:37:02'),
(229, 98, 3, 0.00, 'amount', '2021-07-19 15:38:03', '2021-07-19 15:38:03'),
(230, 91, 3, 0.00, 'amount', '2021-07-19 15:40:07', '2021-07-19 15:40:07'),
(231, 168, 3, 0.00, 'amount', '2021-07-19 15:46:20', '2021-07-19 15:46:20'),
(232, 101, 3, 0.00, 'amount', '2021-07-19 20:49:13', '2021-07-19 20:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(3, 4, 'Fresh Onions 1kg', 'pc', NULL, 'en', '2021-07-19 01:50:45', '2021-07-19 01:50:45'),
(4, 5, 'Carrots 1kg', 'pc', '<p>Fresh carrots straight from the garden to your kitchen</p>', 'en', '2021-07-19 02:11:23', '2021-07-19 02:11:23'),
(5, 34, 'Tecno T101 - Dual SIM 5MB HDD - 5MB RAM', 'pc', NULL, 'en', '2021-07-19 02:15:37', '2021-07-19 02:15:37'),
(6, 6, 'Couliy Flower', 'pc', 'Fresh from the garden to your kitchen', 'en', '2021-07-19 02:15:40', '2021-07-19 02:15:40'),
(7, 7, 'Fresh Beans 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:17:29', '2021-07-19 02:17:29'),
(8, 35, 'Tecno T201,', 'pc', NULL, 'en', '2021-07-19 02:18:39', '2021-07-19 02:18:39'),
(9, 8, 'Tomatoes 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:19:52', '2021-07-19 02:19:52'),
(10, 36, 'Tecno T301 Dual Sim With Camera & Torch Light, Fm Radio, Loud Speaker', 'pc', '<p>A basic phone with 4MB RAM and 4MB ROM. it has long lasting battery capacity of 1150mAh it is equipped with fm loud speaker, palm chat and facebook.</p>', 'en', '2021-07-19 02:23:03', '2021-07-19 02:23:28'),
(11, 9, 'Fresh Peas 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:29:32', '2021-07-19 02:29:32'),
(12, 37, 'Tecno T313 Dual SIM 1.77” 1150mAh Memory RAM In GB: 4 MB', 'pc', '<p>A basic phone with 4MB RAM and 4MB ROM. it has long lasting battery capacity of 1150mAh it is equipped with fm loud speaker, palm chat and facebook.</p>', 'en', '2021-07-19 02:30:37', '2021-07-19 02:30:37'),
(13, 10, 'Irish Potatoes 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:35:32', '2021-07-19 02:35:32'),
(14, 11, 'Garlic 1 roll', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:40:37', '2021-07-19 02:40:37'),
(15, 12, 'Ginger 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:45:05', '2021-07-19 02:45:28'),
(16, 13, 'Pineapple 1 head', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:47:10', '2021-07-19 02:47:10'),
(17, 14, 'Fresh Watermelon', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:48:53', '2021-07-19 02:48:53'),
(18, 15, 'Passion Fruits 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:51:46', '2021-07-19 02:51:46'),
(19, 16, 'Grapes 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:53:49', '2021-07-19 02:53:49'),
(20, 17, 'Apple', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:56:02', '2021-07-19 02:56:02'),
(21, 18, 'Whole Chicken 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:57:44', '2021-07-19 02:57:44'),
(22, 38, 'Tecno T351', 'pc', '<p>Tecno T351 has 1.8\" (4.57 cm) display, 0.3 MPcamera, 1000 mAh battery.</p>', 'en', '2021-07-19 02:57:53', '2021-07-19 02:57:53'),
(23, 19, 'Whole Chicken 1.2kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 02:59:02', '2021-07-19 02:59:02'),
(24, 114, 'itel it2163', '1', '<p>Strong phone frame</p><p>comes with charger</p><p>7 days batteries</p>', 'en', '2021-07-19 02:59:57', '2021-07-19 03:15:55'),
(25, 20, 'Whole Chicken 1.3kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:00:27', '2021-07-19 03:00:27'),
(26, 39, 'Tecno T372', 'pc', '<p>Tecno T351 has 1.8\" (4.57 cm) display, 0.3 MPcamera, 1000 mAh battery.</p>', 'en', '2021-07-19 03:03:17', '2021-07-19 03:03:17'),
(27, 115, 'itel it2160', '1', '<p>This itel it2160 comes with charger and its battery is long lasting and it can take to about 7 days with power</p>', 'en', '2021-07-19 03:03:46', '2021-07-19 03:12:20'),
(28, 21, 'Whole Chicken 1.5kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:07:52', '2021-07-19 03:07:52'),
(29, 40, 'Tecno T454', 'pc', '<p>Tecno T454 Dual Sim,2.8\" Big Screen,with Camera Flash Light, 1500mah</p>', 'en', '2021-07-19 03:08:46', '2021-07-19 03:08:46'),
(30, 22, 'Chicken Drumsticks 1/2kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:09:02', '2021-07-19 03:09:02'),
(31, 23, 'Chicken Drumsticks 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:10:05', '2021-07-19 03:10:05'),
(32, 41, 'Tecno T402', 'pc', '<p>Tecno T402, 2.4” Screen, Tripple Sim, Camera, 1500mAh</p>', 'en', '2021-07-19 03:11:30', '2021-07-19 03:11:30'),
(33, 24, 'Chicken Wings 1kg', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:11:31', '2021-07-19 03:11:31'),
(34, 42, 'Tecno T466', 'pc', '<p>Tecno T466-Triple SIM,2500MAH Battery, Bright Torch</p>', 'en', '2021-07-19 03:12:50', '2021-07-19 03:12:50'),
(35, 43, 'Tecno T528', 'pc', '<p>Tecno T528- 2.8 Inches 8MB RAM 16MB ROM, 2500mAh Battery, Camera With Flash</p>', 'en', '2021-07-19 03:15:25', '2021-07-19 03:15:25'),
(36, 25, 'Chicken Lollipops 1kg', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:16:03', '2021-07-19 03:16:03'),
(37, 44, 'Tecno T485', 'pc', '<p>Tecno T485 Feature Phone - 2.8\" - Dual Sim - 4000mAh - Loud FM Speaker -</p>', 'en', '2021-07-19 03:17:08', '2021-07-19 03:17:08'),
(38, 146, 'Infinix Hot 10 Lite X657B 32 GB ROM 2GB RAM 4G', '1', '<p>5000 mAh</p><p>4-Day Battery Life 6.6\"HD+</p><p>Waterdrop Sunlight Display</p><p>8MP</p><p>Selfie Camera With Dual Flash</p><p>13MP</p><p>Triple Camera</p>', 'en', '2021-07-19 03:19:16', '2021-07-19 03:22:16'),
(39, 116, 'itel it2173', '1', '<p>Strong frame&nbsp;</p><p>comes with charger&nbsp;</p><p>long lasting batteries</p>', 'en', '2021-07-19 03:20:07', '2021-07-19 03:20:07'),
(40, 45, 'Tecno T661', 'pc', '<p>Tecno T661, Ultra Slim 9.9mm, Dual Sim, 2.4ips Screen, 1200mah Battery</p>', 'en', '2021-07-19 03:20:30', '2021-07-19 03:20:30'),
(41, 47, 'Tecno POP3 (BB2)', 'pc', '<p>Tecno POP3 (BB2) 5.7\" Screen, 16GB ROM + 1GB RAM, Android 8.1 Oreo, 8MP + 5MP Camera, 3500mAh, Fingerprint &amp; Face ID</p>', 'en', '2021-07-19 03:23:29', '2021-07-19 03:23:29'),
(42, 117, 'itel it5606', '1', '<p>strong Frame</p><p>come with batteries</p><p>long lasting batteries</p>', 'en', '2021-07-19 03:24:00', '2021-07-19 03:24:00'),
(43, 26, 'Chicken Lollipops 1/2kg', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:25:01', '2021-07-19 03:25:01'),
(44, 27, 'Chicken Cubes 250g', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:26:27', '2021-07-19 03:26:27'),
(45, 28, 'Quarter Chicken', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:28:16', '2021-07-19 03:28:16'),
(46, 48, 'Tecno POP5 (BD2)', 'pc', '<p>Tecno POP3 (BB2) 5.7\" Screen, 16GB ROM + 1GB RAM, Android 8.1 Oreo, 8MP + 5MP Camera, 3500mAh, Fingerprint &amp; Face ID</p>', 'en', '2021-07-19 03:29:40', '2021-07-19 03:29:40'),
(47, 29, 'Chicken Gizzard 1kg', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:30:11', '2021-07-19 03:30:11'),
(48, 30, 'Chicken Gizzard 1/2kg', 'pc', '<p>Fresh from the farm to your kitchen</p>', 'en', '2021-07-19 03:32:52', '2021-07-19 03:32:52'),
(49, 31, 'Oranges 1kg', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:34:01', '2021-07-19 03:34:01'),
(50, 32, 'Bell Peppers', 'pc', '<p>Fresh from the garden to your kitchen</p>', 'en', '2021-07-19 03:35:13', '2021-07-19 03:35:13'),
(51, 50, 'Tecno POP4 Air (BC1)', 'pc', '<p>Tecno POP4 Air (BC1) 6.52\" Screen, 1GB RAM + 16GB ROM, 5000mAh Battery, Android 10, 5MP + 5MP Camera, Fingerprint</p>', 'en', '2021-07-19 03:52:12', '2021-07-19 03:52:12'),
(52, 118, 'itel it5081', '1', '<p>Itel5081 allows you to insert and use up to 2 Sim Cards in a single phone. Easily connect to different mobile networks and stay in touch with your loved ones. The it5081 makes calling much more comfortable and stress-free.More fun through Real Java\r\n</p><p>The it5081 gives you access to a number of amazing apps and games by means of its Real Java feature. Real Java makes it5615 compatible with multiple apps that have a Java version, which means that a great number of unexplored games and apps are no longer out of your reach.\r\n</p><p>With the internet browser Opera Mini, which comes preinstalled on the it5081, you can enjoy the Internet to the fullest without straining your data volume, because this fast, secure browser can not only block advertising or protect your privacy, but also save tons of data by streamlining your searches and downloads to make them as efficient as possible.Modelit5081</p>', 'en', '2021-07-19 03:54:55', '2021-07-19 03:54:55'),
(53, 51, 'Tecno POP4 (BC2c)', 'pc', '<p>Tecno POP4 (BC2c) 6\" Big Screen, 2GB RAM + 32GB ROM, 5000mAh Battery, Android 10, 8MP + 5MP Camera, Fingerprint</p>', 'en', '2021-07-19 03:55:02', '2021-07-19 03:55:02'),
(54, 52, 'Tecno POP 4 (BC3', 'pc', '<p>Tecno POP 4 (BC3) | 1gb RAM | 16gb ROM | 5000mAh | 5MP /8MP</p>', 'en', '2021-07-19 03:57:33', '2021-07-19 03:57:33'),
(55, 119, 'itel it5260', '1', '<p>he it5260 features itel’s latest King voice feature, an innovative text to speech application that works as a personal interpreter letting you navigate your it5260 with the help of a voice assistant. So now, whenever you receive a call or navigate the it5260 menu, the phone can read the incoming number to you and help you find what you need in the menu.\r\n</p><p><br></p><p><br></p>', 'en', '2021-07-19 03:58:19', '2021-07-19 03:58:19'),
(56, 157, 'Infinix Note 8 x692 128GB 4GB RAM 4G', '1', '<p>The set of high definition cameras allows you to capture every wonderful moment in life.</p><p>All those unbelievable detail, with crystal clear clarity and lifelike beauty.</p><p>Corning® Gorilla® Glass</p><p>5200mAh Massive Battery with Super Long Endurance</p><p>16M+ Portrait Lens Dual Front Camera<br></p><p>The intelligent 16MP front camera with Protrait Lens work closely to deliver stunning selfies.</p><p>6.95\" Dual Infinity-O Display</p><p>Prepared to Broaden Your Horizons</p><p>The Unprecedentedly Biggest Dual Front Camera Screen in Industry</p><p>Note 8 features a 20.5:9 screen with dual super tiny camera punch hole.</p><p>Time to levitating visual experience to a whole new level.</p><p>6.95\"<br></p><p>Dual Infinity-O Display</p><p>20.5:9</p><p>Ratio</p><p>1500:1<br></p><p>Contrast Ratio</p><p>480nit</p><p>Peak Brightness</p>', 'en', '2021-07-19 04:00:26', '2021-07-19 04:00:26'),
(57, 54, 'TECNO Spark GO 2020 KE5 ( 32GB , 2 GB', 'pc', '<p>TECNO Spark GO 2020 KE5 ( 32GB , 2 GB</p>', 'en', '2021-07-19 04:01:28', '2021-07-19 04:01:28'),
(58, 120, 'itel it5615m', '1', '<p>Expand Your Phone Usage Time with the 2500mAh Battery and Super Battery Mode\r\n</p><p>Using the long-lasting 2500mAh battery, enjoy over 36 hours of phone calls and up to 55 days of phone usage. For even longer battery life and continued phone usage before your next charge, enter super battery mode.\r\n</p><p>The Spotlight Torch Provides the Ultimate Level of Brightness\r\n</p><p>With the it5615 feature phone’s illuminating LED torch, never be left in the dark again. The bright LED light serves as an effective flashlight to help you see more clearly. It can also be utilized as a reminder light whenever a call is received.\r\n</p><p>Tune in to Wireless FM Without Needing Headphones or Earbuds\r\n</p><p>Keep up with the greatest hits and the most current events while listening to Wireless FM. Stay connected with the latest news and media anywhere you go without ever needing to use earphones to tune in.\r\n</p><p>Frequently Used Apps Like Facebook Are Already Built-In\r\n</p><p>Stay online and network with friends and family through built-in social media apps such as Facebook. Keep up to date on the latest news and updates from your social circle and interact with them in real-time</p>', 'en', '2021-07-19 04:01:57', '2021-07-19 04:01:57'),
(59, 55, 'Tecno Spark 5 Air KD6A', 'pc', NULL, 'en', '2021-07-19 04:03:29', '2021-07-19 04:03:29'),
(60, 155, 'Infinix Note 7 x690 64GB ROM 4 GB RAM 4G', '1', '<p>Explore</p><p>Cinematic screen in the palm of your hand</p><p>With a tiny, punch-hole camera lens, the 6.95\" HD+ Infinity-O display makes for</p><p>an all around immersive experience.</p><p>6.95 HD+</p><p>Infinity-O display</p><p>91.5%<br></p><p>Screen-to-body ratio</p><p>20.5:9<br></p><p>Ratio</p><p><br></p><p>480</p><p>nit</p>', 'en', '2021-07-19 04:04:34', '2021-07-19 04:11:10'),
(61, 121, 'itel it5360', '1', '<p>The Itel it5360 is just perfect! Its slim build and portable design make it easy to carry around and the 64MB memory can be expanded to 32GB via microSD. Take nice pictures with  rear camera with flash. The 1900mAh battery lasts through several hours of heavy use.\r\n</p><p>Ultra Slim Design\r\n</p><p>Not only does the itel it5360 have a nice shape, but it also features a silky sheen, thanks to its unique design.\r\n</p><p>2.8\" Big Screen\r\n</p><p>The itel it5360 2.8” screen lets you easily navigate all of the phone’s functions. It is ideal for capturing and viewing pictures, streaming video and for quickly finding useful information\r\n</p><p>Model itel 5360  has Display2.8\'\' Big Screen Camera Rear Camera 1.3MP with Flash Memory64MB ROM + 64MB RAM, up to 32GB\r\n</p><p>Battery Capacity1900mAh</p><p>\r\n</p>', 'en', '2021-07-19 04:04:36', '2021-07-19 04:04:36'),
(62, 56, 'Tecno Tab 4G P704A', 'pc', '<p>Tecno Tab 4G P704A Internal 32GB+2GB RAM 7\"IPS Screen Display 5000mAh Battery</p>', 'en', '2021-07-19 04:06:02', '2021-07-19 04:06:02'),
(63, 57, 'Spark 5 PRO (KD7)', 'pc', '<p>Tecno Spark 5 PRO (KD7) 6.6\" HD+ 4GB RAM + 128GB ROM, , Android 10, 4G, 5000mAh, Ice Jadeite</p>', 'en', '2021-07-19 04:08:11', '2021-07-19 04:08:11'),
(64, 122, 'itel it5626', '1', '<p>The iTel IT5626 has almost same specs as the iTel Power 700. It is a feature mobile phone and come with a 2500mAh battery that can last about 5 to 8 working days. It has a 2.8-inches screen and measures 139.6 x 57.8 x 14.7mm and come with four bright LED light overhead the phone</p><p>On the inside, the iTel IT5626 is got the UNiSOC SC6531C CPU pegged with 8MB RAM and 8MB ROM. The device support Java+ Opera mini, and come with 2G network with 900/1800 MHz band. It can store upto 2000 contacts and 500 messages and come with 0.08MP lens at the back.</p>', 'en', '2021-07-19 04:09:03', '2021-07-19 04:09:03'),
(65, 123, 'itel it6350', '1', '<p>itel it6350</p><p>long-lasting battery<br><br></p>', 'en', '2021-07-19 04:11:09', '2021-07-19 13:50:52'),
(66, 124, 'itel A14', '1', '<p>The itel A14 combines a user-friendly interface with innovative technology and a sleek design in one handy device. A 4 inch android smartphone that will satisfy your daily mobile computing needs.It has a 1.3GHz quad core processor and is equipped with a 2MP back camera and front camera 0.3mp that lets you take lovely pictures with friends and family.\r\n</p><p>Order for it online on Jumia and have it delivered to your doorstep. \r\n</p><p>Impressive View\r\n</p><p>The itel A14 Quad Core Phone has an impressive 4 inch display at an impressive resolution for vibrant and rich colour viewing. You will be able to view pictures and text in high definition whether you are indoors or outdoors. \r\n</p><p>Awesome Processor\r\n</p><p>The quad core processor of this phone will help to support multitasking and a seamless performance. The 1.3GHz processing speed will also allow you stream high definition content from the internet with ease.\r\n</p><p>Display\r\n</p><p>4.0\'\' screen\r\n</p><p>Resolution: 480*800\r\n</p><p>Operating System\r\n</p><p>Android 8.1 ( GO edition)\r\n</p><p>Processor\r\n</p><p>Mediatek 6572\r\n</p><p>Camera\r\n</p><p>Back 2.0 MP\r\n</p><p>Front 0.3 MP\r\n</p><p>Memory\r\n</p><p>8GB HDD\r\n</p><p>512MB RAM\r\n</p><p>up to 32GB flash\r\n</p><p>Connectivity\r\n</p><p>WiFi hotspot\r\n</p><p>Bluetooth\r\n</p><p>USB port\r\n</p><p>Earphone\r\n</p><p>Messaging\r\n</p><p>WhatsApp\r\n</p><p>Palmchat\r\n</p><p>Facebook\r\n</p><p>hotspot\r\n</p><p>Battery \r\n</p><p>Capacity: 1500mAh</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 04:13:18', '2021-07-19 04:13:18'),
(67, 58, 'Tecno Spark 7 P (KF7j)', 'pc', '<p>Tecno Spark 7 P (KF7j) 6.8\" HD+, 64GB ROM +4GB RAM, 16MP Triple Camera, 5000mAh, Helio G70, 4G, Fingerprint</p>', 'en', '2021-07-19 04:15:40', '2021-07-19 04:15:40'),
(68, 143, 'Infinix Hot 10 x682B 64GB ROM 3Gb RAM 4G', '1', '<p>First ever Octa-core Helio G70 in HOT series, intelligent management of CPU, GPU and memory, gaming performance has been greatly improved. Supports multi-tasking, rapid switch between tasks even during gaming.</p>', 'en', '2021-07-19 04:15:44', '2021-07-19 04:21:15'),
(69, 125, 'itel A14 Plus', '1', '<p>Super Sleek &amp; Stylish DesignThe A14 Plus adopts an elegant and stylish design that is not only modern and trendy but practical and comfortable too! With a curved edge design and a 4” size, this mobile fits perfectly into the palm of one hand.</p><p>Enjoy All Day Usage with the 2500mAh BatteryThe A14 Plus has a 2500mAh big battery that can last for 2-3 days on one single charge! With an 60% increased battery size from the 1500mAh battery, this mobile allows you to enjoy and experience life with no worries!</p><p>A Bigger 16GB MemoryEnjoy 16GB ROM + 512MB RAM with the A14 Plus! Compared with other mobile phones of a similar price range, the A14 Plus has double the storage to ensure you can save all your favourite photos, music and videos.</p><p>Experience and Enjoy Dual FlashCapture natural and charming selfies with our A14 Plus! With Dual Flash and a soft front flash design, this mobile takes stunning selfies every time without hurting your eyes!</p>', 'en', '2021-07-19 04:16:24', '2021-07-19 04:16:24'),
(70, 59, 'Tecno Pouvoir 4 LC7', 'pc', '<p>Tecno Pouvoir 4 LC7 3GB RAM 32GB ROM</p>', 'en', '2021-07-19 04:16:56', '2021-07-19 04:16:56'),
(71, 126, 'itel A16', '1', '<p>The iTel A16 is very similar in design and specifications with the iTel A16 smartphone. And just like the A16, this unit is very cost effective and budget friendly phone from iTel mobile. The device features a 5-inch display with a screen resolution of 480 x 854 pixels and runs on Android v 8.1 (Oreo: Go Edition).\r\n</p><p>Specs wise. the device is powered by a Quad core, 1.3 GHz processor paired with 1 GB of RAM and an expandable 8GB internal storage. You get a 2050 mAh battery juice and just 2MP front and back camera sensors. Other sensors include Accelerometer and Face unlock features</p><p>\r\n</p>', 'en', '2021-07-19 04:18:31', '2021-07-19 04:18:31'),
(72, 60, 'Tecno Camon 17 (CG6)', 'pc', '<p>Tecno Camon 17 (CG6) 6.6\" 90Hz HD+, 4GB RAM + 128GB ROM, 48MP Triple Rear + 8MP Selfie Camera, Android 11, 5000mAh</p>', 'en', '2021-07-19 04:20:20', '2021-07-19 04:20:20'),
(73, 127, 'Itel A35 16GB ROM 1GB RAM', '1', '<p>Better Performance with Android™ 10 (Go edition)\r\n</p><p>With system optimization for entry-level smartphones, the latest Android™ 10 (Go edition) operating system provides 3x more available storage out of the box with fewer pre-installed and much lighter apps.\r\n</p><p>Enjoy a Better and Bigger View with the 5.0”DisplayWith its 5.0” big screen display, A35 offers you an impressive viewing experience when you are watching video or reading news.\r\n</p><p><br></p>', 'en', '2021-07-19 04:23:15', '2021-07-19 04:23:15'),
(74, 62, 'Tecno Camon 17 Pro CG8', 'pc', '<p>Tecno Camon 17 Pro CG8 8GB RAM 256GB ROM</p>', 'en', '2021-07-19 04:23:18', '2021-07-19 04:23:18'),
(75, 128, 'Itel P15 5.0\" HD Screen, 16GB ROM + 1GB RAM, Android 9', '1', '<p>Itel P15 - 5 Inch, 16GB ROM, 1GB RAM, Android 9 Pie(Go edition), 4000mAh, 5MP + 5MP Camera with Front FlashThe specialty of itel P15 is its 4000 mAh big battery. You will hardly ever find such a powerful battery in this price range. 5-inches Full-View display is trendy and large compared to mostly 5-inch displays from other brands. Performance is reasonable and Android Go will further optimize it. You can\'t expect a better performance in this budget.  Again, there are very few phones in this price range with their battery and design as good as the P15. Moreover, the dual 5 MP autofocus back camera is also pretty good for the price. Overall, this smartphone can still be a fine choice for you.\r\n</p><p>Specifications\r\n</p><p>Network Scope 2G, 3G\r\n</p><p>Battery Type &amp; Performance 4000 mAh\r\n</p><p>Weight 0.1kg\r\n</p><p>Camera Factors (Back) LED Flash, autofocus\r\n</p><p>Camera Resolution (Back) Dual 5 Megapixel\r\n</p><p>Camera Resolution (Front) 5 Megapixel\r\n</p><p>Colors Available Champagne Gold, Piano Black\r\n</p><p>Display Size &amp; Resolution 5.0 inches, FWVGA 480 x 960 pixels, (168 ppi)\r\n</p><p>Display Type 18:9 ratio Full-View Touchscreen\r\n</p><p>Graphic Processing Unit (GPU) Mali 400\r\n</p><p>Memory Card Slot MicroSD, up to 32 GB\r\n</p><p>Operating System Android 9 Pie (Go Edition)\r\n</p><p>Processor Quad-Core, 1.3 GHz\r\n</p><p>RAM 2 GB\r\n</p><p>ROM 16 GB\r\n</p><p>Sensors Accelerometer\r\n</p><p>SIM Card Type Dual SIM (Nano-SIM, dual stand-by)\r\n</p><p>USB MicroUSB v2.0\r\n</p><p>Video Recording Yes\r\n</p><p>Wireless LAN Yes\r\n</p><p>Other Features - Bluetooth, GPS, A-GPS, MP3, MP4, Radio, GPRS, Edge, Multitouch, Loudspeaker\r\n</p><p><br></p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 04:26:08', '2021-07-19 04:26:08'),
(76, 144, 'Infinix Hot 10 Play X688C 32GB ROM 2GB RAM 4G', '1', '<p>Power Marathon</p><p>Non-stop Playing</p><p>MediaTek Helio G35</p><p>Smooth Game Playing</p><p>6.82” HD+ Video</p><p>Playing Display</p><p>8MP Beauty</p><p>Front Camera</p><p>13MP AI Dual</p><p>Rear Camera</p><p>Face Unlock</p><p>&amp; Fingerprint</p><p><br></p><p>Power Your Day with</p><p>6000mAh Super Battery</p>', 'en', '2021-07-19 04:27:13', '2021-07-19 04:27:13'),
(77, 129, 'Itel A37 – 5.71inches 16GB 1GB RAM', '1', '<p>Given that the itel A37 is the successor to the A36, it makes perfect sense to compare the two and see what is new and if upgrading to the newer model is worth it. Both are pretty good phones but at the end of the day you have to choose one and in this case it should be one that ticks all the right boxes for you.\r\n</p><p>In this comparison review, I will highlight some of the key things you get on the new itel A37 and get to see if the upgrade is worth it.\r\n</p><p>The itel A37 comes with a new design concept and a waterdrop notch that houses the front facing camera. The waterdrop notch wasn’t even available on the A36 and gives the phone a screen to body ratio of 84.7%, far higher than the same price phones in the industry.\r\n</p><p>With the waterdrop notch, we are getting a much cleaner look that itel says brings “a natural beauty as well as a gentle touch experience on usage.”\r\n</p><p>Big DisplayAs for the display, the itel A37 comes with a bigger 5.7-inch IPS LCD display with a resolution of 1280 by 720 pixels. With a bigger display, media consumption is pleasant compared to what the itel A36 offered. You get to enjoy the sharper display as well as more vivid photos that add to the overall good experience.\r\n</p><p>The display is not just big but has color rendering effect which is richer and makes the photos and videos pop appearing more vivid and real.\r\n</p><p>Still on the display, there is the eye care mode that lets the screen become soft and warm and this helps reduce strain on your eyes and thus help you fall asleep faster even when you use the phone just before bedtime. Soft lightness is also important for those who spend so much time on their phones as it gives better protection to the eyes.\r\n</p><p>Hardware and ProcessorThe itel A37 is powered by a 1.3 GHz quad-core processor that the company has paired with 1GB of RAM and 16GB of storage space. Performance is good with this and might be better than most other smartphones within its price. The bigger storage space also allows you to save more photos and create memories.\r\n</p><p>The phone also comes with the FREEZER app that ensures that the apps that you do not use regularly are kept in the freezer until you need to use them. With this, the phone will not be slowed down by too many apps as is the case with most other phones. This is usually one of the causes of bad experiences among smartphone users.</p><p>\r\n</p>', 'en', '2021-07-19 04:27:59', '2021-07-19 04:27:59'),
(78, 130, 'itel A56 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery', '1', '<p>The iTel A56 is a low-end smartphone from iTel Mobile. The major selling point of this new little guy is the presence of a large 4000mAh battery. This is same battery capacity used in recent iTel phones, including the iTel P15. But unlike the P15, the A56 comes in a 6.0-inch display with 480 x 960 pixels resolution.\r\n</p><p><br></p>', 'en', '2021-07-19 04:30:06', '2021-07-19 04:30:06'),
(79, 131, 'itel A56 Pro 2 GB of RAM and 32 GB of storage', '1', '<p>Bigger screen for a better experience Submerge in the wonders of the A56 Pro’s new 6\" IPS Full Screen Display. The 18:9 aspect ratio allows you to immerse yourself completely in movies and games. Even under bright sunlight the A56 Pro’s 500 nits super bright display and IPS panel will deliver the best viewing experience possible.\r\n</p><p>Longer duration battery for more freedom Powered by a massive 4000 mAh battery, along with Android’s smart energy-saving chipset, the A56 Pro will never let you down. It can support up to 21 hours of continuous calls, 54 hours of music playback and 8 hours of video playback. This gives you enough energy for a long day\r\n</p><p>Extra big memory for extra big files Never worry about storage. With its expanded memory, the A56 Pro gives you all the space you need for your favorite photos, songs and movies.\r\n</p><p>Compact and slim design Discover a classy and elegant design. The A56 Pro incorporates a rear glass effect and a bright mirror frame with deep reflections and an elegant gradient effect. It’s resistant and slim uni body as well as its curved edge further make it easy to operate and to hold in one hand.\r\n</p><p>Keep your personal information safe with advanced facial recognition Equipped with an infrared light sensor and an infrared camera, facial unlocking is instantaneous and always successful, now even under low light conditions thanks to the Screen Fill Light technology. The face unlock feature is safe and convenient, as it prevents thieves from stealing your information.</p>', 'en', '2021-07-19 04:32:43', '2021-07-19 04:32:43'),
(80, 132, 'itel P36 ROM: 16GB · RAM: 1GB · REAR CAMERA: 8MP Dual', '1', '<p>The iTel is the direct successor of iTel P36 model of last year. The new model come in a refreshed design than it predecessor, and offers newer Android OS out of the box. From the front, the phone sports a 6.5-inch HD+ display with 720 x 1600 pixels, and have same IPS panel with a notch above the screen.\r\n</p><p>On the inside, the new iTel is powered by a quad-core UNISOC SC7731E @1.3GHz, along with Mali-T820 MP1 GPU, 2GB RAM and 32GB of internal storage.\r\n</p><p>For the camera department, you are getting two lenses at the back of the phone, an 8 MP main snapper and a 0.3 MP depth sensing lens, while a single 8-megapixel selfie shooter is left in the notch upfront.\r\n</p><p>There is also a rear placed fingerprint scanner, AI FaceID and a slot for dual SIM cards. The device has a 5000mAh battery on the side, and available in Gradient Purple, Gradient Blue and Dark Blue colors, while Google Android 10 (Go Edition) runs out of the box</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 04:35:18', '2021-07-19 04:35:18'),
(81, 71, 'Azam Flour Home Baking Flour - 2Kg', 'pc', NULL, 'en', '2021-07-19 04:37:52', '2021-07-19 04:37:52'),
(82, 133, 'Prime Tab 1: Memory: 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', '1', '<p>Set a Time Limit on App Usage Through the Preloaded Kid Zone AppProtect your kids’ eye by limiting their amount of continuous app usage through the Kid Zone App. This app helps keep kids from playing hours of non-stop gaming without resting in between.</p><p>16GB of ROM Provides Large Storage AvailabilitySave all your favorite content and media on your phone without worrying about running out of memory. 16GB of ROM provides you with plenty of room on your device to store all your photos, songs and videos.</p><p>Take Beautiful Selfies and Portraits on the 5.0MP Rear CameraUse the 5.0MP rear camera and the 2.0MP front camera to capture wonderful moments and memories in real-time. With the assistance of helpful features such as beauty mode, you can continue to take your photography skills to the next level.\r\n</p><p><br></p>', 'en', '2021-07-19 04:38:22', '2021-07-19 04:38:22'),
(83, 87, 'Raha Drinking Chochlate 200g', 'pc', '<p>Raha Drinking Chocolate 200G Jar</p><p>Raha is  Rich in Polyphenols That Provide Several Health Benefits. May Reduce High Blood Pressure by Improving Nitric Oxide Levels. May Lower Your Risk of Heart Attack and Stroke. May Improve Mood and Symptoms of Depression by Various Means. Hot chocolate, also known as drinking chocolate, cocoa, and as chocolate tea in Nigeria, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream .<br></p><p>It is a known as drinking chocolate, cocoa, and as chocolate tea in , is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream or marshmallows.</p><p>Chocolate is synonymous with celebration, happiness &amp; comfort. But there’s so much more to its wondrous charm than meets your taste buds.</p><p>Drinking Chocolate is a delicious hot chocolate drink. For that perfect cup sprinkle three heaped teaspoonfuls into a cup of hot milk and enjoy. Drinking Chocolate is perfect any time of the day<br></p><p><br></p><p>Buy this Drinking Chocolate from KaKebe to enjoy doorstep delivery!</p>', 'en', '2021-07-19 04:39:19', '2021-07-19 04:39:19'),
(84, 134, 'itel S16 Pro: Memory. 32GB ROM + 2GB RAM (Up to 32GB)', '1', '<p>The New Dot-notch DisplayExperiencing a new and innovative 6.6\" HD+ Dot-notch Full Screen with 1600*720 resolution, a 20:9 aspect ratio and a 90% screen-to-body ratio, S16 Pro provides a more fashionable design and a clearer view that is sure to satisfy any user\r\n</p><p>8.3 mm Super Slim Unibody Design for Super Stylish YouThe incredible unibody design provides an extra slim and portable experience whilst ensuring the mobile is splash and dust proof to give owners ultimate protection and peace of mind.\r\n</p><p>New &amp; Improved AI Selfie 2.0Add beauty effects and filters with the AI Face Beauty 3.0, blur the background with the AI Bokeh Effect, capture more detail with the AI Portrait HDR and snap a selfie just by smiling thanks to the smile shot feature!\"Stay Focused\" With AI Triple Rear CameraExperience the 8 mega-pixel main camera that captures stunning quality pictures combined with the 2 mega-pixel macro camera that brings you closer to the subjects that matter. The depth sensing camera can judge distance and depth that takes your photography to a new level!</p>', 'en', '2021-07-19 04:43:51', '2021-07-19 04:43:51'),
(85, 135, 'itel S16 Pro (4G): 2 GB RAM, 32 GB inbuilt; 4000 mAh Battery', '1', '<p>The New Dot-notch DisplayExperiencing a new and innovative 6.6\" HD+ Dot-notch Full Screen with 1600*720 resolution, a 20:9 aspect ratio and a 90% screen-to-body ratio, S16 Pro provides a more fashionable design and a clearer view that is sure to satisfy any user</p><p>8.3 mm Super Slim Unibody Design for Super Stylish YouThe incredible unibody design provides an extra slim and portable experience whilst ensuring the mobile is splash and dust proof to give owners ultimate protection and peace of mind.\r\n</p><p>New &amp; Improved AI Selfie 2.0Add beauty effects and filters with the AI Face Beauty 3.0, blur the background with the AI Bokeh Effect, capture more detail with the AI Portrait HDR and snap a selfie just by smiling thanks to the smile shot feature!\r\n</p><p>\"Stay Focused\" With AI Triple Rear CameraExperience the 8 mega-pixel main camera that captures stunning quality pictures combined with the 2 mega-pixel macro camera that brings you closer to the subjects that matter. The depth sensing camera can judge distance and depth that takes your photography to a new level!\r\n</p><p><br></p>', 'en', '2021-07-19 04:47:43', '2021-07-19 04:47:43'),
(86, 137, 'itel P37 Pro (4G)', '1', '<p>iTel P37 Pro is the higher variant of P37, and the direct upgrade to the P36 Pro LTE version of last year. About upgrade, the P37 Pro is offering a larger display as well as enormous internal storage. The model sports a 6.8-inches IPS screen with 720 x 1640 pixels resolution, while a dewdrop seat above the display.\r\n</p><p>Under the hood, the P37 Pro is powered by an octa-core 1.6GHz UNISOC SC9863A CPU pegged with PowerVR GE8322 GPU. The model has 2GB RAM and 32GB of expandable internal storage. For the software, iTel is still retaining Google Android 10 (Go Edition) out of the box.</p><p>As for the camera setup, you are getting dual sensors on the rear, and a single snapper upfront. The rear module includes a 13-megapixel primary lens along with a secondary AI sensor, while a single 8-megapixel selfie snapper is used in the notch upfront.</p><p>The device supports dual Nano-SIM with 4G LTE network, and available in Gradation Blue, Gradation Sea Blue and Gradient Green. You are also getting a fingerprint scanner on the rear, a 5000mAh battery and the aforementioned Google Android 10 (Go Edition) out of the box</p>', 'en', '2021-07-19 04:50:30', '2021-07-19 04:50:30'),
(87, 136, 'itel P37', '1', '<p>The iTel is the direct successor of iTel P36 model of last year. The new model come in a refreshed design than it predecessor, and offers newer Android OS out of the box. From the front, the phone sports a 6.5-inch HD+ display with 720 x 1600 pixels, and have same IPS panel with a notch above the screen.\r\n</p><p>On the inside, the new iTel is powered by a quad-core UNISOC SC7731E @1.3GHz, along with Mali-T820 MP1 GPU, 2GB RAM and 32GB of internal storage.\r\n</p><p>For the camera department, you are getting two lenses at the back of the phone, an 8 MP main snapper and a 0.3 MP depth sensing lens, while a single 8-megapixel selfie shooter is left in the notch upfront.\r\n</p><p>There is also a rear placed fingerprint scanner, AI FaceID and a slot for dual SIM cards. The device has a 5000mAh battery on the side, and available in Gradient Purple, Gradient Blue and Dark Blue colors, while Google Android 10 (Go Edition) runs out of the box</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 04:52:16', '2021-07-19 04:52:16'),
(88, 61, 'Tecno Camon 17P (CG7)', 'pc', '<p>Tecno Camon 17P smartphone was launched on 7th May 2021. The phone comes with a 6.80-inch display with a resolution of 1080x2460 pixels at a pixel density of 395 pixels per inch (ppi).Tecno Camon 17P comes with 6GB of RAM. The Tecno Camon 17P runs Android 11 and is powered by a 5000mAh battery. The Tecno Camon 17P supports proprietary fast charging.\r\n</p><p>As far as the cameras are concerned, the Tecno Camon 17P on the rear packs a 64-megapixel primary camera; a 2-megapixel camera; a 2-megapixel camera, and an AI camera. It sports a 16-megapixel camera on the front for selfies.\r\n</p><p>The Tecno Camon 17P runs HiOS 7.6 is based on Android 11 and packs 128GB of inbuilt storage. The Tecno Camon 17P measures 168.67 x 76.44 x 8.82mm (height x width x thickness) . It was launched in Frost Silver, Magnet Black, and and Spruce Green colours.\r\n</p><p>Connectivity options on the Tecno Camon 17P include Wi-Fi, GPS, and USB Type-C. Sensors on the phone include fingerprint sensor.</p>', 'en', '2021-07-19 09:02:39', '2021-07-19 13:54:26'),
(90, 49, 'Tecno POP 5 (BD2p)', 'pc', '<p>The New Hot 10T Series the highly anticipated gaming and entertainment smartphone addition to the  Hot 10 portfolio. The Infinix Hot 10T sets a new standard for power, innovation and style by combining sophisticated processing technologies with long-lasting battery performance, a triple camera with Super Nightscape imaging and an ultra-smooth display, encased in a stunning design inspired by nature.\r\n</p><p>The Hot 10T Series features Infinix’s powerful Dar-link optimization engine software, which improves graphic display and touchscreen sensitivity with self-learning AI algorithm capabilities that minimize lag time. With more than 2.7 billion mobile gamers expected by 2023, the Hot 10T smartphone is equipped with a MediaTek Helio G70 chipset to meet the increasing demand for enhanced gaming experiences.\r\n</p><p>Upgraded Design: The Hot 10T adopts pioneering Laser Micron Lithography Technology to create a beautiful shimmer appearance that draws inspiration from the Salar de Uyuni in Bolivia. With smooth-edges and an under-display selfie camera, the Hot 10T is a highly recommended gaming and entertainment device.\r\n</p><p>Buttery-Smooth Display: Boasting a cutting-edge 6.82” HD+ display with 90Hz refresh rate, consumers gain a brilliant viewing experience when watching the latest CGI visual effects. The 180Hz touch sampling rate delivers optimal responsiveness and the intuitive facial recognition enables faster, safer and more convenient device unlocking.\r\n</p><p>Triple 48MP HD Camera with AI: For the first time within the HOT portfolio, the Hot 10T packs a 48MP HD rear camera, an AI camera and a 2MP depth camera with rear Flash. The all-new Super Nightscape feature enables users to take impressive pictures in dark/low-light scenarios while the 2K resolution video recording captures authentic true-to-life footage.\r\n</p><p>MediaTek Helio G70 Chipset: This chipset packs a powerful performance while maximizing battery life for a superior gaming experience. Leveraging innovative dynamic resource management technology, the connectivity powered by MediaTek’s Helio G70 brings faster response times and quicker frame rates. Furthermore, this results in consistent &amp; reliable connectivity which significantly reduces lag time. \r\n</p><p>A 5000mAh Battery: The impressive battery offers 76 hours of calling time on a single charge. Enhanced by power-saving Power Marathon technology that provides an additional 25% power once the battery runs down to 5%, gamers no longer need to think about dreaded battery shutdowns when playing, or embarrassing low battery notifications on video calls. \r\n</p><p>Advanced Software: The DTS Audio processing technology helps elevate sound effects during gameplay. Users can customize the sound effects for better sound quality experiences in games, music and movies. The Infinix XO7.6 is based on Android 11 with a fresh and smarter interface than its predecessor.\r\n</p><p>Dar-link Ultimate Game Booster: The Hot 10T incorporates Infinix’s optimization engine software, the Dar-link Ultimate Game Booster, which works with the smartphone’s hardware to improve the graphic image stability and screen sensitivity.\r\n</p><p>Secured User Privacy: With user data protection and privacy as a priority, two key systems have been implemented into the Hot 10T. X-Proof secures the screen from behind so that user’s screens won’t be snooped on in public, furthermore, all user data on the device stays on the device and is never uploaded to the cloud. In an era when privacy is more prevalent than ever, Infinix has taken extra steps to fully secure it.\r\n</p><p>The Hot 10T features an AI portrait enhancing 8MP front camera to capture sharp images that reflect the results of a professional camera. This camera is the first-ever in the HOT series to offer eye-tracking autofocus, auto-blur videos and face beautification, empowering users to capture the perfect shot. \r\n</p><p>The Hot 10T also features a nightscape 48MP rear HD camera that allows users to take impressive images and videos in both day and night. The 240FPS slow-motion shooting also helps users capture smooth movements for the perfect action shot. \r\n</p><p>The ultimate smartphone entertainment experience with MediaTek’s Helio G70\r\n</p><p>The Hot 10T is the first in its series to be equipped with MediaTek’s Helio G70 chipset to provide an outstanding performance for avid mobile gamers. The octa-core CPU features two powerful Arm Cortex-A75 CPUs operating up to 2GHz and six Cortex-A55 processors operating up to 1.8GHz, interlinked by a large L3 cache for improved performance.\r\n</p><p>MediaTek’s HyperEngine combines various technologies to enhance the overall gaming experience with sustained performance for a longer period. With this feature, gamers can expect smoother performance in demanding game engines, along with intelligent dynamic management of CPU.\r\n</p><p>The Dual 4G SIM support provides exceptional voice and video call quality via VoLTE/ViLTE services, along with faster connection setup time, more reliable coverage and lower power consumption from either SIM connection.\r\n</p><p>The chipset also features built-in integrated voice wake-up capabilities (VoW) that minimize the power of applications in the Android OS, such as the always-on Google Assistant.\r\n</p><p>Play all day with a long-lasting battery\r\n</p><p>To provide users with a non-stop gaming experience, the Hot 10T comes equipped with a battery capacity of 5000mAh. Based on testing from the Infinix data lab, the Hot 10T supports 55 days on standby, 170 hours of music playback, 15.0 hours of continuous gaming or 76 hours of calls on a full charge.\r\n</p><p>The built-in Safe-Charge technology ensures that the power is automatically turned off once the device is fully charged to avoid overheating and wasting energy, while the Power Marathon technology contributes an extra 25% power when the battery runs low – that’s 3.5 hours of additional call time for users.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 09:11:06', '2021-07-19 09:11:06'),
(91, 72, 'Kakira Sugar - 2kg', 'pc', '<p>​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages</p>', 'en', '2021-07-19 13:39:16', '2021-07-19 13:39:16'),
(92, 73, 'Kakira Sugar - 1kg', 'pc', '​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages', 'en', '2021-07-19 13:41:39', '2021-07-19 13:41:39'),
(93, 74, 'Kakira Sugar - 10kg', 'pc', '<p>​Sweet material that consists essentially of sucrose obtained from sugarcane, is typically colorless or white when pure, and is commonly used to sweeten foods and beverages</p>', 'en', '2021-07-19 13:44:04', '2021-07-19 13:44:04'),
(94, 64, 'Fortune Gold Oil 5 Litres', 'pc', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 13:50:39', '2021-07-19 13:53:32'),
(95, 104, 'Always Vaccum  Jug  3L TSC-30D', 'pc', '<p>Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\n</p><p>Take it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\n</p><p>Order on Kakebe Uganda online and have it delivered to your door step\r\n</p><p>This vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 3.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\n</p><p>Stainless Steel Professional Thermos Flask\r\n</p><p>A double layer of stainless steel – keeps warm and doesn’t break.\r\n</p><p>The body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\n</p><p>Double-walled vacuum flask, stainless steel, with attached lid. Holds 3.0 Litres Suitable for dishwasher.\r\n</p><p>For more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.\r\n</p><p><br></p><p>\r\n</p>', 'en', '2021-07-19 13:56:07', '2021-07-19 13:56:07'),
(96, 103, 'Always Vaccum  Jug  2L TSC-30D', 'pc', '<p>Keep your beverages at the temperature of your choice. Take them out with this easy to use and pour Vacuum Flask. The cup adds to your convenience of just unscrewing the lid and pouring out in accordance with as thirst as you see. \r\n</p><p>Take it along with you anywhere you like. Also a great bottle for school going kids. It will give the kids moderate temperature of their desire. And for gym and work out lovers keep it with you to avoid dehydration during work outs.\r\n</p><p>Order onKakebe Uganda online and have it delivered to your door step\r\n</p><p>This vacuum flask has a lever lid for easy dispensing and its airport keeps beverages hot/cold for 24 hours. It comes with a stainless steel exterior &amp; interior, lever lid, 2.0 Litres capacity, vacuum insulation, handle for carrying and so much more.\r\n</p><p>Stainless Steel Professional Thermos Flask\r\n</p><p>A double layer of stainless steel – keeps warm and doesn’t break.\r\n</p><p>The body of the container – a double-walled vacuum thermos flask – is of stainless steel throughout. In other words, there’s no glass to break, and no plastic screw-top. It’s been specially made for hotels and restaurants – unbreakable, and suitable for the dishwasher.\r\n</p><p>Double-walled vacuum flask, stainless steel, with attached lid. Holds 2.0 Litres Suitable for dishwasher.\r\n</p><p>For more than 30 years, we have been committed to the idea of using high quality products in a considered way - products that enrich the lives of all of us and give us constant joy.\r\n</p><p><br></p><p>\r\n</p>', 'en', '2021-07-19 14:00:53', '2021-07-19 14:00:53'),
(97, 90, 'Lato Milk Liquid 12x500ml', 'pc', '<p>Lato UHT Milk comes from cow’s milk that is treated to high temperatures and then rapidly cooled to kill the bacteria and spores in the milk.\r\n</p><p>Lato Flavoured milk is a nutritious drink made from UHT milk with added natural flavours. It is particularly enjoyed by kids as its great taste encourages consumption and provides them with the essential nutrients they need to grow.\r\n</p><p>The UHT treatment increases the shelf life of the milk, allowing consumers the convnience to store it in ambient conditions without the need for refrigeration.\r\n</p><p>Lato&nbsp; milk in 200 ml and 500ml Fino pack fulfils basic consumer requirements of safety and hygiene at an affordable cost. Meeting the consumer need for long-life milk, the multi-layered pack can be stored in ambient conditions.\r\n</p><p>Available in 200 ml and 500 ml pouch made of a seven layer film with polyethylene, aluminum foil and paper board.\r\n</p><p>180 Days when sealed and stored at ambient room temperatures away from sunlight in a cool and dry place.\r\n</p><p>4 days once opened, to be refrigerated between 4° C – 6° C.\r\n</p><p>For consumption as liquid milk, preparation of tea, coffee and milk based beverages.\r\n</p><p>Not intended for infant feeding.\r\n</p><p>The Fino pack has a shelf life of 180 days\r\n</p><p>Order on KaKebe Shoponline and receive at your door step, STAY SAFE.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 14:07:28', '2021-07-19 14:07:28'),
(98, 102, 'Sunvita Cooking Oil 5l', 'pc', '<p>Cooking Oil -1Litre.This is typically a blend of many different refined oils, is neutral-tasting and smelling. Want to get crispy-skinned fish or perfectly golden scallops?, this oil\'s your deal. The   Oil is a refined and fortified oil made for the perfect result of cooking. It will help you make the perfect meal for you and your family to enjoy. It is used for all purposes of frying, baking. Get this for yourself and enjoy nicely fried foods with your family. \r\n</p><p>Select from a wide range of Unique products on KaKebe and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.</p>', 'en', '2021-07-19 14:10:08', '2021-07-19 14:10:08'),
(99, 101, '2 in 1 Lucid Blender', 'pc', '<p>&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance.&nbsp;</p>', 'en', '2021-07-19 14:12:33', '2021-07-19 14:12:33'),
(100, 100, 'Lucid Multi-function Blender LBMG19', 'pc', '<p>&nbsp;Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar..&nbsp;</p>', 'en', '2021-07-19 14:14:44', '2021-07-19 14:14:44');
INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(101, 99, 'Lucid Dry Iron LM-1881', 'pc', '<p>Wearing wrinkled clothes is the quickest way to announce that you are not paying attention to details, thus this  dry iron is there for you. A perfect hold due to low weight, you are sure to spend pleasant moments with this iron. Have a crinkle free day with handy light weight dry iron at ease.</p>', 'en', '2021-07-19 14:17:06', '2021-07-19 14:17:06'),
(102, 98, 'Lucid Stainless Kettle LKT170655', 'pc', '<p>The Electric Kettle has been designed for your convenience and safety. The electric kettle has other amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.</p>', 'en', '2021-07-19 14:23:29', '2021-07-19 14:23:29'),
(103, 107, 'Scalet Water boiler', 'pc', '<p>The Electric Kettle has been designed for your convenience and safety. The electric kettle has amazing features such as an automatic shutdown, water level indicator which lets you adjust the amount of water placed in the teapot.\r\n</p><p><br></p>', 'en', '2021-07-19 14:30:41', '2021-07-19 14:30:41'),
(104, 105, 'Phillips Flat Iron No. 1', 'pc', '<p>The Philips&nbsp; Dry Iron is what you need to keep tidy. This iconic Philips Iron helps to speed up your ironing‎,‎ gliding on all fabric types smoothly and easily‎.‎ The pointed tip also guarantees that you are able to access and straighten out all the wrinkles on your clothes‎,‎ no matter how hard‎‐to‎‐reach it may be.\r\n</p><p>Why not order this today on Golden Leaf Store.Philips&nbsp; Dry Iron is coated with a special non-stick layer for good gliding performance on all fabrics. The indicator light goes off when the required ironing temperature has been reached.</p><p>\r\n</p>', 'en', '2021-07-19 14:33:12', '2021-07-19 14:33:12'),
(105, 93, 'Habari Iodated Edible Table Salt 500g', 'pc', '<p>Habari Iodated Edible Salt, Table Salt - White\r\n</p><p>“Habari! My name is Habari. I enjoy hanging out with all kinds of food mainly cos I get along well with all of them. Perfect for cooking and table salt applications. \r\n</p><p>Select from a wide range of Unique products on KaKebe Shop online and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing.</p>', 'en', '2021-07-19 14:33:41', '2021-07-19 14:33:41'),
(106, 95, 'Billa Spaghetti 250g', 'pc', NULL, 'en', '2021-07-19 14:39:08', '2021-07-19 14:39:08'),
(107, 94, 'Pampers Pants Extra absorb channels 6-11kg size 3', 'pc', '<p>A great night\'s sleep means a good morning mood. Introducing new easy put-on Pampers pants for boys and girls.  Order your Pampers Pants – in a Great Value Pack from KaKebe Shop online and have it delivered straight at your doorstep.</p>', 'en', '2021-07-19 14:44:05', '2021-07-19 14:44:05'),
(108, 65, 'Fortune  Golden Fry Oil - 5Litres', 'ltr', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 14:45:05', '2021-07-19 14:45:05'),
(109, 106, 'Juice Blender with Grinder BS-1156', 'pc', '<p>Whether you\'re looking to make a nice smoothie to start your day, or a fresh salad for lunch, this Blender is the one for you. This product acts as a regular blender with a plastic jar, but also comes equipped with 2 other attachments for a glass jar and mill allowing you to carry out many different tasks with this one simple appliance. \r\n</p><p>The pulse function gives you complete control as to how long you wish to run the blender on high-speed and also assists in the auto-clean function when used with a little warm water. We emphasize that the auto-clean feature is only useful for a quick clean-up but a regular cleaning will still be required on occasion for a more effective job.</p>', 'en', '2021-07-19 14:45:39', '2021-07-19 14:45:39'),
(110, 66, 'Fortune Butto Oil 1Litre-Sachet', 'pc', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 14:49:56', '2021-07-19 14:49:56'),
(111, 67, 'Fortune Butto Oil 500ml-Sachet', 'pc', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 14:51:02', '2021-07-19 14:51:02'),
(112, 96, 'Dabur Herbel natural toothpaste 150g', 'pc', '<p>FLUORIDE FREE: Black Seed herbal toothpaste is a complete herbal oral and dental care necessity for your morning routine, Crafted with rich natural vegan ingredients for a natural alternative to commercial toothpastes\r\n</p><p>Multiple Benefits under herbal protection with key ingredients like Nigella Sativa ginger lemon sea salt grapefruit rose hip resin licorice olive oil and more all pack edged in a fine natural toothpaste tooth paste. It can  be used by both kids and adults where it also promotes health gums, fresh breath, whitening and also takes care for the sensitivity in the teeth.its a naturally herbal toothpaste that is made out of black seed or mostly known as black cummin plant  that is widely known world wide.\r\n</p><p>Many of us already look to fill our homes with organic foods and natural skincare products, and why not do the same for our teeth? Making the switch to organic and natural toothpastes means fewer chemicals and additives, and more natural whiteners and essential oils for minty fresh breath. We’ve highlighted 11 organic, natural, and fluoride-free toothpastes that are keeping you and your family cavity-free and clean all day. Whether you have a picky baby or sensitive gums, these toothpastes and toothpowders are sure to be gentle, refreshing, and loved by all.\r\n</p><p>Dabur Herb\'l toothpaste is enriched with natural ingredients like Blackseed oil and teatree oil that has natural anti bacterial properties.</p>', 'en', '2021-07-19 14:51:44', '2021-07-19 14:51:44'),
(113, 68, 'Fortune Bull Oil 10Litre-Jerican', 'pc', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 14:52:04', '2021-07-19 14:52:04'),
(114, 97, 'Lucid Fans FS40-1102R', 'pc', '<p>The Lucid Fun Is Powerful And Designed With A Quiet Breeze. It Is Also Designed with 5 blade Wings. The fan provides more powerful but quiet breeze, which can satisfy your needs. And the soundless breeze is perfect for indoor use, which can not only keep you cool, but also makes an infant sleep peacefully.\r\n</p><p>Oscillation stand fan: The fan has an oscillation feature which can distribute the air around the room and make the whole room cool.The 3 Wind Speed Mode settings Range from low to high level, you can easily choose suitable wind speeds to meet your different needs. And the 3 modes(normal, natural, sleeping) can make you get optimum comfort at different place in any time.\r\n</p><p>Adjustable Height and Swing Fan: The height of the fan can be adjusted from 44″ – 53″, getting air circulating to the spot where it is needed most. And the swing fan expands the cooling area, which is perfect for large space with more people.\r\n</p><p>The Fan Can Easily Be Operated Using A Remote Control To Choose The Different Speed Modes, Change The Oscillation Angels Or Turn</p>', 'en', '2021-07-19 14:53:43', '2021-07-19 14:53:43'),
(115, 69, 'Fortune Bull Oil 20Litre-Jerican', 'pc', '<p>Fortune gold oil is refined and fortified vegetable oil which makes it perfect for meals and is good for baking, frying and cooking. It is healthy, makes the food have a sweet aroma and enhances appetite.</p>', 'en', '2021-07-19 14:54:02', '2021-07-19 14:54:02'),
(116, 70, 'Supreme Flour Home Baking Flour - 2Kg', 'pc', '<p>New methods of refining wheat have ensured that our flour is whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.\r\n</p><p>Home Baking Flour is refined wheat that will ensure your baking turns out amazing because its whiter and finer than ever before. You can be sure that you are using the best quality flour for all your baking needs.Choose from a wide range of Unique products on Jumia and enjoy convenient and secure online shopping, delivery, guaranteed products and competitive pricing. \r\n</p><p>Grab this deal and more from Jumia Uganda at unbeatable prices with doorstep delivery.</p>', 'en', '2021-07-19 14:56:37', '2021-07-19 14:56:37'),
(117, 76, 'Kakira Sugar - 50kg', 'pc', '<p>Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s!</p>', 'en', '2021-07-19 15:05:11', '2021-07-19 15:05:11'),
(118, 75, 'Kakira Sugar - 50kg', 'pc', '<p>Kakira Sugar is extracted from cane grown on lush plantations on the shores of Lake Victoria. The sweet, sparkling crystals with their distinctive taste and flavour, and rich golden colour, have sweetened dishes all over Uganda since the 1930s! Get it Delivered to you when you order from KaKebe Shoponline today.</p>', 'en', '2021-07-19 15:14:44', '2021-07-19 15:14:44'),
(119, 82, 'White Star Magic 1kg', 'pc', '<p>​Magic Detergent 1000Gm</p><p><br></p>', 'en', '2021-07-19 15:17:01', '2021-07-19 15:17:47'),
(120, 80, 'White Star Soap 1kg', 'pc', '<p>White Star Bar Soap 1kg\r\n</p><p>Feel clean and invigorated with this hydrating body and Cloth bar and enjoy its crisp, refreshing scent \r\n</p><p>Grab this deal and more from KaKebe Uganda at unbeatable prices with doorstep delivery.</p>', 'en', '2021-07-19 15:19:20', '2021-07-19 15:19:20'),
(121, 83, 'ABC Dent 70g', 'pc', 'ABC dent', 'en', '2021-07-19 15:19:32', '2021-07-19 15:19:32'),
(122, 84, 'Aerial 500g', 'pc', '<p>Ariel detergent contains the power of stain removal ingredients, which helps to remove tough stains in one wash. It is formulated with deep cleaning ingredients that are like magnets for dirt. It penetrates into the fabric to dissolve even the toughest stains effortlessly. It is an ideal washing detergent for your washing machine. \r\n</p><p>Buy now online from Jumia Uganda at the best price and have it delivered right at your doorstep.\r\n</p><p>Specifications \r\n</p><p>Dowry\r\n</p><p>Volume:1kg\r\n</p><p>Formulated with deep cleaning ingredients\r\n</p><p>Removes tough stains in one wash\r\n</p><p>Contains the power of stain removal ingredients</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2021-07-19 15:23:46', '2021-07-19 15:24:40'),
(123, 85, 'Always Maxi Pads Extra Long 7 pads', 'pc', '<p>Always Maxi Extra Long - (7\'S)\r\n</p><p>Are you getting the right protection from your pad? Using the wrong pad size can lead to leaks. Step up in size to help stop leaks. Now you can find your fit with Always Extra Long ultra thin sanitary pads. Always extra long ultra thin 7 sanitary pad with no stain for up to 8 hours. Very convenient and no need to worry about a stain. \r\n</p><p>Since its introduction in 1984, Always has made a woman’s period a more positive, happier experience. Always, the world’s leader in feminine protection is dedicated to helping women embrace womanhood positively from the very beginning of puberty through their adult lives. Always has a wide range of menstrual pads designed to fit different body types, period flows and preferences. And we all know, the better the fit, the better the protection. With Always, you\'re Good to go with up to 8 hours No Stain No Check.</p><p>\r\n</p>', 'en', '2021-07-19 15:27:01', '2021-07-19 15:27:01'),
(124, 163, 'Ladies Hand Bag 2 in 1', '1', NULL, 'en', '2021-07-19 15:27:11', '2021-07-19 15:27:11'),
(125, 165, 'Ladies Hand Bag 4 in 1', '4 in 1', '<p>4 in 1 Ladies bags made with leather&nbsp;</p>', 'en', '2021-07-19 15:28:04', '2021-07-19 15:28:04'),
(126, 88, 'Blue band 250g', 'pc', '<p>blue band</p>', 'en', '2021-07-19 15:31:20', '2021-07-19 15:31:20'),
(127, 81, 'White Star Magic 500g', 'pc', '<p>Contains active organic matter and  stain sex enzymes which penetrates stains and digest the dirt to yield effective cleaning and brightening action. Improved formula which gives extra rich foam, leaves cloths brighter, cleaner and fresher</p>', 'en', '2021-07-19 15:32:39', '2021-07-19 15:32:39'),
(128, 86, 'Always Maxi Extra Long Pink', 'pc', '<p>Always Platinum Ultra Long 7 Sanitary Pads allows you to sleep comfortably through the night thanks to a micro-cushioned top layer that is supported by an absorbent core. A thicker core, as well as absorbent sides, means leaks are averted.</p>', 'en', '2021-07-19 15:32:52', '2021-07-19 15:32:52'),
(129, 164, 'Ladies Hand Bag Single', '1', NULL, 'en', '2021-07-19 15:34:48', '2021-07-19 15:34:48'),
(130, 89, 'Lato Flavored Milk 200ml x 24', 'pc', '<p>latto milk</p>', 'en', '2021-07-19 15:37:02', '2021-07-19 15:37:02'),
(131, 91, 'Lato Flavoured Milk 24x250 ml', 'pc', '<p>lato milk</p>', 'en', '2021-07-19 15:40:07', '2021-07-19 15:40:07'),
(132, 168, '3 in 1 Ladies Bag', '3 in 1', NULL, 'en', '2021-07-19 15:46:20', '2021-07-19 15:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `proxypay_payments`
--

CREATE TABLE `proxypay_payments` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `reference_id` varchar(20) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"2\",\"3\",\"4\",\"5\",\"6\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"20\",\"22\",\"23\",\"24\"]', '2018-10-10 04:39:47', '2021-07-19 00:55:32'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Manager', 'en', '2021-07-19 00:55:32', '2021-07-19 00:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, 'carrots', 1, '2021-07-19 01:39:02', '2021-07-19 01:39:02'),
(5, 'onion', 1, '2021-07-19 02:21:42', '2021-07-19 02:21:42'),
(6, 'itel', 10, '2021-07-19 02:45:49', '2021-07-19 19:45:25'),
(7, 'button', 1, '2021-07-19 03:18:19', '2021-07-19 03:18:19'),
(8, 'smartphone', 1, '2021-07-19 03:23:23', '2021-07-19 03:23:23'),
(9, 'garlic', 1, '2021-07-19 03:32:32', '2021-07-19 03:32:32'),
(10, 'chicken', 2, '2021-07-19 03:34:24', '2021-07-19 14:14:08'),
(11, 'infinix', 4, '2021-07-19 04:34:22', '2021-07-19 14:04:06'),
(12, 'pop4', 1, '2021-07-19 10:38:55', '2021-07-19 10:38:55'),
(13, 's16', 1, '2021-07-19 13:27:23', '2021-07-19 13:27:23'),
(14, 'tecno', 9, '2021-07-19 14:01:19', '2021-07-19 14:40:25'),
(15, 'oil', 1, '2021-07-19 15:48:11', '2021-07-19 15:48:11'),
(16, 'SMART PHONE', 1, '2021-07-19 19:45:09', '2021-07-19 19:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT '0',
  `verification_info` longtext COLLATE utf8_unicode_ci,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT '0',
  `admin_to_pay` double(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'bootstrap,responsive,template,developer', 'Active IT Zone', 11, 'https://www.activeitzone.com', 'Active E-commerce CMS Multi vendor system is such a platform to build a border less marketplace both for physical and digital goods.', '2019-08-08 08:56:11', '2019-08-08 02:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `pick_up_point_id` text COLLATE utf8_unicode_ci,
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(7, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:05', '2019-03-12 05:58:05'),
(8, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:12', '2019-03-12 05:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sms_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `template_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `identifier`, `sms_body`, `template_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phone_number_verification', '[[code]] is your verification code for [[site_name]].', NULL, 0, '2021-06-07 13:29:22', '2021-06-08 02:38:18'),
(2, 'password_reset', 'Your password reset code is [[code]].', NULL, 1, '2021-06-07 13:29:34', '2021-06-07 13:29:34'),
(3, 'order_placement', 'Your order has been placed and Order Code is [[order_code]]', NULL, 1, '2021-06-07 13:32:22', '2021-06-08 02:39:25'),
(4, 'delivery_status_change', 'Your delivery status has been updated to [[delivery_status]]  for Order code : [[order_code]]', NULL, 1, '2021-06-07 13:33:14', '2021-06-08 02:39:28'),
(5, 'payment_status_change', 'Your payment status has been updated to [[payment_status]] for Order code : [[order_code]]', NULL, 1, '2021-06-07 13:35:23', '2021-06-08 02:39:31'),
(6, 'assign_delivery_boy', 'You are assigned to deliver an order. Order code : [[order_code]]', NULL, 1, '2021-06-07 13:38:10', '2021-06-08 02:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 19, 1, '2021-07-19 00:51:47', '2021-07-19 00:51:47'),
(2, 20, 1, '2021-07-19 00:52:33', '2021-07-19 00:52:33'),
(3, 21, 1, '2021-07-19 00:54:45', '2021-07-19 00:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'bonifestinho2@gmail.com', '2021-07-20 11:15:49', '2021-07-20 11:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `tax_status`, `created_at`, `updated_at`) VALUES
(3, 'Tax', 1, '2021-03-07 11:45:33', '2021-03-07 11:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `client_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci,
  `lang_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3, 'en', 'All Category', 'All Category', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(4, 'en', 'All', 'All', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(5, 'en', 'Flash Sale', 'Flash Sale', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(6, 'en', 'View More', 'View More', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(7, 'en', 'Add to wishlist', 'Add to wishlist', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(8, 'en', 'Add to compare', 'Add to compare', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(9, 'en', 'Add to cart', 'Add to cart', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(10, 'en', 'Club Point', 'Club Point', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(11, 'en', 'Classified Ads', 'Classified Ads', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(13, 'en', 'Used', 'Used', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(14, 'en', 'Top 10 Categories', 'Top 10 Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(15, 'en', 'View All Categories', 'View All Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(16, 'en', 'Top 10 Brands', 'Top 10 Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(17, 'en', 'View All Brands', 'View All Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(43, 'en', 'Terms & conditions', 'Terms & conditions', '2020-11-02 07:40:41', '2020-11-02 07:40:41'),
(51, 'en', 'Best Selling', 'Best Selling', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(53, 'en', 'Top 20', 'Top 20', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(55, 'en', 'Featured Products', 'Featured Products', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(56, 'en', 'Best Sellers', 'Best Sellers', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(57, 'en', 'Visit Store', 'Visit Store', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(58, 'en', 'Popular Suggestions', 'Popular Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(59, 'en', 'Category Suggestions', 'Category Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(62, 'en', 'Automobile & Motorcycle', 'Automobile & Motorcycle', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(63, 'en', 'Price range', 'Price range', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(64, 'en', 'Filter by color', 'Filter by color', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(65, 'en', 'Home', 'Home', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(67, 'en', 'Newest', 'Newest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(68, 'en', 'Oldest', 'Oldest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(69, 'en', 'Price low to high', 'Price low to high', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(70, 'en', 'Price high to low', 'Price high to low', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(71, 'en', 'Brands', 'Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(72, 'en', 'All Brands', 'All Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(74, 'en', 'All Sellers', 'All Sellers', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(78, 'en', 'Inhouse product', 'Inhouse product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(79, 'en', 'Message Seller', 'Message Seller', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(80, 'en', 'Price', 'Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(81, 'en', 'Discount Price', 'Discount Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(82, 'en', 'Color', 'Color', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(83, 'en', 'Quantity', 'Quantity', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(84, 'en', 'available', 'available', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(85, 'en', 'Total Price', 'Total Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(86, 'en', 'Out of Stock', 'Out of Stock', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(87, 'en', 'Refund', 'Refund', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(88, 'en', 'Share', 'Share', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(89, 'en', 'Sold By', 'Sold By', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(90, 'en', 'customer reviews', 'customer reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(91, 'en', 'Top Selling Products', 'Top Selling Products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(92, 'en', 'Description', 'Description', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(93, 'en', 'Video', 'Video', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(94, 'en', 'Reviews', 'Reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(95, 'en', 'Download', 'Download', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(96, 'en', 'There have been no reviews for this product yet.', 'There have been no reviews for this product yet.', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(97, 'en', 'Related products', 'Related products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(98, 'en', 'Any query about this product', 'Any query about this product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(99, 'en', 'Product Name', 'Product Name', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(100, 'en', 'Your Question', 'Your Question', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(101, 'en', 'Send', 'Send', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(103, 'en', 'Use country code before number', 'Use country code before number', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(105, 'en', 'Remember Me', 'Remember Me', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(107, 'en', 'Dont have an account?', 'Dont have an account?', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(108, 'en', 'Register Now', 'Register Now', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(109, 'en', 'Or Login With', 'Or Login With', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(110, 'en', 'oops..', 'oops..', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(111, 'en', 'This item is out of stock!', 'This item is out of stock!', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(112, 'en', 'Back to shopping', 'Back to shopping', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(113, 'en', 'Login to your account.', 'Login to your account.', '2020-11-02 11:27:41', '2020-11-02 11:27:41'),
(115, 'en', 'Purchase History', 'Purchase History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(116, 'en', 'New', 'New', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(117, 'en', 'Downloads', 'Downloads', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(118, 'en', 'Sent Refund Request', 'Sent Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(119, 'en', 'Product Bulk Upload', 'Product Bulk Upload', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(123, 'en', 'Orders', 'Orders', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(124, 'en', 'Recieved Refund Request', 'Recieved Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(126, 'en', 'Shop Setting', 'Shop Setting', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(127, 'en', 'Payment History', 'Payment History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(128, 'en', 'Money Withdraw', 'Money Withdraw', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(129, 'en', 'Conversations', 'Conversations', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(130, 'en', 'My Wallet', 'My Wallet', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(131, 'en', 'Earning Points', 'Earning Points', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(132, 'en', 'Support Ticket', 'Support Ticket', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(133, 'en', 'Manage Profile', 'Manage Profile', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(134, 'en', 'Sold Amount', 'Sold Amount', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(135, 'en', 'Your sold amount (current month)', 'Your sold amount (current month)', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(136, 'en', 'Total Sold', 'Total Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(137, 'en', 'Last Month Sold', 'Last Month Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(138, 'en', 'Total sale', 'Total sale', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(139, 'en', 'Total earnings', 'Total earnings', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(140, 'en', 'Successful orders', 'Successful orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(141, 'en', 'Total orders', 'Total orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(142, 'en', 'Pending orders', 'Pending orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(143, 'en', 'Cancelled orders', 'Cancelled orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(145, 'en', 'Product', 'Product', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(147, 'en', 'Purchased Package', 'Purchased Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(148, 'en', 'Package Not Found', 'Package Not Found', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(149, 'en', 'Upgrade Package', 'Upgrade Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(150, 'en', 'Shop', 'Shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(151, 'en', 'Manage & organize your shop', 'Manage & organize your shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(152, 'en', 'Go to setting', 'Go to setting', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(153, 'en', 'Payment', 'Payment', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(154, 'en', 'Configure your payment method', 'Configure your payment method', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(156, 'en', 'My Panel', 'My Panel', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(158, 'en', 'Item has been added to wishlist', 'Item has been added to wishlist', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(159, 'en', 'My Points', 'My Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(160, 'en', ' Points', ' Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(161, 'en', 'Wallet Money', 'Wallet Money', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(162, 'en', 'Exchange Rate', 'Exchange Rate', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(163, 'en', 'Point Earning history', 'Point Earning history', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(164, 'en', 'Date', 'Date', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(165, 'en', 'Points', 'Points', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(166, 'en', 'Converted', 'Converted', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(167, 'en', 'Action', 'Action', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(168, 'en', 'No history found.', 'No history found.', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(169, 'en', 'Convert has been done successfully Check your Wallets', 'Convert has been done successfully Check your Wallets', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(170, 'en', 'Something went wrong', 'Something went wrong', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(171, 'en', 'Remaining Uploads', 'Remaining Uploads', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(172, 'en', 'No Package Found', 'No Package Found', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(173, 'en', 'Search product', 'Search product', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(174, 'en', 'Name', 'Name', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(176, 'en', 'Current Qty', 'Current Qty', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(177, 'en', 'Base Price', 'Base Price', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(178, 'en', 'Published', 'Published', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(179, 'en', 'Featured', 'Featured', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(180, 'en', 'Options', 'Options', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(181, 'en', 'Edit', 'Edit', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(182, 'en', 'Duplicate', 'Duplicate', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(184, 'en', '1. Download the skeleton file and fill it with data.', '1. Download the skeleton file and fill it with data.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(185, 'en', '2. You can download the example file to understand how the data must be filled.', '2. You can download the example file to understand how the data must be filled.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(186, 'en', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(187, 'en', '4. After uploading products you need to edit them and set products images and choices.', '4. After uploading products you need to edit them and set products images and choices.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(188, 'en', 'Download CSV', 'Download CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(189, 'en', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(190, 'en', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(191, 'en', 'Download Category', 'Download Category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(192, 'en', 'Download Sub category', 'Download Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(193, 'en', 'Download Sub Sub category', 'Download Sub Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(194, 'en', 'Download Brand', 'Download Brand', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(195, 'en', 'Upload CSV File', 'Upload CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(196, 'en', 'CSV', 'CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(197, 'en', 'Choose CSV File', 'Choose CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(198, 'en', 'Upload', 'Upload', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(199, 'en', 'Add New Digital Product', 'Add New Digital Product', '2020-11-02 11:37:25', '2020-11-02 11:37:25'),
(200, 'en', 'Available Status', 'Available Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(201, 'en', 'Admin Status', 'Admin Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(202, 'en', 'Pending Balance', 'Pending Balance', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(203, 'en', 'Send Withdraw Request', 'Send Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(204, 'en', 'Withdraw Request history', 'Withdraw Request history', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(205, 'en', 'Amount', 'Amount', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(206, 'en', 'Status', 'Status', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(207, 'en', 'Message', 'Message', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(208, 'en', 'Send A Withdraw Request', 'Send A Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(209, 'en', 'Basic Info', 'Basic Info', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(211, 'en', 'Your Phone', 'Your Phone', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(212, 'en', 'Photo', 'Photo', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(213, 'en', 'Browse', 'Browse', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(215, 'en', 'Your Password', 'Your Password', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(216, 'en', 'New Password', 'New Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(217, 'en', 'Confirm Password', 'Confirm Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(218, 'en', 'Add New Address', 'Add New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(219, 'en', 'Payment Setting', 'Payment Setting', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(220, 'en', 'Cash Payment', 'Cash Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(221, 'en', 'Bank Payment', 'Bank Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(222, 'en', 'Bank Name', 'Bank Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(223, 'en', 'Bank Account Name', 'Bank Account Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(224, 'en', 'Bank Account Number', 'Bank Account Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(225, 'en', 'Bank Routing Number', 'Bank Routing Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(226, 'en', 'Update Profile', 'Update Profile', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(227, 'en', 'Change your email', 'Change your email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(228, 'en', 'Your Email', 'Your Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(229, 'en', 'Sending Email...', 'Sending Email...', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(230, 'en', 'Verify', 'Verify', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(231, 'en', 'Update Email', 'Update Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(232, 'en', 'New Address', 'New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(233, 'en', 'Your Address', 'Your Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(234, 'en', 'Country', 'Country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(235, 'en', 'Select your country', 'Select your country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(236, 'en', 'City', 'City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(237, 'en', 'Your City', 'Your City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(239, 'en', 'Your Postal Code', 'Your Postal Code', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(240, 'en', '+880', '+880', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(241, 'en', 'Save', 'Save', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(242, 'en', 'Received Refund Request', 'Received Refund Request', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(244, 'en', 'Delete Confirmation', 'Delete Confirmation', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(245, 'en', 'Are you sure to delete this?', 'Are you sure to delete this?', '2020-11-02 11:56:21', '2020-11-02 11:56:21'),
(246, 'en', 'Premium Packages for Sellers', 'Premium Packages for Sellers', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(247, 'en', 'Product Upload', 'Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(248, 'en', 'Digital Product Upload', 'Digital Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(250, 'en', 'Purchase Package', 'Purchase Package', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(251, 'en', 'Select Payment Type', 'Select Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(252, 'en', 'Payment Type', 'Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(253, 'en', 'Select One', 'Select One', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(254, 'en', 'Online payment', 'Online payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(255, 'en', 'Offline payment', 'Offline payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(256, 'en', 'Purchase Your Package', 'Purchase Your Package', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(258, 'en', 'Paypal', 'Paypal', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(259, 'en', 'Stripe', 'Stripe', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(260, 'en', 'sslcommerz', 'sslcommerz', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(265, 'en', 'Confirm', 'Confirm', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(266, 'en', 'Offline Package Payment', 'Offline Package Payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(267, 'en', 'Transaction ID', 'Transaction ID', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(268, 'en', 'Choose image', 'Choose image', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(269, 'en', 'Code', 'Code', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(270, 'en', 'Delivery Status', 'Delivery Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(271, 'en', 'Payment Status', 'Payment Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(272, 'en', 'Paid', 'Paid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(273, 'en', 'Order Details', 'Order Details', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(274, 'en', 'Download Invoice', 'Download Invoice', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(275, 'en', 'Unpaid', 'Unpaid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(277, 'en', 'Order placed', 'Order placed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(278, 'en', 'Confirmed', 'Confirmed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(279, 'en', 'On delivery', 'On delivery', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(280, 'en', 'Delivered', 'Delivered', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(281, 'en', 'Order Summary', 'Order Summary', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(282, 'en', 'Order Code', 'Order Code', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(283, 'en', 'Customer', 'Customer', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(287, 'en', 'Total order amount', 'Total order amount', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(288, 'en', 'Shipping metdod', 'Shipping metdod', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(289, 'en', 'Flat shipping rate', 'Flat shipping rate', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(290, 'en', 'Payment metdod', 'Payment metdod', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(291, 'en', 'Variation', 'Variation', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(292, 'en', 'Delivery Type', 'Delivery Type', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(293, 'en', 'Home Delivery', 'Home Delivery', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(294, 'en', 'Order Ammount', 'Order Ammount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(295, 'en', 'Subtotal', 'Subtotal', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(296, 'en', 'Shipping', 'Shipping', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(298, 'en', 'Coupon Discount', 'Coupon Discount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(300, 'en', 'N/A', 'N/A', '2020-11-02 12:44:20', '2020-11-02 12:44:20'),
(301, 'en', 'In stock', 'In stock', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(302, 'en', 'Buy Now', 'Buy Now', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(303, 'en', 'Item added to your cart!', 'Item added to your cart!', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(304, 'en', 'Proceed to Checkout', 'Proceed to Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(305, 'en', 'Cart Items', 'Cart Items', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(306, 'en', '1. My Cart', '1. My Cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(307, 'en', 'View cart', 'View cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(308, 'en', '2. Shipping info', '2. Shipping info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(309, 'en', 'Checkout', 'Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(310, 'en', '3. Delivery info', '3. Delivery info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(311, 'en', '4. Payment', '4. Payment', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(312, 'en', '5. Confirmation', '5. Confirmation', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(313, 'en', 'Remove', 'Remove', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(314, 'en', 'Return to shop', 'Return to shop', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(315, 'en', 'Continue to Shipping', 'Continue to Shipping', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(316, 'en', 'Or', 'Or', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(317, 'en', 'Guest Checkout', 'Guest Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(318, 'en', 'Continue to Delivery Info', 'Continue to Delivery Info', '2020-11-02 12:57:44', '2020-11-02 12:57:44'),
(319, 'en', 'Postal Code', 'Postal Code', '2020-11-02 13:01:01', '2020-11-02 13:01:01'),
(320, 'en', 'Choose Delivery Type', 'Choose Delivery Type', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(321, 'en', 'Local Pickup', 'Local Pickup', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(322, 'en', 'Select your nearest pickup point', 'Select your nearest pickup point', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(323, 'en', 'Continue to Payment', 'Continue to Payment', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(324, 'en', 'Select a payment option', 'Select a payment option', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(325, 'en', 'Razorpay', 'Razorpay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(326, 'en', 'Paystack', 'Paystack', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(327, 'en', 'VoguePay', 'VoguePay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(328, 'en', 'payhere', 'payhere', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(329, 'en', 'ngenius', 'ngenius', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(330, 'en', 'Paytm', 'Paytm', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(331, 'en', 'Cash on Delivery', 'Cash on Delivery', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(332, 'en', 'Your wallet balance :', 'Your wallet balance :', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(333, 'en', 'Insufficient balance', 'Insufficient balance', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(334, 'en', 'I agree to the', 'I agree to the', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(338, 'en', 'Complete Order', 'Complete Order', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(339, 'en', 'Summary', 'Summary', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(340, 'en', 'Items', 'Items', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(341, 'en', 'Total Club point', 'Total Club point', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(342, 'en', 'Total Shipping', 'Total Shipping', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(343, 'en', 'Have coupon code? Enter here', 'Have coupon code? Enter here', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(344, 'en', 'Apply', 'Apply', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(345, 'en', 'You need to agree with our policies', 'You need to agree with our policies', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(346, 'en', 'Forgot password', 'Forgot password', '2020-11-02 13:01:25', '2020-11-02 13:01:25'),
(469, 'en', 'SEO Setting', 'SEO Setting', '2020-11-02 13:01:33', '2020-11-02 13:01:33'),
(474, 'en', 'System Update', 'System Update', '2020-11-02 13:01:34', '2020-11-02 13:01:34'),
(480, 'en', 'Add New Payment Method', 'Add New Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(481, 'en', 'Manual Payment Method', 'Manual Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(482, 'en', 'Heading', 'Heading', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(483, 'en', 'Logo', 'Logo', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(484, 'en', 'Manual Payment Information', 'Manual Payment Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(485, 'en', 'Type', 'Type', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(486, 'en', 'Custom Payment', 'Custom Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(487, 'en', 'Check Payment', 'Check Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(488, 'en', 'Checkout Thumbnail', 'Checkout Thumbnail', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(489, 'en', 'Payment Instruction', 'Payment Instruction', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(490, 'en', 'Bank Information', 'Bank Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(491, 'en', 'Select File', 'Select File', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(492, 'en', 'Upload New', 'Upload New', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(493, 'en', 'Sort by newest', 'Sort by newest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(494, 'en', 'Sort by oldest', 'Sort by oldest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(495, 'en', 'Sort by smallest', 'Sort by smallest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(496, 'en', 'Sort by largest', 'Sort by largest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(497, 'en', 'Selected Only', 'Selected Only', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(498, 'en', 'No files found', 'No files found', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(499, 'en', '0 File selected', '0 File selected', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(500, 'en', 'Clear', 'Clear', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(501, 'en', 'Prev', 'Prev', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(502, 'en', 'Next', 'Next', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(503, 'en', 'Add Files', 'Add Files', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(504, 'en', 'Method has been inserted successfully', 'Method has been inserted successfully', '2020-11-02 13:02:03', '2020-11-02 13:02:03'),
(506, 'en', 'Order Date', 'Order Date', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(507, 'en', 'Bill to', 'Bill to', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(510, 'en', 'Sub Total', 'Sub Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(512, 'en', 'Total Tax', 'Total Tax', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(513, 'en', 'Grand Total', 'Grand Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(514, 'en', 'Your order has been placed successfully. Please submit payment information from purchase history', 'Your order has been placed successfully. Please submit payment information from purchase history', '2020-11-02 13:02:47', '2020-11-02 13:02:47'),
(515, 'en', 'Thank You for Your Order!', 'Thank You for Your Order!', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(516, 'en', 'Order Code:', 'Order Code:', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(517, 'en', 'A copy or your order summary has been sent to', 'A copy or your order summary has been sent to', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(518, 'en', 'Make Payment', 'Make Payment', '2020-11-02 13:03:26', '2020-11-02 13:03:26'),
(519, 'en', 'Payment screenshot', 'Payment screenshot', '2020-11-02 13:03:29', '2020-11-02 13:03:29'),
(520, 'en', 'Paypal Credential', 'Paypal Credential', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(522, 'en', 'Paypal Client ID', 'Paypal Client ID', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(523, 'en', 'Paypal Client Secret', 'Paypal Client Secret', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(524, 'en', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(525, 'en', 'Sslcommerz Credential', 'Sslcommerz Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(526, 'en', 'Sslcz Store Id', 'Sslcz Store Id', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(527, 'en', 'Sslcz store password', 'Sslcz store password', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(528, 'en', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(529, 'en', 'Stripe Credential', 'Stripe Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(531, 'en', 'STRIPE KEY', 'STRIPE KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(533, 'en', 'STRIPE SECRET', 'STRIPE SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(534, 'en', 'RazorPay Credential', 'RazorPay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(535, 'en', 'RAZOR KEY', 'RAZOR KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(536, 'en', 'RAZOR SECRET', 'RAZOR SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(537, 'en', 'Instamojo Credential', 'Instamojo Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(538, 'en', 'API KEY', 'API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(539, 'en', 'IM API KEY', 'IM API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(540, 'en', 'AUTH TOKEN', 'AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(541, 'en', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(542, 'en', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(543, 'en', 'PayStack Credential', 'PayStack Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(544, 'en', 'PUBLIC KEY', 'PUBLIC KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(545, 'en', 'SECRET KEY', 'SECRET KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(546, 'en', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(547, 'en', 'VoguePay Credential', 'VoguePay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(548, 'en', 'MERCHANT ID', 'MERCHANT ID', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(549, 'en', 'Sandbox Mode', 'Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(550, 'en', 'Payhere Credential', 'Payhere Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(551, 'en', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(552, 'en', 'PAYHERE SECRET', 'PAYHERE SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(553, 'en', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(554, 'en', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(555, 'en', 'Ngenius Credential', 'Ngenius Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(556, 'en', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(557, 'en', 'NGENIUS API KEY', 'NGENIUS API KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(558, 'en', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(559, 'en', 'Mpesa Credential', 'Mpesa Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(560, 'en', 'MPESA CONSUMER KEY', 'MPESA CONSUMER KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(561, 'en', 'MPESA_CONSUMER_KEY', 'MPESA_CONSUMER_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(562, 'en', 'MPESA CONSUMER SECRET', 'MPESA CONSUMER SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(563, 'en', 'MPESA_CONSUMER_SECRET', 'MPESA_CONSUMER_SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(564, 'en', 'MPESA SHORT CODE', 'MPESA SHORT CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(565, 'en', 'MPESA_SHORT_CODE', 'MPESA_SHORT_CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(566, 'en', 'MPESA SANDBOX ACTIVATION', 'MPESA SANDBOX ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(567, 'en', 'Flutterwave Credential', 'Flutterwave Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(568, 'en', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(569, 'en', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(570, 'en', 'RAVE_TITLE', 'RAVE_TITLE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(571, 'en', 'STAGIN ACTIVATION', 'STAGIN ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(573, 'en', 'All Product', 'All Product', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(574, 'en', 'Sort By', 'Sort By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(575, 'en', 'Rating (High > Low)', 'Rating (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(576, 'en', 'Rating (Low > High)', 'Rating (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(577, 'en', 'Num of Sale (High > Low)', 'Num of Sale (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(578, 'en', 'Num of Sale (Low > High)', 'Num of Sale (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(579, 'en', 'Base Price (High > Low)', 'Base Price (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(580, 'en', 'Base Price (Low > High)', 'Base Price (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(581, 'en', 'Type & Enter', 'Type & Enter', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(582, 'en', 'Added By', 'Added By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(583, 'en', 'Num of Sale', 'Num of Sale', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(584, 'en', 'Total Stock', 'Total Stock', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(585, 'en', 'Todays Deal', 'Todays Deal', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(586, 'en', 'Rating', 'Rating', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(587, 'en', 'times', 'times', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(588, 'en', 'Add Nerw Product', 'Add Nerw Product', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(589, 'en', 'Product Information', 'Product Information', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(590, 'en', 'Unit', 'Unit', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(591, 'en', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(592, 'en', 'Minimum Qty', 'Minimum Qty', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(593, 'en', 'Tags', 'Tags', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(594, 'en', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(595, 'en', 'Barcode', 'Barcode', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(596, 'en', 'Refundable', 'Refundable', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(597, 'en', 'Product Images', 'Product Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(598, 'en', 'Gallery Images', 'Gallery Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(599, 'en', 'Todays Deal updated successfully', 'Todays Deal updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(600, 'en', 'Published products updated successfully', 'Published products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(601, 'en', 'Thumbnail Image', 'Thumbnail Image', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(602, 'en', 'Featured products updated successfully', 'Featured products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(603, 'en', 'Product Videos', 'Product Videos', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(604, 'en', 'Video Provider', 'Video Provider', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(605, 'en', 'Youtube', 'Youtube', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(606, 'en', 'Dailymotion', 'Dailymotion', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(607, 'en', 'Vimeo', 'Vimeo', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(608, 'en', 'Video Link', 'Video Link', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(609, 'en', 'Product Variation', 'Product Variation', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(610, 'en', 'Colors', 'Colors', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(611, 'en', 'Attributes', 'Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(612, 'en', 'Choose Attributes', 'Choose Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(613, 'en', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(614, 'en', 'Product price + stock', 'Product price + stock', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(616, 'en', 'Unit price', 'Unit price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(617, 'en', 'Purchase price', 'Purchase price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(618, 'en', 'Flat', 'Flat', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(619, 'en', 'Percent', 'Percent', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(620, 'en', 'Discount', 'Discount', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(621, 'en', 'Product Description', 'Product Description', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(622, 'en', 'Product Shipping Cost', 'Product Shipping Cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(623, 'en', 'Free Shipping', 'Free Shipping', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(624, 'en', 'Flat Rate', 'Flat Rate', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(625, 'en', 'Shipping cost', 'Shipping cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(626, 'en', 'PDF Specification', 'PDF Specification', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(627, 'en', 'SEO Meta Tags', 'SEO Meta Tags', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(628, 'en', 'Meta Title', 'Meta Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(629, 'en', 'Meta Image', 'Meta Image', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(630, 'en', 'Choice Title', 'Choice Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(631, 'en', 'Enter choice values', 'Enter choice values', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(632, 'en', 'All categories', 'All categories', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(633, 'en', 'Add New category', 'Add New category', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(634, 'en', 'Type name & Enter', 'Type name & Enter', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(635, 'en', 'Banner', 'Banner', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(637, 'en', 'Commission', 'Commission', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(638, 'en', 'icon', 'icon', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(639, 'en', 'Featured categories updated successfully', 'Featured categories updated successfully', '2020-11-03 07:12:20', '2020-11-03 07:12:20'),
(640, 'en', 'Hot', 'Hot', '2020-11-03 07:13:12', '2020-11-03 07:13:12'),
(641, 'en', 'Filter by Payment Status', 'Filter by Payment Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(642, 'en', 'Un-Paid', 'Un-Paid', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(643, 'en', 'Filter by Deliver Status', 'Filter by Deliver Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(644, 'en', 'Pending', 'Pending', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(645, 'en', 'Type Order code & hit Enter', 'Type Order code & hit Enter', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(646, 'en', 'Num. of Products', 'Num. of Products', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(647, 'en', 'Walk In Customer', 'Walk In Customer', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(648, 'en', 'QTY', 'QTY', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(649, 'en', 'Without Shipping Charge', 'Without Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(650, 'en', 'With Shipping Charge', 'With Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(651, 'en', 'Pay With Cash', 'Pay With Cash', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(652, 'en', 'Shipping Address', 'Shipping Address', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(653, 'en', 'Close', 'Close', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(654, 'en', 'Select country', 'Select country', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(655, 'en', 'Order Confirmation', 'Order Confirmation', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(656, 'en', 'Are you sure to confirm this order?', 'Are you sure to confirm this order?', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(657, 'en', 'Comfirm Order', 'Comfirm Order', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(659, 'en', 'Personal Info', 'Personal Info', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(660, 'en', 'Repeat Password', 'Repeat Password', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(661, 'en', 'Shop Name', 'Shop Name', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(662, 'en', 'Register Your Shop', 'Register Your Shop', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(663, 'en', 'Affiliate Informations', 'Affiliate Informations', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(664, 'en', 'Affiliate', 'Affiliate', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(665, 'en', 'User Info', 'User Info', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(667, 'en', 'Installed Addon', 'Installed Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(668, 'en', 'Available Addon', 'Available Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(669, 'en', 'Install New Addon', 'Install New Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(670, 'en', 'Version', 'Version', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(671, 'en', 'Activated', 'Activated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(672, 'en', 'Deactivated', 'Deactivated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(673, 'en', 'Activate OTP', 'Activate OTP', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(674, 'en', 'OTP will be Used For', 'OTP will be Used For', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(675, 'en', 'Settings updated successfully', 'Settings updated successfully', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(676, 'en', 'Product Owner', 'Product Owner', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(677, 'en', 'Point', 'Point', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(678, 'en', 'Set Point for Product Within a Range', 'Set Point for Product Within a Range', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(679, 'en', 'Set Point for multiple products', 'Set Point for multiple products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(680, 'en', 'Min Price', 'Min Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(681, 'en', 'Max Price', 'Max Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(682, 'en', 'Set Point for all Products', 'Set Point for all Products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(683, 'en', 'Set Point For ', 'Set Point For ', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(684, 'en', 'Convert Status', 'Convert Status', '2020-11-03 11:48:58', '2020-11-03 11:48:58'),
(685, 'en', 'Earned At', 'Earned At', '2020-11-03 11:48:59', '2020-11-03 11:48:59'),
(686, 'en', 'Seller Based Selling Report', 'Seller Based Selling Report', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(687, 'en', 'Sort by verificarion status', 'Sort by verificarion status', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(688, 'en', 'Approved', 'Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(689, 'en', 'Non Approved', 'Non Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(690, 'en', 'Filter', 'Filter', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(691, 'en', 'Seller Name', 'Seller Name', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(692, 'en', 'Number of Product Sale', 'Number of Product Sale', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(693, 'en', 'Order Amount', 'Order Amount', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(694, 'en', 'Facebook Chat Setting', 'Facebook Chat Setting', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(695, 'en', 'Facebook Page ID', 'Facebook Page ID', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(696, 'en', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(697, 'en', 'Login into your facebook page', 'Login into your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(698, 'en', 'Find the About option of your facebook page', 'Find the About option of your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(699, 'en', 'At the very bottom, you can find the \\“Facebook Page ID\\”', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(700, 'en', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(701, 'en', 'Scroll down that page and you will get \\\"white listed domain\\\"', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(702, 'en', 'Set your website domain name', 'Set your website domain name', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(703, 'en', 'Google reCAPTCHA Setting', 'Google reCAPTCHA Setting', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(704, 'en', 'Site KEY', 'Site KEY', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(705, 'en', 'Select Shipping Method', 'Select Shipping Method', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(706, 'en', 'Product Wise Shipping Cost', 'Product Wise Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(707, 'en', 'Flat Rate Shipping Cost', 'Flat Rate Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(708, 'en', 'Seller Wise Flat Shipping Cost', 'Seller Wise Flat Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(709, 'en', 'Note', 'Note', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(710, 'en', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(711, 'en', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(712, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(713, 'en', 'Flat Rate Cost', 'Flat Rate Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(714, 'en', 'Shipping Cost for Admin Products', 'Shipping Cost for Admin Products', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(715, 'en', 'Countries', 'Countries', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(716, 'en', 'Show/Hide', 'Show/Hide', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(717, 'en', 'Country status updated successfully', 'Country status updated successfully', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(718, 'en', 'All Subcategories', 'All Subcategories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(719, 'en', 'Add New Subcategory', 'Add New Subcategory', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(720, 'en', 'Sub-Categories', 'Sub-Categories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(721, 'en', 'Sub Category Information', 'Sub Category Information', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(723, 'en', 'Slug', 'Slug', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(724, 'en', 'All Sub Subcategories', 'All Sub Subcategories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(725, 'en', 'Add New Sub Subcategory', 'Add New Sub Subcategory', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(726, 'en', 'Sub-Sub-categories', 'Sub-Sub-categories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(727, 'en', 'Make This Default', 'Make This Default', '2020-11-04 08:24:24', '2020-11-04 08:24:24');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(728, 'en', 'Shops', 'Shops', '2020-11-04 11:17:10', '2020-11-04 11:17:10'),
(729, 'en', 'Women Clothing & Fashion', 'Women Clothing & Fashion', '2020-11-04 11:23:12', '2020-11-04 11:23:12'),
(730, 'en', 'Cellphones & Tabs', 'Cellphones & Tabs', '2020-11-04 12:10:41', '2020-11-04 12:10:41'),
(731, 'en', 'Welcome to', 'Welcome to', '2020-11-07 07:14:43', '2020-11-07 07:14:43'),
(732, 'en', 'Create a New Account', 'Create a New Account', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(733, 'en', 'Full Name', 'Full Name', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(734, 'en', 'password', 'password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(735, 'en', 'Confrim Password', 'Confrim Password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(736, 'en', 'I agree with the', 'I agree with the', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(737, 'en', 'Terms and Conditions', 'Terms and Conditions', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(738, 'en', 'Register', 'Register', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(739, 'en', 'Already have an account', 'Already have an account', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(741, 'en', 'Sign Up with', 'Sign Up with', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(742, 'en', 'I agree with the Terms and Conditions', 'I agree with the Terms and Conditions', '2020-11-07 07:34:49', '2020-11-07 07:34:49'),
(745, 'en', 'All Role', 'All Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(746, 'en', 'Add New Role', 'Add New Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(747, 'en', 'Roles', 'Roles', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(749, 'en', 'Add New Staffs', 'Add New Staffs', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(750, 'en', 'Role', 'Role', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(751, 'en', 'Frontend Website Name', 'Frontend Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(752, 'en', 'Website Name', 'Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(753, 'en', 'Site Motto', 'Site Motto', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(754, 'en', 'Best eCommerce Website', 'Best eCommerce Website', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(755, 'en', 'Site Icon', 'Site Icon', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(756, 'en', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(757, 'en', 'Website Base Color', 'Website Base Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(758, 'en', 'Hex Color Code', 'Hex Color Code', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(759, 'en', 'Website Base Hover Color', 'Website Base Hover Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(760, 'en', 'Update', 'Update', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(761, 'en', 'Global Seo', 'Global Seo', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(762, 'en', 'Meta description', 'Meta description', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(763, 'en', 'Keywords', 'Keywords', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(764, 'en', 'Separate with coma', 'Separate with coma', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(765, 'en', 'Website Pages', 'Website Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(766, 'en', 'All Pages', 'All Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(767, 'en', 'Add New Page', 'Add New Page', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(768, 'en', 'URL', 'URL', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(769, 'en', 'Actions', 'Actions', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(770, 'en', 'Edit Page Information', 'Edit Page Information', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(771, 'en', 'Page Content', 'Page Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(772, 'en', 'Title', 'Title', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(773, 'en', 'Link', 'Link', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(774, 'en', 'Use character, number, hypen only', 'Use character, number, hypen only', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(775, 'en', 'Add Content', 'Add Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(776, 'en', 'Seo Fields', 'Seo Fields', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(777, 'en', 'Update Page', 'Update Page', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(778, 'en', 'Default Language', 'Default Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(779, 'en', 'Add New Language', 'Add New Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(780, 'en', 'RTL', 'RTL', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(781, 'en', 'Translation', 'Translation', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(782, 'en', 'Language Information', 'Language Information', '2020-11-07 07:50:23', '2020-11-07 07:50:23'),
(783, 'en', 'Save Page', 'Save Page', '2020-11-07 07:51:27', '2020-11-07 07:51:27'),
(784, 'en', 'Home Page Settings', 'Home Page Settings', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(785, 'en', 'Home Slider', 'Home Slider', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(786, 'en', 'Photos & Links', 'Photos & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(787, 'en', 'Add New', 'Add New', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(788, 'en', 'Home Categories', 'Home Categories', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(789, 'en', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(790, 'en', 'Banner & Links', 'Banner & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(791, 'en', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(792, 'en', 'Top 10', 'Top 10', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(793, 'en', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(794, 'en', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(795, 'en', 'System Name', 'System Name', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(796, 'en', 'System Logo - White', 'System Logo - White', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(797, 'en', 'Choose Files', 'Choose Files', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(798, 'en', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(799, 'en', 'System Logo - Black', 'System Logo - Black', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(800, 'en', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(801, 'en', 'System Timezone', 'System Timezone', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(802, 'en', 'Admin login page background', 'Admin login page background', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(803, 'en', 'Website Header', 'Website Header', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(804, 'en', 'Header Setting', 'Header Setting', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(805, 'en', 'Header Logo', 'Header Logo', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(806, 'en', 'Show Language Switcher?', 'Show Language Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(807, 'en', 'Show Currency Switcher?', 'Show Currency Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(808, 'en', 'Enable stikcy header?', 'Enable stikcy header?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(809, 'en', 'Website Footer', 'Website Footer', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(810, 'en', 'Footer Widget', 'Footer Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(811, 'en', 'About Widget', 'About Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(812, 'en', 'Footer Logo', 'Footer Logo', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(813, 'en', 'About description', 'About description', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(814, 'en', 'Contact Info Widget', 'Contact Info Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(815, 'en', 'Footer contact address', 'Footer contact address', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(816, 'en', 'Footer contact phone', 'Footer contact phone', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(817, 'en', 'Footer contact email', 'Footer contact email', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(818, 'en', 'Link Widget One', 'Link Widget One', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(819, 'en', 'Links', 'Links', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(820, 'en', 'Footer Bottom', 'Footer Bottom', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(821, 'en', 'Copyright Widget ', 'Copyright Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(822, 'en', 'Copyright Text', 'Copyright Text', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(823, 'en', 'Social Link Widget ', 'Social Link Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(824, 'en', 'Show Social Links?', 'Show Social Links?', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(825, 'en', 'Social Links', 'Social Links', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(826, 'en', 'Payment Methods Widget ', 'Payment Methods Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(827, 'en', 'RTL status updated successfully', 'RTL status updated successfully', '2020-11-07 08:36:11', '2020-11-07 08:36:11'),
(828, 'en', 'Language changed to ', 'Language changed to ', '2020-11-07 08:36:27', '2020-11-07 08:36:27'),
(829, 'en', 'Inhouse Product sale report', 'Inhouse Product sale report', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(830, 'en', 'Sort by Category', 'Sort by Category', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(831, 'en', 'Product wise stock report', 'Product wise stock report', '2020-11-07 09:31:02', '2020-11-07 09:31:02'),
(832, 'en', 'Currency changed to ', 'Currency changed to ', '2020-11-07 12:36:28', '2020-11-07 12:36:28'),
(833, 'en', 'Avatar', 'Avatar', '2020-11-08 09:32:35', '2020-11-08 09:32:35'),
(834, 'en', 'Copy', 'Copy', '2020-11-08 10:03:42', '2020-11-08 10:03:42'),
(835, 'en', 'Variant', 'Variant', '2020-11-08 10:43:02', '2020-11-08 10:43:02'),
(836, 'en', 'Variant Price', 'Variant Price', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(837, 'en', 'SKU', 'SKU', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(838, 'en', 'Key', 'Key', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(839, 'en', 'Value', 'Value', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(840, 'en', 'Copy Translations', 'Copy Translations', '2020-11-08 12:35:10', '2020-11-08 12:35:10'),
(841, 'en', 'All Pick-up Points', 'All Pick-up Points', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(842, 'en', 'Add New Pick-up Point', 'Add New Pick-up Point', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(843, 'en', 'Manager', 'Manager', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(844, 'en', 'Location', 'Location', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(845, 'en', 'Pickup Station Contact', 'Pickup Station Contact', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(846, 'en', 'Open', 'Open', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(847, 'en', 'POS Activation for Seller', 'POS Activation for Seller', '2020-11-08 12:35:55', '2020-11-08 12:35:55'),
(848, 'en', 'Order Completed Successfully.', 'Order Completed Successfully.', '2020-11-08 12:36:02', '2020-11-08 12:36:02'),
(849, 'en', 'Text Input', 'Text Input', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(850, 'en', 'Select', 'Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(851, 'en', 'Multiple Select', 'Multiple Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(852, 'en', 'Radio', 'Radio', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(853, 'en', 'File', 'File', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(854, 'en', 'Email Address', 'Email Address', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(855, 'en', 'Verification Info', 'Verification Info', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(856, 'en', 'Approval', 'Approval', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(857, 'en', 'Due Amount', 'Due Amount', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(858, 'en', 'Show', 'Show', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(859, 'en', 'Pay Now', 'Pay Now', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(860, 'en', 'Affiliate User Verification', 'Affiliate User Verification', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(861, 'en', 'Reject', 'Reject', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(862, 'en', 'Accept', 'Accept', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(863, 'en', 'Beauty, Health & Hair', 'Beauty, Health & Hair', '2020-11-08 12:54:17', '2020-11-08 12:54:17'),
(864, 'en', 'Comparison', 'Comparison', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(865, 'en', 'Reset Compare List', 'Reset Compare List', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(866, 'en', 'Your comparison list is empty', 'Your comparison list is empty', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(867, 'en', 'Convert Point To Wallet', 'Convert Point To Wallet', '2020-11-08 13:04:42', '2020-11-08 13:04:42'),
(868, 'en', 'Note: You need to activate wallet option first before using club point addon.', 'Note: You need to activate wallet option first before using club point addon.', '2020-11-08 13:04:43', '2020-11-08 13:04:43'),
(869, 'en', 'Create an account.', 'Create an account.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(870, 'en', 'Use Email Instead', 'Use Email Instead', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(871, 'en', 'By signing up you agree to our terms and conditions.', 'By signing up you agree to our terms and conditions.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(872, 'en', 'Create Account', 'Create Account', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(873, 'en', 'Or Join With', 'Or Join With', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(874, 'en', 'Already have an account?', 'Already have an account?', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(875, 'en', 'Log In', 'Log In', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(876, 'en', 'Computer & Accessories', 'Computer & Accessories', '2020-11-09 07:52:05', '2020-11-09 07:52:05'),
(878, 'en', 'Product(s)', 'Product(s)', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(879, 'en', 'in your cart', 'in your cart', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(880, 'en', 'in your wishlist', 'in your wishlist', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(881, 'en', 'you ordered', 'you ordered', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(882, 'en', 'Default Shipping Address', 'Default Shipping Address', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(883, 'en', 'Sports & outdoor', 'Sports & outdoor', '2020-11-09 07:53:32', '2020-11-09 07:53:32'),
(884, 'en', 'Copied', 'Copied', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(885, 'en', 'Copy the Promote Link', 'Copy the Promote Link', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(886, 'en', 'Write a review', 'Write a review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(887, 'en', 'Your name', 'Your name', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(888, 'en', 'Comment', 'Comment', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(889, 'en', 'Your review', 'Your review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(890, 'en', 'Submit review', 'Submit review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(891, 'en', 'Claire Willis', 'Claire Willis', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(892, 'en', 'Germaine Greene', 'Germaine Greene', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(893, 'en', 'Product File', 'Product File', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(894, 'en', 'Choose file', 'Choose file', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(895, 'en', 'Type to add a tag', 'Type to add a tag', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(896, 'en', 'Images', 'Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(897, 'en', 'Main Images', 'Main Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(898, 'en', 'Meta Tags', 'Meta Tags', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(899, 'en', 'Digital Product has been inserted successfully', 'Digital Product has been inserted successfully', '2020-11-09 08:14:25', '2020-11-09 08:14:25'),
(900, 'en', 'Edit Digital Product', 'Edit Digital Product', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(901, 'en', 'Select an option', 'Select an option', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(902, 'en', 'tax', 'tax', '2020-11-09 08:14:35', '2020-11-09 08:14:35'),
(903, 'en', 'Any question about this product?', 'Any question about this product?', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(904, 'en', 'Sign in', 'Sign in', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(905, 'en', 'Login with Google', 'Login with Google', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(906, 'en', 'Login with Facebook', 'Login with Facebook', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(907, 'en', 'Login with Twitter', 'Login with Twitter', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(908, 'en', 'Click to show phone number', 'Click to show phone number', '2020-11-09 08:15:51', '2020-11-09 08:15:51'),
(909, 'en', 'Other Ads of', 'Other Ads of', '2020-11-09 08:15:52', '2020-11-09 08:15:52'),
(910, 'en', 'Store Home', 'Store Home', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(911, 'en', 'Top Selling', 'Top Selling', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(912, 'en', 'Shop Settings', 'Shop Settings', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(913, 'en', 'Visit Shop', 'Visit Shop', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(914, 'en', 'Pickup Points', 'Pickup Points', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(915, 'en', 'Select Pickup Point', 'Select Pickup Point', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(916, 'en', 'Slider Settings', 'Slider Settings', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(917, 'en', 'Social Media Link', 'Social Media Link', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(918, 'en', 'Facebook', 'Facebook', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(919, 'en', 'Twitter', 'Twitter', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(920, 'en', 'Google', 'Google', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(921, 'en', 'New Arrival Products', 'New Arrival Products', '2020-11-09 08:56:26', '2020-11-09 08:56:26'),
(922, 'en', 'Check Your Order Status', 'Check Your Order Status', '2020-11-09 09:23:32', '2020-11-09 09:23:32'),
(923, 'en', 'Shipping method', 'Shipping method', '2020-11-09 09:27:40', '2020-11-09 09:27:40'),
(924, 'en', 'Shipped By', 'Shipped By', '2020-11-09 09:27:41', '2020-11-09 09:27:41'),
(925, 'en', 'Image', 'Image', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(926, 'en', 'Sub Sub Category', 'Sub Sub Category', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(927, 'en', 'Inhouse Products', 'Inhouse Products', '2020-11-09 10:22:32', '2020-11-09 10:22:32'),
(928, 'en', 'Forgot Password?', 'Forgot Password?', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(929, 'en', 'Enter your email address to recover your password.', 'Enter your email address to recover your password.', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(930, 'en', 'Email or Phone', 'Email or Phone', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(931, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(932, 'en', 'Back to Login', 'Back to Login', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(933, 'en', 'index', 'index', '2020-11-09 10:35:29', '2020-11-09 10:35:29'),
(934, 'en', 'Download Your Product', 'Download Your Product', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(935, 'en', 'Option', 'Option', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(936, 'en', 'Applied Refund Request', 'Applied Refund Request', '2020-11-09 10:35:39', '2020-11-09 10:35:39'),
(937, 'en', 'Item has been renoved from wishlist', 'Item has been renoved from wishlist', '2020-11-09 10:36:04', '2020-11-09 10:36:04'),
(938, 'en', 'Bulk Products Upload', 'Bulk Products Upload', '2020-11-09 10:39:24', '2020-11-09 10:39:24'),
(939, 'en', 'Upload CSV', 'Upload CSV', '2020-11-09 10:39:25', '2020-11-09 10:39:25'),
(940, 'en', 'Create a Ticket', 'Create a Ticket', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(941, 'en', 'Tickets', 'Tickets', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(942, 'en', 'Ticket ID', 'Ticket ID', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(943, 'en', 'Sending Date', 'Sending Date', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(944, 'en', 'Subject', 'Subject', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(945, 'en', 'View Details', 'View Details', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(946, 'en', 'Provide a detailed description', 'Provide a detailed description', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(947, 'en', 'Type your reply', 'Type your reply', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(948, 'en', 'Send Ticket', 'Send Ticket', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(949, 'en', 'Load More', 'Load More', '2020-11-09 10:40:57', '2020-11-09 10:40:57'),
(950, 'en', 'Jewelry & Watches', 'Jewelry & Watches', '2020-11-09 10:47:38', '2020-11-09 10:47:38'),
(951, 'en', 'Filters', 'Filters', '2020-11-09 10:53:54', '2020-11-09 10:53:54'),
(952, 'en', 'Contact address', 'Contact address', '2020-11-09 10:58:46', '2020-11-09 10:58:46'),
(953, 'en', 'Contact phone', 'Contact phone', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(954, 'en', 'Contact email', 'Contact email', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(955, 'en', 'Filter by', 'Filter by', '2020-11-09 11:00:03', '2020-11-09 11:00:03'),
(956, 'en', 'Condition', 'Condition', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(957, 'en', 'All Type', 'All Type', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(960, 'en', 'Pay with wallet', 'Pay with wallet', '2020-11-09 12:56:34', '2020-11-09 12:56:34'),
(961, 'en', 'Select variation', 'Select variation', '2020-11-10 07:54:29', '2020-11-10 07:54:29'),
(962, 'en', 'No Product Added', 'No Product Added', '2020-11-10 08:07:53', '2020-11-10 08:07:53'),
(963, 'en', 'Status has been updated successfully', 'Status has been updated successfully', '2020-11-10 08:41:23', '2020-11-10 08:41:23'),
(964, 'en', 'All Seller Packages', 'All Seller Packages', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(965, 'en', 'Add New Package', 'Add New Package', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(966, 'en', 'Package Logo', 'Package Logo', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(967, 'en', 'days', 'days', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(968, 'en', 'Create New Seller Package', 'Create New Seller Package', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(969, 'en', 'Package Name', 'Package Name', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(970, 'en', 'Duration', 'Duration', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(971, 'en', 'Validity in number of days', 'Validity in number of days', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(972, 'en', 'Update Package Information', 'Update Package Information', '2020-11-10 09:14:59', '2020-11-10 09:14:59'),
(973, 'en', 'Package has been inserted successfully', 'Package has been inserted successfully', '2020-11-10 09:15:14', '2020-11-10 09:15:14'),
(974, 'en', 'Refund Request', 'Refund Request', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(975, 'en', 'Reason', 'Reason', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(976, 'en', 'Label', 'Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(977, 'en', 'Select Label', 'Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(978, 'en', 'Multiple Select Label', 'Multiple Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(979, 'en', 'Radio Label', 'Radio Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(980, 'en', 'Pickup Point Orders', 'Pickup Point Orders', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(981, 'en', 'View', 'View', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(982, 'en', 'Order #', 'Order #', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(983, 'en', 'Order Status', 'Order Status', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(984, 'en', 'Total amount', 'Total amount', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(986, 'en', 'TOTAL', 'TOTAL', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(987, 'en', 'Delivery status has been updated', 'Delivery status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(988, 'en', 'Payment status has been updated', 'Payment status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(989, 'en', 'INVOICE', 'INVOICE', '2020-11-10 09:25:58', '2020-11-10 09:25:58'),
(990, 'en', 'Set Refund Time', 'Set Refund Time', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(991, 'en', 'Set Time for sending Refund Request', 'Set Time for sending Refund Request', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(992, 'en', 'Set Refund Sticker', 'Set Refund Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(993, 'en', 'Sticker', 'Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(994, 'en', 'Refund Request All', 'Refund Request All', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(995, 'en', 'Order Id', 'Order Id', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(996, 'en', 'Seller Approval', 'Seller Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(997, 'en', 'Admin Approval', 'Admin Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(998, 'en', 'Refund Status', 'Refund Status', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(1000, 'en', 'No Refund', 'No Refund', '2020-11-10 09:35:27', '2020-11-10 09:35:27'),
(1001, 'en', 'Status updated successfully', 'Status updated successfully', '2020-11-10 09:54:20', '2020-11-10 09:54:20'),
(1002, 'en', 'User Search Report', 'User Search Report', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1003, 'en', 'Search By', 'Search By', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1004, 'en', 'Number searches', 'Number searches', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1005, 'en', 'Sender', 'Sender', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1006, 'en', 'Receiver', 'Receiver', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1007, 'en', 'Verification form updated successfully', 'Verification form updated successfully', '2020-11-11 06:53:29', '2020-11-11 06:53:29'),
(1008, 'en', 'Invalid email or password', 'Invalid email or password', '2020-11-11 07:07:49', '2020-11-11 07:07:49'),
(1009, 'en', 'All Coupons', 'All Coupons', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1010, 'en', 'Add New Coupon', 'Add New Coupon', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1011, 'en', 'Coupon Information', 'Coupon Information', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1012, 'en', 'Start Date', 'Start Date', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1013, 'en', 'End Date', 'End Date', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1014, 'en', 'Product Base', 'Product Base', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1015, 'en', 'Send Newsletter', 'Send Newsletter', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1016, 'en', 'Mobile Users', 'Mobile Users', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1017, 'en', 'SMS subject', 'SMS subject', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1018, 'en', 'SMS content', 'SMS content', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1019, 'en', 'All Flash Delas', 'All Flash Delas', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1020, 'en', 'Create New Flash Dela', 'Create New Flash Dela', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1022, 'en', 'Page Link', 'Page Link', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1023, 'en', 'Flash Deal Information', 'Flash Deal Information', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1024, 'en', 'Background Color', 'Background Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1026, 'en', 'Text Color', 'Text Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1027, 'en', 'White', 'White', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1028, 'en', 'Dark', 'Dark', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1029, 'en', 'Choose Products', 'Choose Products', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1030, 'en', 'Discounts', 'Discounts', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1031, 'en', 'Discount Type', 'Discount Type', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1032, 'en', 'Twillo Credential', 'Twillo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1033, 'en', 'TWILIO SID', 'TWILIO SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1034, 'en', 'TWILIO AUTH TOKEN', 'TWILIO AUTH TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1035, 'en', 'TWILIO VERIFY SID', 'TWILIO VERIFY SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1036, 'en', 'VALID TWILLO NUMBER', 'VALID TWILLO NUMBER', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1037, 'en', 'Nexmo Credential', 'Nexmo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1038, 'en', 'NEXMO KEY', 'NEXMO KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1039, 'en', 'NEXMO SECRET', 'NEXMO SECRET', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1040, 'en', 'SSL Wireless Credential', 'SSL Wireless Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1041, 'en', 'SSL SMS API TOKEN', 'SSL SMS API TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1042, 'en', 'SSL SMS SID', 'SSL SMS SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1043, 'en', 'SSL SMS URL', 'SSL SMS URL', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1044, 'en', 'Fast2SMS Credential', 'Fast2SMS Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1045, 'en', 'AUTH KEY', 'AUTH KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1046, 'en', 'ROUTE', 'ROUTE', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1047, 'en', 'Promotional Use', 'Promotional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1048, 'en', 'Transactional Use', 'Transactional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1050, 'en', 'SENDER ID', 'SENDER ID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1051, 'en', 'Nexmo OTP', 'Nexmo OTP', '2020-11-11 07:17:42', '2020-11-11 07:17:42'),
(1052, 'en', 'Twillo OTP', 'Twillo OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1053, 'en', 'SSL Wireless OTP', 'SSL Wireless OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1054, 'en', 'Fast2SMS OTP', 'Fast2SMS OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1055, 'en', 'Order Placement', 'Order Placement', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1056, 'en', 'Delivery Status Changing Time', 'Delivery Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1057, 'en', 'Paid Status Changing Time', 'Paid Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1058, 'en', 'Send Bulk SMS', 'Send Bulk SMS', '2020-11-11 07:19:14', '2020-11-11 07:19:14'),
(1059, 'en', 'All Subscribers', 'All Subscribers', '2020-11-11 07:21:51', '2020-11-11 07:21:51'),
(1060, 'en', 'Coupon Information Adding', 'Coupon Information Adding', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1061, 'en', 'Coupon Type', 'Coupon Type', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1062, 'en', 'For Products', 'For Products', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1063, 'en', 'For Total Orders', 'For Total Orders', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1064, 'en', 'Add Your Product Base Coupon', 'Add Your Product Base Coupon', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1065, 'en', 'Coupon code', 'Coupon code', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1066, 'en', 'Sub Category', 'Sub Category', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1067, 'en', 'Add More', 'Add More', '2020-11-11 07:22:43', '2020-11-11 07:22:43'),
(1068, 'en', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1069, 'en', 'Minimum Shopping', 'Minimum Shopping', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1070, 'en', 'Maximum Discount Amount', 'Maximum Discount Amount', '2020-11-11 07:29:41', '2020-11-11 07:29:41'),
(1071, 'en', 'Coupon Information Update', 'Coupon Information Update', '2020-11-11 08:18:34', '2020-11-11 08:18:34'),
(1073, 'en', 'Please Configure SMTP Setting to work all email sending funtionality', 'Please Configure SMTP Setting to work all email sending funtionality', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1074, 'en', 'Configure Now', 'Configure Now', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1076, 'en', 'Total published products', 'Total published products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1077, 'en', 'Total sellers products', 'Total sellers products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1078, 'en', 'Total admin products', 'Total admin products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1079, 'en', 'Manage Products', 'Manage Products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1080, 'en', 'Total product category', 'Total product category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1081, 'en', 'Create Category', 'Create Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1082, 'en', 'Total product sub sub category', 'Total product sub sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1083, 'en', 'Create Sub Sub Category', 'Create Sub Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1084, 'en', 'Total product sub category', 'Total product sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1085, 'en', 'Create Sub Category', 'Create Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1086, 'en', 'Total product brand', 'Total product brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1087, 'en', 'Create Brand', 'Create Brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1089, 'en', 'Total sellers', 'Total sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1091, 'en', 'Total approved sellers', 'Total approved sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1093, 'en', 'Total pending sellers', 'Total pending sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1094, 'en', 'Manage Sellers', 'Manage Sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1095, 'en', 'Category wise product sale', 'Category wise product sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1097, 'en', 'Sale', 'Sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1098, 'en', 'Category wise product stock', 'Category wise product stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1099, 'en', 'Category Name', 'Category Name', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1100, 'en', 'Stock', 'Stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1101, 'en', 'Frontend', 'Frontend', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1103, 'en', 'Home page', 'Home page', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1104, 'en', 'setting', 'setting', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1106, 'en', 'Policy page', 'Policy page', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1107, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1109, 'en', 'General', 'General', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1110, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1111, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1112, 'en', 'Useful link', 'Useful link', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1113, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1114, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1115, 'en', 'Activation', 'Activation', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1116, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1117, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1118, 'en', 'SMTP', 'SMTP', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1119, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1120, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1121, 'en', 'Payment method', 'Payment method', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1122, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1123, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1124, 'en', 'Social media', 'Social media', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1125, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1126, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1127, 'en', 'Business', 'Business', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1128, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1130, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1131, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1132, 'en', 'Seller verification', 'Seller verification', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1133, 'en', 'form setting', 'form setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1134, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1135, 'en', 'Language', 'Language', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1136, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1137, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1139, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1140, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1141, 'en', 'Dashboard', 'Dashboard', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1142, 'en', 'POS System', 'POS System', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1143, 'en', 'POS Manager', 'POS Manager', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1144, 'en', 'POS Configuration', 'POS Configuration', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1145, 'en', 'Products', 'Products', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1146, 'en', 'Add New product', 'Add New product', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1147, 'en', 'All Products', 'All Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1148, 'en', 'In House Products', 'In House Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1149, 'en', 'Seller Products', 'Seller Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1150, 'en', 'Digital Products', 'Digital Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1151, 'en', 'Bulk Import', 'Bulk Import', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1152, 'en', 'Bulk Export', 'Bulk Export', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1153, 'en', 'Category', 'Category', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1154, 'en', 'Subcategory', 'Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1155, 'en', 'Sub Subcategory', 'Sub Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1156, 'en', 'Brand', 'Brand', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1157, 'en', 'Attribute', 'Attribute', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1158, 'en', 'Product Reviews', 'Product Reviews', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1159, 'en', 'Sales', 'Sales', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1160, 'en', 'All Orders', 'All Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1161, 'en', 'Inhouse orders', 'Inhouse orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1162, 'en', 'Seller Orders', 'Seller Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1163, 'en', 'Pick-up Point Order', 'Pick-up Point Order', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1164, 'en', 'Refunds', 'Refunds', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1165, 'en', 'Refund Requests', 'Refund Requests', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1166, 'en', 'Approved Refund', 'Approved Refund', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1167, 'en', 'Refund Configuration', 'Refund Configuration', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1168, 'en', 'Customers', 'Customers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1169, 'en', 'Customer list', 'Customer list', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1170, 'en', 'Classified Products', 'Classified Products', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1171, 'en', 'Classified Packages', 'Classified Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1172, 'en', 'Sellers', 'Sellers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1173, 'en', 'All Seller', 'All Seller', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1174, 'en', 'Payouts', 'Payouts', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1175, 'en', 'Payout Requests', 'Payout Requests', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1176, 'en', 'Seller Commission', 'Seller Commission', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1177, 'en', 'Seller Packages', 'Seller Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1178, 'en', 'Seller Verification Form', 'Seller Verification Form', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1179, 'en', 'Reports', 'Reports', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1180, 'en', 'In House Product Sale', 'In House Product Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1181, 'en', 'Seller Products Sale', 'Seller Products Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1182, 'en', 'Products Stock', 'Products Stock', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1183, 'en', 'Products wishlist', 'Products wishlist', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1184, 'en', 'User Searches', 'User Searches', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1185, 'en', 'Marketing', 'Marketing', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1186, 'en', 'Flash deals', 'Flash deals', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1187, 'en', 'Newsletters', 'Newsletters', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1188, 'en', 'Bulk SMS', 'Bulk SMS', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1189, 'en', 'Subscribers', 'Subscribers', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1190, 'en', 'Coupon', 'Coupon', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1191, 'en', 'Support', 'Support', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1192, 'en', 'Ticket', 'Ticket', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1193, 'en', 'Product Queries', 'Product Queries', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1194, 'en', 'Website Setup', 'Website Setup', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1195, 'en', 'Header', 'Header', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1196, 'en', 'Footer', 'Footer', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1197, 'en', 'Pages', 'Pages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1198, 'en', 'Appearance', 'Appearance', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1199, 'en', 'Setup & Configurations', 'Setup & Configurations', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1200, 'en', 'General Settings', 'General Settings', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1201, 'en', 'Features activation', 'Features activation', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1202, 'en', 'Languages', 'Languages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1203, 'en', 'Currency', 'Currency', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1204, 'en', 'Pickup point', 'Pickup point', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1205, 'en', 'SMTP Settings', 'SMTP Settings', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1206, 'en', 'Payment Methods', 'Payment Methods', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1207, 'en', 'File System Configuration', 'File System Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1208, 'en', 'Social media Logins', 'Social media Logins', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1209, 'en', 'Analytics Tools', 'Analytics Tools', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1210, 'en', 'Facebook Chat', 'Facebook Chat', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1211, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1212, 'en', 'Shipping Configuration', 'Shipping Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1213, 'en', 'Shipping Countries', 'Shipping Countries', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1214, 'en', 'Affiliate System', 'Affiliate System', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1215, 'en', 'Affiliate Registration Form', 'Affiliate Registration Form', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1216, 'en', 'Affiliate Configurations', 'Affiliate Configurations', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1217, 'en', 'Affiliate Users', 'Affiliate Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1218, 'en', 'Referral Users', 'Referral Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1219, 'en', 'Affiliate Withdraw Requests', 'Affiliate Withdraw Requests', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1220, 'en', 'Offline Payment System', 'Offline Payment System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1221, 'en', 'Manual Payment Methods', 'Manual Payment Methods', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1222, 'en', 'Offline Wallet Recharge', 'Offline Wallet Recharge', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1223, 'en', 'Offline Customer Package Payments', 'Offline Customer Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1224, 'en', 'Offline Seller Package Payments', 'Offline Seller Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1225, 'en', 'Paytm Payment Gateway', 'Paytm Payment Gateway', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1226, 'en', 'Set Paytm Credentials', 'Set Paytm Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1227, 'en', 'Club Point System', 'Club Point System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1228, 'en', 'Club Point Configurations', 'Club Point Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1229, 'en', 'Set Product Point', 'Set Product Point', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1230, 'en', 'User Points', 'User Points', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1231, 'en', 'OTP System', 'OTP System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1232, 'en', 'OTP Configurations', 'OTP Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1233, 'en', 'Set OTP Credentials', 'Set OTP Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1234, 'en', 'Staffs', 'Staffs', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1235, 'en', 'All staffs', 'All staffs', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1236, 'en', 'Staff permissions', 'Staff permissions', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1237, 'en', 'Addon Manager', 'Addon Manager', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1238, 'en', 'Browse Website', 'Browse Website', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1239, 'en', 'POS', 'POS', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1240, 'en', 'Notifications', 'Notifications', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1241, 'en', 'new orders', 'new orders', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1242, 'en', 'user-image', 'user-image', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1243, 'en', 'Profile', 'Profile', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1244, 'en', 'Logout', 'Logout', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1247, 'en', 'Page Not Found!', 'Page Not Found!', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1249, 'en', 'The page you are looking for has not been found on our server.', 'The page you are looking for has not been found on our server.', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1253, 'en', 'Registration', 'Registration', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1255, 'en', 'I am shopping for...', 'I am shopping for...', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1257, 'en', 'Compare', 'Compare', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1259, 'en', 'Wishlist', 'Wishlist', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1261, 'en', 'Cart', 'Cart', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1263, 'en', 'Your Cart is empty', 'Your Cart is empty', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1265, 'en', 'Categories', 'Categories', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1267, 'en', 'See All', 'See All', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1269, 'en', 'Seller Policy', 'Seller Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1271, 'en', 'Return Policy', 'Return Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1273, 'en', 'Support Policy', 'Support Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1275, 'en', 'Privacy Policy', 'Privacy Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1277, 'en', 'Your Email Address', 'Your Email Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1279, 'en', 'Subscribe', 'Subscribe', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1281, 'en', 'Contact Info', 'Contact Info', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1283, 'en', 'Address', 'Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1285, 'en', 'Phone', 'Phone', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1287, 'en', 'Email', 'Email', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1288, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1289, 'en', 'My Account', 'My Account', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1291, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1293, 'en', 'Order History', 'Order History', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1295, 'en', 'My Wishlist', 'My Wishlist', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1297, 'en', 'Track Order', 'Track Order', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1299, 'en', 'Be an affiliate partner', 'Be an affiliate partner', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1301, 'en', 'Be a Seller', 'Be a Seller', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1303, 'en', 'Apply Now', 'Apply Now', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1305, 'en', 'Confirmation', 'Confirmation', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1307, 'en', 'Delete confirmation message', 'Delete confirmation message', '2020-11-11 13:10:30', '2020-11-11 13:10:30');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1309, 'en', 'Cancel', 'Cancel', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1312, 'en', 'Delete', 'Delete', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1313, 'en', 'Item has been added to compare list', 'Item has been added to compare list', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1314, 'en', 'Please login first', 'Please login first', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1315, 'en', 'Total Earnings From', 'Total Earnings From', '2020-11-12 08:01:11', '2020-11-12 08:01:11'),
(1316, 'en', 'Client Subscription', 'Client Subscription', '2020-11-12 08:01:12', '2020-11-12 08:01:12'),
(1317, 'en', 'Product category', 'Product category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1318, 'en', 'Product sub sub category', 'Product sub sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1319, 'en', 'Product sub category', 'Product sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1320, 'en', 'Product brand', 'Product brand', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1321, 'en', 'Top Client Packages', 'Top Client Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1322, 'en', 'Top Freelancer Packages', 'Top Freelancer Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1323, 'en', 'Number of sale', 'Number of sale', '2020-11-12 09:13:09', '2020-11-12 09:13:09'),
(1324, 'en', 'Number of Stock', 'Number of Stock', '2020-11-12 09:16:02', '2020-11-12 09:16:02'),
(1325, 'en', 'Top 10 Products', 'Top 10 Products', '2020-11-12 10:02:29', '2020-11-12 10:02:29'),
(1326, 'en', 'Top 12 Products', 'Top 12 Products', '2020-11-12 10:02:39', '2020-11-12 10:02:39'),
(1327, 'en', 'Admin can not be a seller', 'Admin can not be a seller', '2020-11-12 11:30:19', '2020-11-12 11:30:19'),
(1328, 'en', 'Filter by Rating', 'Filter by Rating', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1329, 'en', 'Published reviews updated successfully', 'Published reviews updated successfully', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1330, 'en', 'Refund Sticker has been updated successfully', 'Refund Sticker has been updated successfully', '2020-11-15 08:17:12', '2020-11-15 08:17:12'),
(1331, 'en', 'Edit Product', 'Edit Product', '2020-11-15 10:31:54', '2020-11-15 10:31:54'),
(1332, 'en', 'Meta Images', 'Meta Images', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1333, 'en', 'Update Product', 'Update Product', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1334, 'en', 'Product has been deleted successfully', 'Product has been deleted successfully', '2020-11-15 10:32:57', '2020-11-15 10:32:57'),
(1335, 'en', 'Your Profile has been updated successfully!', 'Your Profile has been updated successfully!', '2020-11-15 11:10:42', '2020-11-15 11:10:42'),
(1336, 'en', 'Upload limit has been reached. Please upgrade your package.', 'Upload limit has been reached. Please upgrade your package.', '2020-11-15 11:13:45', '2020-11-15 11:13:45'),
(1337, 'en', 'Add Your Product', 'Add Your Product', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1338, 'en', 'Select a category', 'Select a category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1339, 'en', 'Select a brand', 'Select a brand', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1340, 'en', 'Product Unit', 'Product Unit', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1341, 'en', 'Minimum Qty.', 'Minimum Qty.', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1342, 'en', 'Product Tag', 'Product Tag', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1343, 'en', 'Type & hit enter', 'Type & hit enter', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1344, 'en', 'Videos', 'Videos', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1345, 'en', 'Video From', 'Video From', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1346, 'en', 'Video URL', 'Video URL', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1347, 'en', 'Customer Choice', 'Customer Choice', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1348, 'en', 'PDF', 'PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1349, 'en', 'Choose PDF', 'Choose PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1350, 'en', 'Select Category', 'Select Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1351, 'en', 'Target Category', 'Target Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1352, 'en', 'subsubcategory', 'subsubcategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1353, 'en', 'Search Category', 'Search Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1354, 'en', 'Search SubCategory', 'Search SubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1355, 'en', 'Search SubSubCategory', 'Search SubSubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1356, 'en', 'Update your product', 'Update your product', '2020-11-15 11:39:14', '2020-11-15 11:39:14'),
(1357, 'en', 'Product has been updated successfully', 'Product has been updated successfully', '2020-11-15 11:51:36', '2020-11-15 11:51:36'),
(1358, 'en', 'Add Your Digital Product', 'Add Your Digital Product', '2020-11-15 12:24:21', '2020-11-15 12:24:21'),
(1359, 'en', 'Active eCommerce CMS Update Process', 'Active eCommerce CMS Update Process', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1361, 'en', 'Codecanyon purchase code', 'Codecanyon purchase code', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1362, 'en', 'Database Name', 'Database Name', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1363, 'en', 'Database Username', 'Database Username', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1364, 'en', 'Database Password', 'Database Password', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1365, 'en', 'Database Hostname', 'Database Hostname', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1366, 'en', 'Update Now', 'Update Now', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1368, 'en', 'Congratulations', 'Congratulations', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1369, 'en', 'You have successfully completed the updating process. Please Login to continue', 'You have successfully completed the updating process. Please Login to continue', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1370, 'en', 'Go to Home', 'Go to Home', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1371, 'en', 'Login to Admin panel', 'Login to Admin panel', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1372, 'en', 'S3 File System Credentials', 'S3 File System Credentials', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1373, 'en', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1374, 'en', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1375, 'en', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1376, 'en', 'AWS_BUCKET', 'AWS_BUCKET', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1377, 'en', 'AWS_URL', 'AWS_URL', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1378, 'en', 'S3 File System Activation', 'S3 File System Activation', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1379, 'en', 'Your phone number', 'Your phone number', '2020-11-17 05:50:10', '2020-11-17 05:50:10'),
(1380, 'en', 'Zip File', 'Zip File', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1381, 'en', 'Install', 'Install', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1382, 'en', 'This version is not capable of installing Addons, Please update.', 'This version is not capable of installing Addons, Please update.', '2020-11-17 06:59:11', '2020-11-17 06:59:11'),
(1383, 'en', 'Browse All Categories', 'Browse All Categories', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1384, 'en', 'Find Our Locations', 'Find Our Locations', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1385, 'en', 'To Get More Emersive', 'To Get More Emersive', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1386, 'en', 'Something went wrong!', 'Something went wrong!', '2021-07-18 20:31:13', '2021-07-18 20:31:13'),
(1387, 'en', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-07-18 20:31:13', '2021-07-18 20:31:13'),
(1388, 'en', 'Error code', 'Error code', '2021-07-18 20:31:13', '2021-07-18 20:31:13'),
(1389, 'en', 'Nothing selected', 'Nothing selected', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1390, 'en', 'Nothing found', 'Nothing found', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1391, 'en', 'File selected', 'File selected', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1392, 'en', 'Files selected', 'Files selected', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1393, 'en', 'Add more files', 'Add more files', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1394, 'en', 'Adding more files', 'Adding more files', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1395, 'en', 'Drop files here, paste or', 'Drop files here, paste or', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1396, 'en', 'Upload complete', 'Upload complete', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1397, 'en', 'Upload paused', 'Upload paused', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1398, 'en', 'Resume upload', 'Resume upload', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1399, 'en', 'Pause upload', 'Pause upload', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1400, 'en', 'Retry upload', 'Retry upload', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1401, 'en', 'Cancel upload', 'Cancel upload', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1402, 'en', 'Uploading', 'Uploading', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1403, 'en', 'Processing', 'Processing', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1404, 'en', 'Complete', 'Complete', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1405, 'en', 'Files', 'Files', '2021-07-18 20:31:36', '2021-07-18 20:31:36'),
(1406, 'en', 'Blogs', 'Blogs', '2021-07-18 20:31:37', '2021-07-18 20:31:37'),
(1407, 'en', 'Please Configure SMTP Setting to work all email sending functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-07-18 20:32:03', '2021-07-18 20:32:03'),
(1408, 'en', 'Order', 'Order', '2021-07-18 20:32:03', '2021-07-18 20:32:03'),
(1409, 'en', 'Search in menu', 'Search in menu', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1410, 'en', 'Uploaded Files', 'Uploaded Files', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1411, 'en', 'Commission History', 'Commission History', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1412, 'en', 'Wallet Recharge History', 'Wallet Recharge History', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1413, 'en', 'Blog System', 'Blog System', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1414, 'en', 'All Posts', 'All Posts', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1415, 'en', 'Vat & TAX', 'Vat & TAX', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1416, 'en', 'Facebook Comment', 'Facebook Comment', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1417, 'en', 'Shipping Cities', 'Shipping Cities', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1418, 'en', 'System', 'System', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1419, 'en', 'Server status', 'Server status', '2021-07-18 20:32:04', '2021-07-18 20:32:04'),
(1420, 'en', 'Install/Update Addon', 'Install/Update Addon', '2021-07-18 20:32:14', '2021-07-18 20:32:14'),
(1421, 'en', 'No Addon Installed', 'No Addon Installed', '2021-07-18 20:32:14', '2021-07-18 20:32:14'),
(1422, 'en', 'Install/Update', 'Install/Update', '2021-07-18 20:32:17', '2021-07-18 20:32:17'),
(1424, 'en', 'SMS Templates', 'SMS Templates', '2021-07-18 20:32:40', '2021-07-18 20:32:40'),
(1425, 'en', 'MIMO OTP', 'MIMO OTP', '2021-07-18 20:32:50', '2021-07-18 20:32:50'),
(1426, 'en', 'ENTITY ID', 'ENTITY ID', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1427, 'en', 'DLT Manual', 'DLT Manual', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1428, 'en', 'MIMO Credential', 'MIMO Credential', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1429, 'en', 'MIMO_USERNAME', 'MIMO_USERNAME', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1430, 'en', 'MIMO_PASSWORD', 'MIMO_PASSWORD', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1431, 'en', 'MIMO_SENDER_ID', 'MIMO_SENDER_ID', '2021-07-18 20:33:01', '2021-07-18 20:33:01'),
(1432, 'en', 'All Customers', 'All Customers', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1433, 'en', 'Bulk Action', 'Bulk Action', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1434, 'en', 'Delete selection', 'Delete selection', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1435, 'en', 'Type email or name & Enter', 'Type email or name & Enter', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1436, 'en', 'Package', 'Package', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1437, 'en', 'Wallet Balance', 'Wallet Balance', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1438, 'en', 'Log in as this Customer', 'Log in as this Customer', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1439, 'en', 'Ban this Customer', 'Ban this Customer', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1440, 'en', 'Do you really want to ban this Customer?', 'Do you really want to ban this Customer?', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1441, 'en', 'Proceed!', 'Proceed!', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1442, 'en', 'Do you really want to unban this Customer?', 'Do you really want to unban this Customer?', '2021-07-18 20:35:52', '2021-07-18 20:35:52'),
(1443, 'en', 'View All Sellers', 'View All Sellers', '2021-07-18 20:36:06', '2021-07-18 20:36:06'),
(1444, 'en', 'Customer has been deleted successfully', 'Customer has been deleted successfully', '2021-07-18 21:07:04', '2021-07-18 21:07:04'),
(1445, 'en', 'Template ID', 'Template ID', '2021-07-18 23:23:35', '2021-07-18 23:23:35'),
(1446, 'en', 'SMS has been sent.', 'SMS has been sent.', '2021-07-18 23:25:26', '2021-07-18 23:25:26'),
(1447, 'en', 'Blog', 'Blog', '2021-07-19 00:50:13', '2021-07-19 00:50:13'),
(1448, 'en', 'Staff Information', 'Staff Information', '2021-07-19 00:51:22', '2021-07-19 00:51:22'),
(1449, 'en', 'Staff has been inserted successfully', 'Staff has been inserted successfully', '2021-07-19 00:51:47', '2021-07-19 00:51:47'),
(1450, 'en', 'Select Brand', 'Select Brand', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1451, 'en', 'Minimum Purchase Qty', 'Minimum Purchase Qty', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1452, 'en', 'This is used for search. Input those words by which cutomer can find this product.', 'This is used for search. Input those words by which cutomer can find this product.', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1453, 'en', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1454, 'en', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1455, 'en', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1456, 'en', 'Discount Date Range', 'Discount Date Range', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1457, 'en', 'Is Product Quantity Mulitiply', 'Is Product Quantity Mulitiply', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1458, 'en', 'Low Stock Quantity Warning', 'Low Stock Quantity Warning', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1459, 'en', 'Stock Visibility State', 'Stock Visibility State', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1460, 'en', 'Show Stock Quantity', 'Show Stock Quantity', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1461, 'en', 'Show Stock With Text Only', 'Show Stock With Text Only', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1462, 'en', 'Hide Stock', 'Hide Stock', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1463, 'en', 'Flash Deal', 'Flash Deal', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1464, 'en', 'Add To Flash', 'Add To Flash', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1465, 'en', 'Estimate Shipping Time', 'Estimate Shipping Time', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1466, 'en', 'Shipping Days', 'Shipping Days', '2021-07-19 00:54:14', '2021-07-19 00:54:14'),
(1467, 'en', 'Save As Draft', 'Save As Draft', '2021-07-19 00:54:15', '2021-07-19 00:54:15'),
(1468, 'en', 'Save & Unpublish', 'Save & Unpublish', '2021-07-19 00:54:15', '2021-07-19 00:54:15'),
(1469, 'en', 'Save & Publish', 'Save & Publish', '2021-07-19 00:54:15', '2021-07-19 00:54:15'),
(1470, 'en', 'Info', 'Info', '2021-07-19 00:54:15', '2021-07-19 00:54:15'),
(1471, 'en', 'Step 1', 'Step 1', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1472, 'en', 'Download the skeleton file and fill it with proper data', 'Download the skeleton file and fill it with proper data', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1473, 'en', 'You can download the example file to understand how the data must be filled', 'You can download the example file to understand how the data must be filled', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1474, 'en', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1475, 'en', 'After uploading products you need to edit them and set product\'s images and choices', 'After uploading products you need to edit them and set product\'s images and choices', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1476, 'en', 'Step 2', 'Step 2', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1477, 'en', 'Category and Brand should be in numerical id', 'Category and Brand should be in numerical id', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1478, 'en', 'You can download the pdf to get Category and Brand id', 'You can download the pdf to get Category and Brand id', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1479, 'en', 'Upload Product File', 'Upload Product File', '2021-07-19 00:54:16', '2021-07-19 00:54:16'),
(1480, 'en', 'Role Information', 'Role Information', '2021-07-19 00:55:02', '2021-07-19 00:55:02'),
(1481, 'en', 'Translatable', 'Translatable', '2021-07-19 00:55:02', '2021-07-19 00:55:02'),
(1482, 'en', 'Permissions', 'Permissions', '2021-07-19 00:55:02', '2021-07-19 00:55:02'),
(1483, 'en', 'Role has been updated successfully', 'Role has been updated successfully', '2021-07-19 00:55:32', '2021-07-19 00:55:32'),
(1484, 'en', 'Products imported successfully', 'Products imported successfully', '2021-07-19 01:03:43', '2021-07-19 01:03:43'),
(1485, 'en', 'Search your files', 'Search your files', '2021-07-19 01:04:06', '2021-07-19 01:04:06'),
(1486, 'en', 'All uploaded files', 'All uploaded files', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1487, 'en', 'Upload New File', 'Upload New File', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1488, 'en', 'All files', 'All files', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1489, 'en', 'Search', 'Search', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1490, 'en', 'Details Info', 'Details Info', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1491, 'en', 'Copy Link', 'Copy Link', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1492, 'en', 'Are you sure to delete this file?', 'Are you sure to delete this file?', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1493, 'en', 'File Info', 'File Info', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1494, 'en', 'Link copied to clipboard', 'Link copied to clipboard', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1495, 'en', 'Oops, unable to copy', 'Oops, unable to copy', '2021-07-19 01:07:55', '2021-07-19 01:07:55'),
(1496, 'en', 'Back to uploaded files', 'Back to uploaded files', '2021-07-19 01:08:07', '2021-07-19 01:08:07'),
(1497, 'en', 'Drag & drop your files', 'Drag & drop your files', '2021-07-19 01:08:07', '2021-07-19 01:08:07'),
(1498, 'en', 'Topbar Banner', 'Topbar Banner', '2021-07-19 01:15:52', '2021-07-19 01:15:52'),
(1499, 'en', 'Topbar Banner Link', 'Topbar Banner Link', '2021-07-19 01:15:52', '2021-07-19 01:15:52'),
(1500, 'en', 'Link with', 'Link with', '2021-07-19 01:15:52', '2021-07-19 01:15:52'),
(1501, 'en', 'Header Nav Menu', 'Header Nav Menu', '2021-07-19 01:15:52', '2021-07-19 01:15:52'),
(1502, 'en', 'Play Store Link', 'Play Store Link', '2021-07-19 01:16:06', '2021-07-19 01:16:06'),
(1503, 'en', 'App Store Link', 'App Store Link', '2021-07-19 01:16:06', '2021-07-19 01:16:06'),
(1504, 'en', 'Cookies Agreement', 'Cookies Agreement', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1505, 'en', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1506, 'en', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1507, 'en', 'Website Popup', 'Website Popup', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1508, 'en', 'Show website popup?', 'Show website popup?', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1509, 'en', 'Popup content', 'Popup content', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1510, 'en', 'Show Subscriber form?', 'Show Subscriber form?', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1511, 'en', 'Custom Script', 'Custom Script', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1512, 'en', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1513, 'en', 'Write script with <script> tag', 'Write script with <script> tag', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1514, 'en', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-07-19 01:17:19', '2021-07-19 01:17:19'),
(1515, 'en', 'HTTPS Activation', 'HTTPS Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1516, 'en', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1517, 'en', 'Disable image optimization?', 'Disable image optimization?', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1518, 'en', 'Business Related', 'Business Related', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1519, 'en', 'Vendor System Activation', 'Vendor System Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1520, 'en', 'Classified Product', 'Classified Product', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1521, 'en', 'Wallet System Activation', 'Wallet System Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1522, 'en', 'Coupon System Activation', 'Coupon System Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1523, 'en', 'Pickup Point Activation', 'Pickup Point Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1524, 'en', 'Conversation Activation', 'Conversation Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1525, 'en', 'Seller Product Manage By Admin', 'Seller Product Manage By Admin', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1526, 'en', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1527, 'en', 'Category-based Commission', 'Category-based Commission', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1528, 'en', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1529, 'en', 'Set Commisssion Now', 'Set Commisssion Now', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1530, 'en', 'Email Verification', 'Email Verification', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1531, 'en', 'Payment Related', 'Payment Related', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1532, 'en', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1533, 'en', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1534, 'en', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1535, 'en', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1536, 'en', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1537, 'en', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1538, 'en', 'Razor Pay Activation', 'Razor Pay Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1539, 'en', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1540, 'en', 'PayStack Activation', 'PayStack Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1541, 'en', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1542, 'en', 'VoguePay Activation', 'VoguePay Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1543, 'en', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1544, 'en', 'Payhere Activation', 'Payhere Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1545, 'en', 'Ngenius Activation', 'Ngenius Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1546, 'en', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1547, 'en', 'Iyzico Activation', 'Iyzico Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1548, 'en', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1549, 'en', 'Bkash Activation', 'Bkash Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1550, 'en', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1551, 'en', 'Nagad Activation', 'Nagad Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1552, 'en', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1553, 'en', 'Proxy Pay Activation', 'Proxy Pay Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1554, 'en', 'Cash Payment Activation', 'Cash Payment Activation', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1555, 'en', 'Social Media Login', 'Social Media Login', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1556, 'en', 'Facebook login', 'Facebook login', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1557, 'en', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1558, 'en', 'Google login', 'Google login', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1559, 'en', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1560, 'en', 'Twitter login', 'Twitter login', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1561, 'en', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-07-19 01:18:16', '2021-07-19 01:18:16'),
(1562, 'en', 'Language has been deleted successfully', 'Language has been deleted successfully', '2021-07-19 01:18:38', '2021-07-19 01:18:38'),
(1563, 'en', 'System Default Currency', 'System Default Currency', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1564, 'en', 'Set Currency Formats', 'Set Currency Formats', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1565, 'en', 'Symbol Format', 'Symbol Format', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1566, 'en', 'Decimal Separator', 'Decimal Separator', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1567, 'en', 'No of decimals', 'No of decimals', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1568, 'en', 'All Currencies', 'All Currencies', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1569, 'en', 'Add New Currency', 'Add New Currency', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1570, 'en', 'Currency name', 'Currency name', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1571, 'en', 'Currency symbol', 'Currency symbol', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1572, 'en', 'Currency code', 'Currency code', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1573, 'en', 'Currency Status updated successfully', 'Currency Status updated successfully', '2021-07-19 01:19:09', '2021-07-19 01:19:09'),
(1574, 'en', 'Symbol', 'Symbol', '2021-07-19 01:20:18', '2021-07-19 01:20:18'),
(1575, 'en', 'Currency updated successfully', 'Currency updated successfully', '2021-07-19 01:20:59', '2021-07-19 01:20:59'),
(1576, 'en', 'Update Currency', 'Update Currency', '2021-07-19 01:21:32', '2021-07-19 01:21:32'),
(1577, 'en', 'All cities', 'All cities', '2021-07-19 01:21:46', '2021-07-19 01:21:46'),
(1578, 'en', 'Cities', 'Cities', '2021-07-19 01:21:46', '2021-07-19 01:21:46'),
(1579, 'en', 'Cost', 'Cost', '2021-07-19 01:21:46', '2021-07-19 01:21:46'),
(1580, 'en', 'Add New city', 'Add New city', '2021-07-19 01:21:46', '2021-07-19 01:21:46'),
(1581, 'en', 'City has been inserted successfully', 'City has been inserted successfully', '2021-07-19 01:22:03', '2021-07-19 01:22:03'),
(1582, 'en', 'All Taxes', 'All Taxes', '2021-07-19 01:22:12', '2021-07-19 01:22:12'),
(1583, 'en', 'Add New Tax', 'Add New Tax', '2021-07-19 01:22:12', '2021-07-19 01:22:12'),
(1584, 'en', 'Tax Type', 'Tax Type', '2021-07-19 01:22:12', '2021-07-19 01:22:12'),
(1585, 'en', 'Tax Name', 'Tax Name', '2021-07-19 01:22:12', '2021-07-19 01:22:12'),
(1586, 'en', 'Tax status updated successfully', 'Tax status updated successfully', '2021-07-19 01:22:12', '2021-07-19 01:22:12'),
(1587, 'en', 'Sendmail', 'Sendmail', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1588, 'en', 'Mailgun', 'Mailgun', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1589, 'en', 'MAIL HOST', 'MAIL HOST', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1590, 'en', 'MAIL PORT', 'MAIL PORT', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1591, 'en', 'MAIL USERNAME', 'MAIL USERNAME', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1592, 'en', 'MAIL PASSWORD', 'MAIL PASSWORD', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1593, 'en', 'MAIL ENCRYPTION', 'MAIL ENCRYPTION', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1594, 'en', 'MAIL FROM ADDRESS', 'MAIL FROM ADDRESS', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1595, 'en', 'MAIL FROM NAME', 'MAIL FROM NAME', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1596, 'en', 'MAILGUN DOMAIN', 'MAILGUN DOMAIN', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1597, 'en', 'MAILGUN SECRET', 'MAILGUN SECRET', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1598, 'en', 'Save Configuration', 'Save Configuration', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1599, 'en', 'Test SMTP configuration', 'Test SMTP configuration', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1600, 'en', 'Enter your email address', 'Enter your email address', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1601, 'en', 'Send test email', 'Send test email', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1602, 'en', 'Instruction', 'Instruction', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1603, 'en', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-07-19 01:22:56', '2021-07-19 01:22:56'),
(1604, 'en', 'For Non-SSL', 'For Non-SSL', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1605, 'en', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1606, 'en', 'Set Mail Host according to your server Mail Client Manual Settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1607, 'en', 'Set Mail port as 587', 'Set Mail port as 587', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1608, 'en', 'Set Mail Encryption as ssl if you face issue with tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1609, 'en', 'For SSL', 'For SSL', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1610, 'en', 'Set Mail port as 465', 'Set Mail port as 465', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1611, 'en', 'Set Mail Encryption as ssl', 'Set Mail Encryption as ssl', '2021-07-19 01:22:57', '2021-07-19 01:22:57'),
(1612, 'en', 'Bkash Credential', 'Bkash Credential', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1613, 'en', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1614, 'en', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1615, 'en', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1616, 'en', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1617, 'en', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1618, 'en', 'Nagad Credential', 'Nagad Credential', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1619, 'en', 'NAGAD MODE', 'NAGAD MODE', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1620, 'en', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1621, 'en', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1622, 'en', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1623, 'en', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1624, 'en', 'PAYSTACK CURRENCY CODE', 'PAYSTACK CURRENCY CODE', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1625, 'en', 'Iyzico Credential', 'Iyzico Credential', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1626, 'en', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1627, 'en', 'IYZICO API KEY', 'IYZICO API KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1628, 'en', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1629, 'en', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1630, 'en', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1631, 'en', 'ProxyPay Credential', 'ProxyPay Credential', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1632, 'en', 'PROXYPAY_TOKEN', 'PROXYPAY_TOKEN', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1633, 'en', 'PROXYPAY TOKEN', 'PROXYPAY TOKEN', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1634, 'en', 'PROXYPAY_ENTITY', 'PROXYPAY_ENTITY', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1635, 'en', 'PROXYPAY_END_TIME', 'PROXYPAY_END_TIME', '2021-07-19 01:23:08', '2021-07-19 01:23:08'),
(1636, 'en', 'Google Login Credential', 'Google Login Credential', '2021-07-19 01:23:26', '2021-07-19 01:23:26'),
(1637, 'en', 'Client ID', 'Client ID', '2021-07-19 01:23:26', '2021-07-19 01:23:26'),
(1638, 'en', 'Google Client ID', 'Google Client ID', '2021-07-19 01:23:26', '2021-07-19 01:23:26'),
(1639, 'en', 'Client Secret', 'Client Secret', '2021-07-19 01:23:26', '2021-07-19 01:23:26'),
(1640, 'en', 'Google Client Secret', 'Google Client Secret', '2021-07-19 01:23:26', '2021-07-19 01:23:26'),
(1641, 'en', 'Facebook Login Credential', 'Facebook Login Credential', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1642, 'en', 'App ID', 'App ID', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1643, 'en', 'Facebook Client ID', 'Facebook Client ID', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1644, 'en', 'App Secret', 'App Secret', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1645, 'en', 'Facebook Client Secret', 'Facebook Client Secret', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1646, 'en', 'Twitter Login Credential', 'Twitter Login Credential', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1647, 'en', 'Twitter Client ID', 'Twitter Client ID', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1648, 'en', 'Twitter Client Secret', 'Twitter Client Secret', '2021-07-19 01:23:27', '2021-07-19 01:23:27'),
(1649, 'en', 'Search result for ', 'Search result for ', '2021-07-19 01:39:02', '2021-07-19 01:39:02'),
(1650, 'en', 'Your order has been placed successfully', 'Your order has been placed successfully', '2021-07-19 01:39:16', '2021-07-19 01:39:16'),
(1651, 'en', 'Change Order Status', 'Change Order Status', '2021-07-19 01:39:33', '2021-07-19 01:39:33'),
(1652, 'en', 'Choose an order status', 'Choose an order status', '2021-07-19 01:39:33', '2021-07-19 01:39:33'),
(1653, 'en', 'Picked Up', 'Picked Up', '2021-07-19 01:39:33', '2021-07-19 01:39:33'),
(1654, 'en', 'On The Way', 'On The Way', '2021-07-19 01:39:33', '2021-07-19 01:39:33'),
(1655, 'en', 'Filter by date', 'Filter by date', '2021-07-19 01:39:33', '2021-07-19 01:39:33'),
(1656, 'en', 'Delivery boy has been assigned', 'Delivery boy has been assigned', '2021-07-19 01:39:45', '2021-07-19 01:39:45'),
(1657, 'en', 'Add New Post', 'Add New Post', '2021-07-19 02:00:23', '2021-07-19 02:00:23'),
(1658, 'en', 'All blog posts', 'All blog posts', '2021-07-19 02:00:23', '2021-07-19 02:00:23'),
(1659, 'en', 'Short Description', 'Short Description', '2021-07-19 02:00:23', '2021-07-19 02:00:23'),
(1660, 'en', 'Change blog status successfully', 'Change blog status successfully', '2021-07-19 02:00:23', '2021-07-19 02:00:23'),
(1661, 'en', 'All Blog Categories', 'All Blog Categories', '2021-07-19 02:00:28', '2021-07-19 02:00:28'),
(1662, 'en', 'Blog Categories', 'Blog Categories', '2021-07-19 02:00:28', '2021-07-19 02:00:28'),
(1663, 'en', 'All Colors', 'All Colors', '2021-07-19 02:03:10', '2021-07-19 02:03:10'),
(1664, 'en', 'Add New Color', 'Add New Color', '2021-07-19 02:03:10', '2021-07-19 02:03:10'),
(1665, 'en', 'Color Code', 'Color Code', '2021-07-19 02:03:10', '2021-07-19 02:03:10'),
(1666, 'en', 'Parent Category', 'Parent Category', '2021-07-19 02:03:30', '2021-07-19 02:03:30'),
(1667, 'en', 'Order Level', 'Order Level', '2021-07-19 02:03:30', '2021-07-19 02:03:30'),
(1668, 'en', 'Level', 'Level', '2021-07-19 02:03:30', '2021-07-19 02:03:30'),
(1669, 'en', 'Server information', 'Server information', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1670, 'en', 'Current Version', 'Current Version', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1671, 'en', 'Required Version', 'Required Version', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1672, 'en', 'php.ini Config', 'php.ini Config', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1673, 'en', 'Config Name', 'Config Name', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1674, 'en', 'Current', 'Current', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1675, 'en', 'Recommended', 'Recommended', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1676, 'en', 'Extensions information', 'Extensions information', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1677, 'en', 'Extension Name', 'Extension Name', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1678, 'en', 'Filesystem Permissions', 'Filesystem Permissions', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1679, 'en', 'File or Folder', 'File or Folder', '2021-07-19 02:07:06', '2021-07-19 02:07:06'),
(1680, 'en', 'Product Wish Report', 'Product Wish Report', '2021-07-19 02:08:01', '2021-07-19 02:08:01'),
(1681, 'en', 'Number of Wish', 'Number of Wish', '2021-07-19 02:08:01', '2021-07-19 02:08:01'),
(1682, 'en', 'Add New Seller', 'Add New Seller', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1683, 'en', 'Filter by Approval', 'Filter by Approval', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1684, 'en', 'Non-Approved', 'Non-Approved', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1685, 'en', 'Type name or email & Enter', 'Type name or email & Enter', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1686, 'en', 'Due to seller', 'Due to seller', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1687, 'en', 'Log in as this Seller', 'Log in as this Seller', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1688, 'en', 'Go to Payment', 'Go to Payment', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1689, 'en', 'Ban this seller', 'Ban this seller', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1690, 'en', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1691, 'en', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-07-19 02:22:19', '2021-07-19 02:22:19'),
(1692, 'en', 'Seller has been deleted successfully', 'Seller has been deleted successfully', '2021-07-19 02:22:29', '2021-07-19 02:22:29'),
(1693, 'en', 'Category Information', 'Category Information', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1694, 'en', 'No Parent', 'No Parent', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1695, 'en', 'Ordering Number', 'Ordering Number', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1696, 'en', 'Higher number has high priority', 'Higher number has high priority', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1697, 'en', 'Physical', 'Physical', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1698, 'en', 'Digital', 'Digital', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1699, 'en', '200x200', '200x200', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1700, 'en', '32x32', '32x32', '2021-07-19 02:40:34', '2021-07-19 02:40:34'),
(1701, 'en', 'Category has been updated successfully', 'Category has been updated successfully', '2021-07-19 02:43:17', '2021-07-19 02:43:17'),
(1702, 'en', 'Pickup Point Information', 'Pickup Point Information', '2021-07-19 07:58:10', '2021-07-19 07:58:10'),
(1703, 'en', 'Pickup Point Status', 'Pickup Point Status', '2021-07-19 07:58:10', '2021-07-19 07:58:10'),
(1704, 'en', 'Pick-up Point Manager', 'Pick-up Point Manager', '2021-07-19 07:58:10', '2021-07-19 07:58:10'),
(1705, 'en', 'PicupPoint has been inserted successfully', 'PicupPoint has been inserted successfully', '2021-07-19 07:59:33', '2021-07-19 07:59:33'),
(1706, 'en', NULL, NULL, '2021-07-19 08:04:58', '2021-07-19 08:04:58'),
(1707, 'en', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-07-19 08:09:00', '2021-07-19 08:09:00'),
(1708, 'en', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-07-19 08:09:00', '2021-07-19 08:09:00'),
(1709, 'en', 'Add New Brand', 'Add New Brand', '2021-07-19 08:47:13', '2021-07-19 08:47:13'),
(1710, 'en', '120x80', '120x80', '2021-07-19 08:47:13', '2021-07-19 08:47:13'),
(1711, 'en', 'Brand Information', 'Brand Information', '2021-07-19 08:47:19', '2021-07-19 08:47:19'),
(1712, 'en', 'Brand has been updated successfully', 'Brand has been updated successfully', '2021-07-19 08:47:37', '2021-07-19 08:47:37'),
(1713, 'en', 'Iyzico', 'Iyzico', '2021-07-19 11:03:44', '2021-07-19 11:03:44'),
(1714, 'en', 'ProxyPay', 'ProxyPay', '2021-07-19 11:03:44', '2021-07-19 11:03:44'),
(1715, 'en', 'Your order has been placed', 'Your order has been placed', '2021-07-19 11:03:55', '2021-07-19 11:03:55'),
(1716, 'en', 'We are Under Maintenance.', 'We are Under Maintenance.', '2021-07-19 12:05:48', '2021-07-19 12:05:48'),
(1717, 'en', 'We will be back soon!', 'We will be back soon!', '2021-07-19 12:05:48', '2021-07-19 12:05:48'),
(1718, 'en', 'Brand has been deleted successfully', 'Brand has been deleted successfully', '2021-07-19 14:11:45', '2021-07-19 14:11:45'),
(1719, 'en', 'City Information', 'City Information', '2021-07-19 14:20:51', '2021-07-19 14:20:51'),
(1720, 'en', 'City has been updated successfully', 'City has been updated successfully', '2021-07-19 14:21:17', '2021-07-19 14:21:17'),
(1721, 'en', 'Order has been deleted successfully', 'Order has been deleted successfully', '2021-07-19 14:23:58', '2021-07-19 14:23:58'),
(1722, 'en', 'File deleted successfully', 'File deleted successfully', '2021-07-19 14:55:02', '2021-07-19 14:55:02'),
(1723, 'en', 'All Flash Deals', 'All Flash Deals', '2021-07-19 16:10:09', '2021-07-19 16:10:09'),
(1724, 'en', 'Create New Flash Deal', 'Create New Flash Deal', '2021-07-19 16:10:09', '2021-07-19 16:10:09'),
(1725, 'en', 'Wallet Transaction Report', 'Wallet Transaction Report', '2021-07-19 16:13:29', '2021-07-19 16:13:29'),
(1726, 'en', 'Wallet Transaction', 'Wallet Transaction', '2021-07-19 16:13:29', '2021-07-19 16:13:29'),
(1727, 'en', 'Choose User', 'Choose User', '2021-07-19 16:13:29', '2021-07-19 16:13:29'),
(1728, 'en', 'Daterange', 'Daterange', '2021-07-19 16:13:29', '2021-07-19 16:13:29'),
(1729, 'en', 'Support Desk', 'Support Desk', '2021-07-19 16:15:13', '2021-07-19 16:15:13'),
(1730, 'en', 'Type ticket code & Enter', 'Type ticket code & Enter', '2021-07-19 16:15:13', '2021-07-19 16:15:13'),
(1731, 'en', 'User', 'User', '2021-07-19 16:15:13', '2021-07-19 16:15:13'),
(1732, 'en', 'Last reply', 'Last reply', '2021-07-19 16:15:13', '2021-07-19 16:15:13'),
(1733, 'en', 'of seller product price will be deducted from seller earnings', 'of seller product price will be deducted from seller earnings', '2021-07-19 16:15:56', '2021-07-19 16:15:56'),
(1734, 'en', 'This commission only works when Category Based Commission is turned off from Business Settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-07-19 16:15:56', '2021-07-19 16:15:56'),
(1735, 'en', 'Seller Commission updated successfully', 'Seller Commission updated successfully', '2021-07-19 16:16:14', '2021-07-19 16:16:14'),
(1736, 'en', 'Seller Payments', 'Seller Payments', '2021-07-19 16:16:28', '2021-07-19 16:16:28'),
(1737, 'en', 'Seller', 'Seller', '2021-07-19 16:16:28', '2021-07-19 16:16:28'),
(1738, 'en', 'Payment Details', 'Payment Details', '2021-07-19 16:16:28', '2021-07-19 16:16:28'),
(1739, 'en', 'Seller Withdraw Request', 'Seller Withdraw Request', '2021-07-19 16:16:33', '2021-07-19 16:16:33'),
(1740, 'en', 'Total Amount to Pay', 'Total Amount to Pay', '2021-07-19 16:16:33', '2021-07-19 16:16:33'),
(1741, 'en', 'Requested Amount', 'Requested Amount', '2021-07-19 16:16:33', '2021-07-19 16:16:33'),
(1742, 'en', 'Facebook Pixel Setting', 'Facebook Pixel Setting', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1743, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1744, 'en', 'Facebook Pixel ID', 'Facebook Pixel ID', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1745, 'en', 'Please be carefull when you are configuring Facebook pixel.', 'Please be carefull when you are configuring Facebook pixel.', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1746, 'en', 'Log in to Facebook and go to your Ads Manager account', 'Log in to Facebook and go to your Ads Manager account', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1747, 'en', 'Open the Navigation Bar and select Events Manager', 'Open the Navigation Bar and select Events Manager', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1748, 'en', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1749, 'en', 'Google Analytics Setting', 'Google Analytics Setting', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1750, 'en', 'Google Analytics', 'Google Analytics', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1751, 'en', 'Tracking ID', 'Tracking ID', '2021-07-19 17:19:21', '2021-07-19 17:19:21'),
(1752, 'en', 'Use Phone Instead', 'Use Phone Instead', '2021-07-19 18:45:47', '2021-07-19 18:45:47'),
(1753, 'en', 'Phone Verification', 'Phone Verification', '2021-07-19 18:46:30', '2021-07-19 18:46:30'),
(1754, 'en', 'Resend Code', 'Resend Code', '2021-07-19 18:46:30', '2021-07-19 18:46:30'),
(1755, 'en', 'Unknown', 'Unknown', '2021-07-19 20:01:44', '2021-07-19 20:01:44'),
(1756, 'en', 'Registration successfull.', 'Registration successfull.', '2021-07-19 21:22:26', '2021-07-19 21:22:26'),
(1757, 'en', 'You have subscribed successfully', 'You have subscribed successfully', '2021-07-20 11:15:49', '2021-07-20 11:15:49'),
(1758, 'en', '#FFFFFF', '#FFFFFF', '2021-07-20 11:46:14', '2021-07-20 11:46:14');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1759, 'en', 'This image is shown as cover banner in flash deal details page.', 'This image is shown as cover banner in flash deal details page.', '2021-07-20 11:46:14', '2021-07-20 11:46:14'),
(1760, 'en', 'If any product has discount or exists in another flash deal, the discount will be replaced by this discount & time limit.', 'If any product has discount or exists in another flash deal, the discount will be replaced by this discount & time limit.', '2021-07-20 11:46:14', '2021-07-20 11:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/all/zmZgy.jpeg', 'uploads/all/zmZgy.jpeg', 19, 33804, 'jpeg', 'image', '2021-07-19 01:03:43', '2021-07-19 01:03:43', NULL),
(2, 'MbPlRnsJNklF0AgngLJGRnBRtuYpoRD2v6cb6NZO', 'uploads/all/eIlr7AL2lwfbnir4GaqITQuHcekbOXjzxl68CMPQ.jpg', 19, 38154, 'jpg', 'image', '2021-07-19 01:04:25', '2021-07-19 01:04:25', NULL),
(3, 'uploads/all/bb1Yn.jpeg', 'uploads/all/bb1Yn.jpeg', 19, 33804, 'jpeg', 'image', '2021-07-19 01:09:43', '2021-07-19 01:09:43', NULL),
(4, 'uploads/all/GPNbm.jpeg', 'uploads/all/GPNbm.jpeg', 19, 33804, 'jpeg', 'image', '2021-07-19 01:36:29', '2021-07-19 01:36:29', NULL),
(5, 'grapes', 'uploads/all/z31twOWHz8YaVmaqdqMA8T8SEkjHwtdjLVUCMHeq.jpg', 19, 18497, 'jpeg', 'image', '2021-07-19 01:48:52', '2021-07-19 01:48:52', NULL),
(6, 'whole chicken', 'uploads/all/guLfuFRoM6j6qjPCrb82LwVDFFV3zUnICL6dgwwU.jpg', 19, 8330, 'jpg', 'image', '2021-07-19 01:48:53', '2021-07-19 01:48:53', NULL),
(7, 'chicken drumsticks', 'uploads/all/q9RI1fevBjE75qiU8OwvoPPQecsIYzfPWWr9EK2A.jpg', 19, 7511, 'jpg', 'image', '2021-07-19 01:48:54', '2021-07-19 01:48:54', NULL),
(8, 'garlic', 'uploads/all/4zHTo8E0d89vQVG6jPa4LfiUWZjJAn2rL0SxvYZd.jpg', 19, 8280, 'jpeg', 'image', '2021-07-19 01:48:54', '2021-07-19 01:48:54', NULL),
(9, 'bell pepper1', 'uploads/all/luMOFc04CdWwlqAJKia5DCnzNcF201ZZwXQeeops.jpg', 19, 15625, 'jpeg', 'image', '2021-07-19 01:48:54', '2021-07-19 01:48:54', NULL),
(10, 'couli flower', 'uploads/all/eHw1FRW0GZ22b7dWKbB5IpTGaXQr77nZTqxCaTK6.jpg', 19, 20379, 'jpg', 'image', '2021-07-19 01:48:54', '2021-07-19 01:48:54', NULL),
(11, 'ginger', 'uploads/all/bM8xwYt5YHotlUj86cYdQK64GJYW9BKv3PozSdqj.jpg', 19, 22127, 'jpg', 'image', '2021-07-19 01:48:54', '2021-07-19 01:48:54', NULL),
(12, 'grapes1', 'uploads/all/9PCWJztNv2HAx2JSzZJXESKrsrN0Hu5Klk7koBdE.jpg', 19, 16083, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(13, 'chicken gizzard', 'uploads/all/CMl3Q140Vdz2y7rB4Tp7TuybTB9kS9m7rWg7HQLF.jpg', 19, 10349, 'jpg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(14, 'watermelon1', 'uploads/all/zpm6hetlAnP205SEvViUiLZdpfb7SECRT0Z3DsOg.jpg', 19, 20761, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(15, 'irish potatoes', 'uploads/all/HJ5MytCSRTORQUeVcSMp1Efz3X20FVjWQVC4TB33.jpg', 19, 30974, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(16, 'bell pepper', 'uploads/all/YvBRk0upYy7b8GOVH1R60EmGsQOj4IwcqfCGhSL2.jpg', 19, 25362, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(17, 'Onions', 'uploads/all/REz7hRO9ex837aIS3QWfByoXKKvahOOwJv7u9AdU.jpg', 19, 38140, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(18, 'tomatoes', 'uploads/all/aehcKbkfyBX800c3JGCQZBYdBQ4kKj0tJb64vpfU.jpg', 19, 42513, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(19, 'chicken lollipops', 'uploads/all/wqS6rMTWMF95Dm2eb1A45oo1aFj25UKlkLcBycjV.png', 19, 68711, 'png', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(20, 'apples1', 'uploads/all/SQGgHVwfGEsB4upluL9U4AUrawe92rAAL04GQ7yk.jpg', 19, 42117, 'jpeg', 'image', '2021-07-19 01:48:55', '2021-07-19 01:48:55', NULL),
(21, 'quarter chicken', 'uploads/all/1n4BvMLCRwhZ9XibPrv2WxVOYyzDTLk2L5MVenM4.png', 19, 43642, 'png', 'image', '2021-07-19 01:48:56', '2021-07-19 01:48:56', NULL),
(22, 'fresh peas', 'uploads/all/1ZQC5jNkkvycGjBq8QTtq8gxX5Lnov0S1Ph1EvB3.jpg', 19, 67677, 'jpeg', 'image', '2021-07-19 01:48:56', '2021-07-19 01:48:56', NULL),
(23, 'passion fruits', 'uploads/all/ECUtwcC6bnZjido4x0WNmTG540TXDz7LVNbpPOPJ.jpg', 19, 68409, 'jpeg', 'image', '2021-07-19 01:48:56', '2021-07-19 01:48:56', NULL),
(24, 'carrots', 'uploads/all/YBRXZeEhjSRUWOVGMc1Lcw4K46sae066np6fhsjc.jpg', 19, 72694, 'jpeg', 'image', '2021-07-19 01:48:56', '2021-07-19 01:48:56', NULL),
(25, 'oranges', 'uploads/all/Ww0FmVYJ38UAcBxI8WVGXJjYYdecBxGliBLcbatn.jpg', 19, 87371, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(26, 'chicken cubes', 'uploads/all/GgLIata7dygiQoFL8Qr7hylqf7bdp6Z5hSVj3dkD.png', 19, 92624, 'png', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(27, 'chicken wings', 'uploads/all/wbELQlReu3ceHVWJ40JkzLe1TPfT9u3T6FVlgllV.png', 19, 64206, 'png', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(28, 'apples2', 'uploads/all/XfN11RnM0WHOZun5OdCcDrncItUfSvt8VrIma3gh.png', 19, 67914, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(29, 'oranges1', 'uploads/all/TZrTG9lDysv2XR83Ps87qqOSUUi9J08Huoj93YRq.jpg', 19, 180669, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(30, 'fresh beans', 'uploads/all/wL4mVUhfOXrqQooWluQV0DPSslgd0bEVz1Qdg4Va.jpg', 19, 140307, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(31, 'apples', 'uploads/all/BZ3mX8QlKwzj6g4qsYIlMi86p8iau4GRp9BRcYlD.jpg', 19, 133013, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(32, 'watermelon', 'uploads/all/FXrHEpI6MaLY9QXYm3eptIZ6JtJynT1fF3Orj10T.jpg', 19, 148196, 'jpeg', 'image', '2021-07-19 01:48:57', '2021-07-19 01:48:57', NULL),
(33, 'pineapple', 'uploads/all/3e2GZxHuyok5xKPqLYkN4g35bhiT3E1QbNk3pFxe.jpg', 19, 22430, 'jpeg', 'image', '2021-07-19 01:49:56', '2021-07-19 01:49:56', NULL),
(34, 'uploads/all/RbXg6.jpeg', 'uploads/all/RbXg6.jpeg', 19, 33804, 'jpeg', 'image', '2021-07-19 01:57:46', '2021-07-19 01:57:46', NULL),
(35, 'Tecno T351', 'uploads/all/nxMaCkqnePZTjMU26NNauvAqgHb9qN0UJfbDGnEg.jpg', 19, 41738, 'jpg', 'image', '2021-07-19 01:59:53', '2021-07-19 01:59:53', NULL),
(36, 'T313', 'uploads/all/ZsrBMHp8ZLOKjB8AC8Hy9ov9rFNFYN8GLYKabuXK.jpg', 19, 20674, 'jpg', 'image', '2021-07-19 01:59:53', '2021-07-19 01:59:53', NULL),
(37, 'Tecno T201', 'uploads/all/JTqIxSKyiilMo8ACb7u9h5tOAqePAA3toWfobwq3.jpg', 19, 15579, 'jpg', 'image', '2021-07-19 01:59:54', '2021-07-19 01:59:54', NULL),
(38, 'Tecno T101', 'uploads/all/ectVDo4eva6JT7qlY6TgeyREaFrooweBkW4XcHZU.jpg', 19, 15888, 'jpg', 'image', '2021-07-19 01:59:54', '2021-07-19 01:59:54', NULL),
(39, 'Tecno T301 Dual Sim', 'uploads/all/BUDJ94G7p6MWoPPUWQg2PCLGxGtl6QfQ9Cbcuo1X.jpg', 19, 25350, 'jpg', 'image', '2021-07-19 01:59:54', '2021-07-19 01:59:54', NULL),
(40, 'Tecno T372', 'uploads/all/OwYhcmBVtJ7MiuNmGrAs1vkUca8g3XHkvbh7AfaP.jpg', 19, 32593, 'jpg', 'image', '2021-07-19 01:59:54', '2021-07-19 01:59:54', NULL),
(41, 'Tecno T454', 'uploads/all/FpE45LYHF9fgKDO8DKAPm7zFw9qmBYWOcvhaeb5y.jpg', 19, 31975, 'jpg', 'image', '2021-07-19 01:59:55', '2021-07-19 01:59:55', NULL),
(42, 'Tecno T661', 'uploads/all/2pGLnNMIEuGgAyNpWgKd7SehOLPAyc76V5IixdjX.jpg', 19, 15979, 'jpg', 'image', '2021-07-19 01:59:55', '2021-07-19 01:59:55', NULL),
(43, 'Tecno POP4 (BC2c)', 'uploads/all/tvbgDjl8nzOZM910xgNlDTDnwZs3YlYa7IObMih6.jpg', 19, 19018, 'jpg', 'image', '2021-07-19 01:59:55', '2021-07-19 01:59:55', NULL),
(44, 'Tecno T466', 'uploads/all/uBfWQYZJ3nolrBpzxtEK5IIzfGsJTKNuNhMRr97F.jpg', 19, 33297, 'jpg', 'image', '2021-07-19 01:59:55', '2021-07-19 01:59:55', NULL),
(45, 'tecno-spark-go-2020', 'uploads/all/Fiy3N3qBUeVUxjek3uvkJnU8ZzKGIZl0r30dyfTf.jpg', 19, 10209, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(46, 'Tecno T528', 'uploads/all/obfc2xn6br802kbshjY7XMAxjfayAF4WqgGS0TKe.jpg', 19, 38285, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(47, 'Tecno T485', 'uploads/all/Uvj39VPUMyYRT855vZLi2FZ47tqbMlZFRyp7Ae22.jpg', 19, 36661, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(48, 'Tecno B1G 1GB RAM 16GB ROM', 'uploads/all/BuYX2HiOcZtEnNVRGLDNtxBt9GoeCoPFmpurU4uA.jpg', 19, 25616, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(49, 'Tecno POP4 Air (BC1)', 'uploads/all/zfnIGaEJO83TE27mIG3QEZWgjJ6rwCl8wiuTa6Nu.jpg', 19, 45253, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(50, 'Tab 4', 'uploads/all/7BM5N77meAVRpPH8uKfn6eVQzsW4JxjlnMAPzUsb.jpg', 19, 30326, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(51, 'Tecno POP 4 (BC3)', 'uploads/all/cTtIjYNZIfOJ5ieB498oD9L2nDdiNLuDA99zVNBj.jpg', 19, 34395, 'jpg', 'image', '2021-07-19 01:59:56', '2021-07-19 01:59:56', NULL),
(52, 'Tecno POP5 (BD2)', 'uploads/all/3FQKDlbqrREoKd4FFYAcCgYdWAMfGMd25IzTBpvB.jpg', 19, 28571, 'jpg', 'image', '2021-07-19 01:59:57', '2021-07-19 01:59:57', NULL),
(53, 'Tecno POP 5 (BD2p)', 'uploads/all/X35QA7x6F8PkPJx2QkRCT51LXRDmXe1ofoBLcgDv.jpg', 19, 56361, 'jpg', 'image', '2021-07-19 01:59:57', '2021-07-19 01:59:57', NULL),
(54, 'Tecno T402', 'uploads/all/Yc7sYAhBrzPcveG8YqDxgo8EAZ1RQeoAzwhbLyX8.jpg', 19, 30885, 'jpg', 'image', '2021-07-19 01:59:58', '2021-07-19 01:59:58', NULL),
(55, 'Spark 5 pro', 'uploads/all/2fXwfaFOgYK3Ql3KA5JEXRtHaEVnV0zSwFOzOJ2q.png', 19, 303320, 'png', 'image', '2021-07-19 01:59:58', '2021-07-19 01:59:58', NULL),
(56, 'Spark 5 Air', 'uploads/all/9dAQd5vRwRZ1wTFyXcVeOjnuA5aZO5gQ8X2SxLfv.png', 19, 301019, 'png', 'image', '2021-07-19 01:59:58', '2021-07-19 01:59:58', NULL),
(57, 'spark 5 air reddish', 'uploads/all/YXWbPDFi1oevYZ1bhBuooDvVEkQoF2dv09u6fIGu.png', 19, 350470, 'png', 'image', '2021-07-19 01:59:59', '2021-07-19 01:59:59', NULL),
(58, 'tecno-pouvoir4-lc7', 'uploads/all/QfBZml8kUnwgaO4plkmk0eKZdou0aGIwX4staVeq.png', 19, 555012, 'png', 'image', '2021-07-19 02:00:00', '2021-07-19 02:00:00', NULL),
(59, 'Tecno POP3 (BB2)', 'uploads/all/AtWcnUHPEN0xT6dKR45ox8vgquSVC2f2XprY2Ksw.png', 19, 460295, 'png', 'image', '2021-07-19 02:00:05', '2021-07-19 02:00:05', NULL),
(60, 'CG7', 'uploads/all/41DtI6YvheBFatmwA3uHLmGfNYPomXr32puekTNq.png', 19, 610598, 'png', 'image', '2021-07-19 02:00:08', '2021-07-19 02:00:08', NULL),
(61, 'CG6', 'uploads/all/cQQTAZO7zBFAWIQCURIZIf7hApBaRv3kImIwsIP4.png', 19, 610598, 'png', 'image', '2021-07-19 02:00:09', '2021-07-19 02:00:09', NULL),
(62, 'CG8-blue', 'uploads/all/VPPCllFCJTrO1tsVXGguksRlEQ3L2ZJFDaeBxxhD.png', 19, 692045, 'png', 'image', '2021-07-19 02:00:09', '2021-07-19 02:00:09', NULL),
(63, 'Spark 4 pro', 'uploads/all/uwa38qgiCBWY4Sp2SRfiWNksS8gXDG6KPed7en3Y.png', 19, 621311, 'png', 'image', '2021-07-19 02:00:09', '2021-07-19 02:00:09', NULL),
(64, 'CG8', 'uploads/all/fNyry6stsC70BMKBsml4hvMWFZbBIfsby1fKHCgi.png', 19, 659909, 'png', 'image', '2021-07-19 02:00:15', '2021-07-19 02:00:15', NULL),
(65, 'uploads/all/4Npiy.jpeg', 'uploads/all/4Npiy.jpeg', 19, 33804, 'jpeg', 'image', '2021-07-19 02:18:09', '2021-07-19 02:18:09', NULL),
(66, '936436_img-20190919-131715-897_720x739', 'uploads/all/Ev2A1usaDVWWMOxQX6OsjRG2qYmqpiixdcTAcbrw.jpg', 19, 45081, 'jpg', 'image', '2021-07-19 02:21:01', '2021-07-19 02:21:01', NULL),
(67, 'LucidLBMG19-2_1200x1200', 'uploads/all/EKTHos8DbroJ2FLGcjBgrmXsMPJ2H7H3HjDZmoAx.jpg', 19, 42080, 'jpg', 'image', '2021-07-19 02:21:01', '2021-07-19 02:21:01', NULL),
(68, 'HABARI-Table-Salt-500g-2000-300x300', 'uploads/all/wEL2N3CHzzgqT1VOKic63TNL8chZSvugmhwapDqq.jpg', 19, 12822, 'jpg', 'image', '2021-07-19 02:21:02', '2021-07-19 02:21:02', NULL),
(69, 'azam-wheat-flour', 'uploads/all/sk1gbbsgRuwwq3cbwOZyP1GseqeMElztASeQfKyu.jpg', 19, 19896, 'jpg', 'image', '2021-07-19 02:21:02', '2021-07-19 02:21:02', NULL),
(70, '1-2021-03-22T163757.299', 'uploads/all/b5XTEEC6EiVDzuubAPWM3SeZGk9xkUmz7EMIbg2f.jpg', 19, 21395, 'jpg', 'image', '2021-07-19 02:21:02', '2021-07-19 02:21:02', NULL),
(71, '1 (2)', 'uploads/all/ORpYEami1cRBxS75tl0JyqozHYUwNiGcFs254wwe.jpg', 19, 12989, 'jpg', 'image', '2021-07-19 02:21:02', '2021-07-19 02:21:02', NULL),
(72, '1 (6)', 'uploads/all/YF31dZvhO4oI3nQqtGLtRtk9ZDS9fARRNDra9L9g.jpg', 19, 59963, 'jpg', 'image', '2021-07-19 02:21:45', '2021-07-19 02:21:45', NULL),
(73, 'LUCID-16-Floor-Standing-Fan-With-A-Remote-Control-Whit', 'uploads/all/7A7KzxhYIHLGt5qKfAE2r31ISYZUWKYCSmXAs7GO.jpg', 19, 40690, 'jpg', 'image', '2021-07-19 02:21:46', '2021-07-19 02:21:46', NULL),
(74, '5377572_9652e09edaa9f84f8fa6d71d8e755ae1-jpg-720x720q80-jpg_720x720', 'uploads/all/iXn1jujUVCIBzMvE8mJScUY2zdCcLkTZnCBCaZib.jpg', 19, 47005, 'jpg', 'image', '2021-07-19 02:21:49', '2021-07-19 02:21:49', NULL),
(75, 'Raha-Drinking-Chocolate-200G-Jar', 'uploads/all/dbc8EcMkRldOS7Aa3tVqasLoLStMHaRoseWgP4db.jpg', 19, 30017, 'jpg', 'image', '2021-07-19 02:21:50', '2021-07-19 02:21:50', NULL),
(76, '1abaaaa8c9649818ce003f015bf8c5383ba88ba7', 'uploads/all/Smvzq29PvKVJzGwo0TnwrEtcSLE6DRWEVwh5UB5f.jpg', 19, 39881, 'jpg', 'image', '2021-07-19 02:21:51', '2021-07-19 02:21:51', NULL),
(77, 'Sunvita-Cooking-Oil-5Litre-1', 'uploads/all/Mn0Y7WQkKogQvCVa5nBoEhLTDbrPAcoVKz6HdtQi.jpg', 19, 33399, 'jpg', 'image', '2021-07-19 02:21:52', '2021-07-19 02:21:52', NULL),
(78, 'White-star-magic', 'uploads/all/zMzuSD29fyE9ya3GG7QBbiX6nyqwhW9fQSnFlkds.jpg', 19, 32138, 'jpg', 'image', '2021-07-19 02:21:55', '2021-07-19 02:21:55', NULL),
(79, '39616e24db1b44147b38180f1a425ef1ed143a7f', 'uploads/all/pTUmntERhAlhFpCDih8cu03Jrvv6N8pcZUAoCMYN.jpg', 19, 34644, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(80, '3315086_img-20200725-wa0029_900x600', 'uploads/all/snlLrs2oRVm3TyitDItde1XSyQBj6MU2TXNHhbR7.jpg', 19, 41679, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(81, '0cbdd29860fbf4624bc82802e8a3caacafb374b4', 'uploads/all/GNcWpUGjuEIzJSHohfpvaRt6JxYW0DuJRWZoiSUU.jpg', 19, 33415, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(82, 'Lato-Milk-Pack-of-24-Lato-StrawBerry-Flavoured-Milk', 'uploads/all/GrMjUJVARNaQtf8e77P6o6CjhhrT1w70bjCtAy5g.jpg', 19, 26955, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(83, 'Lato-Milk-Pack-of-24-Lato-Vanilla-Flavoured-Milk', 'uploads/all/trD0v8lDahp6sUViAABGN7AeexrkFvgt4n9lFRwR.jpg', 19, 27667, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(84, '1 (5)', 'uploads/all/1wIK4FiOjFfGq1iOibeXSTvVAEGMBwB8vwVHSSQk.jpg', 19, 43289, 'jpg', 'image', '2021-07-19 02:21:57', '2021-07-19 02:21:57', NULL),
(85, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/c6b6CH418ytOkkaZdFJEDcReREj3j5Jcm5ByYMJa.png', 19, 6443, 'png', 'image', '2021-07-19 02:41:07', '2021-07-19 02:41:07', NULL),
(86, '3okSpmRVYAxJ9CX31mD1819DAy9tbNiQy5Hqy0TH', 'uploads/all/9nvURVK6aXHV2rh0xQzk7OwQkDTVBId7ZTedzUQH.png', 19, 47434, 'png', 'image', '2021-07-19 02:41:08', '2021-07-19 02:41:08', NULL),
(87, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/wpxpBgU7hGszR4WwbO7syBxyJgARz1R9OWzf2FPZ.png', 19, 1342, 'png', 'image', '2021-07-19 02:41:08', '2021-07-19 02:41:08', NULL),
(88, 'dfhN5dkp9lee77A4ooXRmFG7n8KaC5bqffBfwh5n', 'uploads/all/XxuWo4FiDxLEy6KU6BByIo9Did6BtlzNZdllklsU.png', 19, 532, 'png', 'image', '2021-07-19 02:41:09', '2021-07-19 02:41:09', NULL),
(89, 'BLWDcxaEfBvtF665yxaBDUOb3cLUMtyKxqyQWBGA', 'uploads/all/a4biCSTK3L8l3GyAf23ubZlHtQp6l3uoqI7guM6C.png', 19, 6805, 'png', 'image', '2021-07-19 02:41:09', '2021-07-19 02:41:09', NULL),
(90, '7oliEtl5OKLFQG0Ay4uvFQ2KNm8Z3suphVtwfABC', 'uploads/all/30gGhEm1BIx29QDQ0OCWZGOMIeLGpSJD1jpfOCAa.jpg', 19, 15532, 'jpg', 'image', '2021-07-19 02:41:09', '2021-07-19 02:41:09', NULL),
(91, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/EgCuyJlJHCbulQ8InfeSpyqP0Yv0pOCiL2Mo7TUA.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 02:41:09', '2021-07-19 02:41:09', NULL),
(92, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/IWat5YRDvkLpdbqSLaZt2nt2MJaizh5bxoMVR0CG.png', 19, 1475, 'png', 'image', '2021-07-19 02:41:10', '2021-07-19 02:41:10', NULL),
(93, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/507OxBgVDIAqIdK2ptN3CZWdqs00etTYKaav5tBY.png', 19, 7250, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(94, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/LXj5vZ9jzqJTzf7J4qZoSaT3fRHKB8SwDSGfU9AK.png', 19, 8237, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(95, 'rnmQqeBvRo0He1Ycwo7YMy2hLtMbD5NL64119jul', 'uploads/all/IIF5PutdaexgIb7EkCdKUQ8HkDAxRS9B6mHyWRLK.jpg', 19, 15591, 'jpg', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(96, 'eyPVwinQutjpf55IbsrhNPcwqX7sd9oBmPNIP4Wt', 'uploads/all/Vbhi4G8IR1cJJiZBea2AnCSXGnvqwARMzITJwS76.png', 19, 867, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(97, 'Bi58uqrSuLTSHKDVz3xGCwQ36BwubzsexJst5Hav', 'uploads/all/jADLuJadxc5qoYGXkLhvo2ZmCsCkZWthCfqxr02o.png', 19, 781, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(98, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/vNlKz399yVYYL1tcnwZyouuN2Dl8GJT667fsBf6H.png', 19, 1112, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(99, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/AxImZqCeXqAuGB3wTkhqwC4lQ4BgABDfHiuG7x0g.png', 19, 37210, 'png', 'image', '2021-07-19 02:41:11', '2021-07-19 02:41:11', NULL),
(100, '6xUoXfHJ4Bn1GxUya8cxGDNLYUvcXjMle6xhyyoA', 'uploads/all/EbeLa41vymbVUQcaTfEYcbI2ArrR1XiXvf6PBnT4.png', 19, 18102, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(101, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/31cNa1NgYjRXeNi7tT1gCS6wsvvq5qP2VSOxvUq3.png', 19, 16613, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(102, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/JTkUMvw6HY5hFeD7qLp7BjlqPFByQz8E48JHIIYT.png', 19, 22003, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(103, 'mJsraKtK9lfSCrSTZm2mdUPjjpxZU1DqNg34SHBR', 'uploads/all/gD6fWhSKVjATTusUdhId0ReYuOI6fE2HO3S2owJA.png', 19, 16613, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(104, 'BRMIkQdouMhKOViU2v9rMG56IWfGu09TwN9sria3', 'uploads/all/1b29bxakieFffoS4dZgY3xjKqPfgcb1N9pUUH09r.png', 19, 26889, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(105, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/AV9n3iDVV03X4S9sTuoZVjWQhGQpjODFdaohEJj1.png', 19, 30058, 'png', 'image', '2021-07-19 02:41:12', '2021-07-19 02:41:12', NULL),
(106, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/XcxuEb7N18lnsr1oLeTZ5zEMMXYMIh4AtdB2ovSM.png', 19, 44275, 'png', 'image', '2021-07-19 02:41:17', '2021-07-19 02:41:17', NULL),
(107, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/mLLKzZw2cdTw7ikIjW67OaceMNSMU91lTxGKXgAF.png', 19, 43786, 'png', 'image', '2021-07-19 02:41:17', '2021-07-19 02:41:17', NULL),
(108, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/mD319cWCKY602OxnFNwGf15hwd0h2dJDIqR8x4M5.png', 19, 47699, 'png', 'image', '2021-07-19 02:41:21', '2021-07-19 02:41:21', NULL),
(109, 'N8jfcaJKXZfDgyVLxHa733ZWNfQ2yetbR4U8okX7', 'uploads/all/nae8tUzENhn4GTO7VUFAP0J4nsKYgJ8WGpmpgLf0.png', 19, 51654, 'png', 'image', '2021-07-19 02:41:23', '2021-07-19 02:41:23', NULL),
(110, 'fFBrTT5JSYWhetTnbV6RjAUnSiD4iIfpEWDQed79', 'uploads/all/6ZUzyvJhqMUTsaVdic5EVbThPv6YQza3gfZeY8gN.png', 19, 54496, 'png', 'image', '2021-07-19 02:41:23', '2021-07-19 02:41:23', NULL),
(111, 'hadRXi3b0K0T2g5pezd9R9Am8UnJ12YrOE1MKxYy', 'uploads/all/aEQgxcLuDdpLlUREYmSg0HXiB3kCBruLFsKXazpF.png', 19, 61940, 'png', 'image', '2021-07-19 02:41:23', '2021-07-19 02:41:23', NULL),
(112, 'At0IiZhSSGQ9Lsk6sFtdIe3ZqMhDc23bCrP1dHWB', 'uploads/all/IlftRW6tAzQRvEDQ1ZNVFXDbdUDX1dBcNvgrgWV2.png', 19, 51654, 'png', 'image', '2021-07-19 02:41:23', '2021-07-19 02:41:23', NULL),
(113, '5ojOJWPHacSb2tuj7HfEJYAGByLdsgJjzzdpnIxl', 'uploads/all/4kQgn13kskQtifRXu7kRgaEcbKOgLJxEkALVz58N.png', 19, 77948, 'png', 'image', '2021-07-19 02:41:24', '2021-07-19 02:41:24', NULL),
(114, 'Mc0O3V9VK0CnklJSJ8jA5I3fU159a6bTLBK7714X', 'uploads/all/XKhlT6F3Cs9zENOni8xu9uH1O84SmOFGFki90koE.png', 19, 6565, 'png', 'image', '2021-07-19 02:41:24', '2021-07-19 02:41:24', NULL),
(115, '9DV2mI1YxNpp2Gu4ZrrdZWKTqr2Bdl7MAVGrhmHc', 'uploads/all/dt91VA1Ah5yrpO8N7dqt9voIaSV7la05T9Aafsu1.png', 19, 6745, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(116, 'NPlXAl3QK1egF5m5TB3QQRTx24x0CybDexqTOWxp', 'uploads/all/OPxLg50B96u53uEBf8iPPzxoMtaIIELfFe2HYpaj.png', 19, 6443, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(117, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/wnbmokFClJ3jmCKPc4F3vWy04W3ftFXCsu1d8hj5.png', 19, 15303, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(118, '7wLi7klvM6ctk0qL96sfVKxdxxXoArNlJtUZK8LX', 'uploads/all/rFPYLoFDfqgt9ZSQH00kqGE2uNK0tjfEacl8H6sk.png', 19, 6745, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(119, 'aY8qgCAiGjCO17YvD1sByIaCPVSbwvmkZerkRtTm', 'uploads/all/yb4K73EZogRTykzkNQYqAE6xAys5CNelNS2y3Hk7.png', 19, 7250, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(120, 'x06f32DsmCcCfuLN8r13S3NMXcXN1s3i9Vp69ZNo', 'uploads/all/RwEMABo6eKdR7VhbC38ttsEw7Z5stYc3cFL24Dpw.png', 19, 1342, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(121, 'WNQSgwOWJr53QLXftpYrBIJqHMkVYyP0ImJZNc4T', 'uploads/all/sdi60R925zSyLe7lJd0w1iBt8SYvSfrwzdVYKeJ5.png', 19, 5872, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(122, 'rxLdULEzVmAm3jnHAkExhXSvrzRDw7L5UdxQUZxM', 'uploads/all/hcyXoNXiArgGOTlopwj98rZOr4zKXUVekQNdrhEq.jpg', 19, 7409, 'jpg', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(123, 'IBadzBFsQSICK4T5BZGs9GIehT8FYwQjyJ4JPS7n', 'uploads/all/jMwzpzopcltoaFQTlqHaigieTILkIlI8kyWmNTQe.png', 19, 93667, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(124, 'RNI31mk2faKMLaqQOIukoHW2xQx24qGe44pbn8He', 'uploads/all/JhbJLNcVloqPnS7Z7zcrgw7iBrT6wXU9Z79iOckL.png', 19, 30058, 'png', 'image', '2021-07-19 02:41:25', '2021-07-19 02:41:25', NULL),
(125, 'uXtS06w0VPK3DVVGkWwxoXU1wDZGlnRyV5n9YcZc', 'uploads/all/bLdLZrc3wUNnMK8MIsSHmHEvil7oW3cyikCcNuAh.png', 19, 21308, 'png', 'image', '2021-07-19 02:41:26', '2021-07-19 02:41:26', NULL),
(126, 'wZHUS0cgyKgvLWwV6XGP9wQBNzBBO5MBuJ7DOR3U', 'uploads/all/LdM8iZYBnJEsc5VI78UEogk7p7uRy2h5p12zQAgm.png', 19, 18102, 'png', 'image', '2021-07-19 02:41:27', '2021-07-19 02:41:27', NULL),
(127, 'oMAaPcFjCI6yjv7AOvuV4wnHF6zMc9BuoBZy2y5Z', 'uploads/all/0nqjniA1aG4OY4TGnV9ubQLKRHkcguPeoeMZmxQE.png', 19, 44275, 'png', 'image', '2021-07-19 02:41:27', '2021-07-19 02:41:27', NULL),
(128, 'ghFf9LHUOeoFoIMmrtKOzwpuHlHa4wQjKC1BkHRG', 'uploads/all/qaqOdt0MpMVH0VEwev1o4ll07N8TXREZtKjuK9rW.png', 19, 49803, 'png', 'image', '2021-07-19 02:41:33', '2021-07-19 02:41:33', NULL),
(129, 'mfll1VzoHumUxjSV1bEqTmY7Kwodi9hLfwqgpIG7', 'uploads/all/0u1FwUfNyZ7CUtnf4DSTNjkjB0AJQwankBwkwfRD.png', 19, 37210, 'png', 'image', '2021-07-19 02:41:38', '2021-07-19 02:41:38', NULL),
(130, 'gna5BBqmjQ8gmUmcxWoOhht4YpTLoDojtrl8nE4B', 'uploads/all/0UjAIIzv4FKOX0dOBUrutpLlDDkbG8nprGL01dw5.png', 19, 52309, 'png', 'image', '2021-07-19 02:41:40', '2021-07-19 02:41:40', NULL),
(131, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/oUylLFtHRpTJ8D0dEbAPJLKKzg4fP6Z3f82Do4Dz.png', 19, 39320, 'png', 'image', '2021-07-19 02:41:40', '2021-07-19 02:41:40', NULL),
(132, 'x9AgkO2XaHSnHplx2U1H0EfaKxwlrDDc9kesYs1W', 'uploads/all/njpsTe8QNwWZpvmaiyQODIV32sFO3nDuvXrKUoJg.png', 19, 49803, 'png', 'image', '2021-07-19 02:41:43', '2021-07-19 02:41:43', NULL),
(133, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/5oTsOnJYpBXRpC94qzeARXtMpFel9wLWwflKDD4y.png', 19, 236, 'png', 'image', '2021-07-19 02:41:43', '2021-07-19 02:41:43', NULL),
(134, 'XkNayR7dkJdljiKsaxGwgkQH8AsaqROabisSdOzN', 'uploads/all/ghDZT5jgl0pTzKGlEqpxwBjA0AlF06jQytg46Bvt.png', 19, 57125, 'png', 'image', '2021-07-19 02:41:43', '2021-07-19 02:41:43', NULL),
(135, 'eH3AbI3pZg737aS1lw7F9Bm3znvYA6qoZg4dvR6G', 'uploads/all/COvBrttMKbUSr6tCHu3AFFlkbEYomDGGURtLUM6g.jpg', 19, 7431, 'jpg', 'image', '2021-07-19 02:41:43', '2021-07-19 02:41:43', NULL),
(136, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/5hrsK5VeI0LJX3qk980PNKGFzffG55uRDeC890Zx.png', 19, 15303, 'png', 'image', '2021-07-19 02:41:44', '2021-07-19 02:41:44', NULL),
(137, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/II5f1ifdrkdzFXrVpdVIaPcwdLMOH2Ded7Cc4yed.png', 19, 5872, 'png', 'image', '2021-07-19 02:41:44', '2021-07-19 02:41:44', NULL),
(138, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/QQ9py8yTsRvvq8JcfOqNm2coVfuPVqXywXtbXVlw.png', 19, 236, 'png', 'image', '2021-07-19 02:41:45', '2021-07-19 02:41:45', NULL),
(139, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/auW1JdsbJjYDbtnaPeBZkrFBBDSb3mH9FQJWfC38.png', 19, 7250, 'png', 'image', '2021-07-19 02:41:45', '2021-07-19 02:41:45', NULL),
(140, 't3wvVFOWpjsoaQdxuFyYKguRcc4GyVjaKWRIosbx', 'uploads/all/kMWKe1Qkr55HY92A6dY4RrkRbuOf4K1MMnKxbLqS.png', 19, 988, 'png', 'image', '2021-07-19 02:41:45', '2021-07-19 02:41:45', NULL),
(141, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/PNPQKcrR06hXWkz6OHMraQyLX6UIeoCfTOigkOIE.png', 19, 7250, 'png', 'image', '2021-07-19 02:41:45', '2021-07-19 02:41:45', NULL),
(142, 'UTngHzOAEno6ErwJo81u3nAM3K3uCbfG2XsUGB8V', 'uploads/all/gNZdiAGO2FXhnedgwxCYtuuZZg5dun4hdcYz5K7r.png', 19, 988, 'png', 'image', '2021-07-19 02:41:46', '2021-07-19 02:41:46', NULL),
(143, 'YX1c9vGklrUbdif6OrptGZ5Iio5rRiK2zsH5NNZ9', 'uploads/all/nILummSRAFTcRfveDWKZbdhqowfF4B8wzbkeVKGi.png', 19, 54496, 'png', 'image', '2021-07-19 02:41:47', '2021-07-19 02:41:47', NULL),
(144, 'PDioOOJYq7vEbw55SnDVpad6WJYmHlBzVmFP4G04', 'uploads/all/UxH6iLwWUhrZMuGpXVG8MpYxe0CCmeWnR0jfNiaF.png', 19, 77948, 'png', 'image', '2021-07-19 02:41:47', '2021-07-19 02:41:47', NULL),
(145, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/l6GqcoVElDapPAdwRbJcHvX7yN0yfnoSkfO8tKlN.png', 19, 26508, 'png', 'image', '2021-07-19 02:41:47', '2021-07-19 02:41:47', NULL),
(146, 'TwkRcMAyc9Xe8fQGXPzwCHDsJU8NWpgaHiPEh3lf', 'uploads/all/znaUGL2hQpU4kYq0GTIeibPUNsdZ9GusFEvgj5js.png', 19, 26889, 'png', 'image', '2021-07-19 02:41:48', '2021-07-19 02:41:48', NULL),
(147, 'yeaajgyQxzBuIs8bkkKXFdlEJkMyEK3SblVbkqcM', 'uploads/all/PAFUtYegu7SFJ6mCfHffgoosNpIn5Ku2dwuZtxj5.png', 19, 26508, 'png', 'image', '2021-07-19 02:41:48', '2021-07-19 02:41:48', NULL),
(148, 'aFxF60B8UAHOnkV2bw69Wl78yyOAm4T9xXcTkQhX', 'uploads/all/eOcxqipPPyQVA5GRYUm29RiOgws2IN0NccpOSanI.png', 19, 93667, 'png', 'image', '2021-07-19 02:41:58', '2021-07-19 02:41:58', NULL),
(149, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/FCXFPrsJTRj9kDmAMvPy2BJM66aV0mDznSZBIDHh.png', 19, 1112, 'png', 'image', '2021-07-19 02:41:58', '2021-07-19 02:41:58', NULL),
(150, 'DpzHOOANRPNIuShUQgazTQKkjioUGp7RPqGRdFCF', 'uploads/all/ckpkltctqbS1UK7pCClaVwdHphd39ibx3zcyuCWv.png', 19, 20592, 'png', 'image', '2021-07-19 02:41:58', '2021-07-19 02:41:58', NULL),
(151, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/9LnAjkTbkuDqy1tP3B7flTG0BXbEJoGOTNyuXGPx.png', 19, 1106, 'png', 'image', '2021-07-19 02:41:58', '2021-07-19 02:41:58', NULL),
(152, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/tA0g3rvxfr0SZJDPPZKtlqiAD1RugNGLUBc0jJ06.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 02:41:58', '2021-07-19 02:41:58', NULL),
(153, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/fRXFFxBAyC2SYOU9YtmBoAWJdY19JKxwcM4qZGY3.png', 19, 47434, 'png', 'image', '2021-07-19 02:42:01', '2021-07-19 02:42:01', NULL),
(154, 'WW0JJWXk76RINcDCRRKD4gvVnI95k8kwlXFGfo2e', 'uploads/all/uqdCH9cA0KwwSzRBpn1kfrJWbQgKzWaXMQlUZuz3.png', 19, 1205, 'png', 'image', '2021-07-19 02:42:01', '2021-07-19 02:42:01', NULL),
(155, 'Zz9UMWE1dpsoK4gJiXhhKPzqHzUPiCaN6rC8thdi', 'uploads/all/USlLfQ8dAPU5NdivhCD0Ppc0wO9kXKJSc1BGEBjA.png', 19, 769, 'png', 'image', '2021-07-19 02:42:01', '2021-07-19 02:42:01', NULL),
(156, 'WWLDrpPpUYTMBY9fAdD93lGTHR4ona8Q6J60k4uR', 'uploads/all/6z3WDd5St9ppcdyaWsTRFon2sXPblhsRSCdJjq9q.png', 19, 781, 'png', 'image', '2021-07-19 02:42:01', '2021-07-19 02:42:01', NULL),
(157, 'WsGFtx0cHYHtBGrfPnT5Dcn8udsahgtSxBD9YekR', 'uploads/all/ygXSPQBN3ZlLUueKqP8u6qPnJKUk5tGNxxdJB8eg.png', 19, 532, 'png', 'image', '2021-07-19 02:42:04', '2021-07-19 02:42:04', NULL),
(158, 'PRoy4hXnU8cfZ9vvlYJ8j2x60ivZaIO6CeP1vger', 'uploads/all/8OUSOIikWkdS98tRnBUMPE3vzu4XdEHc9vncOxL0.png', 19, 77668, 'png', 'image', '2021-07-19 02:42:06', '2021-07-19 02:42:06', NULL),
(159, 'REpMBdfXkkNEmnmnq96dnySJwXnVbEkUndavuQgX', 'uploads/all/o6AIHemyoozrZyHHTtl80AOADRV9uQeUo7vR7XNp.png', 19, 120034, 'png', 'image', '2021-07-19 02:42:11', '2021-07-19 02:42:11', NULL),
(160, 'V7zSDDJhkH46c2CyFv19zXlPmBNAEbcq1fc3PuPc', 'uploads/all/VFCVfBEpJ0AzRl59tCZIzht7R9AjlJsv0HAGalfC.png', 19, 120034, 'png', 'image', '2021-07-19 02:42:12', '2021-07-19 02:42:12', NULL),
(161, 'itel A14 Plus', 'uploads/all/Odq6ZyCBRypoR9M1y5SMKZlHBYUzxFPhwwHocRQT.jpg', 19, 9493, 'jpg', 'image', '2021-07-19 02:46:59', '2021-07-19 02:46:59', NULL),
(162, 'itel A14', 'uploads/all/GuRErZLVdbayAwfteVINM3VAdJp8VpcGJC6RQyu2.jpg', 19, 8863, 'jpg', 'image', '2021-07-19 02:47:00', '2021-07-19 02:47:00', NULL),
(163, 'Itel A35 16GB ROM 1GB RAM', 'uploads/all/Dnk3ZZVakwZ4VwnCqQsdencgYBjuVhbUmL8deeiL.jpg', 19, 6354, 'jpg', 'image', '2021-07-19 02:47:00', '2021-07-19 02:47:00', NULL),
(164, 'itel A56 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery', 'uploads/all/To38tsTAEEZnLTWSEhJE0GQBom6HmJQ387YyqFht.jpg', 19, 14728, 'jpg', 'image', '2021-07-19 02:47:00', '2021-07-19 02:47:00', NULL),
(165, 'itel A16', 'uploads/all/29hfKFtjsF93V2N8eSyXDvjEIx2zq240o2InFvEt.jpg', 19, 7611, 'jpg', 'image', '2021-07-19 02:47:00', '2021-07-19 02:47:00', NULL),
(166, 'Itel A37 – 5.71inches 16GB 1GB RAM', 'uploads/all/yDXSGLoesD1WiBdwWE7H09wen8FySb7AOWFlknDQ.jpg', 19, 6514, 'jpg', 'image', '2021-07-19 02:47:00', '2021-07-19 02:47:00', NULL),
(167, 'itel it2160', 'uploads/all/UdatUf3AnCXxysTibQDZyhP8b9ouUCIWpicI885P.jpg', 19, 10288, 'jpg', 'image', '2021-07-19 02:47:01', '2021-07-19 02:47:01', NULL),
(168, 'itel it2163', 'uploads/all/OShRqrlCXh9pnKdAuQoBpqYfl6k0LN2gJITD7LHr.jpg', 19, 8852, 'jpg', 'image', '2021-07-19 02:47:01', '2021-07-19 02:47:01', NULL),
(169, 'itel A56 Pro 2 GB of RAM and 32 GB of storage', 'uploads/all/4Ht52GFWhcHuSQPgg64hVUMwQGcomQXSYx3lhtgA.jpg', 19, 15524, 'jpg', 'image', '2021-07-19 02:47:01', '2021-07-19 02:47:01', NULL),
(170, 'Itel P15 5.0 HD Screen 16GB ROM + 1GB RAM Android 9', 'uploads/all/pprMkpOiehaOv4y5fGRfYyLFojGMxWV2eTeKpPnp.jpg', 19, 10269, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(171, 'itel S16 Pro (4G) 2 GB RAM, 32 GB inbuilt 4000 mAh Battery', 'uploads/all/O4IfdOq9whSljRNc60QYF1JlBXOY7NlAcRHAwkJH.jpg', 19, 14712, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(172, 'itel it5606', 'uploads/all/PvrKoOmbrWgH8AS9OQWURQASxvyx3kk64vc9WsRb.jpg', 19, 7730, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(173, 'itel it5626', 'uploads/all/HEb7ynyzsl6ViikbhBEQtcS16xZWSQ9dxDZrEdu7.jpg', 19, 8162, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(174, 'itel S16 Pro Memory. 32GB ROM + 2GB RAM (Up to 32GB)', 'uploads/all/T80dhz9D0MTJFpK6yUKncPYu5Rt8s5rpWfyS6UpK.jpg', 19, 10183, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(175, 'itel it5360', 'uploads/all/F8jmDxC6oYbCHggv352cF7OhdtKG7jbjU2LdYVeh.jpg', 19, 6278, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(176, 'Prime Tab 1 Memory 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', 'uploads/all/cvujuqBZOba7SWr3bss60T8Joqm0JW0niuYxY2mO.jpg', 19, 8602, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(177, 'itel P37 Pro (4G)', 'uploads/all/G18bETGY741f5dwjb1ZGvN4qO8bOEgUqsVT3FL6L.jpg', 19, 12732, 'jpg', 'image', '2021-07-19 02:47:02', '2021-07-19 02:47:02', NULL),
(178, 'itel it5260', 'uploads/all/WTQZKIIrolzwFatu8GmuLqsDBp2YRcfcCE7hz8Ge.jpg', 19, 8905, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(179, 'itel it6350', 'uploads/all/UxyKrhSOwrrdZYEltLTEr2mQikwKtstRVT3sRwjM.jpg', 19, 6999, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(180, 'itel P36 ROM 16GB RAM 1GB REAR CAMERA 8MP Dual', 'uploads/all/OWKkDhLi1JN561XDnts8hdsDAJeYZgiJUgdtui2V.jpg', 19, 11179, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(181, 'itel it2173', 'uploads/all/gcgDFxODCyeTiwvuWQATYisPvPVOYFohYWjQNv3j.jpg', 19, 10355, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(182, 'itel it5081', 'uploads/all/zrMjISU1oOCgcqUr1zMZQJVp2hkjFebNqYkJ8Bs4.jpg', 19, 8137, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(183, 'itel it5615m', 'uploads/all/Bbo9btAyy0VlTOM0Mg8h4RkFokeUY4POsNTsy7zp.jpg', 19, 6180, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(184, 'itel P37', 'uploads/all/6rTwIdj45PRGmhjiEcNTtkhWt0lOFcBQpEeeGuYJ.jpg', 19, 8495, 'jpg', 'image', '2021-07-19 02:47:03', '2021-07-19 02:47:03', NULL),
(185, 'note8', 'uploads/all/lE2JYvYzf7tasvTjTZuaboaJffYFCQtuExwBMCQh.jpg', 19, 31777, 'jpg', 'image', '2021-07-19 03:18:40', '2021-07-19 03:18:40', NULL),
(186, 'zero8', 'uploads/all/1WY0B9KYSgxQ2tzLT8c5NmxdURB39QyJjkNRkeKw.jpg', 19, 23282, 'jpg', 'image', '2021-07-19 03:18:40', '2021-07-19 03:18:40', NULL),
(187, 'hot10', 'uploads/all/KOHPSyCPshP1hvP3vmMvYX2r2vMRc2qNPuyrOLD4.jpg', 19, 26735, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(188, 'note8i', 'uploads/all/vXCMfnFGCmCAhRG67jb5FEVlW5tu32j19ceLFGON.jpg', 19, 31131, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(189, 'smart5-dual', 'uploads/all/F53zaZvwymMK6jq3LtxwMu7LYgegnA1N51dPNQfp.jpg', 19, 30669, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(190, 'hot10lite', 'uploads/all/UCeD9T76yS7JclfFikUmpAFwZEsKi54bg2fQwsfl.jpg', 19, 24716, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(191, 'note7', 'uploads/all/spUqDSyBNmjSu6BN15FqTVM4p136uuHV3Bkfql9V.jpg', 19, 25346, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(192, 'hot10play', 'uploads/all/VQSyzu0sWdgPjFUtxs4hgYRimRK7ljNbdJHxUEFU.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(193, 'hot10play (1)', 'uploads/all/FUotTpI6cyYcVHVTguRM8yJi4apwGVY1FKg3dsgj.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(194, 'note7lite', 'uploads/all/rKnrcK2C40F151laiKtud9qziXnnFn7rAp86nhz5.jpg', 19, 27813, 'jpg', 'image', '2021-07-19 03:18:41', '2021-07-19 03:18:41', NULL),
(195, 'sapk 7', 'uploads/all/rH2ZbA4oumrMq08nsF06I0R7n53jCodiLj1t8fMD.jpg', 19, 64912, 'jpg', 'image', '2021-07-19 04:14:58', '2021-07-19 04:14:58', NULL),
(196, 'spk 7', 'uploads/all/i8dgY6eqctbpUqjSOipPSiSyPRhTEG7ySbNvV0PY.jpg', 19, 32356, 'jpg', 'image', '2021-07-19 04:14:58', '2021-07-19 04:14:58', NULL),
(197, 'camon 17', 'uploads/all/7zQk0g5C4ibyRjcpfcgwIBgIltJMEU5KY2tfIpDm.jpg', 19, 36139, 'jpg', 'image', '2021-07-19 04:18:41', '2021-07-19 04:18:41', NULL),
(198, 'camon 17pro', 'uploads/all/fXBxaUuMhTOWr9gwg8gusP4eI5UWnMBzdKjfawbw.jpg', 19, 47922, 'jpg', 'image', '2021-07-19 04:22:44', '2021-07-19 04:22:44', NULL),
(199, 'kakebe theme logo', 'uploads/all/6b21rSgpkYhWXGtKST8oQ5gt0MUhaLQcpRbaTS1y.png', 19, 26968, 'png', 'image', '2021-07-19 04:45:19', '2021-07-19 04:45:19', NULL),
(200, 'camon 17p', 'uploads/all/V9GfJ2smax104eTu28eGAeDlcg2hsxNqSK0e6TuB.jpg', 19, 11716, 'jpg', 'image', '2021-07-19 09:00:08', '2021-07-19 09:00:08', NULL),
(201, 'spark', 'uploads/all/ptFlhLJhyeAtKD57DgWaWMkPtqNaYmlj5HBIgedt.jpg', 19, 23787, 'jpg', 'image', '2021-07-19 09:05:41', '2021-07-19 09:05:41', NULL),
(202, '3okSpmRVYAxJ9CX31mD1819DAy9tbNiQy5Hqy0TH', 'uploads/all/gPJedeyeq1ITtgnJuxWz1kVCIcV5bum7MP1YaPT8.png', 19, 47434, 'png', 'image', '2021-07-19 08:55:35', '2021-07-19 08:55:35', NULL),
(203, '6xUoXfHJ4Bn1GxUya8cxGDNLYUvcXjMle6xhyyoA', 'uploads/all/ZMaNDTMhUzm9Wk95KK1uaSZlyz7ZX5aVwB2muKcz.png', 19, 18102, 'png', 'image', '2021-07-19 08:55:36', '2021-07-19 08:55:36', NULL),
(204, '7oliEtl5OKLFQG0Ay4uvFQ2KNm8Z3suphVtwfABC', 'uploads/all/6TlkUE4B4gvw5tkT9NZ2h1Wh1JO5N8IG5FgDQKpQ.jpg', 19, 15532, 'jpg', 'image', '2021-07-19 08:55:37', '2021-07-19 08:55:37', NULL),
(205, '7wLi7klvM6ctk0qL96sfVKxdxxXoArNlJtUZK8LX', 'uploads/all/O5FlF3xldnCJRLK0pMroixeo3vpVMMIt2AKUgEv1.png', 19, 6745, 'png', 'image', '2021-07-19 08:55:37', '2021-07-19 08:55:37', NULL),
(206, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/4u1vUd02bECoysn3Rkjob5lIwiAqqLTyoN0eOg50.png', 19, 236, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(207, '9DV2mI1YxNpp2Gu4ZrrdZWKTqr2Bdl7MAVGrhmHc', 'uploads/all/NYymcQuk5VJZYkPByuMwm8X7pXiBGfr8LK9BslJI.png', 19, 6745, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(208, 'Bi58uqrSuLTSHKDVz3xGCwQ36BwubzsexJst5Hav', 'uploads/all/1f0Vm0NxOqdKMcAf8OpVGX4ECewBg6pXdqy7eo12.png', 19, 781, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(209, 'aY8qgCAiGjCO17YvD1sByIaCPVSbwvmkZerkRtTm', 'uploads/all/1sDwElOWtmDdKdrQ3lbi7jqM5eO408Xm1lMe77rw.png', 19, 7250, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(210, 'BLWDcxaEfBvtF665yxaBDUOb3cLUMtyKxqyQWBGA', 'uploads/all/URuKNR7iBMHy8hf5UhZMnGs6n9VmFoZaGQMsKif2.png', 19, 6805, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(211, 'dfhN5dkp9lee77A4ooXRmFG7n8KaC5bqffBfwh5n', 'uploads/all/L0d0HXpQlUTnExUNkT0xYtOkhTUcH1hhhdptEYSB.png', 19, 532, 'png', 'image', '2021-07-19 08:55:38', '2021-07-19 08:55:38', NULL),
(212, 'eyPVwinQutjpf55IbsrhNPcwqX7sd9oBmPNIP4Wt', 'uploads/all/eVE5JRXBCCBUPwuqiI24k6HN3H0x0pfsBlz7uOm3.png', 19, 867, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(213, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/y24Ig6ykXXiFU0uOi8C6vZl7gHt8I2kLwPLX01Ui.png', 19, 15303, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(214, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/jyti8xlQVzdYMLf3Ik9peuvzdAWW1OpCHEldTojE.png', 19, 1112, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(215, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/6mbEjb5k0BlJ6LMnqp2R6i3ovTGxw6KM7V43Zw2Y.png', 19, 7250, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(216, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/lNPiVS3x0pUqNg0NSpCttHNxeadza3sSRDAnUhRg.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(217, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/aTn7D6yCj38zLFeQnJAiTT1ERIO1FZhPbfdKSejE.png', 19, 15303, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(218, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/jBCZj5x8AZz40CL4Os7RAWUtwtDIwueJIThcumTn.png', 19, 1106, 'png', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(219, 'eH3AbI3pZg737aS1lw7F9Bm3znvYA6qoZg4dvR6G', 'uploads/all/LgrI5VqWlt6bLfjjKEwBGX1VajFkh3ORJ6ozpU3v.jpg', 19, 7431, 'jpg', 'image', '2021-07-19 08:55:39', '2021-07-19 08:55:39', NULL),
(220, 'BRMIkQdouMhKOViU2v9rMG56IWfGu09TwN9sria3', 'uploads/all/p1nirFM0XGLB2F1T7wctUV12Xco2ioZAEjp6Qqb4.png', 19, 26889, 'png', 'image', '2021-07-19 08:55:52', '2021-07-19 08:55:52', NULL),
(221, '5ojOJWPHacSb2tuj7HfEJYAGByLdsgJjzzdpnIxl', 'uploads/all/oAECgkZLvJoFlRHvngY2jGo1o0hKQsSsdIwabZ5J.png', 19, 77948, 'png', 'image', '2021-07-19 08:55:53', '2021-07-19 08:55:53', NULL),
(222, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/VSaO1pYWx6pEY9uU8f5Y9zb14seNYxuk4pIUs3iN.png', 19, 26508, 'png', 'image', '2021-07-19 08:55:53', '2021-07-19 08:55:53', NULL),
(223, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/RDRRVXb7frgJxMJ1ItlgjmjE4CuFGEbhKnjkb8JE.png', 19, 30058, 'png', 'image', '2021-07-19 08:55:54', '2021-07-19 08:55:54', NULL),
(224, 'DpzHOOANRPNIuShUQgazTQKkjioUGp7RPqGRdFCF', 'uploads/all/J4PHm46QYdS0XsX8q4Nr9xG9l218nKjyb4C9dxL2.png', 19, 20592, 'png', 'image', '2021-07-19 08:55:55', '2021-07-19 08:55:55', NULL),
(225, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/ksQ1e36CuRJcN7P08vLgKntNaYgeQrBfEdz5yj21.png', 19, 22003, 'png', 'image', '2021-07-19 08:55:58', '2021-07-19 08:55:58', NULL),
(226, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/7gyYfvSe0Pkx8TpPmmFsbxNmEfozg5OcS0ecl5uC.png', 19, 43786, 'png', 'image', '2021-07-19 08:56:10', '2021-07-19 08:56:10', NULL),
(227, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/E0GAgE8nrCHNWYWNWjtCrBLX4YBTUVE3xfb9FL7o.png', 19, 37210, 'png', 'image', '2021-07-19 08:56:11', '2021-07-19 08:56:11', NULL),
(228, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/lEwsnyWPcXmdvhKb4l7C4Ti1vKUJLQH7xR9DoUcJ.png', 19, 44275, 'png', 'image', '2021-07-19 08:56:13', '2021-07-19 08:56:13', NULL),
(229, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/RhKsDt3ElAnPH5bB5AQd3unYTbhRXaPGGfa15ATp.png', 19, 43786, 'png', 'image', '2021-07-19 08:56:50', '2021-07-19 08:56:50', NULL),
(230, 'UTngHzOAEno6ErwJo81u3nAM3K3uCbfG2XsUGB8V', 'uploads/all/fLJ6uEzCPRjtxW3NIPEOQE4Fwza5nFjJ4tdU5xb4.png', 19, 988, 'png', 'image', '2021-07-19 08:56:51', '2021-07-19 08:56:51', NULL),
(231, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/RslMEbmOOlkb2KQUXqsxplyAYESNCJj3CWQzwVLu.png', 19, 44275, 'png', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(232, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/1cPlJVrzX2bNNNj1dMdUa73zj13NXpI4rMTH3bLw.png', 19, 7250, 'png', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(233, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/RbK4VMJBVChnOIAM4JOlxY1wGxNhTUcuJwJHNrbG.png', 19, 1342, 'png', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(234, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/7erY4TDVI6224sLHz9FKX5maq2MQ6GCztikoZrYn.png', 19, 7250, 'png', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(235, 'rnmQqeBvRo0He1Ycwo7YMy2hLtMbD5NL64119jul', 'uploads/all/UihcpYdjIBkUQHmDpDlXoQ4bRDBgw6ma99QbIP9h.jpg', 19, 15591, 'jpg', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(236, 'Mc0O3V9VK0CnklJSJ8jA5I3fU159a6bTLBK7714X', 'uploads/all/FhVNa1KerpmB6Z1MsL4R3kACQ18HSCbg9igNkbJF.png', 19, 6565, 'png', 'image', '2021-07-19 08:57:03', '2021-07-19 08:57:03', NULL),
(237, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/w5TFUUvdQDU5eLmYaNguynD2haXGceL7DOSZrLEx.png', 19, 8237, 'png', 'image', '2021-07-19 08:57:04', '2021-07-19 08:57:04', NULL),
(238, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/WCme1AEM2s3jE7VRIFNd7yrUEmkV0jH5lfGT4NuJ.png', 19, 5872, 'png', 'image', '2021-07-19 08:57:04', '2021-07-19 08:57:04', NULL),
(239, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/SyT82bscl0LxqvODXk1QoZXFE8klviuxvmSGFfHA.png', 19, 26508, 'png', 'image', '2021-07-19 08:57:04', '2021-07-19 08:57:04', NULL),
(240, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/EPAtxR6o0r0Tpqi0BLCf57CwT4qxVfWBFFp9Vsmh.png', 19, 6443, 'png', 'image', '2021-07-19 08:57:04', '2021-07-19 08:57:04', NULL),
(241, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/By80gwTh0fyVlUdeVj293oIooTZfrUnvIYMRQ7ey.png', 19, 1112, 'png', 'image', '2021-07-19 08:57:05', '2021-07-19 08:57:05', NULL),
(242, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/ynDbxWtaCUjEDvkGV29oe4SKKldciYr0c7TQ9oRG.png', 19, 22003, 'png', 'image', '2021-07-19 08:57:05', '2021-07-19 08:57:05', NULL),
(243, 'TwkRcMAyc9Xe8fQGXPzwCHDsJU8NWpgaHiPEh3lf', 'uploads/all/i4eWBI7ImzY5f3fhvMaGnFaymuvqpNmuRXSYV85d.png', 19, 26889, 'png', 'image', '2021-07-19 08:57:05', '2021-07-19 08:57:05', NULL),
(244, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/4L552eWZQ3OrSJhUFVCn5AiHzegP64Fabs79ZI52.png', 19, 16613, 'png', 'image', '2021-07-19 08:57:06', '2021-07-19 08:57:06', NULL),
(245, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/0RQSVlF5nhjoB5l67rs9Me8Ps9hSHZgDhfNptBEv.png', 19, 30058, 'png', 'image', '2021-07-19 08:57:06', '2021-07-19 08:57:06', NULL),
(246, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/1RvoTaEYvblRGOPrkk4qUXCaxaSi2bfSzXOXK3Ox.png', 19, 1475, 'png', 'image', '2021-07-19 08:57:07', '2021-07-19 08:57:07', NULL),
(247, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/6qQnniWuEy331hdi8ildIjgIgs1uLf7hEJUrIag5.png', 19, 236, 'png', 'image', '2021-07-19 08:57:07', '2021-07-19 08:57:07', NULL),
(248, 'uXtS06w0VPK3DVVGkWwxoXU1wDZGlnRyV5n9YcZc', 'uploads/all/IpYgB4qKrr88fqB3l1IhiXbx8pr1haZIBEPSd0oK.png', 19, 21308, 'png', 'image', '2021-07-19 08:57:08', '2021-07-19 08:57:08', NULL),
(249, 'yeaajgyQxzBuIs8bkkKXFdlEJkMyEK3SblVbkqcM', 'uploads/all/j7hCnMBf7DHP67Ukx5cecOYVFXVT9DZfB4biQgo9.png', 19, 26508, 'png', 'image', '2021-07-19 08:57:13', '2021-07-19 08:57:13', NULL),
(250, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/tbhArRdAKkWcypUzmRdGyxWykmyMR4G7KLxSTjc8.png', 19, 47434, 'png', 'image', '2021-07-19 08:57:21', '2021-07-19 08:57:21', NULL),
(251, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/TW6EehpqTExAv4LirONptxOC7vfeiLNR5cXHrRAl.png', 19, 37210, 'png', 'image', '2021-07-19 08:57:23', '2021-07-19 08:57:23', NULL),
(252, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/F0bdFm7geDcE91vQCeaMZmbRWocVQndamvWuT8SM.png', 19, 39320, 'png', 'image', '2021-07-19 08:57:23', '2021-07-19 08:57:23', NULL),
(253, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/9HDK8OP1JQCNEmS1aWg1g5eXaWSZY6VhkiOyHv87.png', 19, 47699, 'png', 'image', '2021-07-19 08:57:23', '2021-07-19 08:57:23', NULL),
(254, 'XkNayR7dkJdljiKsaxGwgkQH8AsaqROabisSdOzN', 'uploads/all/XyDtsRy37NJPeqN3hw3EEWMhSdAhohDwyvomY6va.png', 19, 57125, 'png', 'image', '2021-07-19 08:57:24', '2021-07-19 08:57:24', NULL),
(255, 'At0IiZhSSGQ9Lsk6sFtdIe3ZqMhDc23bCrP1dHWB', 'uploads/all/VyGhMMCRNfbrYcsmsoEUdLDHwjQqxNqtYHEfE1iA.png', 19, 51654, 'png', 'image', '2021-07-19 08:57:24', '2021-07-19 08:57:24', NULL),
(256, 'hadRXi3b0K0T2g5pezd9R9Am8UnJ12YrOE1MKxYy', 'uploads/all/KTVi6iwVtpwze9RRUFnBkckW09L0WKlfKbvVOcDE.png', 19, 61940, 'png', 'image', '2021-07-19 08:57:24', '2021-07-19 08:57:24', NULL),
(257, 'N8jfcaJKXZfDgyVLxHa733ZWNfQ2yetbR4U8okX7', 'uploads/all/e17IOE4F3c7MuSikrMTFKTnhkZvZ6ID62DpwrRFr.png', 19, 51654, 'png', 'image', '2021-07-19 08:57:24', '2021-07-19 08:57:24', NULL),
(258, 'fFBrTT5JSYWhetTnbV6RjAUnSiD4iIfpEWDQed79', 'uploads/all/Ma3EYsRckKsN5p623gsZskdOv5Ac17prcSMjqjoe.png', 19, 54496, 'png', 'image', '2021-07-19 08:57:24', '2021-07-19 08:57:24', NULL),
(259, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/KMhodxh20NNetrzVs1NFUxnUzZao2ZgGWRJYpiB1.png', 19, 15303, 'png', 'image', '2021-07-19 08:57:25', '2021-07-19 08:57:25', NULL),
(260, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/JsMmh1T3BrevnJ66hhGhfAjYgp5Qs08z8n2TxMN0.png', 19, 7250, 'png', 'image', '2021-07-19 08:57:25', '2021-07-19 08:57:25', NULL),
(261, 'rxLdULEzVmAm3jnHAkExhXSvrzRDw7L5UdxQUZxM', 'uploads/all/zmBeq88e3ZDikllf6jDHbEiQ8I0AInHRLFswmNch.jpg', 19, 7409, 'jpg', 'image', '2021-07-19 08:57:25', '2021-07-19 08:57:25', NULL),
(262, 'NPlXAl3QK1egF5m5TB3QQRTx24x0CybDexqTOWxp', 'uploads/all/6jHo80aqfgvNqcw8QiSelzNwlD4aU8lltJSWwW7N.png', 19, 6443, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(263, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/oINC60QbiXODLAPL66Sg4VRQvaa009aDwNIbYisI.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(264, 't3wvVFOWpjsoaQdxuFyYKguRcc4GyVjaKWRIosbx', 'uploads/all/iYPeoSJSPQi7MMx2TYAYxlzAx95zS31m81luHboJ.png', 19, 988, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(265, 'WNQSgwOWJr53QLXftpYrBIJqHMkVYyP0ImJZNc4T', 'uploads/all/xelgqtZWDz55YNM03jR9F4JZUq9Kyo8H2hvH5m0R.png', 19, 5872, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(266, 'Zz9UMWE1dpsoK4gJiXhhKPzqHzUPiCaN6rC8thdi', 'uploads/all/SuaUzkUCum67wqUx7GDhLTlkNeiHbi0zJZD2Svz3.png', 19, 769, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(267, 'WsGFtx0cHYHtBGrfPnT5Dcn8udsahgtSxBD9YekR', 'uploads/all/b9NIJnmuF7AU3ym4rkyzEq5FhvGRD8dqioANW3Az.png', 19, 532, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(268, 'WW0JJWXk76RINcDCRRKD4gvVnI95k8kwlXFGfo2e', 'uploads/all/vkq0r9GsYmGfIx4LWkVIhVe44SxqOa750Acyryro.png', 19, 1205, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(269, 'WWLDrpPpUYTMBY9fAdD93lGTHR4ona8Q6J60k4uR', 'uploads/all/eUbFvhpW2SyxnzpIRXaNGxFbvpbLsXU5BqPlw64Z.png', 19, 781, 'png', 'image', '2021-07-19 08:57:26', '2021-07-19 08:57:26', NULL),
(270, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/QbNY6N4WULt5YWi2C57XNbl5DiLRf480vdSlGJ0Z.png', 19, 8237, 'png', 'image', '2021-07-19 08:57:27', '2021-07-19 08:57:27', NULL),
(271, 'x06f32DsmCcCfuLN8r13S3NMXcXN1s3i9Vp69ZNo', 'uploads/all/QqHBDFDaV88v2jwD5TW4YSogNi8CjsVJ8uaCfE2a.png', 19, 1342, 'png', 'image', '2021-07-19 08:57:27', '2021-07-19 08:57:27', NULL),
(272, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/it8o7Aa4icD0I2r0tDMRJCDMIIzLzIcJ92MtmIFi.png', 19, 1112, 'png', 'image', '2021-07-19 08:57:27', '2021-07-19 08:57:27', NULL),
(273, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/UbPhDi7XESywmKtIREQMnZ7yBFaJli8ODkOCeOmm.png', 19, 6443, 'png', 'image', '2021-07-19 08:57:27', '2021-07-19 08:57:27', NULL),
(274, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/z4IZP0ufJMjKZjxtSNHoWnIYWjMBDXQhABhZbKYr.png', 19, 5872, 'png', 'image', '2021-07-19 08:57:27', '2021-07-19 08:57:27', NULL),
(275, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/BI4UVVz27Z5rcDX67L7KYqkT9BaFreuyjS3aQAAN.png', 19, 22003, 'png', 'image', '2021-07-19 08:57:31', '2021-07-19 08:57:31', NULL),
(276, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/n0Uk43GT1EJFTA7L8s0lKqk1L0rGzkbOmwGThYtn.png', 19, 26508, 'png', 'image', '2021-07-19 08:57:31', '2021-07-19 08:57:31', NULL),
(277, 'mJsraKtK9lfSCrSTZm2mdUPjjpxZU1DqNg34SHBR', 'uploads/all/9z8cRm6N7CooegxpISmmw44gRvunwqQ2q0szaUl5.png', 19, 16613, 'png', 'image', '2021-07-19 08:57:31', '2021-07-19 08:57:31', NULL),
(278, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/jad1OtJqsgA3CcJq1iasbqFTTsX3mkvw3Xs0I3xp.png', 19, 16613, 'png', 'image', '2021-07-19 08:57:31', '2021-07-19 08:57:31', NULL),
(279, 'RNI31mk2faKMLaqQOIukoHW2xQx24qGe44pbn8He', 'uploads/all/sMVp7T0RbPUUyf1Xa3VppkrNmifX3ABoSPwxkdsp.png', 19, 30058, 'png', 'image', '2021-07-19 08:57:32', '2021-07-19 08:57:32', NULL),
(280, 'wZHUS0cgyKgvLWwV6XGP9wQBNzBBO5MBuJ7DOR3U', 'uploads/all/tWqv6NKutLlWZpYZYyUbPsmk6OqU3nMRTlHFZ1Kn.png', 19, 18102, 'png', 'image', '2021-07-19 08:57:33', '2021-07-19 08:57:33', NULL),
(281, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/gNEnKG353WT3MUo7NRxJg0iCuoMpiYjGTFXnKQkD.png', 19, 43786, 'png', 'image', '2021-07-19 08:57:33', '2021-07-19 08:57:33', NULL),
(282, 'IBadzBFsQSICK4T5BZGs9GIehT8FYwQjyJ4JPS7n', 'uploads/all/mLW5iWB2ASKoHiiZLXlciEgQnhxXVS5HsLlUFwyW.png', 19, 93667, 'png', 'image', '2021-07-19 08:57:33', '2021-07-19 08:57:33', NULL);
INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(283, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/65XPRY96alP86I0cHrAzh3xUX780pdsxlWFQ3RDf.png', 19, 37210, 'png', 'image', '2021-07-19 08:57:33', '2021-07-19 08:57:33', NULL),
(284, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/abrGZIYxbSzD3NiFfIdQvImvYhcrAIHB3hLrcF3b.png', 19, 47699, 'png', 'image', '2021-07-19 08:57:34', '2021-07-19 08:57:34', NULL),
(285, 'mfll1VzoHumUxjSV1bEqTmY7Kwodi9hLfwqgpIG7', 'uploads/all/MaNvDM1NWXzpp1XekR9h3w104vDenOqYZWVuUizx.png', 19, 37210, 'png', 'image', '2021-07-19 08:57:34', '2021-07-19 08:57:34', NULL),
(286, 'oMAaPcFjCI6yjv7AOvuV4wnHF6zMc9BuoBZy2y5Z', 'uploads/all/aKoX6MZGbdhT1cux1uSKJgYj7EquHVEQa7t1wwnr.png', 19, 44275, 'png', 'image', '2021-07-19 08:57:34', '2021-07-19 08:57:34', NULL),
(287, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/eVbOAJiVM7h095j7y5sXmKSjRvW7tODM0gnrl4P0.png', 19, 39320, 'png', 'image', '2021-07-19 08:57:34', '2021-07-19 08:57:34', NULL),
(288, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/wAVii8JfAxHT0Yf64wNZltJylyp9hoqWpZwaQN06.png', 19, 47434, 'png', 'image', '2021-07-19 08:57:34', '2021-07-19 08:57:34', NULL),
(289, 'gna5BBqmjQ8gmUmcxWoOhht4YpTLoDojtrl8nE4B', 'uploads/all/WiwcRLMAVQCLy042T1RYv3q3pr1EI767pECirWv4.png', 19, 52309, 'png', 'image', '2021-07-19 08:57:35', '2021-07-19 08:57:35', NULL),
(290, 'ghFf9LHUOeoFoIMmrtKOzwpuHlHa4wQjKC1BkHRG', 'uploads/all/2oZ7QOdbTMLLgARyKmzsBTIs9euL7mlxGQ56q8f5.png', 19, 49803, 'png', 'image', '2021-07-19 08:57:35', '2021-07-19 08:57:35', NULL),
(291, 'x9AgkO2XaHSnHplx2U1H0EfaKxwlrDDc9kesYs1W', 'uploads/all/DFmLVciWdg9riCHtN6oxYnYs91no4Vo6xL8MEWbb.png', 19, 49803, 'png', 'image', '2021-07-19 08:57:35', '2021-07-19 08:57:35', NULL),
(292, 'YX1c9vGklrUbdif6OrptGZ5Iio5rRiK2zsH5NNZ9', 'uploads/all/tWuztkTTUMMFX6CVDHhcS6uVOZmY1qIfRltrV6ti.png', 19, 54496, 'png', 'image', '2021-07-19 08:57:36', '2021-07-19 08:57:36', NULL),
(293, 'REpMBdfXkkNEmnmnq96dnySJwXnVbEkUndavuQgX', 'uploads/all/E69wSpZ6uyAepnlPIM2feRkfp5HcMUhqvXURd8q6.png', 19, 120034, 'png', 'image', '2021-07-19 08:57:36', '2021-07-19 08:57:36', NULL),
(294, 'aFxF60B8UAHOnkV2bw69Wl78yyOAm4T9xXcTkQhX', 'uploads/all/MRyuLwR06Be0ha7zVCA0MhZUI3EHVdZ0s2HgpnBF.png', 19, 93667, 'png', 'image', '2021-07-19 08:57:37', '2021-07-19 08:57:37', NULL),
(295, 'PDioOOJYq7vEbw55SnDVpad6WJYmHlBzVmFP4G04', 'uploads/all/zQpEqnVcvifnrxL05MxJ1Gcs9s3SsDe1YOTIOr9V.png', 19, 77948, 'png', 'image', '2021-07-19 08:57:37', '2021-07-19 08:57:37', NULL),
(296, 'PRoy4hXnU8cfZ9vvlYJ8j2x60ivZaIO6CeP1vger', 'uploads/all/6o5UcMdcJOVL0pAhYIIkqq3xMUVGeiYDszgW4Wai.png', 19, 77668, 'png', 'image', '2021-07-19 08:58:36', '2021-07-19 08:58:36', NULL),
(297, 'V7zSDDJhkH46c2CyFv19zXlPmBNAEbcq1fc3PuPc', 'uploads/all/J6KeOkgdBngWzLIpzP6Kw3QBjPzzdx8xKzw70FOE.png', 19, 120034, 'png', 'image', '2021-07-19 08:58:36', '2021-07-19 08:58:36', NULL),
(298, '6xUoXfHJ4Bn1GxUya8cxGDNLYUvcXjMle6xhyyoA', 'uploads/all/Ox4F2bO3Z8QWSK4iyoVfFan7Mk0B9zXNblRxVZst.png', 19, 18102, 'png', 'image', '2021-07-19 09:12:36', '2021-07-19 09:12:36', NULL),
(299, '7wLi7klvM6ctk0qL96sfVKxdxxXoArNlJtUZK8LX', 'uploads/all/2AsOgh2euSJXttyrVczKUtdG1IxJpyRVHJIrdEJB.png', 19, 6745, 'png', 'image', '2021-07-19 09:12:41', '2021-07-19 09:12:41', NULL),
(300, '3okSpmRVYAxJ9CX31mD1819DAy9tbNiQy5Hqy0TH', 'uploads/all/y2zOQUypm4qWYB7QgNYZ9BsTO6eA0jIPzl4fB2nv.png', 19, 47434, 'png', 'image', '2021-07-19 09:12:41', '2021-07-19 09:12:41', NULL),
(301, '9DV2mI1YxNpp2Gu4ZrrdZWKTqr2Bdl7MAVGrhmHc', 'uploads/all/37oQfVEP5gtG3VS695phiCOL55jkKNYSS0UFVbpq.png', 19, 6745, 'png', 'image', '2021-07-19 09:12:41', '2021-07-19 09:12:41', NULL),
(302, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/phNYnaQsiQfUA19xRhGMFOZC0d13QNnz532BOGsF.png', 19, 37210, 'png', 'image', '2021-07-19 09:12:41', '2021-07-19 09:12:41', NULL),
(303, '7oliEtl5OKLFQG0Ay4uvFQ2KNm8Z3suphVtwfABC', 'uploads/all/RviYHgvhMm3FgcYNwRLxKwWmetux8sIo0MCA5Ehl.jpg', 19, 15532, 'jpg', 'image', '2021-07-19 09:12:41', '2021-07-19 09:12:41', NULL),
(304, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/3NBQ7AK1avmoKw3TA5HHF0NJxiUtG2yAPZM268ml.png', 19, 43786, 'png', 'image', '2021-07-19 09:12:42', '2021-07-19 09:12:42', NULL),
(305, 'Bi58uqrSuLTSHKDVz3xGCwQ36BwubzsexJst5Hav', 'uploads/all/Owns9CvAZEgPmHh2OPBYQ7PBaFZbfDwzw2lmmfMd.png', 19, 781, 'png', 'image', '2021-07-19 09:12:42', '2021-07-19 09:12:42', NULL),
(306, 'BLWDcxaEfBvtF665yxaBDUOb3cLUMtyKxqyQWBGA', 'uploads/all/SAt2auPg6ROKvmTVSCMwjQGBWhiJSDBzoJXpnfEJ.png', 19, 6805, 'png', 'image', '2021-07-19 09:12:42', '2021-07-19 09:12:42', NULL),
(307, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/lcEs3QRPDvFdMiavKVBeGG6d0AeNtxdPuRivzafr.png', 19, 236, 'png', 'image', '2021-07-19 09:12:42', '2021-07-19 09:12:42', NULL),
(308, 'dfhN5dkp9lee77A4ooXRmFG7n8KaC5bqffBfwh5n', 'uploads/all/CW1lkpxAtWuiW1YDeFWJTujbmhDVnrBXIJewxqXh.png', 19, 532, 'png', 'image', '2021-07-19 09:12:43', '2021-07-19 09:12:43', NULL),
(309, 'eyPVwinQutjpf55IbsrhNPcwqX7sd9oBmPNIP4Wt', 'uploads/all/U6s7GLyE4d5GN8YOL9XPNTE25OcUlBPxYCARr6Pz.png', 19, 867, 'png', 'image', '2021-07-19 09:12:43', '2021-07-19 09:12:43', NULL),
(310, 'eH3AbI3pZg737aS1lw7F9Bm3znvYA6qoZg4dvR6G', 'uploads/all/xPLO97fbN8ImF2x14oE3D9I9GcrKGA2gUX5bs1Y9.jpg', 19, 7431, 'jpg', 'image', '2021-07-19 09:12:43', '2021-07-19 09:12:43', NULL),
(311, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/wMbxudxt7eMR9A5gIS1Xz0AKWGZkHGz2CrqXOEtf.png', 19, 7250, 'png', 'image', '2021-07-19 09:12:44', '2021-07-19 09:12:44', NULL),
(312, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/SORb1yOtVaFST5TAf062C8vbBqe5x4HFZ1QZ63Gk.png', 19, 8237, 'png', 'image', '2021-07-19 09:12:48', '2021-07-19 09:12:48', NULL),
(313, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/kNrweBiUJABnq188KtInjb9QvwbmC3O2LvLD7Kit.png', 19, 5872, 'png', 'image', '2021-07-19 09:12:49', '2021-07-19 09:12:49', NULL),
(314, 'BRMIkQdouMhKOViU2v9rMG56IWfGu09TwN9sria3', 'uploads/all/iACdRDbxM6vguJGfvgaPZILbgG2iZX0D81McgG1R.png', 19, 26889, 'png', 'image', '2021-07-19 09:12:55', '2021-07-19 09:12:55', NULL),
(315, 'DpzHOOANRPNIuShUQgazTQKkjioUGp7RPqGRdFCF', 'uploads/all/amDHIq3CrPdjqVOxBIB5kby3pR31e6fbV1QckHH2.png', 19, 20592, 'png', 'image', '2021-07-19 09:12:55', '2021-07-19 09:12:55', NULL),
(316, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/y94KCKlxjAhkf5b82NTNJxY0YToVOylkfWEFEftP.png', 19, 30058, 'png', 'image', '2021-07-19 09:12:55', '2021-07-19 09:12:55', NULL),
(317, '5ojOJWPHacSb2tuj7HfEJYAGByLdsgJjzzdpnIxl', 'uploads/all/VxvTFLpoJ1MbKl8bT2P9c9KPhYdiAnEd7wjugcLI.png', 19, 77948, 'png', 'image', '2021-07-19 09:12:55', '2021-07-19 09:12:55', NULL),
(318, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/UK1SyT4zqNVOndoSgMbnUkuE70upA6KaxtOVlnBG.png', 19, 44275, 'png', 'image', '2021-07-19 09:12:59', '2021-07-19 09:12:59', NULL),
(319, 'mfll1VzoHumUxjSV1bEqTmY7Kwodi9hLfwqgpIG7', 'uploads/all/mVg1kAKDA25x0UJpdhPJuo50IM4F9SUf6bxaMKkv.png', 19, 37210, 'png', 'image', '2021-07-19 09:13:04', '2021-07-19 09:13:04', NULL),
(320, 'fFBrTT5JSYWhetTnbV6RjAUnSiD4iIfpEWDQed79', 'uploads/all/oNPxKvUvOYJJM0AUy5up14qMXvJvdGdANEAnKyZS.png', 19, 54496, 'png', 'image', '2021-07-19 09:13:07', '2021-07-19 09:13:07', NULL),
(321, 'ghFf9LHUOeoFoIMmrtKOzwpuHlHa4wQjKC1BkHRG', 'uploads/all/I6E58DYG0BU9FFPrZGtfO8qLhCA0AaZWTG3C7tvO.png', 19, 49803, 'png', 'image', '2021-07-19 09:13:07', '2021-07-19 09:13:07', NULL),
(322, 'gna5BBqmjQ8gmUmcxWoOhht4YpTLoDojtrl8nE4B', 'uploads/all/JIMjYvKfuJmNp9y5yycUc8v2YaPxOLIuVRXk6oeE.png', 19, 52309, 'png', 'image', '2021-07-19 09:13:07', '2021-07-19 09:13:07', NULL),
(323, 'aFxF60B8UAHOnkV2bw69Wl78yyOAm4T9xXcTkQhX', 'uploads/all/FTqa5ex7X1W4vc1FJOjrvLOVAZCk5ZFbjnguR57V.png', 19, 93667, 'png', 'image', '2021-07-19 09:13:07', '2021-07-19 09:13:07', NULL),
(324, 'hadRXi3b0K0T2g5pezd9R9Am8UnJ12YrOE1MKxYy', 'uploads/all/d6Fm0tM6DL6sYr5SMqvl9lAFk1k6K9IBjy0eGVzG.png', 19, 61940, 'png', 'image', '2021-07-19 09:13:07', '2021-07-19 09:13:07', NULL),
(325, 'XkNayR7dkJdljiKsaxGwgkQH8AsaqROabisSdOzN', 'uploads/all/fxD99o6AZBRVAeqVsyj65SHsPXLyCU1eYWXhSZLP.png', 19, 57125, 'png', 'image', '2021-07-19 09:13:08', '2021-07-19 09:13:08', NULL),
(326, 'x06f32DsmCcCfuLN8r13S3NMXcXN1s3i9Vp69ZNo', 'uploads/all/TCf6u1NttOXAHNVpWFMVtQZwi1cAFPrHzh65t4y4.png', 19, 1342, 'png', 'image', '2021-07-19 09:14:26', '2021-07-19 09:14:26', NULL),
(327, 'YX1c9vGklrUbdif6OrptGZ5Iio5rRiK2zsH5NNZ9', 'uploads/all/nkKer9bkG7kQ1L409ZtXDU9xDXwDAVq7hrVlFddj.png', 19, 54496, 'png', 'image', '2021-07-19 09:14:31', '2021-07-19 09:14:31', NULL),
(328, 'Zz9UMWE1dpsoK4gJiXhhKPzqHzUPiCaN6rC8thdi', 'uploads/all/RRW30qP2Z8B85xEoa9x0poYhnlTLnvRsGxgMntAv.png', 19, 769, 'png', 'image', '2021-07-19 09:14:31', '2021-07-19 09:14:31', NULL),
(329, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/wqhnXaejH7TTASTnJIyddSgtidZs20pDf4o7i97d.png', 19, 26508, 'png', 'image', '2021-07-19 09:14:33', '2021-07-19 09:14:33', NULL),
(330, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/fi9F6WGwoXUhJyEVEfVflzpL3KMKiZRqlUThNWjT.png', 19, 47699, 'png', 'image', '2021-07-19 09:14:39', '2021-07-19 09:14:39', NULL),
(331, 'N8jfcaJKXZfDgyVLxHa733ZWNfQ2yetbR4U8okX7', 'uploads/all/8vJaG2glgTgw9WHl1DDcxCGZFTzwe1TcRsffWtIN.png', 19, 51654, 'png', 'image', '2021-07-19 09:14:41', '2021-07-19 09:14:41', NULL),
(332, 'mJsraKtK9lfSCrSTZm2mdUPjjpxZU1DqNg34SHBR', 'uploads/all/ii8RebvwozcCCrSE7WHKC91FOuAOo2SgdSyYXGbW.png', 19, 16613, 'png', 'image', '2021-07-19 09:14:42', '2021-07-19 09:14:42', NULL),
(333, 'oMAaPcFjCI6yjv7AOvuV4wnHF6zMc9BuoBZy2y5Z', 'uploads/all/jWR0NH8UY24tDMPcJTyFF6cWei6kWZS0hQHz9sni.png', 19, 44275, 'png', 'image', '2021-07-19 09:14:42', '2021-07-19 09:14:42', NULL),
(334, 'rxLdULEzVmAm3jnHAkExhXSvrzRDw7L5UdxQUZxM', 'uploads/all/O6pJhfeehiiXngZR44f3TFeW7wAj2I5xF4RvfDF6.jpg', 19, 7409, 'jpg', 'image', '2021-07-19 09:14:43', '2021-07-19 09:14:43', NULL),
(335, 't3wvVFOWpjsoaQdxuFyYKguRcc4GyVjaKWRIosbx', 'uploads/all/FQktArOp6Ig2IVe1FvAAwZgIPBEawBVJIzbCtNlg.png', 19, 988, 'png', 'image', '2021-07-19 09:14:43', '2021-07-19 09:14:43', NULL),
(336, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/aHbfGXDr5wIhKGrVOFOAydQIvM3BGg59Sm2da0LN.png', 19, 236, 'png', 'image', '2021-07-19 09:14:43', '2021-07-19 09:14:43', NULL),
(337, 'PRoy4hXnU8cfZ9vvlYJ8j2x60ivZaIO6CeP1vger', 'uploads/all/Khkx3VHkWKnNrcghsxd1uFuIGPLJISMvUTWNVPqP.png', 19, 77668, 'png', 'image', '2021-07-19 09:14:43', '2021-07-19 09:14:43', NULL),
(338, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/g3yorZs0pme0cYTK7VOR7fo2tUsvwaHUCmD0XgZw.png', 19, 7250, 'png', 'image', '2021-07-19 09:14:43', '2021-07-19 09:14:43', NULL),
(339, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/tnDyYf1Rzry0RlHdUohu3AVuVksNqquXYO4s6RzV.png', 19, 7250, 'png', 'image', '2021-07-19 09:14:44', '2021-07-19 09:14:44', NULL),
(340, 'rnmQqeBvRo0He1Ycwo7YMy2hLtMbD5NL64119jul', 'uploads/all/VbT1w0sQFCXR7W2qY6cSoBowomIB3v6Lgcc92xfh.jpg', 19, 15591, 'jpg', 'image', '2021-07-19 09:14:44', '2021-07-19 09:14:44', NULL),
(341, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/U2CV9kKYrHZgebUEjnQyga8FAaPAR2OCubCaW5dV.png', 19, 1112, 'png', 'image', '2021-07-19 09:14:44', '2021-07-19 09:14:44', NULL),
(342, 'WNQSgwOWJr53QLXftpYrBIJqHMkVYyP0ImJZNc4T', 'uploads/all/bDRTXUPSCfXrvqksiqbUNYRkCY0MEXsz5ie6IDqk.png', 19, 5872, 'png', 'image', '2021-07-19 09:14:44', '2021-07-19 09:14:44', NULL),
(343, 'aY8qgCAiGjCO17YvD1sByIaCPVSbwvmkZerkRtTm', 'uploads/all/ioGkLrJaVkEBX29b26aLhtfDL3iI2yGQ9BBHfQL2.png', 19, 7250, 'png', 'image', '2021-07-19 09:14:45', '2021-07-19 09:14:45', NULL),
(344, 'NPlXAl3QK1egF5m5TB3QQRTx24x0CybDexqTOWxp', 'uploads/all/TFZ3EKQNyShaNTYndzbv4OOc4csfwKV3WSOFKxwp.png', 19, 6443, 'png', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(345, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/qbr6DS1CbU4IBdDaj7Y4h0Lw6gKBwdhWc36ezMK0.png', 19, 1475, 'png', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(346, 'Mc0O3V9VK0CnklJSJ8jA5I3fU159a6bTLBK7714X', 'uploads/all/dgaJF8UgHXhbUTYCNQlHWezW05VJOCYIeejptbkz.png', 19, 6565, 'png', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(347, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/vslhxwUjdZGx7GuWTQXt1i2mfcpO0NU7QH4sF5nk.png', 19, 15303, 'png', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(348, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/brFfOZeR7iqgYEvWFzeOMKI3wNbMMyKNkmoaMe7Y.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(349, 'x9AgkO2XaHSnHplx2U1H0EfaKxwlrDDc9kesYs1W', 'uploads/all/MDBH2QRGxSfmuDSZaUS1SzA9bvl0dKL6aOKtnzCM.png', 19, 49803, 'png', 'image', '2021-07-19 09:14:47', '2021-07-19 09:14:47', NULL),
(350, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/UUxiKLG6T8qCWtrFQsN9eMaiWnlBZnKwM2GcDZGI.png', 19, 16613, 'png', 'image', '2021-07-19 09:14:48', '2021-07-19 09:14:48', NULL),
(351, 'yeaajgyQxzBuIs8bkkKXFdlEJkMyEK3SblVbkqcM', 'uploads/all/wETVA7XV4SUpcMn6DfAILwXqY6RM8elpW74LI0hU.png', 19, 26508, 'png', 'image', '2021-07-19 09:14:48', '2021-07-19 09:14:48', NULL),
(352, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/r1QLZaxveNCBlaT7wI5gkbZBb4toL8R9D6r7ULDQ.png', 19, 22003, 'png', 'image', '2021-07-19 09:14:49', '2021-07-19 09:14:49', NULL),
(353, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/FmTfCLLs07Dj1DmWiv6bCfN7UMrlu3ba8J9MUb5z.png', 19, 39320, 'png', 'image', '2021-07-19 09:14:49', '2021-07-19 09:14:49', NULL),
(354, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/iYg46RU086BIURUQY21UY8Wbkwa9yiS5nCY4steA.png', 19, 47434, 'png', 'image', '2021-07-19 09:14:49', '2021-07-19 09:14:49', NULL),
(355, 'At0IiZhSSGQ9Lsk6sFtdIe3ZqMhDc23bCrP1dHWB', 'uploads/all/90l6VjOIsyouub43V0AVosrgUw99hnMHiqQjORrf.png', 19, 51654, 'png', 'image', '2021-07-19 09:14:49', '2021-07-19 09:14:49', NULL),
(356, 'V7zSDDJhkH46c2CyFv19zXlPmBNAEbcq1fc3PuPc', 'uploads/all/iRvoreRDBobGswPd0YQXavUUZnbolIXFfDrlUZ5c.png', 19, 120034, 'png', 'image', '2021-07-19 09:14:49', '2021-07-19 09:14:49', NULL),
(357, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/mARNnMcd5oqv8UHmAQLCyVdAaQmcAW6QsxdRkZZ1.png', 19, 1342, 'png', 'image', '2021-07-19 09:15:03', '2021-07-19 09:15:03', NULL),
(358, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/K69QjOG4eNzytTqcx3iRVTF04acOyYkczbZiwgHA.png', 19, 1106, 'png', 'image', '2021-07-19 09:15:03', '2021-07-19 09:15:03', NULL),
(359, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/HCSvyuSHEgFSPzfT6TiamXD7qf7lt1mUItUsIru5.png', 19, 15303, 'png', 'image', '2021-07-19 09:15:03', '2021-07-19 09:15:03', NULL),
(360, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/MijLcWkynmXaQamAKql4CZk3yxzu8kQT1RnhEVLa.png', 19, 1112, 'png', 'image', '2021-07-19 09:15:03', '2021-07-19 09:15:03', NULL),
(361, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/FwJDQrQXSIl7d0sWwLoIfCbWJ4dJhj148ATZwsaR.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 09:15:04', '2021-07-19 09:15:04', NULL),
(362, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/Ne6KLeE3qDBXbUuTKsTcySe83PAhjblCWWXBnDn3.png', 19, 6443, 'png', 'image', '2021-07-19 09:15:04', '2021-07-19 09:15:04', NULL),
(363, 'RNI31mk2faKMLaqQOIukoHW2xQx24qGe44pbn8He', 'uploads/all/CsWnryDJeBJ1MnJhPFlqyBTSTn0zByfvOaAAMZka.png', 19, 30058, 'png', 'image', '2021-07-19 09:15:04', '2021-07-19 09:15:04', NULL),
(364, 'UTngHzOAEno6ErwJo81u3nAM3K3uCbfG2XsUGB8V', 'uploads/all/a7CNxcDrqnL9o7pCNJ9qniZ2DyQsTS5zSMAFctf9.png', 19, 988, 'png', 'image', '2021-07-19 09:15:04', '2021-07-19 09:15:04', NULL),
(365, 'TwkRcMAyc9Xe8fQGXPzwCHDsJU8NWpgaHiPEh3lf', 'uploads/all/CEKaNZTN8mQXuE9Wb6do9tVRJO1CsJqHM2AFzBk7.png', 19, 26889, 'png', 'image', '2021-07-19 09:15:04', '2021-07-19 09:15:04', NULL),
(366, 'WsGFtx0cHYHtBGrfPnT5Dcn8udsahgtSxBD9YekR', 'uploads/all/HTYKjKKcjMDgcOm6kHwNpgwP6RzHYJ0KErI3LVRl.png', 19, 532, 'png', 'image', '2021-07-19 09:15:06', '2021-07-19 09:15:06', NULL),
(367, 'WW0JJWXk76RINcDCRRKD4gvVnI95k8kwlXFGfo2e', 'uploads/all/1ljaN66Y8VmmgELRCsk5reBVOSd1IivvVlenMwNQ.png', 19, 1205, 'png', 'image', '2021-07-19 09:15:06', '2021-07-19 09:15:06', NULL),
(368, 'WWLDrpPpUYTMBY9fAdD93lGTHR4ona8Q6J60k4uR', 'uploads/all/uCCqaixVcTlm66FlbS7JCHz6OatHeU8MIMjNKbb6.png', 19, 781, 'png', 'image', '2021-07-19 09:15:06', '2021-07-19 09:15:06', NULL),
(369, 'uXtS06w0VPK3DVVGkWwxoXU1wDZGlnRyV5n9YcZc', 'uploads/all/uJZLFrdHzf0WtLsvEiZ2MeoKn3TmE1gDZwM5bMes.png', 19, 21308, 'png', 'image', '2021-07-19 09:15:08', '2021-07-19 09:15:08', NULL),
(370, 'wZHUS0cgyKgvLWwV6XGP9wQBNzBBO5MBuJ7DOR3U', 'uploads/all/mdeVbyKnA89SqLDEMIj10qpRC3UBk9UgcPaaGVme.png', 19, 18102, 'png', 'image', '2021-07-19 09:15:08', '2021-07-19 09:15:08', NULL),
(371, 'IBadzBFsQSICK4T5BZGs9GIehT8FYwQjyJ4JPS7n', 'uploads/all/dAdb1HS6EE1h6sXuHAaqg7hmy0oox3MLIctccZyq.png', 19, 93667, 'png', 'image', '2021-07-19 09:15:10', '2021-07-19 09:15:10', NULL),
(372, 'PDioOOJYq7vEbw55SnDVpad6WJYmHlBzVmFP4G04', 'uploads/all/2eJPxgbQX7kGo0IU59flhyahQo3hW0Y38QOgxjx6.png', 19, 77948, 'png', 'image', '2021-07-19 09:15:11', '2021-07-19 09:15:11', NULL),
(373, 'REpMBdfXkkNEmnmnq96dnySJwXnVbEkUndavuQgX', 'uploads/all/MNHtyf7uv9iJrlhQFoZigXjxBqth5MyWHaFCsDVT.png', 19, 120034, 'png', 'image', '2021-07-19 09:15:26', '2021-07-19 09:15:26', NULL),
(374, 'x653', 'uploads/all/2qpHgJ55vI5A1syEzp2dRqnzUDRDi7EBI5vKHDvi.jpg', 19, 12571, 'jpeg', 'image', '2021-07-19 09:25:05', '2021-07-19 09:25:05', NULL),
(375, 'zero8', 'uploads/all/ypC2jMiiMFR9dKTJNQYn8xR7nnoYJe9ionMKYDPD.jpg', 19, 23282, 'jpg', 'image', '2021-07-19 09:25:07', '2021-07-19 09:25:07', NULL),
(376, 'hot10', 'uploads/all/N7R5cphWIFq7nzFIfZTwoenZ2QQQpnCtYvdo5CIZ.jpg', 19, 26735, 'jpg', 'image', '2021-07-19 09:25:07', '2021-07-19 09:25:07', NULL),
(377, 'hot10lite', 'uploads/all/v9WxhnDy5v0O7x6UQGJHCF7pD55EVp3tQKwlEPFW.jpg', 19, 24716, 'jpg', 'image', '2021-07-19 09:25:08', '2021-07-19 09:25:08', NULL),
(378, 'hot10play (1)', 'uploads/all/MdoosotoHeOm0cLXRbjQtLjG25D6XYe0pt2PNdf6.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 09:25:08', '2021-07-19 09:25:08', NULL),
(379, 'note8i', 'uploads/all/X1p5EXbxgglymco30UtbpGBVivYA1w6qul55PIT5.jpg', 19, 31131, 'jpg', 'image', '2021-07-19 09:25:09', '2021-07-19 09:25:09', NULL),
(380, 'note8', 'uploads/all/6AeGSCYVGEIfJ7A7tSN3eDFiIpcY0jmynsBMh6NV.jpg', 19, 31777, 'jpg', 'image', '2021-07-19 09:25:10', '2021-07-19 09:25:10', NULL),
(381, 'note7lite', 'uploads/all/m6pN1Z7sHhwdGQaZ1vMQZMBog9rtGggMpi6bvzhc.jpg', 19, 27813, 'jpg', 'image', '2021-07-19 09:25:10', '2021-07-19 09:25:10', NULL),
(382, 'note7', 'uploads/all/wKwSAQ0tuzyXpLe7G8lEiHLvN4X5erlYk6QV3P36.jpg', 19, 25346, 'jpg', 'image', '2021-07-19 09:25:11', '2021-07-19 09:25:11', NULL),
(383, 'x653', 'uploads/all/bCG1RmQTmTiZvb8tBGcOLn9FmFEZK9RAFq9VxrpH.png', 19, 219331, 'png', 'image', '2021-07-19 09:25:11', '2021-07-19 09:25:11', NULL),
(384, 'smart5-dual', 'uploads/all/O9mWCPnzjI0PiIa8ZvOFtBDUdI4kJ7rdvZ8p6JMC.jpg', 19, 30669, 'jpg', 'image', '2021-07-19 09:25:11', '2021-07-19 09:25:11', NULL),
(385, 'hot10play', 'uploads/all/L3yhmVADoYIHW9NptSC4I07958dbmgAdKESCyl29.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 09:25:11', '2021-07-19 09:25:11', NULL),
(386, 'OcmWTrcwliCNLXXYbnBbdjID97WyFZz16qHwFRUu', 'uploads/all/Zxm4JnwC4KoqgnWVwHnrT1YOihYEH4CAkWNa5Tcx.jpg', 19, 20651, 'jpg', 'image', '2021-07-19 09:26:40', '2021-07-19 09:26:40', NULL),
(387, 'xikeKxVK8NozN49JlenyPOEuZ11LpPNbNMKD0zEl', 'uploads/all/cPYLdF4OtJri6uk4CoTtkHwv2ub8RMCJkRPHuZQJ.jpg', 19, 10130, 'jpg', 'image', '2021-07-19 09:26:44', '2021-07-19 09:26:44', NULL),
(388, 'gsyjRUWN7hj0tBsBT4Rxw0LMfCL8bQdWZV2WHG6o', 'uploads/all/fsO2eDX8a2rDSXEh69pAlgSvJdvRZy7wRS3Yxra2.jpg', 19, 30879, 'jpg', 'image', '2021-07-19 09:26:45', '2021-07-19 09:26:45', NULL),
(389, 'hVulqEzWqadsAOQYssOuBZM1hPIKJxBiqZS5laYa', 'uploads/all/DshexaU8pu1ZV35AkvRORvEwgJqwcTChblEgJCon.jpg', 19, 32554, 'jpg', 'image', '2021-07-19 09:26:54', '2021-07-19 09:26:54', NULL),
(390, 'MbPlRnsJNklF0AgngLJGRnBRtuYpoRD2v6cb6NZO', 'uploads/all/pvvaAmTePYBUnd9KLQxofmp2fVDFcV75UVcoyg3n.jpg', 19, 38154, 'jpg', 'image', '2021-07-19 09:26:54', '2021-07-19 09:26:54', NULL),
(391, '70YmveSUJzmEYBrJq96zAfL1FkC81Re4znfWMLDF', 'uploads/all/RSckzUyn3ct2cq4BgUH2otyMh9WXv80NoZPQhA19.jpg', 19, 31842, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(392, 'tT2Mfw0f1yJwS858aSkB3gdwgEXgUwjRW8KwNfJb', 'uploads/all/TqjaY3puw3NFG1bJ3jfwzSWZkri9mEdOchMGbEY0.jpg', 19, 36592, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(393, 'eNPPqEWKQY1fDSBp7fAQD6SrhpmaU3uXmwSLunxS', 'uploads/all/b55HMOiwJKJLIeyhchpWyZbvP67mjDZVcGSZcyUx.jpg', 19, 15969, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(394, 'bmI9uMXTx8VJT26NW2nzi9ni2IniZLuW1oRF5EMm', 'uploads/all/sr2btn89G9JjfMMpOMiKxCj8kUlXcZzihQKY2v1X.jpg', 19, 30358, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(395, 'NjvgZNeDbMwCZbowkb988PnbwrP1CsfNpt4CYJV6', 'uploads/all/OfdnVTp0ofzfqe3tNcMQJO9sQFTEOY0tZpjINGik.jpg', 19, 15582, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(396, 'Xhub1x3oJVpGpNiQjGt1ymixv5CGfbkzYgDEGfVJ', 'uploads/all/AGpXMHFP9DiNhJK9aIHclwBLvJyLb8T7jZKQgiS1.jpg', 19, 15870, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(397, 'GFBuOyWAAcfaCw5royGpFDZQZsvtndRg6Y4i6jyU', 'uploads/all/kWGiKiPpbEEA7bDfnV45npyflADivLmqus9MnI0x.jpg', 19, 25376, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(398, 'jZA0U1ebaZ9HkQqsL6ymorDExLO0ZAZOTs0F8btW', 'uploads/all/EQaWIwURurNOYTPCBybEw2nOl8zQ2CftPQtIjsyF.jpg', 19, 28508, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(399, 'Yt7JGSSvTtKglC5MDI8jRuIpLdsqwUJS2b5nh2kM', 'uploads/all/6YjRX7M4ntRxXn70zhtkAXT1eTdkMBfpo4RkV179.jpg', 19, 19000, 'jpg', 'image', '2021-07-19 09:26:55', '2021-07-19 09:26:55', NULL),
(400, 'MoT8YKTxOV3hDtqoOpObnAGSqCGaln21A28D8upJ', 'uploads/all/MEkPYmuP0n3bQ5Mh5iYJQWLqmQ83aorENkbzUOxY.jpg', 19, 34322, 'jpg', 'image', '2021-07-19 09:26:56', '2021-07-19 09:26:56', NULL),
(401, 'kF9qFM7TR4gG9Tf1AsQQuyecYgFrc5orw0zWghG4', 'uploads/all/opjfXLaTxN0f13Czbu1UHy927KOhtQIk9SE5m1SF.jpg', 19, 45271, 'jpg', 'image', '2021-07-19 09:26:56', '2021-07-19 09:26:56', NULL),
(402, 'XayD7nBgKCKZOtMgf9KhtCGhDeYxgMvLaTUkzNKX', 'uploads/all/Yj2SUIrelTJEbZVYZQqFOJU2wqtc0IFYu91V1w9R.jpg', 19, 33289, 'jpg', 'image', '2021-07-19 09:26:56', '2021-07-19 09:26:56', NULL),
(403, 'vlfGuIBlHs0oYh57AhDEhwahb7LdgKwUN0GpCt2t', 'uploads/all/RuUXKxaDITU13XuzS6JyZhBXpP3D7k8boYWjj70E.jpg', 19, 41724, 'jpg', 'image', '2021-07-19 09:26:56', '2021-07-19 09:26:56', NULL),
(404, 'Dmq6lMXmN7Qk7TNyyAi8FS7daDuRV4O6zd4ktuMV', 'uploads/all/NpXEpJpUSQf3GJvadiPdaAV5Kg81k5KwA5aPftbh.jpg', 19, 56383, 'jpg', 'image', '2021-07-19 09:26:56', '2021-07-19 09:26:56', NULL),
(405, 'CZ5beqssrATCymEJyvU1eqXti2r565IXKGdUiu3c', 'uploads/all/6gMZD53bDBiIAn8FKHZ7CxtekAmym5bZUlfTOFhT.png', 19, 102332, 'png', 'image', '2021-07-19 09:27:05', '2021-07-19 09:27:05', NULL),
(406, 'nufoIzjPGYTNNUI1ARoCpUX1KGTQI3SsmEicKeUc', 'uploads/all/ix4e1xl57vzPPU4KdVyEzSMBptl4Wxtf7jV94Ebo.png', 19, 303320, 'png', 'image', '2021-07-19 09:27:26', '2021-07-19 09:27:26', NULL),
(407, 'UNcllSrVuUeGkuio40iBs84l1SI8DAJxTawZqojc', 'uploads/all/jGj6jwfkqDbI5plpNOg1hB4UlrsaGE9WDmx6TKb7.png', 19, 301019, 'png', 'image', '2021-07-19 09:27:26', '2021-07-19 09:27:26', NULL),
(408, 'NOgtUJoLkwBLjcIgi52Kw7nCTXk8wvduM18okrS7', 'uploads/all/d8GsSpu5XLcaJFTUHvJKtl8GTIaa6ybNVX0wSsei.png', 19, 460295, 'png', 'image', '2021-07-19 09:27:31', '2021-07-19 09:27:31', NULL),
(409, '2WgY3PXi76dpDMZBAoYdQcl1eWGo41i8qUQgz9Yr', 'uploads/all/38kZZzc8uZLdWp6Ug6AJFcdM60RurU3Jwz8IcSDF.png', 19, 555012, 'png', 'image', '2021-07-19 09:27:32', '2021-07-19 09:27:32', NULL),
(410, 'KDZjJrRFa9mZ3xZi9OqPquWsxIebUouW2sl9yqFT', 'uploads/all/Rzc4aypqwPXF4cq9LTdrOktD6YOkQ1n0Eaw7OGoM.png', 19, 610598, 'png', 'image', '2021-07-19 09:27:37', '2021-07-19 09:27:37', NULL),
(411, 'kc5IFcBnDhRQqBQDVVAjIVftIwvckcvPyHaWYDoq', 'uploads/all/EtTD2IRSZObgHXIsxOfGR2ga2MYmhOsTFvTm9wcR.png', 19, 621311, 'png', 'image', '2021-07-19 09:27:37', '2021-07-19 09:27:37', NULL),
(412, 'AM5PAQe038v110SzqFjgoGFhvlnLSt6rEKMuvWHt', 'uploads/all/oIyWEBs5s1DhaiSgs6B7ElfOd4kiFCEv1RGWmeEm.png', 19, 692045, 'png', 'image', '2021-07-19 09:27:41', '2021-07-19 09:27:41', NULL),
(413, 'VznzHLpKwMNcuaBlQUSG07iALajRRWrg4bS7xerU', 'uploads/all/OtyjWlJ9DhrWjTJwEiko3g0xvOEE3QYEr5NZvPoU.png', 19, 610598, 'png', 'image', '2021-07-19 09:27:41', '2021-07-19 09:27:41', NULL),
(414, 'R1zJeY0HCODANwgaNQSWMClwdm7YIL5HvMuqR90I', 'uploads/all/jz9SdcZb65PobNJl7eeAfEdBz8AGybKe0PdmWuoK.png', 19, 659909, 'png', 'image', '2021-07-19 09:27:53', '2021-07-19 09:27:53', NULL),
(415, 'MbPlRnsJNklF0AgngLJGRnBRtuYpoRD2v6cb6NZO', 'uploads/all/R0bJEIrtlRzVPU7kyCvElapEj3bCEy2FcGigfRn4.jpg', 19, 38154, 'jpg', 'image', '2021-07-19 09:28:18', '2021-07-19 09:28:18', NULL),
(416, 'eInMo8XWU3LLfQ1SJvKr6fKz6Pc9EMxeBqESDp9I', 'uploads/all/s2QZfyieqN9S9AjfSUoGRTE1aThGvW8Af4aTBWgu.jpg', 19, 37598, 'jpg', 'image', '2021-07-19 09:28:31', '2021-07-19 09:28:31', NULL),
(417, 'sUMBj4ynn08ClFNBRPX8FaYmNZY5nbeGiiQw63nX', 'uploads/all/yYTb8Pwwso08P0Kq6lBCIUGqJhcTnerVQoGF8msr.jpg', 19, 59699, 'jpg', 'image', '2021-07-19 09:28:31', '2021-07-19 09:28:31', NULL),
(418, 'CfBOL6WtEaElzzbiVpQSDM7V4meNvGhjBqyHVBaA', 'uploads/all/RCnLYjyLfkurQC5h9hOD1fenJRsuYmxIYBiwod1F.jpg', 19, 40401, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(419, 'scXh14TdG79WZyo7C8F6UpLIQUZtFE7N40Cp6tLC', 'uploads/all/zr5cnzl7uvqtTGU90ILGDoMk6QfN1ew53mpR7M4r.jpg', 19, 11869, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(420, 'env9nHp1tYWfkxHqcg7mkT2M49OBvdIFRkB3SDyf', 'uploads/all/wSI1id2ncuq3yx0VyzytjO5UnWZt1OH4bDAhAYhd.jpg', 19, 15477, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(421, 'Ut2Xgr1SzZ6qpkovZCTveP3Ub93fTuFkOUXCysQY', 'uploads/all/Nl8bMMP9DRQSZnuIAvhQDiuiNEQCPIE7yJp2eTak.jpg', 19, 38115, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(422, 'DDjG5z0epmMdE1cxuxsUifT6XrlIEaaHm2GUY1j2', 'uploads/all/xRDKD6FuyzV55CASyNGoXOzMzSfhk3Ccl5bRc39b.jpg', 19, 45196, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(423, 'kiGhJY9XtxWpoe5XHaXZe0otA2DqvwSFSw0otz5D', 'uploads/all/nB4oEyCgWyd1OdgWHmnKo7nkHJoZXwrstnn1mTPB.jpg', 19, 36685, 'jpg', 'image', '2021-07-19 09:28:36', '2021-07-19 09:28:36', NULL),
(424, '40bcpXvsUJ4wzXBLSWmhPRxCLG5GMXmRzaTCgV3D', 'uploads/all/tntxSCKkx91yVbtlUA5BYLfj7Z4MzsoqLUCymeE4.jpg', 19, 36685, 'jpg', 'image', '2021-07-19 09:28:37', '2021-07-19 09:28:37', NULL),
(425, 'AYhCGLaIh1cXoMfsMk3gqYQ33JHMB4FFV7STN27O', 'uploads/all/DV1bT2LzsmXerpipj06oqbzy9jmhpwJaGHmZ6FKD.jpg', 19, 38870, 'jpg', 'image', '2021-07-19 09:28:37', '2021-07-19 09:28:37', NULL),
(426, '4dF9NzaxJssE9PyUF1Ojpt6m8XqUrs1Yvtxjmepg', 'uploads/all/ZvL9v0AsQJ5OFhL5QoEPRiYQ6g5O5dj16zi96VP0.jpg', 19, 7486, 'jpg', 'image', '2021-07-19 09:28:37', '2021-07-19 09:28:37', NULL),
(427, 'SNmkLyYhOPgFaGAZ6TFzj8U920xAqSBHM4Db48Bs', 'uploads/all/ckFwo6ycuAr9W5DKH0U2CIJrriKl8dmKvlhGhqDi.jpg', 19, 20464, 'jpg', 'image', '2021-07-19 09:28:37', '2021-07-19 09:28:37', NULL),
(428, 'JK8Ca3NaoFztQLSZVVi5Dq6lOrPv7o6FHyzGc2a4', 'uploads/all/o2Uk7QbSqhUqDZTHv2WYqLdSicLJJNAeUkAeLD5m.jpg', 19, 22571, 'jpg', 'image', '2021-07-19 09:28:37', '2021-07-19 09:28:37', NULL),
(429, 'XSQ3IabWLjl4EsZiewU8a5CANwSiQV5kWhv3hxWj', 'uploads/all/EZs18E8NAl07l3aoD6eAQpvzNlfebhPXI3JAN2L2.jpg', 19, 21346, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(430, 'u7FJFRawXqWpSuu9uPtruUvUn1Q0mdOV3BaZ5cTc', 'uploads/all/6guSNONOwDAvbHI25b5RK3VKi1DCcC3MAMbXZu98.jpg', 19, 60044, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(431, 'kU2TFk8dkEzMdoFQpnrDtrkH9khsiejbqT9NTMj3', 'uploads/all/Opfp6C2Uwa0YfJUC7x9eWVNyMvRkmyHTEXr1G2Qx.jpg', 19, 58531, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(432, '5vbSOpcO0ZiRs4IH9x9KInHbswuvSKUUFpvWOg27', 'uploads/all/2zPU1zT1rHuuQCIfBmZLpjh4lSjTCf92Gi8tUAZ5.jpg', 19, 23206, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(433, 'siL6NZIKJwNNn1BtkSoFSkkKq4AxuD4xsKSEvClM', 'uploads/all/WbIYZa0f7G2eICnk7wxz5y9dQQUTcWtss2oM87b1.jpg', 19, 45462, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(434, 'vgI0FDU1gvnUBU9uY1NwewPxEwP18maaO9WcPkuI', 'uploads/all/zieTysi5J2KhSFO6TYWDIOmAHqL6eKfwmpt5DmEk.jpg', 19, 17537, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(435, 'WEJ1vbqynT7txzqZwmleqgm0WQHTTcyFA7cv5JxS', 'uploads/all/x2jNPvmJwVm7svuT4JEed4AfaNAVgDBmIKTS44xj.jpg', 19, 26008, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(436, 'VDyAmMzJZ1LxGYoaOtF4BNvKWh3hRklQNhlHUQTr', 'uploads/all/d7ujE0OvU9pe4WQYq33fKhpa9wNFe2cg4a0gpRDo.jpg', 19, 63596, 'jpg', 'image', '2021-07-19 09:28:39', '2021-07-19 09:28:39', NULL),
(437, 'gsyjRUWN7hj0tBsBT4Rxw0LMfCL8bQdWZV2WHG6o', 'uploads/all/CcE1NEZptKDYFHWSDsntmG3NzasH6fFs6KZ1hmRS.jpg', 19, 30879, 'jpg', 'image', '2021-07-19 09:28:42', '2021-07-19 09:28:42', NULL),
(438, 'xikeKxVK8NozN49JlenyPOEuZ11LpPNbNMKD0zEl', 'uploads/all/RzjtR4Kbu5wadpY8W3BlyEtGwG1Y8qsBNn6HXEwu.jpg', 19, 10130, 'jpg', 'image', '2021-07-19 09:28:42', '2021-07-19 09:28:42', NULL),
(439, 'jZA0U1ebaZ9HkQqsL6ymorDExLO0ZAZOTs0F8btW', 'uploads/all/5NVc1FQ2FeMMmT5PiOM4glCb5nYYfIl6viS202H3.jpg', 19, 28508, 'jpg', 'image', '2021-07-19 09:28:42', '2021-07-19 09:28:42', NULL),
(440, 'bmI9uMXTx8VJT26NW2nzi9ni2IniZLuW1oRF5EMm', 'uploads/all/dkceqOc8Ow7fWiWsizRqIH4KQVy1SivTHLGoMWv8.jpg', 19, 30358, 'jpg', 'image', '2021-07-19 09:28:42', '2021-07-19 09:28:42', NULL),
(441, 'oW1AqrJ3LTno36jgxah5lkTIEe7PZs7wayTS48lP', 'uploads/all/YfZxInDO3PhKOHQrG89LRuw9LFhbvO2UDS23yRos.jpg', 19, 25569, 'jpg', 'image', '2021-07-19 09:28:42', '2021-07-19 09:28:42', NULL),
(442, '7fuPjyh2lerFzHn6gfkTPiCxcK4ZLYG4VbDaK3k8', 'uploads/all/omf8HbMO92YDV7oaOrVyHfWJCeTZYSMPxqyYxoZK.jpg', 19, 33341, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(443, '4g4uh9WYDDPzUO52ch39YwlZJldgq80qvlGtQW45', 'uploads/all/SI1NKRyfr2w7GQj2RCf3Qik43dfX9PLWdk2kcm2G.jpg', 19, 13820, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(444, '2B5Fc6Rcbj9hmvuX9mGHzOKSZeROnLDapmqExttc', 'uploads/all/ZQ3lyrRO4LK2G74gzcjppre2PWwf47jfl1gAO1jW.jpg', 19, 34020, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(445, '8LSlaNTvZXOoTMZJX2gutx7dM7n6r5RK19R70NRP', 'uploads/all/2gLLXksPT0bnEEKF0OwhLJQvhk47A5t0VyUbYF58.jpg', 19, 6046, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(446, 'EnfoK6Fi5kZub25RCAzBTKD9FYPQAKAm47YaB1d1', 'uploads/all/hlbg5ogeqfiPafutBWGMgaI4T8hjrrblznIufW7P.jpg', 19, 46985, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(447, 'AtFA5RCe159E9fPsleFzSX4syAhcv8rXLnsPbbCU', 'uploads/all/6TPuUW46Af7NuTcULDjRsBMe7ky0eJn62XtR1ql6.jpg', 19, 26038, 'jpg', 'image', '2021-07-19 09:28:43', '2021-07-19 09:28:43', NULL),
(448, 'BpGolI9YxG7IfLjFklivkJMH4CM9lnbEpSA9jgAw', 'uploads/all/TZKalwB0K0l28fM44T1ekGBOuFYV7X8enxZOuQtJ.jpg', 19, 34287, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(449, 'XK6Xd6eLBWAx6hfM5uDBDedQU39KKbSgsayxGDCU', 'uploads/all/fIuhGRmAsAhoBBawEFQj9zYeVGRn0Msny8IQ6QTw.jpg', 19, 25652, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(450, 'HwMu4nuta8TZ0iGLHPRyOlyKxurqChZ87pkuQ9eD', 'uploads/all/FVRIhxvmka8afSC9xiN0hdSD4ARytOBBrpzVT8pW.jpg', 19, 41341, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(451, '0s2MpNlgAaxnXppAewSQy0MBDnxK82wzaJeEW8Op', 'uploads/all/IqzvD5mVOrUQvwXMoxkISGbJXWlbjC0l0JcYRBRT.jpg', 19, 18286, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(452, 'ICDBGqxOrftSxZOZgwsNE2vhU1LI61Dk1pkLt9QI', 'uploads/all/1PUD3Zik9C2MltSlP3YSvI7qwr0nzoMZe1ecbt5T.jpg', 19, 30177, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(453, 'pdAs8okFg8tDTgONiycbmySbqEr17Z1lTjmrChwf', 'uploads/all/uuV86LnsaCjJUXSrvy0dmF9xCAmcodyDZl6ypHVl.jpg', 19, 23682, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(454, 'oEn92MS8eVUvNeYr2c3j653BXlETtAavl6FTU7Iy', 'uploads/all/GD1aUGrSBEF3yQlMLBeTK8t0dLdVp8VjP63EOCul.jpg', 19, 27423, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(455, 'qy5q7Z3Sl1xSt0g3OP2esdHRPgLbz6l4xvxC9kVV', 'uploads/all/wtgZKCnOhIFcWbEn0lxS5z1pXU8YMssJ0Y9ud2pQ.jpg', 19, 21191, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(456, 'OuNLLZHwDLFqYp6xZiybHza6iFN3YHcIlldF9lRY', 'uploads/all/vGvM2BXiH73mkQOdXwvKKwVVONAnyFyRqGUJ2LLH.jpg', 19, 40270, 'jpg', 'image', '2021-07-19 09:28:44', '2021-07-19 09:28:44', NULL),
(457, 'KmvY1267eJ4fLW1Gn5RJsQk1VV8cbBjwu6xF3vuh', 'uploads/all/PbiyqV3Syr6HAtvR8DZP8gNSSWSG1xyMjPhFjzPD.jpg', 19, 22955, 'jpg', 'image', '2021-07-19 09:28:45', '2021-07-19 09:28:45', NULL),
(458, 'SMbh0vehfQWUhTHKacTOVgNDBXHJ36Bhw89JEvJr', 'uploads/all/mdTAusXsXsq3j38anTUm56nWATfhdV9JBsyQmAL3.jpg', 19, 49250, 'jpg', 'image', '2021-07-19 09:28:45', '2021-07-19 09:28:45', NULL),
(459, 'zEvM44j9SHTOSq1Z1XT6DC0DZtH36eAMD2nCkIJV', 'uploads/all/d0BoiLN3vdHfTRGy2P26uo4aMLvDpbqwfYtcVoeb.jpg', 19, 16527, 'jpg', 'image', '2021-07-19 09:28:50', '2021-07-19 09:28:50', NULL),
(460, 'WTxrzbVV3ZGBpRcwEZN9e2vj5KrbrEMl3n4lxfft', 'uploads/all/7G4WK6x1ozhCWh095xitEKQKVKN6Z7mLnA5bvHMW.jpg', 19, 38768, 'jpg', 'image', '2021-07-19 09:28:50', '2021-07-19 09:28:50', NULL),
(461, 'pvE57U7ZAe0W8MJism4512hcozV0JRhH2gHDKsww', 'uploads/all/3EPBA8knHNzb0mHWYnSwUtsjT7cIcPHu34h3Y53P.jpg', 19, 62470, 'jpg', 'image', '2021-07-19 09:28:51', '2021-07-19 09:28:51', NULL),
(462, '6IwegTgNaRfCt8sXnBVovfg1LIQdc07peEKtMKOU', 'uploads/all/5ZYINlPRfHPlti5dKHaWe6KqP9dg6lE5me9NvUPT.jpg', 19, 14423, 'jpg', 'image', '2021-07-19 09:28:53', '2021-07-19 09:28:53', NULL),
(463, 'XerYGzvHE40c8ZD7gCNOcCgn9LBNjjhw3tpNEglG', 'uploads/all/0J9Xf9N8TijsmqBHrT3Tm6NWwYIqgeEUsNI4Yeok.jpg', 19, 23217, 'jpg', 'image', '2021-07-19 09:28:53', '2021-07-19 09:28:53', NULL),
(464, 'xur2jqbO5PVDxv4ouKQjC2AVfI7GxGm80SUtiCU0', 'uploads/all/nz3OZyZYtW4Aas5NTPFL5Jj8ziwNFGCUfN4CGb34.jpg', 19, 25329, 'jpg', 'image', '2021-07-19 09:28:53', '2021-07-19 09:28:53', NULL),
(465, 'QMIC2JjZlWKSf1Qx0XpGmgTKAtfbhjkqK9PbtwJK', 'uploads/all/mLTr6Dok7F11XuEw377ifhXbU7pTZvYLS5CTB8o5.jpg', 19, 26957, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(466, 'KIKYA5sWfvL2XXuuIqxjOX25gUNwK6fRlTq2jTkY', 'uploads/all/uc61JUaz457H99KRvm8Qa5II6qcBwhI23RAYfMDN.jpg', 19, 18517, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(467, '9AP2UwPisud7CMzkDh100gk6v3E2XT86JBjpqoi3', 'uploads/all/dXTUuMIOSzydtO5zPwSm1ub44tzQIo4BPRh285Ei.jpg', 19, 30189, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(468, 'HyY1exL2uoL2FcfXvJgnnoH4oCvTaHt6AAiabTdZ', 'uploads/all/ARyzxRaPmocg31uTkuTLeB1ZbJYc1hT0C793L8Kz.jpg', 19, 109521, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(469, 'AqYJm9rY7EB0IlXrAy2RPPdW7ZPVwNpjUvgK4qos', 'uploads/all/XPK4tEZJWnHhqkWhoiDKqhdUY95h66gETXGvTgg8.jpg', 19, 29143, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(470, 'mdic6N8GXagI07CCwb1OEMwyK5TEbUuvEsRyRPpz', 'uploads/all/4D8KPSM7eNyc82qiE0OrcuTIc0sVIbzy4zdNlHB1.jpg', 19, 16890, 'jpg', 'image', '2021-07-19 09:28:54', '2021-07-19 09:28:54', NULL),
(471, 'GkDt7mMqLqx4U8ylvFS6ZGZBZymrbJ7WMwDQXQLT', 'uploads/all/dlL9IccHY02uaAkS8IlocViNDa0nDydzliCIE5Eh.jpg', 19, 30377, 'jpg', 'image', '2021-07-19 09:28:56', '2021-07-19 09:28:56', NULL),
(472, 'HL2m4feqw7bBPpeuVAdh119KB9hPO27WKFuckqnP', 'uploads/all/KaLvb0NXHyTwG4Qt1tKUTjTJD9eGPwU7mp7lvhcU.jpg', 19, 23040, 'jpg', 'image', '2021-07-19 09:28:56', '2021-07-19 09:28:56', NULL),
(473, '7VEk4pP0YMR4Fm2LTxVNvI9j00Ow9rf6KOjgIJTR', 'uploads/all/DAznAKqwGI2RUnJilb38Eg0cX1jVvov8PvbWLobn.jpg', 19, 28130, 'jpg', 'image', '2021-07-19 09:28:56', '2021-07-19 09:28:56', NULL),
(474, 'r1Yn4SSSmiIaHI7s4qKoHpy6Neh1gpZGTGHYprhT', 'uploads/all/AvpAts6R3OgpLtPvmzPHgNVhpZfpNHd6xRsh84FW.jpg', 19, 2965, 'jpg', 'image', '2021-07-19 09:28:56', '2021-07-19 09:28:56', NULL),
(475, 'DrofKDrMivXkgzTAcjQLqg0Cvyoe0pZ0Fqm0uUGn', 'uploads/all/9kjYoouYOKiinypCUmHq9B9wHSUKRgi3ryDnEr6S.jpg', 19, 22614, 'jpg', 'image', '2021-07-19 09:28:56', '2021-07-19 09:28:56', NULL),
(476, 'vZz8UPbbkLAVp170UUssz3xJPTatRkWbuaHBbvKn', 'uploads/all/yCu0h24LDe5giUbx2qx5uDU14OF95VFgpHWemy5j.jpg', 19, 40104, 'jpg', 'image', '2021-07-19 09:28:57', '2021-07-19 09:28:57', NULL),
(477, 'cwAsWAhHzf0enz0Z2pHtAsrbncr5AepcKJBwPFPP', 'uploads/all/ae981WCw23nQ1Uclw6ZxSdxv5g8n33tcmf9U3PxK.jpg', 19, 56646, 'jpg', 'image', '2021-07-19 09:28:58', '2021-07-19 09:28:58', NULL),
(478, 'nQZ0tc0LrKuxS78Pdx3VzUxtpU5h9lBFHwyKMESZ', 'uploads/all/9FCpVi9EyTkGu4gNqxu58Posk3lyigEJTMBkgQuM.jpg', 19, 64775, 'jpg', 'image', '2021-07-19 09:28:59', '2021-07-19 09:28:59', NULL),
(479, '6OLwSe0L2p7kw67Em5NmUhOLKPYTnEMbVXKzAQxQ', 'uploads/all/CEdIDLhr0kYRGjDG19wCPgoTOMMeqxWQZLTwpfYB.jpg', 19, 160036, 'jpg', 'image', '2021-07-19 09:29:07', '2021-07-19 09:29:07', NULL),
(480, 'hTjpd39drX6hlyqIOW61kZ0rahblVmCcMdDnTiSj', 'uploads/all/nkPc9jnSELXtaz0xs70JXWbvujZudFadeOsaFn9x.jpg', 19, 70380, 'jpg', 'image', '2021-07-19 09:29:07', '2021-07-19 09:29:07', NULL),
(481, 'WyMgd6mavPakoqCsEiyxrXtxLaTIIGw49v6HYv3j', 'uploads/all/9j4ja4TpvUM1iXaCeAHkLiz7I8yLimrJEyGG3oyb.jpg', 19, 49846, 'jpg', 'image', '2021-07-19 09:29:24', '2021-07-19 09:29:24', NULL),
(482, '4dF9NzaxJssE9PyUF1Ojpt6m8XqUrs1Yvtxjmepg', 'uploads/all/IGJfDqItpTF2VOr34Lfi8D6j2zF3vwrB0lfsJLeH.jpg', 19, 7486, 'jpg', 'image', '2021-07-19 09:29:24', '2021-07-19 09:29:24', NULL),
(483, 'BI5b0HAlKTdnOpBlF5rrhxqWHKEPVQ9FWeLHFKXU', 'uploads/all/8BIFBVM0i8T5RvtOltyfWUNmPhMUoKaJ2yZzGpyD.jpg', 19, 36534, 'jpg', 'image', '2021-07-19 09:29:25', '2021-07-19 09:29:25', NULL),
(484, 'CEEb24eEHY6lm7ET2x4HTUpVgcRs6hAnyTMAM95V', 'uploads/all/Pzda6ghL8Pu8XqUOH6b8wFttpsqQCQnFp90otMll.jpg', 19, 41188, 'jpg', 'image', '2021-07-19 09:29:25', '2021-07-19 09:29:25', NULL),
(485, 'TypluPHrVzpOX17UpbyR96a1j9rAG9jQPJ6EygqE', 'uploads/all/MHScs8J6Hw1d8WyJSQpLWtF6wkp7EI0Ut2P4n6wj.jpg', 19, 10749, 'jpg', 'image', '2021-07-19 09:29:26', '2021-07-19 09:29:26', NULL),
(486, '6nn2eQy6Vz44dEczlYHg3dnmIKerVsEUsk7WYWOW', 'uploads/all/m48feWx5XFTSU6hwR0ICtiZEfRkAFKREFXPsSEh5.jpg', 19, 63738, 'jpg', 'image', '2021-07-19 09:29:26', '2021-07-19 09:29:26', NULL),
(487, 'SNmkLyYhOPgFaGAZ6TFzj8U920xAqSBHM4Db48Bs', 'uploads/all/IIW4BRn6DhaRIysEg3tYiBJHAOGz28c0QjMpe6mz.jpg', 19, 20464, 'jpg', 'image', '2021-07-19 09:29:26', '2021-07-19 09:29:26', NULL),
(488, 'M79PKBWH7CLs9M3FGOkaXTGemEgJWN3CXdWgLYvN', 'uploads/all/kICHEXSUWm1uD5Xp0w0VxtugiB76fxtvuSRWypsG.jpg', 19, 26442, 'jpg', 'image', '2021-07-19 09:29:26', '2021-07-19 09:29:26', NULL),
(489, '8lbZLKYhsBX0w2iT0u3OAPhSEbsJAHm95LlAjCcM', 'uploads/all/FdQYQTI39CR7iCw6bJdvxjRGDV2jGwvWiDxeiItR.jpg', 19, 46169, 'jpg', 'image', '2021-07-19 09:29:26', '2021-07-19 09:29:26', NULL),
(490, 'jaJeBMBynuIWF1gltVrkOO8mcfwDnbahsz5odsG3', 'uploads/all/Ix6xNfOPl6RynR0EDdlwqOVwqyiU5sb4dFrii29v.jpg', 19, 92404, 'jpg', 'image', '2021-07-19 09:30:27', '2021-07-19 09:30:27', NULL),
(491, 'B0rD4D8TLzT3PZ9SPQzIzmSVD2hR2OWTcji495z1', 'uploads/all/7mNtQe9gMffA5GDz1VkXPwHM4v3dAZmwvYZjkPnX.jpg', 19, 87800, 'jpg', 'image', '2021-07-19 09:30:27', '2021-07-19 09:30:27', NULL),
(492, 'UIgPGCXGds8T27myomLibN61XMtCSejbnPSZNdGn', 'uploads/all/9YK9A2LdWvAIqV8ABhbmH859aBwWrl3W81u8XE1D.jpg', 19, 67110, 'jpg', 'image', '2021-07-19 09:30:27', '2021-07-19 09:30:27', NULL),
(493, 'eWFLsFHyUAasNn4DJWL7xHpVwHWmxnyA0at9hVdf', 'uploads/all/3oWHoHvfd7PMXDf7J99GQe7mvVKZdx4fXVLW2UPN.jpg', 19, 67297, 'jpg', 'image', '2021-07-19 09:30:27', '2021-07-19 09:30:27', NULL),
(494, 'dnRUwMFREaUtU5YPHTpgl81BsSUUMySa1hrUUhGI', 'uploads/all/u1T4081AhfGYXSSENeI7DluTezddTBz0hUZYQiEq.jpg', 19, 91388, 'jpg', 'image', '2021-07-19 09:30:28', '2021-07-19 09:30:28', NULL),
(495, 'UY8LSuaa74nrQaWz3o2ehb3JuSYKgT7waBPPSZ1s', 'uploads/all/NowpBsQiZCTAWowRpZKTK657OPTvW9cQ76fpPLDJ.jpg', 19, 103039, 'jpg', 'image', '2021-07-19 09:30:28', '2021-07-19 09:30:28', NULL),
(496, 'CEEb24eEHY6lm7ET2x4HTUpVgcRs6hAnyTMAM95V', 'uploads/all/5FPaCE7yuNgitEsdSsFvYnLLpiPYbOSW0fCBjX01.jpg', 19, 41188, 'jpg', 'image', '2021-07-19 09:31:08', '2021-07-19 09:31:08', NULL),
(497, 'BI5b0HAlKTdnOpBlF5rrhxqWHKEPVQ9FWeLHFKXU', 'uploads/all/ALgR8OUuuHJUlvQtEtDnOnpIe3eQPGsBIiX9FT9o.jpg', 19, 36534, 'jpg', 'image', '2021-07-19 09:31:08', '2021-07-19 09:31:08', NULL),
(498, 'TypluPHrVzpOX17UpbyR96a1j9rAG9jQPJ6EygqE', 'uploads/all/IZlLf9pzjIFfFSN1ad3zDSZTN46QnnrboVfQ1B93.jpg', 19, 10749, 'jpg', 'image', '2021-07-19 09:31:09', '2021-07-19 09:31:09', NULL),
(499, '4dF9NzaxJssE9PyUF1Ojpt6m8XqUrs1Yvtxjmepg', 'uploads/all/28ct468V4986VhVDAS6zhZbkyjYgtaBbPQsksmdV.jpg', 19, 7486, 'jpg', 'image', '2021-07-19 09:31:09', '2021-07-19 09:31:09', NULL),
(500, '8lbZLKYhsBX0w2iT0u3OAPhSEbsJAHm95LlAjCcM', 'uploads/all/I7uOAdrOvdMIrzvmYFsD2vv5QomSshA1K49t4yyJ.jpg', 19, 46169, 'jpg', 'image', '2021-07-19 09:31:09', '2021-07-19 09:31:09', NULL),
(501, 'M79PKBWH7CLs9M3FGOkaXTGemEgJWN3CXdWgLYvN', 'uploads/all/58BlPOhtvNUxFe4mlceR5MOJAQfGEp0WttTaxCVl.jpg', 19, 26442, 'jpg', 'image', '2021-07-19 09:31:09', '2021-07-19 09:31:09', NULL),
(502, 'SNmkLyYhOPgFaGAZ6TFzj8U920xAqSBHM4Db48Bs', 'uploads/all/J9zCYY2lk4k323bwiwipXQImUgWig5UcLmcqQwVh.jpg', 19, 20464, 'jpg', 'image', '2021-07-19 09:31:09', '2021-07-19 09:31:09', NULL),
(503, '6nn2eQy6Vz44dEczlYHg3dnmIKerVsEUsk7WYWOW', 'uploads/all/N2qizRse1TW378OzN93peG4weMe9obRRMcsjNCDx.jpg', 19, 63738, 'jpg', 'image', '2021-07-19 09:31:15', '2021-07-19 09:31:15', NULL),
(504, 'WyMgd6mavPakoqCsEiyxrXtxLaTIIGw49v6HYv3j', 'uploads/all/NNbqPa48Mk307Q0lwKzdnPMuHc9jnufeQaTtOR7r.jpg', 19, 49846, 'jpg', 'image', '2021-07-19 09:31:15', '2021-07-19 09:31:15', NULL),
(505, 'vn47O8HfM4Emb6BVT0v10q3LkMpJ2xtQQOsrIVTg', 'uploads/all/g5j5oTBCXVkT2n8hqMStJW62JPDUBNn98uLlavPC.jpg', 19, 110612, 'jpg', 'image', '2021-07-19 09:31:38', '2021-07-19 09:31:38', NULL),
(506, 'UgXH1pZln7NRMyeV97taLuBSqM6ObAAPjBXTt0zn', 'uploads/all/AHlF36kSGA8L5hYzjvSWOZz3lDVZKzV5qgJFvTpa.jpg', 19, 360941, 'jpg', 'image', '2021-07-19 09:31:40', '2021-07-19 09:31:40', NULL),
(507, '8lbZLKYhsBX0w2iT0u3OAPhSEbsJAHm95LlAjCcM', 'uploads/all/Qrig6Pgzl8mL68bTTicwgy6py4M3Z0URok2FMnbx.jpg', 19, 46169, 'jpg', 'image', '2021-07-19 09:32:14', '2021-07-19 09:32:14', NULL),
(508, 'M79PKBWH7CLs9M3FGOkaXTGemEgJWN3CXdWgLYvN', 'uploads/all/Q74ARis6xkhtUJhaFBxQ0XPtsiEmU3rY9H4c6EBw.jpg', 19, 26442, 'jpg', 'image', '2021-07-19 09:32:16', '2021-07-19 09:32:16', NULL),
(509, 'CEEb24eEHY6lm7ET2x4HTUpVgcRs6hAnyTMAM95V', 'uploads/all/U8I3cnPaeTcPjVOejyHHIAvHs5sGA6v5RGotw2Iw.jpg', 19, 41188, 'jpg', 'image', '2021-07-19 09:32:37', '2021-07-19 09:32:37', NULL),
(510, 'SNmkLyYhOPgFaGAZ6TFzj8U920xAqSBHM4Db48Bs', 'uploads/all/gtk7rmMGhLm0dVH17kHtDREX0NXQ4JbCN2z6ZiTr.jpg', 19, 20464, 'jpg', 'image', '2021-07-19 09:32:38', '2021-07-19 09:32:38', NULL),
(511, '4dF9NzaxJssE9PyUF1Ojpt6m8XqUrs1Yvtxjmepg', 'uploads/all/f3dgZrNdp8svJIp9MU8jaIElYjAyRJkIGP3w590k.jpg', 19, 7486, 'jpg', 'image', '2021-07-19 09:32:38', '2021-07-19 09:32:38', NULL),
(512, 'TypluPHrVzpOX17UpbyR96a1j9rAG9jQPJ6EygqE', 'uploads/all/gexhQ7B3WlB3am0XIxO9yVoHUWciUQHyE6eLfcSl.jpg', 19, 10749, 'jpg', 'image', '2021-07-19 09:32:38', '2021-07-19 09:32:38', NULL),
(513, 'BI5b0HAlKTdnOpBlF5rrhxqWHKEPVQ9FWeLHFKXU', 'uploads/all/5UzaMHIShkCafK7Vorew1gdLhBjPfccEnwxqQaCc.jpg', 19, 36534, 'jpg', 'image', '2021-07-19 09:32:39', '2021-07-19 09:32:39', NULL),
(514, 'WyMgd6mavPakoqCsEiyxrXtxLaTIIGw49v6HYv3j', 'uploads/all/BbFnATMSzJzOtcCdRHsG0z3wxGYhxPo40XBY5S0t.jpg', 19, 49846, 'jpg', 'image', '2021-07-19 09:32:43', '2021-07-19 09:32:43', NULL),
(515, '6nn2eQy6Vz44dEczlYHg3dnmIKerVsEUsk7WYWOW', 'uploads/all/NBwreMDCQAeNEWb9eJpRN62Qv8UmP0t4MKsTgR12.jpg', 19, 63738, 'jpg', 'image', '2021-07-19 09:32:45', '2021-07-19 09:32:45', NULL),
(516, 'eWFLsFHyUAasNn4DJWL7xHpVwHWmxnyA0at9hVdf', 'uploads/all/vcwBj5i8DuJs3nH0DxerJKMrLOLw5wlxy4CGA9hr.jpg', 19, 67297, 'jpg', 'image', '2021-07-19 09:32:47', '2021-07-19 09:32:47', NULL),
(517, 'UIgPGCXGds8T27myomLibN61XMtCSejbnPSZNdGn', 'uploads/all/H7Uo8SBgI5jAKTkhzCYpvmUty7dNTQqXrLGG7drh.jpg', 19, 67110, 'jpg', 'image', '2021-07-19 09:32:48', '2021-07-19 09:32:48', NULL),
(518, 'hTjpd39drX6hlyqIOW61kZ0rahblVmCcMdDnTiSj', 'uploads/all/j0GdQQMMmN92GyQAiV0YnqMcMkee1Vp1r0wBhAw9.jpg', 19, 70380, 'jpg', 'image', '2021-07-19 09:32:49', '2021-07-19 09:32:49', NULL),
(519, 'B0rD4D8TLzT3PZ9SPQzIzmSVD2hR2OWTcji495z1', 'uploads/all/SQicA0KNuy3mXbZHUPJLScrcWVoBG9evI6pavDhD.jpg', 19, 87800, 'jpg', 'image', '2021-07-19 09:32:50', '2021-07-19 09:32:50', NULL),
(520, 'jaJeBMBynuIWF1gltVrkOO8mcfwDnbahsz5odsG3', 'uploads/all/H1qqYTfDj1iTiDHhvnUdoIZOqaNPuUGWPx53dB6b.jpg', 19, 92404, 'jpg', 'image', '2021-07-19 09:32:51', '2021-07-19 09:32:51', NULL),
(521, 'dnRUwMFREaUtU5YPHTpgl81BsSUUMySa1hrUUhGI', 'uploads/all/VItNrl7L56xxsFsOuFa6zRoFL5Fyf4HU4UqxLPrh.jpg', 19, 91388, 'jpg', 'image', '2021-07-19 09:32:51', '2021-07-19 09:32:51', NULL),
(522, 'UY8LSuaa74nrQaWz3o2ehb3JuSYKgT7waBPPSZ1s', 'uploads/all/7zqed6ExPn9OuPhaqw0APLrurNQOc5130f50WAdz.jpg', 19, 103039, 'jpg', 'image', '2021-07-19 09:32:53', '2021-07-19 09:32:53', NULL),
(523, '0IAxVTfwfuV96olI0J7FOOdTEAZF98xwPti7i2t2', 'uploads/all/P3PadjBSyvVPuwLAASmm0rFUkLRhN8w6rza1x6QC.jpg', 19, 298799, 'jpg', 'image', '2021-07-19 09:33:03', '2021-07-19 09:33:03', NULL),
(524, 'p8GhiA06DzKIeyhGRc2ID4Zd6aycd11fDumKh8VJ', 'uploads/all/bIHvEIXqihGExNJP7A9WnroHjOM8no3uRHq4t4cC.png', 19, 350470, 'png', 'image', '2021-07-19 09:33:05', '2021-07-19 09:33:05', NULL),
(525, 'TLs74YsYDL0f7dTEc6XuWoUpeXYzlYeOzBO6rMJT', 'uploads/all/Bdn0f4APcs2rFYXhJR0eHyM3ALs16s1L25x681es.png', 19, 407160, 'png', 'image', '2021-07-19 09:33:07', '2021-07-19 09:33:07', NULL),
(526, 'R1zJeY0HCODANwgaNQSWMClwdm7YIL5HvMuqR90I', 'uploads/all/LCPlGxknkcFUwOrVpOGa7H2vNdfstehjFWa0zSmT.png', 19, 659909, 'png', 'image', '2021-07-19 09:33:09', '2021-07-19 09:33:09', NULL),
(527, 'hTjpd39drX6hlyqIOW61kZ0rahblVmCcMdDnTiSj', 'uploads/all/7PcI5NF7lJoaJNI5md4wrHUAz6Rl3NHZYAEAaScq.jpg', 19, 70380, 'jpg', 'image', '2021-07-19 09:34:21', '2021-07-19 09:34:21', NULL),
(528, 'UIgPGCXGds8T27myomLibN61XMtCSejbnPSZNdGn', 'uploads/all/RLSO5nekK1O4uI23uS8MfSUqYFLI6U5UpvPmieYd.jpg', 19, 67110, 'jpg', 'image', '2021-07-19 09:34:22', '2021-07-19 09:34:22', NULL),
(529, 'C6dS79Y9z4vvHG9ZHtFh2AwMP11TlBR8gRQCpuuB', 'uploads/all/Kl5ZfU7M3Vk8I2hwlO2hrmezi0DzQQ7hJwbsw5OP.jpg', 19, 262109, 'jpg', 'image', '2021-07-19 09:34:23', '2021-07-19 09:34:23', NULL),
(530, 'iLa34GNtRumAeOcW9k8GPSYzWbiL7FO89iRvzOFY', 'uploads/all/4TUd4tP2RPf5TSEkS8gqusY2I2eUclf2DeqwfrCG.jpg', 19, 265536, 'jpg', 'image', '2021-07-19 09:34:24', '2021-07-19 09:34:24', NULL),
(531, 'kakebe theme logo', 'uploads/all/pPAYoGYVuZMnTLvqXwcqVREUoMTJh1Okzwugq5LB.png', 19, 26968, 'png', 'image', '2021-07-19 09:36:40', '2021-07-19 09:36:40', NULL),
(532, '3okSpmRVYAxJ9CX31mD1819DAy9tbNiQy5Hqy0TH', 'uploads/all/Myj0Elvx2KPTZqS8ITkQrbBKtVUj7kSZzRFXzbNG.png', 19, 47434, 'png', 'image', '2021-07-19 09:39:03', '2021-07-19 09:39:03', NULL),
(533, '6xUoXfHJ4Bn1GxUya8cxGDNLYUvcXjMle6xhyyoA', 'uploads/all/lxzya5F45eMBJtizdU859RbWvY8i1rLCmLxcHD12.png', 19, 18102, 'png', 'image', '2021-07-19 09:39:11', '2021-07-19 09:39:11', NULL),
(534, 'Bi58uqrSuLTSHKDVz3xGCwQ36BwubzsexJst5Hav', 'uploads/all/ONRrhxjS2ZzBqnp37DQvgbApZAOaB3Z8euf686gQ.png', 19, 781, 'png', 'image', '2021-07-19 09:39:14', '2021-07-19 09:39:14', NULL),
(535, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/kcnWd19sPyqzxy8lhmRpqpRJqNHIr3yyW4ViDgIn.png', 19, 236, 'png', 'image', '2021-07-19 09:39:14', '2021-07-19 09:39:14', NULL),
(536, 'BLWDcxaEfBvtF665yxaBDUOb3cLUMtyKxqyQWBGA', 'uploads/all/ysqrneiOjwcnpHHuuvduNsua4bvt19RWacA0XKyV.png', 19, 6805, 'png', 'image', '2021-07-19 09:39:14', '2021-07-19 09:39:14', NULL),
(537, 'aY8qgCAiGjCO17YvD1sByIaCPVSbwvmkZerkRtTm', 'uploads/all/rDIESLcZvkJuiROP4mbm7ti52eWlTaznvm9v4zXt.png', 19, 7250, 'png', 'image', '2021-07-19 09:39:14', '2021-07-19 09:39:14', NULL),
(538, 'dfhN5dkp9lee77A4ooXRmFG7n8KaC5bqffBfwh5n', 'uploads/all/j8LTsTCsn1dOyF1p4mY2Uop0d8FVdNv8HvLhURDM.png', 19, 532, 'png', 'image', '2021-07-19 09:39:15', '2021-07-19 09:39:15', NULL),
(539, 'eyPVwinQutjpf55IbsrhNPcwqX7sd9oBmPNIP4Wt', 'uploads/all/MbiXa37jVAth5y5klSpL1fbr9iGlj3NBrk7tVi2Y.png', 19, 867, 'png', 'image', '2021-07-19 09:39:16', '2021-07-19 09:39:16', NULL),
(540, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/Tp4eT5iQmxg1Ef3AXYHPs74mIMbA1o90LAuXw59A.png', 19, 1112, 'png', 'image', '2021-07-19 09:39:18', '2021-07-19 09:39:18', NULL),
(541, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/dTpmr7ZXWugJIs0fx8YrRRIfA1aVOviInDy5iYYU.png', 19, 1106, 'png', 'image', '2021-07-19 09:39:19', '2021-07-19 09:39:19', NULL),
(542, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/T2LtwjwFkcTbNIDIsK0oztnZdPf0wb3Nef5Oexb1.png', 19, 15303, 'png', 'image', '2021-07-19 09:39:19', '2021-07-19 09:39:19', NULL),
(543, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/7pUo6FvmreFKjw55a30sShzfkBvTkENqJOH6mcbH.png', 19, 1342, 'png', 'image', '2021-07-19 09:39:21', '2021-07-19 09:39:21', NULL),
(544, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/YtpxAwpzw06cJCbbXOeVFSLG1ucpo04QWkD2Y92B.png', 19, 26508, 'png', 'image', '2021-07-19 09:39:29', '2021-07-19 09:39:29', NULL),
(545, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/uhUtCDCEjk04o1gbz8SauXzevA7U0LatojFLRDDR.png', 19, 30058, 'png', 'image', '2021-07-19 09:39:29', '2021-07-19 09:39:29', NULL),
(546, 'DpzHOOANRPNIuShUQgazTQKkjioUGp7RPqGRdFCF', 'uploads/all/Ce6l0oX8f0EQBwF64Ent6kWi1buM7A9uIK2DxPLy.png', 19, 20592, 'png', 'image', '2021-07-19 09:39:29', '2021-07-19 09:39:29', NULL),
(547, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/u1jNylZB2RHiLBWcbLFWbTPlL06m3dBAT5wAvMiQ.png', 19, 22003, 'png', 'image', '2021-07-19 09:39:31', '2021-07-19 09:39:31', NULL),
(548, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/p2u9uzCCBvy99aiNF0cp4GcFWq0lh74lu6ZP4qK3.png', 19, 43786, 'png', 'image', '2021-07-19 09:39:39', '2021-07-19 09:39:39', NULL),
(549, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/YN5jVJBAVHqqL3h0pIsXbhyQc3YqypvJXiKoqNIO.png', 19, 37210, 'png', 'image', '2021-07-19 09:39:39', '2021-07-19 09:39:39', NULL);
INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(550, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/v4N2bgTdNFRevFE1BefSDSmtjFMdK4MnMBkp638G.png', 19, 44275, 'png', 'image', '2021-07-19 09:39:42', '2021-07-19 09:39:42', NULL),
(551, 'fFBrTT5JSYWhetTnbV6RjAUnSiD4iIfpEWDQed79', 'uploads/all/18oLLL7e1L0eQDaCoDJD1JuVIGsCN1hZMZdcxLAn.png', 19, 54496, 'png', 'image', '2021-07-19 09:39:47', '2021-07-19 09:39:47', NULL),
(552, 'gna5BBqmjQ8gmUmcxWoOhht4YpTLoDojtrl8nE4B', 'uploads/all/0ffFbnMWXpq1rVVFKySPXcpJ0KJFtptczn3tk8I8.png', 19, 52309, 'png', 'image', '2021-07-19 09:39:47', '2021-07-19 09:39:47', NULL),
(553, 'IBadzBFsQSICK4T5BZGs9GIehT8FYwQjyJ4JPS7n', 'uploads/all/KyPWGQN0GAHCCSZc633F1ygGVVKNTwLIN0AWJ4dv.png', 19, 93667, 'png', 'image', '2021-07-19 09:39:49', '2021-07-19 09:39:49', NULL),
(554, '7oliEtl5OKLFQG0Ay4uvFQ2KNm8Z3suphVtwfABC', 'uploads/all/r7UhvhRhWY5psdL3IWB6QCPgfLvRu8haJYjUjYYP.jpg', 19, 15532, 'jpg', 'image', '2021-07-19 09:40:23', '2021-07-19 09:40:23', NULL),
(555, '9DV2mI1YxNpp2Gu4ZrrdZWKTqr2Bdl7MAVGrhmHc', 'uploads/all/BJ6wzqLVY0PvtTwEk18rnaqg5g9aWyY7ErqfOgmU.png', 19, 6745, 'png', 'image', '2021-07-19 09:40:23', '2021-07-19 09:40:23', NULL),
(556, '7wLi7klvM6ctk0qL96sfVKxdxxXoArNlJtUZK8LX', 'uploads/all/n8HTTlMdMg2HBZG4yuSDdQw2tdckOSxZm4rnFlZF.png', 19, 6745, 'png', 'image', '2021-07-19 09:40:23', '2021-07-19 09:40:23', NULL),
(557, 'At0IiZhSSGQ9Lsk6sFtdIe3ZqMhDc23bCrP1dHWB', 'uploads/all/YVvQzqf5PCqVKW2s4hTtlfKIfTaEr6wmlEN9QQBG.png', 19, 51654, 'png', 'image', '2021-07-19 09:40:23', '2021-07-19 09:40:23', NULL),
(558, 'BRMIkQdouMhKOViU2v9rMG56IWfGu09TwN9sria3', 'uploads/all/FX3IcRsvk2NX7MOJkMnOl4nFkMwRXnxPxS1Q9xYA.png', 19, 26889, 'png', 'image', '2021-07-19 09:40:23', '2021-07-19 09:40:23', NULL),
(559, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/4UdhCHJDzcWIKew9GD2PhKlovOvnFuVANFz1iK1R.png', 19, 26508, 'png', 'image', '2021-07-19 09:40:24', '2021-07-19 09:40:24', NULL),
(560, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/EOKk5z29gZ5HyHnHlmybdLd7ibTPpUmRNC1iXkvu.png', 19, 236, 'png', 'image', '2021-07-19 09:40:24', '2021-07-19 09:40:24', NULL),
(561, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/iDsu5OMmfqrCck39yKMgFs2CFe9QZjqAonOljgvd.png', 19, 30058, 'png', 'image', '2021-07-19 09:40:25', '2021-07-19 09:40:25', NULL),
(562, 'eH3AbI3pZg737aS1lw7F9Bm3znvYA6qoZg4dvR6G', 'uploads/all/bAVL0CmHVI6VzbwvOJGDjhT7vOhFWcQ1xEbSWzlN.jpg', 19, 7431, 'jpg', 'image', '2021-07-19 09:40:25', '2021-07-19 09:40:25', NULL),
(563, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/JhlwE8KXku2XNDXOyaZUeHO0QMnIVcNohR9HhX3E.png', 19, 7250, 'png', 'image', '2021-07-19 09:40:25', '2021-07-19 09:40:25', NULL),
(564, 'ghFf9LHUOeoFoIMmrtKOzwpuHlHa4wQjKC1BkHRG', 'uploads/all/YqaVpZdnDgvNkL6pipora2c3ipIXYMXDX995lKxP.png', 19, 49803, 'png', 'image', '2021-07-19 09:40:26', '2021-07-19 09:40:26', NULL),
(565, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/xRtVuNZCGjfb4cuk1EgpQYUXIHbtxh6p1kxBnCqm.png', 19, 15303, 'png', 'image', '2021-07-19 09:40:26', '2021-07-19 09:40:26', NULL),
(566, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/YuSnEMnwdVAQ6oJL9dvJKfpp3V9z1NS2Rr6IUWZ8.png', 19, 1112, 'png', 'image', '2021-07-19 09:40:31', '2021-07-19 09:40:31', NULL),
(567, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/v0KeP7A4NU7c5e4ElRCmIueZXkvtlIHPwzu2kPDL.png', 19, 1106, 'png', 'image', '2021-07-19 09:40:31', '2021-07-19 09:40:31', NULL),
(568, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/9dXGiF0SxhIie2JTyhoPYdPWFl97myzo3nxi4OfO.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 09:40:32', '2021-07-19 09:40:32', NULL),
(569, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/kWWblHvEJiKQmMQOFOfBqLhh6CAmQN1ccKTfDnwP.png', 19, 8237, 'png', 'image', '2021-07-19 09:40:32', '2021-07-19 09:40:32', NULL),
(570, 'Mc0O3V9VK0CnklJSJ8jA5I3fU159a6bTLBK7714X', 'uploads/all/z7OJErtZxNfoKY1VW5TdZgtyKXgvKnkdVcxi2tmW.png', 19, 6565, 'png', 'image', '2021-07-19 09:40:33', '2021-07-19 09:40:33', NULL),
(571, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/N6FQdta58xaWGJlNnaW63IvCs6Ld2nRN2Uima4Qa.png', 19, 5872, 'png', 'image', '2021-07-19 09:40:33', '2021-07-19 09:40:33', NULL),
(572, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/dpiZHpZ1vehu7JxgSW9jYGgwLMLxYSfcD6gUTZNh.png', 19, 1475, 'png', 'image', '2021-07-19 09:40:38', '2021-07-19 09:40:38', NULL),
(573, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/4l16rAuRlz5GnqfsZmyESJRsWnRO43x1phAEAK78.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 09:40:39', '2021-07-19 09:40:39', NULL),
(574, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/eFICQoWsJbidcp9GvhTjXbsBpkJ7au4Mbakwdtud.png', 19, 236, 'png', 'image', '2021-07-19 09:40:39', '2021-07-19 09:40:39', NULL),
(575, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/tvGWRrbDTID9DqfcCsviJt0YWRkp0WfZb0j0ONPS.png', 19, 7250, 'png', 'image', '2021-07-19 09:40:39', '2021-07-19 09:40:39', NULL),
(576, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/t9ZPvvuXtAdDleJDJchpABVN77m7bGq1e333wNye.png', 19, 7250, 'png', 'image', '2021-07-19 09:40:41', '2021-07-19 09:40:41', NULL),
(577, 'hadRXi3b0K0T2g5pezd9R9Am8UnJ12YrOE1MKxYy', 'uploads/all/1AwTISv5UNDTkaAoyhEKCLQ8grXugFarbiPD9J2H.png', 19, 61940, 'png', 'image', '2021-07-19 09:40:44', '2021-07-19 09:40:44', NULL),
(578, '5ojOJWPHacSb2tuj7HfEJYAGByLdsgJjzzdpnIxl', 'uploads/all/fr1kOQgc50Uf17GA39UlcKB0K3FpwSsuQECpcaqh.png', 19, 77948, 'png', 'image', '2021-07-19 09:40:45', '2021-07-19 09:40:45', NULL),
(579, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/MqrSFlHTWiwYJEjPvgKsQoTzYmcyCe50W5hjJVgy.png', 19, 16613, 'png', 'image', '2021-07-19 09:40:53', '2021-07-19 09:40:53', NULL),
(580, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/eQ1VjJG8XwCKXmMz4Okovcc09WcfUQGtxnjb9OG9.png', 19, 47699, 'png', 'image', '2021-07-19 09:40:58', '2021-07-19 09:40:58', NULL),
(581, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/eJmyYNkxHrvKn8w2lfQtd6aCYRRV06KX0z8FWgUk.png', 19, 39320, 'png', 'image', '2021-07-19 09:40:59', '2021-07-19 09:40:59', NULL),
(582, 'aFxF60B8UAHOnkV2bw69Wl78yyOAm4T9xXcTkQhX', 'uploads/all/gasHFPMYp8uXXWDFzy0lDwkZZG5ITkGTD7FMK9Kx.png', 19, 93667, 'png', 'image', '2021-07-19 09:40:59', '2021-07-19 09:40:59', NULL),
(583, 'PDioOOJYq7vEbw55SnDVpad6WJYmHlBzVmFP4G04', 'uploads/all/XyoqvsHOIWopshGjgE5iz69zqbyLKQD6e4AHcp26.png', 19, 77948, 'png', 'image', '2021-07-19 09:41:01', '2021-07-19 09:41:01', NULL),
(584, 'PRoy4hXnU8cfZ9vvlYJ8j2x60ivZaIO6CeP1vger', 'uploads/all/m61n7hlThSRx9QwUBVEOCfKMmkiYe84eSOWpeISP.png', 19, 77668, 'png', 'image', '2021-07-19 09:41:01', '2021-07-19 09:41:01', NULL),
(585, 'REpMBdfXkkNEmnmnq96dnySJwXnVbEkUndavuQgX', 'uploads/all/VeiX3q7JvvXvQ3DYLl3KTeCKYV68UWDcuHHpmI4d.png', 19, 120034, 'png', 'image', '2021-07-19 09:41:03', '2021-07-19 09:41:03', NULL),
(586, 'V7zSDDJhkH46c2CyFv19zXlPmBNAEbcq1fc3PuPc', 'uploads/all/3wZfnS1BxmyH1WzJokNh9L43DIrNtHM90a9DhBmS.png', 19, 120034, 'png', 'image', '2021-07-19 09:41:04', '2021-07-19 09:41:04', NULL),
(587, 'WW0JJWXk76RINcDCRRKD4gvVnI95k8kwlXFGfo2e', 'uploads/all/qeC3NP025cS08zciyaVXs4QohxfenKJdNCzcLcpM.png', 19, 1205, 'png', 'image', '2021-07-19 09:41:40', '2021-07-19 09:41:40', NULL),
(588, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/N9wr0FQkGasL0CPpqA8jM7h6hUciaxpPN2SY3YQp.png', 19, 22003, 'png', 'image', '2021-07-19 09:41:40', '2021-07-19 09:41:40', NULL),
(589, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/pfTBxUG9M6hBfeAuOSjUUOkcJ3lY6Ab4nOQlNSya.png', 19, 1112, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(590, 'NPlXAl3QK1egF5m5TB3QQRTx24x0CybDexqTOWxp', 'uploads/all/ClPLeeZvJXP98cxykdTmGRvEzSzb6wLZ8wmSNMUQ.png', 19, 6443, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(591, 'RNI31mk2faKMLaqQOIukoHW2xQx24qGe44pbn8He', 'uploads/all/rLvBqV6oVa4WvjK7jJGbameGtbiV14KRC8JDKwMk.png', 19, 30058, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(592, 'x06f32DsmCcCfuLN8r13S3NMXcXN1s3i9Vp69ZNo', 'uploads/all/vi8LCcD8pBb7IJgTY1ZVrbTC3Wu6tl1dKZ1DXw9f.png', 19, 1342, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(593, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/P1ipnKchoq3qMtLHCkiD7fveph8FpgjbVoOI1rt8.png', 19, 15303, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(594, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/2sBs04qBIKjdrmZTW0LPJvxaXNLSL9nuRTBTHhe3.png', 19, 6443, 'png', 'image', '2021-07-19 09:41:41', '2021-07-19 09:41:41', NULL),
(595, 't3wvVFOWpjsoaQdxuFyYKguRcc4GyVjaKWRIosbx', 'uploads/all/XhUB0zhKiohcDkQqdryE3NQh3HntZ212pCyVleRg.png', 19, 988, 'png', 'image', '2021-07-19 09:41:42', '2021-07-19 09:41:42', NULL),
(596, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/du7TXsSQPwcFqNlZXxQvgEnorSj86eW9m34wni2r.png', 19, 1342, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(597, 'rnmQqeBvRo0He1Ycwo7YMy2hLtMbD5NL64119jul', 'uploads/all/OC7sPgD0q2JUYbndu8bTRfGMpNlLaj1qyIpnilmq.jpg', 19, 15591, 'jpg', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(598, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/sna7yZ6Wbw2DnrvrdDxFpJcKTLGckUGHHCLyf7ek.png', 19, 236, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(599, 'WsGFtx0cHYHtBGrfPnT5Dcn8udsahgtSxBD9YekR', 'uploads/all/lLinS9nPDNiybB5b89RWBMpL5djenKJKBboXR56V.png', 19, 532, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(600, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/yvU74I32stn9xLF0716MArlCLfv7aKKym32WrxWg.png', 19, 5872, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(601, 'WWLDrpPpUYTMBY9fAdD93lGTHR4ona8Q6J60k4uR', 'uploads/all/uQ2friBrrEDm3LtmNTpd2vzVcoLeAPOvtit1ED8i.png', 19, 781, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(602, 'UTngHzOAEno6ErwJo81u3nAM3K3uCbfG2XsUGB8V', 'uploads/all/GwFRsemhWeIz5YFiSJwzEtTaoERgnKSuRGZUMVcT.png', 19, 988, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(603, 'rxLdULEzVmAm3jnHAkExhXSvrzRDw7L5UdxQUZxM', 'uploads/all/WR0sRkS9lUof76EBruriEtH3y75WNZRcVfMxZMYF.jpg', 19, 7409, 'jpg', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(604, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/jWNdnHIUFpLZYAqI0hSVjjG3b3bU6QbcllDkEDGg.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(605, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/xa5QOHVR5r8PnXp5Sn88N9jhIT3PmSRLmyuC8zas.png', 19, 1106, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(606, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/h455FlRZiXZHtw2oJCm0huLdsxEl7osim8sjBw64.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(607, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/RM3wL1WuuIBIDqt2KIwdht3LVt4Lh3DwcViZRMIT.png', 19, 16613, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(608, 'mJsraKtK9lfSCrSTZm2mdUPjjpxZU1DqNg34SHBR', 'uploads/all/OpqXvT4ETH56tQfUbek9LwNfz4hXKnz9fzCJWNKg.png', 19, 16613, 'png', 'image', '2021-07-19 09:41:43', '2021-07-19 09:41:43', NULL),
(609, 'TwkRcMAyc9Xe8fQGXPzwCHDsJU8NWpgaHiPEh3lf', 'uploads/all/Pugb4ZJVCvshaymTAPHc2lzgoRe9kNY3cFLs7dBK.png', 19, 26889, 'png', 'image', '2021-07-19 09:41:44', '2021-07-19 09:41:44', NULL),
(610, 'uXtS06w0VPK3DVVGkWwxoXU1wDZGlnRyV5n9YcZc', 'uploads/all/3RtTfRaZ5lxtqKV3l2gU4aNeK23Tsx9154awmbC4.png', 19, 21308, 'png', 'image', '2021-07-19 09:41:44', '2021-07-19 09:41:44', NULL),
(611, 'wZHUS0cgyKgvLWwV6XGP9wQBNzBBO5MBuJ7DOR3U', 'uploads/all/XHttsdBrC80Fv2pdvqpIu7C9gyJYUqe59Mr0jft4.png', 19, 18102, 'png', 'image', '2021-07-19 09:41:44', '2021-07-19 09:41:44', NULL),
(612, 'oMAaPcFjCI6yjv7AOvuV4wnHF6zMc9BuoBZy2y5Z', 'uploads/all/azqlB2fAKyKlw8XyNrVrJDC8U6TY3eJimZznwKEU.png', 19, 44275, 'png', 'image', '2021-07-19 09:41:47', '2021-07-19 09:41:47', NULL),
(613, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/fYu679zxN7baiDTZpNT0x7v1rwIhB0eQvOssdaqs.png', 19, 47434, 'png', 'image', '2021-07-19 09:41:49', '2021-07-19 09:41:49', NULL),
(614, 'N8jfcaJKXZfDgyVLxHa733ZWNfQ2yetbR4U8okX7', 'uploads/all/TRlBnBjLCwNUEItRuZ35rMQWTEGxSrteV5XBBeUJ.png', 19, 51654, 'png', 'image', '2021-07-19 09:41:59', '2021-07-19 09:41:59', NULL),
(615, 'XkNayR7dkJdljiKsaxGwgkQH8AsaqROabisSdOzN', 'uploads/all/LukSIRa3IJk5mPDnp14Ki82s0Pqrb0KLEUKONVcM.png', 19, 57125, 'png', 'image', '2021-07-19 09:41:59', '2021-07-19 09:41:59', NULL),
(616, 'x9AgkO2XaHSnHplx2U1H0EfaKxwlrDDc9kesYs1W', 'uploads/all/EuKDrf0yuQpwNdnWM71DO421KECZ2Qg9jWtSONJQ.png', 19, 49803, 'png', 'image', '2021-07-19 09:42:01', '2021-07-19 09:42:01', NULL),
(617, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/Ekatsca4lor4Pf5fG4OIoYtF8tj409QrtfZ0Tvke.png', 19, 1475, 'png', 'image', '2021-07-19 09:42:02', '2021-07-19 09:42:02', NULL),
(618, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/MF3Mo4HuSpEp383L1u4Pvnn6CpLj3z0fUYebqbMb.png', 19, 7250, 'png', 'image', '2021-07-19 09:42:03', '2021-07-19 09:42:03', NULL),
(619, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/HLixq94c4UWmOOC0div6TtQiVkceBaTqTMr7QO2k.png', 19, 1112, 'png', 'image', '2021-07-19 09:42:03', '2021-07-19 09:42:03', NULL),
(620, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/kIoamMRz7XSWZfzFAQi0DTjQgB1lz1VmQSHvtqVQ.png', 19, 7250, 'png', 'image', '2021-07-19 09:42:03', '2021-07-19 09:42:03', NULL),
(621, 'WNQSgwOWJr53QLXftpYrBIJqHMkVYyP0ImJZNc4T', 'uploads/all/kBHByPppFvmPTSUrQqZvLIs9w77JhY5nmqDn8TcE.png', 19, 5872, 'png', 'image', '2021-07-19 09:42:03', '2021-07-19 09:42:03', NULL),
(622, 'Zz9UMWE1dpsoK4gJiXhhKPzqHzUPiCaN6rC8thdi', 'uploads/all/cJbc6UrNaH2HCUOepL7EoKwz2ZgpQEnbrx9Lx9NO.png', 19, 769, 'png', 'image', '2021-07-19 09:42:04', '2021-07-19 09:42:04', NULL),
(623, 'mfll1VzoHumUxjSV1bEqTmY7Kwodi9hLfwqgpIG7', 'uploads/all/JCuiK02AzZqUvVkRmvMdDRm0YCtgIpYQZ48CffTq.png', 19, 37210, 'png', 'image', '2021-07-19 09:42:05', '2021-07-19 09:42:05', NULL),
(624, 'yeaajgyQxzBuIs8bkkKXFdlEJkMyEK3SblVbkqcM', 'uploads/all/RAo2F8NHqWVnROP01tD1bdQdZ4HwIsFbFZUvY20N.png', 19, 26508, 'png', 'image', '2021-07-19 09:42:06', '2021-07-19 09:42:06', NULL),
(625, 'YX1c9vGklrUbdif6OrptGZ5Iio5rRiK2zsH5NNZ9', 'uploads/all/aFopwRMXRPDvUBY6WqmsULyNYAIWreoZJawACgYy.png', 19, 54496, 'png', 'image', '2021-07-19 09:42:13', '2021-07-19 09:42:13', NULL),
(626, 'itel A56 Pro 2 GB of RAM and 32 GB of storage', 'uploads/all/LXiwUieluF7SGdASnGFEctkp1KUBTJ3nBmQJhNRw.jpg', 19, 15524, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(627, 'Prime Tab 1 Memory 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', 'uploads/all/Jhx4ASJIS1dWTuxB8llkqC2DIso8pIql720GWx3W.jpg', 19, 8602, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(628, 'itel P37 Pro (4G)', 'uploads/all/YVQWVGCIpsbxeUhy0JgZ3UKtofDLeT5uBuSXnQoy.jpg', 19, 12732, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(629, 'itel P37', 'uploads/all/jGCDVpVuoRQNuO3Pc7EgF21NqRD7CboAVmC1ttU2.jpg', 19, 8495, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(630, 'itel S16 Pro Memory. 32GB ROM + 2GB RAM (Up to 32GB)', 'uploads/all/gPvm2tILJ7x67rxJ2xMF2qgF6Sy19XjonjHpFRNP.jpg', 19, 10183, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(631, 'itel S16 Pro (4G) 2 GB RAM, 32 GB inbuilt 4000 mAh Battery', 'uploads/all/qyp8LKTdaQrpQQ2pJjuiG72WeBGFAMH0PTCGbnHX.jpg', 19, 14712, 'jpg', 'image', '2021-07-19 09:48:50', '2021-07-19 09:48:50', NULL),
(632, 'itel P36 ROM 16GB RAM 1GB REAR CAMERA 8MP Dual', 'uploads/all/gJUM0Of5UyAhJOzgHSAxtWCsd4i9OVOBuRcks0MV.jpg', 19, 11179, 'jpg', 'image', '2021-07-19 09:48:51', '2021-07-19 09:48:51', NULL),
(633, 'itel A56 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery', 'uploads/all/AKTnXV1Z3M2oSmmMrfHPsHWXTrq3KoClE7qNFSqk.jpg', 19, 14728, 'jpg', 'image', '2021-07-19 09:48:51', '2021-07-19 09:48:51', NULL),
(634, 'Itel A37 – 5.71inches 16GB 1GB RAM', 'uploads/all/qwAAEMRyTP8XzTXF8fXREbbAWWWUODrSXqlCHDwJ.jpg', 19, 6514, 'jpg', 'image', '2021-07-19 09:48:51', '2021-07-19 09:48:51', NULL),
(635, 'Itel P15 5.0 HD Screen 16GB ROM + 1GB RAM Android 9', 'uploads/all/Wd1eZCMJj5NINIg0O42tBlhiEsyGUHxbZCwt5mMK.jpg', 19, 10269, 'jpg', 'image', '2021-07-19 09:48:51', '2021-07-19 09:48:51', NULL),
(636, 'itel it5360', 'uploads/all/7mZvcJLwRCXmQFWMi1fLjGD9pFQn2tJtgOaUFzG5.jpg', 19, 6278, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(637, 'itel A16', 'uploads/all/lrr7GDKeI4dbItKFl4j57SdsbH90RQSGcnCl0F3R.jpg', 19, 7611, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(638, 'itel it5081', 'uploads/all/E6JKZ121o2kTfppraTPFRD5rmLj1MqvpvU2jqg7u.jpg', 19, 8137, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(639, 'Itel A35 16GB ROM 1GB RAM', 'uploads/all/hKvXwxpPRjtgvjfMSSYXq8ZPMCKAcv99FM3IpenM.jpg', 19, 6354, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(640, 'itel it2160', 'uploads/all/I4lZVyg3PLj8sNTcncshHT1QFWP7yeeDaPQGrHjg.jpg', 19, 10288, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(641, 'itel it5626', 'uploads/all/J9D5FezK5BllmXeirXPezBlQjAlvrmhEsHKdJLL6.jpg', 19, 8162, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(642, 'itel A14 Plus', 'uploads/all/1HlQuk9UBzhzjkVm45SEE5edq5rhJSREy6NE4rTX.jpg', 19, 9493, 'jpg', 'image', '2021-07-19 09:48:52', '2021-07-19 09:48:52', NULL),
(643, 'itel it5260', 'uploads/all/UlXQqFjKgYGQDtjdwFnsOXXsdNMl5yOEfH49ybQ2.jpg', 19, 8905, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(644, 'itel it6350', 'uploads/all/nhhAG49k5ucPJmJ56nlAZCqtLKOopUL3Dz8ZsSqv.jpg', 19, 6999, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(645, 'itel it5615m', 'uploads/all/dXsO7eBo7iTHYYPP8MNoGmSEDKWAZb6Mz6RzIz5v.jpg', 19, 6180, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(646, 'itel it2163', 'uploads/all/ccwtfob5bQqgWhH0SrxtXDFE63slp2HluZhAkGLf.jpg', 19, 8852, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(647, 'itel it2173', 'uploads/all/S5tWnlLYgRc6QZB4pjOM87gOtgj24O07GMHyjqtf.jpg', 19, 10355, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(648, 'itel it5606', 'uploads/all/lzDbxzZV9TeeOYZUuIplpogDGOQXurHDG0fxzFa8.jpg', 19, 7730, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(649, 'itel A14', 'uploads/all/q3vTBlqOSIffuy5MioZFN08Ofk0KApl0aoEMVWj1.jpg', 19, 8863, 'jpg', 'image', '2021-07-19 09:48:53', '2021-07-19 09:48:53', NULL),
(650, 'Tecno T351', 'uploads/all/pa1j3O7u9nw58d6nhvTOGlrGT9QN72N6EAfUapv2.jpg', 19, 41738, 'jpg', 'image', '2021-07-19 10:03:19', '2021-07-19 10:03:19', NULL),
(651, 'tecno spark 7', 'uploads/all/f2LOVw7cnWWmWuJKjMGcfjNj4YHKoa6d0q2n3IoQ.webp', 19, 11628, 'webp', 'image', '2021-07-19 10:03:19', '2021-07-19 10:03:19', NULL),
(652, 'T313', 'uploads/all/W5SfLSPYxqIoXMGnS5I2hIaXBQCMyjrOz10KgnxN.jpg', 19, 20674, 'jpg', 'image', '2021-07-19 10:03:19', '2021-07-19 10:03:19', NULL),
(653, 'Tecno T101', 'uploads/all/MBGaI5QbvbjzlKTjzGGMmP85UuWfqy8VoaG3eSv2.jpg', 19, 15888, 'jpg', 'image', '2021-07-19 10:03:19', '2021-07-19 10:03:19', NULL),
(654, 'Tecno T201', 'uploads/all/lOZXuDS7BC4RlNJYGPYeJxXDSsaZ2fIqrTZzjXbp.jpg', 19, 15579, 'jpg', 'image', '2021-07-19 10:03:19', '2021-07-19 10:03:19', NULL),
(655, 'Tecno T301 Dual Sim', 'uploads/all/sLnSf1BTqRBhWvUlBO5XmnxBu5hp5EOb6MdlTfIu.jpg', 19, 25350, 'jpg', 'image', '2021-07-19 10:03:20', '2021-07-19 10:03:20', NULL),
(656, 'Tecno T372', 'uploads/all/XV2RvFsA1pz886xkOxxUdUjPV7fCGQqTBS8soV9D.jpg', 19, 32593, 'jpg', 'image', '2021-07-19 10:03:20', '2021-07-19 10:03:20', NULL),
(657, 'Tecno T454', 'uploads/all/Peocbizzki69eXpiJX9Lr9S7hGGGc3AOjDJ8YlKY.jpg', 19, 31975, 'jpg', 'image', '2021-07-19 10:03:20', '2021-07-19 10:03:20', NULL),
(658, 'Tecno T661', 'uploads/all/zb51QNcbqqwAWXOJeVS7WIg8nr05c4K3LKi7UNok.jpg', 19, 15979, 'jpg', 'image', '2021-07-19 10:03:21', '2021-07-19 10:03:21', NULL),
(659, 'Tecno POP4 (BC2c)', 'uploads/all/GncAvcY18lWURsm2iz1OvZkudZg3Fc3chmmEQ3o9.jpg', 19, 19018, 'jpg', 'image', '2021-07-19 10:03:21', '2021-07-19 10:03:21', NULL),
(660, 'tecno-spark-go-2020', 'uploads/all/OKXJz8TbExR6xnn17HkFKPRUmI08ijfv2ilACVoQ.jpg', 19, 10209, 'jpg', 'image', '2021-07-19 10:03:21', '2021-07-19 10:03:21', NULL),
(661, 'Tecno T466', 'uploads/all/R8dUbFX92OjVDKvJOXbzqIR89mIXSHE0NUTn20dM.jpg', 19, 33297, 'jpg', 'image', '2021-07-19 10:03:21', '2021-07-19 10:03:21', NULL),
(662, 'Tecno T528', 'uploads/all/xVEZG8vvFlNeAEGjJIzIFlw20kwhhb51KM0I95Dm.jpg', 19, 38285, 'jpg', 'image', '2021-07-19 10:03:21', '2021-07-19 10:03:21', NULL),
(663, 'Tecno B1G 1GB RAM 16GB ROM', 'uploads/all/J2AnGGzDynjxsnLXlRuBpEU8J8xxjdbcJ8N8qEnV.jpg', 19, 25616, 'jpg', 'image', '2021-07-19 10:03:22', '2021-07-19 10:03:22', NULL),
(664, 'Tecno T485', 'uploads/all/1ndoQurrYLrcCIVcI7kla6Sci7ReVlrKQ8PSdedn.jpg', 19, 36661, 'jpg', 'image', '2021-07-19 10:03:22', '2021-07-19 10:03:22', NULL),
(665, 'Tecno POP5 (BD2)', 'uploads/all/gqKxaeZQRI8qZWV3jMo7FoixxFyzeYEzyoBjVyFV.jpg', 19, 28571, 'jpg', 'image', '2021-07-19 10:03:23', '2021-07-19 10:03:23', NULL),
(666, 'Tecno POP4 Air (BC1)', 'uploads/all/vYnmJeMs9HbIlQJ3amhYM64RMKZfhGdz0vEtjfTE.jpg', 19, 45253, 'jpg', 'image', '2021-07-19 10:03:24', '2021-07-19 10:03:24', NULL),
(667, 'Tecno POP 4 (BC3)', 'uploads/all/xgW421scGjoqEzhci7JLJshwxRmhS1NmwnpB6NiB.jpg', 19, 34395, 'jpg', 'image', '2021-07-19 10:03:24', '2021-07-19 10:03:24', NULL),
(668, 'Tab 4', 'uploads/all/xf2Q7wNpPuzdFsX6IcQtSWwHCWhU3w6P9XFR7ATu.jpg', 19, 30326, 'jpg', 'image', '2021-07-19 10:03:26', '2021-07-19 10:03:26', NULL),
(669, 'Tecno POP 5 (BD2p)', 'uploads/all/44vki4DCxTZ9Aui1mu0BHttVx0CQl3u1kAhyQkzU.jpg', 19, 56361, 'jpg', 'image', '2021-07-19 10:03:34', '2021-07-19 10:03:34', NULL),
(670, 'Tecno T402', 'uploads/all/mRfIezlXhBWQtqchtmlWRmxKHIpJ1PSL6GKkaDeC.jpg', 19, 30885, 'jpg', 'image', '2021-07-19 10:03:57', '2021-07-19 10:03:57', NULL),
(671, 'Spark 5 Air', 'uploads/all/NKvBrIY2anj3AZlRAoQ5T6W0fytiFLkV5yz7aFio.png', 19, 301019, 'png', 'image', '2021-07-19 10:03:59', '2021-07-19 10:03:59', NULL),
(672, 'Spark 5 pro', 'uploads/all/gaxRCPmveuwI8OXZ9zY3uNaZvk0wFNxYp653N729.png', 19, 303320, 'png', 'image', '2021-07-19 10:03:59', '2021-07-19 10:03:59', NULL),
(673, 'spark 5 air reddish', 'uploads/all/5ihw1aOWUCwa9UxbiFqzOMfyl6mIY1IMcG3ygI2o.png', 19, 350470, 'png', 'image', '2021-07-19 10:03:59', '2021-07-19 10:03:59', NULL),
(674, 'Tecno POP3 (BB2)', 'uploads/all/WlZfkAomOv9N8YxS8gsC3zADUv5XXNIRXE25cJxU.png', 19, 460295, 'png', 'image', '2021-07-19 10:04:00', '2021-07-19 10:04:00', NULL),
(675, 'T313', 'uploads/all/VIYcbS7enSxxR4idw8JNpVPULhLGWvD3Ec7ToRGu.jpg', 19, 20674, 'jpg', 'image', '2021-07-19 10:32:03', '2021-07-19 10:32:03', NULL),
(676, 'tecno spark 7', 'uploads/all/3OZfV183uE7PFAkBR5I6UfsSvYCd39tsaW92uVu6.webp', 19, 11628, 'webp', 'image', '2021-07-19 10:32:03', '2021-07-19 10:32:03', NULL),
(677, 'tecno-spark-go-2020', 'uploads/all/KZxMT6vRGES5kifkeJSU5n4vGQOvmipB3TDS3e20.jpg', 19, 10209, 'jpg', 'image', '2021-07-19 10:32:03', '2021-07-19 10:32:03', NULL),
(678, 'Tecno POP 4 (BC3)', 'uploads/all/EGXX3FGjBbjVJEX3jNBZbHWIArmm7qFLbZyEpPX7.jpg', 19, 34395, 'jpg', 'image', '2021-07-19 10:32:04', '2021-07-19 10:32:04', NULL),
(679, 'Tecno T661', 'uploads/all/IhEQF9ObKcUbCwWKIYhvIp2Rc6VRKhAZ0HKUblJ2.jpg', 19, 15979, 'jpg', 'image', '2021-07-19 10:32:04', '2021-07-19 10:32:04', NULL),
(680, 'Tecno T101', 'uploads/all/nTTe7dWNNipiqRdBxmgO2wNYgaWNRWzpwyr3Feu0.jpg', 19, 15888, 'jpg', 'image', '2021-07-19 10:32:04', '2021-07-19 10:32:04', NULL),
(681, 'Tecno POP4 (BC2c)', 'uploads/all/0XDua5aSnt7dlflbDIiJsffLfG0lIgG9bjN112hF.jpg', 19, 19018, 'jpg', 'image', '2021-07-19 10:32:05', '2021-07-19 10:32:05', NULL),
(682, 'Tecno T201', 'uploads/all/CE3gw6P3c2JOmzbSxc7Drou83Azvr8WA42dg3B8t.jpg', 19, 15579, 'jpg', 'image', '2021-07-19 10:32:05', '2021-07-19 10:32:05', NULL),
(683, 'Tecno T372', 'uploads/all/zIETNBsBp4pDXJshF9O6dxzUEFO8C2ndAIom5LxL.jpg', 19, 32593, 'jpg', 'image', '2021-07-19 10:32:05', '2021-07-19 10:32:05', NULL),
(684, 'Tab 4', 'uploads/all/q3LtXOHZY6VpZTtCboeAMVlHBHSwfcV5xlskjGgW.jpg', 19, 30326, 'jpg', 'image', '2021-07-19 10:32:05', '2021-07-19 10:32:05', NULL),
(685, 'Tecno T454', 'uploads/all/SwzrNbLzxjLe2s6UYEszXrOuSw4ev6lccKQhPfPw.jpg', 19, 31975, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(686, 'Tecno T301 Dual Sim', 'uploads/all/PS62QOXZBzIbFRRyuEJO7eyxTrrE5ERnXLI4ieSV.jpg', 19, 25350, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(687, 'Tecno T485', 'uploads/all/1gFRtGiV1Q9lWaww6ZacozP2XbWEFRIMuUckBEcD.jpg', 19, 36661, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(688, 'Tecno POP5 (BD2)', 'uploads/all/AR5M5t6oRm2PsV39X7ViZVGzSpSABCM58SO7Gd6Y.jpg', 19, 28571, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(689, 'Tecno T466', 'uploads/all/o0eVa5D8qioMHfJBCZekny8eTOUcAbanJEasrDm2.jpg', 19, 33297, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(690, 'Tecno POP4 Air (BC1)', 'uploads/all/geyyYhMhvcblD4e0bMFNn1IzR5tWqEhcpvQWYaEt.jpg', 19, 45253, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(691, 'Tecno T351', 'uploads/all/K0BtbLvlM2uhKdjGjDXgl2RLbtISgxunPq8mQ7hL.jpg', 19, 41738, 'jpg', 'image', '2021-07-19 10:32:06', '2021-07-19 10:32:06', NULL),
(692, 'Tecno B1G 1GB RAM 16GB ROM', 'uploads/all/aT1246BIFRm8nJbDnwWR22hztXUPkabF8OeRFFPo.jpg', 19, 25616, 'jpg', 'image', '2021-07-19 10:32:07', '2021-07-19 10:32:07', NULL),
(693, 'Tecno T528', 'uploads/all/wwZ4DTnwObFsYhqGgUjcKrw8lhTgSrFBFQScWZGl.jpg', 19, 38285, 'jpg', 'image', '2021-07-19 10:32:07', '2021-07-19 10:32:07', NULL),
(694, 'Tecno POP 5 (BD2p)', 'uploads/all/HddMdS8i4EwDJd49cwfE1QqNxuEtQL6ITAP8Ylez.jpg', 19, 56361, 'jpg', 'image', '2021-07-19 10:32:07', '2021-07-19 10:32:07', NULL),
(695, 'Spark 5 Air', 'uploads/all/AMyDGpolZRNiTQCpNMOcnHUZxxzxzqLAUmkaEKAs.png', 19, 301019, 'png', 'image', '2021-07-19 10:32:12', '2021-07-19 10:32:12', NULL),
(696, 'Tecno T402', 'uploads/all/kluNUiH5iivDlmTzWTfCZs83Ne0xcKwdehoBB4ip.jpg', 19, 30885, 'jpg', 'image', '2021-07-19 10:32:12', '2021-07-19 10:32:12', NULL),
(697, 'Spark 5 pro', 'uploads/all/RZS156TL0KLoG0kgPJcO8oNQRnkRfFna9NigddfK.png', 19, 303320, 'png', 'image', '2021-07-19 10:32:12', '2021-07-19 10:32:12', NULL),
(698, 'spark 5 air reddish', 'uploads/all/1wfjofp0XezFEsKF94hZ84zHza86R0XTeKV47Gma.png', 19, 350470, 'png', 'image', '2021-07-19 10:32:18', '2021-07-19 10:32:18', NULL),
(699, 'tecno-pouvoir4-lc7', 'uploads/all/8uecwjqhUoI4VbMxXwI89PewA9Jgq2ynwkKY2atM.png', 19, 555012, 'png', 'image', '2021-07-19 10:32:25', '2021-07-19 10:32:25', NULL),
(700, 'Tecno POP3 (BB2)', 'uploads/all/NirK0UtD8N6YvlQ16NxB0eNwkKyUymNK4EyM1r9R.png', 19, 460295, 'png', 'image', '2021-07-19 10:32:38', '2021-07-19 10:32:38', NULL),
(701, 'CG7', 'uploads/all/aJtNbfOG1cBIZSBGhcV7L8ObTzS1B58sHvUM31tm.png', 19, 610598, 'png', 'image', '2021-07-19 10:32:43', '2021-07-19 10:32:43', NULL),
(702, 'CG6', 'uploads/all/6ckt7X1TMDvji8iyC8EWyaPXdKKPI3906Dl83X5u.png', 19, 610598, 'png', 'image', '2021-07-19 10:32:43', '2021-07-19 10:32:43', NULL),
(703, 'CG8-blue', 'uploads/all/cf1UZQ4oOQRS7tRCo1gXj48CzU20YY67WdwTV1ox.png', 19, 692045, 'png', 'image', '2021-07-19 10:32:45', '2021-07-19 10:32:45', NULL),
(704, 'CG8', 'uploads/all/hXBiyQNqDo0Bd7cxWNRxi9JmyeiKhLxdBR0Kg5Wo.png', 19, 659909, 'png', 'image', '2021-07-19 10:32:45', '2021-07-19 10:32:45', NULL),
(705, 'Prime Tab 1 Memory 1GB Ram 32GB built-in storage, with SD-Card, Support up to 32GB', 'uploads/all/ByDHxxpOP6xnuY0POQtpIjDqLq43H3VsT44a5zDI.jpg', 19, 8602, 'jpg', 'image', '2021-07-19 10:35:30', '2021-07-19 10:35:30', NULL),
(706, 'Itel A35 16GB ROM 1GB RAM', 'uploads/all/EQcpvGcXA5yCj5lOqYuJ3gOT0DEW3ocPX5c0kM3I.jpg', 19, 6354, 'jpg', 'image', '2021-07-19 10:35:30', '2021-07-19 10:35:30', NULL),
(707, 'itel A56 1 GB RAM, 16 GB inbuilt · 4000 mAh Battery', 'uploads/all/OgiOWkRiXBfS8fmHJMfTecJYZk75OyqqPpVy8mTB.jpg', 19, 14728, 'jpg', 'image', '2021-07-19 10:35:31', '2021-07-19 10:35:31', NULL),
(708, 'itel P37 Pro (4G)', 'uploads/all/CURBmn9rlyoJsuYDVM3eTTZiKkRx9UzvYJmCeyny.jpg', 19, 12732, 'jpg', 'image', '2021-07-19 10:35:31', '2021-07-19 10:35:31', NULL),
(709, 'itel A16', 'uploads/all/UK7eHophS6rHuqLi3DYv1KKql3TUVJ4CwFXlHqlj.jpg', 19, 7611, 'jpg', 'image', '2021-07-19 10:35:31', '2021-07-19 10:35:31', NULL),
(710, 'itel S16 Pro (4G) 2 GB RAM, 32 GB inbuilt 4000 mAh Battery', 'uploads/all/1oPja4NXXYt9nI0nxuStAc2ANw8ybsLAh9oEl5Mz.jpg', 19, 14712, 'jpg', 'image', '2021-07-19 10:35:31', '2021-07-19 10:35:31', NULL),
(711, 'itel it5360', 'uploads/all/xkbJVY81EWJbdRrGJwdRcypy2duOqumRiErU5RuD.jpg', 19, 6278, 'jpg', 'image', '2021-07-19 10:35:32', '2021-07-19 10:35:32', NULL),
(712, 'itel A14 Plus', 'uploads/all/nGkonTVW9RusUHKRT2HB1Q33BSSxwczGSr5nHBMp.jpg', 19, 9493, 'jpg', 'image', '2021-07-19 10:35:33', '2021-07-19 10:35:33', NULL),
(713, 'itel P37', 'uploads/all/DNFw2onBaOQK7uQeMice5daWYfcYahh5JTlsTQ7I.jpg', 19, 8495, 'jpg', 'image', '2021-07-19 10:35:33', '2021-07-19 10:35:33', NULL),
(714, 'itel it6350', 'uploads/all/Ab06hGAz7SjTzidu0SG0l9cDsGfFEUR3fLB4h9OO.jpg', 19, 6999, 'jpg', 'image', '2021-07-19 10:35:34', '2021-07-19 10:35:34', NULL),
(715, 'camon 17', 'uploads/all/63LWPbBK2iJrE7azX3KlKIFqFKuLspfypTs4iIjy.jpg', 19, 36139, 'jpg', 'image', '2021-07-19 10:37:36', '2021-07-19 10:37:36', NULL),
(716, 'spk 7', 'uploads/all/c0p1U9gRseVb39rB5v1DzxiANjzuaqG7aP4FVlcR.jpg', 19, 32356, 'jpg', 'image', '2021-07-19 10:37:37', '2021-07-19 10:37:37', NULL),
(717, 'sapk 7', 'uploads/all/Hj3tLZoI5J9XW6HEVun9Jo4DfHLYzfT00Naj5JAI.jpg', 19, 64912, 'jpg', 'image', '2021-07-19 10:37:37', '2021-07-19 10:37:37', NULL),
(718, 'camon 17pro', 'uploads/all/J1u5PEFjrhTfASVhNtIKs3Vk1s4KVYhn12KDB3Hr.jpg', 19, 47922, 'jpg', 'image', '2021-07-19 10:37:37', '2021-07-19 10:37:37', NULL),
(719, 'itel it5081', 'uploads/all/I5jlPKbeBAkP7dshG23CujCz4xfk4QD2ZTmOvjLX.jpg', 19, 8137, 'jpg', 'image', '2021-07-19 10:37:39', '2021-07-19 10:37:39', NULL),
(720, 'Tecno POP 5 (BD2p)', 'uploads/all/zLGKYyI6Tss4CfP5yKpiJCWjREh6KOakYJP4VtzT.jpg', 19, 56361, 'jpg', 'image', '2021-07-19 10:37:39', '2021-07-19 10:37:39', NULL),
(721, 'itel P36 ROM 16GB RAM 1GB REAR CAMERA 8MP Dual', 'uploads/all/9X8nFRCPbhTcbFeLJIQMyKYXpdYxLlfKLtRuGmVr.jpg', 19, 11179, 'jpg', 'image', '2021-07-19 10:37:39', '2021-07-19 10:37:39', NULL),
(722, 'itel A56 Pro 2 GB of RAM and 32 GB of storage', 'uploads/all/IAHWmiRuijLSjtguEC7jdsa5RR7F5lr1h9CNFcpy.jpg', 19, 15524, 'jpg', 'image', '2021-07-19 10:37:39', '2021-07-19 10:37:39', NULL),
(723, 'Itel A37 – 5.71inches 16GB 1GB RAM', 'uploads/all/BSEDG3GWFIQLuOUMM7bcFseP23DkmgWDJqczMCp0.jpg', 19, 6514, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(724, 'itel it5606', 'uploads/all/IG3C2QexgRT1LvE92MeGd9hPca0guwg4wOt5HCyn.jpg', 19, 7730, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(725, 'itel it5260', 'uploads/all/6GtON1Gb4m0zLJxqj91myEYyrezHScdb4LODBBkt.jpg', 19, 8905, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(726, 'Tecno B1G 1GB RAM 16GB ROM', 'uploads/all/UvIEicGvYv2XgomPlnLeIonRWsXSg4BKSW2DmQLp.jpg', 19, 25616, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(727, 'itel it5626', 'uploads/all/DNgAsZWqJ9JeVP1Xl1mOv1iGBbdigMnVMO1Ocrl6.jpg', 19, 8162, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(728, 'Tecno T372', 'uploads/all/p07LHgSLByVwMTeGaHu6sEX5NqO5iPp9kcvxsat4.jpg', 19, 32593, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(729, 'itel it2160', 'uploads/all/bIGvWCj5VQWt1oSyfWNdxfDSf8NWhSPupsUiRaWd.jpg', 19, 10288, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(730, 'itel it5615m', 'uploads/all/APoxoppvLB5JFY4ah7mKldpS6om1hZCE4iMD8xci.jpg', 19, 6180, 'jpg', 'image', '2021-07-19 10:37:40', '2021-07-19 10:37:40', NULL),
(731, 'itel S16 Pro Memory. 32GB ROM + 2GB RAM (Up to 32GB)', 'uploads/all/staIMH01rUdCO9p97a5aXIwNw0kgH8GzVbm0JgFT.jpg', 19, 10183, 'jpg', 'image', '2021-07-19 10:37:41', '2021-07-19 10:37:41', NULL),
(732, 'itel it2173', 'uploads/all/7jhG0WwW85r4ZQGt94sU52sHns1HCrj0YY8SzXYj.jpg', 19, 10355, 'jpg', 'image', '2021-07-19 10:37:41', '2021-07-19 10:37:41', NULL),
(733, 'itel it2163', 'uploads/all/5Ke4jPuIfEekCAPeIDXtcfudV5TgGK8j8Q3Et7eM.jpg', 19, 8852, 'jpg', 'image', '2021-07-19 10:37:41', '2021-07-19 10:37:41', NULL),
(734, 'Itel P15 5.0 HD Screen 16GB ROM + 1GB RAM Android 9', 'uploads/all/3qFXTQTxo9Pj7VneqQiAPLptdrdtibpfFkfLXmDe.jpg', 19, 10269, 'jpg', 'image', '2021-07-19 10:37:41', '2021-07-19 10:37:41', NULL),
(735, 'itel A14', 'uploads/all/RimDCovhFR8PDIByFluoPFiupoBfi5wjb7EDFrTk.jpg', 19, 8863, 'jpg', 'image', '2021-07-19 10:37:41', '2021-07-19 10:37:41', NULL),
(736, 'P36-3-800x800', 'uploads/all/RwRHfgskRofT5dgwtXtrarGeJB7YPQc8RNXHvNHH.png', 19, 501974, 'png', 'image', '2021-07-19 10:37:43', '2021-07-19 10:37:43', NULL),
(737, 'Spark 4 pro', 'uploads/all/Pj9X2WSNzGKLUhGlmMiowEUFng7MkC5QCoPU2VK7.png', 19, 621311, 'png', 'image', '2021-07-19 10:37:45', '2021-07-19 10:37:45', NULL),
(738, '3okSpmRVYAxJ9CX31mD1819DAy9tbNiQy5Hqy0TH', 'uploads/all/lktD9GZiBGb7OC0ye5jFfQmDNccAl9T1ycl6f57I.png', 19, 47434, 'png', 'image', '2021-07-19 10:44:08', '2021-07-19 10:44:08', NULL),
(739, '7wLi7klvM6ctk0qL96sfVKxdxxXoArNlJtUZK8LX', 'uploads/all/j5YSUHOtfCUCZXDVecLYyr4SrzwTAps9PNpJrMGC.png', 19, 6745, 'png', 'image', '2021-07-19 10:44:09', '2021-07-19 10:44:09', NULL),
(740, '6xUoXfHJ4Bn1GxUya8cxGDNLYUvcXjMle6xhyyoA', 'uploads/all/A63Vqo2t21KH86T90AulafT5U8k5WZTzegWXCV1J.png', 19, 18102, 'png', 'image', '2021-07-19 10:44:09', '2021-07-19 10:44:09', NULL),
(741, 'eH3AbI3pZg737aS1lw7F9Bm3znvYA6qoZg4dvR6G', 'uploads/all/wFcifNxabNQPjOaFfIXfKVGYp15k8OQQEYjgBD3l.jpg', 19, 7431, 'jpg', 'image', '2021-07-19 10:44:11', '2021-07-19 10:44:11', NULL),
(742, 'eyPVwinQutjpf55IbsrhNPcwqX7sd9oBmPNIP4Wt', 'uploads/all/p6uXeUyKaHXYhecaQeEphRVfGRkeaMEdF7e27Cpw.png', 19, 867, 'png', 'image', '2021-07-19 10:44:11', '2021-07-19 10:44:11', NULL),
(743, 'aY8qgCAiGjCO17YvD1sByIaCPVSbwvmkZerkRtTm', 'uploads/all/PWyHfO9D3clllOftTY4aN79ZdVKctoG2UrTzwduR.png', 19, 7250, 'png', 'image', '2021-07-19 10:44:11', '2021-07-19 10:44:11', NULL),
(744, 'dfhN5dkp9lee77A4ooXRmFG7n8KaC5bqffBfwh5n', 'uploads/all/WJD6xAMwXJdgiUrn5TWfQpvXslfY2NHC4HgtOp2Z.png', 19, 532, 'png', 'image', '2021-07-19 10:44:11', '2021-07-19 10:44:11', NULL),
(745, 'i9tGEoJThG9IOvUtTCcRd7wyJpjPmFspAJAQpch8', 'uploads/all/iuhzZ2wn2DONppwOTLBCYfs4WS2bhuzsGirXlihy.png', 19, 1112, 'png', 'image', '2021-07-19 10:44:13', '2021-07-19 10:44:13', NULL),
(746, 'MkWyLNKWGeuLx6PWfKYYl0bD1l1rWh665i4h3keD', 'uploads/all/GcRYV1vmN2G4VsArBMujKn34P1txKBwLphj8fqnq.png', 19, 1342, 'png', 'image', '2021-07-19 10:44:13', '2021-07-19 10:44:13', NULL),
(747, 'Mc0O3V9VK0CnklJSJ8jA5I3fU159a6bTLBK7714X', 'uploads/all/OWVpTFJYeoWVBPze7oo6rieLO1LLtaMTS9d3uI7T.png', 19, 6565, 'png', 'image', '2021-07-19 10:44:13', '2021-07-19 10:44:13', NULL),
(748, 'N384lUaSUSP9VgUnzz42myguqmm536SN2Cb0Axla', 'uploads/all/nC0dRYwShmcfEEj0t1RLNwoA20XtWSzcu4smc7Ls.png', 19, 1475, 'png', 'image', '2021-07-19 10:44:13', '2021-07-19 10:44:13', NULL),
(749, 'h3htEj9JVGWAfpph8npDGuIBToSCaCOyoFBUSu0B', 'uploads/all/Ea1UIGAW35NaCvSjLODU2wv2HGg6blbGxvL07VBN.png', 19, 15303, 'png', 'image', '2021-07-19 10:44:13', '2021-07-19 10:44:13', NULL),
(750, 'BRMIkQdouMhKOViU2v9rMG56IWfGu09TwN9sria3', 'uploads/all/cEtVdqbgYTg21sq3xI78M7mWDVWD59CqYbSd4FqV.png', 19, 26889, 'png', 'image', '2021-07-19 10:44:19', '2021-07-19 10:44:19', NULL),
(751, 'dlnN93TMUl7uAOBbF3QsaKgU90w5kcGRyD2FK8Vy', 'uploads/all/pO2L23yT43mMGajSRsfoY1rHGbgzUELEScWntLqk.png', 19, 30058, 'png', 'image', '2021-07-19 10:44:19', '2021-07-19 10:44:19', NULL),
(752, 'DpzHOOANRPNIuShUQgazTQKkjioUGp7RPqGRdFCF', 'uploads/all/UC86nJd5yiJQ9zerClzzmCHYNCH3XUn0iaed8anR.png', 19, 20592, 'png', 'image', '2021-07-19 10:44:19', '2021-07-19 10:44:19', NULL),
(753, '9Ih2qJ9E2soiJgw1S8aVKq6EfpMPqcgNhxzgmuAV', 'uploads/all/wjaUUFd44A7IFoLrNCm8SxB73pWPKyJaHjNo9bl0.png', 19, 37210, 'png', 'image', '2021-07-19 10:44:26', '2021-07-19 10:44:26', NULL),
(754, 'hadRXi3b0K0T2g5pezd9R9Am8UnJ12YrOE1MKxYy', 'uploads/all/edsQLIpRdjBUnICQGOOgoZKDzJx0lr9C2ePSiTng.png', 19, 61940, 'png', 'image', '2021-07-19 10:44:28', '2021-07-19 10:44:28', NULL),
(755, 'fFBrTT5JSYWhetTnbV6RjAUnSiD4iIfpEWDQed79', 'uploads/all/5pXzakI3A8D0hhKQNsjRuTMrSuycrjJXeHjUloYU.png', 19, 54496, 'png', 'image', '2021-07-19 10:44:28', '2021-07-19 10:44:28', NULL),
(756, 'At0IiZhSSGQ9Lsk6sFtdIe3ZqMhDc23bCrP1dHWB', 'uploads/all/mwWV0EYw4pi8qKJAN36H4VEnQA3quskDC0Ud2ksz.png', 19, 51654, 'png', 'image', '2021-07-19 10:44:28', '2021-07-19 10:44:28', NULL),
(757, '5ojOJWPHacSb2tuj7HfEJYAGByLdsgJjzzdpnIxl', 'uploads/all/FLYkA8nposhMOB4TvAbooVOpxLd3kbEMlXNqmwtN.png', 19, 77948, 'png', 'image', '2021-07-19 10:44:28', '2021-07-19 10:44:28', NULL),
(758, 'gna5BBqmjQ8gmUmcxWoOhht4YpTLoDojtrl8nE4B', 'uploads/all/NQepPIe5jJQXPxL6Nl4zBmsiZMlrOsROcdJXH2dr.png', 19, 52309, 'png', 'image', '2021-07-19 10:44:28', '2021-07-19 10:44:28', NULL),
(759, 'aFxF60B8UAHOnkV2bw69Wl78yyOAm4T9xXcTkQhX', 'uploads/all/DpBKbvAQ5OACneoULPlxWWmYEvuJIzhlISr9Kapi.png', 19, 93667, 'png', 'image', '2021-07-19 10:44:29', '2021-07-19 10:44:29', NULL),
(760, '8hRWQRq0nT7yXJL1Qmd2H4Gb1hUN86aZkH6R3kKW', 'uploads/all/8GnLaTIP0I8y5T5b5r6jJJxloVvSHScs42EWMx7i.png', 19, 43786, 'png', 'image', '2021-07-19 10:44:45', '2021-07-19 10:44:45', NULL),
(761, 'bAZSBLNxQabYDaAtS9QMVtbqOTW4jAwnxf7cqVf8', 'uploads/all/7k0fHnRZVKm9r6S9RWq4TNBfkw39GrN3CleBncEM.png', 19, 44275, 'png', 'image', '2021-07-19 10:44:46', '2021-07-19 10:44:46', NULL),
(762, '7oliEtl5OKLFQG0Ay4uvFQ2KNm8Z3suphVtwfABC', 'uploads/all/lz4mE6W59p2YLErNERXgutfjNefA4Kmx7mte8qiQ.jpg', 19, 15532, 'jpg', 'image', '2021-07-19 10:44:59', '2021-07-19 10:44:59', NULL),
(763, '9DV2mI1YxNpp2Gu4ZrrdZWKTqr2Bdl7MAVGrhmHc', 'uploads/all/jIozv77TqEbnYa2C54ZjrQKr9V5o5gB0nLHBgpg0.png', 19, 6745, 'png', 'image', '2021-07-19 10:44:59', '2021-07-19 10:44:59', NULL),
(764, 'BIm6HAY1swa20Y0lvho5cWeXxy9zRRGUyELE6Ask', 'uploads/all/E2a312nIxJIEYKJIF95RmS8fztuuUrGQyEGJ4irU.png', 19, 236, 'png', 'image', '2021-07-19 10:44:59', '2021-07-19 10:44:59', NULL),
(765, 'DdYZ04tlfj52Z2rXWJhr98NnFN9TyU0OllRhPoJS', 'uploads/all/NNvbEmlF7RUGO074zdWXzBmUJ2tTCiMFK4odz8Nf.png', 19, 26508, 'png', 'image', '2021-07-19 10:45:00', '2021-07-19 10:45:00', NULL),
(766, 'BLWDcxaEfBvtF665yxaBDUOb3cLUMtyKxqyQWBGA', 'uploads/all/LkT4JCAnaabqYGSYf6Mh0T9fpCPW4OfunMAUjo3W.png', 19, 6805, 'png', 'image', '2021-07-19 10:45:00', '2021-07-19 10:45:00', NULL),
(767, 'Bi58uqrSuLTSHKDVz3xGCwQ36BwubzsexJst5Hav', 'uploads/all/PEbhXYGfWw15H1oq11we6XQEKYEmSZAV9n6zsb73.png', 19, 781, 'png', 'image', '2021-07-19 10:45:00', '2021-07-19 10:45:00', NULL),
(768, 'GARtBlY7bkiTg0QhovOfqwKnBMBXZgX3lRo7l1WA', 'uploads/all/Cbcfwo8hl1XmN405RMtIIkJmHiU5zHnD5GWJyEaZ.png', 19, 7250, 'png', 'image', '2021-07-19 10:45:00', '2021-07-19 10:45:00', NULL),
(769, 'ghFf9LHUOeoFoIMmrtKOzwpuHlHa4wQjKC1BkHRG', 'uploads/all/aZsEbZGOUTKV4QbOuXukYbWCq06gfqGRLuZTdyj6.png', 19, 49803, 'png', 'image', '2021-07-19 10:45:00', '2021-07-19 10:45:00', NULL),
(770, 'hZtPCPXNnroYrxNkR4WzUoEsxRkzNaQ5A1htyoah', 'uploads/all/XC5AEm54WwVh9o9jr7kKksb34kK9zC9RmIwy1cjz.png', 19, 22003, 'png', 'image', '2021-07-19 10:45:01', '2021-07-19 10:45:01', NULL),
(771, 'iNsGQuzdi8usaoTgIIKz0uVaoq8584MFUy2Gu3Hh', 'uploads/all/kZpTBXpCGpqmJ31bUb27l5lAYD7GTaF8OmdavH5W.png', 19, 15303, 'png', 'image', '2021-07-19 10:45:01', '2021-07-19 10:45:01', NULL),
(772, 'KNmr8YtRo4xaPKjGh5AhwJscUTXlkK4zndT6SMc2', 'uploads/all/eaW6qNDTKID6WLWfgXeefzrljY8FZgl1jkVOKngg.png', 19, 8237, 'png', 'image', '2021-07-19 10:45:01', '2021-07-19 10:45:01', NULL),
(773, 'Mfj5TYta2MIgjQcrL2B7ef29o15VlonVY86kAoGw', 'uploads/all/tqtmSZPyR3H8NYCAIC2XBoOlaYz17U7HNJ2hHjid.png', 19, 5872, 'png', 'image', '2021-07-19 10:45:01', '2021-07-19 10:45:01', NULL),
(774, 'qyKlbsroV7IMWxnq5NVUuyO4nNEBtT0DKeIIyFRC', 'uploads/all/tQLiy4GOu3C76WvYNFCKxbawZEQaFWrbFoVqPAVa.png', 19, 7250, 'png', 'image', '2021-07-19 10:45:02', '2021-07-19 10:45:02', NULL),
(775, 'PDWLmWazZ01jyzBCq2afG111pW7p7aWQRB6pPyTG', 'uploads/all/uROq6xSLzao6uWtSTtJx81wwcXuJJutBk0R6UJ27.png', 19, 16613, 'png', 'image', '2021-07-19 10:45:03', '2021-07-19 10:45:03', NULL),
(776, 'uXtS06w0VPK3DVVGkWwxoXU1wDZGlnRyV5n9YcZc', 'uploads/all/hYen7j68tze4SBohGI6vVM5q6ldCoAKg02PYaEI4.png', 19, 21308, 'png', 'image', '2021-07-19 10:45:04', '2021-07-19 10:45:04', NULL),
(777, 'mJsraKtK9lfSCrSTZm2mdUPjjpxZU1DqNg34SHBR', 'uploads/all/0bBuVEaAXcvOAGhYKJpkEdK8IMdADPlAKH8xLUAE.png', 19, 16613, 'png', 'image', '2021-07-19 10:45:05', '2021-07-19 10:45:05', NULL),
(778, 'MAE4rfMcTpYqW2lpNVyFHBpF9bqAzzZ5ic7zAINn', 'uploads/all/GjaCj0rBTVxmlrLB7GMhfCt7wyu4yPfJkBjyc649.png', 19, 47699, 'png', 'image', '2021-07-19 10:45:06', '2021-07-19 10:45:06', NULL),
(779, 'mfll1VzoHumUxjSV1bEqTmY7Kwodi9hLfwqgpIG7', 'uploads/all/ZvBKtkRZsmnIF3GD798GTpJiLO4WUDxyTmER4A5x.png', 19, 37210, 'png', 'image', '2021-07-19 10:45:07', '2021-07-19 10:45:07', NULL),
(780, 'N8jfcaJKXZfDgyVLxHa733ZWNfQ2yetbR4U8okX7', 'uploads/all/63ppPKE90MyOfscqfWh1gdAdZiiQ76mVv4w8PDzh.png', 19, 51654, 'png', 'image', '2021-07-19 10:45:07', '2021-07-19 10:45:07', NULL),
(781, 'yeaajgyQxzBuIs8bkkKXFdlEJkMyEK3SblVbkqcM', 'uploads/all/ImFxZX2nPsoUt27d2EbntvE2jBnbLibu4KnIoyZx.png', 19, 26508, 'png', 'image', '2021-07-19 10:45:07', '2021-07-19 10:45:07', NULL),
(782, 'IBadzBFsQSICK4T5BZGs9GIehT8FYwQjyJ4JPS7n', 'uploads/all/hp9mncWug8OmSGoEUPs8ljrektqHQ9ztpIhVbiGq.png', 19, 93667, 'png', 'image', '2021-07-19 10:45:08', '2021-07-19 10:45:08', NULL),
(783, 'PDioOOJYq7vEbw55SnDVpad6WJYmHlBzVmFP4G04', 'uploads/all/kVTSZTbzsT7gdxIyiRDaEJsg5wBlKjbuIaXj669I.png', 19, 77948, 'png', 'image', '2021-07-19 10:45:09', '2021-07-19 10:45:09', NULL),
(784, 'PRoy4hXnU8cfZ9vvlYJ8j2x60ivZaIO6CeP1vger', 'uploads/all/r8vUcvZ55Zfv4kOukenq2uhPJMUmGXBqb5BjY7bp.png', 19, 77668, 'png', 'image', '2021-07-19 10:45:10', '2021-07-19 10:45:10', NULL),
(785, 'InmdG8c7DRimLWBtNtmSzjaxTwI4fOFM2qUYid0E', 'uploads/all/PqeaLgF8IKoUeuavbeqbP2uUpJwAzv3V8KAQayL5.png', 19, 1106, 'png', 'image', '2021-07-19 10:45:19', '2021-07-19 10:45:19', NULL),
(786, 'kkKbRwwmj1AAomcPhbp3mu4FbSK8KOMlLcOtpqAZ', 'uploads/all/ZGPvxrCYpBixFXJDJvGTgMIDWpIbpfdppp2XvGDr.jpg', 19, 13367, 'jpg', 'image', '2021-07-19 10:45:19', '2021-07-19 10:45:19', NULL),
(787, 'NPlXAl3QK1egF5m5TB3QQRTx24x0CybDexqTOWxp', 'uploads/all/YfvyHV9adgXinogRS6aP8wDu9vZWBuAkoqRXGZ5G.png', 19, 6443, 'png', 'image', '2021-07-19 10:45:20', '2021-07-19 10:45:20', NULL),
(788, 'oMAaPcFjCI6yjv7AOvuV4wnHF6zMc9BuoBZy2y5Z', 'uploads/all/mrn0FhZOZLuIFITanSDhf4wIqgnKKnjbWSBApMm9.png', 19, 44275, 'png', 'image', '2021-07-19 10:45:22', '2021-07-19 10:45:22', NULL),
(789, 'op1vzd2LYyTq1yWqPkzc1Z9Qhx0TN76HceRK3nA7', 'uploads/all/9sszoHKpjYt9IzNQpoqYjMp07GDIWRTnwskRfUz8.png', 19, 6443, 'png', 'image', '2021-07-19 10:45:22', '2021-07-19 10:45:22', NULL),
(790, 'OPtMED2RUTSKZq7PdSZmHuHJ7yXb3tWS0C1J6Tzo', 'uploads/all/KiAtXlQYWBjLXOGnJPJWUS7KGOA51znHwk4uiGzQ.jpg', 19, 13398, 'jpg', 'image', '2021-07-19 10:45:22', '2021-07-19 10:45:22', NULL),
(791, 'QMGDJ5ONkjg6sr3jfkVxIhbrVCdX6PJ9eIyw7eOs', 'uploads/all/tGVJsjm3CdDAxSksIbGhWkWNq2sLkEqMySDjTVPH.png', 19, 236, 'png', 'image', '2021-07-19 10:45:23', '2021-07-19 10:45:23', NULL),
(792, 'RFLFFkfB4ARlMUFqr288OxvdQ26WnkS1fEnlwFLm', 'uploads/all/k4P9EDWsq5eXfr5SmjWaHmdNB4xyqhoitcxLGDeZ.png', 19, 39320, 'png', 'image', '2021-07-19 10:45:23', '2021-07-19 10:45:23', NULL),
(793, 'RNI31mk2faKMLaqQOIukoHW2xQx24qGe44pbn8He', 'uploads/all/uHxckAESw9UMRdbVgCiYkVcg1p8no7a8MIOIb819.png', 19, 30058, 'png', 'image', '2021-07-19 10:45:23', '2021-07-19 10:45:23', NULL),
(794, 'rnmQqeBvRo0He1Ycwo7YMy2hLtMbD5NL64119jul', 'uploads/all/4AMJSSQzgLn8GOPN8lzjT5AajhJWwx6gfvhaOqjZ.jpg', 19, 15591, 'jpg', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(795, 't3wvVFOWpjsoaQdxuFyYKguRcc4GyVjaKWRIosbx', 'uploads/all/pgQS2r2a8AKNlLob8DK4shR85UeTtQJDKi8KX2a9.png', 19, 988, 'png', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(796, 'TfItotpxSirkFNQxVgtS9EoE3tCotexaiSgEnxiV', 'uploads/all/xWkKCWsQuNibgYaPKXP5HHAiWxlbN8z4jhEY6yc9.png', 19, 1112, 'png', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(797, 'rxLdULEzVmAm3jnHAkExhXSvrzRDw7L5UdxQUZxM', 'uploads/all/8Xlvf5oAQjQWhhAsHIrkMdPnEy69A6lgbtFRGtCu.jpg', 19, 7409, 'jpg', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(798, 'TMr5YSKivkiAtTPgTRBry0uq1WBO7sNdeYrtUUIb', 'uploads/all/AmMjC0HwiYh88W8ftQhrgk03Y8YXSwopI7aIwwSK.png', 19, 7250, 'png', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(799, 'UTngHzOAEno6ErwJo81u3nAM3K3uCbfG2XsUGB8V', 'uploads/all/sILuZ0BGjb3mFaTyR3eojVYKmSP2WBmgGI48vMSV.png', 19, 988, 'png', 'image', '2021-07-19 10:45:24', '2021-07-19 10:45:24', NULL),
(800, 'WW0JJWXk76RINcDCRRKD4gvVnI95k8kwlXFGfo2e', 'uploads/all/ythfDIHMLvZFCU7ex0cFN5rrs0FspFVGfquNXSKP.png', 19, 1205, 'png', 'image', '2021-07-19 10:45:25', '2021-07-19 10:45:25', NULL),
(801, 'WWLDrpPpUYTMBY9fAdD93lGTHR4ona8Q6J60k4uR', 'uploads/all/GxbJLu3QwYj2qUXtrPUfEPGhZDU5b3WQx8IXR7uv.png', 19, 781, 'png', 'image', '2021-07-19 10:45:25', '2021-07-19 10:45:25', NULL),
(802, 'WsGFtx0cHYHtBGrfPnT5Dcn8udsahgtSxBD9YekR', 'uploads/all/Y8na4ksO84G9ZoY4WuomMNCoxHGzDQ7KM83Mh9Oo.png', 19, 532, 'png', 'image', '2021-07-19 10:45:25', '2021-07-19 10:45:25', NULL),
(803, 'x06f32DsmCcCfuLN8r13S3NMXcXN1s3i9Vp69ZNo', 'uploads/all/irumtTOYmkvo7umyZbsD2cgHl2LN5f2w5hfXrdtW.png', 19, 1342, 'png', 'image', '2021-07-19 10:45:25', '2021-07-19 10:45:25', NULL),
(804, 'WNQSgwOWJr53QLXftpYrBIJqHMkVYyP0ImJZNc4T', 'uploads/all/wXfmjpaJFzZPDJig4VACr5S0u8HFmPMa0hLZR9bL.png', 19, 5872, 'png', 'image', '2021-07-19 10:45:25', '2021-07-19 10:45:25', NULL),
(805, 'TwkRcMAyc9Xe8fQGXPzwCHDsJU8NWpgaHiPEh3lf', 'uploads/all/cOfNj9wlBinTv6HlVPAt6F7lWV9WBaqTCFNiv43L.png', 19, 26889, 'png', 'image', '2021-07-19 10:45:26', '2021-07-19 10:45:26', NULL),
(806, 'wZHUS0cgyKgvLWwV6XGP9wQBNzBBO5MBuJ7DOR3U', 'uploads/all/HLXvQ5dcuMtfmDeOC1hSNj5U9dWt5wGEd9k3bcs3.png', 19, 18102, 'png', 'image', '2021-07-19 10:45:27', '2021-07-19 10:45:27', NULL),
(807, 'vTM6JgkclaoXc79cK2vO7iucY8b6pAP1bgiZS5Sn', 'uploads/all/iKkrthH2uWpalhKUE2TIY0iWfhhOc07bHEEm8jX5.png', 19, 47434, 'png', 'image', '2021-07-19 10:45:27', '2021-07-19 10:45:27', NULL),
(808, 'x9AgkO2XaHSnHplx2U1H0EfaKxwlrDDc9kesYs1W', 'uploads/all/brZskeH7vlW5bF3YrIKPwFO545AvbMerxUyljI6N.png', 19, 49803, 'png', 'image', '2021-07-19 10:45:28', '2021-07-19 10:45:28', NULL),
(809, 'Zz9UMWE1dpsoK4gJiXhhKPzqHzUPiCaN6rC8thdi', 'uploads/all/XtaFdtxpgj915yOJ4jfsqqFH8r8ip1KzpfoT4EeP.png', 19, 769, 'png', 'image', '2021-07-19 10:45:28', '2021-07-19 10:45:28', NULL),
(810, 'XkNayR7dkJdljiKsaxGwgkQH8AsaqROabisSdOzN', 'uploads/all/55jkt0CKzm4NY73ReIiWqKnYcgY9h7gNAxZDIv66.png', 19, 57125, 'png', 'image', '2021-07-19 10:45:28', '2021-07-19 10:45:28', NULL),
(811, 'V7zSDDJhkH46c2CyFv19zXlPmBNAEbcq1fc3PuPc', 'uploads/all/5rxVHGkUc0mFnunFPRTvPtt6sq9EH3lBmtMo8HbP.png', 19, 120034, 'png', 'image', '2021-07-19 10:45:29', '2021-07-19 10:45:29', NULL),
(812, 'REpMBdfXkkNEmnmnq96dnySJwXnVbEkUndavuQgX', 'uploads/all/yPJL6ADbQPpSRt067wj3uBTajX4OYrHXFZzo6uap.png', 19, 120034, 'png', 'image', '2021-07-19 10:45:29', '2021-07-19 10:45:29', NULL),
(813, 'YX1c9vGklrUbdif6OrptGZ5Iio5rRiK2zsH5NNZ9', 'uploads/all/G7Zss8NEOLhpRCDgaPJD7KQKdVTxUM7vn320CTKM.png', 19, 54496, 'png', 'image', '2021-07-19 10:45:30', '2021-07-19 10:45:30', NULL),
(814, 'x653', 'uploads/all/YzEtQT6yXN7SMgJ3izedRuPD62k2aLrI0RDHLIeA.jpg', 19, 12571, 'jpeg', 'image', '2021-07-19 11:06:04', '2021-07-19 11:06:04', NULL),
(815, 'note7', 'uploads/all/a4Li58kRUdqW89GPBQ55eI3KwoHaJNJK84OQyKsN.jpg', 19, 25346, 'jpg', 'image', '2021-07-19 11:06:07', '2021-07-19 11:06:07', NULL),
(816, 'zero8', 'uploads/all/QzC0DUzMhiIK3AJQfNC0yc9YhMl3GOHg0aDevopa.jpg', 19, 23282, 'jpg', 'image', '2021-07-19 11:06:07', '2021-07-19 11:06:07', NULL),
(817, 'hot10play', 'uploads/all/kdqPyCLVvdgnfxH9VJObHpNTZiAxFAqk3TPJwUdo.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 11:06:13', '2021-07-19 11:06:13', NULL),
(818, 'hot10', 'uploads/all/aritTyUF2T3KAsEsszGO3DknZmZ9JQXvPeTEGGUG.jpg', 19, 26735, 'jpg', 'image', '2021-07-19 11:06:13', '2021-07-19 11:06:13', NULL),
(819, 'x653', 'uploads/all/fhFZBJ0VO1WRoK6q93bJ6yRGpoYuYCfYYCMZkvog.png', 19, 219331, 'png', 'image', '2021-07-19 11:06:14', '2021-07-19 11:06:14', NULL),
(820, 'note7lite', 'uploads/all/Df2cSxoGHNsjNmgWzh5rl1H8zMxjtDorwsfW0Hjk.jpg', 19, 27813, 'jpg', 'image', '2021-07-19 11:06:14', '2021-07-19 11:06:14', NULL),
(821, 'hot10play (1)', 'uploads/all/IldeJHZ555annwvjV4RtMq2kxUBQ4Q3IyXNFZZTu.jpg', 19, 24996, 'jpg', 'image', '2021-07-19 11:06:15', '2021-07-19 11:06:15', NULL),
(822, 'hot10lite', 'uploads/all/rXDg9n54boiQT2PRowHNWeQqj0IW9kV2eaWWNqw2.jpg', 19, 24716, 'jpg', 'image', '2021-07-19 11:06:15', '2021-07-19 11:06:15', NULL),
(823, 'smart5-dual', 'uploads/all/zP0qDPlw5OJ9ix75VuzfLzvkLv4L5wFnU1eti1e2.jpg', 19, 30669, 'jpg', 'image', '2021-07-19 11:06:16', '2021-07-19 11:06:16', NULL),
(824, 'note8i', 'uploads/all/bFIK9theZWkWTY2aBI7gqv5CjYWROMG8d4fkIueA.jpg', 19, 31131, 'jpg', 'image', '2021-07-19 11:06:18', '2021-07-19 11:06:18', NULL),
(825, 'note8', 'uploads/all/CkeolQQ8cdbMQFggBSdPpWTN52JlGCsZzmtci7uP.jpg', 19, 31777, 'jpg', 'image', '2021-07-19 11:06:18', '2021-07-19 11:06:18', NULL),
(826, 'web-logo (1)', 'uploads/all/kBSUM265R49OKKJ3nJROcJwLGlgN9QsIk35i0YSR.png', 19, 10422, 'png', 'image', '2021-07-19 11:08:44', '2021-07-19 11:08:44', NULL),
(827, 'kakebe theme logo', 'uploads/all/vDtcCrSldgoYlCvhTABn1G8Bmj3HIikdeuHNYCyf.png', 19, 26968, 'png', 'image', '2021-07-19 11:14:55', '2021-07-19 11:14:55', NULL),
(828, 'hot10lite', 'uploads/all/n3rgkA3bYznnHwqbtkHqaCwAlakoKGDMZujH4p5v.jpg', 19, 24716, 'jpg', 'image', '2021-07-19 13:13:40', '2021-07-19 13:13:40', NULL),
(829, '1 litre', 'uploads/all/DGXSoAZC6Z5ejeOJmUNk4K7ZFSoUxHAxE1ZU2Wi2.jpg', 19, 13815, 'jpg', 'image', '2021-07-19 13:23:52', '2021-07-19 13:23:52', NULL),
(830, 'azam 2kg', 'uploads/all/tpAHJfgNpCTo36hMfRO5Y8v7uBORyBXowY59r8Sw.jpg', 19, 11885, 'jpg', 'image', '2021-07-19 13:23:52', '2021-07-19 13:23:52', NULL);
INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(831, 'always 2.0l 2', 'uploads/all/kOZLtPQ5NzdJlBTargcOIbPr0goroz5mf9dm5cE1.jpg', 19, 6027, 'jpg', 'image', '2021-07-19 13:23:53', '2021-07-19 13:23:53', NULL),
(832, 'azam 2', 'uploads/all/vtcw6cHbsTypL6AXEmMCeliEQfECYjPUA7GvblHF.jpg', 19, 15472, 'jpg', 'image', '2021-07-19 13:23:53', '2021-07-19 13:23:53', NULL),
(833, 'white star magic1kg', 'uploads/all/yn5mL24VYVRuvSnxF1hUdEIhgOp1MktsEov61dDc.jpg', 19, 7572, 'jpg', 'image', '2021-07-19 13:23:53', '2021-07-19 13:23:53', NULL),
(834, 'lucid dry iron 2', 'uploads/all/9Ncq2WMiNGEVmCOnRZ2Kk6acR6H8ShBGd8FM7K5r.jpg', 19, 20452, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(835, '1kg', 'uploads/all/5GUJ5tE95R8Ikn2Lg10WDGJRZKhxpHcibW7Zmpld.jpg', 19, 63636, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(836, 'lucid dry iron', 'uploads/all/XbP5h3BI6TQZytoPlMYTCrP0M9zCx4Uwc2YPJIEc.jpg', 19, 22558, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(837, '500ml', 'uploads/all/wxqkFaczXWYVfSIcGC9MHaXJn86WTo8One8VyIIK.jpg', 19, 58796, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(838, 'fortune gold 5l', 'uploads/all/xHIVdlRl46G6yvTQoh0avwURhF2ZHlxXNGA6JhbG.jpg', 19, 36686, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(839, 'star fry', 'uploads/all/zbcwd5IsKGM21b878OMkTa3wSyUrQp2vVzfPFHal.jpg', 19, 31998, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(840, 'Always-3-Liters-Vacuum-Jag-Flask1', 'uploads/all/nJDZSC387RMpXxr7TeKZQJqxDtmtyaMZaZRtHwtK.jpg', 19, 41392, 'jpg', 'image', '2021-07-19 13:23:54', '2021-07-19 13:23:54', NULL),
(841, 'Sunvita-Cooking-Oil-5Litre-1', 'uploads/all/kjcn5YH7FcowemEPLCFgKDrtdFbjZqsYsMDaNnme.jpg', 19, 33399, 'jpg', 'image', '2021-07-19 13:23:55', '2021-07-19 13:23:55', NULL),
(842, 'kakira-sugar 2kg', 'uploads/all/tNKSWxzviMEFu7JIitlKx6UzPOQ7cVsMdNhZhdXL.jpg', 19, 38840, 'jpg', 'image', '2021-07-19 13:23:55', '2021-07-19 13:23:55', NULL),
(843, 'always 2.0 l', 'uploads/all/bgPW3IkTV4eyX5VimHLbbRhQ4UcRgLWN2g8Up8Fc.jpg', 19, 37624, 'jpg', 'image', '2021-07-19 13:23:55', '2021-07-19 13:23:55', NULL),
(844, 'white star magic 500g', 'uploads/all/DRejbPxOnlov4DMFj0wdDXTj874yax9oiCzVjdEA.jpg', 19, 60004, 'jpg', 'image', '2021-07-19 13:23:55', '2021-07-19 13:23:55', NULL),
(845, 'philips', 'uploads/all/yfcztzk1Jdt9YoE6JBTZzIuurdQtXM7lYJmJsQnB.jpg', 19, 34054, 'jpg', 'image', '2021-07-19 13:23:55', '2021-07-19 13:23:55', NULL),
(846, 'SCARLET-CS-10_2048x2048', 'uploads/all/wWiTtEiYqOTmTvcsnc1FUjBoCfnFoD8Xw5W7VwGg.jpg', 19, 47065, 'jpg', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(847, 'juice blender', 'uploads/all/XjmdVYJ12trkWuGyJdZS6zhNhkmFmhU9nwrgHBkU.jpg', 19, 103027, 'jpg', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(848, 'fortune butto500ml', 'uploads/all/4Khestnoey0fwfQ1YBtLX6xVL8omhOgETCC7F6qr.jpg', 19, 60524, 'jpg', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(849, 'SCARLET-CS-1_2048x2048', 'uploads/all/fz9AdHzP0L0oXA0TPWzBl7WsrI4Nrncld1unmYsS.jpg', 19, 91405, 'jpg', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(850, 'white star magic 1 kg 2', 'uploads/all/A7WY0cQYBljBjldbV96D1QNJBsORi5hz5diDkiDg.jpg', 19, 109703, 'jpg', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(851, 'philps 2', 'uploads/all/GHisjwTh3azGPRGxM6Ew7eSmdxULwQwoqa5XCb1b.png', 19, 102332, 'png', 'image', '2021-07-19 13:23:56', '2021-07-19 13:23:56', NULL),
(852, 'supremme 2kg', 'uploads/all/EtZQjAGP3a0bgp2DLot1XTSiMpy3AckJ85ofzwmt.jpg', 19, 161599, 'jpg', 'image', '2021-07-19 13:23:57', '2021-07-19 13:23:57', NULL),
(853, 'lucid 2 i 1 blender', 'uploads/all/hqK96A5lcmVX3nutHImdy61z0ov0epnKGaVhpuiJ.png', 19, 407160, 'png', 'image', '2021-07-19 13:24:09', '2021-07-19 13:24:09', NULL),
(854, 'supreme-all-purpose 2kg', 'uploads/all/4HOv7AsaqXrD36QMG5Jtur4YXliJBkq4kMT7r07i.jpg', 19, 365366, 'jpg', 'image', '2021-07-19 13:25:31', '2021-07-19 13:25:31', NULL),
(855, '10kg', 'uploads/all/ZSVd56DDrDXpohvSt3AiAuSj2ho8wwBou27lfJNf.jpg', 19, 60770, 'jpg', 'image', '2021-07-19 13:52:11', '2021-07-19 13:52:11', NULL),
(856, 'cg7 tecno', 'uploads/all/P6lRuRdadgaH6UcJWCl3nIqA50muj8DK07PjnYji.jpg', 19, 11801, 'jpeg', 'image', '2021-07-19 13:53:56', '2021-07-19 13:53:56', NULL),
(857, 'cg6 tecno', 'uploads/all/34NXdAYFvID2dkTkP8ep3jI478fO0iVkQriERVeO.jpg', 19, 11875, 'jpeg', 'image', '2021-07-19 13:58:36', '2021-07-19 13:58:36', NULL),
(858, 'KF7j tecno', 'uploads/all/uQnjPd9HHEyGFXpaZVDHnqmj9azkKmJdcxYypZKW.jpg', 19, 9294, 'jpeg', 'image', '2021-07-19 13:58:36', '2021-07-19 13:58:36', NULL),
(859, 'itel', 'uploads/all/Fxk57mGZl61biasPSX0wYLFdXfLmz3oxPzB5iBHZ.png', 19, 8164, 'png', 'image', '2021-07-19 14:09:40', '2021-07-19 14:09:40', NULL),
(860, '438-4388897_tecno-mobile-logo-01-tecno-hd-png-download', 'uploads/all/UmlSubxYblVe6MWDdCyrFASXR9Uo8wmUJ2BIygJk.png', 19, 17240, 'png', 'image', '2021-07-19 14:11:19', '2021-07-19 14:11:19', NULL),
(861, 'H', 'uploads/all/GG4gO1hLDNPQ02AbZJRXWhqDYNSabgqfNvS7XQ1v.jpg', 19, 15008, 'jpg', 'image', '2021-07-19 14:31:34', '2021-07-19 14:31:34', NULL),
(862, 'habari', 'uploads/all/epp9WBIVpFJ6fBUfP9JSZ4lcaZRA4RKekgByzuaL.jpg', 19, 13971, 'jpg', 'image', '2021-07-19 14:31:35', '2021-07-19 14:31:35', NULL),
(863, 'HH', 'uploads/all/M3fsAEF7UzXhizQURJr5FLuDHkUXXgDqbFwDopkZ.jpg', 19, 54168, 'jpg', 'image', '2021-07-19 14:31:36', '2021-07-19 14:31:36', NULL),
(864, 'billa', 'uploads/all/Z4woCZG0kIRFrwQeohRfd81ccxYVZsVDPquJDiq4.jpg', 19, 26468, 'jpg', 'image', '2021-07-19 14:38:11', '2021-07-19 14:38:11', NULL),
(865, 'Pamper', 'uploads/all/UVG4KSFB2CRyEjgZepcjo921OHHzZAqovTRcBVJA.jpg', 19, 38909, 'jpg', 'image', '2021-07-19 14:39:21', '2021-07-19 14:39:21', NULL),
(866, 'BS 1156', 'uploads/all/OIkYtUECzzPEztMhEU8jf4NGYli5BsfqY3wG6G7O.jpg', 19, 103027, 'jpg', 'image', '2021-07-19 14:44:54', '2021-07-19 14:44:54', NULL),
(867, 'BS 1156 2', 'uploads/all/W2y9Dcu2smgXcba60uVXf4QqRj5JDi651cwAY26C.jpg', 19, 137403, 'jpg', 'image', '2021-07-19 14:44:58', '2021-07-19 14:44:58', NULL),
(868, 'fortunee', 'uploads/all/jvAaxmqQxZNx7Szm58ZvKjhUtHqmuzFSkJL1EMj4.jpg', 19, 8747, 'jpg', 'image', '2021-07-19 14:48:52', '2021-07-19 14:48:52', NULL),
(869, 'fortune', 'uploads/all/I2HOga4aH70x3dDW8LMM4gSDhcD9r77N18PNCyQc.jpg', 19, 34601, 'jpg', 'image', '2021-07-19 14:48:53', '2021-07-19 14:48:53', NULL),
(870, 'Dura', 'uploads/all/tW1SXZSX4m0KPH9MAjwFvTwtELzkeXxBHwEXroXb.jpg', 19, 35000, 'jpg', 'image', '2021-07-19 14:49:08', '2021-07-19 14:55:02', '2021-07-19 14:55:02'),
(871, 'dabur', 'uploads/all/LsFhfNdMc33SWJ22nDyqenPWbKbTfJdBMUe6FwdR.jpg', 19, 18746, 'jpg', 'image', '2021-07-19 14:52:26', '2021-07-19 14:52:26', NULL),
(872, 'LUCID-16-Floor-Standing-Fan-With-A-Remote-Control-Whit', 'uploads/all/J1kzpT6oWshBD7Bj8ByN4oAAby7rE6pQNvwhfEYQ.jpg', 19, 40690, 'jpg', 'image', '2021-07-19 14:52:30', '2021-07-19 14:52:30', NULL),
(873, 'BS 1156', 'uploads/all/UNxo3SXH4xwxHo2Al0uwlFtyJNAh62dHsyRjVWj3.jpg', 19, 103027, 'jpg', 'image', '2021-07-19 14:52:34', '2021-07-19 14:52:34', NULL),
(874, 'dabur 2', 'uploads/all/FiqNw1MJOH5YqBWISE3p7I8ojbXCt5axUlvkk34L.jpg', 19, 101681, 'jpg', 'image', '2021-07-19 14:52:34', '2021-07-19 14:52:34', NULL),
(875, 'BS 1156 2', 'uploads/all/8NqwqHE1LJ9aavC507O9JykYGFmEGDMVqHeEggXT.jpg', 19, 137403, 'jpg', 'image', '2021-07-19 14:52:36', '2021-07-19 14:52:36', NULL),
(876, 'kakira 25kg', 'uploads/all/Dnm9scZ5PUFOboUw516rIze13zoEhb7FWPjp5Eo6.jpg', 19, 25460, 'jpg', 'image', '2021-07-19 15:03:08', '2021-07-19 15:03:08', NULL),
(877, 'white star magic 1kg', 'uploads/all/yVHGAKoAHqL43zXnoE4EFh8UZ9HTm8ufoPogEoen.jpg', 19, 7572, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(878, 'kakira 50kg', 'uploads/all/ibFsKnY36TOyaFBq7CPrd7sMULqDbDHDWcTDdBW7.jpg', 19, 44336, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(879, 'lucid kettle', 'uploads/all/V5YDf6DTCBkO9gjJJyBXv6WksVVzxblbNjcF52w3.jpg', 19, 63660, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(880, 'white star magic 500g', 'uploads/all/F7UcPRrt6anELDaDNTzqQTkC73FRZpveJ8CIaT7l.jpg', 19, 60004, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(881, 'LUCID-16-Floor-Standing-Fan-With-A-Remote-Control-Whit', 'uploads/all/tlnBHD3Q0H7d4a4TdKSETewXmZtZHrMPQugVeO6O.jpg', 19, 40690, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(882, 'white star soap 1kg', 'uploads/all/JVVJjOLpPOygQXA8dQTFpdti1EGRBZxhetpwaung.jpg', 19, 20804, 'jpg', 'image', '2021-07-19 15:03:09', '2021-07-19 15:03:09', NULL),
(883, 'abc dent', 'uploads/all/aEXFmpDIJoMBI6gjcaDCeTwqn38ytVEs7sswfevV.jpg', 19, 98907, 'jpg', 'image', '2021-07-19 15:03:11', '2021-07-19 15:03:11', NULL),
(884, 'abc', 'uploads/all/RWXffbf4mgDpUljb9Tf8xxpTTgKtqaBRdjzhn2pI.jpg', 19, 8596, 'jpg', 'image', '2021-07-19 15:15:39', '2021-07-19 15:15:39', NULL),
(885, 'arieal', 'uploads/all/JZI8o6k9EpHsyUAgrr5ncycUh1S8ALF8Q48IzNvS.jpg', 19, 47887, 'jpg', 'image', '2021-07-19 15:23:21', '2021-07-19 15:23:21', NULL),
(886, 'white star magic 500g', 'uploads/all/1b8enDrhX9hOoJppmEVLpiPpezBZEjQvYhJEvscv.jpg', 19, 60004, 'jpg', 'image', '2021-07-19 15:25:28', '2021-07-19 15:25:28', NULL),
(887, 'Raha Drinking Chochlate 200g', 'uploads/all/sOC8d7qLjKEQA8QiO0TNyR6LJ87JoJLlM2hIEhd5.jpg', 19, 17277, 'jpg', 'image', '2021-07-19 15:25:29', '2021-07-19 15:25:29', NULL),
(888, 'Aerial 500g', 'uploads/all/ShKNOYj4VefKUwTJcD7QuElDsMwY3XdBkJ4ohbdg.jpg', 19, 21395, 'jpg', 'image', '2021-07-19 15:25:29', '2021-07-19 15:25:29', NULL),
(889, 'Raha Drinking Chochlate 200g 1', 'uploads/all/UlIMZtW6AiL9gL7gV925BdVayMCK2P9prSXRtqDc.jpg', 19, 30055, 'jpg', 'image', '2021-07-19 15:25:29', '2021-07-19 15:25:29', NULL),
(890, 'always maxi thick', 'uploads/all/wB7y6PuThzUT4gQxYI3mHxY7VtbglANlRqrWiYb2.jpg', 19, 85476, 'jpg', 'image', '2021-07-19 15:25:29', '2021-07-19 15:25:29', NULL),
(891, '2 in 1 - 85', 'uploads/all/G59ZjDJuf1YBahkZQwn8MdN1uFzhgMklTT0Usdix.jpg', 19, 107677, 'jpeg', 'image', '2021-07-19 15:25:46', '2021-07-19 15:25:46', NULL),
(892, '3 in 1 - 120', 'uploads/all/ICgEeSxY7W4343Dv3rtJ1EiQe4YkfdRDuLGbKGqt.jpg', 19, 110953, 'jpeg', 'image', '2021-07-19 15:25:47', '2021-07-19 15:25:47', NULL),
(893, '30 kk', 'uploads/all/Hk8yYDt4vTFWBzKjk44CTsHmzupZgu66A5OGGets.jpg', 19, 66210, 'jpeg', 'image', '2021-07-19 15:25:49', '2021-07-19 15:25:49', NULL),
(894, 'wallet', 'uploads/all/M74yHxmESXed547daHwlEPgvjYAjfWu5JTz1adYG.jpg', 19, 62311, 'jpeg', 'image', '2021-07-19 15:25:49', '2021-07-19 15:25:49', NULL),
(895, '60 ..', 'uploads/all/wEVnLBXuUfclthzjiCrtfRF90Jbghb6iPTell2A6.jpg', 19, 76009, 'jpeg', 'image', '2021-07-19 15:25:50', '2021-07-19 15:25:50', NULL),
(896, '85 single', 'uploads/all/HHiX1iSwOOkejI5l2s4GwVjI37AQ2kRMWBkj3X7g.jpg', 19, 82884, 'jpeg', 'image', '2021-07-19 15:25:50', '2021-07-19 15:25:50', NULL),
(897, '4 in 1 part', 'uploads/all/MaKbTZvC6dYZADZu2mTDvnaOZzC3Lgs6ayOqyaxH.jpg', 19, 154844, 'jpeg', 'image', '2021-07-19 15:25:50', '2021-07-19 15:25:50', NULL),
(898, '60', 'uploads/all/CSbN4aiKPvlD6v0pRoPaw6Cjbf1n3U6goKqRrA3G.jpg', 19, 101933, 'jpeg', 'image', '2021-07-19 15:25:51', '2021-07-19 15:25:51', NULL),
(899, 'hand ', 'uploads/all/zqMIDvfG1ZiWKt2Yh6GfwMUgY2giEwYVAcfYyJSh.jpg', 19, 99871, 'jpeg', 'image', '2021-07-19 15:25:51', '2021-07-19 15:25:51', NULL),
(900, 'one 60 1', 'uploads/all/Y7EkF6C7fLgCgyGx4YO6nn1NGIInfm7jEdfI8yTJ.jpg', 19, 106454, 'jpeg', 'image', '2021-07-19 15:25:51', '2021-07-19 15:25:51', NULL),
(901, '4 in 1', 'uploads/all/SJc5NdpSEVFk0fUzbvWF1ey936pr9OyWnHhGxlTN.jpg', 19, 140872, 'jpeg', 'image', '2021-07-19 15:25:51', '2021-07-19 15:25:51', NULL),
(902, 'four in one ', 'uploads/all/En4yux2TsQUUAQ61zbBAEaVJojkwqjusy5S317jt.jpg', 19, 127732, 'jpeg', 'image', '2021-07-19 15:25:52', '2021-07-19 15:25:52', NULL),
(903, 'Always-Cotton-Soft-Maxi-Thick-7-Extra-Long', 'uploads/all/6Pp91PL1QthvSBBfGWEqb10RsIsSfZgSLuf23bMx.jpg', 19, 34237, 'jpg', 'image', '2021-07-19 15:29:06', '2021-07-19 15:29:06', NULL),
(904, 'Blue band 250g', 'uploads/all/u4hNjI4JhHLHyTmvbqCHIOpftXXitxhQx3PS8BbX.jpg', 19, 67654, 'jpg', 'image', '2021-07-19 15:29:08', '2021-07-19 15:29:08', NULL),
(905, 'Blue band 250g2', 'uploads/all/vJkb1TKIgcVT2TKLk2SePhhS8sNT0KNcse7tvv28.jpg', 19, 69718, 'jpg', 'image', '2021-07-19 15:29:08', '2021-07-19 15:29:08', NULL),
(906, 'Always-Cotton-Soft-Maxi-Thick-7-Extra-Long 1', 'uploads/all/0fIOthQAPhgqqlwTlkpK01cLvU8h7zH3ZWvv0MgR.jpg', 19, 109175, 'jpg', 'image', '2021-07-19 15:29:31', '2021-07-19 15:29:31', NULL),
(907, 'latto', 'uploads/all/aszfy9xWtBd0v1LyNuMTjqpBFiiQJkujJzXriyok.jpg', 19, 7897, 'jpg', 'image', '2021-07-19 15:35:55', '2021-07-19 15:35:55', NULL),
(908, 'WhatsApp Image 2021-07-18 at 11.30.51 AM', 'uploads/all/UO0c6VpphZV94TvT23O3FV2HhdR7581FqczhUD7l.jpg', 19, 84957, 'jpeg', 'image', '2021-07-19 15:37:09', '2021-07-19 15:37:09', NULL),
(909, 'WhatsApp Image 2021-07-18 at 11.30.48 AM', 'uploads/all/gHO55i7NHpJtmRcuYh1nGxnhE96gPDuqQLKMZPz2.jpg', 19, 135209, 'jpeg', 'image', '2021-07-19 15:37:09', '2021-07-19 15:37:09', NULL),
(910, 'WhatsApp Image 2021-07-18 at 11.31.26 AM (2)', 'uploads/all/X8KCsa7SCD9bsFTjH4yI3AWXRyVdgbQlBycjf8AF.jpg', 19, 76936, 'jpeg', 'image', '2021-07-19 15:37:09', '2021-07-19 15:37:09', NULL),
(911, 'WhatsApp Image 2021-07-18 at 11.31.26 AM', 'uploads/all/d1pz1SSir1lD4neol5NwmUXSE1jxNWXXZ7ii4C4G.jpg', 19, 101878, 'jpeg', 'image', '2021-07-19 15:37:09', '2021-07-19 15:37:09', NULL),
(912, 'WhatsApp Image 2021-07-18 at 11.31.24 AM (1)', 'uploads/all/v4a8zvO1y090mJNCx6x4aCCqtXUchjjWmKFP2VMR.jpg', 19, 106269, 'jpeg', 'image', '2021-07-19 15:43:45', '2021-07-19 15:43:45', NULL),
(913, 'WhatsApp Image 2021-07-18 at 11.31.22 AM (2)', 'uploads/all/3Rs18Fi54OVBBv6ucjGkALblm0lHojiQcv5RAaLQ.jpg', 19, 115967, 'jpeg', 'image', '2021-07-19 15:43:45', '2021-07-19 15:43:45', NULL),
(914, 'WhatsApp Image 2021-07-18 at 11.31.23 AM', 'uploads/all/yE9hV3N0RNkZar9uLKbBIzaleylgx8eci9dt8gIm.jpg', 19, 177360, 'jpeg', 'image', '2021-07-19 15:43:46', '2021-07-19 15:43:46', NULL),
(915, NULL, 'uploads/all/999999999920210719121819.jpg', 32, 1696801, 'jpg', 'image', '2021-07-19 18:18:19', '2021-07-19 18:18:19', NULL),
(916, NULL, 'uploads/all/1000000000020210719183112.jpg', 45, 160560, 'jpg', 'image', '2021-07-20 00:31:12', '2021-07-20 00:31:12', NULL),
(917, NULL, 'uploads/all/1000000000020210719211229.jpg', 49, 4163610, 'jpg', 'image', '2021-07-20 03:12:29', '2021-07-20 03:12:29', NULL),
(918, NULL, 'uploads/all/1000000000020210719211255.jpg', 49, 4780684, 'jpg', 'image', '2021-07-20 03:12:55', '2021-07-20 03:12:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT '0.00',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, 'admin', 'Stephen', 'steujps@gmail.com', '2021-07-18 20:07:35', NULL, NULL, '$2y$10$JKOKMFeI.PqbQpSlz3n9vewo6yNUSMYYCKK/dDjcpjWTzhJp7vxIG', 'w2K79hLYkTgtX5FJeQBaTdRZpz5xXD6PQXrxGd53vehDwdUambonNvCIaEoM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-18 20:31:35', '2021-07-18 20:31:35'),
(19, NULL, NULL, 'staff', 'Sedrick Otolo', 'sedricksedu2@gmail.com', NULL, NULL, NULL, '$2y$10$dwDzvyGtsK67oxSVWSRqEO/NHr1MLNmJb7AghXaIO1BoZgq0x7N/.', 'QylgFiG0VWyPF90IJ220cqQrakiJvLPNz6nqz0ujZlD3tBOkhqeDABBBA6lS', NULL, NULL, NULL, NULL, NULL, NULL, '0777676206', 0.00, 0, NULL, NULL, 0, '2021-07-19 00:51:47', '2021-07-19 00:51:47'),
(20, NULL, NULL, 'staff', 'Joshua Okot', 'okotjoshua43@gmail.com', NULL, NULL, NULL, '$2y$10$IQfK7UbpFRW.ByHvOLp/wuuUowjhPDvNEg1nFdNWuhscpd4qVrEmm', 'i2nWV8mDg5l9SylFMQVaZMJ5fYCc7Die4oOuGVlfpebKF2MOWjcdD1JOV93H', NULL, NULL, NULL, NULL, NULL, NULL, '0777854154', 0.00, 0, NULL, NULL, 0, '2021-07-19 00:52:33', '2021-07-19 00:52:33'),
(21, NULL, NULL, 'staff', 'PK', 'pkasemer@gmail.com', NULL, NULL, NULL, '$2y$10$TPidYq0tpSWnTXA4X2ZbkuzddMKILiWVntYFCgCrYAhCh1seoKxx.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0787250196', 0.00, 0, NULL, NULL, 0, '2021-07-19 00:54:45', '2021-07-19 00:54:45'),
(32, NULL, NULL, 'customer', 'Okot Joshua', NULL, '2021-07-19 18:16:44', NULL, NULL, '$2y$10$Zi9zSpTbCfy8cAMYpyEZN.6M4k3CGkNWuHxi1TwOrV8JZlcCKL2IG', NULL, NULL, '915', NULL, NULL, NULL, NULL, '+256777854154', 0.00, 0, NULL, NULL, 0, '2021-07-19 18:16:19', '2021-07-19 18:18:19'),
(33, NULL, NULL, 'customer', 'stv', NULL, '2021-07-19 18:18:42', NULL, NULL, '$2y$10$8vfRFxXfUfD2wjlm4M7tVOPJc.7VMmI1ZE557xyU5YT14zom1JcRe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256780286800', 0.00, 0, NULL, NULL, 0, '2021-07-19 18:18:25', '2021-07-19 18:18:42'),
(34, NULL, NULL, 'customer', 'Acar Emmanuel', NULL, NULL, '381649', NULL, '$2y$10$x8PyI/ZlJ3OxJNy0r0y2LOD1sfrrGrJtdn1o6VfsGtLUGXiu7AYSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256701062054', 0.00, 0, NULL, NULL, 0, '2021-07-19 18:46:28', '2021-07-20 11:05:08'),
(35, NULL, NULL, 'customer', 'Becky Miss', NULL, '2021-07-19 18:55:08', NULL, NULL, '$2y$10$/oxuCn7jLs6mAlajdaxLTuoPS5DV77Zl7Z6fEHh52EGcQ8jO.O/p.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256772474256', 0.00, 0, NULL, NULL, 0, '2021-07-19 18:54:25', '2021-07-19 18:55:08'),
(36, NULL, NULL, 'customer', 'patrick', NULL, '2021-07-19 19:19:20', NULL, NULL, '$2y$10$F7dKwcsBjfVWWKRS8ZqA6ue0AMu4xKiK0VAA1vcaz1F6a7WDJjLB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256787250196', 0.00, 0, NULL, NULL, 0, '2021-07-19 19:18:58', '2021-07-19 19:19:20'),
(37, NULL, NULL, 'customer', 'Chris Emmanuel Ocero', NULL, '2021-07-19 08:07:40', '235209', NULL, '$2y$10$LgYJp.1pW.dwLDgOSMYu4.wjgAdUJUT9kOHhSPQ3gOHuUcsMOElmu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256788646146', 0.00, 0, NULL, NULL, 0, '2021-07-19 20:05:40', '2021-07-19 20:06:40'),
(38, NULL, NULL, 'customer', 'Odongo Perez Angel', 'okeechobeeangel@gmail.com', '2021-07-19 20:07:44', '361070', NULL, '$2y$10$iKQmFG.DTkPcEImJfQ.DK.iOgmejBhiShE8xk9OKBfS9lflESX0cC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-19 20:19:44', '2021-07-19 20:19:44'),
(39, NULL, NULL, 'customer', 'Fiona Gifty', 'fionagifty840@gmail.com', '2021-07-19 20:07:49', '526525', NULL, '$2y$10$WWagIPDJsbgkA6T/Rr/XK.7cbGJLTfpgtFHem8sQLWeg4.QTTv5Sq', 'vJCUuN5GXd3t0REPavTD68JpXvVtGZxxOGpz7UBV8i9pHrsq6nU08UYP5ydb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-19 20:35:49', '2021-07-19 20:35:49'),
(40, NULL, NULL, 'customer', 'Brian Latigo', NULL, '2021-07-19 20:58:59', NULL, NULL, '$2y$10$3RCPadQsyT.RHD3Arp0asuEeZe4EXqjaLiNQu17R2yibJKYYzU0s2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256783882279', 0.00, 0, NULL, NULL, 0, '2021-07-19 20:58:35', '2021-07-19 20:58:59'),
(41, NULL, NULL, 'customer', 'Acar Emmanuel', 'enriquezmanuel012@gmail.com', '2021-07-19 21:07:26', NULL, NULL, '$2y$10$J48FjlSvsqHhhFRoYh/cUeExyQNFZ5eQ/EoqTVdFbndeZCSsYh9tK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-19 21:22:26', '2021-07-19 21:22:26'),
(42, NULL, NULL, 'customer', 'Test User', 'test@active.us', '2021-07-19 22:07:40', NULL, NULL, '$2y$10$/XRgzePGydgyLHxMt9yAou.pWlSQIgVIjamJs/NlcB6tag4MHH6qW', 'mYzEcOSiL1GS9FJMXO3oXnBcRokqK3okxRQMjStwT1JTOiqgjgfGLzdilh7C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-19 22:33:40', '2021-07-19 22:33:40'),
(43, NULL, NULL, 'customer', 'OMONG GILBERT ALLAN', NULL, '2021-07-19 22:43:22', NULL, NULL, '$2y$10$/VR.c3FkU8tqwWpvB/FCeOUAAjUAvWSdDcus5BjG9L3T2FcH2VZ1C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256777457651', 0.00, 0, NULL, NULL, 0, '2021-07-19 22:42:58', '2021-07-19 22:43:22'),
(44, NULL, NULL, 'customer', 'ogena jacob blix', NULL, '2021-07-20 00:13:21', NULL, NULL, '$2y$10$AruLL6BdaTZqZRpKFiGRKOWT..FrQ3geSzKHyH7AulsKCwnfLX36O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256771453399', 0.00, 0, NULL, NULL, 0, '2021-07-20 00:12:50', '2021-07-20 00:13:21'),
(45, NULL, NULL, 'customer', 'Mwikalo Shem Rogers', NULL, '2021-07-20 00:30:19', NULL, NULL, '$2y$10$awPbmIet2F6787ORFzGaOum0GI5t3XtzHelvNhBMKdRfkcchQWgLK', NULL, NULL, '916', NULL, NULL, NULL, NULL, '+256778791314', 0.00, 0, NULL, NULL, 0, '2021-07-20 00:29:56', '2021-07-20 00:32:03'),
(46, NULL, NULL, 'customer', 'atim solomon', NULL, '2021-07-20 00:33:36', NULL, NULL, '$2y$10$ZOkbGrc5HJcdKwWy/n8TRuIIbV1aY2n6pyPNmrQ1IEwbdnEx9Zyvq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256782480867', 0.00, 0, NULL, NULL, 0, '2021-07-20 00:32:03', '2021-07-20 00:33:36'),
(47, NULL, NULL, 'customer', 'Zig y', NULL, NULL, '128084', NULL, '$2y$10$nDGWXGuOpzvM7gGVxN//9emPAfx0JL5xGAw3LJ4BhAJ75DHX5C3Xy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+784606397', 0.00, 0, NULL, NULL, 0, '2021-07-20 01:14:49', '2021-07-20 01:14:49'),
(48, NULL, NULL, 'customer', 'Walter Odongo', NULL, '2021-07-20 02:12:11', NULL, NULL, '$2y$10$kG8nIf8B1SQMEKWrYJ6YouCmaswMDhLpPlnEiJrtFaz29U6TS61Lu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256772288288', 0.00, 0, NULL, NULL, 0, '2021-07-20 02:11:35', '2021-07-20 02:12:11'),
(49, NULL, NULL, 'customer', 'Oweta Jacob Emmy', 'oweta001@gmail.com', '2021-07-20 03:07:45', '296118', NULL, '$2y$10$ygafNRiztvoH0CRlpx.T6eaUfxCTyfGJ.hdIyCrJ11p8XJ/HQE1jm', NULL, NULL, '918', NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-20 03:06:45', '2021-07-20 03:13:38'),
(50, NULL, NULL, 'customer', 'Emma Etyam', NULL, '2021-07-20 03:50:47', NULL, NULL, '$2y$10$pJTb5jDLxvRcqpMzEQQNS.8lO1yz2KLkChVS4mJH9YJyxYYkFLjry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256773535369', 0.00, 0, NULL, NULL, 0, '2021-07-20 03:50:15', '2021-07-20 03:50:47'),
(51, NULL, NULL, 'customer', 'olweny  Joshua', 'olwenyjoshua288@gmail.com', '2021-07-20 09:07:56', '514624', NULL, '$2y$10$uBXgrJHDk.KgXGU8kKu3QeiLzNrnL/X7HPJXf/GkLHggymyLkEOPW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-07-20 09:06:56', '2021-07-20 09:06:56'),
(52, NULL, NULL, 'customer', 'Okwir Jastine', NULL, '2021-07-20 10:32:30', NULL, NULL, '$2y$10$otLGXHyez9xP7Zf9JUD1oOZ/rmNhLvs68DBAZ0kkyJkgvaEIG4FoS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256772722896', 0.00, 0, NULL, NULL, 0, '2021-07-20 10:31:42', '2021-07-20 10:32:30'),
(53, NULL, NULL, 'customer', 'Acar Emmanuel', NULL, '2021-07-20 11:09:49', NULL, NULL, '$2y$10$JwHDQKZ6ozLvL2cOv7eFUeOoBPxD7dtosvd.BKPHoNA.PHSLJpMeG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256778355001', 0.00, 0, NULL, NULL, 0, '2021-07-20 11:09:11', '2021-07-20 11:09:49'),
(54, NULL, NULL, 'customer', 'odot sam', NULL, '2021-07-20 11:11:03', NULL, NULL, '$2y$10$Io1ntG4ZNxBPbDftp4aX/OBsvvgoNT6jCPPwU.I.bcQT2u0rQwmdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256778510889', 0.00, 0, NULL, NULL, 0, '2021-07-20 11:10:44', '2021-07-20 11:11:03'),
(55, NULL, NULL, 'customer', 'Arao Semmy', NULL, '2021-07-20 11:30:46', NULL, NULL, '$2y$10$qjNYOvABx.hIm71MOwAJkeJf/No3MLzR86TACK9tKpOJT8RLEhnfW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256786329628', 0.00, 0, NULL, NULL, 0, '2021-07-20 11:29:32', '2021-07-20 11:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 48, 10, '2021-07-20 06:09:17', '2021-07-20 06:09:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_configurations`
--
ALTER TABLE `otp_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255));

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `otp_configurations`
--
ALTER TABLE `otp_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1761;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
