-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 09:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taglines` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `avatar`, `cover`, `email`, `phone`, `address`, `description`, `taglines`, `social_links`, `cv`, `created_at`, `updated_at`) VALUES
(1, 'Gaurav arora', 'assets/common/img/avatar/default.png', 'assets/common/img/cover/default.png', 'agaurav546@gmail.com', '+918223886899', '2 Addeshwar gali khachrod', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non corporis assumenda maiores. Impedit quia necessitatibus adipisci sit quibusdam aspernatur mollitia, deleniti, id, molestiae a accusantium modi sint expedita aliquam labore.', '[\"I am Software Engineer\",\"I am Web Developer\",\"I am Full Stack Engineer\"]', '[{\"title\":\"LinkedIn\",\"iconClass\":\"fab fa-linkedin-in\",\"link\":\"https:\\/\\/www.linkedin.com\"},{\"title\":\"Github\",\"iconClass\":\"fab fa-github\",\"link\":\"https:\\/\\/github.com\"},{\"title\":\"Twitter\",\"iconClass\":\"fab fa-twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"title\":\"Mail\",\"iconClass\":\"far fa-envelope\",\"link\":\"mailto:johndoe@example.com\"}]', 'assets/common/cv/default.pdf', '2021-12-04 12:07:41', '2021-12-04 12:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$I3IZMApGvHwn1zO6F0fgKOVClspnwXQcw5K.q9aFKHTHblLvm4Ju2', '2021-12-04 12:07:40', '2021-12-04 12:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thesis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `institution`, `period`, `degree`, `cgpa`, `department`, `thesis`, `created_at`, `updated_at`) VALUES
(3, 'MIT Ujjain (RGPV)', '2015 - 2019', 'Bachelor of Engineering', '7.00', 'Computer Science', NULL, '2021-12-04 14:20:41', '2021-12-04 14:21:27'),
(4, 'MKHS (MP Board)', '2014-2015', 'Higher Secondary School', '58', 'PCM', NULL, '2021-12-04 14:22:25', '2021-12-04 14:23:53'),
(5, 'Govt . Model High School', '2011-2012', 'High School', '64', '-', '-', '2021-12-04 14:25:04', '2021-12-04 14:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `period`, `position`, `details`, `created_at`, `updated_at`) VALUES
(4, 'CIS Indore', '2019-Present', 'Jr. Sofware Developer', NULL, '2021-12-04 14:26:01', '2021-12-04 14:26:01'),
(5, 'MIS Indore', '2019-2019', 'Junior Software developer', NULL, '2021-12-04 14:26:32', '2021-12-04 14:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `replied` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'reply back status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `body`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Margarett Rowe', 'torphy.gertrude@hotmail.com', 'Ut distinctio non rerum id labore error aut.', 'Quisquam repellendus et excepturi quia. Omnis non dolores laborum omnis autem quia eius. Eos ipsa neque accusamus ea.', 1, '2021-11-06 10:46:59', '2021-12-04 12:07:41'),
(2, 'Annabell Bergnaum', 'kyler.willms@monahan.com', 'Enim dolore rerum dolor repellendus dignissimos voluptatibus.', 'Culpa dolorem ut eligendi commodi. Qui iusto pariatur est doloremque nisi est corrupti. Sed hic velit qui voluptatem.', 1, '2021-11-15 07:13:57', '2021-12-04 12:07:41'),
(3, 'Mr. Regan Ryan I', 'willms.evie@gmail.com', 'Est eum eaque magnam enim blanditiis dicta magni exercitationem.', 'Nostrum quas iste incidunt recusandae eos quam. Inventore quia exercitationem consequatur et laudantium aperiam. Natus perspiciatis nihil ratione quaerat laudantium numquam ducimus.', 1, '2021-11-10 04:21:55', '2021-12-04 12:07:41'),
(4, 'Dr. Retha Auer', 'orogahn@gmail.com', 'Nam velit enim quis reiciendis.', 'Maiores enim et labore enim. Nostrum ut ipsam sit commodi laboriosam maxime voluptatum. Omnis ea sed nulla ut aut. Nemo dolorum amet error reprehenderit.', 1, '2021-11-11 08:54:02', '2021-12-04 12:07:41'),
(5, 'D\'angelo Streich', 'berge.brice@hotmail.com', 'Consequatur eum optio quam officiis doloribus quisquam a.', 'Sint quia recusandae qui autem unde. Rem vel asperiores id sit. Voluptatem optio beatae voluptate enim. Atque quae pariatur voluptatibus nisi provident deleniti quia.', 1, '2021-11-05 06:41:45', '2021-12-04 12:07:41'),
(6, 'Ms. Krista Rowe II', 'mebert@moen.net', 'Laboriosam consequatur iste inventore qui rerum.', 'Soluta expedita sit quia fugit quidem temporibus ex. Aperiam reprehenderit ea dolores vel. Ipsa velit quisquam quis tempora.', 1, '2021-11-24 06:01:47', '2021-12-04 12:07:41'),
(7, 'Romaine Fadel', 'barton.bashirian@boyer.biz', 'Labore deleniti soluta nam.', 'Id nisi libero architecto. Veniam ut aut praesentium qui iste eum nesciunt. Fuga minus vel sed odio exercitationem. Est perferendis non ut molestiae aperiam incidunt.', 1, '2021-11-21 07:50:34', '2021-12-04 12:07:41'),
(8, 'Ms. Evie Connelly', 'paula51@yahoo.com', 'Cupiditate iste ut veniam doloremque dolores doloremque quasi deleniti.', 'Fugit sed nisi eos. Non officia blanditiis occaecati tenetur laborum. Culpa maxime quas fugiat omnis. Ut numquam veritatis rerum debitis.', 1, '2021-11-22 12:01:03', '2021-12-04 12:07:41'),
(9, 'Frankie Cole', 'ckulas@russel.com', 'Sint commodi eum dicta pariatur voluptatem quis quia.', 'Accusantium et consectetur tempore sit cumque atque. In odio autem voluptatibus consequatur nostrum. Error sit excepturi libero eligendi molestias atque.', 0, '2021-11-17 10:14:17', '2021-12-04 12:07:41'),
(10, 'Letitia McCullough MD', 'icarroll@spinka.biz', 'Voluptatum aliquid maiores doloribus provident perferendis.', 'Vitae ullam voluptas et ex ducimus nemo. Nobis placeat similique ullam perferendis sit voluptatem enim. Facere magni sint nemo. Facere et sunt veritatis et omnis deleniti totam.', 1, '2021-11-06 04:52:18', '2021-12-04 12:07:41'),
(11, 'Sibyl Graham I', 'assunta.bauch@hotmail.com', 'Atque ipsum fugiat molestiae molestiae voluptatem non maiores reprehenderit.', 'Similique modi doloribus aperiam nulla. Consequatur consequatur pariatur consectetur natus architecto magni et. Corporis illum iste recusandae quam sit non molestiae. Reprehenderit quia omnis a.', 1, '2021-11-14 07:51:20', '2021-12-04 12:07:41'),
(12, 'Mckayla Veum', 'corene.reichert@abbott.com', 'Assumenda placeat iusto vel incidunt.', 'Tempora qui asperiores enim quis repellendus. Ut blanditiis voluptates ipsam qui accusamus et ea. Repellat ea sequi blanditiis suscipit sunt.', 0, '2021-11-25 00:14:01', '2021-12-04 12:07:41'),
(13, 'Lavada Farrell', 'kiarra.beatty@gmail.com', 'Voluptas omnis tempora hic provident placeat unde.', 'Optio nam nam enim itaque qui et libero. Quo qui non consectetur provident. Necessitatibus libero et velit qui vitae veniam. Doloremque dignissimos alias et aut eum voluptatem distinctio.', 1, '2021-11-27 14:01:11', '2021-12-04 12:07:41'),
(14, 'Olga Rau', 'borer.colton@walter.org', 'Nostrum non deserunt id repellat omnis.', 'Quam perspiciatis sit et ea et. Labore debitis qui velit consequatur est. Architecto delectus assumenda enim.', 1, '2021-11-05 15:16:52', '2021-12-04 12:07:41'),
(15, 'Talia Gulgowski DDS', 'boyer.arnulfo@hotmail.com', 'Est est neque tempora reprehenderit consectetur dicta placeat iusto.', 'Repellat et in illum totam. Modi itaque corrupti eos vel veritatis voluptas molestiae. Eos ut maxime rerum omnis. Sit dolore officia numquam vel et laborum.', 0, '2021-11-30 11:26:24', '2021-12-04 12:07:41'),
(16, 'Quinten Kutch', 'shanon83@quitzon.com', 'Impedit hic et quod quisquam dolorem recusandae maxime.', 'Officiis accusantium sunt quaerat et omnis libero. Molestiae sed magni aliquam velit modi quasi perspiciatis. Ex quam nesciunt iure illo quia. Aut quidem consequatur aut est dolor voluptate.', 1, '2021-11-28 07:11:44', '2021-12-04 12:07:41'),
(17, 'Nikko Jenkins', 'eullrich@gmail.com', 'Deleniti quaerat perspiciatis molestiae distinctio et deserunt quisquam possimus.', 'Ut vel quidem dolor dolorum consequatur. Omnis reiciendis explicabo harum qui incidunt sit. Dolore non quis eveniet minus. Facere distinctio quidem adipisci quia ut.', 1, '2021-11-12 08:09:20', '2021-12-04 12:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_16_170627_create_settings_table', 1),
(2, '2021_03_16_170856_create_admins_table', 1),
(3, '2021_03_16_172519_create_about_table', 1),
(4, '2021_03_17_064942_create_admin_password_resets_table', 1),
(5, '2021_04_06_071031_create_portfolio_configs_table', 1),
(6, '2021_04_11_160456_create_education_table', 1),
(7, '2021_04_12_120441_create_skills_table', 1),
(8, '2021_04_13_174019_create_experiences_table', 1),
(9, '2021_04_14_075437_create_projects_table', 1),
(10, '2021_04_14_113222_create_services_table', 1),
(11, '2021_04_15_213517_create_visitors_table', 1),
(12, '2021_04_16_104901_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_configs`
--

