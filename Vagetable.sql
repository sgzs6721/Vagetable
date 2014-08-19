-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 08 月 19 日 08:31
-- 服务器版本: 5.1.33
-- PHP 版本: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `vagetable`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) COLLATE utf8_bin NOT NULL,
  `enname` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `categoryid` tinyint(4) NOT NULL,
  `superid` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `category`
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
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_bin NOT NULL,
  `realname` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `passwd` varchar(64) COLLATE utf8_bin NOT NULL,
  `permission` tinyint(4) NOT NULL,
  `mdate` datetime NOT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `member`
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
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `userid` int(8) NOT NULL,
  `newdatetime` datetime NOT NULL,
  `updatedatetime` datetime NOT NULL,
  `addr` varchar(60) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `order`
--


-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `desc` varchar(80) COLLATE utf8_bin NOT NULL,
  `oprice` double NOT NULL,
  `sprice` double NOT NULL,
  `mprice` double DEFAULT NULL,
  `category` tinyint(4) NOT NULL,
  `pdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `picpath` varchar(200) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=33 ;

--
-- 导出表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `desc`, `oprice`, `sprice`, `mprice`, `category`, `pdate`, `udate`, `picpath`, `unit`) VALUES
(6, 'dfd34', '', 123, 1234, 123, 1, '2014-08-18 02:43:09', '2014-08-18 04:52:50', '', ''),
(12, '大区d76', '', 123, 123, 123, 1, '2014-08-18 03:02:34', '2014-08-18 03:23:25', '', ''),
(14, '大区d', '', 123, 123, 123, 1, '2014-08-18 03:25:58', '2014-08-18 03:25:58', '', ''),
(16, '大区djkdf', '', 123, 123, 123, 1, '2014-08-18 03:27:04', '2014-08-18 03:27:04', '', ''),
(17, 'sgzs', '', 12, 123, 12, 1, '2014-08-18 04:05:13', '2014-08-18 04:05:13', '', ''),
(19, 'sgzs23dd', '', 12, 123, 12, 1, '2014-08-18 04:06:32', '2014-08-18 04:19:16', '', ''),
(21, 'sdf', '12', 12, 12, 12, 1, '2014-08-18 07:55:22', '2014-08-18 07:55:22', '', ''),
(22, 'sdfd', '12', 12, 12, 12, 1, '2014-08-18 07:56:31', '2014-08-18 07:56:31', '', ''),
(23, 'sdfdd', '12', 12, 12, 12, 1, '2014-08-18 07:57:35', '2014-08-18 07:57:35', '', ''),
(24, 'sdfdd1', '12', 12, 12, 12, 1, '2014-08-18 08:04:06', '2014-08-18 08:04:06', '', ''),
(25, 'dfdfadfad', '123', 123, 123, 123, 1, '2014-08-18 08:04:37', '2014-08-18 08:04:37', '', ''),
(26, '大起大落', '123', 123, 123, 123, 1, '2014-08-18 08:32:17', '2014-08-18 08:32:17', '', ''),
(27, '大起大落d', '123', 123, 123, 123, 1, '2014-08-18 08:36:16', '2014-08-18 08:36:16', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', ''),
(28, '大起大落dd', '123', 123, 123, 123, 1, '2014-08-18 08:46:43', '2014-08-18 08:46:43', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg', ''),
(30, '大起大落dd3', '123', 123, 123, 123, 1, '2014-08-18 08:47:06', '2014-08-18 08:47:06', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', ''),
(32, '大起大落dd32', '123', 123, 123, 123, 1, '2014-08-18 08:47:34', '2014-08-18 08:47:34', '/Vagetable/images/thumbnail/1.jpg;/Vagetable/images/thumbnail/2.jpg;/Vagetable/images/thumbnail/3.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `saleitem`
--

CREATE TABLE IF NOT EXISTS `saleitem` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `productid` tinyint(4) NOT NULL,
  `orderid` int(12) NOT NULL,
  `count` tinyint(4) NOT NULL,
  `unitprice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `saleitem`
--


-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `phone` int(15) DEFAULT NULL,
  `address` varchar(80) COLLATE utf8_bin NOT NULL,
  `rdata` date NOT NULL,
  `grade` varchar(8) COLLATE utf8_bin NOT NULL,
  `score` int(8) NOT NULL,
  `pocket` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `phone`, `address`, `rdata`, `grade`, `score`, `pocket`) VALUES
(1, 'martin', '123', NULL, '', '0000-00-00', '0', 0, 1),
(2, 'lei', '123', NULL, '', '0000-00-00', '0', 0, 0);
