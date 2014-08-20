-- phpMyAdmin SQL Dump
-- version 4.2.3
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-08-20 23:16:12
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
  `enname` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `categoryid` tinyint(4) NOT NULL,
  `superid` tinyint(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`, `enname`, `categoryid`, `superid`) VALUES
(1, '蔬菜', 'vegetable', 1, 0),
(2, '水果', 'fruit', 2, 0),
(3, '生鲜', 'fresh', 3, 0),
(4, '其它', 'other', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id` int(8) NOT NULL,
  `username` varchar(16) COLLATE utf8_bin NOT NULL,
  `realname` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `passwd` varchar(64) COLLATE utf8_bin NOT NULL,
  `permission` tinyint(4) NOT NULL,
  `mdate` datetime NOT NULL,
  `udate` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `username`, `realname`, `email`, `phone`, `passwd`, `permission`, `mdate`, `udate`) VALUES
(1, 'martin', NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', 0, '2014-08-06 09:00:00', NULL),
(2, '123', '123', '', 123, 'e10adc3949ba59abbe56e057f20f883e', 0, '2014-08-07 13:46:46', '0000-00-00 00:00:00'),
(4, '1232', '123', '', 123, 'e10adc3949ba59abbe56e057f20f883e', 0, '2014-08-07 14:15:20', '2014-08-07 14:15:20'),
(6, '12322', '123', '', 123, 'e10adc3949ba59abbe56e057f20f883e', 0, '2014-08-07 14:16:22', '2014-08-07 14:16:22'),
(7, '123222', '123', '', 123, 'e10adc3949ba59abbe56e057f20f883e', 0, '2014-08-07 14:16:56', '2014-08-07 14:16:56');

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
  `oprice` double NOT NULL,
  `sprice` double NOT NULL,
  `mprice` double DEFAULT NULL,
  `category` varchar(16) COLLATE utf8_bin NOT NULL,
  `pdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `picpath` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `unit` varchar(4) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `desc`, `oprice`, `sprice`, `mprice`, `category`, `pdate`, `udate`, `picpath`, `unit`) VALUES
(6, 'dfd34', '', 123, 1234, 123, 'vegetable', '2014-08-18 02:43:09', '2014-08-18 04:52:50', '', ''),
(12, '大区d76', '', 123, 123, 123, 'vegetable', '2014-08-18 03:02:34', '2014-08-18 03:23:25', '', ''),
(14, '大区d', '', 123, 123, 123, 'vegetable', '2014-08-18 03:25:58', '2014-08-18 03:25:58', '', ''),
(16, '大区djkdf', '', 123, 123, 123, 'vegetable', '2014-08-18 03:27:04', '2014-08-18 03:27:04', '', ''),
(17, 'sgzs', '', 12, 123, 12, 'vegetable', '2014-08-18 04:05:13', '2014-08-18 04:05:13', '', ''),
(19, 'sgzs23dd', '', 12, 123, 12, 'vegetable', '2014-08-18 04:06:32', '2014-08-18 04:19:16', '', ''),
(21, 'sdf', '12', 12, 12, 12, 'vegetable', '2014-08-18 07:55:22', '2014-08-18 07:55:22', '', ''),
(22, 'sdfd', '12', 12, 12, 12, 'vegetable', '2014-08-18 07:56:31', '2014-08-18 07:56:31', '', ''),
(23, 'sdfdd', '12', 12, 12, 12, 'vegetable', '2014-08-18 07:57:35', '2014-08-18 07:57:35', '', ''),
(24, 'sdfdd1', '12', 12, 12, 12, 'vegetable', '2014-08-18 08:04:06', '2014-08-18 08:04:06', '', ''),
(25, 'dfdfadfad', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:04:37', '2014-08-18 08:04:37', '', ''),
(26, '大起大落', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:32:17', '2014-08-18 08:32:17', '', ''),
(27, '大起大落d', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:36:16', '2014-08-18 08:36:16', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', ''),
(28, '大起大落dd', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:46:43', '2014-08-18 08:46:43', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg', ''),
(30, '大起大落dd3', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:47:06', '2014-08-18 08:47:06', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', ''),
(32, '大起大落dd32', '123', 123, 123, 123, 'vegetable', '2014-08-18 08:47:34', '2014-08-18 08:47:34', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', ''),
(33, 'tyty', '334', 123, 223, 124, 'vegetable', '2014-08-19 20:42:04', '2014-08-19 20:42:04', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/3.jpg;/Vagetable/images/thumbnail/4.jpg', NULL),
(34, 'jjdncl.a', '223', 123, 123, 123, 'fruit', '2014-08-20 21:08:01', '2014-08-20 21:08:01', '/Vagetable/images/vegetable/thumbnail/Database.jpg', NULL);

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
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

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
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
