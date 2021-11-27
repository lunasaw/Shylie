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

 Date: 13/09/2021 20:23:16
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_agent
-- ----------------------------
BEGIN;
INSERT INTO `tb_agent` VALUES (1, '2020-05-03 20:56:14', '2020-06-25 11:49:56', 69, 'C02VL2B8G8WN', 'sweeney', '{\"agentKey\":\"C02VL2B8G8WN\",\"agentVersion\":\"1.4-SNAPSHOT\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":1708759450,\"clDeviceName\":\"Intel(R) Iris(TM) Pro Graphics 5200\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2\",\"clDriverVersion\":\"20.19.15.4835\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0},{\"clDeviceGlobalMemSize\":17050124288,\"clDeviceName\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_CPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2 (Build 10094)\",\"clDriverVersion\":\"5.2.0.10094\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":1}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"MBP114.88Z.0172.B25.1706181512\",\"manufacturer\":\"Apple Inc.\",\"name\":\"MBP114.88Z.0172.B25.1706181512\",\"version\":\"APPLE  - 0\"},\"hostName\":\"DESKTOP-OTT6C1B\",\"macAddressSet\":[\"6c:96:cf:dd:21:95\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":17050124288,\"swapTotal\":17224581120},\"model\":\"MacBookPro11,4\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF00040661\"},\"serialNumber\":\"C02VL2B8G8WN\"}}', '1.4-SNAPSHOT', '2020-06-25 11:50:02');
INSERT INTO `tb_agent` VALUES (3, '2021-09-07 13:30:46', '2021-09-12 05:28:49', 659, 'PF17JQVU', 'sweeney', '{\"agentKey\":\"PF17JQVU\",\"agentVersion\":\"1.8-SNAPSHOT\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":2147483648,\"clDeviceName\":\"GeForce MX150\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"NVIDIA Corporation\",\"clDeviceVendorId\":\"0x10de\",\"clDeviceVersion\":\"OpenCL 1.2 CUDA\",\"clDriverVersion\":\"457.49\",\"clPlatformICDSuffixKHR\":\"NV\",\"id\":0},{\"clDeviceGlobalMemSize\":6819401728,\"clDeviceName\":\"Intel(R) UHD Graphics 620\",\"clDeviceOpenCLCVersion\":\"OpenCL C 2.0\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 2.1 NEO\",\"clDriverVersion\":\"27.20.100.8729\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"7PCN27WW\",\"manufacturer\":\"LENOVO\",\"name\":\"7PCN27WW\",\"version\":\"LENOVO - 1\"},\"hostName\":\"DESKTOP-A48DR00\",\"macAddressSet\":[\"60:c5:47:06:6f:88\"],\"manufacturer\":\"LENOVO\",\"memoryDTO\":{\"memeryTotal\":17048506368,\"swapTotal\":2550136832},\"model\":\"81GY\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF000806EA\"},\"serialNumber\":\"PF17JQVU\"}}', '1.8-SNAPSHOT', '2021-09-12 13:28:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hash
-- ----------------------------
BEGIN;
INSERT INTO `tb_hash` VALUES (4, '2020-05-05 22:50:06', '2020-06-24 22:28:54', 4, 'testhash2', NULL, '[\"25d55ad283aa400af464c76d713c07ad:12345678\"]');
INSERT INTO `tb_hash` VALUES (9, '2021-09-07 13:51:04', '2021-09-08 12:52:38', 1, 'hashcat', NULL, '[\"8743b52063cd84097a65d1633f5c74f5:hashcat\"]');
INSERT INTO `tb_hash` VALUES (16, '2021-09-08 13:31:41', '2021-09-08 13:31:41', 0, '1772249015sinaweibo', '[\"82d1e255b0473c030f69eb8b3fbc5a31\"]', NULL);
INSERT INTO `tb_hash` VALUES (17, '2021-09-08 13:33:52', '2021-09-08 13:33:52', 0, 'chenzhangyue', '[\"5881250b45019c06316355e472a0b6a9\"]', NULL);
INSERT INTO `tb_hash` VALUES (18, '2021-09-08 14:08:41', '2021-09-10 05:49:08', 1, 'hashcat2', NULL, '[\"8743b52063cd84097a65d1633f5c74f5:hashcat\"]');
INSERT INTO `tb_hash` VALUES (19, '2021-09-10 05:46:00', '2021-09-10 05:46:00', 0, 'iloveyctc', '[\"15c3abeabea8612c167f7a878162ab7a\"]', NULL);
INSERT INTO `tb_hash` VALUES (20, '2021-09-10 12:06:18', '2021-09-10 12:18:41', 1, 'yctc_yyds', NULL, '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hash` VALUES (21, '2021-09-10 12:46:10', '2021-09-10 12:46:10', 0, 'love-yctc', '[\"80ebbe475fc04ffeaec69ac6d3b3b0be\"]', NULL);
INSERT INTO `tb_hash` VALUES (22, '2021-09-10 12:48:18', '2021-09-10 13:50:35', 1, 'i-love-yctc', NULL, '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
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
INSERT INTO `tb_hashcat_hash_mode_config` VALUES (1, '2021-09-10 14:29:46', '2021-09-10 14:29:49', 0, 'SHA-256', 10000);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_project` VALUES (16, '2021-09-08 07:07:26', '2021-09-08 12:52:38', 5, 'project4', 'finish', '?l?l?l?l?l?l?l', 456976, 0, 3, 9, 8031810176);
INSERT INTO `tb_hashcat_project` VALUES (18, '2021-09-08 14:09:23', '2021-09-10 05:49:08', 5, 'hashcat2-project', 'finish', '?l?l?l?l?l?l?l', 456976, 0, 3, 18, 8031810176);
INSERT INTO `tb_hashcat_project` VALUES (21, '2021-09-10 12:06:23', '2021-09-10 12:18:41', 5, 'yctc_yyds_project', 'finish', '?l?l?l?l?l?l?l?l', 11881376, 0, 3, 20, 208827064576);
INSERT INTO `tb_hashcat_project` VALUES (23, '2021-09-10 12:48:31', '2021-09-10 13:50:35', 5, 'i-love-yctc-project', 'finish', '?l?l?l?l?l?l?l?l?l', 308915776, 0, 3, 22, 5429503678976);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_speed
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_speed` VALUES (1, '2020-05-09 00:54:56', '2020-05-09 00:54:56', 0, 1, 3, 1, 340);
INSERT INTO `tb_hashcat_speed` VALUES (2, '2020-06-24 21:09:45', '2020-06-24 22:28:46', 1, 1, 0, 33, 2);
INSERT INTO `tb_hashcat_speed` VALUES (3, '2021-09-08 12:52:38', '2021-09-10 13:50:31', 3, 3, 0, 31, 453);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_status
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_status` VALUES (1, '2020-05-06 11:51:12', '2020-05-06 11:52:19', 1, 1, '{\"attempted\":\"218162483680\",\"speedList\":[\"116555125\"],\"status\":\"running\",\"total\":\"235294112000\"}');
INSERT INTO `tb_hashcat_status` VALUES (2, '2021-09-10 05:54:38', '2021-09-10 13:49:32', 409, 3, '{\"attempted\":\"2115206969152\",\"speedList\":[\"665793575\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
INSERT INTO `tb_hashcat_status_log` VALUES (14, '2021-09-10 05:54:38', 3, '{\"attempted\":\"48881467392\",\"speedList\":[\"1079566617\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (15, '2021-09-10 05:55:38', 3, '{\"attempted\":\"93300719616\",\"speedList\":[\"765628176\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (16, '2021-09-10 05:56:38', 3, '{\"attempted\":\"136743223296\",\"speedList\":[\"709769107\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (17, '2021-09-10 05:57:38', 3, '{\"attempted\":\"177996300288\",\"speedList\":[\"674564946\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (18, '2021-09-10 05:58:38', 3, '{\"attempted\":\"216171282432\",\"speedList\":[\"616644352\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (19, '2021-09-10 05:59:38', 3, '{\"attempted\":\"253490626560\",\"speedList\":[\"615066068\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (20, '2021-09-10 06:00:38', 3, '{\"attempted\":\"288524599296\",\"speedList\":[\"607763700\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (21, '2021-09-10 06:01:39', 3, '{\"attempted\":\"324099637248\",\"speedList\":[\"565346246\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (22, '2021-09-10 06:02:39', 3, '{\"attempted\":\"359334936576\",\"speedList\":[\"575286403\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (23, '2021-09-10 06:03:39', 3, '{\"attempted\":\"394137698304\",\"speedList\":[\"569102983\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (24, '2021-09-10 06:04:39', 3, '{\"attempted\":\"3021149595008\",\"speedList\":[\"590350548\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (25, '2021-09-10 06:05:39', 3, '{\"attempted\":\"3055592170880\",\"speedList\":[\"551529594\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (26, '2021-09-10 06:06:39', 3, '{\"attempted\":\"3089146078592\",\"speedList\":[\"551733182\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (27, '2021-09-10 06:07:40', 3, '{\"attempted\":\"3121134986624\",\"speedList\":[\"553754961\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (28, '2021-09-10 06:08:40', 3, '{\"attempted\":\"3155129296256\",\"speedList\":[\"543238544\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (29, '2021-09-10 06:09:40', 3, '{\"attempted\":\"3188665902464\",\"speedList\":[\"551827085\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (30, '2021-09-10 06:10:40', 3, '{\"attempted\":\"3222491915648\",\"speedList\":[\"557702934\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (31, '2021-09-10 06:11:40', 3, '{\"attempted\":\"3254447793536\",\"speedList\":[\"554492418\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (32, '2021-09-10 06:12:40', 3, '{\"attempted\":\"3288009565568\",\"speedList\":[\"552319092\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (33, '2021-09-10 06:13:40', 3, '{\"attempted\":\"3320745584000\",\"speedList\":[\"547297958\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (34, '2021-09-10 06:14:41', 3, '{\"attempted\":\"1275946184640\",\"speedList\":[\"593033044\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (35, '2021-09-10 06:15:41', 3, '{\"attempted\":\"1309294047168\",\"speedList\":[\"561868558\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (36, '2021-09-10 06:16:41', 3, '{\"attempted\":\"1340369121216\",\"speedList\":[\"539133618\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (37, '2021-09-10 06:17:41', 3, '{\"attempted\":\"1373356797888\",\"speedList\":[\"539943464\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (38, '2021-09-10 06:18:41', 3, '{\"attempted\":\"1406201343936\",\"speedList\":[\"539306372\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (39, '2021-09-10 06:19:41', 3, '{\"attempted\":\"1439138688960\",\"speedList\":[\"539462825\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (40, '2021-09-10 06:20:42', 3, '{\"attempted\":\"1471404421056\",\"speedList\":[\"510843606\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (41, '2021-09-10 06:21:42', 3, '{\"attempted\":\"1502089424832\",\"speedList\":[\"527236734\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (42, '2021-09-10 06:22:42', 3, '{\"attempted\":\"1535152598976\",\"speedList\":[\"551241105\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (43, '2021-09-10 06:23:42', 3, '{\"attempted\":\"1567732903872\",\"speedList\":[\"540928907\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4259608139072\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (44, '2021-09-10 06:24:42', 3, '{\"attempted\":\"3551374904384\",\"speedList\":[\"556181182\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (45, '2021-09-10 06:25:43', 3, '{\"attempted\":\"3583255284800\",\"speedList\":[\"552840792\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (46, '2021-09-10 06:26:43', 3, '{\"attempted\":\"3615374740544\",\"speedList\":[\"524971130\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (47, '2021-09-10 06:27:43', 3, '{\"attempted\":\"3648584191040\",\"speedList\":[\"548674811\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (48, '2021-09-10 06:28:43', 3, '{\"attempted\":\"3681692978240\",\"speedList\":[\"543907661\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (49, '2021-09-10 06:29:43', 3, '{\"attempted\":\"3712395283520\",\"speedList\":[\"528849862\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (50, '2021-09-10 06:30:43', 3, '{\"attempted\":\"3744736513088\",\"speedList\":[\"530743340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (51, '2021-09-10 06:31:44', 3, '{\"attempted\":\"3776906300480\",\"speedList\":[\"528579931\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (52, '2021-09-10 06:32:44', 3, '{\"attempted\":\"3809038339136\",\"speedList\":[\"528805660\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (53, '2021-09-10 06:33:44', 3, '{\"attempted\":\"3841958382656\",\"speedList\":[\"537500311\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (54, '2021-09-10 06:34:45', 3, '{\"attempted\":\"5556928512\",\"speedList\":[\"620860268\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (55, '2021-09-10 06:35:45', 3, '{\"attempted\":\"38665715712\",\"speedList\":[\"554183364\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (56, '2021-09-10 06:36:45', 3, '{\"attempted\":\"70835503104\",\"speedList\":[\"535504027\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (57, '2021-09-10 06:37:45', 3, '{\"attempted\":\"103156285440\",\"speedList\":[\"571885099\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (58, '2021-09-10 06:38:45', 3, '{\"attempted\":\"133539299328\",\"speedList\":[\"526052829\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (59, '2021-09-10 06:39:45', 3, '{\"attempted\":\"165444845568\",\"speedList\":[\"497986399\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (60, '2021-09-10 06:40:46', 3, '{\"attempted\":\"197068849152\",\"speedList\":[\"513808019\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (61, '2021-09-10 06:41:46', 3, '{\"attempted\":\"229075058688\",\"speedList\":[\"533710201\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (62, '2021-09-10 06:42:46', 3, '{\"attempted\":\"259319660544\",\"speedList\":[\"514971645\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (63, '2021-09-10 06:43:46', 3, '{\"attempted\":\"290948382720\",\"speedList\":[\"520412331\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (64, '2021-09-10 06:44:46', 3, '{\"attempted\":\"316773236736\",\"speedList\":[\"517547921\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (65, '2021-09-10 06:45:46', 3, '{\"attempted\":\"32320782336\",\"speedList\":[\"532962452\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (66, '2021-09-10 06:46:47', 3, '{\"attempted\":\"64666730496\",\"speedList\":[\"520271258\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (67, '2021-09-10 06:47:47', 3, '{\"attempted\":\"94559010816\",\"speedList\":[\"517995715\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (68, '2021-09-10 06:48:47', 3, '{\"attempted\":\"126149984256\",\"speedList\":[\"519196397\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (69, '2021-09-10 06:49:47', 3, '{\"attempted\":\"158080696320\",\"speedList\":[\"554296513\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (70, '2021-09-10 06:50:47', 3, '{\"attempted\":\"188904112128\",\"speedList\":[\"511663744\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (71, '2021-09-10 06:51:47', 3, '{\"attempted\":\"221434085376\",\"speedList\":[\"537827341\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (72, '2021-09-10 06:52:48', 3, '{\"attempted\":\"251972812800\",\"speedList\":[\"531234753\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (73, '2021-09-10 06:53:48', 3, '{\"attempted\":\"281500188672\",\"speedList\":[\"483466610\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (74, '2021-09-10 06:54:48', 3, '{\"attempted\":\"311115644928\",\"speedList\":[\"520238976\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (75, '2021-09-10 06:55:48', 3, '{\"attempted\":\"27246723072\",\"speedList\":[\"563924048\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (76, '2021-09-10 06:56:48', 3, '{\"attempted\":\"59688615936\",\"speedList\":[\"533724812\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (77, '2021-09-10 06:57:48', 3, '{\"attempted\":\"92047147008\",\"speedList\":[\"533374321\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (78, '2021-09-10 06:58:49', 3, '{\"attempted\":\"123990441984\",\"speedList\":[\"533008104\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (79, '2021-09-10 06:59:49', 3, '{\"attempted\":\"156520415232\",\"speedList\":[\"579276909\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (80, '2021-09-10 07:00:49', 3, '{\"attempted\":\"187721318400\",\"speedList\":[\"543339955\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (81, '2021-09-10 07:01:49', 3, '{\"attempted\":\"219324874752\",\"speedList\":[\"519777767\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (82, '2021-09-10 07:02:49', 3, '{\"attempted\":\"249619808256\",\"speedList\":[\"505096309\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (83, '2021-09-10 07:03:49', 3, '{\"attempted\":\"275243335680\",\"speedList\":[\"476140970\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (84, '2021-09-10 07:04:49', 3, '{\"attempted\":\"304292560896\",\"speedList\":[\"477481950\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (85, '2021-09-10 07:05:50', 3, '{\"attempted\":\"20234895360\",\"speedList\":[\"514407097\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (86, '2021-09-10 07:06:50', 3, '{\"attempted\":\"50265587712\",\"speedList\":[\"501845992\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (87, '2021-09-10 07:07:50', 3, '{\"attempted\":\"80837345280\",\"speedList\":[\"502925360\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (88, '2021-09-10 07:08:50', 3, '{\"attempted\":\"109639630848\",\"speedList\":[\"503537825\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (89, '2021-09-10 07:09:50', 3, '{\"attempted\":\"139267670016\",\"speedList\":[\"490442200\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (90, '2021-09-10 07:10:51', 3, '{\"attempted\":\"169474523136\",\"speedList\":[\"498848440\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (91, '2021-09-10 07:11:51', 3, '{\"attempted\":\"199648346112\",\"speedList\":[\"496935829\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (92, '2021-09-10 07:12:51', 3, '{\"attempted\":\"229955862528\",\"speedList\":[\"497531867\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (93, '2021-09-10 07:13:51', 3, '{\"attempted\":\"259022389248\",\"speedList\":[\"502846466\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (94, '2021-09-10 07:14:51', 3, '{\"attempted\":\"289795473408\",\"speedList\":[\"506389720\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (95, '2021-09-10 07:15:51', 3, '{\"attempted\":\"3010707350912\",\"speedList\":[\"608045699\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (96, '2021-09-10 07:16:51', 3, '{\"attempted\":\"3040428189056\",\"speedList\":[\"537143622\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (97, '2021-09-10 07:17:52', 3, '{\"attempted\":\"3071264187776\",\"speedList\":[\"502713406\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (98, '2021-09-10 07:18:52', 3, '{\"attempted\":\"3102200849792\",\"speedList\":[\"506506054\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (99, '2021-09-10 07:19:52', 3, '{\"attempted\":\"3132785190272\",\"speedList\":[\"501392935\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (100, '2021-09-10 07:20:52', 3, '{\"attempted\":\"3161977546112\",\"speedList\":[\"506150318\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (101, '2021-09-10 07:21:52', 3, '{\"attempted\":\"3192574469504\",\"speedList\":[\"503447741\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (102, '2021-09-10 07:22:52', 3, '{\"attempted\":\"3223397885312\",\"speedList\":[\"504428972\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (103, '2021-09-10 07:23:52', 3, '{\"attempted\":\"3254183552384\",\"speedList\":[\"505730720\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (104, '2021-09-10 07:24:52', 3, '{\"attempted\":\"3284893721984\",\"speedList\":[\"506398242\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (105, '2021-09-10 07:25:53', 3, '{\"attempted\":\"5003280384\",\"speedList\":[\"561151019\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (106, '2021-09-10 07:26:53', 3, '{\"attempted\":\"35172384768\",\"speedList\":[\"504398134\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (107, '2021-09-10 07:27:53', 3, '{\"attempted\":\"65434288128\",\"speedList\":[\"494491059\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (108, '2021-09-10 07:28:53', 3, '{\"attempted\":\"93967613952\",\"speedList\":[\"493805575\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (109, '2021-09-10 07:29:53', 3, '{\"attempted\":\"124665200640\",\"speedList\":[\"507564843\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (110, '2021-09-10 07:30:54', 3, '{\"attempted\":\"155664777216\",\"speedList\":[\"480143932\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (111, '2021-09-10 07:31:54', 3, '{\"attempted\":\"185926680576\",\"speedList\":[\"496892313\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (112, '2021-09-10 07:32:54', 3, '{\"attempted\":\"216561352704\",\"speedList\":[\"502643770\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (113, '2021-09-10 07:33:54', 3, '{\"attempted\":\"244482834432\",\"speedList\":[\"488946046\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (114, '2021-09-10 07:34:54', 3, '{\"attempted\":\"273695637504\",\"speedList\":[\"475359807\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (115, '2021-09-10 07:35:54', 3, '{\"attempted\":\"1409286144\",\"speedList\":[\"505043204\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (116, '2021-09-10 07:36:55', 3, '{\"attempted\":\"29280436224\",\"speedList\":[\"483247200\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (117, '2021-09-10 07:37:55', 3, '{\"attempted\":\"58296631296\",\"speedList\":[\"458733661\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (118, '2021-09-10 07:38:55', 3, '{\"attempted\":\"87547183104\",\"speedList\":[\"476982690\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (119, '2021-09-10 07:39:55', 3, '{\"attempted\":\"117628207104\",\"speedList\":[\"491830041\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (120, '2021-09-10 07:40:55', 3, '{\"attempted\":\"145209950208\",\"speedList\":[\"482701073\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (121, '2021-09-10 07:41:55', 3, '{\"attempted\":\"174578466816\",\"speedList\":[\"489255284\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (122, '2021-09-10 07:42:55', 3, '{\"attempted\":\"205099892736\",\"speedList\":[\"496985813\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (123, '2021-09-10 07:43:55', 3, '{\"attempted\":\"236124635136\",\"speedList\":[\"512718863\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (124, '2021-09-10 07:44:55', 3, '{\"attempted\":\"270944698368\",\"speedList\":[\"564087815\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (125, '2021-09-10 07:45:56', 3, '{\"attempted\":\"302284013568\",\"speedList\":[\"570874878\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (126, '2021-09-10 07:46:56', 3, '{\"attempted\":\"30387732480\",\"speedList\":[\"591721385\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (127, '2021-09-10 07:47:56', 3, '{\"attempted\":\"64691896320\",\"speedList\":[\"561794572\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (128, '2021-09-10 07:48:56', 3, '{\"attempted\":\"98857648128\",\"speedList\":[\"562038110\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (129, '2021-09-10 07:49:56', 3, '{\"attempted\":\"133048565760\",\"speedList\":[\"562340976\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (130, '2021-09-10 07:50:56', 3, '{\"attempted\":\"166962659328\",\"speedList\":[\"570418776\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (131, '2021-09-10 07:51:56', 3, '{\"attempted\":\"200101330944\",\"speedList\":[\"573681822\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (132, '2021-09-10 07:52:57', 3, '{\"attempted\":\"235432574976\",\"speedList\":[\"583081189\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (133, '2021-09-10 07:53:57', 3, '{\"attempted\":\"269849985024\",\"speedList\":[\"558490023\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (134, '2021-09-10 07:54:57', 3, '{\"attempted\":\"305097867264\",\"speedList\":[\"574302306\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (135, '2021-09-10 07:55:57', 3, '{\"attempted\":\"340433829888\",\"speedList\":[\"578997628\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (136, '2021-09-10 07:56:57', 3, '{\"attempted\":\"25887768576\",\"speedList\":[\"612972506\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (137, '2021-09-10 07:57:58', 3, '{\"attempted\":\"61412474880\",\"speedList\":[\"594749972\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (138, '2021-09-10 07:58:58', 3, '{\"attempted\":\"96396115968\",\"speedList\":[\"579379758\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (139, '2021-09-10 07:59:58', 3, '{\"attempted\":\"132142596096\",\"speedList\":[\"590794174\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (140, '2021-09-10 08:00:58', 3, '{\"attempted\":\"165621006336\",\"speedList\":[\"572559358\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (141, '2021-09-10 08:01:58', 3, '{\"attempted\":\"200662843392\",\"speedList\":[\"575622188\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (142, '2021-09-10 08:02:59', 3, '{\"attempted\":\"236074303488\",\"speedList\":[\"585386253\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (143, '2021-09-10 08:03:59', 3, '{\"attempted\":\"270844035072\",\"speedList\":[\"575404906\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (144, '2021-09-10 08:04:59', 3, '{\"attempted\":\"305601183744\",\"speedList\":[\"573293078\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (145, '2021-09-10 08:05:59', 3, '{\"attempted\":\"339162955776\",\"speedList\":[\"581447742\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (146, '2021-09-10 08:06:59', 3, '{\"attempted\":\"19253428224\",\"speedList\":[\"639600690\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (147, '2021-09-10 08:07:59', 3, '{\"attempted\":\"55654219776\",\"speedList\":[\"570516526\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (148, '2021-09-10 08:08:59', 3, '{\"attempted\":\"90587529216\",\"speedList\":[\"575309441\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (149, '2021-09-10 08:09:59', 3, '{\"attempted\":\"126137401344\",\"speedList\":[\"576240369\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (150, '2021-09-10 08:11:00', 3, '{\"attempted\":\"160970047488\",\"speedList\":[\"580577679\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (151, '2021-09-10 08:12:00', 3, '{\"attempted\":\"194909306880\",\"speedList\":[\"586770809\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (152, '2021-09-10 08:13:00', 3, '{\"attempted\":\"230547259392\",\"speedList\":[\"587931071\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (153, '2021-09-10 08:14:00', 3, '{\"attempted\":\"266155327488\",\"speedList\":[\"590826183\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (154, '2021-09-10 08:15:00', 3, '{\"attempted\":\"301327712256\",\"speedList\":[\"582198266\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (155, '2021-09-10 08:16:01', 3, '{\"attempted\":\"336739172352\",\"speedList\":[\"582939276\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (156, '2021-09-10 08:17:01', 3, '{\"attempted\":\"12921077760\",\"speedList\":[\"614755147\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (157, '2021-09-10 08:18:01', 3, '{\"attempted\":\"48717889536\",\"speedList\":[\"595689655\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (158, '2021-09-10 08:19:01', 3, '{\"attempted\":\"84104183808\",\"speedList\":[\"581281272\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (159, '2021-09-10 08:20:01', 3, '{\"attempted\":\"119138156544\",\"speedList\":[\"579302959\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (160, '2021-09-10 08:21:01', 3, '{\"attempted\":\"152486019072\",\"speedList\":[\"578932405\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (161, '2021-09-10 08:22:02', 3, '{\"attempted\":\"188363046912\",\"speedList\":[\"591295448\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (162, '2021-09-10 08:23:02', 3, '{\"attempted\":\"221861904384\",\"speedList\":[\"546979559\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (163, '2021-09-10 08:24:03', 3, '{\"attempted\":\"257449525248\",\"speedList\":[\"829343393\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (164, '2021-09-10 08:25:03', 3, '{\"attempted\":\"292206673920\",\"speedList\":[\"573121373\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (165, '2021-09-10 08:26:03', 3, '{\"attempted\":\"328305475584\",\"speedList\":[\"596809639\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (166, '2021-09-10 08:27:03', 3, '{\"attempted\":\"9251586048\",\"speedList\":[\"618329332\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (167, '2021-09-10 08:28:03', 3, '{\"attempted\":\"44876955648\",\"speedList\":[\"592618168\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (168, '2021-09-10 08:29:03', 3, '{\"attempted\":\"78841380864\",\"speedList\":[\"589675073\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (169, '2021-09-10 08:30:03', 3, '{\"attempted\":\"114499780608\",\"speedList\":[\"607829880\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (170, '2021-09-10 08:31:03', 3, '{\"attempted\":\"149483421696\",\"speedList\":[\"583624054\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (171, '2021-09-10 08:32:04', 3, '{\"attempted\":\"184290902016\",\"speedList\":[\"572958237\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (172, '2021-09-10 08:33:04', 3, '{\"attempted\":\"219740110848\",\"speedList\":[\"579767710\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (173, '2021-09-10 08:34:04', 3, '{\"attempted\":\"254937661440\",\"speedList\":[\"580524839\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (174, '2021-09-10 08:35:04', 3, '{\"attempted\":\"288398770176\",\"speedList\":[\"580016588\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (175, '2021-09-10 08:36:05', 3, '{\"attempted\":\"323306913792\",\"speedList\":[\"579179708\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (176, '2021-09-10 08:37:05', 3, '{\"attempted\":\"4298637312\",\"speedList\":[\"736423932\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (177, '2021-09-10 08:38:05', 3, '{\"attempted\":\"39949172736\",\"speedList\":[\"600625534\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (178, '2021-09-10 08:39:06', 3, '{\"attempted\":\"76002361344\",\"speedList\":[\"589660197\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (179, '2021-09-10 08:40:06', 3, '{\"attempted\":\"111887253504\",\"speedList\":[\"587907575\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (180, '2021-09-10 08:41:06', 3, '{\"attempted\":\"145738432512\",\"speedList\":[\"586644293\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (181, '2021-09-10 08:42:06', 3, '{\"attempted\":\"181539962880\",\"speedList\":[\"592065337\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (182, '2021-09-10 08:43:06', 3, '{\"attempted\":\"217228247040\",\"speedList\":[\"599461235\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (183, '2021-09-10 08:44:07', 3, '{\"attempted\":\"252010561536\",\"speedList\":[\"578945536\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (184, '2021-09-10 08:45:07', 3, '{\"attempted\":\"287266308096\",\"speedList\":[\"580878551\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (185, '2021-09-10 08:46:07', 3, '{\"attempted\":\"322564521984\",\"speedList\":[\"581571196\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (186, '2021-09-10 08:47:07', 3, '{\"attempted\":\"350913822720\",\"speedList\":[\"583018254\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (187, '2021-09-10 08:48:07', 3, '{\"attempted\":\"35021389824\",\"speedList\":[\"609528104\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (188, '2021-09-10 08:49:07', 3, '{\"attempted\":\"70697091072\",\"speedList\":[\"582280057\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (189, '2021-09-10 08:50:08', 3, '{\"attempted\":\"104724430848\",\"speedList\":[\"561673418\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (190, '2021-09-10 08:51:08', 3, '{\"attempted\":\"139997478912\",\"speedList\":[\"580779861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (191, '2021-09-10 08:52:08', 3, '{\"attempted\":\"173357924352\",\"speedList\":[\"586173629\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (192, '2021-09-10 08:53:08', 3, '{\"attempted\":\"208819716096\",\"speedList\":[\"588530280\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (193, '2021-09-10 08:54:09', 3, '{\"attempted\":\"244281507840\",\"speedList\":[\"583595371\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (194, '2021-09-10 08:55:09', 3, '{\"attempted\":\"279843962880\",\"speedList\":[\"585462809\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (195, '2021-09-10 08:56:09', 3, '{\"attempted\":\"315326201856\",\"speedList\":[\"589912098\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (196, '2021-09-10 08:57:09', 3, '{\"attempted\":\"349038968832\",\"speedList\":[\"585805283\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (197, '2021-09-10 08:58:09', 3, '{\"attempted\":\"30110908416\",\"speedList\":[\"622754163\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (198, '2021-09-10 08:59:10', 3, '{\"attempted\":\"65731559424\",\"speedList\":[\"579628351\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (199, '2021-09-10 09:00:10', 3, '{\"attempted\":\"100828446720\",\"speedList\":[\"579024315\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (200, '2021-09-10 09:01:10', 3, '{\"attempted\":\"134269108224\",\"speedList\":[\"581964236\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (201, '2021-09-10 09:02:10', 3, '{\"attempted\":\"169290498048\",\"speedList\":[\"576732513\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (202, '2021-09-10 09:03:10', 3, '{\"attempted\":\"204848234496\",\"speedList\":[\"582630258\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (203, '2021-09-10 09:04:10', 3, '{\"attempted\":\"240498769920\",\"speedList\":[\"587789701\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (204, '2021-09-10 09:05:10', 3, '{\"attempted\":\"275243335680\",\"speedList\":[\"576379576\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (205, '2021-09-10 09:06:10', 3, '{\"attempted\":\"309232926720\",\"speedList\":[\"583530655\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (206, '2021-09-10 09:07:11', 3, '{\"attempted\":\"344455643136\",\"speedList\":[\"580278876\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (207, '2021-09-10 09:08:11', 3, '{\"attempted\":\"24402984960\",\"speedList\":[\"620633319\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (208, '2021-09-10 09:09:11', 3, '{\"attempted\":\"57919143936\",\"speedList\":[\"602116539\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (209, '2021-09-10 09:10:11', 3, '{\"attempted\":\"93829201920\",\"speedList\":[\"592694713\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (210, '2021-09-10 09:11:11', 3, '{\"attempted\":\"129592983552\",\"speedList\":[\"586216630\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (211, '2021-09-10 09:12:11', 3, '{\"attempted\":\"165092524032\",\"speedList\":[\"593439022\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (212, '2021-09-10 09:13:11', 3, '{\"attempted\":\"200901918720\",\"speedList\":[\"590493626\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (213, '2021-09-10 09:14:12', 3, '{\"attempted\":\"235067670528\",\"speedList\":[\"592531951\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (214, '2021-09-10 09:15:12', 3, '{\"attempted\":\"270793703424\",\"speedList\":[\"588190646\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (215, '2021-09-10 09:16:12', 3, '{\"attempted\":\"306305826816\",\"speedList\":[\"586107643\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (216, '2021-09-10 09:17:12', 3, '{\"attempted\":\"341981528064\",\"speedList\":[\"585183170\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (217, '2021-09-10 09:18:12', 3, '{\"attempted\":\"3013249099136\",\"speedList\":[\"750585039\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (218, '2021-09-10 09:19:12', 3, '{\"attempted\":\"3049876383104\",\"speedList\":[\"637234976\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (219, '2021-09-10 09:20:12', 3, '{\"attempted\":\"3085765993856\",\"speedList\":[\"591630108\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (220, '2021-09-10 09:21:13', 3, '{\"attempted\":\"3121663468928\",\"speedList\":[\"594108619\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (221, '2021-09-10 09:22:13', 3, '{\"attempted\":\"3157389501824\",\"speedList\":[\"587883368\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (222, '2021-09-10 09:23:13', 3, '{\"attempted\":\"3190888359296\",\"speedList\":[\"580733363\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (223, '2021-09-10 09:24:13', 3, '{\"attempted\":\"3225934914944\",\"speedList\":[\"577797226\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (224, '2021-09-10 09:25:13', 3, '{\"attempted\":\"3261233128832\",\"speedList\":[\"577400864\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (225, '2021-09-10 09:26:14', 3, '{\"attempted\":\"3296292267392\",\"speedList\":[\"577405878\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (226, '2021-09-10 09:27:14', 3, '{\"attempted\":\"3331548013952\",\"speedList\":[\"579876618\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"4949544668640\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (227, '2021-09-10 09:28:14', 3, '{\"attempted\":\"8358199296\",\"speedList\":[\"703013152\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (228, '2021-09-10 09:29:14', 3, '{\"attempted\":\"42184212480\",\"speedList\":[\"606737914\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (229, '2021-09-10 09:30:15', 3, '{\"attempted\":\"77973159936\",\"speedList\":[\"593030621\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (230, '2021-09-10 09:31:15', 3, '{\"attempted\":\"113636278272\",\"speedList\":[\"592600873\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (231, '2021-09-10 09:32:15', 3, '{\"attempted\":\"148690698240\",\"speedList\":[\"579983315\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (232, '2021-09-10 09:33:15', 3, '{\"attempted\":\"184240570368\",\"speedList\":[\"584821879\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (233, '2021-09-10 09:34:15', 3, '{\"attempted\":\"218142081024\",\"speedList\":[\"573816326\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (234, '2021-09-10 09:35:16', 3, '{\"attempted\":\"253603872768\",\"speedList\":[\"581876481\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (235, '2021-09-10 09:36:16', 3, '{\"attempted\":\"289027915776\",\"speedList\":[\"581730529\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (236, '2021-09-10 09:37:17', 3, '{\"attempted\":\"324791697408\",\"speedList\":[\"593352814\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (237, '2021-09-10 09:38:17', 3, '{\"attempted\":\"2491416576\",\"speedList\":[\"880006527\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (238, '2021-09-10 09:39:17', 3, '{\"attempted\":\"39357775872\",\"speedList\":[\"620344674\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (239, '2021-09-10 09:40:17', 3, '{\"attempted\":\"72793718784\",\"speedList\":[\"577963445\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (240, '2021-09-10 09:41:17', 3, '{\"attempted\":\"108091932672\",\"speedList\":[\"584175377\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (241, '2021-09-10 09:42:17', 3, '{\"attempted\":\"143641804800\",\"speedList\":[\"585742190\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (242, '2021-09-10 09:43:17', 3, '{\"attempted\":\"178348621824\",\"speedList\":[\"568871714\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (243, '2021-09-10 09:44:17', 3, '{\"attempted\":\"213948825600\",\"speedList\":[\"589318875\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (244, '2021-09-10 09:45:18', 3, '{\"attempted\":\"248290738176\",\"speedList\":[\"594113513\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (245, '2021-09-10 09:46:18', 3, '{\"attempted\":\"283357741056\",\"speedList\":[\"575812805\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (246, '2021-09-10 09:47:18', 3, '{\"attempted\":\"318744035328\",\"speedList\":[\"582650879\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (247, '2021-09-10 09:48:18', 3, '{\"attempted\":\"350850908160\",\"speedList\":[\"586810704\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (248, '2021-09-10 09:49:18', 3, '{\"attempted\":\"31880380416\",\"speedList\":[\"620360130\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (249, '2021-09-10 09:50:19', 3, '{\"attempted\":\"66247458816\",\"speedList\":[\"541201974\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (250, '2021-09-10 09:51:19', 3, '{\"attempted\":\"100211884032\",\"speedList\":[\"573557426\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (251, '2021-09-10 09:52:19', 3, '{\"attempted\":\"135082278912\",\"speedList\":[\"574267979\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (252, '2021-09-10 09:53:19', 3, '{\"attempted\":\"159221022720\",\"speedList\":[\"180164334\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (253, '2021-09-10 09:54:19', 3, '{\"attempted\":\"183812751360\",\"speedList\":[\"336032149\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (254, '2021-09-10 09:55:20', 3, '{\"attempted\":\"220708995072\",\"speedList\":[\"668294948\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (255, '2021-09-10 09:56:20', 3, '{\"attempted\":\"255025741824\",\"speedList\":[\"612831639\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (256, '2021-09-10 09:57:20', 3, '{\"attempted\":\"292785487872\",\"speedList\":[\"621522014\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (257, '2021-09-10 09:58:20', 3, '{\"attempted\":\"330142580736\",\"speedList\":[\"612731451\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (258, '2021-09-10 09:59:20', 3, '{\"attempted\":\"26089095168\",\"speedList\":[\"665347675\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (259, '2021-09-10 10:00:20', 3, '{\"attempted\":\"63672680448\",\"speedList\":[\"614768725\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (260, '2021-09-10 10:01:20', 3, '{\"attempted\":\"101948325888\",\"speedList\":[\"625339622\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (261, '2021-09-10 10:02:21', 3, '{\"attempted\":\"140437880832\",\"speedList\":[\"633010302\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (262, '2021-09-10 10:03:21', 3, '{\"attempted\":\"175635431424\",\"speedList\":[\"605079026\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (263, '2021-09-10 10:04:21', 3, '{\"attempted\":\"213143519232\",\"speedList\":[\"654893274\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (264, '2021-09-10 10:05:21', 3, '{\"attempted\":\"251821817856\",\"speedList\":[\"636873255\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (265, '2021-09-10 10:06:21', 3, '{\"attempted\":\"288197443584\",\"speedList\":[\"625588147\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (266, '2021-09-10 10:07:23', 3, '{\"attempted\":\"326133350400\",\"speedList\":[\"626686764\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (267, '2021-09-10 10:08:25', 3, '{\"attempted\":\"364559990784\",\"speedList\":[\"641687039\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (268, '2021-09-10 10:09:26', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (269, '2021-09-10 10:10:27', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (270, '2021-09-10 10:11:28', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (271, '2021-09-10 10:12:31', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (272, '2021-09-10 10:13:32', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (273, '2021-09-10 10:14:33', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (274, '2021-09-10 10:15:34', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (275, '2021-09-10 10:16:42', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (276, '2021-09-10 10:17:43', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (277, '2021-09-10 10:18:43', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (278, '2021-09-10 10:19:44', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (279, '2021-09-10 10:20:44', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (280, '2021-09-10 10:21:44', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (281, '2021-09-10 10:22:44', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (282, '2021-09-10 10:23:44', 3, '{\"attempted\":\"372213547008\",\"speedList\":[\"632929504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (283, '2021-09-10 10:24:45', 3, '{\"attempted\":\"45149061120\",\"speedList\":[\"1069997946\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (284, '2021-09-10 10:25:45', 3, '{\"attempted\":\"92890202112\",\"speedList\":[\"779980876\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (285, '2021-09-10 10:26:46', 3, '{\"attempted\":\"136302821376\",\"speedList\":[\"750615830\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (286, '2021-09-10 10:27:46', 3, '{\"attempted\":\"179279757312\",\"speedList\":[\"702133972\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (287, '2021-09-10 10:28:46', 3, '{\"attempted\":\"220797075456\",\"speedList\":[\"670965230\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (288, '2021-09-10 10:29:46', 3, '{\"attempted\":\"260414373888\",\"speedList\":[\"688534312\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (289, '2021-09-10 10:30:46', 3, '{\"attempted\":\"299960893440\",\"speedList\":[\"654117145\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (290, '2021-09-10 10:31:47', 3, '{\"attempted\":\"337871634432\",\"speedList\":[\"623392852\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (291, '2021-09-10 10:32:47', 3, '{\"attempted\":\"375618797568\",\"speedList\":[\"624665998\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (292, '2021-09-10 10:33:48', 3, '{\"attempted\":\"411528855552\",\"speedList\":[\"622830796\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (293, '2021-09-10 10:34:49', 3, '{\"attempted\":\"421069848576\",\"speedList\":[\"628229674\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (294, '2021-09-10 10:35:49', 3, '{\"attempted\":\"3582097656896\",\"speedList\":[\"825921220\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (295, '2021-09-10 10:36:49', 3, '{\"attempted\":\"3619920317504\",\"speedList\":[\"621330069\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (296, '2021-09-10 10:37:49', 3, '{\"attempted\":\"3655621184576\",\"speedList\":[\"610358395\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (297, '2021-09-10 10:38:49', 3, '{\"attempted\":\"3692600790080\",\"speedList\":[\"609109405\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (298, '2021-09-10 10:39:49', 3, '{\"attempted\":\"3729232792640\",\"speedList\":[\"603158658\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (299, '2021-09-10 10:40:50', 3, '{\"attempted\":\"3766061403200\",\"speedList\":[\"601176368\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (300, '2021-09-10 10:41:50', 3, '{\"attempted\":\"3802064260160\",\"speedList\":[\"569240662\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (301, '2021-09-10 10:42:50', 3, '{\"attempted\":\"3836418755648\",\"speedList\":[\"591235312\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (302, '2021-09-10 10:43:50', 3, '{\"attempted\":\"3871825497152\",\"speedList\":[\"578833285\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (303, '2021-09-10 10:44:50', 3, '{\"attempted\":\"3907513781312\",\"speedList\":[\"585238214\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (304, '2021-09-10 10:45:50', 3, '{\"attempted\":\"25359286272\",\"speedList\":[\"646531340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (305, '2021-09-10 10:46:50', 3, '{\"attempted\":\"61714464768\",\"speedList\":[\"611438737\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (306, '2021-09-10 10:47:51', 3, '{\"attempted\":\"98354331648\",\"speedList\":[\"604519540\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (307, '2021-09-10 10:48:51', 3, '{\"attempted\":\"134734675968\",\"speedList\":[\"596171041\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (308, '2021-09-10 10:49:51', 3, '{\"attempted\":\"171374542848\",\"speedList\":[\"614666527\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (309, '2021-09-10 10:50:51', 3, '{\"attempted\":\"205250887680\",\"speedList\":[\"595420033\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (310, '2021-09-10 10:51:51', 3, '{\"attempted\":\"243727859712\",\"speedList\":[\"634007457\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (311, '2021-09-10 10:52:51', 3, '{\"attempted\":\"281462439936\",\"speedList\":[\"621615985\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (312, '2021-09-10 10:53:51', 3, '{\"attempted\":\"319876497408\",\"speedList\":[\"627306525\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (313, '2021-09-10 10:54:51', 3, '{\"attempted\":\"357736906752\",\"speedList\":[\"624896469\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (314, '2021-09-10 10:55:51', 3, '{\"attempted\":\"22809673728\",\"speedList\":[\"688515878\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (315, '2021-09-10 10:56:52', 3, '{\"attempted\":\"60015771648\",\"speedList\":[\"650378811\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (316, '2021-09-10 10:57:52', 3, '{\"attempted\":\"98933145600\",\"speedList\":[\"642767768\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (317, '2021-09-10 10:58:52', 3, '{\"attempted\":\"138500112384\",\"speedList\":[\"647014381\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (318, '2021-09-10 10:59:52', 3, '{\"attempted\":\"179619495936\",\"speedList\":[\"674795508\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (319, '2021-09-10 11:00:52', 3, '{\"attempted\":\"219463286784\",\"speedList\":[\"653835076\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (320, '2021-09-10 11:01:52', 3, '{\"attempted\":\"258229665792\",\"speedList\":[\"686267999\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (321, '2021-09-10 11:02:52', 3, '{\"attempted\":\"298463526912\",\"speedList\":[\"663232460\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (322, '2021-09-10 11:03:52', 3, '{\"attempted\":\"338450448384\",\"speedList\":[\"660102786\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (323, '2021-09-10 11:04:52', 3, '{\"attempted\":\"377929334784\",\"speedList\":[\"649321569\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (324, '2021-09-10 11:05:53', 3, '{\"attempted\":\"17277911040\",\"speedList\":[\"719737700\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (325, '2021-09-10 11:06:53', 3, '{\"attempted\":\"55205953536\",\"speedList\":[\"632514583\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (326, '2021-09-10 11:07:53', 3, '{\"attempted\":\"95326568448\",\"speedList\":[\"658321835\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (327, '2021-09-10 11:08:53', 3, '{\"attempted\":\"133979701248\",\"speedList\":[\"634601903\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (328, '2021-09-10 11:09:53', 3, '{\"attempted\":\"173534085120\",\"speedList\":[\"647931374\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (329, '2021-09-10 11:10:53', 3, '{\"attempted\":\"213709750272\",\"speedList\":[\"678154937\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (330, '2021-09-10 11:11:53', 3, '{\"attempted\":\"251431747584\",\"speedList\":[\"657812039\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (331, '2021-09-10 11:12:54', 3, '{\"attempted\":\"291980181504\",\"speedList\":[\"662390441\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (332, '2021-09-10 11:13:54', 3, '{\"attempted\":\"332956434432\",\"speedList\":[\"669763505\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (333, '2021-09-10 11:14:54', 3, '{\"attempted\":\"374498918400\",\"speedList\":[\"673657397\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (334, '2021-09-10 11:15:54', 3, '{\"attempted\":\"11373379584\",\"speedList\":[\"759369360\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (335, '2021-09-10 11:16:54', 3, '{\"attempted\":\"51750371328\",\"speedList\":[\"710461831\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (336, '2021-09-10 11:17:54', 3, '{\"attempted\":\"93892116480\",\"speedList\":[\"693014060\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (337, '2021-09-10 11:18:54', 3, '{\"attempted\":\"135409434624\",\"speedList\":[\"685651542\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (338, '2021-09-10 11:19:54', 3, '{\"attempted\":\"176662511616\",\"speedList\":[\"676503692\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (339, '2021-09-10 11:20:55', 3, '{\"attempted\":\"217915588608\",\"speedList\":[\"671992212\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (340, '2021-09-10 11:21:55', 3, '{\"attempted\":\"256442892288\",\"speedList\":[\"667557120\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (341, '2021-09-10 11:22:55', 3, '{\"attempted\":\"297997959168\",\"speedList\":[\"682519908\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (342, '2021-09-10 11:23:55', 3, '{\"attempted\":\"337393483776\",\"speedList\":[\"649719447\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (343, '2021-09-10 11:24:55', 3, '{\"attempted\":\"377803505664\",\"speedList\":[\"651528396\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (344, '2021-09-10 11:25:55', 3, '{\"attempted\":\"4399300608\",\"speedList\":[\"755192667\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (345, '2021-09-10 11:26:55', 3, '{\"attempted\":\"43241177088\",\"speedList\":[\"681160219\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (346, '2021-09-10 11:27:55', 3, '{\"attempted\":\"84381007872\",\"speedList\":[\"685078548\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (347, '2021-09-10 11:28:55', 3, '{\"attempted\":\"125722165248\",\"speedList\":[\"691079882\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (348, '2021-09-10 11:29:56', 3, '{\"attempted\":\"167314980864\",\"speedList\":[\"674868709\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (349, '2021-09-10 11:30:56', 3, '{\"attempted\":\"210480660480\",\"speedList\":[\"694326141\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (350, '2021-09-10 11:31:56', 3, '{\"attempted\":\"250752270336\",\"speedList\":[\"697843225\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (351, '2021-09-10 11:32:56', 3, '{\"attempted\":\"292621910016\",\"speedList\":[\"689746493\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (352, '2021-09-10 11:33:56', 3, '{\"attempted\":\"335367634944\",\"speedList\":[\"706006120\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (353, '2021-09-10 11:34:56', 3, '{\"attempted\":\"375706877952\",\"speedList\":[\"681404910\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (354, '2021-09-10 11:35:56', 3, '{\"attempted\":\"411415609344\",\"speedList\":[\"688451609\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (355, '2021-09-10 11:36:57', 3, '{\"attempted\":\"3033542190464\",\"speedList\":[\"799649832\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (356, '2021-09-10 11:37:57', 3, '{\"attempted\":\"3075072091520\",\"speedList\":[\"689257864\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (357, '2021-09-10 11:38:57', 3, '{\"attempted\":\"3115243038080\",\"speedList\":[\"666239568\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (358, '2021-09-10 11:39:57', 3, '{\"attempted\":\"3155715974528\",\"speedList\":[\"691622539\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (359, '2021-09-10 11:40:57', 3, '{\"attempted\":\"3195501569408\",\"speedList\":[\"656943749\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (360, '2021-09-10 11:41:57', 3, '{\"attempted\":\"3233663968640\",\"speedList\":[\"661077461\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (361, '2021-09-10 11:42:57', 3, '{\"attempted\":\"3274174653824\",\"speedList\":[\"672483658\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (362, '2021-09-10 11:43:57', 3, '{\"attempted\":\"3303744497024\",\"speedList\":[\"541252966\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (363, '2021-09-10 11:44:58', 3, '{\"attempted\":\"3342883644800\",\"speedList\":[\"652192945\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (364, '2021-09-10 11:45:58', 3, '{\"attempted\":\"3382203671936\",\"speedList\":[\"635407709\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (365, '2021-09-10 11:46:58', 3, '{\"attempted\":\"21928869888\",\"speedList\":[\"662176118\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (366, '2021-09-10 11:47:58', 3, '{\"attempted\":\"61638967296\",\"speedList\":[\"628686884\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (367, '2021-09-10 11:48:58', 3, '{\"attempted\":\"91090845696\",\"speedList\":[\"516033323\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (368, '2021-09-10 11:49:58', 3, '{\"attempted\":\"122719567872\",\"speedList\":[\"620900949\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (369, '2021-09-10 11:50:58', 3, '{\"attempted\":\"160353484800\",\"speedList\":[\"707245760\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (370, '2021-09-10 11:51:59', 3, '{\"attempted\":\"198742376448\",\"speedList\":[\"641313383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (371, '2021-09-10 11:52:59', 3, '{\"attempted\":\"243300040704\",\"speedList\":[\"777936275\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (372, '2021-09-10 11:53:59', 3, '{\"attempted\":\"288725925888\",\"speedList\":[\"748329970\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (373, '2021-09-10 11:54:59', 3, '{\"attempted\":\"333937901568\",\"speedList\":[\"747002514\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (374, '2021-09-10 11:55:59', 3, '{\"attempted\":\"379237957632\",\"speedList\":[\"745407423\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (375, '2021-09-10 11:56:59', 3, '{\"attempted\":\"16376659968\",\"speedList\":[\"781239017\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (376, '2021-09-10 11:57:59', 3, '{\"attempted\":\"53519843328\",\"speedList\":[\"617208409\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (377, '2021-09-10 11:58:59', 3, '{\"attempted\":\"91015348224\",\"speedList\":[\"619025572\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (378, '2021-09-10 12:00:00', 3, '{\"attempted\":\"128359858176\",\"speedList\":[\"616668350\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (379, '2021-09-10 12:01:00', 3, '{\"attempted\":\"166975242240\",\"speedList\":[\"647284602\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (380, '2021-09-10 12:02:00', 3, '{\"attempted\":\"205263470592\",\"speedList\":[\"634747374\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (381, '2021-09-10 12:03:01', 3, '{\"attempted\":\"230043942912\",\"speedList\":[\"426806655\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (382, '2021-09-10 12:04:01', 3, '{\"attempted\":\"274136039424\",\"speedList\":[\"712072740\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (383, '2021-09-10 12:05:02', 3, '{\"attempted\":\"317528211456\",\"speedList\":[\"747267413\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (384, '2021-09-10 12:06:02', 3, '{\"attempted\":\"362899046400\",\"speedList\":[\"746945277\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (385, '2021-09-10 12:07:02', 3, '{\"attempted\":\"387843096576\",\"speedList\":[\"746660443\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2999724041600\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (386, '2021-09-10 12:08:02', 3, '{\"attempted\":\"3573857422400\",\"speedList\":[\"873778845\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (387, '2021-09-10 12:09:02', 3, '{\"attempted\":\"3613613132864\",\"speedList\":[\"644349407\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (388, '2021-09-10 12:10:02', 3, '{\"attempted\":\"3651687451712\",\"speedList\":[\"656347583\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (389, '2021-09-10 12:11:03', 3, '{\"attempted\":\"3684008234048\",\"speedList\":[\"556764094\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (390, '2021-09-10 12:12:04', 3, '{\"attempted\":\"3711174741056\",\"speedList\":[\"579712017\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (391, '2021-09-10 12:13:04', 3, '{\"attempted\":\"3750880119872\",\"speedList\":[\"701096200\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (392, '2021-09-10 12:14:04', 3, '{\"attempted\":\"3793001417792\",\"speedList\":[\"726366610\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (393, '2021-09-10 12:15:05', 3, '{\"attempted\":\"3834669730880\",\"speedList\":[\"681924576\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (394, '2021-09-10 12:16:05', 3, '{\"attempted\":\"3873977175104\",\"speedList\":[\"666771068\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (395, '2021-09-10 12:17:05', 3, '{\"attempted\":\"3915368664128\",\"speedList\":[\"683074573\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (396, '2021-09-10 12:18:05', 3, '{\"attempted\":\"25283788800\",\"speedList\":[\"698941981\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (397, '2021-09-10 13:23:26', 3, '{\"attempted\":\"35008806912\",\"speedList\":[\"969867528\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (398, '2021-09-10 13:24:26', 3, '{\"attempted\":\"77922828288\",\"speedList\":[\"664413874\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (399, '2021-09-10 13:25:26', 3, '{\"attempted\":\"118660005888\",\"speedList\":[\"641511868\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (400, '2021-09-10 13:26:26', 3, '{\"attempted\":\"158747590656\",\"speedList\":[\"628790065\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (401, '2021-09-10 13:27:26', 3, '{\"attempted\":\"196129849344\",\"speedList\":[\"618357124\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (402, '2021-09-10 13:28:26', 3, '{\"attempted\":\"231402897408\",\"speedList\":[\"575892115\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (403, '2021-09-10 13:29:26', 3, '{\"attempted\":\"261169348608\",\"speedList\":[\"385646845\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (404, '2021-09-10 13:30:26', 3, '{\"attempted\":\"291489447936\",\"speedList\":[\"484408049\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (405, '2021-09-10 13:31:27', 3, '{\"attempted\":\"324451958784\",\"speedList\":[\"542476529\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (406, '2021-09-10 13:32:27', 3, '{\"attempted\":\"355426369536\",\"speedList\":[\"539652218\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"929914452896\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (407, '2021-09-10 13:33:27', 3, '{\"attempted\":\"945057987488\",\"speedList\":[\"503867955\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (408, '2021-09-10 13:34:27', 3, '{\"attempted\":\"976334388128\",\"speedList\":[\"511549715\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (409, '2021-09-10 13:35:27', 3, '{\"attempted\":\"1016970902432\",\"speedList\":[\"675395720\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (410, '2021-09-10 13:36:27', 3, '{\"attempted\":\"1057171733408\",\"speedList\":[\"667725887\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (411, '2021-09-10 13:37:27', 3, '{\"attempted\":\"1097355262880\",\"speedList\":[\"702282026\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (412, '2021-09-10 13:38:28', 3, '{\"attempted\":\"1139061324704\",\"speedList\":[\"736285464\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (413, '2021-09-10 13:39:28', 3, '{\"attempted\":\"1178645592992\",\"speedList\":[\"658004569\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (414, '2021-09-10 13:40:28', 3, '{\"attempted\":\"1218564881312\",\"speedList\":[\"657786137\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (415, '2021-09-10 13:41:28', 3, '{\"attempted\":\"1258798742432\",\"speedList\":[\"661537766\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (416, '2021-09-10 13:42:28', 3, '{\"attempted\":\"1298886327200\",\"speedList\":[\"672380445\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"1859828905792\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (417, '2021-09-10 13:43:31', 3, '{\"attempted\":\"1876708882240\",\"speedList\":[\"706602419\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (418, '2021-09-10 13:44:31', 3, '{\"attempted\":\"1917785798464\",\"speedList\":[\"686191356\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (419, '2021-09-10 13:45:32', 3, '{\"attempted\":\"1954035595072\",\"speedList\":[\"636959018\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (420, '2021-09-10 13:46:32', 3, '{\"attempted\":\"1994324506432\",\"speedList\":[\"675679477\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (421, '2021-09-10 13:47:32', 3, '{\"attempted\":\"2034961020736\",\"speedList\":[\"661186146\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (422, '2021-09-10 13:48:32', 3, '{\"attempted\":\"2075320710976\",\"speedList\":[\"705917879\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (423, '2021-09-10 13:49:32', 3, '{\"attempted\":\"2115206969152\",\"speedList\":[\"665793575\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"2789743358688\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=91473 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_task` VALUES (19271, '2021-09-08 12:47:34', '2021-09-08 12:52:38', 3, 16, 'finish', 0, 456976);
INSERT INTO `tb_hashcat_task` VALUES (90918, '2021-09-09 03:24:41', '2021-09-10 05:49:08', 2, 18, 'finish', 0, 456976);
INSERT INTO `tb_hashcat_task` VALUES (91283, '2021-09-10 12:06:38', '2021-09-10 12:18:41', 3, 21, 'finish', 0, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91284, '2021-09-10 12:06:38', '2021-09-10 12:18:40', 3, 21, 'finish', 1697339, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91285, '2021-09-10 12:06:38', '2021-09-10 12:18:40', 3, 21, 'finish', 3394678, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91286, '2021-09-10 12:06:38', '2021-09-10 12:18:40', 3, 21, 'finish', 5092017, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91287, '2021-09-10 12:06:39', '2021-09-10 12:18:40', 3, 21, 'finish', 6789356, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91288, '2021-09-10 12:06:39', '2021-09-10 12:18:40', 3, 21, 'finish', 8486695, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91289, '2021-09-10 12:06:39', '2021-09-10 12:18:40', 3, 21, 'finish', 10184034, 1697339);
INSERT INTO `tb_hashcat_task` VALUES (91290, '2021-09-10 12:06:39', '2021-09-10 12:18:41', 3, 21, 'finish', 11881373, 4);
INSERT INTO `tb_hashcat_task` VALUES (91291, '2021-09-10 13:19:36', '2021-09-10 13:22:51', 2, 23, 'timeout', 0, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91292, '2021-09-10 13:19:36', '2021-09-10 13:22:51', 2, 23, 'timeout', 1706716, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91293, '2021-09-10 13:19:37', '2021-09-10 13:22:51', 2, 23, 'timeout', 3413432, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91294, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 5120148, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91295, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 6826864, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91296, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 8533580, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91297, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 10240296, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91298, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 11947012, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91299, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 13653728, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91300, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 15360444, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91301, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 17067160, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91302, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 18773876, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91303, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 20480592, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91304, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 22187308, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91305, '2021-09-10 13:19:37', '2021-09-10 13:22:52', 2, 23, 'timeout', 23894024, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91306, '2021-09-10 13:19:38', '2021-09-10 13:22:52', 2, 23, 'timeout', 25600740, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91307, '2021-09-10 13:19:38', '2021-09-10 13:22:52', 2, 23, 'timeout', 27307456, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91308, '2021-09-10 13:19:38', '2021-09-10 13:22:52', 2, 23, 'timeout', 29014172, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91309, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 30720888, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91310, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 32427604, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91311, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 34134320, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91312, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 35841036, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91313, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 37547752, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91314, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 39254468, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91315, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 40961184, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91316, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 42667900, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91317, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 44374616, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91318, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 46081332, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91319, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 47788048, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91320, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 49494764, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91321, '2021-09-10 13:19:38', '2021-09-10 13:22:53', 2, 23, 'timeout', 51201480, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91322, '2021-09-10 13:19:38', '2021-09-10 13:32:57', 2, 23, 'timeout', 52908196, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91323, '2021-09-10 13:19:38', '2021-09-10 13:32:57', 2, 23, 'timeout', 54614912, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91324, '2021-09-10 13:19:38', '2021-09-10 13:32:57', 2, 23, 'timeout', 56321628, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91325, '2021-09-10 13:19:38', '2021-09-10 13:32:57', 2, 23, 'timeout', 58028344, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91326, '2021-09-10 13:19:39', '2021-09-10 13:32:57', 2, 23, 'timeout', 59735060, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91327, '2021-09-10 13:19:39', '2021-09-10 13:32:57', 2, 23, 'timeout', 61441776, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91328, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 63148492, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91329, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 64855208, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91330, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 66561924, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91331, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 68268640, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91332, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 69975356, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91333, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 71682072, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91334, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 73388788, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91335, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 75095504, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91336, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 76802220, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91337, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 78508936, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91338, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 80215652, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91339, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 81922368, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91340, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 83629084, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91341, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 85335800, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91342, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 87042516, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91343, '2021-09-10 13:19:39', '2021-09-10 13:32:58', 2, 23, 'timeout', 88749232, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91344, '2021-09-10 13:19:39', '2021-09-10 13:32:59', 2, 23, 'timeout', 90455948, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91345, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 92162664, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91346, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 93869380, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91347, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 95576096, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91348, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 97282812, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91349, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 98989528, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91350, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 100696244, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91351, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 102402960, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91352, '2021-09-10 13:19:40', '2021-09-10 13:32:59', 2, 23, 'timeout', 104109676, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91353, '2021-09-10 13:19:40', '2021-09-10 13:50:31', 3, 23, 'finish', 105816392, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91354, '2021-09-10 13:19:40', '2021-09-10 13:50:31', 3, 23, 'finish', 107523108, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91355, '2021-09-10 13:19:40', '2021-09-10 13:50:31', 3, 23, 'finish', 109229824, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91356, '2021-09-10 13:19:40', '2021-09-10 13:50:31', 3, 23, 'finish', 110936540, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91357, '2021-09-10 13:19:40', '2021-09-10 13:50:31', 3, 23, 'finish', 112643256, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91358, '2021-09-10 13:19:40', '2021-09-10 13:50:32', 3, 23, 'finish', 114349972, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91359, '2021-09-10 13:19:40', '2021-09-10 13:50:32', 3, 23, 'finish', 116056688, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91360, '2021-09-10 13:19:40', '2021-09-10 13:50:32', 3, 23, 'finish', 117763404, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91361, '2021-09-10 13:19:40', '2021-09-10 13:50:32', 3, 23, 'finish', 119470120, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91362, '2021-09-10 13:19:41', '2021-09-10 13:50:32', 3, 23, 'finish', 121176836, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91363, '2021-09-10 13:19:41', '2021-09-10 13:50:32', 3, 23, 'finish', 122883552, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91364, '2021-09-10 13:19:41', '2021-09-10 13:50:32', 3, 23, 'finish', 124590268, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91365, '2021-09-10 13:19:41', '2021-09-10 13:50:32', 3, 23, 'finish', 126296984, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91366, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 128003700, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91367, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 129710416, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91368, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 131417132, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91369, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 133123848, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91370, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 134830564, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91371, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 136537280, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91372, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 138243996, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91373, '2021-09-10 13:19:41', '2021-09-10 13:50:33', 3, 23, 'finish', 139950712, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91374, '2021-09-10 13:19:41', '2021-09-10 13:50:34', 3, 23, 'finish', 141657428, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91375, '2021-09-10 13:19:42', '2021-09-10 13:50:34', 3, 23, 'finish', 143364144, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91376, '2021-09-10 13:19:42', '2021-09-10 13:50:34', 3, 23, 'finish', 145070860, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91377, '2021-09-10 13:19:42', '2021-09-10 13:50:34', 3, 23, 'finish', 146777576, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91378, '2021-09-10 13:19:42', '2021-09-10 13:50:34', 3, 23, 'finish', 148484292, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91379, '2021-09-10 13:19:42', '2021-09-10 13:50:34', 3, 23, 'finish', 150191008, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91380, '2021-09-10 13:19:42', '2021-09-10 13:50:35', 3, 23, 'finish', 151897724, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91381, '2021-09-10 13:19:42', '2021-09-10 13:50:35', 3, 23, 'finish', 153604440, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91382, '2021-09-10 13:19:42', '2021-09-10 13:50:35', 3, 23, 'finish', 155311156, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91383, '2021-09-10 13:19:42', '2021-09-10 13:50:35', 3, 23, 'finish', 157017872, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91384, '2021-09-10 13:19:42', '2021-09-10 13:19:42', 0, 23, 'wait', 158724588, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91385, '2021-09-10 13:19:42', '2021-09-10 13:19:42', 0, 23, 'wait', 160431304, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91386, '2021-09-10 13:19:42', '2021-09-10 13:19:42', 0, 23, 'wait', 162138020, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91387, '2021-09-10 13:19:42', '2021-09-10 13:19:42', 0, 23, 'wait', 163844736, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91388, '2021-09-10 13:19:42', '2021-09-10 13:19:42', 0, 23, 'wait', 165551452, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91389, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 167258168, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91390, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 168964884, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91391, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 170671600, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91392, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 172378316, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91393, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 174085032, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91394, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 175791748, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91395, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 177498464, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91396, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 179205180, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91397, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 180911896, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91398, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 182618612, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91399, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 184325328, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91400, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 186032044, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91401, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 187738760, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91402, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 189445476, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91403, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 191152192, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91404, '2021-09-10 13:19:43', '2021-09-10 13:19:43', 0, 23, 'wait', 192858908, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91405, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 194565624, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91406, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 196272340, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91407, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 197979056, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91408, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 199685772, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91409, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 201392488, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91410, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 203099204, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91411, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 204805920, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91412, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 206512636, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91413, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 208219352, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91414, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 209926068, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91415, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 211632784, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91416, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 213339500, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91417, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 215046216, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91418, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 216752932, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91419, '2021-09-10 13:19:44', '2021-09-10 13:19:44', 0, 23, 'wait', 218459648, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91420, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 220166364, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91421, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 221873080, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91422, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 223579796, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91423, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 225286512, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91424, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 226993228, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91425, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 228699944, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91426, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 230406660, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91427, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 232113376, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91428, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 233820092, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91429, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 235526808, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91430, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 237233524, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91431, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 238940240, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91432, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 240646956, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91433, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 242353672, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91434, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 244060388, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91435, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 245767104, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91436, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 247473820, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91437, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 249180536, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91438, '2021-09-10 13:19:45', '2021-09-10 13:19:45', 0, 23, 'wait', 250887252, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91439, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 252593968, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91440, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 254300684, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91441, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 256007400, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91442, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 257714116, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91443, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 259420832, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91444, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 261127548, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91445, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 262834264, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91446, '2021-09-10 13:19:46', '2021-09-10 13:19:46', 0, 23, 'wait', 264540980, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91447, '2021-09-10 13:19:47', '2021-09-10 13:19:47', 0, 23, 'wait', 266247696, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91448, '2021-09-10 13:19:47', '2021-09-10 13:19:47', 0, 23, 'wait', 267954412, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91449, '2021-09-10 13:19:47', '2021-09-10 13:19:47', 0, 23, 'wait', 269661128, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91450, '2021-09-10 13:19:47', '2021-09-10 13:19:47', 0, 23, 'wait', 271367844, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91451, '2021-09-10 13:19:47', '2021-09-10 13:19:47', 0, 23, 'wait', 273074560, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91452, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 274781276, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91453, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 276487992, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91454, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 278194708, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91455, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 279901424, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91456, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 281608140, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91457, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 283314856, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91458, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 285021572, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91459, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 286728288, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91460, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 288435004, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91461, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 290141720, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91462, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 291848436, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91463, '2021-09-10 13:19:48', '2021-09-10 13:19:48', 0, 23, 'wait', 293555152, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91464, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 295261868, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91465, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 296968584, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91466, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 298675300, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91467, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 300382016, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91468, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 302088732, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91469, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 303795448, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91470, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 305502164, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91471, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 307208880, 1706716);
INSERT INTO `tb_hashcat_task` VALUES (91472, '2021-09-10 13:19:49', '2021-09-10 13:19:49', 0, 23, 'wait', 308915596, 181);
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
) ENGINE=InnoDB AUTO_INCREMENT=6324 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task_result
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_task_result` VALUES (6223, '2021-09-10 12:17:21', '2021-09-10 12:18:41', 2, 91283, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6224, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91284, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6225, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91285, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6226, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91286, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6227, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91287, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6228, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91288, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6229, '2021-09-10 12:17:21', '2021-09-10 12:18:40', 2, 91289, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6230, '2021-09-10 12:17:22', '2021-09-10 12:18:41', 2, 91290, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6231, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91291, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6232, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91292, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6233, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91293, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6234, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91294, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6235, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91295, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6236, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91296, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6237, '2021-09-10 13:22:28', '2021-09-10 13:22:50', 1, 91297, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6238, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91298, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6239, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91299, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6240, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91300, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6241, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91301, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6242, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91302, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6243, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91303, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6244, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91304, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6245, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91305, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6246, '2021-09-10 13:22:29', '2021-09-10 13:22:50', 1, 91306, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6247, '2021-09-10 13:22:30', '2021-09-10 13:22:50', 1, 91307, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6248, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91308, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6249, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91309, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6250, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91310, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6251, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91311, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6252, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91312, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6253, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91313, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6254, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91314, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6255, '2021-09-10 13:22:30', '2021-09-10 13:22:51', 1, 91315, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6256, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91316, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6257, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91317, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6258, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91318, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6259, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91319, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6260, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91320, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6261, '2021-09-10 13:22:31', '2021-09-10 13:22:51', 1, 91321, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6262, '2021-09-10 13:32:49', '2021-09-10 13:32:56', 1, 91322, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6263, '2021-09-10 13:32:49', '2021-09-10 13:32:56', 1, 91323, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6264, '2021-09-10 13:32:49', '2021-09-10 13:32:56', 1, 91324, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6265, '2021-09-10 13:32:49', '2021-09-10 13:32:56', 1, 91325, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6266, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91326, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6267, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91327, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6268, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91328, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6269, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91329, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6270, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91330, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6271, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91331, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6272, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91332, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6273, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91333, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6274, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91334, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6275, '2021-09-10 13:32:50', '2021-09-10 13:32:56', 1, 91335, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6276, '2021-09-10 13:32:51', '2021-09-10 13:32:56', 1, 91336, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6277, '2021-09-10 13:32:51', '2021-09-10 13:32:56', 1, 91337, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6278, '2021-09-10 13:32:51', '2021-09-10 13:32:56', 1, 91338, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6279, '2021-09-10 13:32:51', '2021-09-10 13:32:56', 1, 91339, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6280, '2021-09-10 13:32:51', '2021-09-10 13:32:56', 1, 91340, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6281, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91341, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6282, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91342, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6283, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91343, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6284, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91344, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6285, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91345, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6286, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91346, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6287, '2021-09-10 13:32:51', '2021-09-10 13:32:57', 1, 91347, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6288, '2021-09-10 13:32:52', '2021-09-10 13:32:57', 1, 91348, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6289, '2021-09-10 13:32:52', '2021-09-10 13:32:57', 1, 91349, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6290, '2021-09-10 13:32:52', '2021-09-10 13:32:57', 1, 91350, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6291, '2021-09-10 13:32:52', '2021-09-10 13:32:57', 1, 91351, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6292, '2021-09-10 13:32:52', '2021-09-10 13:32:57', 1, 91352, 3, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6293, '2021-09-10 13:42:56', '2021-09-10 13:50:31', 2, 91353, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6294, '2021-09-10 13:42:56', '2021-09-10 13:50:31', 2, 91354, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6295, '2021-09-10 13:42:56', '2021-09-10 13:50:31', 2, 91355, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6296, '2021-09-10 13:42:56', '2021-09-10 13:50:31', 2, 91356, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6297, '2021-09-10 13:42:56', '2021-09-10 13:50:31', 2, 91357, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6298, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91358, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6299, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91359, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6300, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91360, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6301, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91361, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6302, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91362, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6303, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91363, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6304, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91364, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6305, '2021-09-10 13:42:56', '2021-09-10 13:50:32', 2, 91365, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6306, '2021-09-10 13:42:56', '2021-09-10 13:50:33', 2, 91366, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6307, '2021-09-10 13:42:56', '2021-09-10 13:50:33', 2, 91367, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6308, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91368, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6309, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91369, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6310, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91370, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6311, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91371, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6312, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91372, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6313, '2021-09-10 13:42:57', '2021-09-10 13:50:33', 2, 91373, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6314, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91374, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6315, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91375, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6316, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91376, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6317, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91377, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6318, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91378, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6319, '2021-09-10 13:42:57', '2021-09-10 13:50:34', 2, 91379, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6320, '2021-09-10 13:42:57', '2021-09-10 13:50:35', 2, 91380, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6321, '2021-09-10 13:42:57', '2021-09-10 13:50:35', 2, 91381, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6322, '2021-09-10 13:42:57', '2021-09-10 13:50:35', 2, 91382, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6323, '2021-09-10 13:42:57', '2021-09-10 13:50:35', 2, 91383, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_system
-- ----------------------------
BEGIN;
INSERT INTO `tb_system` VALUES (297, '2021-09-13 12:16:43', '2021-09-13 12:21:39', 14, 'MEMORY', '{\"MEMORY_USE\":[[\"2021-09-13 20:16:43\",5.763759613037109],[\"2021-09-13 20:17:04\",5.550037384033203],[\"2021-09-13 20:17:25\",5.449138641357422],[\"2021-09-13 20:17:46\",5.621746063232422],[\"2021-09-13 20:18:07\",5.711986541748047],[\"2021-09-13 20:18:28\",5.7257232666015625],[\"2021-09-13 20:18:50\",5.571201324462891],[\"2021-09-13 20:19:11\",5.559772491455078],[\"2021-09-13 20:19:32\",5.462383270263672],[\"2021-09-13 20:19:53\",5.950592041015625],[\"2021-09-13 20:20:15\",5.749271392822266],[\"2021-09-13 20:20:36\",5.849483489990234],[\"2021-09-13 20:20:57\",5.854007720947266],[\"2021-09-13 20:21:18\",5.783924102783203],[\"2021-09-13 20:21:39\",5.808815002441406]],\"MEMORY_FREE\":[[\"2021-09-13 20:16:43\",2.2362403869628906],[\"2021-09-13 20:17:04\",2.449962615966797],[\"2021-09-13 20:17:25\",2.550861358642578],[\"2021-09-13 20:17:46\",2.378253936767578],[\"2021-09-13 20:18:07\",2.288013458251953],[\"2021-09-13 20:18:28\",2.2742767333984375],[\"2021-09-13 20:18:50\",2.4287986755371094],[\"2021-09-13 20:19:11\",2.440227508544922],[\"2021-09-13 20:19:32\",2.537616729736328],[\"2021-09-13 20:19:53\",2.049407958984375],[\"2021-09-13 20:20:15\",2.2507286071777344],[\"2021-09-13 20:20:36\",2.1505165100097656],[\"2021-09-13 20:20:57\",2.1459922790527344],[\"2021-09-13 20:21:18\",2.216075897216797],[\"2021-09-13 20:21:39\",2.1911849975585938]]}');
INSERT INTO `tb_system` VALUES (298, '2021-09-13 12:16:43', '2021-09-13 12:21:39', 14, 'CPU', '{\"CPU_IDLE\":[[\"2021-09-13 20:16:43\",0.1442542787],[\"2021-09-13 20:17:04\",0.3142144638],[\"2021-09-13 20:17:25\",0.27680798],[\"2021-09-13 20:17:46\",0.0726817043],[\"2021-09-13 20:18:07\",0.64160401],[\"2021-09-13 20:18:29\",0.5445544554],[\"2021-09-13 20:18:50\",0.1354679803],[\"2021-09-13 20:19:11\",0.2853598015],[\"2021-09-13 20:19:32\",0.0895522388],[\"2021-09-13 20:19:53\",0.2786069652],[\"2021-09-13 20:20:15\",0.2128712871],[\"2021-09-13 20:20:36\",0.5483870968],[\"2021-09-13 20:20:57\",0.343358396],[\"2021-09-13 20:21:18\",0.0970149254],[\"2021-09-13 20:21:39\",0.1546134663]],\"CPU_SYSTEM\":[[\"2021-09-13 20:16:43\",0.3520782396],[\"2021-09-13 20:17:04\",0.1945137157],[\"2021-09-13 20:17:25\",0.1945137157],[\"2021-09-13 20:17:46\",0.3934837093],[\"2021-09-13 20:18:07\",0.1228070175],[\"2021-09-13 20:18:29\",0.2079207921],[\"2021-09-13 20:18:50\",0.2093596059],[\"2021-09-13 20:19:11\",0.1538461538],[\"2021-09-13 20:19:32\",0.1890547264],[\"2021-09-13 20:19:53\",0.2512437811],[\"2021-09-13 20:20:15\",0.2376237624],[\"2021-09-13 20:20:36\",0.1191066998],[\"2021-09-13 20:20:57\",0.2205513784],[\"2021-09-13 20:21:18\",0.2661691542],[\"2021-09-13 20:21:39\",0.1072319202]],\"CPU_USER\":[[\"2021-09-13 20:16:43\",0.5036674817],[\"2021-09-13 20:17:04\",0.4912718204],[\"2021-09-13 20:17:25\",0.5286783042],[\"2021-09-13 20:17:46\",0.5338345865],[\"2021-09-13 20:18:07\",0.2355889724],[\"2021-09-13 20:18:29\",0.2475247525],[\"2021-09-13 20:18:50\",0.6551724138],[\"2021-09-13 20:19:11\",0.5607940447],[\"2021-09-13 20:19:32\",0.7213930348],[\"2021-09-13 20:19:53\",0.4701492537],[\"2021-09-13 20:20:15\",0.5495049505],[\"2021-09-13 20:20:36\",0.3325062035],[\"2021-09-13 20:20:57\",0.4360902256],[\"2021-09-13 20:21:18\",0.6368159204],[\"2021-09-13 20:21:39\",0.7381546135]]}');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
BEGIN;
INSERT INTO `tb_user_info` VALUES (6, '2020-06-25 19:54:06', '2020-06-27 12:00:23', 5, 10050, 'https://s1.ax1x.com/2020/06/27/NyWnrn.png');
INSERT INTO `tb_user_info` VALUES (7, '2021-09-07 07:23:23', '2021-09-07 07:23:29', 1, 10049, 'https://s1.ax1x.com/2020/06/25/NDpXVO.jpg');
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
