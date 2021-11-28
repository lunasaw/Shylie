/*
 Navicat Premium Data Transfer

 Source Server         : luna-local
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : fusion-user

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 21/11/2021 15:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_session
-- ----------------------------
DROP TABLE IF EXISTS `tb_session`;
CREATE TABLE `tb_session` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `key` varchar(127) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `last_visit` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_key` (`key`) USING BTREE,
  KEY `idx_last_visit` (`last_visit`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10417 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_session
-- ----------------------------
BEGIN;
INSERT INTO `tb_session` VALUES (10408, '2021-10-31 17:56:17', '2021-10-31 19:18:42', 100, '4W73W6QENbHpmerfPw7h0FoR2jJbyJW7', 10049, '2021-10-31 19:18:42');
INSERT INTO `tb_session` VALUES (10409, '2021-10-31 18:56:52', '2021-10-31 19:11:59', 11, '5RfOXMobDaQMiGEomEmWqr8POTcH8ETw', 10049, '2021-10-31 19:11:59');
INSERT INTO `tb_session` VALUES (10410, '2021-10-31 19:16:11', '2021-10-31 19:16:11', 2, 'tWxefSBp6xV1V6avsArk6Ywtwur7iTgY', 10049, '2021-10-31 19:16:11');
INSERT INTO `tb_session` VALUES (10411, '2021-10-31 19:16:37', '2021-10-31 19:17:02', 11, 'cMBml0n8cN26Vp0zmKyGt4MJjed1KUi8', 10049, '2021-10-31 19:17:02');
INSERT INTO `tb_session` VALUES (10412, '2021-10-31 19:44:34', '2021-10-31 19:44:34', 3, 'Yh9eZaK73G3HQ73PwrMKxuSq7e2MZHq2', 10049, '2021-10-31 19:44:34');
INSERT INTO `tb_session` VALUES (10413, '2021-10-31 19:46:18', '2021-10-31 19:46:19', 2, 'rCbfCNe9CtUF0q0sy7whEbp0LecpyPBY', 10049, '2021-10-31 19:46:19');
INSERT INTO `tb_session` VALUES (10414, '2021-10-31 19:47:04', '2021-10-31 19:47:04', 3, 'SSBvJxNdBfiXTqbXpTLqCyXFwBiB2ml0', 10049, '2021-10-31 19:47:04');
INSERT INTO `tb_session` VALUES (10415, '2021-10-31 21:03:54', '2021-10-31 21:03:55', 3, 'ASsDKsBx4k7lYvAM68hmTnidqPGQe7pm', 10049, '2021-10-31 21:03:55');
INSERT INTO `tb_session` VALUES (10416, '2021-10-31 21:08:52', '2021-10-31 21:08:52', 0, 'QcWuNZQtNEiwWa9s6cy0RPoT18NFVS0m', 10049, '2021-10-31 21:08:52');
COMMIT;

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `sequence` int(11) unsigned NOT NULL,
  `mark` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_tag_name` (`name`) USING BTREE,
  UNIQUE KEY `uk_tag` (`sequence`,`mark`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_tag
-- ----------------------------
BEGIN;
INSERT INTO `tb_tag` VALUES (7, '2020-02-16 15:12:30', 'IS_ADMIN', 1, 2);
INSERT INTO `tb_tag` VALUES (8, '2020-02-16 15:13:50', 'IS_PASSWORD_EXPIRE', 1, 1);
INSERT INTO `tb_tag` VALUES (9, '2020-11-28 15:38:12', 'IS_HASHCAT_TESTER', 1, 4);
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `email` varchar(63) DEFAULT NULL,
  `mobile` varchar(31) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `sites` varchar(63) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_email` (`email`) USING BTREE,
  UNIQUE KEY `uk_mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10052 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES (10020, '2020-01-20 22:35:50', '2020-01-20 22:35:50', 0, NULL, '15696756583', 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10032, '2020-01-21 11:20:53', '2020-10-01 15:38:32', 26, '15696756582@163.com', '15696756584', 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"sweeney\",\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10037, '2020-01-31 14:47:42', '2020-01-31 14:47:42', 0, 'iteknical@126.com', NULL, 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10048, '2020-02-01 18:45:26', '2020-02-01 18:45:26', 0, 'admin@qq.com', NULL, 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10049, '2020-02-01 19:07:36', '2021-09-21 08:23:21', 45, '1173282254@qq.com', '15696756582', 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"sweeney\",\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10050, '2020-02-01 20:28:49', '2020-05-24 19:33:03', 11, 'pascalqq@126.com', '17606542290', 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"sweeney\",\"wednesday\"]');
INSERT INTO `tb_user` VALUES (10051, '2020-02-01 20:29:17', '2020-02-01 20:29:17', 0, 'luna_nov@163.com', '', 'fe71a5116d6735207f66e056d4af2cd10658b425b85ee4531f131370be3c11e1', '[\"wednesday\"]');
COMMIT;

-- ----------------------------
-- Table structure for tb_user_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_tag`;
CREATE TABLE `tb_user_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `tag_1` bigint(20) unsigned DEFAULT NULL,
  `tag_2` bigint(20) unsigned DEFAULT NULL,
  `tag_3` bigint(20) unsigned DEFAULT NULL,
  `tag_4` bigint(20) unsigned DEFAULT NULL,
  `tag_5` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user_tag
-- ----------------------------
BEGIN;
INSERT INTO `tb_user_tag` VALUES (62, '2020-02-11 14:50:55', '2020-02-16 15:21:30', 21, 95001, 7, 0, 0, 0, 0);
INSERT INTO `tb_user_tag` VALUES (64, '2020-02-16 18:33:01', '2020-02-16 18:33:01', 1, 10050, 2, 0, 0, 0, 0);
INSERT INTO `tb_user_tag` VALUES (65, '2020-02-16 18:33:01', '2020-02-25 17:12:23', 10, 10032, 2, 0, 0, 0, 0);
INSERT INTO `tb_user_tag` VALUES (66, '2021-08-19 16:01:02', '2021-08-30 12:07:50', 24, 10049, 7, 0, 0, 0, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