CREATE TABLE `portfolio_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_configs`
--

INSERT INTO `portfolio_configs` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'procyon', 'procyon', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(2, 2, '#1890ff', '#1890ff', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(3, 3, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(4, 4, '0', '0', '2021-12-04 12:07:41', '2021-12-04 14:16:04'),
(5, 5, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(6, 6, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(7, 7, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(8, 8, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(9, 9, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(10, 10, '0', '1', '2021-12-04 12:07:41', '2021-12-04 14:50:18'),
(11, 11, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(12, 12, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(13, 19, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(14, 20, '1', '1', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(15, 13, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(16, 14, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(17, 15, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(18, 16, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(19, 17, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(20, 18, '', '', '2021-12-04 12:07:41', '2021-12-04 12:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `categories`, `thumbnail`, `images`, `details`, `link`, `created_at`, `updated_at`) VALUES
(4, 'PRM Assist Portal', '[\"Client\",\"Ireland\",\"professional\",\"office\"]', 'assets/common/img/projects/1638647993_nnHLqRQvY7.png', '[\"assets\\/common\\/img\\/projects\\/1638647993_ZtZ7y1eeTM.png\"]', NULL, 'https://www.prmassist.com/', '2021-12-04 14:29:53', '2021-12-04 14:29:53'),
(5, 'PRM Mobile App (Android / IOS)', '[\"professional\",\"Client\",\"Ireland\",\"office\"]', 'assets/common/img/projects/1638648325_BTDB6hErtZ.png', '[\"assets\\/common\\/img\\/projects\\/1638648325_q9FvVGLzM2.png\"]', NULL, NULL, '2021-12-04 14:35:25', '2021-12-04 14:35:25'),
(6, 'MMD-GPS', '[\"professional\",\"Client\",\"office\",\"Australia\"]', 'assets/common/img/projects/1638648581_5bq5IrFoB5.png', '[\"assets\\/common\\/img\\/projects\\/1638648581_mncwLBEg1D.png\"]', NULL, NULL, '2021-12-04 14:39:41', '2021-12-04 14:39:41'),
(7, 'Passel', '[\"Client\",\"office\"]', 'assets/common/img/projects/1638648786_Our23ZzHWE.png', '[\"assets\\/common\\/img\\/projects\\/1638648786_EWORpNrngH.png\"]', NULL, NULL, '2021-12-04 14:43:06', '2021-12-04 14:43:06'),
(8, 'Bingo', '[\"professional\",\"Client\",\"office\",\"Israel\"]', 'assets/common/img/projects/1638649167_Fz6myEzA1P.png', '[\"assets\\/common\\/img\\/projects\\/1638649167_Fjd0f9tjSK.png\"]', NULL, 'https://www.terem.org.il/', '2021-12-04 14:49:27', '2021-12-04 14:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'fas fa-code', 'Accusantium nihil ut non. Laborum et laborum in est molestiae est. Perspiciatis provident tempore et maxime nisi qui.', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(2, 'UI/UX Design', 'fas fa-basketball-ball', 'Iure quos rerum illum molestias non. Porro qui ipsam soluta consequatur veniam laborum. Ad voluptas et sunt architecto. Et ut mollitia molestiae laboriosam.', '2021-12-04 12:07:41', '2021-12-04 12:07:41'),
(3, 'Security', 'fas fa-shield-alt', 'Doloribus consequatur voluptate perspiciatis exercitationem quidem est. Adipisci iusto illum neque exercitationem sed praesentium. Ipsam reiciendis reiciendis exercitationem est voluptatibus.', '2021-12-04 12:07:41', '2021-12-04 12:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 2, '#1890ff', '#1890ff', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(2, 3, '0', '0', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(3, 7, 'mix', 'mix', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(4, 8, 'light', 'light', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(5, 9, 'light', 'light', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(6, 4, 'assets/common/img/logo/default.png', 'assets/common/img/logo/default.png', '2021-12-04 12:07:40', '2021-12-04 12:07:40'),
(7, 5, 'assets/common/img/favicon/default.png', 'assets/common/img/favicon/default.png', '2021-12-04 12:07:40', '2021-12-04 12:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proficiency` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `proficiency`, `created_at`, `updated_at`) VALUES
(10, 'Dot Net Core', 85, '2021-12-04 14:16:36', '2021-12-04 14:16:36'),
(11, 'Angular 8 +', 90, '2021-12-04 14:16:56', '2021-12-04 14:16:56'),
(12, 'Ionic', 60, '2021-12-04 14:17:10', '2021-12-04 14:17:10'),
(13, 'React JS', 90, '2021-12-04 14:17:23', '2021-12-04 14:17:23'),
(14, 'Node js', 70, '2021-12-04 14:17:42', '2021-12-04 14:17:42'),
(15, 'React Native', 70, '2021-12-04 14:18:04', '2021-12-04 14:18:04'),
(16, 'Firebase', 75, '2021-12-04 14:18:26', '2021-12-04 14:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_desktop` tinyint(1) DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `tracking_id`, `is_new`, `ip`, `is_desktop`, `browser`, `platform`, `location`, `created_at`, `updated_at`) VALUES
(1, '3TNcMUzPHrgU1Fl355oQrsHslQ0LAB', 1, '::1', 1, 'Chrome', 'Windows', 'Unknown', '2021-12-04 14:54:00', '2021-12-04 14:54:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
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
-- Indexes for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
