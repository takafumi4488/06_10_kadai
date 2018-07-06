-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 7 朁E06 日 21:20
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie` longblob,
  `age` int(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`, `image`, `movie`, `age`) VALUES
(1, '大木', 'oki@oki.com', '大木どぇす', '2018-05-26 16:37:23', NULL, NULL, 0),
(2, '坂本', 'sakamoto@yg', '一番', '2018-06-24 23:13:16', NULL, NULL, 50),
(3, 'ｓｖｓ', 's', 'ｓｖｇ', '2018-05-26 17:31:02', NULL, NULL, 0),
(4, '吉川', 'yoshikawa@yg', '２番', '2018-06-24 23:15:09', NULL, NULL, 20),
(5, 'みｎ', 'みｎ', 'み', '2018-05-26 17:26:41', NULL, NULL, 0),
(6, 'マギー', 'magye@yg', '３番', '2018-06-24 23:15:33', NULL, NULL, 30),
(7, '岡本', 'okamoto@yg', '４番', '2018-06-24 23:15:46', NULL, NULL, 30),
(8, 'ｓｖｓ', 's', 'ｓｖｇ', '2018-05-26 17:27:58', NULL, NULL, 0),
(9, 'ｓｖｓ', 's', 'ｓｖｇ', '2018-05-26 17:29:03', NULL, NULL, 0),
(10, '阿部慎之助', 'abe@yg', '5番', '2018-06-24 23:16:05', NULL, NULL, 10),
(11, '亀井', 'kamei@yg', '６番', '2018-06-24 23:20:12', NULL, NULL, 20),
(12, 'まさし', 'masashi@masa.com', 'masashidesu', '2018-05-26 17:43:40', NULL, NULL, 0),
(13, 'd', 'aa', 's', '2018-06-02 16:23:03', NULL, NULL, 0),
(17, 'ogawa', 'as', 'ddd\r\n', '2018-06-02 19:08:08', NULL, NULL, 0),
(18, 'fa', 'fa', 'fa', '2018-06-16 16:17:03', '20180616161703d41d8cd98f00b204e9800998ecf8427e.jpg', NULL, 0),
(20, 'taka', 'taka@yg', '20', '2018-05-26 00:00:00', NULL, NULL, 0),
(21, 'masa', 'masa@yg', '21', '2018-05-26 00:00:00', NULL, NULL, 10),
(22, 'masi', 'masi@yg', '22', '2018-05-26 00:00:00', NULL, NULL, 20),
(23, 'masu', 'masu@yg', '23', '2018-05-26 00:00:00', NULL, NULL, 30),
(24, 'mase', 'mase@yg', '24', '2018-05-26 00:00:00', NULL, NULL, 40),
(25, 'maso', 'masa@yg', '25', '2018-05-26 00:00:00', NULL, NULL, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
