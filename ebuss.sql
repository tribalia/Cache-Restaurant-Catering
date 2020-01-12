-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2020 at 12:30 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.3.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Aperitive', 'mushrooms.jpg', 1, NULL, '2020-01-11 16:24:12'),
(2, 'Salate', 'salad.jpg', 2, NULL, '2020-01-11 16:24:13'),
(3, 'Antreuri', 'burger.jpg', 3, NULL, '2020-01-11 16:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `created_at`, `updated_at`, `name`, `description`, `price`, `image`, `category_id`) VALUES
(1, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Mini Cheeseburgeri', 'Acesti mini cheeseburgeri sunt serviti cu chiftele proaspăt coapte cu salată, roșii, avocado la alegerea ta.', '8.00', 'mini_cheeseburgers.jpg', 1),
(2, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Supa frantuzeasca cu ceapa', 'Ceapa caramelizată se gătește încet într-un bulion savuros, completată cu aluat și un amestec de brânză provolone. Se servește cu pâine cu maia.', '7.00', 'french_onion_soup.jpg', 1),
(3, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Anghinare cu usturoi Aioli', 'Anghinarele noastre sunt periate cu un amestec de ulei de măsline și rozmarin și apoi prajite a la carte. Servit cu o parte de aioli cremoși de usturoi.\r\n\r\n', '9.00', 'artichokes_with_garlic_aioli.jpg', 1),
(4, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Oua cu Parmezan', 'Aceste bucatele delicioase sunt făcute cu ouă organice, parmezan proaspăt și nuci de pin tocate.', '8.00', 'parmesan_eggs.jpg', 1),
(5, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Bufet de Gradina', 'Alegeți din ingredientele noastre locale proaspete, cultivate organic pentru a face o salată personalizată.', '10.00', 'parmesan_eggs.jpg', 2),
(6, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Salata Casei', 'Salata noastră de casă este făcută cu salată verde și spanac, completată cu roșii, castraveți, ceapă roșie și morcovi. Servit cu un dressing la alegere.', '7.00', 'house_salad.jpg', 2),
(7, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Salata Sefului', 'Salata bucătarului are castraveți, roșii, ceapă roșie, ciuperci, ouă fierte tari, brânză și pui la grătar fierbinte pe un platou de salată verde. Servit cu crutoane și dressing la alegere.', '9.00', 'chefs_salad.jpg', 2),
(8, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Salata de somon Quinoa', 'Salata noastră de quinoa este servită cu quinoa, roșii, castraveți, solzi și somon afumat. Servit cu dressing la alegere.', '12.00', 'quinoa_salmon_salad.jpg', 2),
(9, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Classic Burger', 'Our classic burger is made with 100% pure angus beef, served with lettuce, tomatoes, onions, pickles, and cheese of your choice. Veggie burger available upon request. Served with French fries, fresh fruit, or a side salad.', '10.00', 'classic_burger.jpg', 3),
(10, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Tortellini Bruschetta de tomate\r\n\r\n', 'Acest tortellini cu brânză clasică se gătește într-un sos de tomate uscat. Se servește cu bruschetta completată cu o roșie marinata și busuioc.\r\n\r\n', '14.00', 'tomato_bruschetta_tortellini.jpg', 3),
(11, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Pizza artizanală', 'Pizza noastră subțire de crustă este făcută în fiecare zi proaspăt și completată cu alegerile dvs. de carne proaspătă, legume, brânză și sos. Prețul include două completări. Adăugați 1 RON pentru fiecare topping suplimentar.', '10.00', 'handcrafted_pizza.jpg', 3),
(12, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Frigarui Tofu la grătar', 'Friptura noastră la grătar include tofu, roșii cherry, ardei gras și dovlecel marinat într-un sos de susan de ghimbir. Servit cu orez aburit.', '10.00', 'barbecued_tofu_skewers.jpg', 3),
(13, '2020-01-11 15:12:22', '2020-01-11 15:12:22', 'Platou de familie Fiesta', 'Acest platou este perfect pentru pa-l imparti cu cei dragi! Bucurați-vă de aripile noastre picante de bivol, nachos tradiționale și quesadillas de brânză servite cu o baie de guacamole proaspăt făcută.\r\n\r\n', '16.00', 'fiesta_family_platter.jpg', 3);

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
(4, '2020_01_11_080435_create_categories_table', 2),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(8, '2016_06_01_000004_create_oauth_clients_table', 3),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(10, '2018_12_11_204554_create_categories_table', 4),
(11, '2018_12_14_205957_create_menu_items_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
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
  `user_id` bigint(20) DEFAULT NULL,
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
(1, NULL, 'Restaurant Cache Personal Access Client', '6cvPtL3dawRzcAH3TunDaT9YlAXpN5G6dVgoXA2m', 'http://localhost', 1, 0, 0, '2020-01-11 13:03:07', '2020-01-11 13:03:07'),
(2, NULL, 'Restaurant Cache Password Grant Client', 'xr0eCgFRjqxOqZvyhyLqK05F1kDUfY2k80jUvgwC', 'http://localhost', 0, 1, 0, '2020-01-11 13:03:07', '2020-01-11 13:03:07'),
(3, NULL, 'Restaurant Cache Personal Access Client', 'MqoJPpJKKNh4g647zesYG4LU2xQqV2ed4IueGlYp', 'http://localhost', 1, 0, 0, '2020-01-11 13:55:15', '2020-01-11 13:55:15'),
(4, NULL, 'Restaurant Cache Password Grant Client', 'xFAILVlgzs7kLBJbopRSQvL0aXSwviDUxueFgdX2', 'http://localhost', 0, 1, 0, '2020-01-11 13:55:15', '2020-01-11 13:55:15');

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
(1, 1, '2020-01-11 13:03:07', '2020-01-11 13:03:07'),
(2, 3, '2020-01-11 13:55:15', '2020-01-11 13:55:15');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dral34@yahoo.com', '$2y$10$gPnXtdo68ALiFMCBIe1nX.2S5MhDaonH9wR6wm8wadlmMInVVfCKW', '2019-12-30 07:11:08');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cacovean', 'dancacovean@gmail.com', '2019-12-30 12:44:39', '$2y$10$g4Voxi.a8dWyszSHSCaRAuNCIuEdWkRg4F/DOylzmfRJjI6Q4gJde', 1, 'Ka7yEreLBdPx3bkRuTA1mzhzBzWPpSCC1bYpT2yQaaQImK9e7nXHLr6zD9fb', '2019-12-30 06:42:01', '2019-12-30 12:44:39'),
(2, 'Caco', 'dral34@yahoo.com', NULL, '$2y$10$IivsOar.O0J.XM4ns15Np.3wXAiT2dZmFXxAVvrSnC4jWggwzbn3u', 0, NULL, '2019-12-30 07:08:55', '2019-12-30 07:08:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
