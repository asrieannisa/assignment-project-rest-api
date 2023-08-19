-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 05:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `score_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_title` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `score` bigint(20) NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `assignment_title`, `description`, `score`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Assignment Project 1 Edit', 'Create simple API without auth', 97, 1, '2023-08-19 19:09:32.406', '2023-08-19 22:37:49.964'),
(2, 'Assignment Project Rest API', 'Create simple API without middleware', 95, 2, '2023-08-19 19:13:33.280', '2023-08-19 19:13:33.280'),
(3, 'Assignment Project Cohort 1', 'Create simple API without middleware', 100, 3, '2023-08-19 19:14:56.451', '2023-08-19 19:14:56.451'),
(4, 'Assignment Project Cohort 1', 'Create simple API without middleware', 0, 4, '2023-08-19 21:14:33.368', '2023-08-19 21:14:33.368'),
(7, 'Assignment Project Cohort 1', 'Create simple API without middleware', 0, 7, '2023-08-19 22:37:00.189', '2023-08-19 22:37:00.189');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `age` bigint(20) NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `created_at`, `updated_at`) VALUES
(1, 'Asrie Annisa Pratiwi', 22, '2023-08-19 19:09:32.383', '2023-08-19 22:37:49.968'),
(2, 'Asrie', 21, '2023-08-19 19:13:33.279', '2023-08-19 19:13:33.279'),
(3, 'Annisa', 25, '2023-08-19 19:14:56.446', '2023-08-19 19:14:56.446'),
(4, 'Ayu', 25, '2023-08-19 21:14:33.361', '2023-08-19 21:14:33.361'),
(7, 'Yuni', 24, '2023-08-19 22:37:00.186', '2023-08-19 22:37:00.186');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_students_scores` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `fk_students_scores` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
