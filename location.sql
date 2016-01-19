/*
Navicat MySQL Data Transfer

Source Server         : huanglizhe
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : location

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-01-19 11:43:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `userId` int(30) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `longt` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('9', '1', '34.24745', '108.990058', '2016-01-19 00:03:17');
INSERT INTO `location` VALUES ('10', '1', '34.24745', '108.990058', '2016-01-19 00:03:27');
INSERT INTO `location` VALUES ('11', '1', '34.24745', '108.990058', '2016-01-19 00:03:37');
INSERT INTO `location` VALUES ('12', '1', '34.24745', '108.990058', '2016-01-19 00:03:47');
INSERT INTO `location` VALUES ('13', '1', '34.24745', '108.990058', '2016-01-19 00:03:57');
INSERT INTO `location` VALUES ('14', '1', '34.24745', '108.990058', '2016-01-19 00:04:07');
INSERT INTO `location` VALUES ('15', '1', '34.24745', '108.990058', '2016-01-19 00:04:17');
INSERT INTO `location` VALUES ('16', '1', '34.24745', '108.990058', '2016-01-19 00:07:25');
INSERT INTO `location` VALUES ('17', '1', '34.24745', '108.990058', '2016-01-19 00:07:33');
INSERT INTO `location` VALUES ('18', '1', '34.24745', '108.990058', '2016-01-19 00:07:43');
INSERT INTO `location` VALUES ('19', '1', '34.24745', '108.990058', '2016-01-19 00:07:53');
INSERT INTO `location` VALUES ('20', '1', '34.24745', '108.990058', '2016-01-19 00:08:03');
INSERT INTO `location` VALUES ('21', '1', '34.24745', '108.990058', '2016-01-19 00:08:13');
INSERT INTO `location` VALUES ('22', '1', '34.24745', '108.990058', '2016-01-19 00:08:23');
INSERT INTO `location` VALUES ('23', '1', '34.24745', '108.990058', '2016-01-19 00:08:33');
INSERT INTO `location` VALUES ('24', '1', '34.24745', '108.990058', '2016-01-19 00:08:43');
INSERT INTO `location` VALUES ('25', '1', '34.24745', '108.990058', '2016-01-19 00:08:53');
INSERT INTO `location` VALUES ('26', '1', '34.24745', '108.990058', '2016-01-19 00:09:03');
INSERT INTO `location` VALUES ('27', '1', '34.24745', '108.990058', '2016-01-19 00:09:13');
INSERT INTO `location` VALUES ('28', '1', '34.24745', '108.990058', '2016-01-19 00:09:23');
INSERT INTO `location` VALUES ('29', '1', '34.24745', '108.990058', '2016-01-19 00:09:33');
INSERT INTO `location` VALUES ('30', '1', '34.24745', '108.990058', '2016-01-19 00:09:43');
INSERT INTO `location` VALUES ('31', '1', '34.24745', '108.990058', '2016-01-19 00:09:53');
INSERT INTO `location` VALUES ('32', '1', '34.24745', '108.990058', '2016-01-19 00:10:03');
INSERT INTO `location` VALUES ('33', '1', '34.24745', '108.990058', '2016-01-19 00:10:13');
INSERT INTO `location` VALUES ('34', '1', '34.24745', '108.990058', '2016-01-19 00:10:24');
INSERT INTO `location` VALUES ('35', '1', '34.24745', '108.990058', '2016-01-19 00:10:34');
INSERT INTO `location` VALUES ('36', '1', '34.24745', '108.990058', '2016-01-19 00:10:44');
INSERT INTO `location` VALUES ('37', '1', '34.24745', '108.990058', '2016-01-19 00:10:54');
INSERT INTO `location` VALUES ('38', '1', '32.3333', '108.2323', '2016-01-19 00:19:33');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(30) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '黄励哲');
