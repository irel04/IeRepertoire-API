-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2024 at 05:51 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ierepertoire`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` varchar(15) NOT NULL,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `pages` int UNSIGNED NOT NULL,
  `publisher` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `cover_page` varchar(300) DEFAULT NULL,
  `total_copies` int UNSIGNED NOT NULL,
  `available_copies` int UNSIGNED NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `pages`, `publisher`, `description`, `ISBN`, `file_name`, `cover_page`, `total_copies`, `available_copies`) VALUES
(1, 'Statistical Analysis of Networks', 237, 'Now Publishers (September 17, 2022); eBook (Creative Commons Licensed)', 'This book is a general introduction to the statistical analysis of networks, and can serve both as a research monograph and as a textbook. Numerous fundamental tools and concepts needed for the analysis of networks are presented, such as network modeling,', '978-1638280507', 'Statistical Analysis of Networks.pdf', 'cover_name.sample', 40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

DROP TABLE IF EXISTS `books_category`;
CREATE TABLE IF NOT EXISTS `books_category` (
  `category_id` varchar(15) NOT NULL,
  `book_id` varchar(15) NOT NULL,
  KEY `book_id` (`book_id`,`category_id`),
  KEY `genre_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

DROP TABLE IF EXISTS `book_authors`;
CREATE TABLE IF NOT EXISTS `book_authors` (
  `author_id` varchar(15) NOT NULL,
  `book_id` varchar(15) NOT NULL,
  KEY `author_id` (`author_id`),
  KEY `book_id` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

DROP TABLE IF EXISTS `borrowed_books`;
CREATE TABLE IF NOT EXISTS `borrowed_books` (
  `book_id` varchar(15) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` varchar(15) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
CREATE TABLE IF NOT EXISTS `login_credentials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `password` varchar(320) NOT NULL,
  `role` varchar(150) NOT NULL DEFAULT 'client',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `login_credentials`
--

INSERT INTO `login_credentials` (`id`, `user_id`, `user_name`, `password`, `role`) VALUES
(4, '2021-05817-MN-0', 'irel04', '$2y$10$pPn/DmTB0TrmqcQXdJZHiun6UNuTOxPvTUbdBMYaKE.pDUSqt7TEW', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(15) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_number` varchar(11) DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `birthday`, `address`, `created_at`, `contact_number`, `email`) VALUES
('2021-05817-MN-0', 'Irel', 'Kian', '2003-04-05', 'Sta Rosa Laguna', '2024-02-06 11:18:27', '0932789335', 'kianirel56@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_library`
--

DROP TABLE IF EXISTS `user_library`;
CREATE TABLE IF NOT EXISTS `user_library` (
  `user_id` varchar(15) NOT NULL,
  `book_id` varchar(15) NOT NULL,
  `added_date` datetime NOT NULL,
  KEY `user_id` (`user_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `user_id` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user_save`
--

DROP TABLE IF EXISTS `user_save`;
CREATE TABLE IF NOT EXISTS `user_save` (
  `user_id` varchar(15) NOT NULL,
  `book_id` varchar(15) NOT NULL,
  `highlight` text NOT NULL,
  `bookmark` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD CONSTRAINT `login_credentials_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
