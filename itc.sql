-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2022 at 03:12 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itc`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataevents`
--

CREATE TABLE `dataevents` (
  `id` int(5) UNSIGNED NOT NULL,
  `nim` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `instansi` varchar(120) NOT NULL,
  `bima_registered` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `idEvents` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataevents`
--

INSERT INTO `dataevents` (`id`, `nim`, `name`, `email`, `phone`, `instansi`, `bima_registered`, `payment_status`, `idEvents`, `created_at`, `updated_at`) VALUES
(4, '', 'Brenda Osinski II', 'schinner.lacey@bartoletti.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(5, '', 'Virgil Runte', 'lkirlin@smith.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(6, '', 'Dr. Khalid Nolan IV', 'wiegand.amir@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(7, '', 'Troy Langworth', 'hadley04@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(8, '', 'Marian Heidenreich', 'turner.elenor@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(9, '', 'Santa Paucek V', 'vicky48@parker.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(10, '', 'Kurt Jones', 'jast.mauricio@rau.net', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(11, '', 'Dr. Imelda Marquardt IV', 'gladyce18@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(12, '', 'Otho Abshire', 'walsh.albina@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(13, '', 'Dr. Adela Lang', 'oran.johnston@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(14, '', 'Mr. Douglas Corwin DVM', 'eldridge85@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(15, '', 'Raegan Conroy', 'ortiz.frederick@walsh.net', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(16, '', 'Cleveland Lowe', 'purdy.alexandro@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(17, '', 'Arnulfo Stiedemann', 'emmanuelle.satterfield@jones.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(18, '', 'Dawn Kuhlman', 'diana36@hand.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(19, '', 'Jany Bashirian', 'hoppe.coby@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(20, '', 'Richie Kuphal', 'tracy82@marks.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(21, '', 'Elmer Cassin', 'bednar.irving@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(22, '', 'Winona Pfannerstill MD', 'spinka.lawson@barrows.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(23, '', 'Anne Donnelly', 'ena70@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(24, '', 'Anabelle Collier', 'mayer.katrine@walsh.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(25, '', 'Rodger Gusikowski III', 'xgulgowski@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(26, '', 'Jevon Effertz', 'margaretta38@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(27, '', 'Jonathon Fahey', 'kale79@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(28, '', 'Else Mayert', 'adonis47@weissnat.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(29, '', 'Fritz Konopelski', 'cierra69@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(30, '', 'Marie Swift', 'jtowne@kassulke.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(31, '', 'Prof. Nellie Kuhlman III', 'santina.harris@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(32, '', 'Marco Steuber', 'gmckenzie@funk.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(33, '', 'Neil Marquardt', 'torrey57@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(34, '', 'Andreanne Pagac', 'laurie60@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(35, '', 'Libbie Kuphal', 'ruth27@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(36, '', 'Chester Conn', 'kassulke.frederik@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(37, '', 'Clifford Dickens', 'kaycee.lowe@wilderman.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(38, '', 'Prof. Lenora Blanda', 'corwin.camilla@bradtke.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(39, '', 'Prof. Toy Boyle III', 'harold64@pfannerstill.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(40, '', 'Lynn Tillman', 'dillon.gulgowski@erdman.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(41, '', 'Mr. Alexis Gusikowski', 'price.turner@mitchell.net', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(42, '', 'Keegan Gleason DVM', 'lowe.carol@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(43, '', 'Dudley Collins', 'braun.velva@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(44, '', 'Miss Dolores Huels', 'jazmin04@ferry.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(45, '', 'Jillian Rohan II', 'addison50@barton.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(46, '', 'Arden Haley', 'ella96@medhurst.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(47, '', 'Athena Bashirian', 'richmond15@ziemann.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(48, '', 'Rodrick Kshlerin', 'pattie.witting@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(49, '', 'Dr. Lola Raynor I', 'alysa56@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(50, '', 'Madeline Stroman', 'tkerluke@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(51, '', 'Jerome Medhurst', 'louisa.oconner@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(52, '', 'Dr. Annetta Brakus MD', 'zboncak.kody@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(53, '', 'Dr. Allison Nader', 'oemard@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(54, '', 'Dr. Brian Schmitt', 'brakus.lilyan@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(55, '', 'Dr. Dusty Considine I', 'ytreutel@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(56, '', 'Sophie Haag', 'brennan68@kris.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(57, '', 'Brennon Purdy', 'isidro43@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(58, '', 'Yvette Konopelski', 'vmurray@goodwin.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(59, '', 'Bradley Ritchie', 'henderson.swaniawski@kirlin.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(60, '', 'Prof. Melvina Gorczany', 'bins.rolando@cummings.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(61, '', 'Freddie Kulas', 'allene.schroeder@steuber.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(62, '', 'Thalia Kautzer', 'tianna.walker@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(63, '', 'Keith Howe', 'haag.clementina@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(64, '', 'Ms. Janice Davis MD', 'felicity.steuber@ortiz.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(65, '', 'Josiane Wisozk', 'jamil50@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(66, '', 'Paolo Buckridge', 'general10@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(67, '', 'Carlie Casper IV', 'vgreenholt@rodriguez.net', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(68, '', 'Miss Caitlyn Goyette DDS', 'schroeder.liza@gerlach.org', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(69, '', 'Wilfrid Jacobs I', 'monahan.vicente@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(70, '', 'Elmer Howell', 'jmonahan@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(71, '', 'Isadore Kuhn III', 'hparker@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(72, '', 'Pansy Muller PhD', 'kwalter@turner.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(73, '', 'Avis Wunsch', 'adrian03@ullrich.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(74, '', 'Prof. Clement Bogan II', 'reichel.ronny@buckridge.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(75, '', 'Ana Williamson', 'gerhold.nelda@johnston.net', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(76, '', 'Prof. Florian Torp', 'chelsey.larson@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(77, '', 'Dr. Hilbert Ortiz MD', 'salvatore07@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(78, '', 'Dr. Joanny Borer I', 'pollich.tate@howe.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(79, '', 'Maximillia Howe Jr.', 'abdullah49@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(80, '', 'Stanton Fritsch IV', 'sylvester60@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(81, '', 'Kailey Heathcote', 'dock09@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(82, '', 'Prof. Jarred Satterfield III', 'natalia11@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(83, '', 'Miss Pearline White MD', 'sydney71@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(84, '', 'Madge Pollich', 'zrohan@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(85, '', 'Verla Denesik', 'mmosciski@yahoo.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(86, '', 'Reyna Harvey', 'yrosenbaum@blick.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(87, '', 'Valentin Gleason', 'alana.schumm@dare.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(88, '', 'Amely Orn II', 'danielle.eichmann@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(89, '', 'Garry Rosenbaum', 'pink76@schmidt.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(90, '', 'Tyrel Buckridge', 'epfeffer@yundt.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(91, '', 'Tristian Mueller IV', 'skiles.tamara@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(92, '', 'Vincent Dickens', 'destiney.barton@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(93, '', 'Erwin Simonis', 'blaze40@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(94, '', 'Aylin Ruecker', 'obechtelar@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(95, '', 'Velva Turcotte DDS', 'ofadel@von.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(96, '', 'Ms. Hertha Weimann', 'cyril96@marks.biz', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(97, '', 'Mrs. Holly Olson Sr.', 'oreilly.bart@medhurst.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(98, '', 'Mr. Zechariah O\'Conner', 'rcremin@jakubowski.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(99, '', 'Natalie O\'Keefe', 'upton.otha@greenfelder.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(100, '', 'Brady Runolfsdottir II', 'kevon08@gmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(101, '', 'Dr. Roman Pfannerstill', 'rickey84@schulist.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(102, '', 'Tamara Wuckert', 'dpurdy@hotmail.com', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL),
(103, '', 'Emanuel Schroeder', 'oauer@ohara.info', '', '', 0, 0, 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterevents`
--

CREATE TABLE `masterevents` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masterevents`
--

INSERT INTO `masterevents` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'ITC 1', '2022-11-15 01:34:18', NULL),
(2, 'ITC 2', '2022-11-15 01:34:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-08-29-034346', 'App\\Database\\Migrations\\User', 'default', 'App', 1668475777, 1),
(2, '2022-08-29-034402', 'App\\Database\\Migrations\\Acara', 'default', 'App', 1668475777, 1),
(3, '2022-09-03-041852', 'App\\Database\\Migrations\\DataEventsMigration', 'default', 'App', 1668475778, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.test', '085157573144', '$2y$10$acIpLhyaFvfodRGBqPd2DuienFcRasIijOvV8bczd4BZtmpLoygtq', '0000-00-00 00:00:00', NULL),
(2, 'admin', 'admin@admin.test', '085157573144', '$2y$10$/.4UGmlEG3vBEHBMH.Bt4euWsLANeGcWSRx3h1QCOVAO3HfvkxeAm', '0000-00-00 00:00:00', NULL),
(3, 'admin', 'admin@admin.test', '085157573144', '$2y$10$lmNjLcX6wg9p/CoZ/68ZFeyADQwja3Fzf4mY3uscC0QM47d0CweUO', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataevents`
--
ALTER TABLE `dataevents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataevents_idEvents_foreign` (`idEvents`);

--
-- Indexes for table `masterevents`
--
ALTER TABLE `masterevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataevents`
--
ALTER TABLE `dataevents`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `masterevents`
--
ALTER TABLE `masterevents`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dataevents`
--
ALTER TABLE `dataevents`
  ADD CONSTRAINT `dataevents_idEvents_foreign` FOREIGN KEY (`idEvents`) REFERENCES `masterevents` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
