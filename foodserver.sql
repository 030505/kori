/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : foodserver

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-05-13 00:07:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('3', '1', '1');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myid` int(11) DEFAULT NULL,
  `totle` double DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT '未发货',
  `pj` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('11', '18', '517', '2017-05-12 23:58:02', '123235436', 'gfdgfdgf', '网银直接支付', '未发货', null);
INSERT INTO `dingdan` VALUES ('12', '18', '517', '2017-05-12 23:59:23', '11111', '111', '信用卡支付', '未发货', null);
INSERT INTO `dingdan` VALUES ('13', '20', '22', '2017-05-13 00:05:21', '1111111', '111111', '信用卡支付', '未发货', null);

-- ----------------------------
-- Table structure for `dingdanmore`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanmore`;
CREATE TABLE `dingdanmore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dingdanid` int(11) DEFAULT NULL,
  `gname` varchar(30) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of dingdanmore
-- ----------------------------
INSERT INTO `dingdanmore` VALUES ('10', '6', '1', '1');
INSERT INTO `dingdanmore` VALUES ('11', '7', '1', '1');
INSERT INTO `dingdanmore` VALUES ('12', '8', '1', '0');
INSERT INTO `dingdanmore` VALUES ('13', '8', '2', '0');
INSERT INTO `dingdanmore` VALUES ('14', '9', '1', '0');
INSERT INTO `dingdanmore` VALUES ('15', '9', '2', '0');
INSERT INTO `dingdanmore` VALUES ('16', '10', '1', '1');
INSERT INTO `dingdanmore` VALUES ('17', '10', '2', '12');
INSERT INTO `dingdanmore` VALUES ('18', '11', '1', '23');
INSERT INTO `dingdanmore` VALUES ('19', '11', '2', '12');
INSERT INTO `dingdanmore` VALUES ('20', '12', '1', '23');
INSERT INTO `dingdanmore` VALUES ('21', '12', '2', '12');
INSERT INTO `dingdanmore` VALUES ('22', '13', '1', '2');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(30) DEFAULT NULL,
  `gurl` varchar(100) DEFAULT NULL,
  `gprice` double DEFAULT NULL,
  `gcount` int(11) DEFAULT NULL,
  `gtype` varchar(10) DEFAULT NULL,
  `lx` varchar(30) DEFAULT NULL,
  `gs` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('21', '1', 'http://192.168.0.103:8080/FoodServer/goods/1.jpg', '11', '975', '1', null, null);
INSERT INTO `goods` VALUES ('22', '2', 'http://192.168.0.103:8080/FoodServer/goods/2.jpg', '22', '1000', '1', null, null);
INSERT INTO `goods` VALUES ('23', 'rrr', 'http://192.168.0.103:8080/FoodServer/goods/3.jpg', '5', '1000', '1', null, null);

-- ----------------------------
-- Table structure for `gwc`
-- ----------------------------
DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `goodsName` varchar(30) DEFAULT NULL,
  `gcount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of gwc
-- ----------------------------
INSERT INTO `gwc` VALUES ('28', '18', '1', '23');
INSERT INTO `gwc` VALUES ('29', '18', '2', '12');
INSERT INTO `gwc` VALUES ('30', '20', '1', '2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `rname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('18', '123', '123', '2325tter+', '12345678+', '123 ');
INSERT INTO `users` VALUES ('19', '1', '1', 'wuhan', '15071391676', 'qf');
INSERT INTO `users` VALUES ('20', '222', '222', '222', '222', '222');
