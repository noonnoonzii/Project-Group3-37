-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2022 at 11:11 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6228853`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pics`
--

CREATE TABLE `home_pics` (
  `id_homepic` int UNSIGNED NOT NULL,
  `image_homepic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_08_22_034943_create_type_products_table', 1),
(7, '2021_08_22_035316_create_home_pics_table', 1),
(8, '2021_11_19_093952_admin_field', 2),
(10, '2021_08_22_035200_create_news_table', 3),
(12, '2021_08_22_034540_create_products_table', 4),
(14, '2014_10_12_000000_create_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_newinfo` int UNSIGNED NOT NULL,
  `header_news` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_news` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_new` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_newinfo`, `header_news`, `content_news`, `image_new`, `id_admin`, `created_at`, `updated_at`) VALUES
(1, 'DREG WAREHOUSE SALE 2021', 'พรุ่งนี้แล้วนะครับ\r\nย้ำเตือนกันอีกครั้ง กำเงินในมือแน่นแล้วมาช็อปกันให้แหลกกับงาน DREG WAREHOUSE SALE 2021 เริ่มวันพรุ่งนี้ ศุกร์ที่ 24 - 26 ธันวาคมนี้ \r\nรายละเอียดในงาน\r\nเริ่มเวลา 12.00น. - 21.00น. \r\nวันที่ 24 ธันวาคม - 26 ธันวาคม \r\nสถานที่จัดงาน\r\nDreg Skatepark \r\nLocation : Dreg skatepark\r\n083 541 3212\r\n ที่จอดรถ \r\nมีที่จอดรถริมถนนด้านหน้างาน\r\nประตูเปิดเวลา 12.00น.', 'ghzZBE.jpg', NULL, '2022-01-27 02:38:29', '2022-01-27 02:52:00'),
(2, 'แจ้งประกาศหยุดปีใหม่ในส่วนของ SKATE SHOP', 'แจ้งประกาศหยุดปีใหม่ในส่วนของ SKATE SHOP ในวันที่ 31 ธ.ค 64 - 3 ม.ค 65 แต่ในส่วนของ SKATE PARK เปิดให้บริการตามปกติครับ', 'rgsOMi.jpg', NULL, '2022-01-27 02:39:16', '2022-01-27 02:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int UNSIGNED NOT NULL,
  `name_product` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_product` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_typeproduct` int NOT NULL,
  `id_admin` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name_product`, `price`, `brand`, `description`, `pic_product`, `id_typeproduct`, `id_admin`, `created_at`, `updated_at`) VALUES
