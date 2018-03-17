/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100213
 Source Host           : localhost:3306
 Source Schema         : cityinfo

 Target Server Type    : MySQL
 Target Server Version : 100213
 File Encoding         : 65001

 Date: 17/03/2018 08:20:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_type` int(11) NOT NULL,
  `info_title` varchar(80) NOT NULL,
  `info_content` varchar(1000) NOT NULL,
  `info_linkman` varchar(50) NOT NULL,
  `info_phone` varchar(50) NOT NULL,
  `info_email` varchar(100) NOT NULL,
  `info_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `info_state` varchar(1) DEFAULT '0',
  `info_payfor` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`info_type`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`info_type`) REFERENCES `tb_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_info
-- ----------------------------
BEGIN;
INSERT INTO `tb_info` VALUES (2, 1, '招聘信息标题', '招聘信息内容', '明明', '13255768888', '88888@qq.com', '2018-03-17 08:12:09', '0', '0');
INSERT INTO `tb_info` VALUES (3, 2, '培训信息标题', '培训信息内容', '明明', '13255768888', '88888@qq.com', '2018-03-17 08:12:58', '1', '0');
INSERT INTO `tb_info` VALUES (4, 3, '房屋信息标题', '房屋信息内容', '明明', '13255768888', '88888@qq.com', '2018-03-17 08:13:32', '0', '1');
INSERT INTO `tb_info` VALUES (5, 4, '求购信息标题', '求购信息内容', '芳芳', '13266758888', '88668@qq.com', '2018-03-17 08:14:18', '1', '1');
INSERT INTO `tb_info` VALUES (6, 5, '招商引资标题', '招商引资内容', '芳芳', '13266758888', '88668@qq.com', '2018-03-17 08:14:53', '0', '0');
INSERT INTO `tb_info` VALUES (7, 6, '公寓信息标题', '公寓信息内容', '芳芳', '13266758888', '88668@qq.com', '2018-03-17 08:15:26', '1', '0');
INSERT INTO `tb_info` VALUES (8, 7, '求职信息标题', '求职信息内容', '芳芳', '15671562980', '123765@qq.com', '2018-03-17 08:16:06', '1', '1');
INSERT INTO `tb_info` VALUES (9, 8, '家教信息标题', '家教信息内容', '小兔', '13423442233', '9984399024@qq.com', '2018-03-17 08:16:52', '0', '1');
INSERT INTO `tb_info` VALUES (10, 9, '车辆信息标题', '车辆信息内容', '小小', '15682939238', '92932079@qq.com', '2018-03-17 08:17:37', '0', '0');
INSERT INTO `tb_info` VALUES (11, 10, '出售信息标题', '出售信息内容', '喇喇', '17893232383', '769876798@qq.com', '2018-03-17 08:18:13', '0', '0');
INSERT INTO `tb_info` VALUES (12, 1, '发布招聘信息', '发布房屋信息内容', '小哈', '15300483844', '48583993@qq.com', '2018-03-17 08:18:54', '0', '0');
INSERT INTO `tb_info` VALUES (13, 3, '发布房屋信息', '发布房屋信息内容', '小牛', '88888888888', '3462387932@qq.com', '2018-03-17 08:19:33', '1', '1');
COMMIT;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
BEGIN;
INSERT INTO `tb_type` VALUES (1, '招聘信息');
INSERT INTO `tb_type` VALUES (2, '培训信息');
INSERT INTO `tb_type` VALUES (3, '房屋信息');
INSERT INTO `tb_type` VALUES (4, '求购信息');
INSERT INTO `tb_type` VALUES (5, '招商引资');
INSERT INTO `tb_type` VALUES (6, '公寓信息');
INSERT INTO `tb_type` VALUES (7, '求职信息');
INSERT INTO `tb_type` VALUES (8, '家教信息');
INSERT INTO `tb_type` VALUES (9, '车辆信息');
INSERT INTO `tb_type` VALUES (10, '出售信息');
INSERT INTO `tb_type` VALUES (11, '寻找启示');
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES (1, 'admin', 'admin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
