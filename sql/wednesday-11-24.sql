/*
 Navicat Premium Data Transfer

 Source Server         : luna-local
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : wednesday

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 24/11/2021 12:37:49
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
  `ip` varchar(63) DEFAULT NULL,
  `hardware` mediumtext NOT NULL,
  `agent_version` varchar(15) DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_agent` (`key`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_agent
-- ----------------------------
BEGIN;
INSERT INTO `tb_agent` VALUES (1, '2020-05-03 20:56:14', '2020-06-25 11:49:56', 69, 'C02VL2B8G8WN', 'sweeney', NULL, '{\"agentKey\":\"C02VL2B8G8WN\",\"agentVersion\":\"1.4-SNAPSHOT\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":1708759450,\"clDeviceName\":\"Intel(R) Iris(TM) Pro Graphics 5200\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2\",\"clDriverVersion\":\"20.19.15.4835\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0},{\"clDeviceGlobalMemSize\":17050124288,\"clDeviceName\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_CPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2 (Build 10094)\",\"clDriverVersion\":\"5.2.0.10094\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":1}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"MBP114.88Z.0172.B25.1706181512\",\"manufacturer\":\"Apple Inc.\",\"name\":\"MBP114.88Z.0172.B25.1706181512\",\"version\":\"APPLE  - 0\"},\"hostName\":\"DESKTOP-OTT6C1B\",\"macAddressSet\":[\"6c:96:cf:dd:21:95\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":17050124288,\"swapTotal\":17224581120},\"model\":\"MacBookPro11,4\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF00040661\"},\"serialNumber\":\"C02VL2B8G8WN\"}}', '1.4-SNAPSHOT', '2020-06-25 11:50:02');
INSERT INTO `tb_agent` VALUES (3, '2021-09-07 13:30:46', '2021-09-21 13:22:31', 834, 'PF17JQVU', 'sweeney', '[\"192.168.2.104:8004\"]', '{\"agentKey\":\"PF17JQVU\",\"agentVersion\":\"1.8-RELEASE\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":2147483648,\"clDeviceName\":\"GeForce MX150\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"NVIDIA Corporation\",\"clDeviceVendorId\":\"0x10de\",\"clDeviceVersion\":\"OpenCL 1.2 CUDA\",\"clDriverVersion\":\"457.49\",\"clPlatformICDSuffixKHR\":\"NV\",\"id\":0},{\"clDeviceGlobalMemSize\":6819401728,\"clDeviceName\":\"Intel(R) UHD Graphics 620\",\"clDeviceOpenCLCVersion\":\"OpenCL C 2.0\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 2.1 NEO\",\"clDriverVersion\":\"27.20.100.8729\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"7PCN27WW\",\"manufacturer\":\"LENOVO\",\"name\":\"7PCN27WW\",\"version\":\"LENOVO - 1\"},\"hostName\":\"DESKTOP-A48DR00\",\"ipAddressSet\":[\"192.168.2.104:8004\"],\"macAddressSet\":[\"60:c5:47:06:6f:88\"],\"manufacturer\":\"LENOVO\",\"memoryDTO\":{\"memeryTotal\":17048506368,\"swapTotal\":2550136832},\"model\":\"81GY\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz\\n 1 physical CPU package(s)\\n 4 physical CPU core(s)\\n 8 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 142 Stepping 10\\nProcessorID: BFEBFBFF000806EA\\nMicroarchitecture: Coffee Lake\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF000806EA\"},\"serialNumber\":\"PF17JQVU\"}}', '1.8-RELEASE', '2021-09-21 21:22:31');
INSERT INTO `tb_agent` VALUES (4, '2021-09-14 08:25:35', '2021-11-24 12:37:26', 134, 'C17QD861FVH5', 'sweeney', '[\"172.19.32.47:8004\"]', '{\"agentKey\":\"C17QD861FVH5\",\"agentVersion\":\"1.8-SNAPSHOT\",\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"EFI64\",\"manufacturer\":\"Apple Inc.\",\"name\":\"boot.efi\",\"version\":\"428.40.10.0.0\"},\"hostName\":\"Shylie.local\",\"ipAddressSet\":[\"172.19.32.47:8004\"],\"macAddressSet\":[\"ac:bc:32:9a:b7:e5\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":8589934592,\"swapTotal\":6442450944},\"model\":\"MacBookPro12,1\",\"processorDTO\":{\"logicalProcessorCount\":4,\"name\":\"Intel(R) Core(TM) i5-5257U CPU @ 2.70GHz\\n 1 physical CPU package(s)\\n 2 physical CPU core(s)\\n 4 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 61 Stepping 4\\nProcessorID: bfebfbff000306d4\\nMicroarchitecture: Broadwell (Client)\",\"physicalPackageCount\":1,\"physicalProcessorCount\":2,\"processorId\":\"bfebfbff000306d4\"},\"serialNumber\":\"C17QD861FVH5\"}}', '1.8-SNAPSHOT', '2021-11-24 12:37:26');
INSERT INTO `tb_agent` VALUES (5, '2021-10-27 12:59:27', '2021-11-15 00:16:42', 247, 'C02R605CGYFH', 'sweeney', '[\"192.168.2.103:8004\"]', '{\"agentKey\":\"C02R605CGYFH\",\"agentVersion\":\"1.8-SNAPSHOT\",\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"EFI64\",\"manufacturer\":\"LENOVO\",\"name\":\"boot.efi\",\"version\":\"429.80.1.0.0\"},\"hostName\":\"Shmily.local\",\"ipAddressSet\":[\"192.168.2.103:8004\"],\"macAddressSet\":[\"60:c5:47:06:6f:88\"],\"manufacturer\":\"LENOVO\",\"memoryDTO\":{\"memeryTotal\":17179869184,\"swapTotal\":1073741824},\"model\":\"MacBookPro13,2\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz\\n 1 physical CPU package(s)\\n 4 physical CPU core(s)\\n 8 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 142 Stepping 10\\nProcessorID: bfebfbff000806ea\\nMicroarchitecture: Coffee Lake\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"bfebfbff000806ea\"},\"serialNumber\":\"C02R605CGYFH\"}}', '1.8-SNAPSHOT', '2021-11-15 00:16:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hash
-- ----------------------------
BEGIN;
INSERT INTO `tb_hash` VALUES (20, '2021-09-10 12:06:18', '2021-09-10 12:18:41', 1, 'yctc_yyds', NULL, '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hash` VALUES (22, '2021-09-10 12:48:18', '2021-09-10 13:50:35', 1, 'i-love-yctc', NULL, '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hash` VALUES (24, '2021-09-15 01:52:52', '2021-09-20 19:38:11', 1, 'zhangyue', NULL, '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hash` VALUES (26, '2021-11-14 21:17:25', '2021-11-24 12:36:17', 1, 'loveluna', NULL, '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_project
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_project` VALUES (21, '2021-09-10 12:06:23', '2021-09-10 12:18:41', 5, 'yctc_yyds_project', 'finish', '?l?l?l?l?l?l?l?l', 11881376, 0, 3, 20, 208827064576);
INSERT INTO `tb_hashcat_project` VALUES (23, '2021-09-10 12:48:31', '2021-09-10 13:50:35', 5, 'i-love-yctc-project', 'finish', '?l?l?l?l?l?l?l?l?l', 308915776, 0, 3, 22, 5429503678976);
INSERT INTO `tb_hashcat_project` VALUES (29, '2021-09-20 19:29:49', '2021-09-20 19:38:11', 5, 'zhangyue-project-2', 'finish', '?l?l?l?l?l?l?l?l', 308915776, 0, 3, 24, 208827064576);
INSERT INTO `tb_hashcat_project` VALUES (38, '2021-11-14 21:18:04', '2021-11-24 12:36:17', 22, 'loveluna_project', 'finish', '?l?l?l?l?l?l?l?l', 308915776, 0, 3, 26, 208827064576);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_speed
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_speed` VALUES (1, '2020-05-09 00:54:56', '2020-05-09 00:54:56', 0, 1, 3, 1, 340);
INSERT INTO `tb_hashcat_speed` VALUES (2, '2020-06-24 21:09:45', '2020-06-24 22:28:46', 1, 1, 0, 33, 2);
INSERT INTO `tb_hashcat_speed` VALUES (3, '2021-09-08 12:52:38', '2021-09-20 19:38:10', 5, 3, 0, 8, 21);
INSERT INTO `tb_hashcat_speed` VALUES (4, '2021-09-14 14:12:42', '2021-11-24 12:36:16', 3, 4, 0, 8, 86);
INSERT INTO `tb_hashcat_speed` VALUES (5, '2021-11-13 16:30:13', '2021-11-13 20:58:55', 3, 5, 0, 1, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_status
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_status` VALUES (1, '2020-05-06 11:51:12', '2020-05-06 11:52:19', 1, 1, '{\"attempted\":\"218162483680\",\"speedList\":[\"116555125\"],\"status\":\"running\",\"total\":\"235294112000\"}');
INSERT INTO `tb_hashcat_status` VALUES (2, '2021-09-10 05:54:38', '2021-09-21 13:23:27', 808, 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status` VALUES (3, '2021-09-15 02:41:48', '2021-11-24 12:35:25', 111, 4, '{\"attempted\":\"3374874624\",\"speedList\":[\"102476873\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status` VALUES (4, '2021-11-13 16:41:20', '2021-11-15 00:18:50', 571, 5, '{\"attempted\":\"14386003968\",\"speedList\":[\"20475596\"],\"status\":\"running\",\"total\":\"208827064576\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=1508 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
INSERT INTO `tb_hashcat_status_log` VALUES (424, '2021-09-15 02:41:48', 4, '{\"attempted\":\"8350728192\",\"speedList\":[\"214878181\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (425, '2021-09-15 02:42:49', 4, '{\"attempted\":\"20774387712\",\"speedList\":[\"194185823\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (426, '2021-09-15 02:43:54', 4, '{\"attempted\":\"33695072256\",\"speedList\":[\"218729128\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (427, '2021-09-15 02:44:54', 4, '{\"attempted\":\"45517111296\",\"speedList\":[\"174123268\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (428, '2021-09-15 02:45:55', 4, '{\"attempted\":\"57158664192\",\"speedList\":[\"215463984\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (429, '2021-09-15 02:46:55', 4, '{\"attempted\":\"70683328512\",\"speedList\":[\"248852549\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (430, '2021-09-15 02:47:55', 4, '{\"attempted\":\"86324674560\",\"speedList\":[\"250993560\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (431, '2021-09-15 02:48:55', 4, '{\"attempted\":\"101535055872\",\"speedList\":[\"245189528\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (432, '2021-09-15 02:49:56', 4, '{\"attempted\":\"115373113344\",\"speedList\":[\"229067299\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (433, '2021-09-15 02:50:56', 4, '{\"attempted\":\"129779367936\",\"speedList\":[\"225815383\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (434, '2021-09-15 02:51:56', 4, '{\"attempted\":\"10640424960\",\"speedList\":[\"255509273\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (435, '2021-09-15 02:52:56', 4, '{\"attempted\":\"25191383040\",\"speedList\":[\"248417830\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (436, '2021-09-15 02:53:56', 4, '{\"attempted\":\"38090047488\",\"speedList\":[\"213770417\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (437, '2021-09-15 02:54:57', 4, '{\"attempted\":\"51237224448\",\"speedList\":[\"218891627\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (438, '2021-09-15 02:55:57', 4, '{\"attempted\":\"64441024512\",\"speedList\":[\"288646244\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (439, '2021-09-15 02:56:57', 4, '{\"attempted\":\"77955072000\",\"speedList\":[\"194604143\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (440, '2021-09-15 02:57:57', 4, '{\"attempted\":\"91262681088\",\"speedList\":[\"236335134\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (441, '2021-09-15 02:58:57', 4, '{\"attempted\":\"104987492352\",\"speedList\":[\"218358070\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (442, '2021-09-15 02:59:58', 4, '{\"attempted\":\"117182693376\",\"speedList\":[\"219614746\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (443, '2021-09-15 03:00:58', 4, '{\"attempted\":\"128928055296\",\"speedList\":[\"180681338\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (444, '2021-09-15 03:01:58', 4, '{\"attempted\":\"9356181504\",\"speedList\":[\"241605397\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (445, '2021-09-17 09:16:51', 4, '{\"attempted\":\"3013214208\",\"speedList\":[\"213761830\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (446, '2021-09-17 09:17:51', 4, '{\"attempted\":\"16066019328\",\"speedList\":[\"233274567\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (447, '2021-09-17 09:18:52', 4, '{\"attempted\":\"27469676544\",\"speedList\":[\"217023886\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (448, '2021-09-20 15:39:17', 4, '{\"attempted\":\"7131365376\",\"speedList\":[\"238808739\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (449, '2021-09-20 15:40:17', 4, '{\"attempted\":\"19156697088\",\"speedList\":[\"178621965\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (450, '2021-09-20 15:41:17', 4, '{\"attempted\":\"30783700992\",\"speedList\":[\"234222798\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (451, '2021-09-20 15:42:18', 4, '{\"attempted\":\"45690126336\",\"speedList\":[\"238807757\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (452, '2021-09-20 15:43:18', 4, '{\"attempted\":\"59358314496\",\"speedList\":[\"230009756\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (453, '2021-09-20 15:44:18', 4, '{\"attempted\":\"71342751744\",\"speedList\":[\"180570928\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (454, '2021-09-20 15:45:18', 4, '{\"attempted\":\"82677202944\",\"speedList\":[\"178797300\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (455, '2021-09-20 15:46:18', 4, '{\"attempted\":\"94721409024\",\"speedList\":[\"190259522\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (456, '2021-09-20 15:47:19', 4, '{\"attempted\":\"108833144832\",\"speedList\":[\"249964264\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (457, '2021-09-20 15:48:19', 4, '{\"attempted\":\"123409268736\",\"speedList\":[\"248779355\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (458, '2021-09-20 15:49:19', 4, '{\"attempted\":\"6468796416\",\"speedList\":[\"242241721\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (459, '2021-09-20 15:50:19', 4, '{\"attempted\":\"22226534400\",\"speedList\":[\"265215055\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (460, '2021-09-20 15:51:19', 4, '{\"attempted\":\"38055444480\",\"speedList\":[\"264170348\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (461, '2021-09-20 15:52:19', 4, '{\"attempted\":\"52792000512\",\"speedList\":[\"260127479\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (462, '2021-09-20 15:53:19', 4, '{\"attempted\":\"68785668096\",\"speedList\":[\"265798313\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (463, '2021-09-20 15:54:20', 4, '{\"attempted\":\"84743553024\",\"speedList\":[\"266673807\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (464, '2021-09-20 15:55:20', 4, '{\"attempted\":\"99882762240\",\"speedList\":[\"252588771\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (465, '2021-09-20 15:56:20', 4, '{\"attempted\":\"114776604672\",\"speedList\":[\"247870977\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (466, '2021-09-20 15:57:20', 4, '{\"attempted\":\"130112815104\",\"speedList\":[\"263149720\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (467, '2021-09-20 15:58:20', 4, '{\"attempted\":\"145590583296\",\"speedList\":[\"255595551\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (468, '2021-09-20 15:59:20', 4, '{\"attempted\":\"7027556352\",\"speedList\":[\"264429254\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (469, '2021-09-20 16:00:21', 4, '{\"attempted\":\"22267428864\",\"speedList\":[\"250463180\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (470, '2021-09-20 16:01:21', 4, '{\"attempted\":\"37735759872\",\"speedList\":[\"258277237\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (471, '2021-09-20 16:02:21', 4, '{\"attempted\":\"52447150080\",\"speedList\":[\"257356640\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (472, '2021-09-20 16:03:21', 4, '{\"attempted\":\"67309535232\",\"speedList\":[\"228110987\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (473, '2021-09-20 16:04:21', 4, '{\"attempted\":\"80348577792\",\"speedList\":[\"179935832\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (474, '2021-09-21 05:46:07', 4, '{\"attempted\":\"10087956480\",\"speedList\":[\"259110785\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (475, '2021-09-21 05:47:07', 4, '{\"attempted\":\"23617732608\",\"speedList\":[\"228785793\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (476, '2021-09-21 05:48:07', 4, '{\"attempted\":\"38527303680\",\"speedList\":[\"246695764\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (477, '2021-09-21 05:49:07', 4, '{\"attempted\":\"52955578368\",\"speedList\":[\"239666206\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (478, '2021-09-21 05:49:20', 3, '{\"attempted\":\"56925093888\",\"speedList\":[\"944408005\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (479, '2021-09-21 05:50:07', 4, '{\"attempted\":\"67409018880\",\"speedList\":[\"241483382\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (480, '2021-09-21 05:50:20', 3, '{\"attempted\":\"110495268864\",\"speedList\":[\"912948523\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (481, '2021-09-21 05:51:08', 4, '{\"attempted\":\"81995759616\",\"speedList\":[\"249778611\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (482, '2021-09-21 05:51:21', 3, '{\"attempted\":\"161020379136\",\"speedList\":[\"797053017\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (483, '2021-09-21 05:52:08', 4, '{\"attempted\":\"96809779200\",\"speedList\":[\"250963123\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (484, '2021-09-21 05:52:21', 3, '{\"attempted\":\"206660173824\",\"speedList\":[\"718231237\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (485, '2021-09-21 05:53:08', 4, '{\"attempted\":\"111518023680\",\"speedList\":[\"248498976\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (486, '2021-09-21 05:53:21', 3, '{\"attempted\":\"251343667200\",\"speedList\":[\"737030514\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (487, '2021-09-21 05:54:09', 4, '{\"attempted\":\"126238851072\",\"speedList\":[\"242539104\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (488, '2021-09-21 05:54:22', 3, '{\"attempted\":\"296027160576\",\"speedList\":[\"738434964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (489, '2021-09-21 05:55:09', 4, '{\"attempted\":\"141277396992\",\"speedList\":[\"249536032\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (490, '2021-09-21 05:55:22', 3, '{\"attempted\":\"338488197120\",\"speedList\":[\"706587112\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (491, '2021-09-21 05:56:09', 4, '{\"attempted\":\"8429371392\",\"speedList\":[\"259411061\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (492, '2021-09-21 05:56:23', 3, '{\"attempted\":\"378722058240\",\"speedList\":[\"642274619\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (493, '2021-09-21 05:57:09', 4, '{\"attempted\":\"22804168704\",\"speedList\":[\"252774464\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (494, '2021-09-21 05:57:23', 3, '{\"attempted\":\"417261944832\",\"speedList\":[\"628823829\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (495, '2021-09-21 05:58:10', 4, '{\"attempted\":\"38027132928\",\"speedList\":[\"250983930\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (496, '2021-09-21 05:58:23', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (497, '2021-09-21 05:59:10', 4, '{\"attempted\":\"53134884864\",\"speedList\":[\"250612972\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (498, '2021-09-21 05:59:24', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (499, '2021-09-21 06:00:10', 4, '{\"attempted\":\"68898914304\",\"speedList\":[\"263178038\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (500, '2021-09-21 06:00:24', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (501, '2021-09-21 06:01:10', 4, '{\"attempted\":\"84837924864\",\"speedList\":[\"266895084\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (502, '2021-09-21 06:01:25', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (503, '2021-09-21 06:02:11', 4, '{\"attempted\":\"100636557312\",\"speedList\":[\"265092742\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (504, '2021-09-21 06:02:25', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (505, '2021-09-21 06:03:12', 4, '{\"attempted\":\"115561857024\",\"speedList\":[\"245729458\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (506, '2021-09-21 06:03:26', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (507, '2021-09-21 06:04:12', 4, '{\"attempted\":\"131039625216\",\"speedList\":[\"256681398\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (508, '2021-09-21 06:04:26', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (509, '2021-09-21 06:05:12', 4, '{\"attempted\":\"146350669824\",\"speedList\":[\"257605237\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (510, '2021-09-21 06:05:27', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (511, '2021-09-21 06:06:12', 4, '{\"attempted\":\"7065305088\",\"speedList\":[\"264987313\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (512, '2021-09-21 06:06:27', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (513, '2021-09-21 06:07:12', 4, '{\"attempted\":\"22217097216\",\"speedList\":[\"255145639\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (514, '2021-09-21 06:07:28', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (515, '2021-09-21 06:08:13', 4, '{\"attempted\":\"37440061440\",\"speedList\":[\"251530093\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (516, '2021-09-21 06:08:28', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (517, '2021-09-21 06:09:13', 4, '{\"attempted\":\"51934396416\",\"speedList\":[\"273440943\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (518, '2021-09-21 06:09:28', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (519, '2021-09-21 06:10:13', 4, '{\"attempted\":\"67199434752\",\"speedList\":[\"254732048\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (520, '2021-09-21 06:10:29', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (521, '2021-09-21 06:11:13', 4, '{\"attempted\":\"82167595008\",\"speedList\":[\"254029779\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (522, '2021-09-21 06:11:29', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (523, '2021-09-21 06:12:14', 4, '{\"attempted\":\"97011105792\",\"speedList\":[\"241309356\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (524, '2021-09-21 06:12:30', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (525, '2021-09-21 06:13:14', 4, '{\"attempted\":\"112225812480\",\"speedList\":[\"252585646\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (526, '2021-09-21 06:13:30', 3, '{\"attempted\":\"456665333760\",\"speedList\":[\"647446712\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (527, '2021-09-21 06:14:14', 4, '{\"attempted\":\"127105892352\",\"speedList\":[\"248468014\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (528, '2021-09-21 06:14:30', 3, '{\"attempted\":\"60946907136\",\"speedList\":[\"895829250\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (529, '2021-09-21 06:15:15', 4, '{\"attempted\":\"141939965952\",\"speedList\":[\"219779283\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (530, '2021-09-21 06:15:30', 3, '{\"attempted\":\"113548197888\",\"speedList\":[\"855010819\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (531, '2021-09-21 06:16:15', 4, '{\"attempted\":\"5340659712\",\"speedList\":[\"259728201\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (532, '2021-09-21 06:16:31', 3, '{\"attempted\":\"161787936768\",\"speedList\":[\"776365958\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (533, '2021-09-21 06:17:15', 4, '{\"attempted\":\"20067778560\",\"speedList\":[\"245688441\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (534, '2021-09-21 06:17:31', 3, '{\"attempted\":\"206861500416\",\"speedList\":[\"742790555\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (535, '2021-09-21 06:18:16', 4, '{\"attempted\":\"34983641088\",\"speedList\":[\"250183493\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (536, '2021-09-21 06:18:31', 3, '{\"attempted\":\"251318501376\",\"speedList\":[\"734967596\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (537, '2021-09-21 06:19:16', 4, '{\"attempted\":\"49846026240\",\"speedList\":[\"250971622\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (538, '2021-09-21 06:19:32', 3, '{\"attempted\":\"295297351680\",\"speedList\":[\"725068447\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (539, '2021-09-21 06:20:16', 4, '{\"attempted\":\"64733577216\",\"speedList\":[\"264626094\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (540, '2021-09-21 06:20:32', 3, '{\"attempted\":\"337770971136\",\"speedList\":[\"714590132\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (541, '2021-09-21 06:21:16', 4, '{\"attempted\":\"79852732416\",\"speedList\":[\"257542117\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (542, '2021-09-21 06:21:32', 3, '{\"attempted\":\"380680273920\",\"speedList\":[\"702440749\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (543, '2021-09-21 06:22:17', 4, '{\"attempted\":\"94982504448\",\"speedList\":[\"251963301\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (544, '2021-09-21 06:22:36', 3, '{\"attempted\":\"423028064256\",\"speedList\":[\"720833983\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (545, '2021-09-21 06:23:17', 4, '{\"attempted\":\"110032453632\",\"speedList\":[\"257196216\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (546, '2021-09-21 06:23:36', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (547, '2021-09-21 06:24:17', 4, '{\"attempted\":\"124929441792\",\"speedList\":[\"252029391\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (548, '2021-09-21 06:24:36', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (549, '2021-09-21 06:25:18', 4, '{\"attempted\":\"140023431168\",\"speedList\":[\"255524405\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (550, '2021-09-21 06:25:37', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (551, '2021-09-21 06:26:18', 4, '{\"attempted\":\"4706402304\",\"speedList\":[\"267738890\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (552, '2021-09-21 06:26:37', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (553, '2021-09-21 06:27:18', 4, '{\"attempted\":\"18997444608\",\"speedList\":[\"251615265\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (554, '2021-09-21 06:27:37', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (555, '2021-09-21 06:28:19', 4, '{\"attempted\":\"33855504384\",\"speedList\":[\"248148027\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (556, '2021-09-21 06:28:38', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (557, '2021-09-21 06:29:19', 4, '{\"attempted\":\"49550327808\",\"speedList\":[\"250138580\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (558, '2021-09-21 06:29:38', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (559, '2021-09-21 06:30:20', 4, '{\"attempted\":\"64485064704\",\"speedList\":[\"276795923\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (560, '2021-09-21 06:30:39', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (561, '2021-09-21 06:31:20', 4, '{\"attempted\":\"79689154560\",\"speedList\":[\"257829192\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (562, '2021-09-21 06:31:39', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (563, '2021-09-21 06:32:20', 4, '{\"attempted\":\"94963630080\",\"speedList\":[\"261202309\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (564, '2021-09-21 06:32:39', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (565, '2021-09-21 06:33:21', 4, '{\"attempted\":\"111355625472\",\"speedList\":[\"276463721\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (566, '2021-09-21 06:33:39', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (567, '2021-09-21 06:34:21', 4, '{\"attempted\":\"126956077056\",\"speedList\":[\"270724278\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (568, '2021-09-21 06:34:40', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (569, '2021-09-21 06:35:21', 4, '{\"attempted\":\"143316615168\",\"speedList\":[\"274471906\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (570, '2021-09-21 06:35:40', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (571, '2021-09-21 06:36:21', 4, '{\"attempted\":\"3461873664\",\"speedList\":[\"293739488\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (572, '2021-09-21 06:36:40', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (573, '2021-09-21 06:37:22', 4, '{\"attempted\":\"19172425728\",\"speedList\":[\"213282992\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (574, '2021-09-21 07:24:58', 3, '{\"attempted\":\"461958021120\",\"speedList\":[\"686998964\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (575, '2021-09-21 07:25:16', 4, '{\"attempted\":\"32875216896\",\"speedList\":[\"250018719\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (576, '2021-09-21 07:25:48', 3, '{\"attempted\":\"3946315776\",\"speedList\":[\"1402097996\"],\"status\":\"running\",\"temperatureList\":[55],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (577, '2021-09-21 07:26:16', 4, '{\"attempted\":\"47756476416\",\"speedList\":[\"244964426\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (578, '2021-09-21 07:26:48', 3, '{\"attempted\":\"69992448000\",\"speedList\":[\"956674893\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (579, '2021-09-21 07:27:17', 4, '{\"attempted\":\"62511906816\",\"speedList\":[\"245349661\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (580, '2021-09-21 07:27:48', 3, '{\"attempted\":\"121448693760\",\"speedList\":[\"874295985\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (581, '2021-09-21 07:28:17', 4, '{\"attempted\":\"77632241664\",\"speedList\":[\"248251355\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (582, '2021-09-21 07:28:48', 3, '{\"attempted\":\"171978522624\",\"speedList\":[\"812318349\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (583, '2021-09-21 07:29:17', 4, '{\"attempted\":\"92924411904\",\"speedList\":[\"258090264\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (584, '2021-09-21 07:29:49', 3, '{\"attempted\":\"219979186176\",\"speedList\":[\"779330184\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (585, '2021-09-21 07:30:17', 4, '{\"attempted\":\"108119064576\",\"speedList\":[\"252657585\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (586, '2021-09-21 07:30:49', 3, '{\"attempted\":\"270252638208\",\"speedList\":[\"831913727\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (587, '2021-09-21 07:31:17', 4, '{\"attempted\":\"123123007488\",\"speedList\":[\"249250511\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (588, '2021-09-21 07:31:49', 3, '{\"attempted\":\"317565960192\",\"speedList\":[\"781643510\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (589, '2021-09-21 07:32:17', 4, '{\"attempted\":\"137941352448\",\"speedList\":[\"246430327\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (590, '2021-09-21 07:32:50', 3, '{\"attempted\":\"361972629504\",\"speedList\":[\"700799935\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (591, '2021-09-21 07:33:17', 4, '{\"attempted\":\"2183921664\",\"speedList\":[\"249396947\"],\"status\":\"running\",\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (592, '2021-09-21 07:33:50', 3, '{\"attempted\":\"406077308928\",\"speedList\":[\"726906554\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (593, '2021-09-21 07:34:51', 3, '{\"attempted\":\"448714506240\",\"speedList\":[\"700431972\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (594, '2021-09-21 07:35:51', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (595, '2021-09-21 07:36:51', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (596, '2021-09-21 07:37:51', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (597, '2021-09-21 07:38:51', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (598, '2021-09-21 07:40:55', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (599, '2021-09-21 07:41:55', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (600, '2021-09-21 07:42:55', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (601, '2021-09-21 07:43:55', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (602, '2021-09-21 07:45:58', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (603, '2021-09-21 07:46:58', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (604, '2021-09-21 07:47:59', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (605, '2021-09-21 07:48:59', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (606, '2021-09-21 07:49:59', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (607, '2021-09-21 07:51:00', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (608, '2021-09-21 07:52:00', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (609, '2021-09-21 07:53:00', 3, '{\"attempted\":\"484775559168\",\"speedList\":[\"697048053\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (610, '2021-09-21 07:54:00', 3, '{\"attempted\":\"52236386304\",\"speedList\":[\"731379831\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (611, '2021-09-21 07:55:00', 3, '{\"attempted\":\"76865863680\",\"speedList\":[\"411065504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (612, '2021-09-21 07:56:01', 3, '{\"attempted\":\"119477895168\",\"speedList\":[\"717288356\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (613, '2021-09-21 07:57:01', 3, '{\"attempted\":\"160881967104\",\"speedList\":[\"723075387\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (614, '2021-09-21 07:58:01', 3, '{\"attempted\":\"198893371392\",\"speedList\":[\"638618506\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (615, '2021-09-21 07:59:01', 3, '{\"attempted\":\"234808147968\",\"speedList\":[\"610122396\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (616, '2021-09-21 08:00:02', 3, '{\"attempted\":\"271171190784\",\"speedList\":[\"623563354\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (617, '2021-09-21 08:01:02', 3, '{\"attempted\":\"307174047744\",\"speedList\":[\"601035530\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (618, '2021-09-21 08:02:02', 3, '{\"attempted\":\"336638509056\",\"speedList\":[\"484259347\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (619, '2021-09-21 08:03:02', 3, '{\"attempted\":\"365138804736\",\"speedList\":[\"455654790\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (620, '2021-09-21 08:04:02', 3, '{\"attempted\":\"19970654208\",\"speedList\":[\"473328859\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (621, '2021-09-21 08:05:03', 3, '{\"attempted\":\"45287473152\",\"speedList\":[\"439590489\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (622, '2021-09-21 08:06:03', 3, '{\"attempted\":\"72320286720\",\"speedList\":[\"445334268\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (623, '2021-09-21 08:07:03', 3, '{\"attempted\":\"97347698688\",\"speedList\":[\"426153706\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (624, '2021-09-21 08:08:03', 3, '{\"attempted\":\"114965348352\",\"speedList\":[\"288926193\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (625, '2021-09-21 08:09:03', 3, '{\"attempted\":\"133048565760\",\"speedList\":[\"302889659\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (626, '2021-09-21 08:10:04', 3, '{\"attempted\":\"166446759936\",\"speedList\":[\"582233811\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (627, '2021-09-21 08:11:04', 3, '{\"attempted\":\"200511848448\",\"speedList\":[\"566875267\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (628, '2021-09-21 08:12:04', 3, '{\"attempted\":\"233776349184\",\"speedList\":[\"549463024\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (629, '2021-09-21 08:18:22', 3, '{\"attempted\":\"15256780800\",\"speedList\":[\"563848591\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (630, '2021-09-21 08:19:22', 3, '{\"attempted\":\"44512051200\",\"speedList\":[\"507644335\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (631, '2021-09-21 08:20:22', 3, '{\"attempted\":\"68550131712\",\"speedList\":[\"351594751\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (632, '2021-09-21 08:21:22', 3, '{\"attempted\":\"102048989184\",\"speedList\":[\"460885379\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (633, '2021-09-21 08:22:22', 3, '{\"attempted\":\"127760596992\",\"speedList\":[\"440505176\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (634, '2021-09-21 08:23:23', 3, '{\"attempted\":\"160013746176\",\"speedList\":[\"413968286\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (635, '2021-09-21 08:24:23', 3, '{\"attempted\":\"191994789888\",\"speedList\":[\"505800552\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (636, '2021-09-21 08:25:24', 3, '{\"attempted\":\"226273787904\",\"speedList\":[\"579991119\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (637, '2021-09-21 08:26:24', 3, '{\"attempted\":\"259022389248\",\"speedList\":[\"556335504\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (638, '2021-09-21 08:27:24', 3, '{\"attempted\":\"296203321344\",\"speedList\":[\"609191749\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (639, '2021-09-21 08:28:24', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (640, '2021-09-21 08:29:24', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (641, '2021-09-21 08:30:24', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (642, '2021-09-21 08:31:25', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (643, '2021-09-21 08:32:25', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (644, '2021-09-21 08:33:25', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (645, '2021-09-21 08:34:26', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (646, '2021-09-21 08:35:26', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (647, '2021-09-21 08:36:26', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (648, '2021-09-21 08:37:26', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (649, '2021-09-21 08:38:27', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (650, '2021-09-21 08:39:27', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (651, '2021-09-21 08:40:27', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (652, '2021-09-21 08:41:27', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (653, '2021-09-21 08:42:28', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (654, '2021-09-21 08:43:29', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (655, '2021-09-21 08:44:29', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (656, '2021-09-21 08:45:30', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (657, '2021-09-21 08:46:30', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (658, '2021-09-21 08:47:30', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (659, '2021-09-21 08:48:30', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (660, '2021-09-21 08:49:30', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (661, '2021-09-21 08:50:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (662, '2021-09-21 08:51:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (663, '2021-09-21 08:52:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (664, '2021-09-21 08:53:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (665, '2021-09-21 08:54:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (666, '2021-09-21 08:55:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (667, '2021-09-21 08:56:31', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (668, '2021-09-21 08:57:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (669, '2021-09-21 08:58:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (670, '2021-09-21 08:59:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (671, '2021-09-21 09:00:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (672, '2021-09-21 09:01:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (673, '2021-09-21 09:02:32', 3, '{\"attempted\":\"313808388096\",\"speedList\":[\"643226861\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (674, '2021-09-21 09:03:32', 3, '{\"attempted\":\"39798177792\",\"speedList\":[\"1203501310\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (675, '2021-09-21 09:04:33', 3, '{\"attempted\":\"93242523648\",\"speedList\":[\"865625536\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (676, '2021-09-21 09:05:33', 3, '{\"attempted\":\"141855031296\",\"speedList\":[\"788590036\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (677, '2021-09-21 09:06:33', 3, '{\"attempted\":\"184215404544\",\"speedList\":[\"738956778\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (678, '2021-09-21 09:07:33', 3, '{\"attempted\":\"225330069504\",\"speedList\":[\"648269501\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (679, '2021-09-21 09:08:33', 3, '{\"attempted\":\"265732227072\",\"speedList\":[\"630179092\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (680, '2021-09-21 09:09:33', 3, '{\"attempted\":\"303416475648\",\"speedList\":[\"623700817\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (681, '2021-09-21 09:10:33', 3, '{\"attempted\":\"341679538176\",\"speedList\":[\"628676769\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (682, '2021-09-21 09:11:34', 3, '{\"attempted\":\"378835304448\",\"speedList\":[\"606616534\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (683, '2021-09-21 09:12:34', 3, '{\"attempted\":\"414209015808\",\"speedList\":[\"594516420\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (684, '2021-09-21 09:13:34', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (685, '2021-09-21 09:14:35', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (686, '2021-09-21 09:15:35', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (687, '2021-09-21 09:16:35', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (688, '2021-09-21 09:17:35', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (689, '2021-09-21 09:18:36', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (690, '2021-09-21 09:19:36', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (691, '2021-09-21 09:20:36', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (692, '2021-09-21 09:21:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (693, '2021-09-21 09:22:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (694, '2021-09-21 09:23:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (695, '2021-09-21 09:24:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (696, '2021-09-21 09:25:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (697, '2021-09-21 09:26:37', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (698, '2021-09-21 09:27:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (699, '2021-09-21 09:28:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (700, '2021-09-21 09:29:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (701, '2021-09-21 09:30:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (702, '2021-09-21 09:31:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (703, '2021-09-21 09:32:38', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (704, '2021-09-21 09:33:39', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (705, '2021-09-21 09:34:39', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (706, '2021-09-21 09:35:40', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (707, '2021-09-21 09:36:40', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (708, '2021-09-21 09:37:40', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (709, '2021-09-21 09:38:41', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (710, '2021-09-21 09:39:42', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (711, '2021-09-21 09:40:42', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (712, '2021-09-21 09:41:43', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (713, '2021-09-21 09:42:44', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (714, '2021-09-21 09:43:45', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (715, '2021-09-21 09:44:45', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (716, '2021-09-21 09:45:45', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (717, '2021-09-21 09:46:46', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (718, '2021-09-21 09:47:46', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (719, '2021-09-21 09:48:46', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (720, '2021-09-21 09:49:47', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (721, '2021-09-21 09:50:48', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (722, '2021-09-21 09:51:48', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (723, '2021-09-21 09:52:49', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (724, '2021-09-21 09:53:49', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (725, '2021-09-21 09:54:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (726, '2021-09-21 09:55:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (727, '2021-09-21 09:56:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (728, '2021-09-21 09:57:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (729, '2021-09-21 09:58:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (730, '2021-09-21 09:59:50', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (731, '2021-09-21 10:00:51', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (732, '2021-09-21 10:01:51', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (733, '2021-09-21 10:02:51', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (734, '2021-09-21 10:03:51', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (735, '2021-09-21 10:04:52', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (736, '2021-09-21 10:05:52', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (737, '2021-09-21 10:06:52', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (738, '2021-09-21 10:07:52', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (739, '2021-09-21 10:08:53', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (740, '2021-09-21 10:09:53', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (741, '2021-09-21 10:10:53', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (742, '2021-09-21 10:11:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (743, '2021-09-21 10:12:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (744, '2021-09-21 10:13:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (745, '2021-09-21 10:14:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (746, '2021-09-21 10:15:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (747, '2021-09-21 10:16:54', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (748, '2021-09-21 10:17:55', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (749, '2021-09-21 10:18:55', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (750, '2021-09-21 10:19:55', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (751, '2021-09-21 10:20:56', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (752, '2021-09-21 10:21:56', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (753, '2021-09-21 10:22:56', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (754, '2021-09-21 10:23:56', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (755, '2021-09-21 10:24:57', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (756, '2021-09-21 10:25:57', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (757, '2021-09-21 10:26:57', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (758, '2021-09-21 10:27:58', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (759, '2021-09-21 10:28:58', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (760, '2021-09-21 10:29:58', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (761, '2021-09-21 10:30:59', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (762, '2021-09-21 10:31:59', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (763, '2021-09-21 10:32:59', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (764, '2021-09-21 10:33:59', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (765, '2021-09-21 10:35:00', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (766, '2021-09-21 10:36:00', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (767, '2021-09-21 10:37:00', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (768, '2021-09-21 10:38:00', 3, '{\"attempted\":\"428857098240\",\"speedList\":[\"603205340\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (769, '2021-09-21 10:39:00', 3, '{\"attempted\":\"55503224832\",\"speedList\":[\"909084630\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (770, '2021-09-21 10:40:00', 3, '{\"attempted\":\"104208531456\",\"speedList\":[\"749300778\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (771, '2021-09-21 10:41:00', 3, '{\"attempted\":\"145990090752\",\"speedList\":[\"727272744\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (772, '2021-09-21 10:42:01', 3, '{\"attempted\":\"187834564608\",\"speedList\":[\"685402275\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (773, '2021-09-21 10:43:01', 3, '{\"attempted\":\"226550611968\",\"speedList\":[\"636689314\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (774, '2021-09-21 10:44:01', 3, '{\"attempted\":\"264310358016\",\"speedList\":[\"604221202\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (775, '2021-09-21 10:45:01', 3, '{\"attempted\":\"301579370496\",\"speedList\":[\"613555460\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (776, '2021-09-21 10:46:01', 3, '{\"attempted\":\"338898714624\",\"speedList\":[\"615087477\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (777, '2021-09-21 10:47:01', 3, '{\"attempted\":\"375228727296\",\"speedList\":[\"605880884\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (778, '2021-09-21 10:48:02', 3, '{\"attempted\":\"407486595072\",\"speedList\":[\"573930034\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (779, '2021-09-21 10:49:02', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (780, '2021-09-21 10:50:02', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (781, '2021-09-21 10:51:02', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (782, '2021-09-21 10:52:03', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (783, '2021-09-21 10:53:03', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (784, '2021-09-21 10:54:04', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (785, '2021-09-21 10:55:04', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (786, '2021-09-21 10:56:04', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (787, '2021-09-21 10:57:05', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (788, '2021-09-21 10:58:05', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (789, '2021-09-21 10:59:05', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (790, '2021-09-21 11:00:06', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (791, '2021-09-21 11:01:06', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (792, '2021-09-21 11:02:06', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (793, '2021-09-21 11:03:06', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (794, '2021-09-21 11:04:06', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (795, '2021-09-21 11:05:07', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (796, '2021-09-21 11:06:07', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (797, '2021-09-21 11:07:07', 3, '{\"attempted\":\"410929594368\",\"speedList\":[\"573586383\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (798, '2021-09-21 11:08:08', 3, '{\"attempted\":\"8207204352\",\"speedList\":[\"1406346559\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (799, '2021-09-21 11:09:08', 3, '{\"attempted\":\"65019052032\",\"speedList\":[\"814296630\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (800, '2021-09-21 11:10:08', 3, '{\"attempted\":\"109866123264\",\"speedList\":[\"721188140\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (801, '2021-09-21 11:11:08', 3, '{\"attempted\":\"152025169920\",\"speedList\":[\"699439656\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (802, '2021-09-21 11:12:08', 3, '{\"attempted\":\"190321262592\",\"speedList\":[\"632923532\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (803, '2021-09-21 11:13:08', 3, '{\"attempted\":\"227217506304\",\"speedList\":[\"606336058\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (804, '2021-09-21 11:14:08', 3, '{\"attempted\":\"262440222720\",\"speedList\":[\"621085457\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (805, '2021-09-21 11:15:08', 3, '{\"attempted\":\"298060873728\",\"speedList\":[\"592298729\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (806, '2021-09-21 11:16:08', 3, '{\"attempted\":\"333497499648\",\"speedList\":[\"588849104\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (807, '2021-09-21 11:17:09', 3, '{\"attempted\":\"368720216064\",\"speedList\":[\"579908223\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (808, '2021-09-21 11:18:09', 3, '{\"attempted\":\"395748311040\",\"speedList\":[\"562459344\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (809, '2021-09-21 11:19:09', 3, '{\"attempted\":\"34271133696\",\"speedList\":[\"598198886\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (810, '2021-09-21 11:20:09', 3, '{\"attempted\":\"68172644352\",\"speedList\":[\"559406210\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (811, '2021-09-21 11:21:09', 3, '{\"attempted\":\"102162235392\",\"speedList\":[\"560451488\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (812, '2021-09-21 11:22:09', 3, '{\"attempted\":\"135459766272\",\"speedList\":[\"549043587\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (813, '2021-09-21 11:23:09', 3, '{\"attempted\":\"167201734656\",\"speedList\":[\"548941372\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (814, '2021-09-21 11:24:10', 3, '{\"attempted\":\"200964833280\",\"speedList\":[\"554468000\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (815, '2021-09-21 11:25:10', 3, '{\"attempted\":\"234518740992\",\"speedList\":[\"552755581\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (816, '2021-09-21 11:26:10', 3, '{\"attempted\":\"267841437696\",\"speedList\":[\"540804147\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (817, '2021-09-21 11:27:10', 3, '{\"attempted\":\"300426461184\",\"speedList\":[\"537717325\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (818, '2021-09-21 11:28:10', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (819, '2021-09-21 11:29:10', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (820, '2021-09-21 11:30:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (821, '2021-09-21 11:31:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (822, '2021-09-21 11:32:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (823, '2021-09-21 11:33:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (824, '2021-09-21 11:34:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (825, '2021-09-21 11:35:11', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (826, '2021-09-21 11:36:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (827, '2021-09-21 11:37:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (828, '2021-09-21 11:38:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (829, '2021-09-21 11:39:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (830, '2021-09-21 11:40:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (831, '2021-09-21 11:41:12', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (832, '2021-09-21 11:42:13', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (833, '2021-09-21 11:43:13', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (834, '2021-09-21 11:44:13', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (835, '2021-09-21 11:45:13', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (836, '2021-09-21 11:46:13', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (837, '2021-09-21 11:47:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (838, '2021-09-21 11:48:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (839, '2021-09-21 11:49:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (840, '2021-09-21 11:50:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (841, '2021-09-21 11:51:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (842, '2021-09-21 11:52:14', 3, '{\"attempted\":\"331761057792\",\"speedList\":[\"548063003\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (843, '2021-09-21 11:53:14', 3, '{\"attempted\":\"37110153216\",\"speedList\":[\"1026799166\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (844, '2021-09-21 11:54:14', 3, '{\"attempted\":\"73976512512\",\"speedList\":[\"555401391\"],\"status\":\"running\",\"temperatureList\":[61],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (845, '2021-09-21 11:55:15', 3, '{\"attempted\":\"110893203456\",\"speedList\":[\"612145131\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (846, '2021-09-21 11:56:15', 3, '{\"attempted\":\"145310613504\",\"speedList\":[\"575373019\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (847, '2021-09-21 11:57:15', 3, '{\"attempted\":\"178700943360\",\"speedList\":[\"545391419\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (848, '2021-09-21 11:58:15', 3, '{\"attempted\":\"208580640768\",\"speedList\":[\"624917514\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (849, '2021-09-21 11:59:15', 3, '{\"attempted\":\"245275557888\",\"speedList\":[\"635051973\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (850, '2021-09-21 12:00:15', 3, '{\"attempted\":\"280657133568\",\"speedList\":[\"572165187\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (851, '2021-09-21 12:01:15', 3, '{\"attempted\":\"317817618432\",\"speedList\":[\"599368683\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (852, '2021-09-21 12:02:16', 3, '{\"attempted\":\"354520399872\",\"speedList\":[\"602633549\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (853, '2021-09-21 12:03:16', 3, '{\"attempted\":\"18460704768\",\"speedList\":[\"769781231\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (854, '2021-09-21 12:04:16', 3, '{\"attempted\":\"55578722304\",\"speedList\":[\"569560078\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (855, '2021-09-21 12:05:16', 3, '{\"attempted\":\"92273639424\",\"speedList\":[\"600779580\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (856, '2021-09-21 12:06:16', 3, '{\"attempted\":\"127483772928\",\"speedList\":[\"608614064\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (857, '2021-09-21 12:07:16', 3, '{\"attempted\":\"165344182272\",\"speedList\":[\"628161558\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (858, '2021-09-21 12:08:16', 3, '{\"attempted\":\"200461516800\",\"speedList\":[\"588582167\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (859, '2021-09-21 12:09:17', 3, '{\"attempted\":\"235784896512\",\"speedList\":[\"582001644\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (860, '2021-09-21 12:10:17', 3, '{\"attempted\":\"271649341440\",\"speedList\":[\"619637412\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (861, '2021-09-21 12:11:17', 3, '{\"attempted\":\"306469404672\",\"speedList\":[\"586199574\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (862, '2021-09-21 12:12:17', 3, '{\"attempted\":\"341956362240\",\"speedList\":[\"585119820\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (863, '2021-09-21 12:13:17', 3, '{\"attempted\":\"11096555520\",\"speedList\":[\"746911803\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (864, '2021-09-21 12:14:17', 3, '{\"attempted\":\"48357703680\",\"speedList\":[\"639818987\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (865, '2021-09-21 12:15:17', 3, '{\"attempted\":\"83273711616\",\"speedList\":[\"605284105\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (866, '2021-09-21 12:16:17', 3, '{\"attempted\":\"118395764736\",\"speedList\":[\"578492654\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (867, '2021-09-21 12:17:18', 3, '{\"attempted\":\"153681395712\",\"speedList\":[\"580024459\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (868, '2021-09-21 12:18:18', 3, '{\"attempted\":\"189885579264\",\"speedList\":[\"593121312\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (869, '2021-09-21 12:19:18', 3, '{\"attempted\":\"225581727744\",\"speedList\":[\"570568302\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (870, '2021-09-21 12:20:18', 3, '{\"attempted\":\"259621650432\",\"speedList\":[\"559840501\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (871, '2021-09-21 12:21:18', 3, '{\"attempted\":\"293439799296\",\"speedList\":[\"556830375\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (872, '2021-09-21 12:22:18', 3, '{\"attempted\":\"327429390336\",\"speedList\":[\"564456739\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (873, '2021-09-21 12:23:18', 3, '{\"attempted\":\"2277507072\",\"speedList\":[\"830682054\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (874, '2021-09-21 12:24:18', 3, '{\"attempted\":\"39257112576\",\"speedList\":[\"617982250\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (875, '2021-09-21 12:25:19', 3, '{\"attempted\":\"73208954880\",\"speedList\":[\"560616027\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (876, '2021-09-21 12:26:19', 3, '{\"attempted\":\"106196631552\",\"speedList\":[\"506909461\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (877, '2021-09-21 12:27:19', 3, '{\"attempted\":\"140186222592\",\"speedList\":[\"554069751\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (878, '2021-09-21 12:28:19', 3, '{\"attempted\":\"170808311808\",\"speedList\":[\"513093506\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (879, '2021-09-21 12:29:19', 3, '{\"attempted\":\"202235707392\",\"speedList\":[\"515770808\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (880, '2021-09-21 12:30:19', 3, '{\"attempted\":\"233147203584\",\"speedList\":[\"507497109\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (881, '2021-09-21 12:31:19', 3, '{\"attempted\":\"262515720192\",\"speedList\":[\"505304729\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (882, '2021-09-21 12:32:20', 3, '{\"attempted\":\"293112643584\",\"speedList\":[\"504447403\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (883, '2021-09-21 12:33:20', 3, '{\"attempted\":\"318630789120\",\"speedList\":[\"519498774\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (884, '2021-09-21 12:34:20', 3, '{\"attempted\":\"28135391232\",\"speedList\":[\"548479611\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (885, '2021-09-21 12:35:20', 3, '{\"attempted\":\"60695248896\",\"speedList\":[\"537495783\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (886, '2021-09-21 12:36:20', 3, '{\"attempted\":\"90939850752\",\"speedList\":[\"506259289\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (887, '2021-09-21 12:37:20', 3, '{\"attempted\":\"121423527936\",\"speedList\":[\"530616762\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (888, '2021-09-21 12:38:21', 3, '{\"attempted\":\"151698014208\",\"speedList\":[\"510210988\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (889, '2021-09-21 12:39:21', 3, '{\"attempted\":\"183422681088\",\"speedList\":[\"528024981\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (890, '2021-09-21 12:40:21', 3, '{\"attempted\":\"213055438848\",\"speedList\":[\"462484879\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (891, '2021-09-21 12:41:21', 3, '{\"attempted\":\"243463618560\",\"speedList\":[\"513034453\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (892, '2021-09-21 12:42:21', 3, '{\"attempted\":\"276647903232\",\"speedList\":[\"545286534\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (893, '2021-09-21 12:43:21', 3, '{\"attempted\":\"309950152704\",\"speedList\":[\"544946256\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (894, '2021-09-21 12:44:21', 3, '{\"attempted\":\"311593795584\",\"speedList\":[\"543065123\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (895, '2021-09-21 12:45:22', 3, '{\"attempted\":\"311593795584\",\"speedList\":[\"543065123\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (896, '2021-09-21 12:46:22', 3, '{\"attempted\":\"311593795584\",\"speedList\":[\"543065123\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (897, '2021-09-21 12:47:22', 3, '{\"attempted\":\"311593795584\",\"speedList\":[\"543065123\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (898, '2021-09-21 12:48:22', 3, '{\"attempted\":\"21463302144\",\"speedList\":[\"894154128\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (899, '2021-09-21 12:49:22', 3, '{\"attempted\":\"51959562240\",\"speedList\":[\"524015289\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (900, '2021-09-21 12:50:22', 3, '{\"attempted\":\"83173048320\",\"speedList\":[\"515006180\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (901, '2021-09-21 12:51:22', 3, '{\"attempted\":\"115732905984\",\"speedList\":[\"605192703\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (902, '2021-09-21 12:52:22', 3, '{\"attempted\":\"152335024128\",\"speedList\":[\"603380675\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (903, '2021-09-21 12:53:23', 3, '{\"attempted\":\"185788268544\",\"speedList\":[\"580396231\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (904, '2021-09-21 12:54:23', 3, '{\"attempted\":\"221010984960\",\"speedList\":[\"574409666\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (905, '2021-09-21 12:55:23', 3, '{\"attempted\":\"255050907648\",\"speedList\":[\"564355032\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (906, '2021-09-21 12:56:23', 3, '{\"attempted\":\"289078247424\",\"speedList\":[\"559171758\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (907, '2021-09-21 12:57:23', 3, '{\"attempted\":\"322174451712\",\"speedList\":[\"526812371\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (908, '2021-09-21 12:58:23', 3, '{\"attempted\":\"8748269568\",\"speedList\":[\"736855113\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (909, '2021-09-21 12:59:23', 3, '{\"attempted\":\"44348473344\",\"speedList\":[\"610697454\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (910, '2021-09-21 13:00:24', 3, '{\"attempted\":\"80422109184\",\"speedList\":[\"603092753\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (911, '2021-09-21 13:01:24', 3, '{\"attempted\":\"117665955840\",\"speedList\":[\"625726240\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (912, '2021-09-21 13:02:24', 3, '{\"attempted\":\"155689943040\",\"speedList\":[\"614230113\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (913, '2021-09-21 13:03:25', 3, '{\"attempted\":\"193466990592\",\"speedList\":[\"622353724\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (914, '2021-09-21 13:04:25', 3, '{\"attempted\":\"229477711872\",\"speedList\":[\"621616330\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (915, '2021-09-21 13:05:25', 3, '{\"attempted\":\"267212292096\",\"speedList\":[\"597872104\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (916, '2021-09-21 13:06:25', 3, '{\"attempted\":\"306079334400\",\"speedList\":[\"630770673\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (917, '2021-09-21 13:07:25', 3, '{\"attempted\":\"343939743744\",\"speedList\":[\"620212262\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (918, '2021-09-21 13:08:25', 3, '{\"attempted\":\"2604662784\",\"speedList\":[\"945332040\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (919, '2021-09-21 13:09:25', 3, '{\"attempted\":\"43278925824\",\"speedList\":[\"681691089\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (920, '2021-09-21 13:10:25', 3, '{\"attempted\":\"82359877632\",\"speedList\":[\"641298774\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (921, '2021-09-21 13:11:26', 3, '{\"attempted\":\"119490478080\",\"speedList\":[\"644646997\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (922, '2021-09-21 13:12:26', 3, '{\"attempted\":\"158584012800\",\"speedList\":[\"673300012\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (923, '2021-09-21 13:13:26', 3, '{\"attempted\":\"196834492416\",\"speedList\":[\"633748889\"],\"status\":\"running\",\"temperatureList\":[63],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (924, '2021-09-21 13:14:26', 3, '{\"attempted\":\"236086886400\",\"speedList\":[\"651971267\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (925, '2021-09-21 13:15:26', 3, '{\"attempted\":\"275293667328\",\"speedList\":[\"653977603\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (926, '2021-09-21 13:16:26', 3, '{\"attempted\":\"313493815296\",\"speedList\":[\"649492371\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (927, '2021-09-21 13:17:26', 3, '{\"attempted\":\"351115149312\",\"speedList\":[\"652742595\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (928, '2021-09-21 13:18:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (929, '2021-09-21 13:19:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (930, '2021-09-21 13:20:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (931, '2021-09-21 13:21:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (932, '2021-09-21 13:22:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (933, '2021-09-21 13:23:27', 3, '{\"attempted\":\"384588840960\",\"speedList\":[\"645870328\"],\"status\":\"running\",\"temperatureList\":[62],\"total\":\"5429503678976\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (934, '2021-11-13 16:41:20', 5, '{\"attempted\":\"891863040\",\"speedList\":[\"19798768\"],\"status\":\"running\",\"total\":\"7737809375\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (935, '2021-11-13 16:42:20', 5, '{\"attempted\":\"1868943360\",\"speedList\":[\"16742925\"],\"status\":\"running\",\"total\":\"7737809375\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (936, '2021-11-13 16:44:07', 5, '{\"attempted\":\"785633280\",\"speedList\":[\"18707774\"],\"status\":\"running\",\"total\":\"7737809375\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (937, '2021-11-13 21:09:51', 5, '{\"attempted\":\"1120579584\",\"speedList\":[\"15945383\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (938, '2021-11-13 21:10:51', 5, '{\"attempted\":\"2205659136\",\"speedList\":[\"20103394\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (939, '2021-11-13 21:11:51', 5, '{\"attempted\":\"3478646784\",\"speedList\":[\"21425774\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (940, '2021-11-13 21:12:51', 5, '{\"attempted\":\"4731408384\",\"speedList\":[\"21045596\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (941, '2021-11-13 21:13:51', 5, '{\"attempted\":\"5993766912\",\"speedList\":[\"20890165\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (942, '2021-11-13 21:14:51', 5, '{\"attempted\":\"7281045504\",\"speedList\":[\"22267715\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (943, '2021-11-13 21:15:51', 5, '{\"attempted\":\"8564969472\",\"speedList\":[\"21231191\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (944, '2021-11-13 21:16:51', 5, '{\"attempted\":\"9742405632\",\"speedList\":[\"19183602\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (945, '2021-11-13 21:17:51', 5, '{\"attempted\":\"10833469440\",\"speedList\":[\"17790359\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (946, '2021-11-13 21:18:51', 5, '{\"attempted\":\"11940065280\",\"speedList\":[\"18690746\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (947, '2021-11-13 21:19:51', 5, '{\"attempted\":\"11994292224\",\"speedList\":[\"18624236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (948, '2021-11-13 21:20:51', 5, '{\"attempted\":\"11994292224\",\"speedList\":[\"18624236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (949, '2021-11-13 21:21:52', 5, '{\"attempted\":\"11994292224\",\"speedList\":[\"18624236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (950, '2021-11-13 21:22:52', 5, '{\"attempted\":\"11994292224\",\"speedList\":[\"18624236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (951, '2021-11-13 21:23:52', 5, '{\"attempted\":\"11994292224\",\"speedList\":[\"18624236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (952, '2021-11-13 21:24:52', 5, '{\"attempted\":\"1465331712\",\"speedList\":[\"24780312\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (953, '2021-11-13 21:25:52', 5, '{\"attempted\":\"2726916096\",\"speedList\":[\"20353436\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (954, '2021-11-13 21:26:52', 5, '{\"attempted\":\"3930869760\",\"speedList\":[\"19359337\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (955, '2021-11-13 21:27:52', 5, '{\"attempted\":\"5005271040\",\"speedList\":[\"17801561\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (956, '2021-11-13 21:28:52', 5, '{\"attempted\":\"6058414080\",\"speedList\":[\"18334521\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (957, '2021-11-13 21:29:52', 5, '{\"attempted\":\"7250141184\",\"speedList\":[\"15466376\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (958, '2021-11-13 21:30:52', 5, '{\"attempted\":\"8343527424\",\"speedList\":[\"18599908\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (959, '2021-11-13 21:31:52', 5, '{\"attempted\":\"9472720896\",\"speedList\":[\"17917419\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (960, '2021-11-13 21:32:52', 5, '{\"attempted\":\"10559864832\",\"speedList\":[\"17385418\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (961, '2021-11-13 21:33:52', 5, '{\"attempted\":\"11675541504\",\"speedList\":[\"17803106\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (962, '2021-11-13 21:34:52', 5, '{\"attempted\":\"1124128512\",\"speedList\":[\"20821328\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (963, '2021-11-13 21:35:52', 5, '{\"attempted\":\"2252540160\",\"speedList\":[\"19502000\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (964, '2021-11-13 21:36:52', 5, '{\"attempted\":\"3597444864\",\"speedList\":[\"22368804\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (965, '2021-11-13 21:37:52', 5, '{\"attempted\":\"4948968960\",\"speedList\":[\"22385113\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (966, '2021-11-13 21:38:52', 5, '{\"attempted\":\"6164211456\",\"speedList\":[\"20376137\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (967, '2021-11-13 21:39:53', 5, '{\"attempted\":\"7335843840\",\"speedList\":[\"19754106\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (968, '2021-11-13 21:40:53', 5, '{\"attempted\":\"8496573696\",\"speedList\":[\"19342008\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (969, '2021-11-13 21:41:53', 5, '{\"attempted\":\"9847319040\",\"speedList\":[\"23927658\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (970, '2021-11-13 21:42:53', 5, '{\"attempted\":\"11254913280\",\"speedList\":[\"21803396\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (971, '2021-11-13 21:43:53', 5, '{\"attempted\":\"12497801472\",\"speedList\":[\"20696400\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (972, '2021-11-13 21:44:53', 5, '{\"attempted\":\"12626684928\",\"speedList\":[\"20750524\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (973, '2021-11-13 21:45:53', 5, '{\"attempted\":\"12626684928\",\"speedList\":[\"20750524\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (974, '2021-11-13 21:46:53', 5, '{\"attempted\":\"12626684928\",\"speedList\":[\"20750524\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (975, '2021-11-13 21:47:53', 5, '{\"attempted\":\"12626684928\",\"speedList\":[\"20750524\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (976, '2021-11-13 21:48:53', 5, '{\"attempted\":\"12626684928\",\"speedList\":[\"20750524\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (977, '2021-11-13 21:49:53', 5, '{\"attempted\":\"970579968\",\"speedList\":[\"17255926\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (978, '2021-11-13 21:50:53', 5, '{\"attempted\":\"1785931776\",\"speedList\":[\"13620234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (979, '2021-11-13 21:51:53', 5, '{\"attempted\":\"2631008256\",\"speedList\":[\"13654883\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (980, '2021-11-13 21:52:53', 5, '{\"attempted\":\"3523203072\",\"speedList\":[\"14901039\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (981, '2021-11-13 21:53:53', 5, '{\"attempted\":\"4431353856\",\"speedList\":[\"15430573\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (982, '2021-11-13 21:54:53', 5, '{\"attempted\":\"5422190592\",\"speedList\":[\"16800710\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (983, '2021-11-13 21:55:53', 5, '{\"attempted\":\"6307239936\",\"speedList\":[\"16827252\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (984, '2021-11-13 21:56:53', 5, '{\"attempted\":\"7377764352\",\"speedList\":[\"17515758\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (985, '2021-11-13 21:57:53', 5, '{\"attempted\":\"8199475200\",\"speedList\":[\"14998760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (986, '2021-11-13 21:58:53', 5, '{\"attempted\":\"9146830848\",\"speedList\":[\"16998022\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (987, '2021-11-13 21:59:53', 5, '{\"attempted\":\"9146830848\",\"speedList\":[\"16998022\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (988, '2021-11-13 22:00:53', 5, '{\"attempted\":\"9146830848\",\"speedList\":[\"16998022\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (989, '2021-11-13 22:01:53', 5, '{\"attempted\":\"9146830848\",\"speedList\":[\"16998022\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (990, '2021-11-14 14:53:27', 5, '{\"attempted\":\"1014061056\",\"speedList\":[\"15347696\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (991, '2021-11-14 14:54:27', 5, '{\"attempted\":\"1889372160\",\"speedList\":[\"14853326\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (992, '2021-11-14 14:55:28', 5, '{\"attempted\":\"2956910592\",\"speedList\":[\"17702353\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (993, '2021-11-14 14:56:28', 5, '{\"attempted\":\"3989145600\",\"speedList\":[\"17994565\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (994, '2021-11-14 14:57:28', 5, '{\"attempted\":\"5043965952\",\"speedList\":[\"16138202\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (995, '2021-11-14 14:58:28', 5, '{\"attempted\":\"6108266496\",\"speedList\":[\"17111278\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (996, '2021-11-14 14:59:28', 5, '{\"attempted\":\"7191644160\",\"speedList\":[\"17906971\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (997, '2021-11-14 15:00:28', 5, '{\"attempted\":\"8232830976\",\"speedList\":[\"16955277\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (998, '2021-11-14 15:01:28', 5, '{\"attempted\":\"9273243648\",\"speedList\":[\"17470173\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (999, '2021-11-14 15:02:28', 5, '{\"attempted\":\"10354802688\",\"speedList\":[\"17946509\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1000, '2021-11-14 15:03:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1001, '2021-11-14 15:04:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1002, '2021-11-14 15:05:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1003, '2021-11-14 15:06:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1004, '2021-11-14 15:07:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1005, '2021-11-14 15:08:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1006, '2021-11-14 15:09:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1007, '2021-11-14 15:10:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1008, '2021-11-14 15:11:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1009, '2021-11-14 15:12:28', 5, '{\"attempted\":\"10409054208\",\"speedList\":[\"17939401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1010, '2021-11-14 15:13:28', 5, '{\"attempted\":\"1186037760\",\"speedList\":[\"20761654\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1011, '2021-11-14 15:14:28', 5, '{\"attempted\":\"2442166272\",\"speedList\":[\"20723328\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1012, '2021-11-14 15:15:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1013, '2021-11-14 15:16:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1014, '2021-11-14 15:17:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1015, '2021-11-14 15:18:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1016, '2021-11-14 15:19:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1017, '2021-11-14 15:20:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1018, '2021-11-14 15:21:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1019, '2021-11-14 15:22:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1020, '2021-11-14 15:23:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1021, '2021-11-14 15:24:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1022, '2021-11-14 15:25:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1023, '2021-11-14 15:26:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1024, '2021-11-14 15:27:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1025, '2021-11-14 15:28:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1026, '2021-11-14 15:29:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1027, '2021-11-14 15:30:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1028, '2021-11-14 15:31:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1029, '2021-11-14 15:32:28', 5, '{\"attempted\":\"2635296768\",\"speedList\":[\"20714234\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1030, '2021-11-14 15:33:29', 5, '{\"attempted\":\"1447170048\",\"speedList\":[\"20751399\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1031, '2021-11-14 15:34:29', 5, '{\"attempted\":\"2686027776\",\"speedList\":[\"20233763\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1032, '2021-11-14 15:35:29', 5, '{\"attempted\":\"3951894528\",\"speedList\":[\"20871056\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1033, '2021-11-14 15:36:29', 5, '{\"attempted\":\"5212704768\",\"speedList\":[\"20815174\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1034, '2021-11-14 15:37:29', 5, '{\"attempted\":\"6419755008\",\"speedList\":[\"20986502\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1035, '2021-11-14 15:38:29', 5, '{\"attempted\":\"7686137856\",\"speedList\":[\"20943723\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1036, '2021-11-14 15:39:29', 5, '{\"attempted\":\"8953423872\",\"speedList\":[\"20997960\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1037, '2021-11-14 15:40:29', 5, '{\"attempted\":\"10218774528\",\"speedList\":[\"20867265\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1038, '2021-11-14 15:41:29', 5, '{\"attempted\":\"11488536576\",\"speedList\":[\"20831005\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1039, '2021-11-14 15:42:29', 5, '{\"attempted\":\"12757370880\",\"speedList\":[\"21013849\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1040, '2021-11-14 15:43:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1041, '2021-11-14 15:44:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1042, '2021-11-14 15:45:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1043, '2021-11-14 15:46:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1044, '2021-11-14 15:47:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1045, '2021-11-14 15:48:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1046, '2021-11-14 15:49:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1047, '2021-11-14 15:50:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1048, '2021-11-14 15:51:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1049, '2021-11-14 15:52:29', 5, '{\"attempted\":\"12820316160\",\"speedList\":[\"20988537\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1050, '2021-11-14 15:53:29', 5, '{\"attempted\":\"1464170496\",\"speedList\":[\"20764880\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1051, '2021-11-14 15:54:29', 5, '{\"attempted\":\"2727948288\",\"speedList\":[\"21056295\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1052, '2021-11-14 15:55:29', 5, '{\"attempted\":\"3995105280\",\"speedList\":[\"20749046\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1053, '2021-11-14 15:56:29', 5, '{\"attempted\":\"5269149696\",\"speedList\":[\"21107620\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1054, '2021-11-14 15:57:29', 5, '{\"attempted\":\"6542678016\",\"speedList\":[\"21126933\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1055, '2021-11-14 15:58:29', 5, '{\"attempted\":\"7808133120\",\"speedList\":[\"20286355\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1056, '2021-11-14 15:59:30', 5, '{\"attempted\":\"9075185664\",\"speedList\":[\"21008435\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1057, '2021-11-14 16:00:30', 5, '{\"attempted\":\"10328567808\",\"speedList\":[\"21141084\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1058, '2021-11-14 16:01:30', 5, '{\"attempted\":\"11528626176\",\"speedList\":[\"21212484\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1059, '2021-11-14 16:02:30', 5, '{\"attempted\":\"12787218432\",\"speedList\":[\"20796444\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1060, '2021-11-14 16:03:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1061, '2021-11-14 16:04:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1062, '2021-11-14 16:05:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1063, '2021-11-14 16:06:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1064, '2021-11-14 16:07:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1065, '2021-11-14 16:08:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1066, '2021-11-14 16:09:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1067, '2021-11-14 16:10:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1068, '2021-11-14 16:11:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1069, '2021-11-14 16:12:30', 5, '{\"attempted\":\"12850962432\",\"speedList\":[\"20842075\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1070, '2021-11-14 16:13:30', 5, '{\"attempted\":\"1522575360\",\"speedList\":[\"20751337\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1071, '2021-11-14 16:14:30', 5, '{\"attempted\":\"2778974208\",\"speedList\":[\"19749871\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1072, '2021-11-14 16:15:30', 5, '{\"attempted\":\"3973435392\",\"speedList\":[\"20976698\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1073, '2021-11-14 16:16:30', 5, '{\"attempted\":\"5229447168\",\"speedList\":[\"20561838\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1074, '2021-11-14 16:17:30', 5, '{\"attempted\":\"6501144576\",\"speedList\":[\"20965565\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1075, '2021-11-14 16:18:30', 5, '{\"attempted\":\"7766083584\",\"speedList\":[\"19443602\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1076, '2021-11-14 16:19:30', 5, '{\"attempted\":\"9035329536\",\"speedList\":[\"20920951\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1077, '2021-11-14 16:20:30', 5, '{\"attempted\":\"10290284544\",\"speedList\":[\"20951440\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1078, '2021-11-14 16:21:30', 5, '{\"attempted\":\"11539924992\",\"speedList\":[\"20939504\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1079, '2021-11-14 16:22:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1080, '2021-11-14 16:23:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1081, '2021-11-14 16:24:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1082, '2021-11-14 16:25:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1083, '2021-11-14 16:26:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1084, '2021-11-14 16:27:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1085, '2021-11-14 16:28:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1086, '2021-11-14 16:29:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1087, '2021-11-14 16:30:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1088, '2021-11-14 16:31:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1089, '2021-11-14 16:32:30', 5, '{\"attempted\":\"12810332160\",\"speedList\":[\"21191345\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1090, '2021-11-14 16:33:30', 5, '{\"attempted\":\"1165271040\",\"speedList\":[\"19005275\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1091, '2021-11-14 16:34:30', 5, '{\"attempted\":\"2326388736\",\"speedList\":[\"18203650\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1092, '2021-11-14 16:35:30', 5, '{\"attempted\":\"3391979520\",\"speedList\":[\"17934092\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1093, '2021-11-14 16:36:30', 5, '{\"attempted\":\"4492873728\",\"speedList\":[\"18389316\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1094, '2021-11-14 16:37:30', 5, '{\"attempted\":\"5542109184\",\"speedList\":[\"17422252\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1095, '2021-11-14 16:38:30', 5, '{\"attempted\":\"6620946432\",\"speedList\":[\"17231134\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1096, '2021-11-14 16:39:30', 5, '{\"attempted\":\"7701073920\",\"speedList\":[\"16813288\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1097, '2021-11-14 16:40:30', 5, '{\"attempted\":\"8765632512\",\"speedList\":[\"16924520\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1098, '2021-11-14 16:41:30', 5, '{\"attempted\":\"9813823488\",\"speedList\":[\"17798241\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1099, '2021-11-14 16:42:30', 5, '{\"attempted\":\"10791936000\",\"speedList\":[\"16958380\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1100, '2021-11-14 16:43:30', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1101, '2021-11-14 16:44:30', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1102, '2021-11-14 16:45:30', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1103, '2021-11-14 16:46:30', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1104, '2021-11-14 16:47:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1105, '2021-11-14 16:48:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1106, '2021-11-14 16:49:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1107, '2021-11-14 16:50:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1108, '2021-11-14 16:51:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1109, '2021-11-14 16:52:31', 5, '{\"attempted\":\"10838409216\",\"speedList\":[\"16777732\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1110, '2021-11-14 16:53:31', 5, '{\"attempted\":\"1268035584\",\"speedList\":[\"18080829\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1111, '2021-11-14 16:54:31', 5, '{\"attempted\":\"2401148928\",\"speedList\":[\"19085984\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1112, '2021-11-14 16:55:31', 5, '{\"attempted\":\"3608199168\",\"speedList\":[\"20175088\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1113, '2021-11-14 16:56:31', 5, '{\"attempted\":\"4723359744\",\"speedList\":[\"18341566\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1114, '2021-11-14 16:57:31', 5, '{\"attempted\":\"5851262976\",\"speedList\":[\"18298283\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1115, '2021-11-14 16:58:31', 5, '{\"attempted\":\"6978908160\",\"speedList\":[\"19186798\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1116, '2021-11-14 16:59:31', 5, '{\"attempted\":\"8123117568\",\"speedList\":[\"19161798\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1117, '2021-11-14 17:00:31', 5, '{\"attempted\":\"9193132032\",\"speedList\":[\"18700508\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1118, '2021-11-14 17:01:31', 5, '{\"attempted\":\"10272227328\",\"speedList\":[\"17925897\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1119, '2021-11-14 17:02:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1120, '2021-11-14 17:03:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1121, '2021-11-14 17:04:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1122, '2021-11-14 17:05:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1123, '2021-11-14 17:06:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1124, '2021-11-14 17:07:31', 5, '{\"attempted\":\"11390533632\",\"speedList\":[\"17845760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1125, '2021-11-14 17:08:31', 5, '{\"attempted\":\"1340485632\",\"speedList\":[\"18285299\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1126, '2021-11-14 17:09:32', 5, '{\"attempted\":\"2454362112\",\"speedList\":[\"18180365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1127, '2021-11-14 17:10:32', 5, '{\"attempted\":\"3572133888\",\"speedList\":[\"18452319\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1128, '2021-11-14 17:11:32', 5, '{\"attempted\":\"4684707840\",\"speedList\":[\"18411730\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1129, '2021-11-14 17:12:32', 5, '{\"attempted\":\"5807407104\",\"speedList\":[\"18598679\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1130, '2021-11-14 17:13:32', 5, '{\"attempted\":\"6869760000\",\"speedList\":[\"18332154\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1131, '2021-11-14 17:14:32', 5, '{\"attempted\":\"7991033856\",\"speedList\":[\"18591076\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1132, '2021-11-14 17:15:32', 5, '{\"attempted\":\"9111656448\",\"speedList\":[\"18679470\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1133, '2021-11-14 17:16:32', 5, '{\"attempted\":\"10225532928\",\"speedList\":[\"18542341\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1134, '2021-11-14 17:17:32', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1135, '2021-11-14 17:18:32', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1136, '2021-11-14 17:19:32', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1137, '2021-11-14 17:20:32', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1138, '2021-11-14 17:21:32', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1139, '2021-11-14 17:23:33', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1140, '2021-11-14 17:24:33', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1141, '2021-11-14 17:25:33', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1142, '2021-11-14 17:26:33', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1143, '2021-11-14 17:27:33', 5, '{\"attempted\":\"11342131200\",\"speedList\":[\"14987090\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1144, '2021-11-14 17:29:34', 5, '{\"attempted\":\"2114813952\",\"speedList\":[\"17573728\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1145, '2021-11-14 17:30:34', 5, '{\"attempted\":\"3283402752\",\"speedList\":[\"20467881\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1146, '2021-11-14 17:31:34', 5, '{\"attempted\":\"4559929344\",\"speedList\":[\"21387213\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1147, '2021-11-14 17:32:34', 5, '{\"attempted\":\"5850611712\",\"speedList\":[\"21412618\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1148, '2021-11-14 17:33:34', 5, '{\"attempted\":\"7147192320\",\"speedList\":[\"21219405\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1149, '2021-11-14 17:34:34', 5, '{\"attempted\":\"8418410496\",\"speedList\":[\"20848447\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1150, '2021-11-14 17:35:34', 5, '{\"attempted\":\"9677340672\",\"speedList\":[\"21046269\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1151, '2021-11-14 17:36:34', 5, '{\"attempted\":\"10967040000\",\"speedList\":[\"21348282\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1152, '2021-11-14 17:37:34', 5, '{\"attempted\":\"12125896704\",\"speedList\":[\"17940374\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1153, '2021-11-14 17:38:34', 5, '{\"attempted\":\"12125896704\",\"speedList\":[\"17940374\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1154, '2021-11-14 17:39:35', 5, '{\"attempted\":\"12125896704\",\"speedList\":[\"17940374\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1155, '2021-11-14 17:40:35', 5, '{\"attempted\":\"12125896704\",\"speedList\":[\"17940374\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1156, '2021-11-14 17:41:35', 5, '{\"attempted\":\"12125896704\",\"speedList\":[\"17940374\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1157, '2021-11-14 17:42:35', 5, '{\"attempted\":\"69292032\",\"speedList\":[\"26043093\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1158, '2021-11-14 17:43:35', 5, '{\"attempted\":\"1205501952\",\"speedList\":[\"19736602\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1159, '2021-11-14 17:44:36', 5, '{\"attempted\":\"2283257856\",\"speedList\":[\"17409457\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1160, '2021-11-14 17:45:36', 5, '{\"attempted\":\"3409096704\",\"speedList\":[\"18802248\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1161, '2021-11-14 17:46:36', 5, '{\"attempted\":\"4540354560\",\"speedList\":[\"18288798\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1162, '2021-11-14 17:47:36', 5, '{\"attempted\":\"5706387456\",\"speedList\":[\"19202886\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1163, '2021-11-14 17:48:36', 5, '{\"attempted\":\"6837694464\",\"speedList\":[\"19215753\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1164, '2021-11-14 17:50:38', 5, '{\"attempted\":\"9279602688\",\"speedList\":[\"23469577\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1165, '2021-11-14 17:51:38', 5, '{\"attempted\":\"10475249664\",\"speedList\":[\"17935705\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1166, '2021-11-14 17:52:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1167, '2021-11-14 17:53:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1168, '2021-11-14 17:54:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1169, '2021-11-14 17:55:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1170, '2021-11-14 17:56:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1171, '2021-11-14 17:57:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1172, '2021-11-14 17:58:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1173, '2021-11-14 17:59:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1174, '2021-11-14 18:00:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1175, '2021-11-14 18:01:38', 5, '{\"attempted\":\"11588345856\",\"speedList\":[\"20309002\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1176, '2021-11-14 18:02:38', 5, '{\"attempted\":\"139124736\",\"speedList\":[\"24142825\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1177, '2021-11-14 18:04:39', 5, '{\"attempted\":\"2361679872\",\"speedList\":[\"20428681\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1178, '2021-11-14 18:05:39', 5, '{\"attempted\":\"3513188352\",\"speedList\":[\"17974971\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1179, '2021-11-14 18:06:39', 5, '{\"attempted\":\"4676665344\",\"speedList\":[\"20531664\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1180, '2021-11-14 18:08:41', 5, '{\"attempted\":\"6998384640\",\"speedList\":[\"20399934\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1181, '2021-11-14 18:10:42', 5, '{\"attempted\":\"9335144448\",\"speedList\":[\"22544941\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1182, '2021-11-14 18:11:43', 5, '{\"attempted\":\"10501459968\",\"speedList\":[\"17106414\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1183, '2021-11-14 18:12:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1184, '2021-11-14 18:13:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1185, '2021-11-14 18:14:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1186, '2021-11-14 18:15:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1187, '2021-11-14 18:16:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1188, '2021-11-14 18:17:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1189, '2021-11-14 18:18:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1190, '2021-11-14 18:19:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1191, '2021-11-14 18:20:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1192, '2021-11-14 18:21:43', 5, '{\"attempted\":\"11443236864\",\"speedList\":[\"19988230\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1193, '2021-11-14 18:22:43', 5, '{\"attempted\":\"343541760\",\"speedList\":[\"28980782\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1194, '2021-11-14 18:23:43', 5, '{\"attempted\":\"1767493632\",\"speedList\":[\"20996401\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1195, '2021-11-14 18:24:43', 5, '{\"attempted\":\"3036739584\",\"speedList\":[\"20999006\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1196, '2021-11-14 18:25:43', 5, '{\"attempted\":\"4289476608\",\"speedList\":[\"20154945\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1197, '2021-11-14 18:26:43', 5, '{\"attempted\":\"5340917760\",\"speedList\":[\"18092820\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1198, '2021-11-14 18:27:43', 5, '{\"attempted\":\"6308388864\",\"speedList\":[\"16796136\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1199, '2021-11-14 18:28:43', 5, '{\"attempted\":\"7338031104\",\"speedList\":[\"16326655\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1200, '2021-11-14 18:30:45', 5, '{\"attempted\":\"9466116096\",\"speedList\":[\"20716955\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1201, '2021-11-14 18:31:45', 5, '{\"attempted\":\"10530533376\",\"speedList\":[\"17494721\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1202, '2021-11-14 18:32:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1203, '2021-11-14 18:33:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1204, '2021-11-14 18:34:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1205, '2021-11-14 18:35:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1206, '2021-11-14 18:36:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1207, '2021-11-14 18:37:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1208, '2021-11-14 18:38:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1209, '2021-11-14 18:39:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1210, '2021-11-14 18:40:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1211, '2021-11-14 18:41:45', 5, '{\"attempted\":\"11237634048\",\"speedList\":[\"15363863\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1212, '2021-11-14 18:42:45', 5, '{\"attempted\":\"288129024\",\"speedList\":[\"24415190\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1213, '2021-11-14 18:43:45', 5, '{\"attempted\":\"1505323008\",\"speedList\":[\"24367218\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1214, '2021-11-14 18:44:45', 5, '{\"attempted\":\"2666041344\",\"speedList\":[\"19513910\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1215, '2021-11-14 18:45:45', 5, '{\"attempted\":\"3853651968\",\"speedList\":[\"19557304\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1216, '2021-11-14 18:46:45', 5, '{\"attempted\":\"5109000192\",\"speedList\":[\"20917459\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1217, '2021-11-14 18:47:46', 5, '{\"attempted\":\"6280630272\",\"speedList\":[\"19489500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1218, '2021-11-14 18:48:46', 5, '{\"attempted\":\"7483797504\",\"speedList\":[\"22136806\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1219, '2021-11-14 18:49:46', 5, '{\"attempted\":\"8688531456\",\"speedList\":[\"19175425\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1220, '2021-11-14 18:50:46', 5, '{\"attempted\":\"9932580864\",\"speedList\":[\"21083526\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1221, '2021-11-14 18:51:46', 5, '{\"attempted\":\"11156779008\",\"speedList\":[\"21357674\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1222, '2021-11-14 18:52:46', 5, '{\"attempted\":\"12115427328\",\"speedList\":[\"19655365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1223, '2021-11-14 18:53:46', 5, '{\"attempted\":\"12115427328\",\"speedList\":[\"19655365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1224, '2021-11-14 18:54:46', 5, '{\"attempted\":\"12115427328\",\"speedList\":[\"19655365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1225, '2021-11-14 18:55:46', 5, '{\"attempted\":\"12115427328\",\"speedList\":[\"19655365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1226, '2021-11-14 18:56:46', 5, '{\"attempted\":\"12115427328\",\"speedList\":[\"19655365\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1227, '2021-11-14 18:57:46', 5, '{\"attempted\":\"187674624\",\"speedList\":[\"16287300\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1228, '2021-11-14 18:58:46', 5, '{\"attempted\":\"1189896192\",\"speedList\":[\"16544875\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1229, '2021-11-14 18:59:46', 5, '{\"attempted\":\"2288351232\",\"speedList\":[\"18253460\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1230, '2021-11-14 19:00:46', 5, '{\"attempted\":\"3352135680\",\"speedList\":[\"17707591\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1231, '2021-11-14 19:01:46', 5, '{\"attempted\":\"4435347456\",\"speedList\":[\"17901264\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1232, '2021-11-14 19:02:46', 5, '{\"attempted\":\"5451264000\",\"speedList\":[\"17712719\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1233, '2021-11-14 19:03:46', 5, '{\"attempted\":\"6524762112\",\"speedList\":[\"17862994\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1234, '2021-11-14 19:04:46', 5, '{\"attempted\":\"7619696640\",\"speedList\":[\"18163632\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1235, '2021-11-14 19:05:46', 5, '{\"attempted\":\"8711110656\",\"speedList\":[\"18080612\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1236, '2021-11-14 19:06:46', 5, '{\"attempted\":\"9799815168\",\"speedList\":[\"18026267\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1237, '2021-11-14 19:07:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1238, '2021-11-14 19:08:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1239, '2021-11-14 19:09:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1240, '2021-11-14 19:10:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1241, '2021-11-14 19:11:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1242, '2021-11-14 19:12:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1243, '2021-11-14 19:13:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1244, '2021-11-14 19:14:46', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1245, '2021-11-14 19:15:47', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1246, '2021-11-14 19:16:47', 5, '{\"attempted\":\"10603487232\",\"speedList\":[\"17767500\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1247, '2021-11-14 19:17:47', 5, '{\"attempted\":\"179761152\",\"speedList\":[\"12142249\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1248, '2021-11-14 19:18:47', 5, '{\"attempted\":\"872196096\",\"speedList\":[\"11284816\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1249, '2021-11-14 19:19:47', 5, '{\"attempted\":\"1564637184\",\"speedList\":[\"11245578\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1250, '2021-11-14 19:20:47', 5, '{\"attempted\":\"2242934784\",\"speedList\":[\"11601316\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1251, '2021-11-14 19:21:47', 5, '{\"attempted\":\"2906560512\",\"speedList\":[\"11716474\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1252, '2021-11-14 19:22:47', 5, '{\"attempted\":\"3576023040\",\"speedList\":[\"11157033\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1253, '2021-11-14 19:23:47', 5, '{\"attempted\":\"4256268288\",\"speedList\":[\"12154409\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1254, '2021-11-14 19:24:47', 5, '{\"attempted\":\"4955197440\",\"speedList\":[\"11582166\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1255, '2021-11-14 19:25:47', 5, '{\"attempted\":\"5630889984\",\"speedList\":[\"11384395\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1256, '2021-11-14 19:26:47', 5, '{\"attempted\":\"6332160000\",\"speedList\":[\"11311420\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1257, '2021-11-14 19:27:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1258, '2021-11-14 19:28:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1259, '2021-11-14 19:29:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1260, '2021-11-14 19:30:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1261, '2021-11-14 19:31:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1262, '2021-11-14 19:32:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1263, '2021-11-14 19:33:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1264, '2021-11-14 19:34:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1265, '2021-11-14 19:35:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1266, '2021-11-14 19:36:47', 5, '{\"attempted\":\"6855610368\",\"speedList\":[\"11950604\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1267, '2021-11-14 19:37:47', 5, '{\"attempted\":\"180928512\",\"speedList\":[\"12207299\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1268, '2021-11-14 19:38:47', 5, '{\"attempted\":\"881805312\",\"speedList\":[\"11628078\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1269, '2021-11-14 19:39:47', 5, '{\"attempted\":\"1581643776\",\"speedList\":[\"11248706\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1270, '2021-11-14 19:40:47', 5, '{\"attempted\":\"2281740288\",\"speedList\":[\"11934886\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1271, '2021-11-14 19:41:47', 5, '{\"attempted\":\"3047122944\",\"speedList\":[\"14524554\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1272, '2021-11-14 19:42:47', 5, '{\"attempted\":\"4043538432\",\"speedList\":[\"16977760\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1273, '2021-11-14 19:43:47', 5, '{\"attempted\":\"4909639680\",\"speedList\":[\"14350952\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1274, '2021-11-14 19:44:47', 5, '{\"attempted\":\"5728364544\",\"speedList\":[\"15859860\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1275, '2021-11-14 19:45:47', 5, '{\"attempted\":\"6524897280\",\"speedList\":[\"12861896\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1276, '2021-11-14 19:46:47', 5, '{\"attempted\":\"7343241216\",\"speedList\":[\"13707527\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1277, '2021-11-14 19:47:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1278, '2021-11-14 19:48:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1279, '2021-11-14 19:49:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1280, '2021-11-14 19:50:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1281, '2021-11-14 19:51:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1282, '2021-11-14 19:52:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1283, '2021-11-14 19:53:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1284, '2021-11-14 19:54:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1285, '2021-11-14 19:55:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1286, '2021-11-14 19:56:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1287, '2021-11-14 19:57:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1288, '2021-11-14 19:58:47', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1289, '2021-11-14 19:59:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1290, '2021-11-14 20:00:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1291, '2021-11-14 20:01:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1292, '2021-11-14 20:02:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1293, '2021-11-14 20:03:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1294, '2021-11-14 20:04:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1295, '2021-11-14 20:05:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1296, '2021-11-14 20:06:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1297, '2021-11-14 20:07:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1298, '2021-11-14 20:08:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1299, '2021-11-14 20:09:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1300, '2021-11-14 20:10:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1301, '2021-11-14 20:11:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1302, '2021-11-14 20:12:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1303, '2021-11-14 20:13:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1304, '2021-11-14 20:14:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1305, '2021-11-14 20:15:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1306, '2021-11-14 20:16:48', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1307, '2021-11-14 20:18:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1308, '2021-11-14 20:19:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1309, '2021-11-14 20:20:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1310, '2021-11-14 20:21:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1311, '2021-11-14 20:22:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1312, '2021-11-14 20:23:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1313, '2021-11-14 20:24:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1314, '2021-11-14 20:25:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1315, '2021-11-14 20:26:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1316, '2021-11-14 20:27:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1317, '2021-11-14 20:28:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1318, '2021-11-14 20:29:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1319, '2021-11-14 20:30:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1320, '2021-11-14 20:31:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1321, '2021-11-14 20:32:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1322, '2021-11-14 20:33:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1323, '2021-11-14 20:34:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1324, '2021-11-14 20:35:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1325, '2021-11-14 20:36:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1326, '2021-11-14 20:37:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1327, '2021-11-14 20:38:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1328, '2021-11-14 20:39:49', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1329, '2021-11-14 20:40:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1330, '2021-11-14 20:41:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1331, '2021-11-14 20:42:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1332, '2021-11-14 20:43:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1333, '2021-11-14 20:44:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1334, '2021-11-14 20:45:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1335, '2021-11-14 20:46:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1336, '2021-11-14 20:47:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1337, '2021-11-14 20:48:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1338, '2021-11-14 20:49:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1339, '2021-11-14 20:50:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1340, '2021-11-14 20:51:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1341, '2021-11-14 20:52:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1342, '2021-11-14 20:53:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1343, '2021-11-14 20:54:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1344, '2021-11-14 20:55:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1345, '2021-11-14 20:56:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1346, '2021-11-14 20:57:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1347, '2021-11-14 20:58:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1348, '2021-11-14 20:59:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1349, '2021-11-14 21:00:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1350, '2021-11-14 21:01:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1351, '2021-11-14 21:02:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1352, '2021-11-14 21:03:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1353, '2021-11-14 21:04:50', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1354, '2021-11-14 21:09:05', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1355, '2021-11-14 21:09:05', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1356, '2021-11-14 21:09:11', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1357, '2021-11-14 21:10:11', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1358, '2021-11-14 21:11:18', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1359, '2021-11-14 21:12:18', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1360, '2021-11-14 21:13:18', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1361, '2021-11-14 21:14:18', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1362, '2021-11-14 21:15:33', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1363, '2021-11-14 21:16:29', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1364, '2021-11-14 21:17:29', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1365, '2021-11-14 21:18:29', 5, '{\"attempted\":\"8093048832\",\"speedList\":[\"17373947\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1366, '2021-11-14 21:20:48', 5, '{\"attempted\":\"632537088\",\"speedList\":[\"21139805\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1367, '2021-11-14 21:21:48', 5, '{\"attempted\":\"1798176768\",\"speedList\":[\"21194235\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1368, '2021-11-14 21:22:48', 5, '{\"attempted\":\"2834595840\",\"speedList\":[\"16615356\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1369, '2021-11-14 21:23:48', 5, '{\"attempted\":\"3846389760\",\"speedList\":[\"17142888\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1370, '2021-11-14 21:24:48', 5, '{\"attempted\":\"4971921408\",\"speedList\":[\"20239026\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1371, '2021-11-14 21:25:48', 5, '{\"attempted\":\"6216204288\",\"speedList\":[\"20743668\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1372, '2021-11-14 21:26:48', 5, '{\"attempted\":\"7356088320\",\"speedList\":[\"19904216\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1373, '2021-11-14 21:27:48', 5, '{\"attempted\":\"8477245440\",\"speedList\":[\"16407775\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1374, '2021-11-14 21:28:48', 5, '{\"attempted\":\"9587982336\",\"speedList\":[\"20145183\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1375, '2021-11-14 21:29:48', 5, '{\"attempted\":\"10589208576\",\"speedList\":[\"15230077\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1376, '2021-11-14 21:30:48', 5, '{\"attempted\":\"11077779456\",\"speedList\":[\"15962797\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1377, '2021-11-14 21:31:48', 5, '{\"attempted\":\"11077779456\",\"speedList\":[\"15962797\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1378, '2021-11-14 21:34:06', 5, '{\"attempted\":\"628039680\",\"speedList\":[\"13081794\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1379, '2021-11-14 21:35:06', 5, '{\"attempted\":\"1444626432\",\"speedList\":[\"12840229\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1380, '2021-11-14 21:36:06', 5, '{\"attempted\":\"2228871168\",\"speedList\":[\"12959907\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1381, '2021-11-14 21:37:06', 5, '{\"attempted\":\"3002769408\",\"speedList\":[\"13039656\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1382, '2021-11-14 21:38:06', 5, '{\"attempted\":\"3815915520\",\"speedList\":[\"13508818\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1383, '2021-11-14 21:39:06', 5, '{\"attempted\":\"4741472256\",\"speedList\":[\"16265927\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1384, '2021-11-14 21:40:06', 5, '{\"attempted\":\"5652873216\",\"speedList\":[\"17336721\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1385, '2021-11-14 21:41:06', 5, '{\"attempted\":\"6508118016\",\"speedList\":[\"16024939\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1386, '2021-11-14 21:42:06', 5, '{\"attempted\":\"7420600320\",\"speedList\":[\"15172219\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1387, '2021-11-14 21:43:06', 5, '{\"attempted\":\"8300912640\",\"speedList\":[\"18345878\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1388, '2021-11-14 21:44:06', 5, '{\"attempted\":\"8593809408\",\"speedList\":[\"16610274\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1389, '2021-11-14 21:45:06', 5, '{\"attempted\":\"8593809408\",\"speedList\":[\"16610274\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1390, '2021-11-14 21:46:06', 5, '{\"attempted\":\"8593809408\",\"speedList\":[\"16610274\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1391, '2021-11-14 21:47:06', 5, '{\"attempted\":\"8593809408\",\"speedList\":[\"16610274\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1392, '2021-11-14 21:53:36', 5, '{\"attempted\":\"649101312\",\"speedList\":[\"21721951\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1393, '2021-11-14 21:54:36', 5, '{\"attempted\":\"1863057408\",\"speedList\":[\"20328333\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1394, '2021-11-14 21:55:37', 5, '{\"attempted\":\"3113680896\",\"speedList\":[\"20665069\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1395, '2021-11-14 21:56:37', 5, '{\"attempted\":\"4403625984\",\"speedList\":[\"21404767\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1396, '2021-11-14 21:57:37', 5, '{\"attempted\":\"5629083648\",\"speedList\":[\"20047589\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1397, '2021-11-14 21:58:37', 5, '{\"attempted\":\"6901628928\",\"speedList\":[\"21203394\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1398, '2021-11-14 21:59:37', 5, '{\"attempted\":\"8155398144\",\"speedList\":[\"18885882\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1399, '2021-11-14 22:00:37', 5, '{\"attempted\":\"9382821888\",\"speedList\":[\"20194105\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1400, '2021-11-14 22:02:44', 5, '{\"attempted\":\"11786846208\",\"speedList\":[\"20354131\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1401, '2021-11-14 22:03:44', 5, '{\"attempted\":\"13110607872\",\"speedList\":[\"19434268\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1402, '2021-11-14 22:04:44', 5, '{\"attempted\":\"14476541952\",\"speedList\":[\"28285868\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1403, '2021-11-14 22:05:44', 5, '{\"attempted\":\"15645278208\",\"speedList\":[\"20364639\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1404, '2021-11-14 22:06:44', 5, '{\"attempted\":\"16761323520\",\"speedList\":[\"18554891\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1405, '2021-11-14 22:37:42', 5, '{\"attempted\":\"774586368\",\"speedList\":[\"18446328\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1406, '2021-11-14 22:38:42', 5, '{\"attempted\":\"1690509312\",\"speedList\":[\"15016678\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1407, '2021-11-14 22:39:42', 5, '{\"attempted\":\"2698039296\",\"speedList\":[\"17528504\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1408, '2021-11-14 22:40:42', 5, '{\"attempted\":\"3770241024\",\"speedList\":[\"17895510\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1409, '2021-11-14 22:41:42', 5, '{\"attempted\":\"4798476288\",\"speedList\":[\"18448726\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1410, '2021-11-14 22:42:42', 5, '{\"attempted\":\"5859471360\",\"speedList\":[\"19373807\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1411, '2021-11-14 22:43:42', 5, '{\"attempted\":\"6877224960\",\"speedList\":[\"16221563\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1412, '2021-11-14 22:44:42', 5, '{\"attempted\":\"7716483072\",\"speedList\":[\"13968729\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1413, '2021-11-14 22:45:42', 5, '{\"attempted\":\"8747532288\",\"speedList\":[\"17319923\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1414, '2021-11-14 22:46:42', 5, '{\"attempted\":\"9770201088\",\"speedList\":[\"15952921\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1415, '2021-11-14 22:47:42', 5, '{\"attempted\":\"10795487232\",\"speedList\":[\"16175938\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1416, '2021-11-14 22:48:42', 5, '{\"attempted\":\"11761078272\",\"speedList\":[\"16528160\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1417, '2021-11-14 22:49:42', 5, '{\"attempted\":\"12829937664\",\"speedList\":[\"19217172\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1418, '2021-11-14 22:50:42', 5, '{\"attempted\":\"13835698176\",\"speedList\":[\"16190236\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1419, '2021-11-14 22:51:42', 5, '{\"attempted\":\"14942957568\",\"speedList\":[\"18707276\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1420, '2021-11-14 22:52:42', 5, '{\"attempted\":\"16068366336\",\"speedList\":[\"20424151\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1421, '2021-11-14 22:53:42', 5, '{\"attempted\":\"17204588544\",\"speedList\":[\"17800867\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1422, '2021-11-14 22:54:43', 5, '{\"attempted\":\"18219786240\",\"speedList\":[\"17268675\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1423, '2021-11-14 22:55:43', 5, '{\"attempted\":\"19255160832\",\"speedList\":[\"19195180\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1424, '2021-11-14 22:56:43', 5, '{\"attempted\":\"20219314176\",\"speedList\":[\"14531766\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1425, '2021-11-14 22:57:43', 5, '{\"attempted\":\"21126586368\",\"speedList\":[\"16652050\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1426, '2021-11-14 22:58:43', 5, '{\"attempted\":\"22075011072\",\"speedList\":[\"16540847\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1427, '2021-11-14 22:59:43', 5, '{\"attempted\":\"23147802624\",\"speedList\":[\"17909691\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1428, '2021-11-14 23:00:48', 5, '{\"attempted\":\"24120274944\",\"speedList\":[\"17887833\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1429, '2021-11-14 23:01:48', 5, '{\"attempted\":\"25144971264\",\"speedList\":[\"15369390\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1430, '2021-11-14 23:02:48', 5, '{\"attempted\":\"26157809664\",\"speedList\":[\"17841565\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1431, '2021-11-14 23:03:48', 5, '{\"attempted\":\"27237089280\",\"speedList\":[\"18069235\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1432, '2021-11-14 23:04:48', 5, '{\"attempted\":\"28341596160\",\"speedList\":[\"19568674\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1433, '2021-11-14 23:05:48', 5, '{\"attempted\":\"29436272640\",\"speedList\":[\"18994914\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1434, '2021-11-14 23:06:48', 5, '{\"attempted\":\"30564237312\",\"speedList\":[\"20029740\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1435, '2021-11-14 23:07:48', 5, '{\"attempted\":\"829102080\",\"speedList\":[\"17884677\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1436, '2021-11-14 23:08:48', 5, '{\"attempted\":\"1879222272\",\"speedList\":[\"18287082\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1437, '2021-11-14 23:09:48', 5, '{\"attempted\":\"2992871424\",\"speedList\":[\"19812164\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1438, '2021-11-14 23:10:48', 5, '{\"attempted\":\"4018255872\",\"speedList\":[\"18390147\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1439, '2021-11-14 23:11:48', 5, '{\"attempted\":\"5003735040\",\"speedList\":[\"17717987\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1440, '2021-11-14 23:12:48', 5, '{\"attempted\":\"6048546816\",\"speedList\":[\"19303319\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1441, '2021-11-14 23:13:48', 5, '{\"attempted\":\"7161212928\",\"speedList\":[\"19106964\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1442, '2021-11-14 23:14:48', 5, '{\"attempted\":\"8281479168\",\"speedList\":[\"19059596\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1443, '2021-11-14 23:15:48', 5, '{\"attempted\":\"9408135168\",\"speedList\":[\"19004991\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1444, '2021-11-14 23:16:48', 5, '{\"attempted\":\"10535903232\",\"speedList\":[\"19206213\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1445, '2021-11-14 23:17:49', 5, '{\"attempted\":\"11663572992\",\"speedList\":[\"19536555\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1446, '2021-11-14 23:18:49', 5, '{\"attempted\":\"12793964544\",\"speedList\":[\"19166051\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1447, '2021-11-14 23:19:49', 5, '{\"attempted\":\"13873440768\",\"speedList\":[\"17571691\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1448, '2021-11-14 23:20:49', 5, '{\"attempted\":\"14933815296\",\"speedList\":[\"17423291\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1449, '2021-11-14 23:21:49', 5, '{\"attempted\":\"15932596224\",\"speedList\":[\"18342691\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1450, '2021-11-14 23:22:49', 5, '{\"attempted\":\"17063903232\",\"speedList\":[\"18966755\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1451, '2021-11-14 23:23:49', 5, '{\"attempted\":\"18201993216\",\"speedList\":[\"19151885\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1452, '2021-11-14 23:24:49', 5, '{\"attempted\":\"19334774784\",\"speedList\":[\"19101265\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1453, '2021-11-14 23:25:49', 5, '{\"attempted\":\"20458186752\",\"speedList\":[\"18765310\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1454, '2021-11-14 23:26:49', 5, '{\"attempted\":\"21588215808\",\"speedList\":[\"18890215\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1455, '2021-11-14 23:27:49', 5, '{\"attempted\":\"22720309248\",\"speedList\":[\"19041373\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1456, '2021-11-14 23:28:49', 5, '{\"attempted\":\"23856924672\",\"speedList\":[\"19163317\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1457, '2021-11-14 23:29:49', 5, '{\"attempted\":\"24923492352\",\"speedList\":[\"19302926\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1458, '2021-11-14 23:30:49', 5, '{\"attempted\":\"26061189120\",\"speedList\":[\"19947517\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1459, '2021-11-14 23:31:49', 5, '{\"attempted\":\"27181651968\",\"speedList\":[\"18691162\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1460, '2021-11-14 23:32:49', 5, '{\"attempted\":\"28313843712\",\"speedList\":[\"19175047\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1461, '2021-11-14 23:33:49', 5, '{\"attempted\":\"29448886272\",\"speedList\":[\"18874694\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1462, '2021-11-14 23:34:49', 5, '{\"attempted\":\"30593396736\",\"speedList\":[\"20503995\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1463, '2021-11-14 23:35:49', 5, '{\"attempted\":\"31820175360\",\"speedList\":[\"20045708\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1464, '2021-11-14 23:36:49', 5, '{\"attempted\":\"32992075776\",\"speedList\":[\"19994041\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1465, '2021-11-14 23:37:49', 5, '{\"attempted\":\"864387072\",\"speedList\":[\"19594734\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1466, '2021-11-14 23:38:49', 5, '{\"attempted\":\"2045313024\",\"speedList\":[\"18247485\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1467, '2021-11-14 23:39:49', 5, '{\"attempted\":\"3213410304\",\"speedList\":[\"19872017\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1468, '2021-11-14 23:40:49', 5, '{\"attempted\":\"4397334528\",\"speedList\":[\"19323648\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1469, '2021-11-14 23:41:49', 5, '{\"attempted\":\"5582241792\",\"speedList\":[\"19642249\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1470, '2021-11-14 23:42:49', 5, '{\"attempted\":\"6752305152\",\"speedList\":[\"19118430\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1471, '2021-11-14 23:43:49', 5, '{\"attempted\":\"7875330048\",\"speedList\":[\"19168202\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1472, '2021-11-14 23:44:49', 5, '{\"attempted\":\"9029566464\",\"speedList\":[\"19419752\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1473, '2021-11-14 23:45:49', 5, '{\"attempted\":\"10210344960\",\"speedList\":[\"19973007\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1474, '2021-11-14 23:46:49', 5, '{\"attempted\":\"11377459200\",\"speedList\":[\"19795772\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1475, '2021-11-14 23:47:49', 5, '{\"attempted\":\"12540051456\",\"speedList\":[\"19357707\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1476, '2021-11-14 23:48:49', 5, '{\"attempted\":\"13711147008\",\"speedList\":[\"18712154\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1477, '2021-11-14 23:49:49', 5, '{\"attempted\":\"14894481408\",\"speedList\":[\"18921752\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1478, '2021-11-14 23:50:49', 5, '{\"attempted\":\"16073195520\",\"speedList\":[\"19635895\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1479, '2021-11-14 23:51:49', 5, '{\"attempted\":\"17184768000\",\"speedList\":[\"19016235\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1480, '2021-11-14 23:52:49', 5, '{\"attempted\":\"18327355392\",\"speedList\":[\"19665851\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1481, '2021-11-14 23:53:49', 5, '{\"attempted\":\"19498205184\",\"speedList\":[\"19258130\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1482, '2021-11-14 23:54:49', 5, '{\"attempted\":\"20667973632\",\"speedList\":[\"19377063\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1483, '2021-11-14 23:55:49', 5, '{\"attempted\":\"21835776000\",\"speedList\":[\"20199057\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1484, '2021-11-14 23:56:49', 5, '{\"attempted\":\"22999597056\",\"speedList\":[\"19121385\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1485, '2021-11-14 23:57:49', 5, '{\"attempted\":\"24156585984\",\"speedList\":[\"18927724\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1486, '2021-11-14 23:58:50', 5, '{\"attempted\":\"25315540992\",\"speedList\":[\"18637655\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1487, '2021-11-14 23:59:50', 5, '{\"attempted\":\"26418413568\",\"speedList\":[\"19088264\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1488, '2021-11-15 00:00:50', 5, '{\"attempted\":\"27567538176\",\"speedList\":[\"18092710\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1489, '2021-11-15 00:01:50', 5, '{\"attempted\":\"28732882944\",\"speedList\":[\"20081701\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1490, '2021-11-15 00:02:50', 5, '{\"attempted\":\"29931356160\",\"speedList\":[\"19847969\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1491, '2021-11-15 00:03:50', 5, '{\"attempted\":\"31099994112\",\"speedList\":[\"18853404\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1492, '2021-11-15 00:04:50', 5, '{\"attempted\":\"32140541952\",\"speedList\":[\"18230831\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1493, '2021-11-15 00:05:50', 5, '{\"attempted\":\"33282686976\",\"speedList\":[\"18569779\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1494, '2021-11-15 00:06:50', 5, '{\"attempted\":\"34422718464\",\"speedList\":[\"19170052\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1495, '2021-11-15 00:07:50', 5, '{\"attempted\":\"951582720\",\"speedList\":[\"22673145\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1496, '2021-11-15 00:08:50', 5, '{\"attempted\":\"2220883968\",\"speedList\":[\"21632831\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1497, '2021-11-15 00:09:50', 5, '{\"attempted\":\"3540320256\",\"speedList\":[\"20509976\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1498, '2021-11-15 00:10:50', 5, '{\"attempted\":\"4867620864\",\"speedList\":[\"21695637\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1499, '2021-11-15 00:11:50', 5, '{\"attempted\":\"6197280768\",\"speedList\":[\"21618911\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1500, '2021-11-15 00:12:50', 5, '{\"attempted\":\"7542276096\",\"speedList\":[\"21399000\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1501, '2021-11-15 00:13:50', 5, '{\"attempted\":\"8837726208\",\"speedList\":[\"20698021\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1502, '2021-11-15 00:14:50', 5, '{\"attempted\":\"10090315776\",\"speedList\":[\"20307733\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1503, '2021-11-15 00:15:50', 5, '{\"attempted\":\"11130077184\",\"speedList\":[\"17827921\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1504, '2021-11-15 00:16:50', 5, '{\"attempted\":\"12234719232\",\"speedList\":[\"17093661\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1505, '2021-11-15 00:17:50', 5, '{\"attempted\":\"13268189184\",\"speedList\":[\"16618077\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1506, '2021-11-15 00:18:50', 5, '{\"attempted\":\"14386003968\",\"speedList\":[\"20475596\"],\"status\":\"running\",\"total\":\"208827064576\"}');
INSERT INTO `tb_hashcat_status_log` VALUES (1507, '2021-11-24 12:35:26', 4, '{\"attempted\":\"3374874624\",\"speedList\":[\"102476873\"],\"status\":\"running\",\"total\":\"208827064576\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=91529 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task
-- ----------------------------
BEGIN;
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
INSERT INTO `tb_hashcat_task` VALUES (91348, '2021-09-10 13:19:40', '2021-11-20 14:17:51', 3, 23, 'finish', 97282812, 1706716);
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
INSERT INTO `tb_hashcat_task` VALUES (91485, '2021-09-20 19:33:20', '2021-09-20 19:38:11', 2, 29, 'finish', 0, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91486, '2021-09-20 19:33:21', '2021-09-20 19:38:11', 2, 29, 'finish', 44130825, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91487, '2021-09-20 19:33:21', '2021-09-20 19:38:10', 2, 29, 'finish', 88261650, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91488, '2021-09-20 19:33:21', '2021-09-20 19:38:10', 2, 29, 'finish', 132392475, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91489, '2021-09-20 19:33:21', '2021-09-20 19:38:10', 2, 29, 'finish', 176523300, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91490, '2021-09-20 19:33:21', '2021-09-20 19:38:11', 2, 29, 'finish', 220654125, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91491, '2021-09-20 19:33:21', '2021-09-20 19:38:11', 2, 29, 'finish', 264784950, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91492, '2021-09-20 19:33:21', '2021-09-20 19:38:11', 2, 29, 'finish', 308915775, 2);
INSERT INTO `tb_hashcat_task` VALUES (91521, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 26, 38, 'finish', 0, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91522, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 26, 38, 'finish', 44130825, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91523, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 27, 38, 'finish', 88261650, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91524, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 30, 38, 'finish', 132392475, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91525, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 26, 38, 'finish', 176523300, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91526, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 26, 38, 'finish', 220654125, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91527, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 28, 38, 'finish', 264784950, 44130825);
INSERT INTO `tb_hashcat_task` VALUES (91528, '2021-11-14 21:19:20', '2021-11-24 12:36:17', 29, 38, 'finish', 308915775, 2);
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
  `project_id` bigint(20) unsigned NOT NULL,
  `agent_id` bigint(20) unsigned NOT NULL,
  `status` varchar(31) NOT NULL,
  `result` mediumtext,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_task_id` (`task_id`) USING BTREE,
  KEY `idx_agent_id` (`agent_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6966 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hashcat_task_result
-- ----------------------------
BEGIN;
INSERT INTO `tb_hashcat_task_result` VALUES (6223, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91283, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6224, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91284, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6225, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91285, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6226, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91286, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6227, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91287, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6228, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91288, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6229, '2021-09-10 12:17:21', '2021-11-20 15:55:26', 4, 91289, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6230, '2021-09-10 12:17:22', '2021-11-20 15:55:26', 4, 91290, 21, 3, 'finish', '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6293, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91353, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6294, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91354, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6295, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91355, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6296, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91356, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6297, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91357, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6298, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91358, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6299, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91359, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6300, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91360, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6301, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91361, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6302, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91362, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6303, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91363, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6304, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91364, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6305, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91365, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6306, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91366, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6307, '2021-09-10 13:42:56', '2021-11-20 15:55:26', 4, 91367, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6308, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91368, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6309, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91369, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6310, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91370, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6311, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91371, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6312, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91372, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6313, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91373, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6314, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91374, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6315, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91375, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6316, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91376, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6317, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91377, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6318, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91378, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6319, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91379, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6320, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91380, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6321, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91381, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6322, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91382, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6323, '2021-09-10 13:42:57', '2021-11-20 15:55:26', 4, 91383, 23, 3, 'finish', '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6510, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91485, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6511, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91486, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6512, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91487, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6513, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91488, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6514, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91489, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6515, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91490, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6516, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91491, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6517, '2021-09-20 19:37:33', '2021-11-20 15:55:26', 3, 91492, 29, 3, 'finish', '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6950, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91521, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6951, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91522, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6952, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91523, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6953, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91524, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6954, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91525, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6955, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91526, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6956, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91527, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6957, '2021-11-24 12:27:58', '2021-11-24 12:34:29', 1, 91528, 38, 4, 'timeout', NULL);
INSERT INTO `tb_hashcat_task_result` VALUES (6958, '2021-11-24 12:34:31', '2021-11-24 12:36:17', 1, 91521, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6959, '2021-11-24 12:34:32', '2021-11-24 12:36:17', 1, 91522, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6960, '2021-11-24 12:34:32', '2021-11-24 12:36:16', 1, 91523, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6961, '2021-11-24 12:34:32', '2021-11-24 12:36:16', 1, 91524, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6962, '2021-11-24 12:34:32', '2021-11-24 12:36:16', 1, 91525, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6963, '2021-11-24 12:34:32', '2021-11-24 12:36:17', 1, 91526, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6964, '2021-11-24 12:34:32', '2021-11-24 12:36:17', 1, 91527, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
INSERT INTO `tb_hashcat_task_result` VALUES (6965, '2021-11-24 12:34:32', '2021-11-24 12:36:17', 1, 91528, 38, 4, 'finish', '[\"22691aaa0d954f34614df234b55a7a55:loveluna\"]');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_system
-- ----------------------------
BEGIN;
INSERT INTO `tb_system` VALUES (779, '2021-11-24 12:34:50', '2021-11-24 12:37:41', 8, 'MEMORY', '{\"MEMORY_USE\":[[\"2021-11-24 12:34:50\",5.117214202880859],[\"2021-11-24 12:35:11\",5.930324554443359],[\"2021-11-24 12:35:33\",5.774127960205078],[\"2021-11-24 12:35:54\",5.963329315185547],[\"2021-11-24 12:36:15\",6.006488800048828],[\"2021-11-24 12:36:36\",5.8152313232421875],[\"2021-11-24 12:36:57\",5.999652862548828],[\"2021-11-24 12:37:18\",6.169254302978516],[\"2021-11-24 12:37:40\",5.98565673828125]],\"MEMORY_FREE\":[[\"2021-11-24 12:34:50\",2.8827857971191406],[\"2021-11-24 12:35:11\",2.0696754455566406],[\"2021-11-24 12:35:33\",2.225872039794922],[\"2021-11-24 12:35:54\",2.036670684814453],[\"2021-11-24 12:36:15\",1.9935111999511719],[\"2021-11-24 12:36:36\",2.1847686767578125],[\"2021-11-24 12:36:57\",2.000347137451172],[\"2021-11-24 12:37:18\",1.8307456970214844],[\"2021-11-24 12:37:40\",2.01434326171875]]}');
INSERT INTO `tb_system` VALUES (780, '2021-11-24 12:34:50', '2021-11-24 12:37:41', 8, 'CPU', '{\"CPU_IDLE\":[[\"2021-11-24 12:34:50\",0.6188118812],[\"2021-11-24 12:35:11\",0.1940298507],[\"2021-11-24 12:35:33\",0.1773399015],[\"2021-11-24 12:35:54\",0.1330049261],[\"2021-11-24 12:36:15\",0.776119403],[\"2021-11-24 12:36:36\",0.6985294118],[\"2021-11-24 12:36:57\",0.1417910448],[\"2021-11-24 12:37:18\",0.2105263158],[\"2021-11-24 12:37:41\",0.064516129]],\"CPU_SYSTEM\":[[\"2021-11-24 12:34:50\",0.1831683168],[\"2021-11-24 12:35:11\",0.4353233831],[\"2021-11-24 12:35:33\",0.3103448276],[\"2021-11-24 12:35:54\",0.3078817734],[\"2021-11-24 12:36:15\",0.1243781095],[\"2021-11-24 12:36:36\",0.1151960784],[\"2021-11-24 12:36:57\",0.3109452736],[\"2021-11-24 12:37:18\",0.3308270677],[\"2021-11-24 12:37:41\",0.4392059553]],\"CPU_USER\":[[\"2021-11-24 12:34:50\",0.198019802],[\"2021-11-24 12:35:11\",0.3706467662],[\"2021-11-24 12:35:33\",0.5123152709],[\"2021-11-24 12:35:54\",0.5591133005],[\"2021-11-24 12:36:15\",0.0995024876],[\"2021-11-24 12:36:36\",0.1862745098],[\"2021-11-24 12:36:57\",0.5472636816],[\"2021-11-24 12:37:18\",0.4586466165],[\"2021-11-24 12:37:41\",0.4962779156]]}');
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
INSERT INTO `tb_wallet` VALUES (11, '2020-02-04 16:05:37', 10049, 'NH_BTC', '35SrdMsdjofQtXxCjcroyeJUiKYNHbG9gR', '{\"apiKey\":\"4bd4fe90-300e-44cd-82bd-cd2d779891ab\",\"apiSecret\":\"aa1e219b-31fb-4906-9222-1d218707339847dce540-720e-4eae-ad0f-32ccd7f43935\",\"organizationId\":\"37f206e1-62d4-4577-9b2c-e0ba040b6f84\"}');
INSERT INTO `tb_wallet` VALUES (12, '2020-02-04 16:05:37', 10051, 'NH_BTC', '39XeYtGmpjbxaXYGNmQsH1WBMhwt6xbUq7', '{\"apiKey\":\"4bd4fe90-300e-44cd-82bd-cd2d779891ab\",\"apiSecret\":\"aa1e219b-31fb-4906-9222-1d218707339847dce540-720e-4eae-ad0f-32ccd7f43935\",\"organizationId\":\"37f206e1-62d4-4577-9b2c-e0ba040b6f84\"}');
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