(1, 'Shirt Dreg Black', '590.00', 'Dreg', 'เสื้อยืด แบรนด์ Dreg Skate สีดำ ใส่สบายผ้าไม่ย้วย ไม่ต้องรีด ใส่ได้ตลอด', 'ckC0qveHwH0.jpg', 6, NULL, '2022-01-15 21:44:04', '2022-01-15 21:44:04'),
(2, 'Swiss Flash', '890.00', 'Swiss', 'ลูกปืน Swiss ของแท้ 100% สี่ชิ้นล้อครบ', '3lg63Bo87n5.jpg', 2, NULL, '2022-01-15 21:53:17', '2022-01-15 22:04:51'),
(4, 'Swiss Gold', '780.00', 'Swiss', 'Swiss Gold', 'rkYQwQp0sQL.jpg', 2, NULL, '2022-01-17 05:12:49', '2022-01-17 05:12:49'),
(5, 'bronson_jaws', '490.00', 'Bronson_jaws', 'Bearing bronson', 'Qn3ueKoy3Bw.jpg', 2, NULL, '2022-01-17 07:25:04', '2022-01-17 07:25:04'),
(6, 'Second Deck Serial Killer YLW 8.0\"/8.25\"', '1700.00', 'Second', '-', 'TMIP2d4KXIY.jpg', 8, NULL, '2022-01-21 02:38:06', '2022-01-21 02:38:06'),
(7, 'Second Deck Serial Killer ERY 8.0\"/8.25\"', '1700.00', 'Second', '8.0\"/8.25\"', 'Vaa6Uua8Lwq.jpg', 8, NULL, '2022-01-21 02:40:09', '2022-01-21 02:40:09'),
(8, 'Second Deck Serial Killer BLU 7.8\"/8.0\"', '1700.00', 'Second', '7.8\"/8.0\"', 'zaW1YHQyW2D.jpg', 8, NULL, '2022-01-21 02:41:14', '2022-01-21 02:41:14'),
(9, 'Second Deck Serial Killer GRN 8.0\"/8.125\"', '1700.00', 'Second', '8.0\"/8.125\"', 'NNIAMRMiHP5.jpg', 8, NULL, '2022-01-21 02:42:22', '2022-01-21 02:42:22'),
(10, 'Independent 144 Stage 11 Pro Mason Silva Black Silver Standard Skateboard Trucks', '2200.00', 'Independent', '144', '35AVqmMc3lI.jpg', 9, NULL, '2022-01-21 02:44:19', '2022-01-21 02:44:19'),
(11, 'Independent 149 Stage 11 Forged Titanium Silver Standard Skateboard Trucks', '3600.00', 'Independent', '149', 'uFib0FLxDVs.jpg', 9, NULL, '2022-01-21 02:45:21', '2022-01-21 02:45:21'),
(12, 'Independent 144 Stage 11 Toy Machine Standard Skateboard Trucks', '2200.00', 'Independent', '144', 'YFcKtTpIURv.jpg', 9, NULL, '2022-01-21 02:46:15', '2022-01-21 02:46:27'),
(13, 'Theeve Truck Csx Will Gabourel 5.25/5.5', '1800.00', 'Theeve', '5.25/5.5', 'FD96v4oP0ed.jpg', 9, NULL, '2022-01-21 02:48:36', '2022-01-21 02:48:36'),
(14, 'Theeve Truck Csx Hinge Flower 5.5', '1700.00', 'Theeve', '5.5', 'ceb1WzYz3Ex.jpg', 9, NULL, '2022-01-21 02:49:31', '2022-01-21 02:49:31'),
(15, 'Theeve Truck Csx Hollow Anniversary Raw 5.25/5.5', '1800.00', 'Theeve', '5.25/5.5', 'yBzudio9m86.jpg', 9, NULL, '2022-01-21 02:50:44', '2022-01-21 02:50:44'),
(16, 'Thunder Hollow Light 149 / 147', '2600.00', 'Thunder', '149 / 147', 'n7QUvTMDNeG.jpg', 9, NULL, '2022-01-21 02:53:02', '2022-01-21 02:53:02'),
(17, 'Silver Truck M-Class Hollow Black 8.0', '1800.00', 'Silver', '8.0', 'fdIs3IhiqlX.jpg', 9, NULL, '2022-01-21 02:54:23', '2022-01-21 02:54:23'),
(18, 'Venture Truck High 5.6', '2000.00', 'Venture', '5.6', 'IoURj2Ir9fp.jpg', 9, NULL, '2022-01-21 02:56:16', '2022-01-21 02:56:16'),
(19, 'Raw & Good R1', '300.00', 'Raw & Good', '.', 'KDuvOaNGjHx.jpg', 2, NULL, '2022-01-21 03:22:07', '2022-01-21 03:22:07'),
(20, 'Lucky Hardware 7/8\"', '200.00', 'Lucky', '7/8\"', 'sqF30eQfHwg.jpg', 12, NULL, '2022-01-21 03:24:38', '2022-01-21 03:24:38'),
(21, 'Thunder Hardware Bolts 1\"', '200.00', 'Thunder', '1\"', '0NQU3mm8Rwo.jpg', 12, NULL, '2022-01-21 03:26:12', '2022-01-21 03:26:12'),
(22, 'Spitfire Formula Four Classic 99A 54M', '1600.00', 'Spitfire', '99A 54M', 'wLX4eFfLIlz.jpg', 10, NULL, '2022-01-21 03:27:59', '2022-01-21 03:28:15'),
(23, 'Cruisers Santa Cruz Complete', '5990.00', 'Santa Cruz', '.', '4UMyckoue63.jpg', 7, NULL, '2022-01-21 05:03:55', '2022-01-21 05:03:55'),
(24, 'Second Skateboards Already here 8.0” 8.125” 8.25” 8.5”', '1700.00', 'Second', '8.0” 8.125” 8.25” 8.5”', 'ogdZuWkxhic.jpg', 8, NULL, '2022-01-21 05:05:48', '2022-01-21 05:05:48'),
(25, 'Skate Sk8 Low', '2900.00', 'Vans', 'Size  7 Us  8 Us  9 Us  10 Us  10.5 Us', 'FgJZVoCP8HL.jpg', 14, NULL, '2022-01-21 05:10:51', '2022-01-21 05:10:51'),
(26, 'Skate Grosso Mid', '3200.00', 'Vans', 'Size : 7 Us , 8 Us , 9 Us , 10 Us , 10.5 Us', '8Iod24EcMUa.jpg', 14, NULL, '2022-01-21 05:11:50', '2022-01-21 05:11:50'),
(27, 'Skate Sk8 - Hi', '3400.00', 'Vans', 'Size : 7 Us , 8 Us , 9 Us , 10 Us , 10.5 Us', 'bvS5WWWzFio.jpg', 14, NULL, '2022-01-21 05:12:33', '2022-01-21 05:12:33'),
(28, 'DREG SKATEBOARDS COMPLETE SET', '3600.00', 'Dreg', 'ขนาด8.0', '3dN4yjUY4JO.jpg', 7, NULL, '2022-01-21 05:14:47', '2022-01-21 05:14:47'),
(29, 'Mob Griptape', '600.00', 'Mob', '.', 'HR1kdaFNsHH.jpg', 11, NULL, '2022-01-21 05:16:47', '2022-01-21 05:16:47'),
(30, 'Grizzly griptape', '700.00', 'Grizzly', '.', '8VDyWKymV0E.jpg', 11, NULL, '2022-01-21 05:17:35', '2022-01-21 05:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id_typeproduct` int UNSIGNED NOT NULL,
  `typeproduct_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id_typeproduct`, `typeproduct_name`, `created_at`, `updated_at`) VALUES
