-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： dex-mysql
-- 生成日期： 2022-11-15 09:07:24
-- 服务器版本： 8.0.31
-- PHP 版本： 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `contract`
--
CREATE DATABASE IF NOT EXISTS `contract` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contract`;

-- --------------------------------------------------------

--
-- 表的结构 `AwardLog`
--

DROP TABLE IF EXISTS `AwardLog`;
CREATE TABLE IF NOT EXISTS `AwardLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `BlockHeight`
--

DROP TABLE IF EXISTS `BlockHeight`;
CREATE TABLE IF NOT EXISTS `BlockHeight` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '区块高度索引',
  `type` char(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `lastHeight` int NOT NULL COMMENT '最新区块高度',
  `currentHeight` int NOT NULL COMMENT '当前区块高度',
  `limits` int NOT NULL DEFAULT '0' COMMENT '交易数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='遍历区块高度';

-- --------------------------------------------------------

--
-- 表的结构 `BoomLog`
--

DROP TABLE IF EXISTS `BoomLog`;
CREATE TABLE IF NOT EXISTS `BoomLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `CardLog`
--

DROP TABLE IF EXISTS `CardLog`;
CREATE TABLE IF NOT EXISTS `CardLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `ManagerLog`
--

DROP TABLE IF EXISTS `ManagerLog`;
CREATE TABLE IF NOT EXISTS `ManagerLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `RankingLog`
--

DROP TABLE IF EXISTS `RankingLog`;
CREATE TABLE IF NOT EXISTS `RankingLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';

-- --------------------------------------------------------

--
-- 表的结构 `RechargeLog`
--

DROP TABLE IF EXISTS `RechargeLog`;
CREATE TABLE IF NOT EXISTS `RechargeLog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `transactionHash` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
  `logIndex` int NOT NULL DEFAULT '0' COMMENT '日志索引',
  `sender` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
  `tokenSymbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
  `tokenDecimals` tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
  `tradeTime` int NOT NULL DEFAULT '0' COMMENT '交易时间',
  `amount` decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionHash` (`transactionHash`,`logIndex`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
