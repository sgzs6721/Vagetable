-- phpMyAdmin SQL Dump
-- version 4.2.3
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-08-06 23:34:37
-- 服务器版本： 5.6.19-enterprise-commercial-advanced
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Vagetable`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(4) NOT NULL,
  `name` varchar(8) COLLATE utf8_bin NOT NULL,
  `categoryid` tinyint(4) NOT NULL,
  `superid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id` int(8) NOT NULL,
  `name` varchar(16) COLLATE utf8_bin NOT NULL,
  `passwd` varchar(64) COLLATE utf8_bin NOT NULL,
  `permissioin` tinyint(4) NOT NULL,
  `mdate` datetime NOT NULL,
  `udate` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `name`, `passwd`, `permissioin`, `mdate`, `udate`) VALUES
(1, 'martin', '202cb962ac59075b964b07152d234b70', 0, '2014-08-06 09:00:00', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`id` int(8) NOT NULL,
  `userid` int(8) NOT NULL,
  `newdatetime` datetime NOT NULL,
  `updatedatetime` datetime NOT NULL,
  `addr` varchar(60) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(8) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `desc` varchar(80) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `memprice` double NOT NULL,
  `categoryid` tinyint(4) NOT NULL,
  `pdate` datetime NOT NULL,
  `picpath` varchar(50) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `saleitem`
--

CREATE TABLE IF NOT EXISTS `saleitem` (
`id` int(12) NOT NULL,
  `productid` tinyint(4) NOT NULL,
  `orderid` int(12) NOT NULL,
  `count` tinyint(4) NOT NULL,
  `unitprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(8) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `phone` int(15) DEFAULT NULL,
  `address` varchar(80) COLLATE utf8_bin NOT NULL,
  `rdata` date NOT NULL,
  `grade` varchar(8) COLLATE utf8_bin NOT NULL,
  `score` int(8) NOT NULL,
  `pocket` int(8) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `phone`, `address`, `rdata`, `grade`, `score`, `pocket`) VALUES
(1, 'martin', '123', NULL, '', '0000-00-00', '0', 0, 1),
(2, 'lei', '123', NULL, '', '0000-00-00', '0', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleitem`
--
ALTER TABLE `saleitem`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `saleitem`
--
ALTER TABLE `saleitem`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