(2, 'bearing', '2021-11-15 05:24:38', NULL),
(3, 'Tape', '2021-11-18 02:27:10', '2022-01-12 14:16:36'),
(6, 'T-shirts', '2022-01-12 13:43:58', '2022-01-12 13:43:58'),
(7, 'Complete Skateboards', '2022-01-12 14:14:59', '2022-01-12 14:14:59'),
(8, 'Deck', '2022-01-12 14:15:11', '2022-01-12 14:15:11'),
(9, 'Trucks', '2022-01-12 14:15:18', '2022-01-12 14:15:18'),
(10, 'Wheels', '2022-01-12 14:15:26', '2022-01-12 14:15:26'),
(11, 'Grip Tape', '2022-01-12 14:15:34', '2022-01-12 14:15:34'),
(12, 'Hardware', '2022-01-12 14:15:40', '2022-01-12 14:15:40'),
(13, 'Accessories', '2022-01-12 14:15:45', '2022-01-12 14:15:45'),
(14, 'Shoes', '2022-01-12 14:15:51', '2022-01-12 14:15:51'),
(15, 'Safety', '2022-01-12 14:15:58', '2022-01-12 14:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `isAdmin`, `address`, `phone`, `image_profile`, `cover_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'Thanakorn', 'Rattanasawat', 'noonlovechelsea_1905@hotmail.com', NULL, '$2y$10$ImYC5YBjPGZ/U38DAoj/O.bDOeNTFQGh1Q2RfHjVbl6RAuCxuoqUC', '1', '68/51 Nonthaburi', '0929106459', '22hn4xOS.jpg', 'P2SKJSb4.jpg', NULL, '2022-01-17 06:30:21', '2022-01-20 02:54:21'),
(4, 'reveluv', 'seulgi', NULL, 'reveluv2014@gmail.com', NULL, '$2y$10$6JjY26Y.dhjr49NC9WeKkO6KZoxXsRJ7Xs5uGbndHXgS.2cVXdzmy', '0', NULL, NULL, 'logo.jpg', 'park.jpg', NULL, '2022-01-17 07:22:47', '2022-01-17 07:22:47'),
(5, 'admin', 'Admin(test)', NULL, 'Admin@gmail.com', NULL, '$2y$10$IFh/mm9d5EGX1DwLV36KfOhTT2H4Ed/7ojz0R2Fi1pc66WIbK8qhm', '1', NULL, NULL, 'logo.jpg', 'park.jpg', NULL, '2022-01-21 01:48:16', '2022-01-21 01:48:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pics`
--
ALTER TABLE `home_pics`
  ADD PRIMARY KEY (`id_homepic`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_newinfo`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id_typeproduct`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pics`
--
ALTER TABLE `home_pics`
  MODIFY `id_homepic` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_newinfo` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id_typeproduct` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
