-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 02:17 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heroku_ba27c355f2f7034`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_types`
--

CREATE TABLE `car_types` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `car_types`
--

INSERT INTO `car_types` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Small Truck', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11'),
(2, 'Large Truck', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `street_and_number` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `established_in` int DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `tax_office` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `total_star_count` int NOT NULL DEFAULT '0',
  `total_review_count` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `title`, `street_and_number`, `city`, `established_in`, `vat_number`, `tax_number`, `owner`, `tax_office`, `total_star_count`, `total_review_count`, `status`, `soft_delete`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'Trasporter', '123 dasdas', 'Bucuresti', NULL, '312', NULL, 'Alex', NULL, 8, 2, 'active', 0, '2023-07-05 08:49:28', '2023-07-17 18:14:41', 2),
(2, 'Expeditor', '12 adas', 'Bucharest', NULL, '123132', NULL, 'Alex', NULL, 9, 2, 'active', 0, '2023-07-06 06:56:39', '2023-07-17 18:14:24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Denmark', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11'),
(2, 'Romania', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE `country_codes` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`id`, `title`, `value`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'BD (+880)', '+880', 'active', 0, '2023-06-23 14:34:43', '2023-06-08 14:34:43'),
(2, 'India (+91)', '+91', 'active', 0, '2023-06-23 14:34:43', '2023-06-23 14:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'GBP', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36'),
(2, 'EUR', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `freight_id` int NOT NULL,
  `user_id` int NOT NULL,
  `company_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `created_at`, `updated_at`, `freight_id`, `user_id`, `company_id`) VALUES
(1, '2023-07-06 09:52:55', '2023-07-06 09:52:55', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `freights`
--

CREATE TABLE `freights` (
  `id` int NOT NULL,
  `loading_asap_loading` tinyint(1) NOT NULL DEFAULT '0',
  `loading_from_date` datetime DEFAULT NULL,
  `loading_to_date` datetime DEFAULT NULL,
  `loading_between` time DEFAULT NULL,
  `loading_and` time DEFAULT NULL,
  `unloading_direct_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `unloading_from_date` datetime DEFAULT NULL,
  `unloading_to_date` datetime DEFAULT NULL,
  `unloading_between` time DEFAULT NULL,
  `unloading_and` time DEFAULT NULL,
  `distance` double NOT NULL,
  `suggested_price` double NOT NULL,
  `vat_included` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `show_phone` tinyint(1) NOT NULL,
  `weight` int NOT NULL,
  `articles` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `reference` int DEFAULT NULL,
  `observations` varchar(1000) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `transporter_review_stars` int DEFAULT NULL,
  `transporter_review` varchar(1000) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `transporter_review_date` datetime DEFAULT NULL,
  `expeditor_review_stars` int DEFAULT NULL,
  `expeditor_review` varchar(1000) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `expeditor_review_date` datetime DEFAULT NULL,
  `status` enum('opened','closed','offered','pending','started','completed','cancelled') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'opened',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `car_type_id` int NOT NULL,
  `company_id` int NOT NULL,
  `from_country_id` int NOT NULL,
  `to_country_id` int NOT NULL,
  `country_code_id` int DEFAULT NULL,
  `currency_id` int NOT NULL,
  `offer_id` int DEFAULT NULL,
  `payment_deadline_id` int NOT NULL,
  `transport_type_id` int NOT NULL,
  `truck_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `freights`
--

INSERT INTO `freights` (`id`, `loading_asap_loading`, `loading_from_date`, `loading_to_date`, `loading_between`, `loading_and`, `unloading_direct_delivery`, `unloading_from_date`, `unloading_to_date`, `unloading_between`, `unloading_and`, `distance`, `suggested_price`, `vat_included`, `phone`, `show_phone`, `weight`, `articles`, `volume`, `reference`, `observations`, `transporter_review_stars`, `transporter_review`, `transporter_review_date`, `expeditor_review_stars`, `expeditor_review`, `expeditor_review_date`, `status`, `soft_delete`, `created_at`, `updated_at`, `car_type_id`, `company_id`, `from_country_id`, `to_country_id`, `country_code_id`, `currency_id`, `offer_id`, `payment_deadline_id`, `transport_type_id`, `truck_id`, `user_id`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 12, 0, '354354345', 1, 12, '12', 22, 22, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-07-06 07:07:48', '2023-07-06 13:20:34', 2, 2, 1, 2, 1, 2, NULL, 1, 1, NULL, 2),
(2, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 111, 1, '4323423423', 1, 12, '12', 12, 12, 'No', 4, 'good', '2023-07-07 15:56:29', 4, 'good', '2023-07-07 15:57:52', 'completed', 0, '2023-07-06 07:08:24', '2023-07-07 15:57:52', 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 2),
(3, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 9, 1, '312312', 1, 12, '12', 12, 12, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-07-06 13:19:18', '2023-07-06 13:20:29', 1, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(4, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 122, 1, '123312', 1, 12, '12', 12, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-07-07 16:00:53', '2023-07-31 17:47:38', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(5, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 222, 1, '321132', 1, 12, '11', 12, 12, '23', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-07-15 17:55:43', '2023-07-31 17:47:37', 2, 2, 1, 1, 2, 2, NULL, 2, 1, NULL, 2),
(6, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 12, 1, '12122', 1, 12, '12', 12, 12, 'bo', 4, 'new review', '2023-07-17 18:14:41', 5, 'ads', '2023-07-17 18:14:24', 'completed', 0, '2023-07-15 18:01:01', '2023-07-17 18:14:41', 1, 2, 1, 2, 1, 2, 4, 1, 1, 1, 2),
(7, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1111111, 1111, 1, '12312', 0, 12, '12', 12, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, 'cancelled', 1, '2023-07-18 15:06:45', '2023-08-01 05:58:08', 2, 2, 1, 2, 2, 2, 5, 2, 1, NULL, 2),
(8, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 222222, 2222, 1, '123123', 1, 122, '11', 11, 11, '', NULL, NULL, NULL, NULL, NULL, NULL, 'completed', 0, '2023-07-18 15:25:22', '2023-07-26 18:41:56', 2, 2, 1, 2, 2, 2, 7, 2, 1, 1, 2),
(9, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 122, 1, '13123312', 1, 12, '12', 12, 12, 'Updated', NULL, NULL, NULL, NULL, NULL, NULL, 'started', 0, '2023-07-25 19:22:56', '2023-07-26 18:48:15', 2, 2, 1, 2, 2, 1, 6, 1, 1, 1, 2),
(10, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 121, 0, '132312312', 1, 12, '12', 12, 22, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-07-31 17:46:31', '2023-07-31 17:47:36', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(11, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 22, 1, '13212', 0, 12, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'cancelled', 1, '2023-07-31 17:48:08', '2023-08-01 05:58:10', 2, 2, 1, 2, 2, 2, 8, 1, 1, NULL, 2),
(12, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 22, 1, '43334', 1, 12, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-08-01 05:45:32', '2023-08-01 05:58:07', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(13, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 31212, 123, 1, '123123', 1, 122, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-08-01 05:57:13', '2023-08-01 05:58:07', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(14, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 12, 1, '121221', 1, 1, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-08-01 05:58:44', '2023-08-01 08:25:18', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(15, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 12, 1, '12312', 1, 12, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-08-01 08:25:44', '2023-08-02 11:47:29', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2),
(16, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12312, 2112, 0, '12312', 1, 12, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 1, '2023-08-02 11:47:58', '2023-08-02 11:52:56', 2, 2, 1, 2, 2, 1, NULL, 1, 1, NULL, 2),
(17, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 12, 1, '31221', 1, 12, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'opened', 0, '2023-08-02 11:53:30', '2023-08-02 11:53:30', 2, 2, 1, 2, 2, 2, NULL, 1, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `freight_freight_status`
--

CREATE TABLE `freight_freight_status` (
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `freight_id` int NOT NULL,
  `freight_status_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freight_special_requirement`
--

CREATE TABLE `freight_special_requirement` (
  `freight_id` int NOT NULL,
  `special_requirement_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `freight_special_requirement`
--

INSERT INTO `freight_special_requirement` (`freight_id`, `special_requirement_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `freight_statuses`
--

CREATE TABLE `freight_statuses` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `freight_statuses`
--

INSERT INTO `freight_statuses` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Left for loading', 'active', 0, '2023-06-08 17:49:46', '2023-06-08 17:49:46'),
(2, 'Arrived for loading', 'active', 0, '2023-06-08 17:49:46', '2023-06-08 17:49:46'),
(3, 'Loaded and on the go', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54'),
(4, 'Waiting at loading', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54'),
(5, 'Arrived for download', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54'),
(6, 'Waiting at unload', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54'),
(7, 'Unloaded', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54'),
(8, 'Delayed', 'active', 0, '2023-06-08 17:50:54', '2023-06-08 17:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `cleared_date_time` datetime DEFAULT NULL,
  `read_date_time` datetime DEFAULT NULL,
  `cleared_by` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `read_by` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `is_clear` tinyint DEFAULT NULL,
  `is_read` tinyint DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `text`, `status`, `created_at`, `cleared_date_time`, `read_date_time`, `cleared_by`, `read_by`, `is_clear`, `is_read`, `updated_at`, `user_type`) VALUES
(1, NULL, 'New Freight Added', 'active', '2023-07-25 19:22:56', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 19:22:56', NULL),
(2, NULL, 'Freight Updated', 'active', '2023-07-25 19:28:14', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 19:28:14', NULL),
(3, 1, 'New Offer Added', 'active', '2023-07-31 17:48:58', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-31 17:48:58', 'transporter');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int NOT NULL,
  `direct_delivery` tinyint(1) NOT NULL,
  `offer_price` double NOT NULL,
  `vat_included` tinyint(1) NOT NULL,
  `loading_date` datetime NOT NULL,
  `loading_hour` time NOT NULL,
  `unloading_date` datetime DEFAULT NULL,
  `unloading_hour` time DEFAULT NULL,
  `details` varchar(1000) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `status` enum('active','inactive','accepted','rejected') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `freight_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `direct_delivery`, `offer_price`, `vat_included`, `loading_date`, `loading_hour`, `unloading_date`, `unloading_hour`, `details`, `status`, `soft_delete`, `created_at`, `updated_at`, `company_id`, `currency_id`, `freight_id`, `user_id`) VALUES
(1, 1, 100, 1, '2023-07-12 00:00:00', '17:00:00', NULL, NULL, 'no', 'accepted', 1, '2023-07-06 07:12:03', '2023-07-31 17:53:04', 1, 2, 2, 1),
(4, 1, 12, 1, '2023-07-19 00:00:00', '11:00:00', NULL, NULL, '', 'accepted', 1, '2023-07-17 18:11:28', '2023-07-31 17:53:03', 1, 2, 6, 1),
(5, 1, 12, 1, '2023-07-12 00:00:00', '04:00:00', NULL, NULL, '', 'accepted', 0, '2023-07-18 15:28:28', '2023-07-31 17:38:59', 1, 2, 7, 1),
(6, 1, 12, 1, '2023-07-19 00:00:00', '16:00:00', NULL, NULL, 'yes', 'accepted', 0, '2023-07-25 19:32:37', '2023-07-25 19:39:18', 1, 2, 9, 1),
(7, 1, 12, 1, '2023-07-20 00:00:00', '03:00:00', NULL, NULL, 'yes', 'accepted', 1, '2023-07-26 18:40:50', '2023-07-31 17:53:03', 1, 2, 8, 1),
(8, 1, 12, 1, '2023-07-21 00:00:00', '05:00:00', NULL, NULL, 'yess', 'accepted', 0, '2023-07-31 17:48:43', '2023-07-31 17:50:15', 1, 2, 11, 1),
(11, 1, 12, 1, '2023-08-16 00:00:00', '03:00:00', NULL, NULL, '', 'rejected', 0, '2023-08-01 05:59:29', '2023-08-01 08:23:08', 1, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_deadlines`
--

CREATE TABLE `payment_deadlines` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `payment_deadlines`
--

INSERT INTO `payment_deadlines` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, '30 days', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36'),
(2, '60 days', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `special_requirements`
--

CREATE TABLE `special_requirements` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `special_requirements`
--

INSERT INTO `special_requirements` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Thermo', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11'),
(2, 'Dangerous', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11'),
(3, 'Cargo Lift', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `message` varchar(5000) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('pending','in progress','resolved') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'pending',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int NOT NULL,
  `support_category_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_types`
--

CREATE TABLE `transport_types` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `transport_types`
--

INSERT INTO `transport_types` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36'),
(2, 'Special', 'active', 0, '2023-05-25 16:05:36', '2023-05-25 16:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int NOT NULL,
  `license_number` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `length` double NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `car_type_id` int NOT NULL,
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `driver_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `license_number`, `length`, `width`, `height`, `status`, `soft_delete`, `created_at`, `updated_at`, `car_type_id`, `company_id`, `user_id`, `driver_user_id`) VALUES
(1, '435453', 12, 12, 12, 'active', 0, '2023-07-06 07:06:48', '2023-07-06 07:06:48', 2, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `function` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `is_primary_user` tinyint(1) NOT NULL,
  `type` enum('expeditor','transporter') COLLATE utf8mb3_romanian_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verification_code` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `verification_code_expires_at` datetime DEFAULT NULL,
  `verification_code_attempts` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int NOT NULL,
  `country_code_id` int NOT NULL,
  `user_type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `surname`, `function`, `phone`, `is_primary_user`, `type`, `is_verified`, `verification_code`, `verification_code_expires_at`, `verification_code_attempts`, `status`, `soft_delete`, `created_at`, `updated_at`, `company_id`, `country_code_id`, `user_type_id`) VALUES
(1, 'codreanualexeialexandru', 'codreanualexeialexandru@gmail.com', '$2b$12$73GChG7sHqab5uOTD2Pg2.bUU5b9/jiltfiC2wRrOfLneOfwLAdA2', 'Alexei', 'Codreanu', NULL, '67993934', 1, 'transporter', 1, NULL, NULL, 0, 'active', 0, '2023-07-05 08:49:28', '2023-07-05 09:08:38', 1, 1, 2),
(2, 'codreanualexei1996', 'codreanualexei1996@gmail.com', '$2b$12$OUihM7LGLdSUsVFJp4bD1Op7xY1ZQvUXkqCP3ppSYBCH.jK87fRae', 'Codreanu', 'Sașa', NULL, '13212', 1, 'expeditor', 1, NULL, NULL, 0, 'active', 0, '2023-07-06 06:56:39', '2023-07-06 07:04:38', 2, 2, 1),
(4, 'codreanualexei', 'codreanualexei@gmail.com', '$2b$12$BjvIssYTOEM9KOuZPMv4wO3seANCIVHo3tjzqFyuGC6OhNy3ClS/6', 'Alexei', 'Codreanu', NULL, '+40764844144', 0, 'transporter', 0, '4c2c40f3-230c-4e4e-b4e3-ebf061dc3484', '2023-07-15 12:18:40', 0, 'active', 0, '2023-07-06 07:06:48', '2023-07-06 09:52:07', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications_management`
--

CREATE TABLE `user_notifications_management` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb3_romanian_ci DEFAULT NULL,
  `notification_id` int DEFAULT NULL,
  `cleared_date_time` datetime DEFAULT NULL,
  `is_clear` tinyint DEFAULT NULL,
  `is_offer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `user_notifications_management`
--

INSERT INTO `user_notifications_management` (`id`, `user_id`, `user_type`, `notification_id`, `cleared_date_time`, `is_clear`, `is_offer_notification`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, 1, 0, '2023-07-31 17:41:48', '2023-07-31 17:41:48'),
(2, 2, NULL, 1, NULL, 1, 0, '2023-07-31 17:45:06', '2023-07-31 17:45:06'),
(3, 2, NULL, 1, NULL, 1, 0, '2023-07-31 17:45:25', '2023-07-31 17:45:25'),
(4, 2, NULL, 1, NULL, 1, 0, '2023-07-31 17:45:49', '2023-07-31 17:45:49'),
(5, 1, NULL, 1, NULL, 1, 0, '2023-07-31 17:46:45', '2023-07-31 17:46:45'),
(6, 1, NULL, 1, NULL, 1, 0, '2023-07-31 17:49:32', '2023-07-31 17:49:32'),
(7, 2, 'expeditor', NULL, NULL, NULL, 0, '2023-07-31 17:50:07', '2023-07-31 17:50:07'),
(8, 2, 'expeditor', NULL, NULL, NULL, 1, '2023-07-31 17:50:10', '2023-07-31 17:50:10'),
(9, 2, 'expeditor', NULL, NULL, NULL, 0, '2023-07-31 17:50:11', '2023-07-31 17:50:11'),
(10, 1, NULL, 1, NULL, 1, 0, '2023-07-31 17:53:15', '2023-07-31 17:53:15'),
(11, 2, NULL, 1, NULL, 1, 0, '2023-07-31 17:53:27', '2023-07-31 17:53:27'),
(12, 2, NULL, 1, NULL, 1, 0, '2023-08-01 05:47:11', '2023-08-01 05:47:11'),
(13, 1, NULL, 1, NULL, 1, 0, '2023-08-01 05:47:19', '2023-08-01 05:47:19'),
(14, 1, NULL, 1, NULL, 1, 0, '2023-08-02 11:55:09', '2023-08-02 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb3_romanian_ci NOT NULL DEFAULT 'active',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `title`, `status`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Expeditor', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11'),
(2, 'Transporter', 'active', 0, '2023-05-20 20:48:11', '2023-05-20 20:48:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_types`
--
ALTER TABLE `car_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_codes`
--
ALTER TABLE `country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`freight_id`,`user_id`,`company_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `freights`
--
ALTER TABLE `freights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_type_id` (`car_type_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `from_country_id` (`from_country_id`),
  ADD KEY `to_country_id` (`to_country_id`),
  ADD KEY `country_code_id` (`country_code_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `payment_deadline_id` (`payment_deadline_id`),
  ADD KEY `transport_type_id` (`transport_type_id`),
  ADD KEY `truck_id` (`truck_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `freight_freight_status`
--
ALTER TABLE `freight_freight_status`
  ADD PRIMARY KEY (`freight_id`,`freight_status_id`);

--
-- Indexes for table `freight_special_requirement`
--
ALTER TABLE `freight_special_requirement`
  ADD PRIMARY KEY (`freight_id`,`special_requirement_id`);

--
-- Indexes for table `freight_statuses`
--
ALTER TABLE `freight_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `freight_id` (`freight_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment_deadlines`
--
ALTER TABLE `payment_deadlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_requirements`
--
ALTER TABLE `special_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `support_category_id` (`support_category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transport_types`
--
ALTER TABLE `transport_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_type_id` (`car_type_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_user_id` (`driver_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `username_4` (`username`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `country_code_id` (`country_code_id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_notifications_management`
--
ALTER TABLE `user_notifications_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_types`
--
ALTER TABLE `car_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_codes`
--
ALTER TABLE `country_codes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `freights`
--
ALTER TABLE `freights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `freight_statuses`
--
ALTER TABLE `freight_statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_deadlines`
--
ALTER TABLE `payment_deadlines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `special_requirements`
--
ALTER TABLE `special_requirements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_types`
--
ALTER TABLE `transport_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_notifications_management`
--
ALTER TABLE `user_notifications_management`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_7` FOREIGN KEY (`freight_id`) REFERENCES `freights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_9` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `freights`
--
ALTER TABLE `freights`
  ADD CONSTRAINT `freights_ibfk_23` FOREIGN KEY (`car_type_id`) REFERENCES `car_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_24` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_25` FOREIGN KEY (`from_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_26` FOREIGN KEY (`to_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_27` FOREIGN KEY (`country_code_id`) REFERENCES `country_codes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_28` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_29` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_30` FOREIGN KEY (`payment_deadline_id`) REFERENCES `payment_deadlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_31` FOREIGN KEY (`transport_type_id`) REFERENCES `transport_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_32` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `freights_ibfk_33` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_10` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offers_ibfk_11` FOREIGN KEY (`freight_id`) REFERENCES `freights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offers_ibfk_12` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offers_ibfk_9` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD CONSTRAINT `support_requests_ibfk_7` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `support_requests_ibfk_8` FOREIGN KEY (`support_category_id`) REFERENCES `support_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `support_requests_ibfk_9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `trucks_ibfk_10` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trucks_ibfk_11` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trucks_ibfk_12` FOREIGN KEY (`driver_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trucks_ibfk_9` FOREIGN KEY (`car_type_id`) REFERENCES `car_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_7` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_8` FOREIGN KEY (`country_code_id`) REFERENCES `country_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_9` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
