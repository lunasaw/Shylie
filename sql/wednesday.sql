/*
 Navicat Premium Data Transfer

 Source Server         : luna-aliyuncs-qiaowe
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 106.14.30.12:3306
 Source Schema         : wednesday

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 27/08/2021 14:03:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_agent
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent`;
CREATE TABLE `tb_agent` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `key` varchar(63) NOT NULL,
  `type` varchar(15) NOT NULL,
  `hardware` mediumtext NOT NULL,
  `agent_version` varchar(15) DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_agent` (`key`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_agent
-- ----------------------------
BEGIN;
INSERT INTO `tb_agent` VALUES (1, '2020-05-03 20:56:14', '2020-06-25 11:49:56', 69, 'C02VL2B8G8WN', 'sweeney', '{\"agentKey\":\"C02VL2B8G8WN\",\"agentVersion\":\"1.4-SNAPSHOT\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":1708759450,\"clDeviceName\":\"Intel(R) Iris(TM) Pro Graphics 5200\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2\",\"clDriverVersion\":\"20.19.15.4835\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0},{\"clDeviceGlobalMemSize\":17050124288,\"clDeviceName\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_CPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2 (Build 10094)\",\"clDriverVersion\":\"5.2.0.10094\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":1}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"MBP114.88Z.0172.B25.1706181512\",\"manufacturer\":\"Apple Inc.\",\"name\":\"MBP114.88Z.0172.B25.1706181512\",\"version\":\"APPLE  - 0\"},\"hostName\":\"DESKTOP-OTT6C1B\",\"macAddressSet\":[\"6c:96:cf:dd:21:95\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":17050124288,\"swapTotal\":17224581120},\"model\":\"MacBookPro11,4\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF00040661\"},\"serialNumber\":\"C02VL2B8G8WN\"}}', '1.4-SNAPSHOT', '2020-06-25 11:50:02');
COMMIT;

-- ----------------------------
-- Table structure for tb_download
-- ----------------------------
DROP TABLE IF EXISTS `tb_download`;
CREATE TABLE `tb_download` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
  `url_map` varchar(511) NOT NULL,
  `manual` varchar(127) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_property` (`name`,`url_map`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_download
-- ----------------------------
BEGIN;
INSERT INTO `tb_download` VALUES (2, '2020-04-03 15:39:58', '2020-04-03 15:40:00', 0, 'NiceHash Miner 3.x', '{\"下载地址1\":\"https://github.com/nicehash/NiceHashMiner/releases/download/3.0.0.4/nhm_windows_3.0.0.4.zip\",\"下载地址2\":\"https://note.youdao.com/ynoteshare1/index.html?id=df49e414c72c2b7d79607b72f8c7112e\"}', 'https://note.youdao.com/ynoteshare1/index.html?id=df49e414c72c2b7d79607b72f8c7112e');
COMMIT;

-- ----------------------------
-- Table structure for tb_hash
-- ----------------------------
DROP TABLE IF EXISTS `tb_hash`;
CREATE TABLE `tb_hash` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `name` varchar(63) NOT NULL,
  `content` mediumtext,
  `result` mediumtext,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hash
-- ----------------------------
BEGIN;
INSERT INTO `tb_hash` VALUES (4, '2020-05-05 22:50:06', '2020-06-24 22:28:54', 4, 'testhash2', NULL, '[\"25d55ad283aa400af464c76d713c07ad:12345678\"]');
INSERT INTO `tb_hash` VALUES (5, '2021-08-19 08:01:36', '2021-08-19 08:01:36', 0, 'test', '[\"e28c32958a44e096fd37447ea776615b\"]', NULL);
INSERT INTO `tb_hash` VALUES (6, '2021-08-19 10:00:57', '2021-08-19 10:00:57', 0, 'test2', '[\"e28c32958a44e096fd37447ea776615b\"]', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_hash_mode_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_hash_mode_config`;
CREATE TABLE `tb_hashcat_hash_mode_config` (
  `id` int(10) unsigned NOT NULL COMMENT 'attack_mode同名',
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `name` varchar(127) NOT NULL,
  `lines_per_task` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_hash_mode_config
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (0, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'MD5', 30000000000);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (10, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($pass.$salt)', 10023);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (20, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.$pass)', 10024);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (23, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'Skype', 10074);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (30, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5(utf16le($pass).$salt)', 10025);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (40, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.utf16le($pass))', 10026);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (50, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-MD5 (key = $pass)', 10052);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (60, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-MD5 (key = $salt)', 10053);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (100, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA1', 10003);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (110, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1($pass.$salt)', 10035);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (120, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1($salt.$pass)', 10036);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (130, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1(utf16le($pass).$salt)', 10037);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (140, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1($salt.utf16le($pass))', 10038);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (150, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA1 (key = $pass)', 10054);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (160, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA1 (key = $salt)', 10055);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (400, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'phpass', 10068);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (600, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'BLAKE2b-512', 10016);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (900, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'MD4', 10000);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1300, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA2-224', 10004);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1400, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA2-256', 10005);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1410, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha256($pass.$salt)', 10044);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1420, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha256($salt.$pass)', 10045);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1430, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha256(utf16le($pass).$salt)', 10046);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1440, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha256($salt.utf16le($pass))', 10047);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1450, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA256 (key = $pass)', 10056);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1460, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA256 (key = $salt)', 10057);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1700, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA2-512', 10007);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1710, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha512($pass.$salt)', 10048);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1720, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'sha512($salt.$pass)', 10049);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1730, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'sha512(utf16le($pass).$salt)', 10050);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1740, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'sha512($salt.utf16le($pass))', 10051);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1750, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA512 (key = $pass)', 10058);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1760, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-SHA512 (key = $salt)', 10059);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (2500, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'WPA-EAPOL-PBKDF2', 10075);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (2501, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'WPA-EAPOL-PMK', 10076);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (2600, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5(md5($pass))', 10031);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (3710, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.md5($pass))', 10028);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (3800, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.$pass.$salt)', 10027);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (3910, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5(md5($pass).md5($salt))', 10032);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4010, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.md5($salt.$pass))', 10029);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4110, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5($salt.md5($pass.$salt))', 10030);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4300, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5(strtoupper(md5($pass)))', 10033);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4400, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'md5(sha1($pass))', 10034);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4500, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1(sha1($pass))', 10039);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4520, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1($salt.sha1($pass))', 10040);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4700, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1(md5($pass))', 10041);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4800, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'iSCSI CHAP authentication, MD5(CHAP)', 10079);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (4900, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1($salt.$pass.$salt)', 10042);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (5100, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Half MD5', 10002);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (5300, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'IKE-PSK MD5', 10080);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (5400, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'IKE-PSK SHA1', 10081);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (5500, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'NetNTLMv1', 10082);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (6000, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'RIPEMD-160', 10018);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (6100, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Whirlpool', 10019);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (6900, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'GOST R 34.11-94', 10020);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (8900, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'scrypt', 10069);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (10100, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SipHash', 10017);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (10800, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA2-384', 10006);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (10900, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'PBKDF2-HMAC-SHA256', 10072);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11700, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'GOST R 34.11-2012 (Streebog) 256-bit, big-endian', 10021);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11750, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-Streebog-256 (key = $pass), big-endian', 10060);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11760, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-Streebog-256 (key = $salt), big-endian', 10061);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11800, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'GOST R 34.11-2012 (Streebog) 512-bit, big-endian', 10022);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11850, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-Streebog-512 (key = $pass), big-endian', 10062);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11860, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'HMAC-Streebog-512 (key = $salt), big-endian', 10063);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (11900, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'PBKDF2-HMAC-MD5', 10070);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (12000, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'PBKDF2-HMAC-SHA1', 10071);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (12100, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'PBKDF2-HMAC-SHA512', 10073);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (14000, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'DES (PT = $salt, key = $pass)', 10064);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (14100, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, '3DES (PT = $salt, key = $pass)', 10065);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (14400, '2020-05-05 00:14:35', '2020-05-05 00:14:35', 0, 'sha1(CX)', 10043);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (14900, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'Skip32 (PT = $salt, key = $pass)', 10066);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (15400, '2020-05-05 00:14:36', '2020-05-05 00:14:36', 0, 'ChaCha20', 10067);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (16800, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'WPA-PMKID-PBKDF2', 10077);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (16801, '2020-05-05 00:14:37', '2020-05-05 00:14:37', 0, 'WPA-PMKID-PMK', 10078);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17300, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA3-224', 10008);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17400, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA3-256', 10009);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17500, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA3-384', 10010);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17600, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'SHA3-512', 10011);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17700, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Keccak-224', 10012);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17800, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Keccak-256', 10013);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (17900, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Keccak-384', 10014);
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (18000, '2020-05-05 00:14:34', '2020-05-05 00:14:34', 0, 'Keccak-512', 10015);
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_project`;
CREATE TABLE `tb_hashcat_project` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `name` varchar(63) NOT NULL,
  `status` varchar(31) NOT NULL,
  `mask` varchar(63) NOT NULL,
  `keyspace` bigint(20) DEFAULT NULL,
  `hash_mode` int(10) unsigned NOT NULL,
  `attack_mode` tinyint(3) unsigned NOT NULL,
  `hash_id` bigint(20) unsigned NOT NULL,
  `lines` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_keyspace` (`keyspace`) USING BTREE,
  KEY `idx_mask` (`mask`) USING BTREE,
  KEY `idx_hash_mode` (`hash_mode`) USING BTREE,
  KEY `idx_attack_mode` (`attack_mode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_project` VALUES (9, '2021-08-19 10:01:44', '2021-08-19 10:01:44', 0, 'test2', 'init', '?d?d?d?d?d?d?d?d?d?d', NULL, 0, 7, 6, 10000000000);
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_speed
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_speed`;
CREATE TABLE `tb_hashcat_speed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `agent_id` bigint(20) unsigned NOT NULL,
  `hash_mode` int(10) unsigned NOT NULL,
  `task_size` int(10) unsigned NOT NULL,
  `running_second` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_speed` (`agent_id`,`hash_mode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_speed
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_speed` VALUES (1, '2020-05-09 00:54:56', '2020-05-09 00:54:56', 0, 1, 3, 1, 340);
INSERT INTO `tb_hashcat_speed` VALUES (2, '2020-06-24 21:09:45', '2020-06-24 22:28:46', 1, 1, 0, 33, 2);
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_status`;
CREATE TABLE `tb_hashcat_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `agent_id` bigint(20) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_agent_id` (`agent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_status
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_status` VALUES (1, '2020-05-06 11:51:12', '2020-05-06 11:52:19', 1, 1, '{\"attempted\":\"218162483680\",\"speedList\":[\"116555125\"],\"status\":\"running\",\"total\":\"235294112000\"}');
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_status_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_status_log`;
CREATE TABLE `tb_hashcat_status_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `agent_id` bigint(20) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_status_log
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_status_log` VALUES (1, '2020-05-06 11:51:12', 1, '{\"attempted\":\"209466348000\",\"speedList\":[\"109595169\"],\"status\":\"running\",\"total\":\"235294112000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (2, '2020-05-06 11:52:19', 1, '{\"attempted\":\"218162483680\",\"speedList\":[\"116555125\"],\"status\":\"running\",\"total\":\"235294112000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (3, '2020-05-09 00:32:02', 1, '{\"attempted\":\"269089579040\",\"speedList\":[\"113213316\"],\"status\":\"running\",\"total\":\"294117640000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (4, '2020-05-09 00:33:02', 1, '{\"attempted\":\"275959390240\",\"speedList\":[\"117102347\"],\"status\":\"running\",\"total\":\"294117640000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (5, '2020-05-09 00:34:22', 1, '{\"attempted\":\"285391003680\",\"speedList\":[\"117124540\"],\"status\":\"running\",\"total\":\"294117640000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (6, '2020-05-09 00:37:03', 1, '{\"attempted\":\"300587681600\",\"speedList\":[\"120056767\"],\"status\":\"running\",\"total\":\"323529404000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (7, '2020-05-09 00:38:03', 1, '{\"attempted\":\"307601835840\",\"speedList\":[\"114843394\"],\"status\":\"running\",\"total\":\"323529404000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (8, '2020-05-09 00:39:03', 1, '{\"attempted\":\"314774095680\",\"speedList\":[\"119762932\"],\"status\":\"running\",\"total\":\"323529404000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (9, '2020-05-09 00:40:03', 1, '{\"attempted\":\"321970440000\",\"speedList\":[\"119917165\"],\"status\":\"running\",\"total\":\"323529404000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (10, '2020-05-09 00:49:11', 1, '{\"attempted\":\"384833469600\",\"speedList\":[\"119829075\"],\"status\":\"running\",\"total\":\"411764696000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (11, '2020-05-09 00:50:11', 1, '{\"attempted\":\"391943961760\",\"speedList\":[\"119894021\"],\"status\":\"running\",\"total\":\"411764696000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (12, '2020-05-09 00:51:11', 1, '{\"attempted\":\"399132277920\",\"speedList\":[\"119388356\"],\"status\":\"running\",\"total\":\"411764696000\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (13, '2020-05-09 00:52:11', 1, '{\"attempted\":\"406346972320\",\"speedList\":[\"120817741\"],\"status\":\"running\",\"total\":\"411764696000\"}');
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_task`;
CREATE TABLE `tb_hashcat_task` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `status` varchar(31) NOT NULL,
  `skip` bigint(20) unsigned NOT NULL,
  `limit` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_project_id` (`project_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19271 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_hashcat_task_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_task_result`;
CREATE TABLE `tb_hashcat_task_result` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `task_id` bigint(20) unsigned NOT NULL,
  `agent_id` bigint(20) unsigned NOT NULL,
  `status` varchar(31) NOT NULL,
  `result` mediumtext,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_task_id` (`task_id`) USING BTREE,
  KEY `idx_agent_id` (`agent_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task_result
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_idle_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tb_idle_wallet`;
CREATE TABLE `tb_idle_wallet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `type` varchar(63) NOT NULL,
  `address` varchar(511) NOT NULL,
  `extra_info` varchar(511) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_address` (`type`,`address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_idle_wallet
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_property
-- ----------------------------
DROP TABLE IF EXISTS `tb_property`;
CREATE TABLE `tb_property` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `type` varchar(31) NOT NULL,
  `amount` varchar(63) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_property` (`user_id`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_property
-- ----------------------------
BEGIN;
INSERT INTO `tb_property` VALUES (5, '2020-03-10 17:05:02', '2020-03-10 17:05:02', 0, 10050, 'oldPlatformBTCAmount', '999');
INSERT INTO `tb_property` VALUES (6, '2020-03-17 15:17:54', '2020-03-17 15:17:54', 0, 10062, 'oldPlatformBTCAmount', '888');
INSERT INTO `tb_property` VALUES (8, '2020-03-22 16:08:33', '2020-11-10 20:45:32', 47, 10050, 'credit', '49999700108322.58020000');
INSERT INTO `tb_property` VALUES (9, '2020-04-03 15:34:25', '2020-04-03 15:34:25', 0, 10032, 'credit', '0');
INSERT INTO `tb_property` VALUES (10, '2020-04-07 11:27:45', '2020-04-07 11:27:45', 0, 10062, 'credit', '0');
INSERT INTO `tb_property` VALUES (11, '2020-05-20 01:07:33', '2020-05-20 01:07:33', 0, 10099, 'oldPlatformBTCAmount', '999');
INSERT INTO `tb_property` VALUES (12, '2020-07-04 22:33:19', '2020-07-04 22:40:42', 1, 10049, 'credit', '9677.41940000');
COMMIT;

-- ----------------------------
-- Table structure for tb_property_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tb_property_exchange`;
CREATE TABLE `tb_property_exchange` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `property_id` bigint(20) unsigned NOT NULL,
  `amount` varchar(63) NOT NULL,
  `type` varchar(31) NOT NULL,
  `status` varchar(31) NOT NULL,
  `price` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_id` (`property_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_property_exchange
-- ----------------------------
BEGIN;
INSERT INTO `tb_property_exchange` VALUES (12, '2020-07-01 17:41:04', '2020-07-01 17:41:04', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (13, '2020-07-01 17:41:05', '2020-07-01 17:41:05', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (14, '2020-07-01 17:41:05', '2020-07-01 17:41:05', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (15, '2020-07-01 21:55:00', '2020-07-01 21:55:00', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (16, '2020-07-01 21:55:01', '2020-07-01 21:55:01', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (17, '2020-07-01 21:55:02', '2020-07-01 21:55:02', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (18, '2020-07-01 21:56:07', '2020-07-01 21:56:07', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (19, '2020-07-01 21:56:08', '2020-07-01 21:56:08', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (20, '2020-07-01 21:56:08', '2020-07-01 21:56:08', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (21, '2020-07-01 21:56:27', '2020-07-01 21:56:27', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (22, '2020-07-01 21:56:27', '2020-07-01 21:56:27', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (23, '2020-07-01 21:56:28', '2020-07-01 21:56:28', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (24, '2020-07-01 22:34:19', '2020-07-01 22:34:19', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (25, '2020-07-01 22:34:19', '2020-07-01 22:34:19', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (26, '2020-07-04 22:40:42', '2020-07-04 22:40:42', 0, 8, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (27, '2020-07-04 22:40:42', '2020-07-04 22:40:42', 0, 12, '5000000000', 'income', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (28, '2020-07-07 23:02:48', '2020-07-07 23:02:48', 0, 8, '5000000000', 'withdraw', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (29, '2020-07-07 23:08:57', '2020-07-07 23:08:57', 0, 8, '5000000000', 'withdraw', 'finish', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (39, '2020-11-09 23:09:31', '2020-11-09 23:09:31', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (40, '2020-11-09 23:09:47', '2020-11-09 23:09:47', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (41, '2020-11-09 23:34:21', '2020-11-09 23:34:21', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (42, '2020-11-09 23:37:58', '2020-11-09 23:37:58', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (43, '2020-11-10 20:26:10', '2020-11-10 20:26:10', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
INSERT INTO `tb_property_exchange` VALUES (44, '2020-11-10 20:45:32', '2020-11-10 20:45:32', 0, 8, '50000000', 'withdraw', 'wait', '4E-7');
COMMIT;

-- ----------------------------
-- Table structure for tb_system
-- ----------------------------
DROP TABLE IF EXISTS `tb_system`;
CREATE TABLE `tb_system` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `extend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_unique` (`content`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_system
-- ----------------------------
BEGIN;
INSERT INTO `tb_system` VALUES (45, '2021-08-27 05:36:54', '2021-08-27 05:53:01', 82, 'MEMORY', '{\"MEMORY_USE\":[[\"2021-08-27 13:36:52\",\"5.92\"],[\"2021-08-27 13:37:03\",\"5.80\"],[\"2021-08-27 13:37:14\",\"5.48\"],[\"2021-08-27 13:37:25\",\"5.53\"],[\"2021-08-27 13:37:37\",\"5.56\"],[\"2021-08-27 13:37:48\",\"5.70\"],[\"2021-08-27 13:38:00\",\"5.72\"],[\"2021-08-27 13:39:00\",\"6.21\"],[\"2021-08-27 13:39:12\",\"5.59\"],[\"2021-08-27 13:39:23\",\"5.57\"],[\"2021-08-27 13:39:34\",\"5.61\"],[\"2021-08-27 13:39:45\",\"5.63\"],[\"2021-08-27 13:39:56\",\"5.60\"],[\"2021-08-27 13:40:07\",\"5.67\"],[\"2021-08-27 13:40:18\",\"6.50\"],[\"2021-08-27 13:40:30\",\"6.57\"],[\"2021-08-27 13:40:41\",\"6.38\"],[\"2021-08-27 13:40:52\",\"6.18\"],[\"2021-08-27 13:41:03\",\"5.45\"],[\"2021-08-27 13:41:15\",\"5.65\"],[\"2021-08-27 13:41:26\",\"6.10\"],[\"2021-08-27 13:41:37\",\"5.73\"],[\"2021-08-27 13:41:48\",\"5.72\"],[\"2021-08-27 13:41:59\",\"5.71\"],[\"2021-08-27 13:42:10\",\"5.78\"],[\"2021-08-27 13:42:21\",\"5.84\"],[\"2021-08-27 13:42:33\",\"5.87\"],[\"2021-08-27 13:42:44\",\"5.59\"],[\"2021-08-27 13:42:55\",\"5.75\"],[\"2021-08-27 13:43:06\",\"5.55\"],[\"2021-08-27 13:43:17\",\"5.61\"],[\"2021-08-27 13:43:29\",\"5.72\"],[\"2021-08-27 13:43:40\",\"5.65\"],[\"2021-08-27 13:43:51\",\"5.63\"],[\"2021-08-27 13:44:02\",\"5.64\"],[\"2021-08-27 13:44:13\",\"5.64\"],[\"2021-08-27 13:44:24\",\"5.66\"],[\"2021-08-27 13:44:35\",\"5.82\"],[\"2021-08-27 13:44:47\",\"5.72\"],[\"2021-08-27 13:44:58\",\"5.67\"],[\"2021-08-27 13:45:09\",\"5.62\"],[\"2021-08-27 13:45:20\",\"5.66\"],[\"2021-08-27 13:45:31\",\"5.60\"],[\"2021-08-27 13:45:42\",\"5.75\"],[\"2021-08-27 13:45:53\",\"5.80\"],[\"2021-08-27 13:46:04\",\"6.1\"],[\"2021-08-27 13:46:16\",\"6.5\"],[\"2021-08-27 13:46:27\",\"5.54\"],[\"2021-08-27 13:46:38\",\"5.79\"],[\"2021-08-27 13:46:49\",\"5.66\"],[\"2021-08-27 13:47:01\",\"5.76\"],[\"2021-08-27 13:47:12\",\"5.81\"],[\"2021-08-27 13:47:23\",\"5.61\"],[\"2021-08-27 13:47:34\",\"5.56\"],[\"2021-08-27 13:47:45\",\"5.60\"],[\"2021-08-27 13:47:57\",\"5.63\"],[\"2021-08-27 13:48:08\",\"5.67\"],[\"2021-08-27 13:48:19\",\"5.82\"],[\"2021-08-27 13:48:30\",\"5.63\"],[\"2021-08-27 13:48:41\",\"5.94\"],[\"2021-08-27 13:48:52\",\"5.70\"],[\"2021-08-27 13:49:03\",\"5.64\"],[\"2021-08-27 13:49:15\",\"5.76\"],[\"2021-08-27 13:49:26\",\"5.77\"],[\"2021-08-27 13:49:37\",\"5.71\"],[\"2021-08-27 13:49:48\",\"6.1\"],[\"2021-08-27 13:49:59\",\"5.94\"],[\"2021-08-27 13:50:10\",\"5.86\"],[\"2021-08-27 13:50:22\",\"6.1\"],[\"2021-08-27 13:50:33\",\"5.72\"],[\"2021-08-27 13:50:45\",\"5.78\"],[\"2021-08-27 13:50:56\",\"5.81\"],[\"2021-08-27 13:51:07\",\"5.87\"],[\"2021-08-27 13:51:18\",\"5.78\"],[\"2021-08-27 13:51:29\",\"6.16\"],[\"2021-08-27 13:51:40\",\"5.89\"],[\"2021-08-27 13:51:52\",\"5.73\"],[\"2021-08-27 13:52:03\",\"5.95\"],[\"2021-08-27 13:52:14\",\"6.6\"],[\"2021-08-27 13:52:25\",\"5.79\"],[\"2021-08-27 13:52:36\",\"5.77\"],[\"2021-08-27 13:52:48\",\"5.99\"],[\"2021-08-27 13:52:59\",\"6.5\"]],\"MEMORY_FREE\":[[\"2021-08-27 13:36:52\",\"2.7\"],[\"2021-08-27 13:37:03\",\"2.19\"],[\"2021-08-27 13:37:14\",\"2.51\"],[\"2021-08-27 13:37:25\",\"2.46\"],[\"2021-08-27 13:37:37\",\"2.43\"],[\"2021-08-27 13:37:48\",\"2.28\"],[\"2021-08-27 13:38:00\",\"2.27\"],[\"2021-08-27 13:39:00\",\"1.78\"],[\"2021-08-27 13:39:12\",\"2.40\"],[\"2021-08-27 13:39:23\",\"2.41\"],[\"2021-08-27 13:39:34\",\"2.38\"],[\"2021-08-27 13:39:45\",\"2.36\"],[\"2021-08-27 13:39:56\",\"2.39\"],[\"2021-08-27 13:40:07\",\"2.32\"],[\"2021-08-27 13:40:18\",\"1.49\"],[\"2021-08-27 13:40:30\",\"1.42\"],[\"2021-08-27 13:40:41\",\"1.61\"],[\"2021-08-27 13:40:52\",\"1.80\"],[\"2021-08-27 13:41:03\",\"2.54\"],[\"2021-08-27 13:41:15\",\"2.34\"],[\"2021-08-27 13:41:26\",\"1.89\"],[\"2021-08-27 13:41:37\",\"2.26\"],[\"2021-08-27 13:41:48\",\"2.27\"],[\"2021-08-27 13:41:59\",\"2.28\"],[\"2021-08-27 13:42:10\",\"2.21\"],[\"2021-08-27 13:42:21\",\"2.15\"],[\"2021-08-27 13:42:33\",\"2.12\"],[\"2021-08-27 13:42:44\",\"2.40\"],[\"2021-08-27 13:42:55\",\"2.24\"],[\"2021-08-27 13:43:06\",\"2.44\"],[\"2021-08-27 13:43:17\",\"2.38\"],[\"2021-08-27 13:43:29\",\"2.27\"],[\"2021-08-27 13:43:40\",\"2.34\"],[\"2021-08-27 13:43:51\",\"2.36\"],[\"2021-08-27 13:44:02\",\"2.35\"],[\"2021-08-27 13:44:13\",\"2.35\"],[\"2021-08-27 13:44:24\",\"2.33\"],[\"2021-08-27 13:44:35\",\"2.17\"],[\"2021-08-27 13:44:47\",\"2.27\"],[\"2021-08-27 13:44:58\",\"2.32\"],[\"2021-08-27 13:45:09\",\"2.37\"],[\"2021-08-27 13:45:20\",\"2.33\"],[\"2021-08-27 13:45:31\",\"2.38\"],[\"2021-08-27 13:45:42\",\"2.24\"],[\"2021-08-27 13:45:53\",\"2.19\"],[\"2021-08-27 13:46:04\",\"1.98\"],[\"2021-08-27 13:46:16\",\"1.94\"],[\"2021-08-27 13:46:27\",\"2.45\"],[\"2021-08-27 13:46:38\",\"2.20\"],[\"2021-08-27 13:46:49\",\"2.33\"],[\"2021-08-27 13:47:01\",\"2.23\"],[\"2021-08-27 13:47:12\",\"2.18\"],[\"2021-08-27 13:47:23\",\"2.38\"],[\"2021-08-27 13:47:34\",\"2.43\"],[\"2021-08-27 13:47:45\",\"2.39\"],[\"2021-08-27 13:47:57\",\"2.35\"],[\"2021-08-27 13:48:08\",\"2.32\"],[\"2021-08-27 13:48:19\",\"2.17\"],[\"2021-08-27 13:48:30\",\"2.36\"],[\"2021-08-27 13:48:41\",\"2.5\"],[\"2021-08-27 13:48:52\",\"2.28\"],[\"2021-08-27 13:49:03\",\"2.35\"],[\"2021-08-27 13:49:15\",\"2.23\"],[\"2021-08-27 13:49:26\",\"2.22\"],[\"2021-08-27 13:49:37\",\"2.28\"],[\"2021-08-27 13:49:48\",\"1.98\"],[\"2021-08-27 13:49:59\",\"2.5\"],[\"2021-08-27 13:50:10\",\"2.13\"],[\"2021-08-27 13:50:22\",\"1.98\"],[\"2021-08-27 13:50:33\",\"2.27\"],[\"2021-08-27 13:50:45\",\"2.21\"],[\"2021-08-27 13:50:56\",\"2.18\"],[\"2021-08-27 13:51:07\",\"2.12\"],[\"2021-08-27 13:51:18\",\"2.21\"],[\"2021-08-27 13:51:29\",\"1.83\"],[\"2021-08-27 13:51:40\",\"2.10\"],[\"2021-08-27 13:51:52\",\"2.26\"],[\"2021-08-27 13:52:03\",\"2.4\"],[\"2021-08-27 13:52:14\",\"1.93\"],[\"2021-08-27 13:52:25\",\"2.20\"],[\"2021-08-27 13:52:36\",\"2.22\"],[\"2021-08-27 13:52:48\",\"2.0\"],[\"2021-08-27 13:52:59\",\"1.94\"]]}');
INSERT INTO `tb_system` VALUES (46, '2021-08-27 05:36:54', '2021-08-27 05:53:01', 73, 'CPU', '{\"CPU_IDLE\":[[\"2021-08-27 13:36:52\",45.25],[\"2021-08-27 13:37:03\",35.18],[\"2021-08-27 13:37:14\",35.91],[\"2021-08-27 13:37:26\",25.12],[\"2021-08-27 13:37:48\",15.21],[\"2021-08-27 13:38:00\",4.23],[\"2021-08-27 13:39:00\",21.8],[\"2021-08-27 13:39:12\",42.54],[\"2021-08-27 13:39:23\",16.38],[\"2021-08-27 13:39:34\",42.65],[\"2021-08-27 13:39:45\",41.69],[\"2021-08-27 13:39:56\",16.38],[\"2021-08-27 13:40:07\",43.21],[\"2021-08-27 13:40:19\",59.55],[\"2021-08-27 13:40:30\",70.97],[\"2021-08-27 13:40:41\",51.61],[\"2021-08-27 13:40:52\",50.25],[\"2021-08-27 13:41:04\",95.01],[\"2021-08-27 13:41:26\",58.85],[\"2021-08-27 13:41:37\",75.37],[\"2021-08-27 13:41:48\",85.79],[\"2021-08-27 13:41:59\",6.98],[\"2021-08-27 13:42:10\",8.71],[\"2021-08-27 13:42:21\",54.36],[\"2021-08-27 13:42:33\",16.79],[\"2021-08-27 13:42:44\",12.25],[\"2021-08-27 13:42:55\",64.68],[\"2021-08-27 13:43:06\",37.75],[\"2021-08-27 13:43:17\",33.83],[\"2021-08-27 13:43:29\",29.82],[\"2021-08-27 13:43:40\",52.12],[\"2021-08-27 13:43:51\",31.59],[\"2021-08-27 13:44:02\",85.93],[\"2021-08-27 13:44:13\",31.19],[\"2021-08-27 13:44:24\",89.72],[\"2021-08-27 13:44:35\",74.06],[\"2021-08-27 13:45:09\",11.69],[\"2021-08-27 13:45:20\",7.5],[\"2021-08-27 13:45:53\",28.86],[\"2021-08-27 13:46:05\",53.73],[\"2021-08-27 13:46:16\",26.82],[\"2021-08-27 13:46:27\",3.51],[\"2021-08-27 13:46:38\",4.98],[\"2021-08-27 13:46:50\",16.92],[\"2021-08-27 13:47:12\",37.09],[\"2021-08-27 13:47:34\",21.59],[\"2021-08-27 13:47:45\",37.16],[\"2021-08-27 13:48:08\",22.33],[\"2021-08-27 13:48:19\",37.59],[\"2021-08-27 13:48:30\",64.34],[\"2021-08-27 13:48:41\",41.9],[\"2021-08-27 13:48:52\",13.72],[\"2021-08-27 13:49:03\",38.1],[\"2021-08-27 13:49:15\",5.97],[\"2021-08-27 13:49:26\",7.96],[\"2021-08-27 13:49:37\",12.47],[\"2021-08-27 13:49:48\",6.7],[\"2021-08-27 13:49:59\",4.48],[\"2021-08-27 13:50:11\",8.5],[\"2021-08-27 13:50:22\",6.22],[\"2021-08-27 13:50:33\",18.32],[\"2021-08-27 13:50:45\",3.25],[\"2021-08-27 13:50:56\",48.13],[\"2021-08-27 13:51:07\",24.69],[\"2021-08-27 13:51:18\",13.4],[\"2021-08-27 13:51:29\",78.8],[\"2021-08-27 13:51:41\",40.84],[\"2021-08-27 13:51:52\",50.62],[\"2021-08-27 13:52:03\",79.55],[\"2021-08-27 13:52:14\",77.86],[\"2021-08-27 13:52:25\",74.37],[\"2021-08-27 13:52:36\",83.87],[\"2021-08-27 13:52:48\",25.06],[\"2021-08-27 13:52:59\",9.95]],\"CPU_SYSTEM\":[[\"2021-08-27 13:36:52\",22.5],[\"2021-08-27 13:37:03\",20.85],[\"2021-08-27 13:37:14\",23.44],[\"2021-08-27 13:37:26\",21.14],[\"2021-08-27 13:37:48\",29.18],[\"2021-08-27 13:38:00\",36.07],[\"2021-08-27 13:39:00\",49.87],[\"2021-08-27 13:39:12\",14.93],[\"2021-08-27 13:39:23\",12.41],[\"2021-08-27 13:39:34\",24.02],[\"2021-08-27 13:39:45\",20.84],[\"2021-08-27 13:39:56\",25.06],[\"2021-08-27 13:40:07\",20.25],[\"2021-08-27 13:40:19\",14.89],[\"2021-08-27 13:40:30\",14.64],[\"2021-08-27 13:40:41\",26.55],[\"2021-08-27 13:40:52\",23.37],[\"2021-08-27 13:41:04\",2.49],[\"2021-08-27 13:41:26\",14.71],[\"2021-08-27 13:41:37\",10.45],[\"2021-08-27 13:41:48\",4.49],[\"2021-08-27 13:41:59\",20.7],[\"2021-08-27 13:42:10\",39.8],[\"2021-08-27 13:42:21\",21.45],[\"2021-08-27 13:42:33\",39.85],[\"2021-08-27 13:42:44\",26.25],[\"2021-08-27 13:42:55\",11.44],[\"2021-08-27 13:43:06\",18.5],[\"2021-08-27 13:43:17\",27.16],[\"2021-08-27 13:43:29\",16.04],[\"2021-08-27 13:43:40\",18.7],[\"2021-08-27 13:43:51\",15.17],[\"2021-08-27 13:44:02\",5.03],[\"2021-08-27 13:44:13\",19.06],[\"2021-08-27 13:44:24\",4.76],[\"2021-08-27 13:44:35\",11.97],[\"2021-08-27 13:45:09\",23.38],[\"2021-08-27 13:45:20\",33.25],[\"2021-08-27 13:45:53\",28.86],[\"2021-08-27 13:46:05\",19.9],[\"2021-08-27 13:46:16\",29.57],[\"2021-08-27 13:46:27\",16.79],[\"2021-08-27 13:46:38\",45.52],[\"2021-08-27 13:46:50\",29.1],[\"2021-08-27 13:47:12\",24.56],[\"2021-08-27 13:47:34\",35.24],[\"2021-08-27 13:47:45\",13.72],[\"2021-08-27 13:48:08\",34.74],[\"2021-08-27 13:48:19\",23.56],[\"2021-08-27 13:48:30\",14.46],[\"2021-08-27 13:48:41\",36.16],[\"2021-08-27 13:48:52\",37.16],[\"2021-08-27 13:49:03\",26.07],[\"2021-08-27 13:49:15\",26.37],[\"2021-08-27 13:49:26\",31.59],[\"2021-08-27 13:49:37\",21.7],[\"2021-08-27 13:49:48\",26.8],[\"2021-08-27 13:49:59\",24.63],[\"2021-08-27 13:50:11\",25.75],[\"2021-08-27 13:50:22\",44.28],[\"2021-08-27 13:50:33\",29.95],[\"2021-08-27 13:50:45\",20.25],[\"2021-08-27 13:50:56\",23.94],[\"2021-08-27 13:51:07\",26.93],[\"2021-08-27 13:51:18\",44.91],[\"2021-08-27 13:51:29\",10.72],[\"2021-08-27 13:51:41\",16.83],[\"2021-08-27 13:51:52\",11.66],[\"2021-08-27 13:52:03\",7.48],[\"2021-08-27 13:52:14\",7.21],[\"2021-08-27 13:52:25\",9.05],[\"2021-08-27 13:52:36\",4.71],[\"2021-08-27 13:52:48\",35.98],[\"2021-08-27 13:52:59\",53.98]],\"CPU_USER\":[[\"2021-08-27 13:36:52\",32.25],[\"2021-08-27 13:37:03\",43.97],[\"2021-08-27 13:37:14\",40.65],[\"2021-08-27 13:37:26\",53.73],[\"2021-08-27 13:37:48\",55.61],[\"2021-08-27 13:38:00\",59.7],[\"2021-08-27 13:39:00\",28.32],[\"2021-08-27 13:39:12\",42.54],[\"2021-08-27 13:39:23\",71.22],[\"2021-08-27 13:39:34\",33.33],[\"2021-08-27 13:39:45\",37.47],[\"2021-08-27 13:39:56\",58.56],[\"2021-08-27 13:40:07\",36.54],[\"2021-08-27 13:40:19\",25.56],[\"2021-08-27 13:40:30\",14.39],[\"2021-08-27 13:40:41\",21.84],[\"2021-08-27 13:40:52\",26.38],[\"2021-08-27 13:41:04\",2.49],[\"2021-08-27 13:41:26\",26.43],[\"2021-08-27 13:41:37\",14.18],[\"2021-08-27 13:41:48\",9.73],[\"2021-08-27 13:41:59\",72.32],[\"2021-08-27 13:42:10\",51.49],[\"2021-08-27 13:42:21\",24.19],[\"2021-08-27 13:42:33\",43.36],[\"2021-08-27 13:42:44\",61.5],[\"2021-08-27 13:42:55\",23.88],[\"2021-08-27 13:43:06\",43.75],[\"2021-08-27 13:43:17\",39.01],[\"2021-08-27 13:43:29\",54.14],[\"2021-08-27 13:43:40\",29.18],[\"2021-08-27 13:43:51\",53.23],[\"2021-08-27 13:44:02\",9.05],[\"2021-08-27 13:44:13\",49.75],[\"2021-08-27 13:44:24\",5.51],[\"2021-08-27 13:44:35\",13.97],[\"2021-08-27 13:45:09\",64.93],[\"2021-08-27 13:45:20\",59.25],[\"2021-08-27 13:45:53\",42.29],[\"2021-08-27 13:46:05\",26.37],[\"2021-08-27 13:46:16\",43.61],[\"2021-08-27 13:46:27\",79.7],[\"2021-08-27 13:46:38\",49.5],[\"2021-08-27 13:46:50\",53.98],[\"2021-08-27 13:47:12\",38.35],[\"2021-08-27 13:47:34\",43.18],[\"2021-08-27 13:47:45\",49.13],[\"2021-08-27 13:48:08\",42.93],[\"2021-08-27 13:48:19\",38.85],[\"2021-08-27 13:48:30\",21.2],[\"2021-08-27 13:48:41\",21.95],[\"2021-08-27 13:48:52\",49.13],[\"2021-08-27 13:49:03\",35.84],[\"2021-08-27 13:49:15\",67.66],[\"2021-08-27 13:49:26\",60.45],[\"2021-08-27 13:49:37\",65.84],[\"2021-08-27 13:49:48\",66.5],[\"2021-08-27 13:49:59\",70.9],[\"2021-08-27 13:50:11\",65.75],[\"2021-08-27 13:50:22\",49.5],[\"2021-08-27 13:50:33\",51.73],[\"2021-08-27 13:50:45\",76.5],[\"2021-08-27 13:50:56\",27.93],[\"2021-08-27 13:51:07\",48.38],[\"2021-08-27 13:51:18\",41.69],[\"2021-08-27 13:51:29\",10.47],[\"2021-08-27 13:51:41\",42.33],[\"2021-08-27 13:51:52\",37.72],[\"2021-08-27 13:52:03\",12.97],[\"2021-08-27 13:52:14\",14.93],[\"2021-08-27 13:52:25\",16.58],[\"2021-08-27 13:52:36\",11.41],[\"2021-08-27 13:52:48\",38.96],[\"2021-08-27 13:52:59\",36.07]]}');
COMMIT;

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `collection_code_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  UNIQUE KEY `receive_img` (`collection_code_url`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
BEGIN;
INSERT INTO `tb_user_info` VALUES (6, '2020-06-25 19:54:06', '2020-06-27 12:00:23', 5, 10050, 'https://s1.ax1x.com/2020/06/27/NyWnrn.png');
COMMIT;

-- ----------------------------
-- Table structure for tb_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tb_wallet`;
CREATE TABLE `tb_wallet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(511) NOT NULL,
  `extra_info` varchar(511) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_user_address` (`user_id`,`type`) USING BTREE,
  UNIQUE KEY `uk_address` (`type`,`address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_wallet
-- ----------------------------
BEGIN;
INSERT INTO `tb_wallet` VALUES (10, '2020-02-04 16:05:37', 10050, 'NH_BTC', '39XeYtGmpjbxaXYGNmQsH1WBMhwt6xbUq6', '{\"apiKey\":\"e4ffd016-6122-4b56-b5b0-24b20e1fda5a\",\"apiSecret\":\"f2ac2d53-b0a2-42ee-8d4a-23585a299dd3940e0e2e-0440-44ab-9065-36fc752f8d67\",\"organizationId\":\"1a3f28ca-4ca9-49b2-bbad-0009022d1c31\"}');
INSERT INTO `tb_wallet` VALUES (11, '2020-02-04 16:05:37', 10049, 'NH_BTC', '39XeYtGmpjbxaXYGNmQsH1WBMhwt6xbUq7', '{\"apiKey\":\"e4ffd016-6122-4b56-b5b0-24b20e1fda5a\",\"apiSecret\":\"f2ac2d53-b0a2-42ee-8d4a-23585a299dd3940e0e2e-0440-44ab-9065-36fc752f8d67\",\"organizationId\":\"1a3f28ca-4ca9-49b2-bbad-0009022d1c31\"}');
COMMIT;

-- ----------------------------
-- Table structure for tb_wallet_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tb_wallet_exchange`;
CREATE TABLE `tb_wallet_exchange` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `wallet_id` bigint(20) unsigned NOT NULL,
  `amount` varchar(63) NOT NULL,
  `status` varchar(31) NOT NULL,
  `price` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_id` (`wallet_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_wallet_exchange
-- ----------------------------
BEGIN;
INSERT INTO `tb_wallet_exchange` VALUES (12, '2020-05-24 11:48:03', '2020-06-13 13:46:19', 6, 10, '0.1', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (15, '2020-06-13 13:31:05', '2020-06-13 13:46:20', 3, 10, '0.00001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (24, '2020-06-13 17:55:07', '2020-07-01 22:34:19', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (26, '2020-06-13 17:59:14', '2020-07-01 22:34:19', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (28, '2020-06-15 14:00:17', '2020-07-01 21:56:27', 4, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (31, '2020-06-18 11:34:03', '2020-07-01 21:56:28', 4, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (32, '2020-07-04 22:28:25', '2020-07-04 22:40:42', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (33, '2020-07-04 22:39:12', '2020-07-04 22:40:42', 1, 11, '0.03', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (39, '2020-11-11 10:01:10', '2020-11-11 10:01:10', 0, 10, '0.001', 'wait', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
