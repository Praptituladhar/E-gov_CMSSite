-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 05, 2022 at 05:46 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(3, 'Tutorials'),
(7, 'Business'),
(8, 'Education'),
(9, 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(3) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(2, 1, 'JP', 'jp@jp.com', '<p>Na so</p>', 'approved', '2016-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(300) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(6, 3, 'Information Technology', 'Prapti', '2022-11-23', 'Picture1.jpg', '<p>abcd</p>\r\n<p>&nbsp;</p>', '', '', 'draft'),
(7, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(8, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(9, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(10, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(11, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(12, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(13, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'publish'),
(14, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(15, 3, 'Sit minima quo aspe', 'Prapti', '2022-11-23', '', '<p>Dolores non quasi et.</p>', 'Eveniet delectus p', '', 'draft'),
(16, 3, 'Information Technology', 'Prapti', '2022-11-23', 'Picture3.jpg', '<p>ajscd</p>', '', '', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_password`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(2, 'Chuks', 'Johnpaul', 'Alagwu', '$2y$10$HCPV02TBgOu8vbLzVXEoJe.XULxT68alTViguNw14.I1QQXmCh.fW', 'chuks@gmail.com', '2347033459561.jpg', 'User', 'dgas'),
(3, 'Demo', 'Demo', 'Surname_Demo', '$2y$10$HCPV02TBgOu8vbLzVXEoJe.XULxT68alTViguNw14.I1QQXmCh.fW', 'demo@gmail.com', 'Image', 'User', 'dgas'),
(6, 'Admin', 'Prapti', 'Tuladhar', '$2y$10$HCPV02TBgOu8vbLzVXEoJe.XULxT68alTViguNw14.I1QQXmCh.fW', 'admin@gmail.com', 'Image', 'Admin', 'dgas'),
(7, 'Victor', 'Victor', 'Alagwu', '$2y$10$HCPV02TBgOu8vbLzVXEoJe.XULxT68alTViguNw14.I1QQXmCh.fW', 'victoralagwu@gmail.com', 'IMG_20160129_145808.jpg', 'Admin', 'dgas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
