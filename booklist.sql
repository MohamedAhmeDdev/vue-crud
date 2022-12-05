-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 12:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booklist`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `author` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `description`, `createdAt`, `updatedAt`) VALUES
(10, 'aladin', 'life', 'good for life', '2022-11-30', '2022-11-30'),
(15, 'mark', 'c++', 'programing', '2022-11-30', '2022-11-30'),
(16, 'anyone', 'html', 'for creating website', '2022-11-30', '2022-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `password` int(11) NOT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(31, 'mohamed ahm', 'mohamed@gma', 1234567, '2022-11-30', '2022-11-30'),
(32, '', '', 545, '2022-11-30', '2022-11-30'),
(33, 'gvhjkm,.', 'ghjk', 0, '2022-11-30', '2022-11-30'),
(34, 'xfcghjkl', 'fyghujkl@gm', 0, '2022-11-30', '2022-11-30'),
(35, 'dfgg', 'gdgdg@gmail', 0, '2022-11-30', '2022-11-30'),
(36, '', '', 0, '2022-11-30', '2022-11-30'),
(37, 'Leanne ljnj', 'almosuot@hu', 123456789, '2022-11-30', '2022-11-30'),
(38, 'Leanne ljnj', 'almosuot@hu', 123456789, '2022-11-30', '2022-11-30'),
(39, 'asdfgh', 'asdrfgh@gma', 123, '2022-11-30', '2022-11-30'),
(40, '', '', 0, '2022-11-30', '2022-11-30'),
(41, '', '', 0, '2022-11-30', '2022-11-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
