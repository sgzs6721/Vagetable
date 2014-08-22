-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 08 月 22 日 05:31
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
  `category` varchar(16) COLLATE utf8_bin NOT NULL,
  `pdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `picpath` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `unit` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

--
-- 导出表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `desc`, `oprice`, `sprice`, `mprice`, `category`, `pdate`, `udate`, `picpath`, `unit`) VALUES
(52, '西红柿', '西红柿', 1, 1, 1, 'vegetable', '2014-08-22 05:06:56', '2014-08-22 05:08:26', 'vegetable_014.png;vegetable_015.png;vegetable_016.png;vegetable_054.jpg', NULL),
(53, '土豆', '土豆', 1, 1, 1, 'vegetable', '2014-08-22 05:07:42', '2014-08-22 05:08:47', 'vegetable_004.png;vegetable_005.png;vegetable_006.png;vegetable_007.png', NULL),
(54, '蒜', '蒜', 1, 1, 1, 'vegetable', '2014-08-22 05:10:47', '2014-08-22 05:10:47', 'vegetable_011.png;vegetable_012.png;vegetable_013.png', NULL),
(55, '白菜', '白菜', 1, 1, 1, 'vegetable', '2014-08-22 05:15:11', '2014-08-22 05:15:11', 'vegetable_000.jpg;vegetable_001.jpg;vegetable_002.png;vegetable_003.jpg', NULL);

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
