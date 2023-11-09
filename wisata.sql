/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wisata

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-11-09 20:04:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `wisata`
-- ----------------------------
DROP TABLE IF EXISTS `wisata`;
CREATE TABLE `wisata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namawisata` varchar(100) DEFAULT NULL,
  `lokasiwisata` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wisata
-- ----------------------------
INSERT INTO `wisata` VALUES ('1', 'Pantai Parangtritis', 'Bantul Jogja');
INSERT INTO `wisata` VALUES ('3', 'Nusa Penida', 'Bali');
INSERT INTO `wisata` VALUES ('4', 'Desa Sukomakmur', 'Kab, Magelang');
INSERT INTO `wisata` VALUES ('5', 'Karimunjawa', 'Pulau Karimunjawa');
INSERT INTO `wisata` VALUES ('6', 'Desa Sukomakmur', 'Kab, Magelang');
