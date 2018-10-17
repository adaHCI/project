-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2018-10-17 11:07:42
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `projectdb`
--

-- --------------------------------------------------------

--
-- 表的结构 `forget`
--

CREATE TABLE `forget` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forget`
--

INSERT INTO `forget` (`userID`, `userName`, `userPwd`, `userEmail`, `userPhone`, `isFirstLogin`) VALUES
(1, 'BunChai', '123456', 'BunChai@gmail.com', 65462344, b'1'),
(2, 'sam', 'qwe123456', 'sanchisau@gmail.com', 55555555, b'1');

--
-- 转储表的索引
--

--
-- 表的索引 `forget`
--
ALTER TABLE `forget`
  ADD PRIMARY KEY (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
