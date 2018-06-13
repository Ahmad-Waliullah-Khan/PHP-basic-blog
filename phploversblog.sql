-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 07:02 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phploversblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'Events'),
(3, 'Tutorials'),
(4, 'Videos');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `body`, `author`, `tags`, `date`) VALUES
(1, 1, 'International PHP Conference 2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dignissim iaculis velit sit amet ornare. Ut hendrerit lacus libero, ut volutpat arcu tempus quis. Mauris varius laoreet dolor, vitae iaculis dolor sodales non. Maecenas eu enim est. Nulla eu pellentesque ligula. Donec ut tellus sed risus sodales ultrices. Suspendisse at tellus id enim mollis condimentum. Duis ac tellus sed nisi porttitor ullamcorper. Morbi varius tortor vel hendrerit ullamcorper. Integer placerat justo in lorem dignissim, sed feugiat elit congue. Nam faucibus nibh sit amet porta congue. Suspendisse potenti. Nunc justo eros, scelerisque sit amet ultrices et, eleifend id odio. Praesent eget lacus lectus. Phasellus commodo sem mauris, sit amet iaculis magna lacinia sed.', 'Oli', 'News, php news, php events', '2017-02-20 15:05:15'),
(2, 3, 'New Tutorial for Core PHP', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dignissim iaculis velit sit amet ornare. Ut hendrerit lacus libero, ut volutpat arcu tempus quis. Mauris varius laoreet dolor, vitae iaculis dolor sodales non. Maecenas eu enim est. Nulla eu pellentesque ligula. Donec ut tellus sed risus sodales ultrices. Suspendisse at tellus id enim mollis condimentum. Duis ac tellus sed nisi porttitor ullamcorper. Morbi varius tortor vel hendrerit ullamcorper. Integer placerat justo in lorem dignissim, sed feugiat elit congue. Nam faucibus nibh sit amet porta congue. Suspendisse potenti. Nunc justo eros, scelerisque sit amet ultrices et, eleifend id odio. Praesent eget lacus lectus. Phasellus commodo sem mauris, sit amet iaculis magna lacinia sed.', 'Khan Mariyam Jameelah', 'totorials, tutorial', '2017-02-20 15:05:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
