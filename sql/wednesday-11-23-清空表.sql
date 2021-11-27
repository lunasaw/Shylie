/*
 Navicat Premium Data Transfer

 Source Server         : luna-local
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : wednesday

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 23/11/2021 22:58:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_agent
-- ----------------------------
DROP TABLE IF EXISTS `tb_agent`;
CREATE TABLE `tb_agent`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) NOT NULL,
  `key` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hardware` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_seen` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_agent`(`key`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_agent
-- ----------------------------
INSERT INTO `tb_agent` VALUES (1, '2020-05-03 20:56:14', '2020-06-25 11:49:56', 69, 'C02VL2B8G8WN', 'sweeney', NULL, '{\"agentKey\":\"C02VL2B8G8WN\",\"agentVersion\":\"1.4-SNAPSHOT\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":1708759450,\"clDeviceName\":\"Intel(R) Iris(TM) Pro Graphics 5200\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2\",\"clDriverVersion\":\"20.19.15.4835\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0},{\"clDeviceGlobalMemSize\":17050124288,\"clDeviceName\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_CPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 1.2 (Build 10094)\",\"clDriverVersion\":\"5.2.0.10094\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":1}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"MBP114.88Z.0172.B25.1706181512\",\"manufacturer\":\"Apple Inc.\",\"name\":\"MBP114.88Z.0172.B25.1706181512\",\"version\":\"APPLE  - 0\"},\"hostName\":\"DESKTOP-OTT6C1B\",\"macAddressSet\":[\"6c:96:cf:dd:21:95\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":17050124288,\"swapTotal\":17224581120},\"model\":\"MacBookPro11,4\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF00040661\"},\"serialNumber\":\"C02VL2B8G8WN\"}}', '1.4-SNAPSHOT', '2020-06-25 11:50:02');
INSERT INTO `tb_agent` VALUES (3, '2021-09-07 13:30:46', '2021-09-21 13:22:31', 834, 'PF17JQVU', 'sweeney', '[\"192.168.2.104:8004\"]', '{\"agentKey\":\"PF17JQVU\",\"agentVersion\":\"1.8-RELEASE\",\"openCLDeviceDTOList\":[{\"clDeviceGlobalMemSize\":2147483648,\"clDeviceName\":\"GeForce MX150\",\"clDeviceOpenCLCVersion\":\"OpenCL C 1.2\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"NVIDIA Corporation\",\"clDeviceVendorId\":\"0x10de\",\"clDeviceVersion\":\"OpenCL 1.2 CUDA\",\"clDriverVersion\":\"457.49\",\"clPlatformICDSuffixKHR\":\"NV\",\"id\":0},{\"clDeviceGlobalMemSize\":6819401728,\"clDeviceName\":\"Intel(R) UHD Graphics 620\",\"clDeviceOpenCLCVersion\":\"OpenCL C 2.0\",\"clDeviceType\":\"CL_DEVICE_TYPE_GPU\",\"clDeviceVendor\":\"Intel(R) Corporation\",\"clDeviceVendorId\":\"0x8086\",\"clDeviceVersion\":\"OpenCL 2.1 NEO\",\"clDriverVersion\":\"27.20.100.8729\",\"clPlatformICDSuffixKHR\":\"INTEL\",\"id\":0}],\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"7PCN27WW\",\"manufacturer\":\"LENOVO\",\"name\":\"7PCN27WW\",\"version\":\"LENOVO - 1\"},\"hostName\":\"DESKTOP-A48DR00\",\"ipAddressSet\":[\"192.168.2.104:8004\"],\"macAddressSet\":[\"60:c5:47:06:6f:88\"],\"manufacturer\":\"LENOVO\",\"memoryDTO\":{\"memeryTotal\":17048506368,\"swapTotal\":2550136832},\"model\":\"81GY\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz\\n 1 physical CPU package(s)\\n 4 physical CPU core(s)\\n 8 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 142 Stepping 10\\nProcessorID: BFEBFBFF000806EA\\nMicroarchitecture: Coffee Lake\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"BFEBFBFF000806EA\"},\"serialNumber\":\"PF17JQVU\"}}', '1.8-RELEASE', '2021-09-21 21:22:31');
INSERT INTO `tb_agent` VALUES (4, '2021-09-14 08:25:35', '2021-09-21 07:51:51', 128, 'C17QD861FVH5', 'sweeney', '[\"192.168.2.101:8004\"]', '{\"agentKey\":\"C17QD861FVH5\",\"agentVersion\":\"1.8-SNAPSHOT\",\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"EFI64\",\"manufacturer\":\"Apple Inc.\",\"name\":\"boot.efi\",\"version\":\"427.140.8.0.0\"},\"hostName\":\"lunas-mac.local\",\"ipAddressSet\":[\"192.168.2.101:8004\"],\"macAddressSet\":[\"ac:bc:32:9a:b7:e5\"],\"manufacturer\":\"Apple Inc.\",\"memoryDTO\":{\"memeryTotal\":8589934592,\"swapTotal\":5368709120},\"model\":\"MacBookPro12,1\",\"processorDTO\":{\"logicalProcessorCount\":4,\"name\":\"Intel(R) Core(TM) i5-5257U CPU @ 2.70GHz\\n 1 physical CPU package(s)\\n 2 physical CPU core(s)\\n 4 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 61 Stepping 4\\nProcessorID: bfebfbff000306d4\\nMicroarchitecture: Broadwell (Client)\",\"physicalPackageCount\":1,\"physicalProcessorCount\":2,\"processorId\":\"bfebfbff000306d4\"},\"serialNumber\":\"C17QD861FVH5\"}}', '1.8-SNAPSHOT', '2021-09-21 15:51:49');
INSERT INTO `tb_agent` VALUES (5, '2021-10-27 12:59:27', '2021-11-15 00:16:42', 247, 'C02R605CGYFH', 'sweeney', '[\"192.168.2.103:8004\"]', '{\"agentKey\":\"C02R605CGYFH\",\"agentVersion\":\"1.8-SNAPSHOT\",\"oshiHardwareDTO\":{\"firmwareDTO\":{\"description\":\"EFI64\",\"manufacturer\":\"LENOVO\",\"name\":\"boot.efi\",\"version\":\"429.80.1.0.0\"},\"hostName\":\"Shmily.local\",\"ipAddressSet\":[\"192.168.2.103:8004\"],\"macAddressSet\":[\"60:c5:47:06:6f:88\"],\"manufacturer\":\"LENOVO\",\"memoryDTO\":{\"memeryTotal\":17179869184,\"swapTotal\":1073741824},\"model\":\"MacBookPro13,2\",\"processorDTO\":{\"logicalProcessorCount\":8,\"name\":\"Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz\\n 1 physical CPU package(s)\\n 4 physical CPU core(s)\\n 8 logical CPU(s)\\nIdentifier: Intel64 Family 6 Model 142 Stepping 10\\nProcessorID: bfebfbff000806ea\\nMicroarchitecture: Coffee Lake\",\"physicalPackageCount\":1,\"physicalProcessorCount\":4,\"processorId\":\"bfebfbff000806ea\"},\"serialNumber\":\"C02R605CGYFH\"}}', '1.8-SNAPSHOT', '2021-11-15 00:16:43');

-- ----------------------------
-- Table structure for tb_download
-- ----------------------------
DROP TABLE IF EXISTS `tb_download`;
CREATE TABLE `tb_download`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_map` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manual` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_property`(`name`, `url_map`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_download
-- ----------------------------
INSERT INTO `tb_download` VALUES (2, '2020-04-03 15:39:58', '2020-04-03 15:40:00', 0, 'NiceHash Miner 3.x', '{\"下载地址1\":\"https://github.com/nicehash/NiceHashMiner/releases/download/3.0.0.4/nhm_windows_3.0.0.4.zip\",\"下载地址2\":\"https://note.youdao.com/ynoteshare1/index.html?id=df49e414c72c2b7d79607b72f8c7112e\"}', 'https://note.youdao.com/ynoteshare1/index.html?id=df49e414c72c2b7d79607b72f8c7112e');

-- ----------------------------
-- Table structure for tb_hash
-- ----------------------------
DROP TABLE IF EXISTS `tb_hash`;
CREATE TABLE `tb_hash`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `name` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `result` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hash
-- ----------------------------
INSERT INTO `tb_hash` VALUES (20, '2021-09-10 12:06:18', '2021-09-10 12:18:41', 1, 'yctc_yyds', NULL, '[\"15893996635722bb011559b6ad4d219d:yctcyyds\"]');
INSERT INTO `tb_hash` VALUES (22, '2021-09-10 12:48:18', '2021-09-10 13:50:35', 1, 'i-love-yctc', NULL, '[\"15c3abeabea8612c167f7a878162ab7a:iloveyctc\"]');
INSERT INTO `tb_hash` VALUES (24, '2021-09-15 01:52:52', '2021-09-20 19:38:11', 1, 'zhangyue', NULL, '[\"b7fa772fa83bf48ebeb29f5544b89f1a:zhangyue\"]');
INSERT INTO `tb_hash` VALUES (26, '2021-11-14 21:17:25', '2021-11-14 21:17:25', 0, 'loveluna', '[\"22691aaa0d954f34614df234b55a7a55\"]', NULL);

-- ----------------------------
-- Table structure for tb_hashcat_hash_mode_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_hash_mode_config`;
CREATE TABLE `tb_hashcat_hash_mode_config`  (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'attack_mode同名',
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lines_per_task` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_hash_mode_config
-- ----------------------------
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

-- ----------------------------
-- Table structure for tb_hashcat_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_project`;
CREATE TABLE `tb_hashcat_project`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) UNSIGNED NOT NULL,
  `name` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mask` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyspace` bigint(20) NULL DEFAULT NULL,
  `hash_mode` int(10) UNSIGNED NOT NULL,
  `attack_mode` tinyint(3) UNSIGNED NOT NULL,
  `hash_id` bigint(20) UNSIGNED NOT NULL,
  `lines` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_keyspace`(`keyspace`) USING BTREE,
  INDEX `idx_mask`(`mask`) USING BTREE,
  INDEX `idx_hash_mode`(`hash_mode`) USING BTREE,
  INDEX `idx_attack_mode`(`attack_mode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_project
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hashcat_speed
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_speed`;
CREATE TABLE `tb_hashcat_speed`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `hash_mode` int(10) UNSIGNED NOT NULL,
  `task_size` int(10) UNSIGNED NOT NULL,
  `running_second` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_speed`(`agent_id`, `hash_mode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_speed
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hashcat_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_status`;
CREATE TABLE `tb_hashcat_status`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_agent_id`(`agent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_status
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hashcat_status_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_status_log`;
CREATE TABLE `tb_hashcat_status_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1507 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_status_log
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hashcat_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_task`;
CREATE TABLE `tb_hashcat_task`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `skip` bigint(20) UNSIGNED NOT NULL,
  `limit` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91529 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_task
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hashcat_task_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_hashcat_task_result`;
CREATE TABLE `tb_hashcat_task_result`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_task_id`(`task_id`) USING BTREE,
  INDEX `idx_agent_id`(`agent_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6950 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hashcat_task_result
-- ----------------------------

-- ----------------------------
-- Table structure for tb_idle_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tb_idle_wallet`;
CREATE TABLE `tb_idle_wallet`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `type` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_info` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_address`(`type`, `address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_idle_wallet
-- ----------------------------

-- ----------------------------
-- Table structure for tb_property
-- ----------------------------
DROP TABLE IF EXISTS `tb_property`;
CREATE TABLE `tb_property`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_property`(`user_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_property
-- ----------------------------
INSERT INTO `tb_property` VALUES (5, '2020-03-10 17:05:02', '2020-03-10 17:05:02', 0, 10050, 'oldPlatformBTCAmount', '999');
INSERT INTO `tb_property` VALUES (6, '2020-03-17 15:17:54', '2020-03-17 15:17:54', 0, 10062, 'oldPlatformBTCAmount', '888');
INSERT INTO `tb_property` VALUES (8, '2020-03-22 16:08:33', '2020-11-10 20:45:32', 47, 10050, 'credit', '49999700108322.58020000');
INSERT INTO `tb_property` VALUES (9, '2020-04-03 15:34:25', '2020-04-03 15:34:25', 0, 10032, 'credit', '0');
INSERT INTO `tb_property` VALUES (10, '2020-04-07 11:27:45', '2020-04-07 11:27:45', 0, 10062, 'credit', '0');
INSERT INTO `tb_property` VALUES (11, '2020-05-20 01:07:33', '2020-05-20 01:07:33', 0, 10099, 'oldPlatformBTCAmount', '999');
INSERT INTO `tb_property` VALUES (12, '2020-07-04 22:33:19', '2020-07-04 22:40:42', 1, 10049, 'credit', '9677.41940000');

-- ----------------------------
-- Table structure for tb_property_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tb_property_exchange`;
CREATE TABLE `tb_property_exchange`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`property_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_property_exchange
-- ----------------------------
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

-- ----------------------------
-- Table structure for tb_system
-- ----------------------------
DROP TABLE IF EXISTS `tb_system`;
CREATE TABLE `tb_system`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `extend` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `content_unique`(`content`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 779 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_system
-- ----------------------------
INSERT INTO `tb_system` VALUES (777, '2021-11-20 18:57:30', '2021-11-20 19:32:56', 101, 'MEMORY', '{\"MEMORY_USE\":[[\"2021-11-20 18:57:30\",10.95315170288086],[\"2021-11-20 18:57:51\",10.955795288085938],[\"2021-11-20 18:58:12\",10.96224594116211],[\"2021-11-20 18:58:33\",10.96884536743164],[\"2021-11-20 18:58:54\",10.845935821533203],[\"2021-11-20 18:59:15\",10.864749908447266],[\"2021-11-20 18:59:36\",10.879222869873047],[\"2021-11-20 18:59:57\",10.828605651855469],[\"2021-11-20 19:00:18\",10.80886459350586],[\"2021-11-20 19:00:39\",10.73818588256836],[\"2021-11-20 19:01:00\",10.693618774414062],[\"2021-11-20 19:01:21\",10.734256744384766],[\"2021-11-20 19:01:42\",10.714187622070312],[\"2021-11-20 19:02:04\",10.674278259277344],[\"2021-11-20 19:02:25\",10.70172119140625],[\"2021-11-20 19:02:46\",10.656047821044922],[\"2021-11-20 19:03:07\",10.652294158935547],[\"2021-11-20 19:03:28\",10.67019271850586],[\"2021-11-20 19:03:49\",10.673286437988281],[\"2021-11-20 19:04:10\",10.650402069091797],[\"2021-11-20 19:04:31\",10.259666442871094],[\"2021-11-20 19:04:52\",10.653350830078125],[\"2021-11-20 19:05:13\",10.566139221191406],[\"2021-11-20 19:05:34\",10.475212097167969],[\"2021-11-20 19:05:55\",10.498821258544922],[\"2021-11-20 19:06:16\",10.445865631103516],[\"2021-11-20 19:06:37\",10.505218505859375],[\"2021-11-20 19:06:58\",10.504074096679688],[\"2021-11-20 19:07:19\",10.528705596923828],[\"2021-11-20 19:07:40\",10.537532806396484],[\"2021-11-20 19:08:01\",10.556133270263672],[\"2021-11-20 19:08:22\",10.586917877197266],[\"2021-11-20 19:08:43\",10.652183532714844],[\"2021-11-20 19:09:04\",10.639030456542969],[\"2021-11-20 19:09:25\",10.639087677001953],[\"2021-11-20 19:09:46\",10.647880554199219],[\"2021-11-20 19:10:08\",10.649276733398438],[\"2021-11-20 19:10:29\",10.629817962646484],[\"2021-11-20 19:10:50\",10.637351989746094],[\"2021-11-20 19:11:11\",10.710968017578125],[\"2021-11-20 19:11:32\",10.604293823242188],[\"2021-11-20 19:11:53\",10.556358337402344],[\"2021-11-20 19:12:14\",10.550861358642578],[\"2021-11-20 19:12:35\",10.589805603027344],[\"2021-11-20 19:12:56\",10.592647552490234],[\"2021-11-20 19:13:17\",10.632369995117188],[\"2021-11-20 19:13:38\",10.514808654785156],[\"2021-11-20 19:13:59\",10.56899642944336],[\"2021-11-20 19:14:20\",10.60662841796875],[\"2021-11-20 19:14:41\",10.585094451904297],[\"2021-11-20 19:15:02\",10.60184097290039],[\"2021-11-20 19:15:23\",10.590255737304688],[\"2021-11-20 19:15:45\",10.570987701416016],[\"2021-11-20 19:16:06\",10.603561401367188],[\"2021-11-20 19:16:27\",10.585243225097656],[\"2021-11-20 19:16:48\",10.485130310058594],[\"2021-11-20 19:17:09\",10.555755615234375],[\"2021-11-20 19:17:30\",10.53000259399414],[\"2021-11-20 19:17:51\",10.510791778564453],[\"2021-11-20 19:18:12\",10.581043243408203],[\"2021-11-20 19:18:33\",10.553661346435547],[\"2021-11-20 19:18:54\",10.526420593261719],[\"2021-11-20 19:19:15\",10.495235443115234],[\"2021-11-20 19:19:37\",10.513275146484375],[\"2021-11-20 19:19:58\",10.500438690185547],[\"2021-11-20 19:20:19\",10.508903503417969],[\"2021-11-20 19:20:40\",10.513259887695312],[\"2021-11-20 19:21:01\",10.527999877929688],[\"2021-11-20 19:21:22\",10.53390121459961],[\"2021-11-20 19:21:43\",10.567054748535156],[\"2021-11-20 19:22:04\",10.572135925292969],[\"2021-11-20 19:22:25\",10.577384948730469],[\"2021-11-20 19:22:46\",10.584846496582031],[\"2021-11-20 19:23:07\",10.594802856445312],[\"2021-11-20 19:23:28\",10.616436004638672],[\"2021-11-20 19:23:49\",10.61989974975586],[\"2021-11-20 19:24:10\",10.5902099609375],[\"2021-11-20 19:24:31\",10.596450805664062],[\"2021-11-20 19:24:52\",10.625301361083984],[\"2021-11-20 19:25:13\",10.636421203613281],[\"2021-11-20 19:25:34\",10.647357940673828],[\"2021-11-20 19:25:55\",10.644577026367188],[\"2021-11-20 19:26:16\",10.604263305664062],[\"2021-11-20 19:26:38\",10.624526977539062],[\"2021-11-20 19:26:59\",10.651481628417969],[\"2021-11-20 19:27:20\",10.610328674316406],[\"2021-11-20 19:27:41\",10.677726745605469],[\"2021-11-20 19:28:02\",10.58914566040039],[\"2021-11-20 19:28:23\",10.6614990234375],[\"2021-11-20 19:28:44\",10.643333435058594],[\"2021-11-20 19:29:05\",10.674434661865234],[\"2021-11-20 19:29:26\",10.610694885253906],[\"2021-11-20 19:29:47\",10.322093963623047],[\"2021-11-20 19:30:08\",10.387481689453125],[\"2021-11-20 19:30:29\",10.448993682861328],[\"2021-11-20 19:30:50\",10.437175750732422],[\"2021-11-20 19:31:11\",10.54278564453125],[\"2021-11-20 19:31:32\",10.687889099121094],[\"2021-11-20 19:31:53\",10.630931854248047],[\"2021-11-20 19:32:14\",10.576866149902344],[\"2021-11-20 19:32:35\",10.549915313720703],[\"2021-11-20 19:32:56\",10.67483139038086]],\"MEMORY_FREE\":[[\"2021-11-20 18:57:30\",5.046848297119141],[\"2021-11-20 18:57:51\",5.0442047119140625],[\"2021-11-20 18:58:12\",5.037754058837891],[\"2021-11-20 18:58:33\",5.031154632568359],[\"2021-11-20 18:58:54\",5.154064178466797],[\"2021-11-20 18:59:15\",5.135250091552734],[\"2021-11-20 18:59:36\",5.120777130126953],[\"2021-11-20 18:59:57\",5.171394348144531],[\"2021-11-20 19:00:18\",5.191135406494141],[\"2021-11-20 19:00:39\",5.261814117431641],[\"2021-11-20 19:01:00\",5.3063812255859375],[\"2021-11-20 19:01:21\",5.265743255615234],[\"2021-11-20 19:01:42\",5.2858123779296875],[\"2021-11-20 19:02:04\",5.325721740722656],[\"2021-11-20 19:02:25\",5.29827880859375],[\"2021-11-20 19:02:46\",5.343952178955078],[\"2021-11-20 19:03:07\",5.347705841064453],[\"2021-11-20 19:03:28\",5.329807281494141],[\"2021-11-20 19:03:49\",5.326713562011719],[\"2021-11-20 19:04:10\",5.349597930908203],[\"2021-11-20 19:04:31\",5.740333557128906],[\"2021-11-20 19:04:52\",5.346649169921875],[\"2021-11-20 19:05:13\",5.433860778808594],[\"2021-11-20 19:05:34\",5.524787902832031],[\"2021-11-20 19:05:55\",5.501178741455078],[\"2021-11-20 19:06:16\",5.554134368896484],[\"2021-11-20 19:06:37\",5.494781494140625],[\"2021-11-20 19:06:58\",5.4959259033203125],[\"2021-11-20 19:07:19\",5.471294403076172],[\"2021-11-20 19:07:40\",5.462467193603516],[\"2021-11-20 19:08:01\",5.443866729736328],[\"2021-11-20 19:08:22\",5.413082122802734],[\"2021-11-20 19:08:43\",5.347816467285156],[\"2021-11-20 19:09:04\",5.360969543457031],[\"2021-11-20 19:09:25\",5.360912322998047],[\"2021-11-20 19:09:46\",5.352119445800781],[\"2021-11-20 19:10:08\",5.3507232666015625],[\"2021-11-20 19:10:29\",5.370182037353516],[\"2021-11-20 19:10:50\",5.362648010253906],[\"2021-11-20 19:11:11\",5.289031982421875],[\"2021-11-20 19:11:32\",5.3957061767578125],[\"2021-11-20 19:11:53\",5.443641662597656],[\"2021-11-20 19:12:14\",5.449138641357422],[\"2021-11-20 19:12:35\",5.410194396972656],[\"2021-11-20 19:12:56\",5.407352447509766],[\"2021-11-20 19:13:17\",5.3676300048828125],[\"2021-11-20 19:13:38\",5.485191345214844],[\"2021-11-20 19:13:59\",5.431003570556641],[\"2021-11-20 19:14:20\",5.39337158203125],[\"2021-11-20 19:14:41\",5.414905548095703],[\"2021-11-20 19:15:02\",5.398159027099609],[\"2021-11-20 19:15:23\",5.4097442626953125],[\"2021-11-20 19:15:45\",5.429012298583984],[\"2021-11-20 19:16:06\",5.3964385986328125],[\"2021-11-20 19:16:27\",5.414756774902344],[\"2021-11-20 19:16:48\",5.514869689941406],[\"2021-11-20 19:17:09\",5.444244384765625],[\"2021-11-20 19:17:30\",5.469997406005859],[\"2021-11-20 19:17:51\",5.489208221435547],[\"2021-11-20 19:18:12\",5.418956756591797],[\"2021-11-20 19:18:33\",5.446338653564453],[\"2021-11-20 19:18:54\",5.473579406738281],[\"2021-11-20 19:19:15\",5.504764556884766],[\"2021-11-20 19:19:37\",5.486724853515625],[\"2021-11-20 19:19:58\",5.499561309814453],[\"2021-11-20 19:20:19\",5.491096496582031],[\"2021-11-20 19:20:40\",5.4867401123046875],[\"2021-11-20 19:21:01\",5.4720001220703125],[\"2021-11-20 19:21:22\",5.466098785400391],[\"2021-11-20 19:21:43\",5.432945251464844],[\"2021-11-20 19:22:04\",5.427864074707031],[\"2021-11-20 19:22:25\",5.422615051269531],[\"2021-11-20 19:22:46\",5.415153503417969],[\"2021-11-20 19:23:07\",5.4051971435546875],[\"2021-11-20 19:23:28\",5.383563995361328],[\"2021-11-20 19:23:49\",5.380100250244141],[\"2021-11-20 19:24:10\",5.4097900390625],[\"2021-11-20 19:24:31\",5.4035491943359375],[\"2021-11-20 19:24:52\",5.374698638916016],[\"2021-11-20 19:25:13\",5.363578796386719],[\"2021-11-20 19:25:34\",5.352642059326172],[\"2021-11-20 19:25:55\",5.3554229736328125],[\"2021-11-20 19:26:16\",5.3957366943359375],[\"2021-11-20 19:26:38\",5.3754730224609375],[\"2021-11-20 19:26:59\",5.348518371582031],[\"2021-11-20 19:27:20\",5.389671325683594],[\"2021-11-20 19:27:41\",5.322273254394531],[\"2021-11-20 19:28:02\",5.410854339599609],[\"2021-11-20 19:28:23\",5.3385009765625],[\"2021-11-20 19:28:44\",5.356666564941406],[\"2021-11-20 19:29:05\",5.325565338134766],[\"2021-11-20 19:29:26\",5.389305114746094],[\"2021-11-20 19:29:47\",5.677906036376953],[\"2021-11-20 19:30:08\",5.612518310546875],[\"2021-11-20 19:30:29\",5.551006317138672],[\"2021-11-20 19:30:50\",5.562824249267578],[\"2021-11-20 19:31:11\",5.45721435546875],[\"2021-11-20 19:31:32\",5.312110900878906],[\"2021-11-20 19:31:53\",5.369068145751953],[\"2021-11-20 19:32:14\",5.423133850097656],[\"2021-11-20 19:32:35\",5.450084686279297],[\"2021-11-20 19:32:56\",5.325168609619141]]}');
INSERT INTO `tb_system` VALUES (778, '2021-11-20 18:57:30', '2021-11-20 19:32:56', 101, 'CPU', '{\"CPU_IDLE\":[[\"2021-11-20 18:57:30\",0.7153558052],[\"2021-11-20 18:57:51\",0.6587795766],[\"2021-11-20 18:58:12\",0.5269086358],[\"2021-11-20 18:58:33\",0.7210460772],[\"2021-11-20 18:58:54\",0.5632754342],[\"2021-11-20 18:59:15\",0.67375],[\"2021-11-20 18:59:36\",0.6890547264],[\"2021-11-20 18:59:57\",0.3325031133],[\"2021-11-20 19:00:18\",0.6429463171],[\"2021-11-20 19:00:39\",0.6637608966],[\"2021-11-20 19:01:00\",0.2674129353],[\"2021-11-20 19:01:21\",0.5691158157],[\"2021-11-20 19:01:42\",0.680798005],[\"2021-11-20 19:02:04\",0.3664596273],[\"2021-11-20 19:02:25\",0.729528536],[\"2021-11-20 19:02:46\",0.6304619226],[\"2021-11-20 19:03:07\",0.3815461347],[\"2021-11-20 19:03:28\",0.7082294264],[\"2021-11-20 19:03:49\",0.7422166874],[\"2021-11-20 19:04:10\",0.8893034826],[\"2021-11-20 19:04:31\",0.9249061327],[\"2021-11-20 19:04:52\",0.4180225282],[\"2021-11-20 19:05:13\",0.3469640644],[\"2021-11-20 19:05:34\",0.7008760951],[\"2021-11-20 19:05:55\",0.7475124378],[\"2021-11-20 19:06:16\",0.5250626566],[\"2021-11-20 19:06:37\",0.6915422886],[\"2021-11-20 19:06:58\",0.7655860349],[\"2021-11-20 19:07:19\",0.7655086849],[\"2021-11-20 19:07:40\",0.7714285714],[\"2021-11-20 19:08:01\",0.7752808989],[\"2021-11-20 19:08:22\",0.6600249066],[\"2021-11-20 19:08:43\",0.6305970149],[\"2021-11-20 19:09:04\",0.7210460772],[\"2021-11-20 19:09:25\",0.7160647572],[\"2021-11-20 19:09:46\",0.710199005],[\"2021-11-20 19:10:08\",0.4072681704],[\"2021-11-20 19:10:29\",0.6781750925],[\"2021-11-20 19:10:50\",0.7252475248],[\"2021-11-20 19:11:11\",0.63625],[\"2021-11-20 19:11:32\",0.4164588529],[\"2021-11-20 19:11:53\",0.4275092937],[\"2021-11-20 19:12:14\",0.4236024845],[\"2021-11-20 19:12:35\",0.4039900249],[\"2021-11-20 19:12:56\",0.526119403],[\"2021-11-20 19:13:17\",0.41625],[\"2021-11-20 19:13:38\",0.3354192741],[\"2021-11-20 19:13:59\",0.4795031056],[\"2021-11-20 19:14:20\",0.52375],[\"2021-11-20 19:14:41\",0.4030037547],[\"2021-11-20 19:15:02\",0.5298507463],[\"2021-11-20 19:15:23\",0.4931846344],[\"2021-11-20 19:15:45\",0.3718905473],[\"2021-11-20 19:16:06\",0.4881398252],[\"2021-11-20 19:16:27\",0.4511742892],[\"2021-11-20 19:16:48\",0.4181141439],[\"2021-11-20 19:17:09\",0.4559006211],[\"2021-11-20 19:17:30\",0.463840399],[\"2021-11-20 19:17:51\",0.4209215442],[\"2021-11-20 19:18:12\",0.4217772215],[\"2021-11-20 19:18:33\",0.4209215442],[\"2021-11-20 19:18:54\",0.7388613861],[\"2021-11-20 19:19:15\",0.7307692308],[\"2021-11-20 19:19:37\",0.7280593325],[\"2021-11-20 19:19:58\",0.758323058],[\"2021-11-20 19:20:19\",0.7398273736],[\"2021-11-20 19:20:40\",0.775990099],[\"2021-11-20 19:21:01\",0.7146401985],[\"2021-11-20 19:21:22\",0.7294264339],[\"2021-11-20 19:21:43\",0.728960396],[\"2021-11-20 19:22:04\",0.715],[\"2021-11-20 19:22:25\",0.7571606476],[\"2021-11-20 19:22:46\",0.7369727047],[\"2021-11-20 19:23:07\",0.736318408],[\"2021-11-20 19:23:28\",0.7252475248],[\"2021-11-20 19:23:49\",0.7626076261],[\"2021-11-20 19:24:10\",0.7119700748],[\"2021-11-20 19:24:31\",0.7682775713],[\"2021-11-20 19:24:52\",0.7721046077],[\"2021-11-20 19:25:13\",0.549068323],[\"2021-11-20 19:25:34\",0.7717121588],[\"2021-11-20 19:25:55\",0.7096774194],[\"2021-11-20 19:26:17\",0.7437810945],[\"2021-11-20 19:26:38\",0.7194513716],[\"2021-11-20 19:26:59\",0.7608966376],[\"2021-11-20 19:27:20\",0.8047263682],[\"2021-11-20 19:27:41\",0.9218362283],[\"2021-11-20 19:28:02\",0.7279503106],[\"2021-11-20 19:28:23\",0.8451935081],[\"2021-11-20 19:28:44\",0.5710723192],[\"2021-11-20 19:29:05\",0.9275905119],[\"2021-11-20 19:29:26\",0.7577639752],[\"2021-11-20 19:29:47\",0.784019975],[\"2021-11-20 19:30:08\",0.8225],[\"2021-11-20 19:30:29\",0.9435382685],[\"2021-11-20 19:30:50\",0.8189762797],[\"2021-11-20 19:31:11\",0.6149068323],[\"2021-11-20 19:31:32\",0.8838951311],[\"2021-11-20 19:31:53\",0.7955112219],[\"2021-11-20 19:32:14\",0.6359102244],[\"2021-11-20 19:32:35\",0.6733167082],[\"2021-11-20 19:32:56\",0.7952559301]],\"CPU_SYSTEM\":[[\"2021-11-20 18:57:30\",0.0948813983],[\"2021-11-20 18:57:51\",0.1295143213],[\"2021-11-20 18:58:12\",0.1752190238],[\"2021-11-20 18:58:33\",0.1070983811],[\"2021-11-20 18:58:54\",0.1563275434],[\"2021-11-20 18:59:15\",0.13375],[\"2021-11-20 18:59:36\",0.118159204],[\"2021-11-20 18:59:57\",0.2328767123],[\"2021-11-20 19:00:18\",0.138576779],[\"2021-11-20 19:00:39\",0.1158156912],[\"2021-11-20 19:01:00\",0.1965174129],[\"2021-11-20 19:01:21\",0.1556662516],[\"2021-11-20 19:01:42\",0.108478803],[\"2021-11-20 19:02:04\",0.1639751553],[\"2021-11-20 19:02:25\",0.1004962779],[\"2021-11-20 19:02:46\",0.1210986267],[\"2021-11-20 19:03:07\",0.180798005],[\"2021-11-20 19:03:28\",0.1009975062],[\"2021-11-20 19:03:49\",0.0921544209],[\"2021-11-20 19:04:10\",0.0460199005],[\"2021-11-20 19:04:31\",0.0375469337],[\"2021-11-20 19:04:52\",0.1802252816],[\"2021-11-20 19:05:13\",0.1449814126],[\"2021-11-20 19:05:34\",0.1239048811],[\"2021-11-20 19:05:55\",0.0932835821],[\"2021-11-20 19:06:16\",0.1516290727],[\"2021-11-20 19:06:37\",0.0995024876],[\"2021-11-20 19:06:58\",0.0872817955],[\"2021-11-20 19:07:19\",0.0893300248],[\"2021-11-20 19:07:40\",0.0881987578],[\"2021-11-20 19:08:01\",0.0873907615],[\"2021-11-20 19:08:22\",0.1158156912],[\"2021-11-20 19:08:43\",0.1455223881],[\"2021-11-20 19:09:04\",0.0933997509],[\"2021-11-20 19:09:25\",0.098381071],[\"2021-11-20 19:09:46\",0.1007462687],[\"2021-11-20 19:10:08\",0.3270676692],[\"2021-11-20 19:10:29\",0.1134401973],[\"2021-11-20 19:10:50\",0.0928217822],[\"2021-11-20 19:11:11\",0.15],[\"2021-11-20 19:11:32\",0.1695760599],[\"2021-11-20 19:11:53\",0.1635687732],[\"2021-11-20 19:12:14\",0.1639751553],[\"2021-11-20 19:12:35\",0.1546134663],[\"2021-11-20 19:12:56\",0.1417910448],[\"2021-11-20 19:13:17\",0.18],[\"2021-11-20 19:13:38\",0.1727158949],[\"2021-11-20 19:13:59\",0.1552795031],[\"2021-11-20 19:14:20\",0.1475],[\"2021-11-20 19:14:41\",0.1551939925],[\"2021-11-20 19:15:02\",0.1492537313],[\"2021-11-20 19:15:23\",0.166047088],[\"2021-11-20 19:15:45\",0.1654228856],[\"2021-11-20 19:16:06\",0.1535580524],[\"2021-11-20 19:16:27\",0.1557478368],[\"2021-11-20 19:16:48\",0.1464019851],[\"2021-11-20 19:17:09\",0.149068323],[\"2021-11-20 19:17:30\",0.1458852868],[\"2021-11-20 19:17:51\",0.1556662516],[\"2021-11-20 19:18:12\",0.1802252816],[\"2021-11-20 19:18:33\",0.1556662516],[\"2021-11-20 19:18:54\",0.1014851485],[\"2021-11-20 19:19:15\",0.1079404467],[\"2021-11-20 19:19:37\",0.1001236094],[\"2021-11-20 19:19:58\",0.0937114673],[\"2021-11-20 19:20:19\",0.0961775586],[\"2021-11-20 19:20:40\",0.0878712871],[\"2021-11-20 19:21:01\",0.1054590571],[\"2021-11-20 19:21:22\",0.1034912718],[\"2021-11-20 19:21:43\",0.1051980198],[\"2021-11-20 19:22:04\",0.09375],[\"2021-11-20 19:22:25\",0.0884184309],[\"2021-11-20 19:22:46\",0.0806451613],[\"2021-11-20 19:23:07\",0.1044776119],[\"2021-11-20 19:23:28\",0.1076732673],[\"2021-11-20 19:23:49\",0.0885608856],[\"2021-11-20 19:24:10\",0.1097256858],[\"2021-11-20 19:24:31\",0.0879801735],[\"2021-11-20 19:24:52\",0.0846824408],[\"2021-11-20 19:25:13\",0.1701863354],[\"2021-11-20 19:25:34\",0.0868486352],[\"2021-11-20 19:25:55\",0.0967741935],[\"2021-11-20 19:26:17\",0.0970149254],[\"2021-11-20 19:26:38\",0.1009975062],[\"2021-11-20 19:26:59\",0.0884184309],[\"2021-11-20 19:27:20\",0.0932835821],[\"2021-11-20 19:27:41\",0.0397022333],[\"2021-11-20 19:28:02\",0.1192546584],[\"2021-11-20 19:28:23\",0.0848938826],[\"2021-11-20 19:28:44\",0.1097256858],[\"2021-11-20 19:29:05\",0.0349563046],[\"2021-11-20 19:29:26\",0.0807453416],[\"2021-11-20 19:29:47\",0.074906367],[\"2021-11-20 19:30:08\",0.08],[\"2021-11-20 19:30:29\",0.0326223338],[\"2021-11-20 19:30:50\",0.0699126092],[\"2021-11-20 19:31:11\",0.0894409938],[\"2021-11-20 19:31:32\",0.0599250936],[\"2021-11-20 19:31:53\",0.0910224439],[\"2021-11-20 19:32:14\",0.1371571072],[\"2021-11-20 19:32:35\",0.1633416459],[\"2021-11-20 19:32:56\",0.102372035]],\"CPU_USER\":[[\"2021-11-20 18:57:30\",0.1897627965],[\"2021-11-20 18:57:51\",0.2117061021],[\"2021-11-20 18:58:12\",0.2978723404],[\"2021-11-20 18:58:33\",0.1718555417],[\"2021-11-20 18:58:54\",0.2803970223],[\"2021-11-20 18:59:15\",0.1925],[\"2021-11-20 18:59:36\",0.1927860697],[\"2021-11-20 18:59:57\",0.4346201743],[\"2021-11-20 19:00:18\",0.2184769039],[\"2021-11-20 19:00:39\",0.2204234122],[\"2021-11-20 19:01:00\",0.5360696517],[\"2021-11-20 19:01:21\",0.2752179328],[\"2021-11-20 19:01:42\",0.210723192],[\"2021-11-20 19:02:04\",0.4695652174],[\"2021-11-20 19:02:25\",0.1699751861],[\"2021-11-20 19:02:46\",0.2484394507],[\"2021-11-20 19:03:07\",0.4376558603],[\"2021-11-20 19:03:28\",0.1907730673],[\"2021-11-20 19:03:49\",0.1656288917],[\"2021-11-20 19:04:10\",0.0646766169],[\"2021-11-20 19:04:31\",0.0375469337],[\"2021-11-20 19:04:52\",0.4017521902],[\"2021-11-20 19:05:13\",0.5080545229],[\"2021-11-20 19:05:34\",0.1752190238],[\"2021-11-20 19:05:55\",0.1592039801],[\"2021-11-20 19:06:16\",0.3233082707],[\"2021-11-20 19:06:37\",0.2089552239],[\"2021-11-20 19:06:58\",0.1471321696],[\"2021-11-20 19:07:19\",0.1451612903],[\"2021-11-20 19:07:40\",0.1403726708],[\"2021-11-20 19:08:01\",0.1373283396],[\"2021-11-20 19:08:22\",0.2241594022],[\"2021-11-20 19:08:43\",0.223880597],[\"2021-11-20 19:09:04\",0.1855541719],[\"2021-11-20 19:09:25\",0.1855541719],[\"2021-11-20 19:09:46\",0.1890547264],[\"2021-11-20 19:10:08\",0.2656641604],[\"2021-11-20 19:10:29\",0.2083847102],[\"2021-11-20 19:10:50\",0.1819306931],[\"2021-11-20 19:11:11\",0.21375],[\"2021-11-20 19:11:32\",0.4139650873],[\"2021-11-20 19:11:53\",0.4089219331],[\"2021-11-20 19:12:14\",0.4124223602],[\"2021-11-20 19:12:35\",0.4413965087],[\"2021-11-20 19:12:56\",0.3320895522],[\"2021-11-20 19:13:17\",0.40375],[\"2021-11-20 19:13:38\",0.491864831],[\"2021-11-20 19:13:59\",0.3652173913],[\"2021-11-20 19:14:20\",0.32875],[\"2021-11-20 19:14:41\",0.4418022528],[\"2021-11-20 19:15:02\",0.3208955224],[\"2021-11-20 19:15:23\",0.3407682776],[\"2021-11-20 19:15:45\",0.4626865672],[\"2021-11-20 19:16:06\",0.3583021223],[\"2021-11-20 19:16:27\",0.3930778739],[\"2021-11-20 19:16:48\",0.435483871],[\"2021-11-20 19:17:09\",0.3950310559],[\"2021-11-20 19:17:30\",0.3902743142],[\"2021-11-20 19:17:51\",0.4234122042],[\"2021-11-20 19:18:12\",0.3979974969],[\"2021-11-20 19:18:33\",0.4234122042],[\"2021-11-20 19:18:54\",0.1596534653],[\"2021-11-20 19:19:15\",0.1612903226],[\"2021-11-20 19:19:37\",0.1718170581],[\"2021-11-20 19:19:58\",0.1479654747],[\"2021-11-20 19:20:19\",0.1639950678],[\"2021-11-20 19:20:40\",0.1361386139],[\"2021-11-20 19:21:01\",0.1799007444],[\"2021-11-20 19:21:22\",0.1670822943],[\"2021-11-20 19:21:43\",0.1658415842],[\"2021-11-20 19:22:04\",0.19125],[\"2021-11-20 19:22:25\",0.1544209215],[\"2021-11-20 19:22:46\",0.182382134],[\"2021-11-20 19:23:07\",0.1592039801],[\"2021-11-20 19:23:28\",0.1670792079],[\"2021-11-20 19:23:49\",0.1488314883],[\"2021-11-20 19:24:10\",0.1783042394],[\"2021-11-20 19:24:31\",0.1437422553],[\"2021-11-20 19:24:52\",0.1432129514],[\"2021-11-20 19:25:13\",0.2807453416],[\"2021-11-20 19:25:34\",0.141439206],[\"2021-11-20 19:25:55\",0.1935483871],[\"2021-11-20 19:26:17\",0.1592039801],[\"2021-11-20 19:26:38\",0.1795511222],[\"2021-11-20 19:26:59\",0.1506849315],[\"2021-11-20 19:27:20\",0.1019900498],[\"2021-11-20 19:27:41\",0.0384615385],[\"2021-11-20 19:28:02\",0.1527950311],[\"2021-11-20 19:28:23\",0.0699126092],[\"2021-11-20 19:28:44\",0.319201995],[\"2021-11-20 19:29:05\",0.0374531835],[\"2021-11-20 19:29:26\",0.1614906832],[\"2021-11-20 19:29:47\",0.1410736579],[\"2021-11-20 19:30:08\",0.0975],[\"2021-11-20 19:30:29\",0.0238393977],[\"2021-11-20 19:30:50\",0.1111111111],[\"2021-11-20 19:31:11\",0.2956521739],[\"2021-11-20 19:31:32\",0.0561797753],[\"2021-11-20 19:31:53\",0.1134663342],[\"2021-11-20 19:32:14\",0.2269326683],[\"2021-11-20 19:32:35\",0.1633416459],[\"2021-11-20 19:32:56\",0.102372035]]}');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `collection_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `receive_img`(`collection_code_url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES (6, '2020-06-25 19:54:06', '2020-06-27 12:00:23', 5, 10050, 'https://s1.ax1x.com/2020/06/27/NyWnrn.png');
INSERT INTO `tb_user_info` VALUES (7, '2021-09-07 07:23:23', '2021-09-07 07:23:29', 1, 10049, 'https://s1.ax1x.com/2020/06/25/NDpXVO.jpg');

-- ----------------------------
-- Table structure for tb_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tb_wallet`;
CREATE TABLE `tb_wallet`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_info` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_address`(`user_id`, `type`) USING BTREE,
  UNIQUE INDEX `uk_address`(`type`, `address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_wallet
-- ----------------------------
INSERT INTO `tb_wallet` VALUES (10, '2020-02-04 16:05:37', 10050, 'NH_BTC', '39XeYtGmpjbxaXYGNmQsH1WBMhwt6xbUq6', '{\"apiKey\":\"e4ffd016-6122-4b56-b5b0-24b20e1fda5a\",\"apiSecret\":\"f2ac2d53-b0a2-42ee-8d4a-23585a299dd3940e0e2e-0440-44ab-9065-36fc752f8d67\",\"organizationId\":\"1a3f28ca-4ca9-49b2-bbad-0009022d1c31\"}');
INSERT INTO `tb_wallet` VALUES (11, '2020-02-04 16:05:37', 10049, 'NH_BTC', '35SrdMsdjofQtXxCjcroyeJUiKYNHbG9gR', '{\"apiKey\":\"4bd4fe90-300e-44cd-82bd-cd2d779891ab\",\"apiSecret\":\"aa1e219b-31fb-4906-9222-1d218707339847dce540-720e-4eae-ad0f-32ccd7f43935\",\"organizationId\":\"37f206e1-62d4-4577-9b2c-e0ba040b6f84\"}');
INSERT INTO `tb_wallet` VALUES (12, '2020-02-04 16:05:37', 10051, 'NH_BTC', '39XeYtGmpjbxaXYGNmQsH1WBMhwt6xbUq7', '{\"apiKey\":\"4bd4fe90-300e-44cd-82bd-cd2d779891ab\",\"apiSecret\":\"aa1e219b-31fb-4906-9222-1d218707339847dce540-720e-4eae-ad0f-32ccd7f43935\",\"organizationId\":\"37f206e1-62d4-4577-9b2c-e0ba040b6f84\"}');

-- ----------------------------
-- Table structure for tb_wallet_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tb_wallet_exchange`;
CREATE TABLE `tb_wallet_exchange`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `modified_time` datetime(0) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`wallet_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_wallet_exchange
-- ----------------------------
INSERT INTO `tb_wallet_exchange` VALUES (12, '2020-05-24 11:48:03', '2020-06-13 13:46:19', 6, 10, '0.1', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (15, '2020-06-13 13:31:05', '2020-06-13 13:46:20', 3, 10, '0.00001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (24, '2020-06-13 17:55:07', '2020-07-01 22:34:19', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (26, '2020-06-13 17:59:14', '2020-07-01 22:34:19', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (28, '2020-06-15 14:00:17', '2020-07-01 21:56:27', 4, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (31, '2020-06-18 11:34:03', '2020-07-01 21:56:28', 4, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (32, '2020-07-04 22:28:25', '2020-07-04 22:40:42', 1, 10, '0.001', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (33, '2020-07-04 22:39:12', '2020-07-04 22:40:42', 1, 11, '0.03', 'finish', '76967');
INSERT INTO `tb_wallet_exchange` VALUES (39, '2020-11-11 10:01:10', '2020-11-11 10:01:10', 0, 10, '0.001', 'wait', NULL);

SET FOREIGN_KEY_CHECKS = 1;
