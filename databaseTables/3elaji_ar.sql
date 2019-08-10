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
-- Database: `3elaji_ar`
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
(1, 1, 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\n\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسي', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\n\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسي', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\n\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسي', '\r\nبمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق \"ليتراسيت\"', 'هدفنا الرئيسي على المدى الطويل هو دائما تحقيق نتائج فعلية للمرضى. ولكن في هذه العملية ، نحافظ أيضًا على التركيز على منحك أفضل خدمة طبية . مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف!', '2019-08-07 22:00:00', '2019-08-08 17:22:09');

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
(10, 9, 'مطبعة مجهولة برص مجموعة من', NULL, 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"', '2019-08-06 07:21:27', '2019-08-08 18:47:00'),
(12, 11, 'مطبعة مجهولة برص مجموعة من', NULL, 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"\r\n\r\nكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\r\n\r\nصار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\"', '2019-08-06 08:32:51', '2019-08-08 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(10) NOT NULL,
  `clinic_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `clinic_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(19, 26, 'دكتور رامى رافت', 'إجراء الموجات الصوتية لتشخيص حالات مرضى القلب\r\nتركيب منظمات القلب الدائمة والمؤقتة\r\nتوسيع الصمام الرئوي والشرايين التاجية بالقسطرة البالونية\r\nإجراء القسطرة التشخيصية للشرايين التاجية\r\nتركيب دعامات القلب\r\nتشخيص وعلاج العيوب الخلقية', '2019-08-08 15:39:14', '2019-08-08 15:39:14'),
(20, 27, 'مركز المحمود الطبي', 'إجراء الموجات الصوتية لتشخيص حالات مرضى القلب\r\nتركيب منظمات القلب الدائمة والمؤقتة\r\nتوسيع الصمام الرئوي والشرايين التاجية بالقسطرة البالونية\r\nإجراء القسطرة التشخيصية للشرايين التاجية\r\nتركيب دعامات القلب\r\nتشخيص وعلاج العيوب الخلقية', '2019-08-08 16:18:27', '2019-08-08 16:18:27'),
(21, 28, 'معامل البرج', 'إجراء الموجات الصوتية لتشخيص حالات مرضى القلب\r\nتركيب منظمات القلب الدائمة والمؤقتة\r\nتوسيع الصمام الرئوي والشرايين التاجية بالقسطرة البالونية\r\nإجراء القسطرة التشخيصية للشرايين التاجية\r\nتركيب دعامات القلب\r\nتشخيص وعلاج العيوب الخلقية', '2019-08-08 16:31:05', '2019-08-08 17:11:35'),
(22, 29, 'الفا للأشعة المقطعية', 'جراء الموجات الصوتية لتشخيص حالات مرضى القلب\r\nتركيب منظمات القلب الدائمة والمؤقتة\r\nتوسيع الصمام الرئوي والشرايين التاجية بالقسطرة البالونية\r\nإجراء القسطرة التشخيصية للشرايين التاجية\r\nتركيب دعامات القلب\r\nتشخيص وعلاج العيوب الخلقية', '2019-08-08 16:48:20', '2019-08-08 17:11:54');

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
(1, 1, 'مركز اشعة', '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(2, 2, 'العيادات الطبية', '2019-08-05 22:00:00', '2019-08-05 22:00:00'),
(3, 3, 'مركز طبي', '2019-08-07 22:00:00', '2019-08-07 22:00:00'),
(4, 4, 'مركز تحاليل طبيبة', '2019-08-07 22:00:00', '2019-08-07 22:00:00');

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
(1, 1, 'علاجي', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق', '2019-08-07 22:00:00', '2019-08-08 14:40:34');

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
(4, 8, 'علاجي.كوم', NULL, 'تقدم عيادات علاجي الخدمات العلاجية المتكاملة', 'الأطباء', '2019-08-08 15:19:02', '2019-08-08 15:19:02');

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
(2, 2, 'جراحة العظام', '2019-08-06 09:53:31', '2019-08-06 09:53:31'),
(3, 3, 'جراحة القلب', '2019-08-07 22:00:00', '2019-08-08 16:28:02'),
(4, 4, 'أشعة مقطعية', '2019-08-08 16:47:44', '2019-08-08 16:47:44');

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
  ADD KEY `blog_id_ar` (`blog_id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_ar_id` (`clinic_id`);

--
-- Indexes for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_type_id_ar` (`clinic_type_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_ar_id` (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_id_ar` (`slide_id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_ar_id` (`specialist_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `blog_id_ar` FOREIGN KEY (`blog_id`) REFERENCES `3elaji`.`blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic`
--
ALTER TABLE `clinic`
  ADD CONSTRAINT `clinic_ar_id` FOREIGN KEY (`clinic_id`) REFERENCES `3elaji`.`clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clinic_type`
--
ALTER TABLE `clinic_type`
  ADD CONSTRAINT `clinic_type_id_ar` FOREIGN KEY (`clinic_type_id`) REFERENCES `3elaji`.`clinic_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `setting_ar_id` FOREIGN KEY (`setting_id`) REFERENCES `3elaji`.`setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slide_id_ar` FOREIGN KEY (`slide_id`) REFERENCES `3elaji`.`slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_ar_id` FOREIGN KEY (`specialist_id`) REFERENCES `3elaji`.`specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
