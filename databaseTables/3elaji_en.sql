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
-- Database: `3elaji_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `about_id` int(10) NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci,
  `approach` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_id`, `mission`, `vision`, `value`, `approach`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\nت\"', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', '\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', 'هدفنا الرئيسي على المدى الطويل هو دائما تحقيق نتائج فعلية للمرضى. ولكن في هذه العملية ، نحافظ أيضًا على التركيز على منحك أفضل خدمة طبية . مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف!', '2019-08-07 22:00:00', '2019-08-08 17:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_id`, `title`, `sub_title`, `body`, `created_at`, `updated_at`) VALUES
(8, 9, 'Kidoo Article', NULL, 'Laborum Quidem quaeمطبعة مجهولة برص مجموعة منمطبعة مجهولة برص مجموعة من', '2019-08-06 07:21:28', '2019-08-08 18:47:00'),
(10, 11, 'zogyxuzuh@mailinator.net', NULL, 'Enim in voluptatem', '2019-08-06 08:32:51', '2019-08-08 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(10) NOT NULL,
  `clinic_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `clinic_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(19, 26, 'Dr-Raamy Raafat', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(20, 27, 'Al Mahmoud Medical Center', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(21, 28, 'Al Borg', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', '2019-08-08 16:31:05', '2019-08-08 17:11:35'),
(22, 29, 'Alpha', 'Performing sound waves to diagnose cases of heart patients\r\nInstallation of permanent and temporary cardiac regulators\r\nExpansion of the pulmonary valve and coronary arteries by balloon catheter\r\nDiagnostic catheterization of the coronary arteries\r\nInstallation of cardiac stents\r\nDiagnosis and treatment of birth defects', '2019-08-08 16:48:20', '2019-08-08 17:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_type`
--

CREATE TABLE `clinic_type` (
  `id` int(10) NOT NULL,
  `clinic_type_id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_type`
--

INSERT INTO `clinic_type` (`id`, `clinic_type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Radiology Center', '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(2, 2, 'Clinics', '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(3, 3, 'center', '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(4, 4, 'Lab', '2019-08-07 22:00:00', '2019-08-07 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_id` int(10) NOT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `setting_id`, `website_name`, `website_description`, `created_at`, `updated_at`) VALUES
(1, 1, '3elaji', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق', '2019-08-07 22:00:00', '2019-08-08 14:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `slide_id` int(10) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_id`, `title`, `sub_title`, `description`, `button`, `created_at`, `updated_at`) VALUES
(4, 8, 'Elagi.com', NULL, 'تقدم عيادات علاجي الخدمات العلاجية المتكاملة', 'Doctors', '2019-08-08 15:19:02', '2019-08-08 15:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(10) NOT NULL,
  `specialist_id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `specialist_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 2, 'Bones Surgery', '2019-08-06 09:53:31', '2019-08-06 09:53:31'),
(4, 3, 'Heart Surgery', '2019-08-07 22:00:00', '2019-08-08 16:28:02'),
(5, 4, 'X-Ray', '2019-08-08 16:47:44', '2019-08-08 16:47:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_ar_id` (`about_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id_en` (`blog_id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_en_id` (`clinic_id`);

--
-- Indexes for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_type_id_en` (`clinic_type_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_en_id` (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_id_en` (`slide_id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_en_id` (`specialist_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `clinic_type`
--
ALTER TABLE `clinic_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ar_id` FOREIGN KEY (`about_id`) REFERENCES `3elaji`.`about` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_id_en` FOREIGN KEY (`blog_id`) REFERENCES `3elaji`.`blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic`
--
ALTER TABLE `clinic`
  ADD CONSTRAINT `clinic_en_id` FOREIGN KEY (`clinic_id`) REFERENCES `3elaji`.`clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD CONSTRAINT `clinic_type_id_en` FOREIGN KEY (`clinic_type_id`) REFERENCES `3elaji`.`clinic_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `setting_en_id` FOREIGN KEY (`setting_id`) REFERENCES `3elaji`.`setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slide_id_en` FOREIGN KEY (`slide_id`) REFERENCES `3elaji`.`slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_en_id` FOREIGN KEY (`specialist_id`) REFERENCES `3elaji`.`specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
