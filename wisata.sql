/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wisata

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-11-09 20:12:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `wisata`
-- ----------------------------
DROP TABLE IF EXISTS `wisata`;
CREATE TABLE `wisata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namawisata` varchar(255) DEFAULT NULL,
  `lokasiwisata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wisata
-- ----------------------------
INSERT INTO `wisata` VALUES ('1', 'Lawang Sewu', 'Jl. Pemuda No.160, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132');
INSERT INTO `wisata` VALUES ('2', 'Wisata Sam Poo Kong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50148');
INSERT INTO `wisata` VALUES ('3', 'Old Town Semarang', '2CJH+M9F, Tanjung Mas, Semarang Utara, Semarang City, Central Java 50174');
