-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 11:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3elaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `mission_image_id` int(10) UNSIGNED DEFAULT NULL,
  `vision_image_id` int(10) UNSIGNED DEFAULT NULL,
  `values_image_id` int(10) UNSIGNED DEFAULT NULL,
  `approach_image_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image_id`, `mission_image_id`, `vision_image_id`, `values_image_id`, `approach_image_id`, `created_at`, `updated_at`) VALUES
(1, 187, 190, 188, 189, NULL, '2019-08-07 22:00:00', '2019-08-08 17:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `url`, `image_id`, `page_id`, `open_graph_id`, `created_by`, `created_at`, `updated_at`) VALUES
(9, 'dentical-article', 191, 5, 2, 2, '2019-08-06 07:21:27', '2019-08-08 18:47:00'),
(11, 'fohuhy@mailinator.com', 192, 7, 4, 2, '2019-08-06 08:32:51', '2019-08-08 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(10) NOT NULL,
  `specialist_id` int(10) DEFAULT NULL,
  `clinic_type_id` int(10) NOT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  `form_id` int(10) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `specialist_id`, `clinic_type_id`, `video_url`, `image_id`, `open_graph_id`, `page_id`, `form_id`, `url`, `created_by`, `created_at`, `updated_at`) VALUES
(26, 2, 2, 'https://www.youtube.com/watch?v=_9NiZWRrM7Y', 172, 39, 42, 8, 'dr-ramy-raafat', 2, '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(27, 3, 3, 'https://www.youtube.com/', 173, 43, 46, 9, 'al-mahmoud-center', 2, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(28, 2, 4, 'https://www.youtube.com/', 178, 44, 47, 10, 'al-borg-lab', 2, '2019-08-08 16:31:05', '2019-08-08 16:31:05'),
(29, 4, 1, 'https://www.youtube.com/watch?v=ixeWiRGspM0&list=RDixeWiRGspM0&start_radio=1', 183, 45, 48, 11, 'alpha-labs', 2, '2019-08-08 16:48:20', '2019-08-08 16:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_contact`
--

CREATE TABLE `clinic_contact` (
  `id` int(10) NOT NULL,
  `clinic_id` int(10) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_contact`
--

INSERT INTO `clinic_contact` (`id`, `clinic_id`, `phone`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `whatsapp`, `created_at`, `updated_at`) VALUES
(16, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(17, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(18, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:31:06', '2019-08-08 17:11:35'),
(19, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:48:20', '2019-08-08 17:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_images`
--

CREATE TABLE `clinic_images` (
  `id` int(10) NOT NULL,
  `clinic_id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_images`
--

INSERT INTO `clinic_images` (`id`, `clinic_id`, `image_id`, `created_at`, `updated_at`) VALUES
(45, 27, 174, NULL, NULL),
(46, 27, 175, NULL, NULL),
(47, 27, 176, NULL, NULL),
(48, 27, 177, NULL, NULL),
(49, 28, 179, NULL, NULL),
(50, 28, 180, NULL, NULL),
(51, 28, 181, NULL, NULL),
(52, 28, 182, NULL, NULL),
(53, 29, 184, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clinic_type`
--

CREATE TABLE `clinic_type` (
  `id` int(10) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_type`
--

INSERT INTO `clinic_type` (`id`, `url`, `open_graph_id`, `page_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'radiology', 5, 8, 2, '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(2, 'clinics', 6, 9, 2, '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(3, 'center', 40, 43, 2, '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(4, 'labs', 42, 45, 2, '2019-08-07 22:00:00', '2019-08-07 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pintrest` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`, `phone_alt`, `address_en`, `address_ar`, `location`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `pintrest`, `behance`, `updated_at`, `created_at`) VALUES
(1, 'info@3elagi.com', '02-6227700', '01100960900', 'القاهرة - مصر', '2 ش الأميرية المتفرغ من شارع التحرير', NULL, 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com/allawy_festival/', 'https://www.youtube.com/channel/UCBBgH55Ky7H8tg0RmTe9o9g/featured', NULL, NULL, NULL, '2019-08-08 17:34:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_code` text COLLATE utf8mb4_unicode_ci,
  `body_code` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `formId`, `page_id`, `tracking_id`, `header_code`, `body_code`, `created_at`, `updated_at`) VALUES
(4, 'vobym@mailinator.com', NULL, NULL, 'vagevag@mailinator.net', 'Et aliquid non nulla', 'Dolor natus iure fac', '2019-08-08 11:39:55', '2019-08-08 12:17:27'),
(5, 'hodu@mailinator.net', NULL, NULL, 'kehacynyha@mailinator.com', 'Tenetur culpa repel', 'Aut qui dolore quod', '2019-08-08 11:41:56', '2019-08-08 12:17:13'),
(7, 'hodu@mailinator.net', NULL, NULL, NULL, NULL, NULL, '2019-08-08 11:43:18', '2019-08-08 11:43:18'),
(8, 'Dr-Raamy Raafat', NULL, NULL, NULL, NULL, NULL, '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(9, 'Al Mahmoud Medical Center', NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(10, 'Al Borg', NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:31:05', '2019-08-08 16:31:05'),
(11, 'Alpha', NULL, NULL, NULL, NULL, NULL, '2019-08-08 16:48:20', '2019-08-08 16:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `path`, `alt`, `album_id`, `created_at`, `updated_at`) VALUES
(3, '1565073314user.png', 'dashboardImages/slider/1565073314user.png', NULL, NULL, '2019-08-06 04:35:14', '2019-08-06 04:35:14'),
(14, '1565083098picture.png', 'dashboardImages/blog/1565083098picture.png', NULL, NULL, '2019-08-06 07:18:18', '2019-08-06 07:18:18'),
(16, '1565084510picture.png', 'dashboardImages/blog/1565084510picture.png', NULL, NULL, '2019-08-06 07:41:50', '2019-08-06 07:41:50'),
(17, '1565087289picture.png', 'dashboardImages/blog/1565087289picture.png', 'regixak@mailinator.net', NULL, '2019-08-06 08:28:09', '2019-08-06 08:28:09'),
(18, '1565087466user.png', 'dashboardImages/blog/1565087466user.png', 'alt text', NULL, '2019-08-06 08:31:06', '2019-08-06 08:31:06'),
(22, '1565087571user.png', 'dashboardImages/blog/1565087571user.png', 'zewyjeq@mailinator.com', NULL, '2019-08-06 08:32:51', '2019-08-06 08:32:51'),
(26, '1565088175user.png', 'dashboardImages/blog/1565088175user.png', 'asdcc', NULL, '2019-08-06 08:42:55', '2019-08-06 08:42:55'),
(27, '1565088263picture.png', 'dashboardImages/blog/1565088263picture.png', 'asdcc', NULL, '2019-08-06 08:44:23', '2019-08-06 08:44:23'),
(28, '1565092010picture.png', 'dashboardImages/blog/1565092010picture.png', 'sadfcdasf', NULL, '2019-08-06 09:46:50', '2019-08-06 09:46:50'),
(117, '1565164180user.png', 'dashboardImages/clinic/1565164180user.png', 'image', NULL, '2019-08-07 05:49:40', '2019-08-07 05:49:40'),
(118, '156516418117-650x350.jpg', 'dashboardImages/clinic/156516418117-650x350.jpg', NULL, NULL, '2019-08-07 05:49:41', '2019-08-07 05:49:41'),
(119, '156516418123-650x350.jpg', 'dashboardImages/clinic/156516418123-650x350.jpg', NULL, NULL, '2019-08-07 05:49:41', '2019-08-07 05:49:41'),
(120, '1565164181picture.png', 'dashboardImages/clinic/1565164181picture.png', NULL, NULL, '2019-08-07 05:49:41', '2019-08-07 05:49:41'),
(121, '156516476817-650x350.jpg', 'dashboardImages/clinic/156516476817-650x350.jpg', 'moxi@mailinator.net', NULL, '2019-08-07 05:59:28', '2019-08-07 05:59:28'),
(124, '156516525017-650x350.jpg', 'dashboardImages/clinic/156516525017-650x350.jpg', 'vabonyloc@mailinator.net', NULL, '2019-08-07 06:07:30', '2019-08-07 06:07:30'),
(125, '156516525117-650x350.jpg', 'dashboardImages/clinic/156516525117-650x350.jpg', NULL, NULL, '2019-08-07 06:07:31', '2019-08-07 06:07:31'),
(126, '156516548017-650x350.jpg', 'dashboardImages/clinic/156516548017-650x350.jpg', 'dawonamewa@mailinator.com', NULL, '2019-08-07 06:11:20', '2019-08-07 06:11:20'),
(127, '156516548117-650x350.jpg', 'dashboardImages/clinic/156516548117-650x350.jpg', NULL, NULL, '2019-08-07 06:11:21', '2019-08-07 06:11:21'),
(128, '156516824717-650x350.jpg', 'dashboardImages/clinic/156516824717-650x350.jpg', NULL, NULL, '2019-08-07 06:57:27', '2019-08-07 06:57:27'),
(129, '156516824723-650x350.jpg', 'dashboardImages/clinic/156516824723-650x350.jpg', NULL, NULL, '2019-08-07 06:57:27', '2019-08-07 06:57:27'),
(130, '156516840417-650x350.jpg', 'dashboardImages/clinic/156516840417-650x350.jpg', NULL, NULL, '2019-08-07 07:00:04', '2019-08-07 07:00:04'),
(131, '156516840423-650x350.jpg', 'dashboardImages/clinic/156516840423-650x350.jpg', NULL, NULL, '2019-08-07 07:00:04', '2019-08-07 07:00:04'),
(132, '1565168404picture.png', 'dashboardImages/clinic/1565168404picture.png', NULL, NULL, '2019-08-07 07:00:04', '2019-08-07 07:00:04'),
(133, '1565168404user.png', 'dashboardImages/clinic/1565168404user.png', NULL, NULL, '2019-08-07 07:00:04', '2019-08-07 07:00:04'),
(134, '1565253393user.png', 'dashboardImages/openGraph/1565253393user.png', NULL, NULL, '2019-08-08 06:36:33', '2019-08-08 06:36:33'),
(135, '1565253430user.png', 'dashboardImages/openGraph/1565253430user.png', NULL, NULL, '2019-08-08 06:37:10', '2019-08-08 06:37:10'),
(136, '1565253600user.png', 'dashboardImages/openGraph/1565253600user.png', NULL, NULL, '2019-08-08 06:40:00', '2019-08-08 06:40:00'),
(137, '1565253669user.png', 'dashboardImages/openGraph/1565253669user.png', NULL, NULL, '2019-08-08 06:41:09', '2019-08-08 06:41:09'),
(138, '1565253853picture.png', 'dashboardImages/openGraph/1565253853picture.png', NULL, NULL, '2019-08-08 06:44:13', '2019-08-08 06:44:13'),
(139, '156525576517-650x350.jpg', 'dashboardImages/openGraph/156525576517-650x350.jpg', NULL, NULL, '2019-08-08 07:16:05', '2019-08-08 07:16:05'),
(140, '156525578017-650x350.jpg', 'dashboardImages/openGraph/156525578017-650x350.jpg', NULL, NULL, '2019-08-08 07:16:20', '2019-08-08 07:16:20'),
(141, '156525582217-650x350.jpg', 'dashboardImages/openGraph/156525582217-650x350.jpg', NULL, NULL, '2019-08-08 07:17:02', '2019-08-08 07:17:02'),
(142, '156525583217-650x350.jpg', 'dashboardImages/openGraph/156525583217-650x350.jpg', NULL, NULL, '2019-08-08 07:17:12', '2019-08-08 07:17:12'),
(143, '156525621817-650x350.jpg', 'dashboardImages/openGraph/156525621817-650x350.jpg', NULL, NULL, '2019-08-08 07:23:38', '2019-08-08 07:23:38'),
(144, '156525630417-650x350.jpg', 'dashboardImages/openGraph/156525630417-650x350.jpg', NULL, NULL, '2019-08-08 07:25:04', '2019-08-08 07:25:04'),
(145, '156525631517-650x350.jpg', 'dashboardImages/openGraph/156525631517-650x350.jpg', NULL, NULL, '2019-08-08 07:25:15', '2019-08-08 07:25:15'),
(146, '156525824517-650x350.jpg', 'dashboardImages/openGraph/156525824517-650x350.jpg', NULL, NULL, '2019-08-08 07:57:25', '2019-08-08 07:57:25'),
(147, '1565270500slide-2.jpg', 'dashboardImages/clinic/1565270500slide-2.jpg', 'magosawevu@mailinator.com', NULL, '2019-08-08 11:21:40', '2019-08-08 11:21:40'),
(148, '1565270501slide-2.jpg', 'dashboardImages/clinic/1565270501slide-2.jpg', NULL, NULL, '2019-08-08 11:21:41', '2019-08-08 11:21:41'),
(149, '1565270501slide-3.jpg', 'dashboardImages/clinic/1565270501slide-3.jpg', NULL, NULL, '2019-08-08 11:21:41', '2019-08-08 11:21:41'),
(150, '1565270552slide-2.jpg', 'dashboardImages/clinic/1565270552slide-2.jpg', 'zavok@mailinator.net', NULL, '2019-08-08 11:22:32', '2019-08-08 11:22:32'),
(151, '1565270661slide-2.jpg', 'dashboardImages/clinic/1565270661slide-2.jpg', 'zavok@mailinator.net', NULL, '2019-08-08 11:24:21', '2019-08-08 11:24:21'),
(152, '1565271568slide-2.jpg', 'dashboardImages/clinic/1565271568slide-2.jpg', 'zavok@mailinator.net', NULL, '2019-08-08 11:39:28', '2019-08-08 11:39:28'),
(153, '1565271595slide-2.jpg', 'dashboardImages/clinic/1565271595slide-2.jpg', 'zavok@mailinator.net', NULL, '2019-08-08 11:39:55', '2019-08-08 11:39:55'),
(154, '1565271596slide-1.jpg', 'dashboardImages/clinic/1565271596slide-1.jpg', NULL, NULL, '2019-08-08 11:39:56', '2019-08-08 11:39:56'),
(155, '1565271596slide-2.jpg', 'dashboardImages/clinic/1565271596slide-2.jpg', NULL, NULL, '2019-08-08 11:39:56', '2019-08-08 11:39:56'),
(156, '1565271716slide-1.jpg', 'dashboardImages/clinic/1565271716slide-1.jpg', 'puripidutu@mailinator.com', NULL, '2019-08-08 11:41:56', '2019-08-08 11:41:56'),
(157, '1565271798slide-1.jpg', 'dashboardImages/clinic/1565271798slide-1.jpg', 'puripidutu@mailinator.com', NULL, '2019-08-08 11:43:18', '2019-08-08 11:43:18'),
(158, '1565271799slide-1.jpg', 'dashboardImages/clinic/1565271799slide-1.jpg', NULL, NULL, '2019-08-08 11:43:19', '2019-08-08 11:43:19'),
(159, '1565271799slide-2.jpg', 'dashboardImages/clinic/1565271799slide-2.jpg', NULL, NULL, '2019-08-08 11:43:19', '2019-08-08 11:43:19'),
(161, '15652746891.jpg', 'dashboardImages/about/15652746891.jpg', NULL, NULL, '2019-08-08 12:31:29', '2019-08-08 12:31:29'),
(162, '15652746902.jpg', 'dashboardImages/about/15652746902.jpg', NULL, NULL, '2019-08-08 12:31:30', '2019-08-08 12:31:30'),
(163, '15652746903.jpg', 'dashboardImages/about/15652746903.jpg', NULL, NULL, '2019-08-08 12:31:30', '2019-08-08 12:31:30'),
(164, '15652746903.jpg', 'dashboardImages/about/15652746903.jpg', NULL, NULL, '2019-08-08 12:31:30', '2019-08-08 12:31:30'),
(165, '15652748111.jpg', 'dashboardImages/about/15652748111.jpg', NULL, NULL, '2019-08-08 12:33:31', '2019-08-08 12:33:31'),
(166, '15652748112.jpg', 'dashboardImages/about/15652748112.jpg', NULL, NULL, '2019-08-08 12:33:31', '2019-08-08 12:33:31'),
(167, '15652748123.jpg', 'dashboardImages/about/15652748123.jpg', NULL, NULL, '2019-08-08 12:33:32', '2019-08-08 12:33:32'),
(168, '1565274994favicon.png', 'dashboardImages/setting/1565274994favicon.png', NULL, NULL, '2019-08-08 12:36:34', '2019-08-08 12:36:34'),
(169, '1565275047favicon.png', 'dashboardImages/setting/1565275047favicon.png', NULL, NULL, '2019-08-08 12:37:27', '2019-08-08 12:37:27'),
(170, '1565282434logo.png', 'dashboardImages/setting/1565282434logo.png', NULL, NULL, '2019-08-08 14:40:34', '2019-08-08 14:40:34'),
(171, '1565284741slide-2.jpg', 'dashboardImages/slider/1565284741slide-2.jpg', 'slide-1', NULL, '2019-08-08 15:19:01', '2019-08-08 15:19:01'),
(172, '15652859538.jpg', 'dashboardImages/clinic/15652859538.jpg', 'dr-ramy-image', NULL, '2019-08-08 15:39:13', '2019-08-08 15:39:13'),
(173, '15652883072.jpg', 'dashboardImages/clinic/15652883072.jpg', 'dr-mahmoud-image', NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(174, '15652883071.jpg', 'dashboardImages/clinic/15652883071.jpg', NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(175, '15652883072.jpg', 'dashboardImages/clinic/15652883072.jpg', NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(176, '15652883073.jpg', 'dashboardImages/clinic/15652883073.jpg', NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(177, '15652883074.jpg', 'dashboardImages/clinic/15652883074.jpg', NULL, NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(178, '15652914952.jpg', 'dashboardImages/clinic/15652914952.jpg', 'al-borg', NULL, '2019-08-08 16:31:05', '2019-08-08 17:11:35'),
(179, '15652890661.jpg', 'dashboardImages/clinic/15652890661.jpg', NULL, NULL, '2019-08-08 16:31:06', '2019-08-08 16:31:06'),
(180, '15652890662.jpg', 'dashboardImages/clinic/15652890662.jpg', NULL, NULL, '2019-08-08 16:31:06', '2019-08-08 16:31:06'),
(181, '15652890663.jpg', 'dashboardImages/clinic/15652890663.jpg', NULL, NULL, '2019-08-08 16:31:06', '2019-08-08 16:31:06'),
(182, '15652890664.jpg', 'dashboardImages/clinic/15652890664.jpg', NULL, NULL, '2019-08-08 16:31:06', '2019-08-08 16:31:06'),
(183, '15652915133.jpg', 'dashboardImages/clinic/15652915133.jpg', 'alpha', NULL, '2019-08-08 16:48:19', '2019-08-08 17:11:54'),
(184, '15652901001.jpg', 'dashboardImages/clinic/15652901001.jpg', NULL, NULL, '2019-08-08 16:48:20', '2019-08-08 16:48:20'),
(185, '15652914952.jpg', 'dashboardImages/clinic/15652914952.jpg', 'al-borg', NULL, '2019-08-08 17:11:35', '2019-08-08 17:11:35'),
(186, '15652915133.jpg', 'dashboardImages/clinic/15652915133.jpg', 'alpha', NULL, '2019-08-08 17:11:53', '2019-08-08 17:11:53'),
(187, '15652919201.jpg', 'dashboardImages/about/15652919201.jpg', NULL, NULL, '2019-08-08 17:18:41', '2019-08-08 17:18:41'),
(188, '15652919212.jpg', 'dashboardImages/about/15652919212.jpg', NULL, NULL, '2019-08-08 17:18:41', '2019-08-08 17:18:41'),
(189, '15652919213.jpg', 'dashboardImages/about/15652919213.jpg', NULL, NULL, '2019-08-08 17:18:41', '2019-08-08 17:18:41'),
(190, '15652920091.jpg', 'dashboardImages/about/15652920091.jpg', NULL, NULL, '2019-08-08 17:20:09', '2019-08-08 17:20:09'),
(191, '15652939251.jpg', 'dashboardImages/blog/15652939251.jpg', 'sadfcdasf', NULL, '2019-08-08 17:52:05', '2019-08-08 17:52:05'),
(192, '15652939522.jpg', 'dashboardImages/blog/15652939522.jpg', 'asdcc', NULL, '2019-08-08 17:52:32', '2019-08-08 17:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `phone`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Martina Horne', 'wuzusuv@mailinator.net', '+1 (198) 6559', 'Qui molestiae illo s', 'Ullamco incidunt exUllamco inciduntUllamco inciduntUllamco incidunt', '2019-08-08 18:32:04', '2019-08-08 18:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `open_graph`
--

CREATE TABLE `open_graph` (
  `id` int(10) NOT NULL,
  `is_main_page` int(11) DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) UNSIGNED DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `open_graph`
--

INSERT INTO `open_graph` (`id`, `is_main_page`, `og_title`, `og_type`, `og_url`, `og_image`, `image_url`, `og_description`, `og_site_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'xanyvihewu@mailinator.net', NULL, 'blog/xelumyz@mailinator.net', 14, '', 'Mollitia ut labore l', NULL, '2019-08-06 07:18:18', '2019-08-06 07:18:18'),
(2, NULL, 'Kidoo Article', NULL, 'dentical-article', 191, '', 'Laborum Quidem quaeمطبعة مجهولة برص مجموعة منمطبعة مجهولة برص مجموعة من', NULL, '2019-08-06 07:21:27', '2019-08-08 17:58:59'),
(3, NULL, 'vuwojer@mailinator.com', NULL, 'zezevejuc@mailinator.com', 17, '', 'Omnis voluptatem Hi', NULL, '2019-08-06 08:28:09', '2019-08-06 08:28:09'),
(4, NULL, 'zogyxuzuh@mailinator.net', NULL, 'fohuhy@mailinator.com', 192, NULL, 'Enim in voluptatem', NULL, '2019-08-06 08:32:51', '2019-08-08 17:52:32'),
(5, NULL, 'Radiology Centers', 'vifow@mailinator.net', 'Repudiandae consequa', 139, 'https://www.allawyfestival.com/website/img/show/circus.jpeg', 'Sed alias doloribus', 'geziza@mailinator.com', '2019-08-05 22:00:00', '2019-08-08 07:26:30'),
(6, NULL, 'Clinics', NULL, 'clinics', 140, NULL, NULL, '3elaji', '2019-08-05 22:00:00', '2019-08-08 07:16:20'),
(24, NULL, 'Dr.Mohamed Sedeik', NULL, 'mohamed-sediek', 143, 'https://www.allawyfestival.com/website/img/show/circus.jpeg', 'دكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديق', NULL, '2019-08-07 05:49:40', '2019-08-08 07:55:59'),
(26, NULL, 'lunosoj@mailinator.com', NULL, 'bita@mailinator.net', 124, '', 'Ut tenetur exercitat', NULL, '2019-08-07 06:07:31', '2019-08-07 06:07:31'),
(27, NULL, 'toqyg@mailinator.net', NULL, 'gifavucax@mailinator.com', 126, '', 'Harum cumque aut ali', NULL, '2019-08-07 06:11:20', '2019-08-07 06:11:20'),
(28, NULL, '3elaji - Home', NULL, 'home', 141, NULL, 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"', '3elaji', '2019-08-06 22:00:00', '2019-08-08 07:17:02'),
(29, NULL, '3elaji - About', NULL, 'about', 142, NULL, 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"', NULL, '2019-08-06 22:00:00', '2019-08-08 07:17:12'),
(30, NULL, '3elaji - contact', NULL, 'contact', 144, 'https://www.allawyfestival.com/website/img/show/circus.jpeg', 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"', NULL, '2019-08-06 22:00:00', '2019-08-08 07:25:04'),
(31, 1, 'blog', NULL, 'blog', 145, 'https://www.allawyfestival.com/website/img/show/circus.jpeg', 'منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\"', NULL, '2019-08-07 22:00:00', '2019-08-08 07:25:15'),
(32, NULL, 'ruhejog@mailinator.net', NULL, 'sucosum@mailinator.com', 147, NULL, 'Quam quis iste qui a', NULL, '2019-08-08 11:21:40', '2019-08-08 11:21:40'),
(33, NULL, 'vobym@mailinator.com', NULL, 'jidejyv@mailinator.com', 150, NULL, 'Quia est quo molesti', NULL, '2019-08-08 11:22:32', '2019-08-08 11:22:32'),
(34, NULL, 'vobym@mailinator.com', NULL, 'jidejyv@mailinator.com', 151, NULL, 'Quia est quo molesti', NULL, '2019-08-08 11:24:21', '2019-08-08 11:24:21'),
(35, NULL, 'vobym@mailinator.com', NULL, 'jidejyv@mailinator.com', 152, NULL, 'Quia est quo molesti', NULL, '2019-08-08 11:39:28', '2019-08-08 11:39:28'),
(36, NULL, 'vobym@mailinator.com', NULL, 'jidejyv@mailinator.com', 153, NULL, 'Quia est quo molesti', NULL, '2019-08-08 11:39:55', '2019-08-08 11:39:55'),
(37, NULL, 'hodu@mailinator.net', NULL, 'nujexaku@mailinator.net', 156, NULL, 'Doloribus hic aute u', NULL, '2019-08-08 11:41:56', '2019-08-08 11:41:56'),
(38, NULL, 'hodu@mailinator.net', NULL, 'nujexaku@mailinator.net', 157, NULL, 'Doloribus hic aute u', NULL, '2019-08-08 11:43:18', '2019-08-08 11:43:18'),
(39, NULL, 'Dr-Raamy Raafat', NULL, 'dr-ramy-raafat', 172, NULL, 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, '2019-08-08 15:39:13', '2019-08-08 15:39:13'),
(40, NULL, 'centers', NULL, 'centers', NULL, NULL, NULL, NULL, '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(42, NULL, 'Labs', NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(43, NULL, 'Al Mahmoud Medical Center', NULL, 'al-mahmoud-center', 173, NULL, 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(44, NULL, 'Al Borg', NULL, 'al-borg-lab', 178, NULL, 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, '2019-08-08 16:31:05', '2019-08-08 16:31:05'),
(45, NULL, 'Alpha', NULL, 'alpha-labs', 183, NULL, 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, '2019-08-08 16:48:19', '2019-08-08 16:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `is_main_page` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `key_words` text COLLATE utf8mb4_unicode_ci,
  `open_graph_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `is_main_page`, `url`, `name`, `description`, `key_words`, `open_graph_id`, `created_at`, `updated_at`) VALUES
(4, NULL, 'hygyfac@mailinator.com', 'xopacigoky@mailinator.com', NULL, NULL, 1, '2019-08-06 07:18:19', '2019-08-06 08:31:43'),
(5, NULL, 'dentical-article', 'Kidoo Article', NULL, NULL, 2, '2019-08-06 07:21:27', '2019-08-08 17:52:05'),
(6, NULL, 'zezevejuc@mailinator.com', 'vuwojer@mailinator.com', NULL, NULL, 3, '2019-08-06 08:28:09', '2019-08-06 08:28:09'),
(7, NULL, 'fohuhy@mailinator.com', 'zogyxuzuh@mailinator.net', 'Atque fugiat illum', 'Aut sint dolor dolor', 4, '2019-08-06 08:32:51', '2019-08-08 10:44:46'),
(8, 1, 'radiology-center', 'Radiology Center', 'Quia voluptate aliqu', 'Sit eiusmod fugiat e', 5, '2019-08-05 22:00:00', '2019-08-08 10:27:16'),
(9, 1, 'clinics', 'clinics', NULL, NULL, 6, '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(27, NULL, 'mohamed-sediek', 'Dr.Mohamed Sedeik', 'دكتور محمد صديقدكتور محمد صديقدكتور محمد صديقد كتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديقدكتور محمد صديق', 'دكتور محمد صدي', 24, '2019-08-07 05:49:40', '2019-08-08 10:42:18'),
(29, NULL, 'bita@mailinator.net', 'lunosoj@mailinator.com', 'Ut tenetur exercitat', NULL, 26, '2019-08-07 06:07:31', '2019-08-07 06:07:31'),
(30, NULL, 'gifavucax@mailinator.com', 'toqyg@mailinator.net', 'Harum cumque aut ali', NULL, 27, '2019-08-07 06:11:20', '2019-08-07 06:11:20'),
(31, 1, '/', 'home', NULL, NULL, 28, '2019-08-06 22:00:00', '2019-08-06 22:00:00'),
(32, 1, 'about', 'about', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', 29, '2019-08-06 22:00:00', '2019-08-06 22:00:00'),
(33, 1, 'contact', 'contact', 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى', 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى', 30, '2019-08-06 22:00:00', '2019-08-06 22:00:00'),
(34, 1, 'blog', 'blog', 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى', 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى', 31, '2019-08-06 22:00:00', '2019-08-06 22:00:00'),
(35, NULL, 'sucosum@mailinator.com', 'ruhejog@mailinator.net', 'Quam quis iste qui a', NULL, 32, '2019-08-08 11:21:40', '2019-08-08 11:21:40'),
(36, NULL, 'jidejyv@mailinator.com', 'vobym@mailinator.com', 'Quia est quo molesti', NULL, 33, '2019-08-08 11:22:32', '2019-08-08 11:22:32'),
(37, NULL, 'jidejyv@mailinator.com', 'vobym@mailinator.com', 'Quia est quo molesti', NULL, 34, '2019-08-08 11:24:21', '2019-08-08 11:24:21'),
(38, NULL, 'jidejyv@mailinator.com', 'vobym@mailinator.com', 'Quia est quo molesti', NULL, 35, '2019-08-08 11:39:29', '2019-08-08 11:39:29'),
(39, NULL, 'jidejyv@mailinator.com', 'vobym@mailinator.com', 'Quia est quo molesti', NULL, 36, '2019-08-08 11:39:55', '2019-08-08 11:39:55'),
(40, NULL, 'nujexaku@mailinator.net', 'hodu@mailinator.net', 'Doloribus hic aute u', NULL, 37, '2019-08-08 11:41:56', '2019-08-08 11:41:56'),
(41, NULL, 'nujexaku@mailinator.net', 'hodu@mailinator.net', 'Doloribus hic aute u', NULL, 38, '2019-08-08 11:43:18', '2019-08-08 11:43:18'),
(42, NULL, 'dr-ramy-raafat', 'Dr-Raamy Raafat', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, 39, '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(43, 1, 'centers', 'medical centers', NULL, NULL, 40, '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(45, 1, 'labs', 'Labs', NULL, NULL, 42, '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(46, NULL, 'al-mahmoud-center', 'Al Mahmoud Medical Center', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, 43, '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(47, NULL, 'al-borg-lab', 'Al Borg', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, 44, '2019-08-08 16:31:05', '2019-08-08 16:31:05'),
(48, NULL, 'alpha-labs', 'Alpha', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', NULL, 45, '2019-08-08 16:48:20', '2019-08-08 16:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `same_as`
--

CREATE TABLE `same_as` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_prop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sameAs',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `same_as`
--

INSERT INTO `same_as` (`id`, `name`, `url`, `rel`, `item_prop`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'sugy@mailinator.com', 'https://www.youtube.com', 'fukumybyj@mailinator.net', 'kuqacy@mailinator.com', 2, '2019-08-08 04:31:01', '2019-08-08 04:43:48'),
(5, 'bisatoxe@mailinator.com', 'https://www.dedikuqegen.tv', 'wekyhajom@mailinator.net', 'ginuwe@mailinator.net', 2, '2019-08-08 05:11:54', '2019-08-08 05:11:54'),
(6, 'zalicoqoby@mailinator.net', 'https://www.xasomoqysofede.org.au', 'pivihybud@mailinator.net', 'vugofary@mailinator.net', 2, '2019-08-08 05:12:10', '2019-08-08 05:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) NOT NULL,
  `logo` int(10) UNSIGNED NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `default_lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `logo`, `status`, `default_lang`, `created_at`, `updated_at`) VALUES
(1, 170, 1, 'en', '2019-08-07 22:00:00', '2019-08-08 14:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image_id`, `video_id`, `url`, `created_by`, `created_at`, `updated_at`) VALUES
(8, 171, NULL, 'doctors', 2, '2019-08-08 15:19:02', '2019-08-08 15:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `image_id`, `url`, `created_by`, `created_at`, `updated_at`) VALUES
(2, NULL, 'bones', 2, '2019-08-06 09:53:31', '2019-08-06 09:53:31'),
(3, NULL, 'heart-surgery', 2, '2019-08-07 22:00:00', '2019-08-08 16:28:02'),
(4, NULL, 'x-ray', 2, '2019-08-08 16:47:44', '2019-08-08 16:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `image_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Mohamed Kidwany', 'admin@3elaji.com', NULL, NULL, NULL, '$2y$10$nKEdHs80k0y8iezFBtWVOODsFXlvxX4Y2ezYDY2f1HQ8hpFPTrdbO', 'YAs7oLQkoemY1YTsUK0J9LzPjHENjr2OXxGdiAg35KXlIVgNUAAqvYc37Y4r', '2019-06-18 15:45:49', '2019-06-18 16:12:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image_id` (`image_id`),
  ADD KEY `mission_image_id` (`mission_image_id`),
  ADD KEY `vision_image_id` (`vision_image_id`),
  ADD KEY `values_image_id` (`values_image_id`),
  ADD KEY `approach_image_id` (`approach_image_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `blog_open_graph_id` (`open_graph_id`),
  ADD KEY `blog_page_id` (`page_id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_specialist_id` (`specialist_id`),
  ADD KEY `clinic_type_id` (`clinic_type_id`),
  ADD KEY `clinic_main_image_id` (`image_id`),
  ADD KEY `clinic_created_by` (`created_by`),
  ADD KEY `open_graph_id` (`open_graph_id`),
  ADD KEY `clinic_page_id` (`page_id`),
  ADD KEY `clinic_form_id` (`form_id`);

--
-- Indexes for table `clinic_contact`
--
ALTER TABLE `clinic_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_clinic_id` (`clinic_id`);

--
-- Indexes for table `clinic_images`
--
ALTER TABLE `clinic_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_image_id` (`image_id`),
  ADD KEY `image_clinic_id` (`clinic_id`);

--
-- Indexes for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_type_open_graph_id_fk` (`open_graph_id`),
  ADD KEY `clinic_type_page_id` (`page_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_page_id` (`page_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_album_id` (`album_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_graph`
--
ALTER TABLE `open_graph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `og_image_id` (`og_image`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_open_graph_id` (`open_graph_id`);

--
-- Indexes for table `same_as`
--
ALTER TABLE `same_as`
  ADD PRIMARY KEY (`id`),
  ADD KEY `same_as_created_by` (`created_by`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webiste_logo_image_id` (`logo`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_created_by` (`created_by`),
  ADD KEY `slide_image_id` (`image_id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_created_by` (`created_by`),
  ADD KEY `specialist_image_id` (`image_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_role_id` (`role_id`),
  ADD KEY `user_image_id` (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clinic_contact`
--
ALTER TABLE `clinic_contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `clinic_images`
--
ALTER TABLE `clinic_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `clinic_type`
--
ALTER TABLE `clinic_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `open_graph`
--
ALTER TABLE `open_graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `same_as`
--
ALTER TABLE `same_as`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `approach_image_id` FOREIGN KEY (`approach_image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `mission_image_id` FOREIGN KEY (`mission_image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `values_image_id` FOREIGN KEY (`values_image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `vision_image_id` FOREIGN KEY (`vision_image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_open_graph_id` FOREIGN KEY (`open_graph_id`) REFERENCES `open_graph` (`id`),
  ADD CONSTRAINT `blog_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic`
--
ALTER TABLE `clinic`
  ADD CONSTRAINT `clinic_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clinic_form_id` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`),
  ADD CONSTRAINT `clinic_main_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `clinic_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `clinic_specialist_id` FOREIGN KEY (`specialist_id`) REFERENCES `specialist` (`id`),
  ADD CONSTRAINT `clinic_type_id` FOREIGN KEY (`clinic_type_id`) REFERENCES `clinic_type` (`id`),
  ADD CONSTRAINT `open_graph_id` FOREIGN KEY (`open_graph_id`) REFERENCES `open_graph` (`id`);

--
-- Constraints for table `clinic_contact`
--
ALTER TABLE `clinic_contact`
  ADD CONSTRAINT `contact_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic_images`
--
ALTER TABLE `clinic_images`
  ADD CONSTRAINT `clinic_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD CONSTRAINT `clinic_type_open_graph_id_fk` FOREIGN KEY (`open_graph_id`) REFERENCES `open_graph` (`id`),
  ADD CONSTRAINT `clinic_type_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `form`
--
ALTER TABLE `form`
  ADD CONSTRAINT `form_page_id` FOREIGN KEY (`page_id`) REFERENCES `form` (`id`);

--
-- Constraints for table `open_graph`
--
ALTER TABLE `open_graph`
  ADD CONSTRAINT `og_image_id` FOREIGN KEY (`og_image`) REFERENCES `image` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `page_open_graph_id` FOREIGN KEY (`open_graph_id`) REFERENCES `open_graph` (`id`);

--
-- Constraints for table `same_as`
--
ALTER TABLE `same_as`
  ADD CONSTRAINT `same_as_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `logo_image_id` FOREIGN KEY (`logo`) REFERENCES `image` (`id`);

--
-- Constraints for table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slider_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `slider_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `specialist_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
