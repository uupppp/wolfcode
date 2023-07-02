/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : nojoke

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 30/06/2023 15:22:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `ID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '名称',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `INFO` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '描述',
  `AGE` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES ('555 ASDASD ASDASD ASDASD', 'ASDASDA', '2020-02-12 10:59:35', '1212', 12);
INSERT INTO `demo` VALUES ('ASDA3SD ASDASD', 'SADSAD', '2019-06-22 14:01:54', '212', 13);
INSERT INTO `demo` VALUES ('ASDAS1D ASDASD', 'SADSAD', '2020-02-12 10:59:33', '21121', 14);
INSERT INTO `demo` VALUES ('ASDAS2D ASDASD', 'ASDASDA', '2019-06-22 22:02:00', NULL, 15);
INSERT INTO `demo` VALUES ('bd7001ce0b6181668226827be6b025e1', 'xxx', '2019-02-12 10:09:10', '123123', 22);
INSERT INTO `demo` VALUES ('d5e781aaf42d18bcfc562354e82bad31', '12123', NULL, NULL, 23);
INSERT INTO `demo` VALUES ('df4a42791d958e7cdf74ace7c5fc6ba2', '1', '2019-10-09 16:00:00', '1', 43);
INSERT INTO `demo` VALUES ('f6d3658605c9363da7274522b6e81015', '12', '2020-02-12 10:59:35', '1', 55);

-- ----------------------------
-- Table structure for demo_app
-- ----------------------------
DROP TABLE IF EXISTS `demo_app`;
CREATE TABLE `demo_app`  (
  `ID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '名称',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `INFO` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '描述',
  `DESCS` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo_app
-- ----------------------------
INSERT INTO `demo_app` VALUES ('555 ASDASD ASDASD ASDASD', 'ASDASDA', '2020-02-12 10:59:35', '1212', '描述1');
INSERT INTO `demo_app` VALUES ('ASDA3SD ASDASD', 'SADSAD', '2019-06-22 14:01:54', '212', '描述35');
INSERT INTO `demo_app` VALUES ('ASDAS1D ASDASD', 'SADSAD', '2020-02-12 10:59:33', '21121', '描述5');
INSERT INTO `demo_app` VALUES ('ASDAS2D ASDASD', 'ASDASDA', '2019-06-22 22:02:00', NULL, '描述8');
INSERT INTO `demo_app` VALUES ('bd7001ce0b6181668226827be6b025e1', 'xxx', '2019-02-12 10:09:10', '123123', '描述9');
INSERT INTO `demo_app` VALUES ('d5e781aaf42d18bcfc562354e82bad31', '12123', NULL, NULL, '描述10');
INSERT INTO `demo_app` VALUES ('df4a42791d958e7cdf74ace7c5fc6ba2', '1', '2019-10-09 16:00:00', '1', '描述15');
INSERT INTO `demo_app` VALUES ('f6d3658605c9363da7274522b6e81015', '12', '2020-02-12 10:59:35', '1', '描述58');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `CONFIG_KEY` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '配置key',
  `PARENT_KEY` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '所属key',
  `INFO` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '说明',
  `CONFIG_VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '配置的值',
  `DISABLE` int NULL DEFAULT 0 COMMENT '0有效 其他失效',
  PRIMARY KEY (`CONFIG_KEY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1111', '-', '阿斯顿撒的', '奥术大师的', 0);
INSERT INTO `sys_config` VALUES ('111111', '-', '111', '11111', 1);
INSERT INTO `sys_config` VALUES ('666', '-', '666', '6666', 1);
INSERT INTO `sys_config` VALUES ('config', '-', NULL, NULL, 0);
INSERT INTO `sys_config` VALUES ('config1', 'config2222', '系统配置', 'configValue', 1);
INSERT INTO `sys_config` VALUES ('config2', 'config', '系统配置', 'configValue', 0);
INSERT INTO `sys_config` VALUES ('config3', 'config', '系统配置', 'configValue', 0);
INSERT INTO `sys_config` VALUES ('system', '-', '系统配置', '-', 0);
INSERT INTO `sys_config` VALUES ('system1', 'system', '系统配置', 'systemValue', 0);
INSERT INTO `sys_config` VALUES ('system2', 'system', '系统配置', 'systemValue', 0);
INSERT INTO `sys_config` VALUES ('system3', 'system', '系统配置', 'systemValue', 0);
INSERT INTO `sys_config` VALUES ('system4', 'system', '系统配置', 'systemValue', 0);
INSERT INTO `sys_config` VALUES ('system:xss:enabled', '-', 'xss配置开关', 'true', 0);
INSERT INTO `sys_config` VALUES ('white_list', 'white_list', '白名单数据', 'admin', 0);
INSERT INTO `sys_config` VALUES ('wx_config', '-', '微信配置相关', '-', 0);
INSERT INTO `sys_config` VALUES ('wx_token', 'wx_config', '微信授权', 'xxx', 0);

-- ----------------------------
-- Table structure for sys_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_info`;
CREATE TABLE `sys_dept_info`  (
  `DEPT_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DEPT_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '部门名字',
  `PARENT_DEPT_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '上级部门。一级部门的上级部门为空字符串',
  `DEPT_PATH` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '部门路径',
  `DEPT_LEVEL` int NOT NULL DEFAULT 0 COMMENT '部门等级',
  `DISABLE` int NOT NULL DEFAULT 0 COMMENT '状态.1代表正常。0代表已删除',
  `NUMBER_LEVEL` int NULL DEFAULT NULL COMMENT '层级',
  `BUSINESS_LEVEL` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '业务层级',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept_info
-- ----------------------------
INSERT INTO `sys_dept_info` VALUES ('1325121829601280001', '总经办', '4444', '跟部门/总经办', 0, 0, 2, '4444:1325121829601280001:');
INSERT INTO `sys_dept_info` VALUES ('1325122003077693442', '市场部', '4444', '跟部门/市场部', 0, 0, 2, '4444:1325122003077693442:');
INSERT INTO `sys_dept_info` VALUES ('1325123225058803713', '软件部', '4444', '', 0, 0, 2, '4444:1325123225058803713:');
INSERT INTO `sys_dept_info` VALUES ('1325123334769213441', '人事部', '4444', '', 0, 0, 2, '4444:1325123334769213441:');
INSERT INTO `sys_dept_info` VALUES ('4444', '跟部门', '0000', '跟部门', 0, 0, 1, '4444:');

-- ----------------------------
-- Table structure for sys_dice_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dice_info`;
CREATE TABLE `sys_dice_info`  (
  `ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DICE_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `DICE_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '字典编码',
  `PARENT_DICE_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '所属字典',
  `DICE_VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '字典值',
  `SORT` int NOT NULL DEFAULT 0 COMMENT '排序',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `DISABLE` int NOT NULL DEFAULT 1 COMMENT '状态. 1代表正常。 0代表已删除',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `DICE_CODE`(`DICE_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '数据字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dice_info
-- ----------------------------
INSERT INTO `sys_dice_info` VALUES ('1115910753563779073', '质量报告', '质量报告', '', '/quality_report/', 0, '质量报告', 0);
INSERT INTO `sys_dice_info` VALUES ('1115911643695751169', '22', '222', '质量报告', '222', 2, '222', 0);
INSERT INTO `sys_dice_info` VALUES ('1116169054240587778', '1', '1', '质量报告', '1', 1, '12', 0);
INSERT INTO `sys_dice_info` VALUES ('1116262455376044034', 'asd', 'asdsa', '质量报告', '1', 1, '1', 0);
INSERT INTO `sys_dice_info` VALUES ('1116597034087997441', 'sss', 'sss', '', 'sss', 1, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1116601419975192577', '11', 'sssqq11s', '', 'qqq', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1116640222618140673', '11', '11', 'sssqq11s', '11', 11, '11', 0);
INSERT INTO `sys_dice_info` VALUES ('1116640932076285954', '333', '3333ssss', '222', '333', 33, '333333', 0);
INSERT INTO `sys_dice_info` VALUES ('1116640932076285955', '系统编码', 'system', '', 'system', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1148629722358673409', '微信key', 'wx-key', 'system', 'key-wx-key-xxx', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1148629722845212674', '微信value', 'wx-value', 'system', 'key-wx-key-xxx', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1148629723600187393', '支付宝key', 'alipay-key', 'system', 'key-wx-key-xxx', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1148629723990257666', '支付宝value', 'alipay-value', 'system', 'key-wx-key-xxx', 0, '', 0);
INSERT INTO `sys_dice_info` VALUES ('1178552193427894273', '1', '1112', '', '1', 1, '1', 0);

-- ----------------------------
-- Table structure for sys_files
-- ----------------------------
DROP TABLE IF EXISTS `sys_files`;
CREATE TABLE `sys_files`  (
  `ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DISABLE` int NULL DEFAULT 1 COMMENT '状态. 1代表正常. 0代表已删除',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `FILE_KEY` varchar(2047) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '文件key',
  `HEIGHT` int NULL DEFAULT 0 COMMENT '高度',
  `MEDIA_TYPE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '文件头类型',
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '名称',
  `PATH` varchar(1023) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '路径',
  `FILE_SIZE` bigint NOT NULL COMMENT '大小',
  `SUFFIX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '后缀',
  `THUMB_PATH` varchar(1023) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '压缩路径',
  `FILE_TYPE` int NULL DEFAULT 0 COMMENT '类型',
  `WIDTH` int NULL DEFAULT 0 COMMENT '宽度',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_files
-- ----------------------------
INSERT INTO `sys_files` VALUES ('18a70aa0a05357e1c760c9415f507a72', '2020-01-18 09:22:07', 0, '2020-01-18 09:22:07', 'upload/2020/1/新建文件-ea8437ce20644c7a7a21f4871f7b9fdc.txt', 0, 'text/plain', '新建文件', 'upload/2020/1/新建文件-ea8437ce20644c7a7a21f4871f7b9fdc.txt', 30, 'txt', '', 0, 0);
INSERT INTO `sys_files` VALUES ('1be32a8d24da1a93414a4316fd189d5f', '2020-03-02 15:55:55', 0, '2020-03-02 15:55:55', 'upload/2020/3/1-8141be17491e7538070bae817eb15d74.png', 592, 'image/png', '1', 'upload/2020/3/1-8141be17491e7538070bae817eb15d74.png', 571015, 'png', 'upload/2020/3/1-8141be17491e7538070bae817eb15d74-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('2d3a7d5b457a8e33caa0a1cac5ec3441', '2020-03-01 15:50:25', 0, '2020-03-01 15:50:25', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E-1fc9a6ff313e0f9343fea091a7d37954.png', 401, 'image/png', '4E7AC6D7759E3A324C8BEC5B19F0044E', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E-1fc9a6ff313e0f9343fea091a7d37954.png', 7698, 'png', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E-1fc9a6ff313e0f9343fea091a7d37954-thumbnail.png', 0, 567);
INSERT INTO `sys_files` VALUES ('4cbfadcfb86038ebb14f58174af9869e', '2020-03-04 01:44:10', 0, '2020-03-04 01:44:10', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E 2-e2a29b95be57893a9b44cab8cf37b97d.png', 401, 'image/png', '4E7AC6D7759E3A324C8BEC5B19F0044E 2', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E 2-e2a29b95be57893a9b44cab8cf37b97d.png', 7698, 'png', 'upload/2020/3/4E7AC6D7759E3A324C8BEC5B19F0044E 2-e2a29b95be57893a9b44cab8cf37b97d-thumbnail.png', 0, 567);
INSERT INTO `sys_files` VALUES ('4e355fb1e97174a4900502ed7577134f', '2020-01-18 09:28:29', 0, '2020-01-18 09:28:29', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-6abb1e470ef23f0c540990113625d03a.png', 401, 'image/png', '4E7AC6D7759E3A324C8BEC5B19F0044E', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-6abb1e470ef23f0c540990113625d03a.png', 7698, 'png', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-6abb1e470ef23f0c540990113625d03a-thumbnail.png', 0, 567);
INSERT INTO `sys_files` VALUES ('6c4c4bed77e8b4ac61229a7359c7f3d3', '2020-03-02 16:27:29', 0, '2020-03-02 16:27:29', 'upload/2020/3/1-155c2270319f21dfbed8a6fd2ad56011.png', 592, 'image/png', '1', 'upload/2020/3/1-155c2270319f21dfbed8a6fd2ad56011.png', 571015, 'png', 'upload/2020/3/1-155c2270319f21dfbed8a6fd2ad56011-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('73a3a2385e9239e32cac7cf55daf1751', '2020-03-02 15:56:20', 0, '2020-03-02 15:56:20', 'upload/2020/3/1-07878b7d73ddf4dbb4f014ed6aa6f27f.png', 592, 'image/png', '1', 'upload/2020/3/1-07878b7d73ddf4dbb4f014ed6aa6f27f.png', 571015, 'png', 'upload/2020/3/1-07878b7d73ddf4dbb4f014ed6aa6f27f-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('7df7263789a6ce3661cf2fd3668ddaa4', '2020-03-02 15:56:02', 0, '2020-03-02 15:56:02', 'upload/2020/3/WechatIMG94-2d86cd25e5e691308bfdb881d1f665b1.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-2d86cd25e5e691308bfdb881d1f665b1.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-2d86cd25e5e691308bfdb881d1f665b1-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('93354d120d6f6bf252bdfa55e51b72fe', '2020-03-02 15:56:02', 0, '2020-03-02 15:56:02', 'upload/2020/3/1-3bab7d4d46314933cec76102c9c47213.png', 592, 'image/png', '1', 'upload/2020/3/1-3bab7d4d46314933cec76102c9c47213.png', 571015, 'png', 'upload/2020/3/1-3bab7d4d46314933cec76102c9c47213-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('95a0b70c99098afe91cf6f333b4dc11a', '2020-03-02 15:56:58', 0, '2020-03-02 15:56:58', 'upload/2020/3/1-7cd6873cc62471eccbb63dc0141f1ac2.png', 592, 'image/png', '1', 'upload/2020/3/1-7cd6873cc62471eccbb63dc0141f1ac2.png', 571015, 'png', 'upload/2020/3/1-7cd6873cc62471eccbb63dc0141f1ac2-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('e0ab277825bb74274fbb6e23325c3dde', '2020-03-02 15:57:20', 0, '2020-03-02 15:57:20', 'upload/2020/3/WechatIMG94-fe2ba6d869f1d790ace36d1ca3ebde57.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-fe2ba6d869f1d790ace36d1ca3ebde57.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-fe2ba6d869f1d790ace36d1ca3ebde57-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('e11baea43b35a8874888217e8b0aa615', '2020-01-18 09:30:13', 0, '2020-01-18 09:30:13', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-e1ebd5d60c23aaca6b05bd4a492e6c32.png', 401, 'image/png', '4E7AC6D7759E3A324C8BEC5B19F0044E', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-e1ebd5d60c23aaca6b05bd4a492e6c32.png', 7698, 'png', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E-e1ebd5d60c23aaca6b05bd4a492e6c32-thumbnail.png', 0, 567);
INSERT INTO `sys_files` VALUES ('e13dac0d88ce2210f060511e3d99cdea', '2020-01-18 09:22:37', 0, '2020-01-18 09:22:37', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E 2-ac6143fb82a67b42abac4af8f88c4cd8.png', 401, 'image/png', '4E7AC6D7759E3A324C8BEC5B19F0044E 2', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E 2-ac6143fb82a67b42abac4af8f88c4cd8.png', 7698, 'png', 'upload/2020/1/4E7AC6D7759E3A324C8BEC5B19F0044E 2-ac6143fb82a67b42abac4af8f88c4cd8-thumbnail.png', 0, 567);
INSERT INTO `sys_files` VALUES ('e9897e01fa059f3bd3c2142329b198a9', '2020-03-02 15:55:55', 0, '2020-03-02 15:55:55', 'upload/2020/3/WechatIMG94-6b0b950cc780bfe0741fd005071931a7.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-6b0b950cc780bfe0741fd005071931a7.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-6b0b950cc780bfe0741fd005071931a7-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('eac7d25fa6628c19e46adbd94be34370', '2020-03-02 15:56:20', 0, '2020-03-02 15:56:20', 'upload/2020/3/WechatIMG94-9890e466281dedb689b505ff1692c8b7.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-9890e466281dedb689b505ff1692c8b7.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-9890e466281dedb689b505ff1692c8b7-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('ed0aef000a0371ef0a817f08514f01e5', '2020-03-02 16:27:12', 0, '2020-03-02 16:27:12', 'upload/2020/3/1-a15ea6c12c6fd3d0fffa998659f86fd0.png', 592, 'image/png', '1', 'upload/2020/3/1-a15ea6c12c6fd3d0fffa998659f86fd0.png', 571015, 'png', 'upload/2020/3/1-a15ea6c12c6fd3d0fffa998659f86fd0-thumbnail.png', 0, 566);
INSERT INTO `sys_files` VALUES ('ed7a69eca6dd19b02f88cecb90a3658f', '2020-03-02 15:57:03', 0, '2020-03-02 15:57:03', 'upload/2020/3/WechatIMG94-47d30ee2d73eab5f51afc29655152fe5.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-47d30ee2d73eab5f51afc29655152fe5.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-47d30ee2d73eab5f51afc29655152fe5-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('f568e10b4a71dd90aba1bf6f9bf2b792', '2020-03-02 15:56:11', 0, '2020-03-02 15:56:11', 'upload/2020/3/WechatIMG94-0d1d11b19b01ff9ecb284e502c9cfdb9.jpeg', 1000, 'image/jpeg', 'WechatIMG94', 'upload/2020/3/WechatIMG94-0d1d11b19b01ff9ecb284e502c9cfdb9.jpeg', 118676, 'jpeg', 'upload/2020/3/WechatIMG94-0d1d11b19b01ff9ecb284e502c9cfdb9-thumbnail.jpeg', 0, 776);
INSERT INTO `sys_files` VALUES ('fb63a7c587c815f8f61afca2fbd4d5e5', '2020-03-02 15:57:07', 0, '2020-03-02 15:57:07', 'upload/2020/3/1-a097e516b303e4a324b063335cfd5d5d.png', 592, 'image/png', '1', 'upload/2020/3/1-a097e516b303e4a324b063335cfd5d5d.png', 571015, 'png', 'upload/2020/3/1-a097e516b303e4a324b063335cfd5d5d-thumbnail.png', 0, 566);

-- ----------------------------
-- Table structure for sys_menu_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_info`;
CREATE TABLE `sys_menu_info`  (
  `MENU_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MENU_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `PARENT_MENU_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '上级菜单',
  `MENU_ICON` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '图标.(参见layui2.x图标即可)',
  `MENU_TYPE` int NOT NULL DEFAULT 1 COMMENT '菜单类型. 1代表目录。2和3代表菜单。4代表按钮.(最大支持3级菜单)',
  `SORT` int NOT NULL DEFAULT 0 COMMENT '排序',
  `MENU_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '菜单英文标识',
  `MENU_URL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '菜单地址',
  `AUTHORIZATION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '授权标识。多个之间用逗号隔开',
  `DISABLE` int NOT NULL DEFAULT 0 COMMENT '状态.1代表正常。0代表已删除',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_info
-- ----------------------------
INSERT INTO `sys_menu_info` VALUES ('1112966344857616386', '系统管理', '', 'layui-icon-set-fill', 1, 10, 'sysMng', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112974755733204993', '用户管理', 'sysMng', '', 2, 19, 'userMng', 'user/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112975139314933761', '角色管理', 'sysMng', '', 2, 18, 'roleMng', 'role/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112975278309969922', '菜单管理', 'sysMng', '', 2, 17, 'menuMng', 'menu/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112975614172987393', '日志管理', '1123', '', 2, 15, 'sysLog', 'log/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112975721178087426', '登录日志', '1123', '', 2, 14, 'loginLog', 'loginLog/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1112975853831434242', '数据字典', 'sysMng', '', 2, 13, 'dataDict', 'dataDict/dictList.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1113333920829923329', 'echarts集成', '', 'layui-icon-chart-screen', 1, 30, 'echarts', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1113334542035636226', '折线图', 'echarts', '', 2, 31, 'line', 'line/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1113334674051395586', '柱状图', 'echarts', '', 2, 31, 'bar', 'bar/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1126023857498173442', '新增用户', 'userMng', '', 4, 0, 'userAdd', '', 'user:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1126024927796473858', '更新用户', 'userMng', '', 4, 0, 'userUpdate', '', 'user:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1126044820419874817', '菜单删除', 'menuMng', '', 4, 0, 'menuDelete', '', 'menu:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1126049280905560066', '用户列表', 'userMng', '', 4, 0, 'userList', '', 'user:userList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126049883098562562', '删除用户', 'userMng', '', 4, 0, 'userDelete', '', 'user:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1126050257549246465', '恢复用户', 'userMng', '', 4, 0, 'userReset', '', 'user:reset', 0);
INSERT INTO `sys_menu_info` VALUES ('1126050484595310593', '重置密码', 'userMng', '', 4, 0, 'userResetPassword', '', 'user:resetPassword', 0);
INSERT INTO `sys_menu_info` VALUES ('1126050805824471041', '导入用户', 'userMng', '', 4, 0, 'userImport', '', 'user:import', 0);
INSERT INTO `sys_menu_info` VALUES ('1126050940436463617', '导出用户', 'userMng', '', 4, 0, 'userExport', '', 'user:export', 0);
INSERT INTO `sys_menu_info` VALUES ('1126056089716285441', '新增数据字典', 'dataDict', '', 4, 0, 'dataDictAdd', '', 'dataDict:save', 0);
INSERT INTO `sys_menu_info` VALUES ('1126056377630089217', '更新数据字典', 'dataDict', '', 4, 0, 'dataDictUpdate', '', 'dataDict:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1126056530101428226', '数据字典列表', 'dataDict', '', 4, 0, 'dictList', '', 'dataDict:dictList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126056749694214145', '导入字典列表', 'dataDict', '', 4, 0, 'dataDictImport', '', 'dataDict:import', 0);
INSERT INTO `sys_menu_info` VALUES ('1126056876265725953', '导出数据字典', 'dataDict', '', 4, 0, 'dataDictExport', '', 'dataDict:export', 0);
INSERT INTO `sys_menu_info` VALUES ('1126057712962265090', '删除数据字典', 'dataDict', '', 4, 0, 'dataDictDelete', '', 'dataDict:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1126063434945089538', '日志列表', 'sysLog', '', 4, 0, 'operationLogList', '', 'log:operationLogList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126063556827369474', '登录日志列表', 'loginLog', '', 4, 0, 'loginLogList', '', 'loginLog:loginLogList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126293684049588226', '菜单列表', 'menuMng', '', 4, 0, 'menuList', '', 'menu:menuList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126293927839313922', '菜单新增', 'menuMng', '', 4, 0, 'menuAdd', '', 'menu:add,select:noButton:menuTree', 0);
INSERT INTO `sys_menu_info` VALUES ('1126294109494620162', '菜单编辑', 'menuMng', '', 4, 0, 'menuUpdate', '', 'menu:update,select:noButton:menuTree', 0);
INSERT INTO `sys_menu_info` VALUES ('1126294703332569089', '角色新增', 'roleMng', '', 4, 0, 'roleAdd', '', 'role:add,select:menuTree', 0);
INSERT INTO `sys_menu_info` VALUES ('1126295042660151297', '角色编辑', 'roleMng', '', 4, 0, 'roleUpdate', '', 'role:update,role:userRoleMenus', 0);
INSERT INTO `sys_menu_info` VALUES ('1126295169936306178', '角色列表', 'roleMng', '', 4, 0, 'roleList', '', 'role:roleList', 0);
INSERT INTO `sys_menu_info` VALUES ('1126295252723478530', '角色删除', 'roleMng', '', 4, 0, 'roleDelete', '', 'role:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1131086857273638914', '演示案例', '', 'layui-icon-group', 1, 1, '1111', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1131087041919483905', '基本框架', '1111', '', 2, 3, 'testMng', 'test/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1133280429060288513', '监控', '', 'layui-icon-camera-fill', 1, 1, '1123', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1138588743643717633', 'sql监控', '1123', '', 2, 1, '4444', 'druid/index.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1138840604208594945', '机构管理', 'sysMng', '', 2, 1, 'deptMng', 'dept/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1138842267690532865', '部门列表', 'deptMng', '', 4, 0, 'deptList', '', 'dept:deptList', 0);
INSERT INTO `sys_menu_info` VALUES ('1147553800111222786', 'web日志', '1123', '', 2, 1, '123', 'logweb/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1147555115004469249', '列表', '123', '', 4, 0, 'list', '', 'logweb:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1150795687641001985', '系统配置', 'sysMng', '', 2, 10, 'configMng', 'config/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1150796063194787842', '配置列表', 'configMng', '', 4, 0, 'configList', '', 'config:configList', 0);
INSERT INTO `sys_menu_info` VALUES ('1150804439245041666', '删除配置', 'configMng', '', 4, 0, 'configDelete', '', 'config:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1150805629018091521', '修改配置', 'configMng', '', 4, 0, 'configUpdate', '', 'config:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1150805870735831041', '新增配置', 'configMng', '', 4, 0, 'configAdd', '', 'config:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1157847348920324097', '恢复', 'configMng', '', 4, 0, 'configRecovery', '', 'config:recovery', 0);
INSERT INTO `sys_menu_info` VALUES ('1176170190520758273', '文件上传', 'systemTool', '', 2, 1, 'file', 'file/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1182828280830537730', '系统工具', '', 'layui-icon-align-center', 1, 6, 'systemTool', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1182829708877803522', '代码生成', 'systemTool', '', 2, 1, 'genaratorCode', 'gen/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1192377180011401218', '恢复数据字典', 'dataDict', '', 4, 0, 'dataDictRecovery', '', 'dataDict:recovery', 0);
INSERT INTO `sys_menu_info` VALUES ('1225261202025451521', '修改部门', 'deptMng', '', 4, 1, 'deptUpdate', '', 'dept:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1225265193530658817', '删除部门', 'deptMng', '', 4, 1, 'deptDelete', '', 'dept:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1225266469668622338', '部门新增', 'deptMng', '', 4, 1, 'deptAdd', '', 'dept:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1225284950367633409', '机构恢复', 'deptMng', '', 4, 1, 'deptRecovery', '', 'dept:recovery', 0);
INSERT INTO `sys_menu_info` VALUES ('1225596235096821761', '测试按钮', 'test2', '', 4, 1, 'xxxx1111', '', 'ljasdlkjad1', 0);
INSERT INTO `sys_menu_info` VALUES ('1227757975306383361', 'demo演示', '1111', '', 2, 1, 'demoMng', 'demo/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1227792297283543041', '新增', 'demoMng', '', 4, 1, 'demoAdd', '', 'demo:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1227796662648037378', '列表', 'demoMng', '', 4, 1, 'demoList', '', 'demo:demoList', 0);
INSERT INTO `sys_menu_info` VALUES ('1227797405371195393', '修改', 'demoMng', '', 4, 1, 'demoUpdate', '', 'demo:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1227802053339430913', '删除', 'demoMng', '', 4, 1, 'demoDelete', '', 'demo:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1234752271292628993', '系统文件管理', 'systemTool', '', 2, 1, 'FilesMng', 'files/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1234752271292628994', '列表', 'FilesMng', '', 4, 1, 'FilesList', '', 'tool:files:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1234752271292628995', '新增', 'FilesMng', '', 4, 1, 'FilesAdd', '', 'tool:files:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1234752271292628996', '修改', 'FilesMng', '', 4, 1, 'FilesUpdate', '', 'tool:files:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1234752271292628997', '删除', 'FilesMng', '', 4, 1, 'FilesDelete', '', 'tool:files:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1238361764459675650', '树形选择框', '1111', '', 2, 3, 'testTree', 'test/tree.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1238392821993127937', '树形单选回显', '1111', '', 2, 4, 'treeCheckMng', 'test/treeCheck.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1302490000092598275', '列表', 'CodeCheckResultMng', '', 4, 1, 'CodeCheckResultList', '', 'sys:codeCheck:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1302490000092598276', '新增', 'CodeCheckResultMng', '', 4, 1, 'CodeCheckResultAdd', '', 'sys:codeCheck:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1302490000092598277', '修改', 'CodeCheckResultMng', '', 4, 1, 'CodeCheckResultUpdate', '', 'sys:codeCheck:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1302490000092598278', '删除', 'CodeCheckResultMng', '', 4, 1, 'CodeCheckResultDelete', '', 'sys:codeCheck:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1673160274368380930', 'DemoApp演示', '1111', '', 2, 1, 'DemoAppMng', 'demoapp/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1673160274368380931', '列表', 'DemoAppMng', '', 4, 1, 'DemoAppList', '', 'app:demoapp:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1673160274368380932', '新增', 'DemoAppMng', '', 4, 1, 'DemoAppAdd', '', 'app:demoapp:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1673160274368380933', '修改', 'DemoAppMng', '', 4, 1, 'DemoAppUpdate', '', 'app:demoapp:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1673160274368380934', '删除', 'DemoAppMng', '', 4, 1, 'DemoAppDelete', '', 'app:demoapp:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1673488816138469378', '客户系统管理', '1673504017743192065', '', 2, 1, 'TbCustomerMng', 'tb_customer/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1673488816138469379', '列表', 'TbCustomerMng', '', 4, 1, 'TbCustomerList', '', 'app:tb_customer:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1673488816138469380', '新增', 'TbCustomerMng', '', 4, 1, 'TbCustomerAdd', '', 'app:tb_customer:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1673488816138469381', '修改', 'TbCustomerMng', '', 4, 1, 'TbCustomerUpdate', '', 'app:tb_customer:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1673488816138469382', '删除', 'TbCustomerMng', '', 4, 1, 'TbCustomerDelete', '', 'app:tb_customer:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1673504017743192066', '客户管理', '', 'layui-icon-username', 1, 10, '1673504017743192065', '', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674210623416619010', '联系人走访管理', '1673504017743192065', '', 2, 1, 'TbVisitMng', 'customervisitapp/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674210623416619011', '列表', 'TbVisitMng', '', 4, 1, 'TbVisitList', '', 'app:customervisitapp:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1674210623416619012', '新增', 'TbVisitMng', '', 4, 1, 'TbVisitAdd', '', 'app:customervisitapp:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1674210623416619013', '修改', 'TbVisitMng', '', 4, 1, 'TbVisitUpdate', '', 'app:customervisitapp:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1674210623416619014', '删除', 'TbVisitMng', '', 4, 1, 'TbVisitDelete', '', 'app:customervisitapp:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1674220537305702401', '客户合同管理', '1673504017743192065', '', 2, 1, 'TbContractMng', 'tb_contract/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674220537305702402', '列表', 'TbContractMng', '', 4, 1, 'TbContractList', '', 'app:tb_contract:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1674220537305702403', '新增', 'TbContractMng', '', 4, 1, 'TbContractAdd', '', 'app:tb_contract:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1674220537305702404', '修改', 'TbContractMng', '', 4, 1, 'TbContractUpdate', '', 'app:tb_contract:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1674220537305702405', '删除', 'TbContractMng', '', 4, 1, 'TbContractDelete', '', 'app:tb_contract:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1674221464096931842', '订货单功能', '1673504017743192065', '', 2, 1, 'TbOrderInfoMng', 'tborderinfo/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674221464096931843', '列表', 'TbOrderInfoMng', '', 4, 1, 'TbOrderInfoList', '', 'app:tborderinfo:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1674221464096931844', '新增', 'TbOrderInfoMng', '', 4, 1, 'TbOrderInfoAdd', '', 'app:tborderinfo:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1674221464096931845', '修改', 'TbOrderInfoMng', '', 4, 1, 'TbOrderInfoUpdate', '', 'app:tborderinfo:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1674221464096931846', '删除', 'TbOrderInfoMng', '', 4, 1, 'TbOrderInfoDelete', '', 'app:tborderinfo:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1674225328959709185', '客户人联系人管理', '1673504017743192065', '', 2, 1, 'TbCustLinkmanMng', 'linkmanApp/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674225328959709186', '列表', 'TbCustLinkmanMng', '', 4, 1, 'TbCustLinkmanList', '', 'app:linkmanApp:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1674225328959709187', '新增', 'TbCustLinkmanMng', '', 4, 1, 'TbCustLinkmanAdd', '', 'app:linkmanApp:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1674225328959709188', '修改', 'TbCustLinkmanMng', '', 4, 1, 'TbCustLinkmanUpdate', '', 'app:linkmanApp:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1674225328959709189', '删除', 'TbCustLinkmanMng', '', 4, 1, 'TbCustLinkmanDelete', '', 'app:linkmanApp:delete', 0);
INSERT INTO `sys_menu_info` VALUES ('1674312469433835521', '通知消息', '1673504017743192065', '', 2, 1, 'SystemMessageMng', 'sysMessageInfo/list.html', '', 0);
INSERT INTO `sys_menu_info` VALUES ('1674312469433835522', '列表', 'SystemMessageMng', '', 4, 1, 'SystemMessageList', '', 'app:sysMessageInfo:list', 0);
INSERT INTO `sys_menu_info` VALUES ('1674312469433835523', '新增', 'SystemMessageMng', '', 4, 1, 'SystemMessageAdd', '', 'app:sysMessageInfo:add', 0);
INSERT INTO `sys_menu_info` VALUES ('1674312469433835524', '修改', 'SystemMessageMng', '', 4, 1, 'SystemMessageUpdate', '', 'app:sysMessageInfo:update', 0);
INSERT INTO `sys_menu_info` VALUES ('1674312469433835525', '删除', 'SystemMessageMng', '', 4, 1, 'SystemMessageDelete', '', 'app:sysMessageInfo:delete', 0);

-- ----------------------------
-- Table structure for sys_role_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_info`;
CREATE TABLE `sys_role_info`  (
  `ROLE_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '上级角色',
  `BUSINESS_LEVEL` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '业务层级',
  `NUMBER_LEVEL` int NULL DEFAULT 2,
  `ROLE_NAME` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色描述',
  `ROLE_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色编码',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DISABLE` int NOT NULL DEFAULT 1 COMMENT '状态. 1代表正常. 0代表已删除',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_info
-- ----------------------------
INSERT INTO `sys_role_info` VALUES ('1111', '0000', '1111:', 1, '超级管理员', '拥有全部权限', 'admin', '2020-01-19 11:16:48', 0);
INSERT INTO `sys_role_info` VALUES ('1218567428905160705', '1111', '1111:1218567428905160706:', 2, '系统管理员', 'system-admin', 'system-admin', '2020-01-18 08:14:50', 0);
INSERT INTO `sys_role_info` VALUES ('1218567729141829633', '1111', '1111:1218567729141829633:', 2, '报表管理员', 'pro-admin', 'pro-admin', '2022-06-17 01:14:21', 0);
INSERT INTO `sys_role_info` VALUES ('1218567872230510594', '1218567729141829633', '1111:1218567729141829633:1218567872230510595:', 3, '用户组长', '用户组长', '用户组长', '2020-01-18 08:16:35', 0);
INSERT INTO `sys_role_info` VALUES ('1218567931940622337', '1218567729141829633', '1111:1218567729141829633:1218567931940622337:', 3, '报表组长', '报表组长', '报表组长', '2020-01-23 20:21:14', 0);
INSERT INTO `sys_role_info` VALUES ('1218717746478055426', '1218567428905160705', '1111:1218567428905160706:1218717746478055426:', 3, '管理员添加', '管理员添加管理员添加22', 'admin-add', '2020-01-19 10:12:29', 0);
INSERT INTO `sys_role_info` VALUES ('1224918778421837825', '1218567428905160705', '1111:1218567428905160706:1224918778421837826:', 3, '11', '11', '11', '2020-07-28 09:12:11', 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `ROLE_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '角色id',
  `MENU_CODE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '菜单id'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'line');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'file');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '12');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '222');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '1123');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '4444');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', '123');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'list');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'test');
INSERT INTO `sys_role_menu` VALUES ('1218567428905160705', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'line');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'file');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '12');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '222');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '1123');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '4444');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', '123');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'list');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'test');
INSERT INTO `sys_role_menu` VALUES ('1218567872230510594', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '12');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '222');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '1123');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '4444');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '123');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'list');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'test');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'file');
INSERT INTO `sys_role_menu` VALUES ('1111', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1111', 'line');
INSERT INTO `sys_role_menu` VALUES ('1111', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'file');
INSERT INTO `sys_role_menu` VALUES ('1111', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1111', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1111', '12');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1111', '1111');
INSERT INTO `sys_role_menu` VALUES ('1111', '222');
INSERT INTO `sys_role_menu` VALUES ('1111', '1123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', '4444');
INSERT INTO `sys_role_menu` VALUES ('1111', '123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'list');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1111', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1111', 'line');
INSERT INTO `sys_role_menu` VALUES ('1111', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'file');
INSERT INTO `sys_role_menu` VALUES ('1111', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1111', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1111', '12');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1111', '1111');
INSERT INTO `sys_role_menu` VALUES ('1111', '222');
INSERT INTO `sys_role_menu` VALUES ('1111', '1123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', '4444');
INSERT INTO `sys_role_menu` VALUES ('1111', '123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'list');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', '222');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218717746478055426', '222');
INSERT INTO `sys_role_menu` VALUES ('1111', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1111', 'line');
INSERT INTO `sys_role_menu` VALUES ('1111', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1111', 'configRecover');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1111', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'file');
INSERT INTO `sys_role_menu` VALUES ('1111', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1111', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1111', '12');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1111', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1111', '1111');
INSERT INTO `sys_role_menu` VALUES ('1111', '222');
INSERT INTO `sys_role_menu` VALUES ('1111', '1123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1111', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1111', '4444');
INSERT INTO `sys_role_menu` VALUES ('1111', '123');
INSERT INTO `sys_role_menu` VALUES ('1111', 'list');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test');
INSERT INTO `sys_role_menu` VALUES ('1111', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '12');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'testCase');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'testCase/list');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '222');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '1123');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '4444');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', '123');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'list');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'test');
INSERT INTO `sys_role_menu` VALUES ('1218567931940622337', 'test2');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'echarts');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'line');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'bar');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'sysMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userReset');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userResetPassword');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userImport');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'userExport');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'roleMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'roleAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'roleUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'roleList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'roleDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'menuMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'menuDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'menuList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'menuAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'menuUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDict');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dictList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictImport');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictExport');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'dataDictRecovery');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'configRecovery');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptRecovery');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'deptList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'systemTool');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'file');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'genaratorCode');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'FilesMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'FilesList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'FilesAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'FilesUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'FilesDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', '1111');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'treeCheckMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'testMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'testTree');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'demoMng');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'demoAdd');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'demoList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'demoUpdate');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'demoDelete');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', '1123');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'sysLog');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'operationLogList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'loginLog');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'loginLogList');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', '4444');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', '123');
INSERT INTO `sys_role_menu` VALUES ('1224918778421837825', 'list');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', '1111');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'treeCheckMng');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'testTree');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'testMng');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'demoMng');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'demoDelete');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'demoUpdate');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'demoList');
INSERT INTO `sys_role_menu` VALUES ('1218567729141829633', 'demoAdd');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `USER_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `DEPT_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`USER_ID`, `DEPT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info`  (
  `USER_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `USERNAME` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `PASSWORD` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `OLD_PASSWORD` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '旧密码',
  `NICK_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `PHONE` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '电话号码',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '最近更新时间',
  `EMAIL` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `DISABLE` int NOT NULL DEFAULT 0 COMMENT '1正常,0删除',
  `LOGIN_STATUS` int NOT NULL DEFAULT 0 COMMENT '登录状态。1允许登录。0禁用登录',
  `CREATE_USER_ID` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '创建人ID',
  `DELETE_TIME` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `LOGIN_TIME` datetime NULL DEFAULT NULL COMMENT '最近登录时间',
  `DEPT_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  `REMARK` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE,
  UNIQUE INDEX `UQE_TB_USER_INFO_USERNAME`(`USERNAME`) USING BTREE,
  UNIQUE INDEX `IDX_TB_USER_INFO_MOBILE`(`PHONE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_info
-- ----------------------------
INSERT INTO `sys_user_info` VALUES ('1115864230968729601', 'root', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', 'root', '13000001111', '2019-04-08 22:25:44', '2022-06-17 01:13:48', 'root@163.com', 0, 0, '', '2019-09-20 08:23:59', '2022-06-17 01:13:27', '1325121829601280001', NULL);
INSERT INTO `sys_user_info` VALUES ('1115864462813077506', 'admin', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', 'admin', '13000001112', '2019-02-20 08:26:39', '2019-08-02 11:26:17', 'admin@163.com', 0, 0, '', '2019-08-03 17:18:27', '2023-06-30 15:14:22', 'OR1200000703', NULL);
INSERT INTO `sys_user_info` VALUES ('1138460331855884289', 'chensy', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', 'easternUnbeaten', '13000001113', '2019-06-11 06:57:50', '2020-11-07 17:12:47', 'chensy@qq.com', 0, 0, '1115864462813077506', '2019-09-21 16:23:59', '2020-02-05 14:55:11', '1325123334769213441', NULL);
INSERT INTO `sys_user_info` VALUES ('1138463107453333505', 'bubai', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '不败', '13800000000', '2019-06-11 15:08:52', '2020-11-07 17:13:20', '138@qq.com', 0, 0, '1115864462813077506', '2019-09-22 00:23:59', NULL, '1325122003077693442', NULL);
INSERT INTO `sys_user_info` VALUES ('1138463481715273730', 'dongfang', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '东方大佬', '13400002222', '2019-06-11 15:10:21', '2020-11-07 17:14:12', '134@qq.com', 0, 0, '1115864462813077506', '2019-09-22 00:23:59', NULL, '1325123225058803713', NULL);
INSERT INTO `sys_user_info` VALUES ('1138465382401953793', 'user-1', '98124e2a4b96dc88ba01d49345f62a07', '11111111', '用户调试', '13522220000', '2019-06-11 15:17:54', '2020-11-07 17:13:50', '135@qq.com', 0, 0, '1115864462813077506', '2019-09-22 00:23:31', NULL, '1325123334769213441', NULL);
INSERT INTO `sys_user_info` VALUES ('1147850266972839937', 'zhouliufu', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '周六福', '13300001111', '2019-07-05 12:50:04', '2022-06-17 01:14:10', '13300001111@qq.com', 0, 0, '', '2019-09-20 00:23:31', '2022-06-17 01:14:29', '1325121829601280001', NULL);
INSERT INTO `sys_user_info` VALUES ('1157842323041148930', 'zhangsan', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '张三', '13000001114', '2019-08-04 10:34:56', '2020-11-07 17:13:32', 'xx@163.com', 0, 0, '1115864462813077506', '2019-09-22 00:23:31', NULL, '1325122003077693442', NULL);
INSERT INTO `sys_user_info` VALUES ('1157842678214811649', 'lisi', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '李四', '13000001115', '2019-08-04 10:36:20', '2020-11-07 17:13:02', 'xxx@162.com', 0, 0, '1115864462813077506', '2020-02-05 13:21:19', NULL, '1325122003077693442', NULL);
INSERT INTO `sys_user_info` VALUES ('1176673562082635778', 'wangwu', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '王五', '13000001116', '2019-09-25 01:43:33', '2020-02-06 13:30:34', '631887790@qq.com', 0, 0, '1115864462813077506', NULL, NULL, 'OR1200000387', NULL);
INSERT INTO `sys_user_info` VALUES ('1189475248153251842', 'zhaoliu', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '赵六', '13000001117', '2019-10-30 09:32:56', '2020-11-07 17:14:02', '21312@qq.com', 0, 0, '1115864462813077506', '2020-02-05 14:49:26', '2019-10-30 17:33:14', '1325123334769213441', NULL);
INSERT INTO `sys_user_info` VALUES ('1227877059054125057', 'niuhuanxi', '98124e2a4b96dc88ba01d49345f62a07', '98124e2a4b96dc88ba01d49345f62a07', '牛欢喜', '13000001118', '2020-02-13 08:47:58', '2020-11-07 17:13:13', 'xx@11.com', 0, 0, '1115864462813077506', NULL, NULL, '1325123334769213441', NULL);

-- ----------------------------
-- Table structure for sys_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login_log`;
CREATE TABLE `sys_user_login_log`  (
  `ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '登录用户名',
  `LOGIN_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  `SUCCESS` int NOT NULL DEFAULT 1 COMMENT '是否登录成功.1代表成功。0代表失败',
  `ERROR_LOG` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '错误日志',
  `IP_ADDRESS` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'IP地址',
  `DURATION` int NOT NULL DEFAULT 0 COMMENT '执行时长(毫秒)',
  `OPERATION_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_login_log
-- ----------------------------
INSERT INTO `sys_user_login_log` VALUES ('00b0e657413e590400abba870280c9f8', 'admin', '2023-06-29 19:20:07', 1, '', '127.0.0.1', 0, '2023-06-29 19:20:07');
INSERT INTO `sys_user_login_log` VALUES ('03c77abf148e39c54b5750785c2dd5e4', 'zhouliufu', '2022-06-17 01:14:29', 1, '', '127.0.0.1', 0, '2022-06-17 01:14:29');
INSERT INTO `sys_user_login_log` VALUES ('078458b8f28a229f5e0beb267e34d63d', 'root', '2022-06-17 01:13:27', 1, '', '127.0.0.1', 0, '2022-06-17 01:13:26');
INSERT INTO `sys_user_login_log` VALUES ('095b84fd2c4a54f634c3a66f2ea4594a', 'admin', '2023-06-30 10:28:17', 1, '', '127.0.0.1', 0, '2023-06-30 10:28:16');
INSERT INTO `sys_user_login_log` VALUES ('0b38ce6eb3ffecde0fd055fe305df8d1', 'admin', '2020-08-20 09:09:57', 1, '', '127.0.0.1', 0, '2020-08-20 09:09:57');
INSERT INTO `sys_user_login_log` VALUES ('0c614dd00cd4dba535a5f5e86f36ebbc', 'admin', '2020-09-06 21:26:08', 1, '', '192.168.250.1', 0, '2020-09-07 01:26:08');
INSERT INTO `sys_user_login_log` VALUES ('0e45faaf0cfac602912de41669d033d2', 'admin', '2023-06-28 09:24:40', 1, '', '127.0.0.1', 0, '2023-06-28 09:24:40');
INSERT INTO `sys_user_login_log` VALUES ('10f513a8f32d760057467dcff90f0ab8', 'admin', '2023-06-27 05:39:19', 1, '', '127.0.0.1', 0, '2023-06-27 13:39:19');
INSERT INTO `sys_user_login_log` VALUES ('11b88e6993f57b73306f17af4be53098', 'admin', '2020-04-20 07:36:20', 1, '', '127.0.0.1', 0, '2020-04-20 07:36:05');
INSERT INTO `sys_user_login_log` VALUES ('1241897766461341698', 'admin', '2020-03-23 01:21:15', 1, '', '127.0.0.1', 0, '2020-03-23 01:21:15');
INSERT INTO `sys_user_login_log` VALUES ('1241918640572825601', 'admin', '2020-03-23 02:44:12', 1, '', '127.0.0.1', 0, '2020-03-23 02:44:12');
INSERT INTO `sys_user_login_log` VALUES ('1241929388724289538', 'admin', '2020-03-23 03:26:55', 1, '', '127.0.0.1', 0, '2020-03-23 03:26:54');
INSERT INTO `sys_user_login_log` VALUES ('1242721762421448706', 'admin', '2020-03-25 07:55:31', 1, '', '127.0.0.1', 0, '2020-03-25 07:55:31');
INSERT INTO `sys_user_login_log` VALUES ('1242750894731632641', 'admin', '2020-03-25 09:51:17', 1, '', '127.0.0.1', 0, '2020-03-25 09:51:17');
INSERT INTO `sys_user_login_log` VALUES ('1262284484041482242', 'admin', '2020-05-18 07:30:48', 1, '', '127.0.0.1', 0, '2020-05-18 07:30:47');
INSERT INTO `sys_user_login_log` VALUES ('1291f532e656d556c48ca66e7fd847c5', 'admin', '2023-06-28 08:23:49', 1, '', '127.0.0.1', 0, '2023-06-28 08:23:48');
INSERT INTO `sys_user_login_log` VALUES ('133b0c0c1d0d179dc4a63d754c9f705d', 'admin', '2020-10-24 03:55:00', 1, '', '127.0.0.1', 0, '2020-10-24 03:54:59');
INSERT INTO `sys_user_login_log` VALUES ('13803c245fd54b47022f8a6b4a1b0be5', 'admin', '2020-10-24 03:46:54', 1, '', '127.0.0.1', 0, '2020-10-24 03:46:54');
INSERT INTO `sys_user_login_log` VALUES ('1604493401fd699d1ad2aee3c00ff2b9', 'admin', '2020-05-08 09:08:08', 1, '', '127.0.0.1', 0, '2020-05-08 09:08:07');
INSERT INTO `sys_user_login_log` VALUES ('175ffb94fc62a9fcd399db59698f1e87', 'admin', '2023-06-29 13:33:18', 1, '', '127.0.0.1', 0, '2023-06-29 13:33:17');
INSERT INTO `sys_user_login_log` VALUES ('19ab29664168773692159091e4bc04bc', 'admin', '2020-04-21 02:45:42', 1, '', '127.0.0.1', 0, '2020-04-21 02:45:42');
INSERT INTO `sys_user_login_log` VALUES ('1a648f9f29daddfdef342424972f15ff', 'admin', '2020-09-02 06:59:34', 1, '', '127.0.0.1', 0, '2020-09-02 06:59:33');
INSERT INTO `sys_user_login_log` VALUES ('1be7066022af6a7119980d57634b97d8', 'admin', '2020-03-21 06:43:28', 1, '', '127.0.0.1', 0, '2020-03-21 06:43:34');
INSERT INTO `sys_user_login_log` VALUES ('1c95c980c87e99576305605894e77bfb', 'admin', '2020-05-08 03:51:59', 1, '', '127.0.0.1', 0, '2020-05-08 03:51:59');
INSERT INTO `sys_user_login_log` VALUES ('202f55de7261090fee20b28a407f05b3', 'admin', '2023-06-30 13:40:00', 1, '', '127.0.0.1', 0, '2023-06-30 13:39:59');
INSERT INTO `sys_user_login_log` VALUES ('20511f02e26df9a8968ca0f2ae7dda9e', 'admin', '2020-09-06 04:55:03', 1, '', '127.0.0.1', 0, '2020-09-06 04:55:03');
INSERT INTO `sys_user_login_log` VALUES ('235fab0a9027aa49468fb7472eb9243c', 'admin', '2020-09-02 07:50:56', 1, '', '127.0.0.1', 0, '2020-09-02 07:50:56');
INSERT INTO `sys_user_login_log` VALUES ('2576abb97ee62fe43393420dc7a89478', 'admin', '2020-04-07 08:25:52', 1, '', '127.0.0.1', 0, '2020-04-07 08:25:51');
INSERT INTO `sys_user_login_log` VALUES ('26db8796c813b724802a497a2d715a48', 'admin', '2022-06-16 06:42:42', 1, '', '127.0.0.1', 0, '2022-06-16 14:42:42');
INSERT INTO `sys_user_login_log` VALUES ('2963b24f3476206498254911f8d20178', 'admin', '2020-04-21 10:07:40', 1, '', '127.0.0.1', 0, '2020-04-21 10:07:40');
INSERT INTO `sys_user_login_log` VALUES ('29ddcef8d4d8b07ab93d68eda72714b5', 'admin', '2020-07-29 07:10:42', 1, '', '127.0.0.1', 0, '2020-07-29 07:10:42');
INSERT INTO `sys_user_login_log` VALUES ('2a42c408a4f95e0f3d452edf291b5a41', 'admin', '2023-06-26 06:20:24', 1, '', '127.0.0.1', 0, '2023-06-26 14:20:23');
INSERT INTO `sys_user_login_log` VALUES ('2bccaddc1d5b4a2c0add5f619a128f9a', 'admin', '2020-04-29 14:48:26', 1, '', '127.0.0.1', 0, '2020-04-29 14:48:31');
INSERT INTO `sys_user_login_log` VALUES ('2c1c188e2c00c48bf7ae78e5e9c5f108', 'admin', '2022-06-16 18:12:36', 1, '', '127.0.0.1', 0, '2022-06-17 02:12:35');
INSERT INTO `sys_user_login_log` VALUES ('2c9010ac183e2873133c978bb363259d', 'admin', '2020-08-12 01:50:57', 1, '', '127.0.0.1', 0, '2020-08-12 01:50:57');
INSERT INTO `sys_user_login_log` VALUES ('3093f95caf14ae9e387abc245571be7e', 'admin', '2020-04-17 08:51:19', 1, '', '127.0.0.1', 0, '2020-04-17 08:51:19');
INSERT INTO `sys_user_login_log` VALUES ('30b1ddcf529e717c727a8626c691a8a4', 'admin', '2020-04-24 01:16:34', 1, '', '127.0.0.1', 0, '2020-04-24 01:16:34');
INSERT INTO `sys_user_login_log` VALUES ('314ec3f29616e573b6b1831623ac913b', 'admin', '2023-06-30 13:40:14', 1, '', '127.0.0.1', 0, '2023-06-30 13:40:14');
INSERT INTO `sys_user_login_log` VALUES ('321165bcfc373ed925c4323acd9f5f32', 'admin', '2020-07-27 07:56:17', 1, '', '127.0.0.1', 0, '2020-07-27 07:56:16');
INSERT INTO `sys_user_login_log` VALUES ('32d93bbd924b905d87e24af12a2802b8', 'admin', '2020-03-23 05:25:51', 1, '', '127.0.0.1', 0, '2020-03-23 05:25:51');
INSERT INTO `sys_user_login_log` VALUES ('3467d01d3ac58a2728615b45eea0a83a', 'admin', '2023-06-29 08:21:19', 1, '', '127.0.0.1', 0, '2023-06-29 08:21:18');
INSERT INTO `sys_user_login_log` VALUES ('352f8bf9ca8b3015d7cd75f9d096c7b1', 'admin', '2020-08-31 02:52:45', 1, '', '127.0.0.1', 0, '2020-08-31 02:52:44');
INSERT INTO `sys_user_login_log` VALUES ('35726b6c1b571e3e3138378edbabd3b1', 'admin', '2023-06-30 13:40:33', 1, '', '127.0.0.1', 0, '2023-06-30 13:40:32');
INSERT INTO `sys_user_login_log` VALUES ('3a670d19cf7ca19d420f6edb1b167fb0', 'admin', '2023-06-29 17:47:11', 1, '', '127.0.0.1', 0, '2023-06-29 17:47:11');
INSERT INTO `sys_user_login_log` VALUES ('3afdba1e4f939f29685f0bac0c3a4e40', 'admin', '2020-10-24 03:51:27', 1, '', '127.0.0.1', 0, '2020-10-24 03:51:26');
INSERT INTO `sys_user_login_log` VALUES ('3d2707f02e1e400ce0c6df10a8ce4b06', 'admin', '2020-10-24 03:56:50', 1, '', '127.0.0.1', 0, '2020-10-24 03:56:49');
INSERT INTO `sys_user_login_log` VALUES ('3da0c82b5f594f540b7d0bba5dfef2a8', 'admin', '2023-06-27 22:49:35', 1, '', '127.0.0.1', 0, '2023-06-27 22:49:34');
INSERT INTO `sys_user_login_log` VALUES ('3e6177e3e22ef9f9cdea90012a8767e7', 'admin', '2020-04-17 07:38:00', 1, '', '127.0.0.1', 0, '2020-04-17 07:37:59');
INSERT INTO `sys_user_login_log` VALUES ('3e66e8786b88207b05e82acbfc84c193', 'admin', '2020-07-28 09:01:25', 1, '', '127.0.0.1', 0, '2020-07-28 09:01:26');
INSERT INTO `sys_user_login_log` VALUES ('3f5985fc4585cc599cbebc968156cb11', 'admin', '2020-08-01 06:07:17', 1, '', '127.0.0.1', 0, '2020-08-01 06:07:18');
INSERT INTO `sys_user_login_log` VALUES ('404b49bd333e5028cc3b499e8b8e15cd', 'admin', '2020-05-06 15:13:13', 1, '', '127.0.0.1', 0, '2020-05-06 15:13:15');
INSERT INTO `sys_user_login_log` VALUES ('4171fc43b69c37c5962c98775587b591', 'admin', '2022-06-15 05:39:52', 1, '', '127.0.0.1', 0, '2022-06-15 13:39:52');
INSERT INTO `sys_user_login_log` VALUES ('42ce75e867c4ad183c286b886aafd61c', 'admin', '2020-09-06 22:00:59', 1, '', '127.0.0.1', 0, '2020-09-06 14:00:59');
INSERT INTO `sys_user_login_log` VALUES ('44fb4db32a5ecbb8450682a54fc29387', 'admin', '2020-07-30 06:56:54', 1, '', '127.0.0.1', 0, '2020-07-30 06:56:54');
INSERT INTO `sys_user_login_log` VALUES ('460c124d4f42303ac6a52e847d65f3e0', 'admin', '2020-08-01 06:45:18', 1, '', '127.0.0.1', 0, '2020-08-01 06:45:19');
INSERT INTO `sys_user_login_log` VALUES ('4676ba322f0e4a91505841ff44c7bda4', 'admin', '2023-06-28 20:34:22', 1, '', '127.0.0.1', 0, '2023-06-28 20:34:21');
INSERT INTO `sys_user_login_log` VALUES ('46d2a7a162c766ff94df91c4a4c12c38', 'root', '2022-06-17 01:13:17', 1, '', '127.0.0.1', 0, '2022-06-17 01:13:16');
INSERT INTO `sys_user_login_log` VALUES ('48ac263811fab66864998788e60f0951', 'admin', '2020-09-07 09:27:38', 1, '', '127.0.0.1', 0, '2020-09-07 01:27:38');
INSERT INTO `sys_user_login_log` VALUES ('4afcbbf4588cbc64ab374e905823d2b9', 'admin', '2023-06-27 00:41:55', 1, '', '127.0.0.1', 0, '2023-06-27 08:41:55');
INSERT INTO `sys_user_login_log` VALUES ('4bd9897e414e82d0f4816d8a63a6e1d0', 'admin', '2020-05-07 10:00:58', 1, '', '127.0.0.1', 0, '2020-05-07 10:00:58');
INSERT INTO `sys_user_login_log` VALUES ('4e3b6c195a58890ccd6ab33d7fbf6d0c', 'admin', '2020-09-08 16:16:18', 1, '', '127.0.0.1', 0, '2020-09-08 08:16:18');
INSERT INTO `sys_user_login_log` VALUES ('4ed32a9cfee72ac6f74a1fd50607fec7', 'admin', '2023-06-30 08:07:54', 1, '', '127.0.0.1', 0, '2023-06-30 08:07:54');
INSERT INTO `sys_user_login_log` VALUES ('50767ff0c6d0a08551aad443bb611e27', 'admin', '2020-07-26 08:57:41', 1, '', '127.0.0.1', 0, '2020-07-26 08:57:41');
INSERT INTO `sys_user_login_log` VALUES ('51ed50ed83c892224da63e4784b35bb9', 'admin', '2020-09-05 08:56:47', 1, '', '127.0.0.1', 0, '2020-09-05 08:56:47');
INSERT INTO `sys_user_login_log` VALUES ('52c6858460314762618dc8b2b128a18e', 'admin', '2020-04-07 07:01:08', 1, '', '127.0.0.1', 0, '2020-04-07 07:01:08');
INSERT INTO `sys_user_login_log` VALUES ('5311f984946c23fc709985d359fa6b14', 'admin', '2020-11-07 16:58:12', 1, '', '127.0.0.1', 0, '2020-11-07 16:55:56');
INSERT INTO `sys_user_login_log` VALUES ('540008acb0398421c265abd79766a9f4', 'admin', '2023-06-30 13:11:14', 1, '', '127.0.0.1', 0, '2023-06-30 13:11:14');
INSERT INTO `sys_user_login_log` VALUES ('546cf5cd8589e8f4846435a568736ce4', 'admin', '2023-06-29 17:46:55', 1, '', '127.0.0.1', 0, '2023-06-29 17:46:54');
INSERT INTO `sys_user_login_log` VALUES ('582f29f7fa8b65ae363f01cdca493b37', 'admin', '2022-06-16 06:43:13', 1, '', '127.0.0.1', 0, '2022-06-16 14:43:13');
INSERT INTO `sys_user_login_log` VALUES ('5846fe8467cd49471d0a86940c0e87fc', 'admin', '2020-05-14 03:09:37', 1, '', '127.0.0.1', 0, '2020-05-14 03:09:37');
INSERT INTO `sys_user_login_log` VALUES ('5966fb1e9432a6751dc91dc6458c499a', 'admin', '2020-04-09 02:51:36', 1, '', '127.0.0.1', 0, '2020-04-09 02:51:36');
INSERT INTO `sys_user_login_log` VALUES ('5a52b41e4d646e447f7236c5d2ccf5e0', 'admin', '2020-04-21 03:42:31', 1, '', '127.0.0.1', 0, '2020-04-21 03:42:30');
INSERT INTO `sys_user_login_log` VALUES ('5c414f959c11318c5eaa3a9b936cc9ca', 'admin', '2022-06-16 08:44:49', 1, '', '127.0.0.1', 0, '2022-06-16 16:44:48');
INSERT INTO `sys_user_login_log` VALUES ('5cc4d21b3e7595f941e501ade5754111', 'admin', '2020-09-06 13:20:23', 1, '', '127.0.0.1', 0, '2020-09-06 13:20:23');
INSERT INTO `sys_user_login_log` VALUES ('5d140d1c9274583b2e514a61a1dd6d52', 'admin', '2023-06-29 19:52:08', 1, '', '127.0.0.1', 0, '2023-06-29 19:52:08');
INSERT INTO `sys_user_login_log` VALUES ('5e3936847b6ec75c968ec7c34c67c7a1', 'admin', '2020-04-17 02:18:02', 1, '', '127.0.0.1', 0, '2020-04-17 02:18:02');
INSERT INTO `sys_user_login_log` VALUES ('5e7de60198e14e03436cbaf37dc602b8', 'admin', '2020-09-06 10:19:08', 1, '', '127.0.0.1', 0, '2020-09-06 10:19:07');
INSERT INTO `sys_user_login_log` VALUES ('5f7928a91afbc7658e9b71dc58fd79db', 'admin', '2020-05-07 09:03:38', 1, '', '127.0.0.1', 0, '2020-05-07 09:03:38');
INSERT INTO `sys_user_login_log` VALUES ('62534e921bce6cbfc9449898ca1a5aab', 'admin', '2020-05-23 05:36:16', 1, '', '127.0.0.1', 0, '2020-05-23 05:36:16');
INSERT INTO `sys_user_login_log` VALUES ('628e25131485e70bc9b4a833d01b8dbc', 'admin', '2020-07-27 07:26:03', 1, '', '127.0.0.1', 0, '2020-07-27 07:26:03');
INSERT INTO `sys_user_login_log` VALUES ('640654200f548f10de7fe9c9282307dc', 'admin', '2020-04-21 10:06:48', 1, '', '127.0.0.1', 0, '2020-04-21 10:06:47');
INSERT INTO `sys_user_login_log` VALUES ('64f85b5819dd33d03bee771f15eb48f2', 'admin', '2020-09-02 07:45:11', 1, '', '127.0.0.1', 0, '2020-09-02 07:45:12');
INSERT INTO `sys_user_login_log` VALUES ('65aa3d22caa252cbcec7f3e6806bbbf9', 'admin', '2020-05-09 01:20:31', 1, '', '127.0.0.1', 0, '2020-05-09 01:20:30');
INSERT INTO `sys_user_login_log` VALUES ('65e6a474a1528c4a3989dc88a1680e6f', 'admin', '2020-09-05 08:57:08', 1, '', '127.0.0.1', 0, '2020-09-05 08:57:07');
INSERT INTO `sys_user_login_log` VALUES ('68557770e2333f28a33e24ba73dd342f', 'admin', '2020-04-21 07:30:57', 1, '', '127.0.0.1', 0, '2020-04-21 07:30:40');
INSERT INTO `sys_user_login_log` VALUES ('6872cd557d2cb1477d20dbe52ba7f6d9', 'admin', '2023-06-30 08:03:41', 1, '', '127.0.0.1', 0, '2023-06-30 08:03:40');
INSERT INTO `sys_user_login_log` VALUES ('6a649c5394ef75145b4f6b9eb0c108e8', 'admin', '2020-04-07 10:02:03', 1, '', '127.0.0.1', 0, '2020-04-07 10:02:02');
INSERT INTO `sys_user_login_log` VALUES ('6bc9571bc7cd222c6b315fcf557b9053', 'admin', '2022-06-15 17:40:34', 1, '', '127.0.0.1', 0, '2022-06-16 01:40:34');
INSERT INTO `sys_user_login_log` VALUES ('6bdade3506fc942fd6e643f13fee3851', 'admin', '2020-04-20 01:22:42', 1, '', '127.0.0.1', 0, '2020-04-20 01:22:42');
INSERT INTO `sys_user_login_log` VALUES ('6f87e712c12bad502363a9a13fcb7a3e', 'admin', '2022-06-17 00:48:38', 1, '', '127.0.0.1', 0, '2022-06-17 08:48:38');
INSERT INTO `sys_user_login_log` VALUES ('6fb9187754ec5a98f648c28d0d2bbbef', 'admin', '2023-06-30 14:27:43', 1, '', '127.0.0.1', 0, '2023-06-30 14:27:42');
INSERT INTO `sys_user_login_log` VALUES ('72596256fb039c1e8a89a0ef87dd611d', 'admin', '2020-09-03 06:47:21', 1, '', '127.0.0.1', 0, '2020-09-03 06:47:21');
INSERT INTO `sys_user_login_log` VALUES ('74cf95a0297b8da6112485af55b68e78', 'admin', '2020-05-11 07:50:59', 1, '', '127.0.0.1', 0, '2020-05-11 07:50:58');
INSERT INTO `sys_user_login_log` VALUES ('7651a8ee2aa6c76aac235e5194cdd870', 'admin', '2020-04-20 07:30:18', 1, '', '127.0.0.1', 0, '2020-04-20 07:30:03');
INSERT INTO `sys_user_login_log` VALUES ('768609a853d15b1deae1e2384313fa49', 'admin', '2023-06-29 16:08:00', 1, '', '127.0.0.1', 0, '2023-06-29 16:08:00');
INSERT INTO `sys_user_login_log` VALUES ('769bccd762ac9bf786fe33c0635b3e9a', 'admin', '2020-03-22 13:13:17', 1, '', '127.0.0.1', 0, '2020-03-22 13:13:16');
INSERT INTO `sys_user_login_log` VALUES ('78bf811558a7cb71358ada3d49823838', 'admin', '2020-09-05 08:56:23', 1, '', '127.0.0.1', 0, '2020-09-05 08:56:23');
INSERT INTO `sys_user_login_log` VALUES ('78f3c0cfb57b829caf8bcf91e96d5d83', 'admin', '2023-06-28 16:32:37', 1, '', '127.0.0.1', 0, '2023-06-28 16:32:37');
INSERT INTO `sys_user_login_log` VALUES ('7b703b37b657156c4f4d3c3d49b019c3', 'admin', '2022-06-15 09:26:24', 1, '', '127.0.0.1', 0, '2022-06-15 17:26:24');
INSERT INTO `sys_user_login_log` VALUES ('7dee41fc9e93113a3edd9d3befd3491b', 'admin', '2023-06-27 01:29:47', 1, '', '127.0.0.1', 0, '2023-06-27 09:29:46');
INSERT INTO `sys_user_login_log` VALUES ('7df37b2c7c283daa2f8eecd1d0d20762', 'admin', '2020-09-03 01:47:42', 1, '', '127.0.0.1', 0, '2020-09-03 01:47:42');
INSERT INTO `sys_user_login_log` VALUES ('7ec07d38ff03d8277010f82a57885e02', 'admin', '2023-06-29 09:01:14', 1, '', '127.0.0.1', 0, '2023-06-29 09:01:14');
INSERT INTO `sys_user_login_log` VALUES ('7f5793f81ee0912f0863f80fbb6871b1', 'admin', '2022-06-16 08:44:17', 1, '', '127.0.0.1', 0, '2022-06-16 16:44:17');
INSERT INTO `sys_user_login_log` VALUES ('81a46293cac640f8ec95c49300c24ba8', 'admin', '2020-08-31 02:48:34', 1, '', '127.0.0.1', 0, '2020-08-31 02:48:34');
INSERT INTO `sys_user_login_log` VALUES ('82a1bb62d96f4e01c13a747a2be963a8', 'admin', '2020-04-29 07:18:57', 1, '', '127.0.0.1', 0, '2020-04-29 07:10:16');
INSERT INTO `sys_user_login_log` VALUES ('833a04d0705b8671af7ce267a05c86c8', 'admin', '2020-05-07 05:37:13', 1, '', '127.0.0.1', 0, '2020-05-07 05:37:12');
INSERT INTO `sys_user_login_log` VALUES ('858ce06cea609413103d10b7b6422d80', 'admin', '2023-06-30 13:40:26', 1, '', '127.0.0.1', 0, '2023-06-30 13:40:25');
INSERT INTO `sys_user_login_log` VALUES ('85aa6f085d837d6b62b2f600127f4a62', 'admin', '2020-04-03 14:23:34', 1, '', '127.0.0.1', 0, '2020-04-03 14:23:34');
INSERT INTO `sys_user_login_log` VALUES ('8729197c64f13504200c81a0fedc818b', 'admin', '2020-10-24 03:51:35', 1, '', '127.0.0.1', 0, '2020-10-24 03:51:34');
INSERT INTO `sys_user_login_log` VALUES ('892c50159a68f1c3cc5890304c27c313', 'admin', '2020-05-07 04:32:22', 1, '', '127.0.0.1', 0, '2020-05-07 04:32:21');
INSERT INTO `sys_user_login_log` VALUES ('897ef7b0b218eef3f1185f4a40f777de', 'admin', '2022-06-16 08:46:43', 1, '', '127.0.0.1', 0, '2022-06-16 16:46:43');
INSERT INTO `sys_user_login_log` VALUES ('898b811d14e03e230061ac242e57895c', 'admin', '2023-06-27 03:05:33', 1, '', '127.0.0.1', 0, '2023-06-27 11:05:33');
INSERT INTO `sys_user_login_log` VALUES ('8af1f9c4c1918b559a8101e5631dbec9', 'admin', '2020-04-17 01:40:48', 1, '', '127.0.0.1', 0, '2020-04-17 01:40:48');
INSERT INTO `sys_user_login_log` VALUES ('8de90022605e16ebb8cb3ff3ed3967f1', 'admin', '2020-04-21 09:51:53', 1, '', '127.0.0.1', 0, '2020-04-21 09:51:53');
INSERT INTO `sys_user_login_log` VALUES ('8f1f1b973570da9257fb6d6e475453dd', 'admin', '2020-04-15 06:53:55', 1, '', '127.0.0.1', 0, '2020-04-15 06:53:55');
INSERT INTO `sys_user_login_log` VALUES ('91798532f370103fb945877ceb82ac8e', 'admin', '2020-04-21 07:38:44', 1, '', '127.0.0.1', 0, '2020-04-21 07:38:27');
INSERT INTO `sys_user_login_log` VALUES ('936da7c9ae498f4ed3c5078b2126a540', 'admin', '2020-04-21 08:29:09', 1, '', '127.0.0.1', 0, '2020-04-21 08:28:52');
INSERT INTO `sys_user_login_log` VALUES ('93fb9082712d7048cae2824ea44cc2ba', 'admin', '2020-10-27 09:01:09', 1, '', '127.0.0.1', 0, '2020-10-27 09:01:09');
INSERT INTO `sys_user_login_log` VALUES ('95da434b804c126da7d9fed67a517042', 'admin', '2020-09-07 09:35:11', 1, '', '127.0.0.1', 0, '2020-09-07 01:35:11');
INSERT INTO `sys_user_login_log` VALUES ('9654cf216af009044ac3643f01c4fe8e', 'admin', '2020-04-20 01:24:45', 1, '', '127.0.0.1', 0, '2020-04-20 01:24:30');
INSERT INTO `sys_user_login_log` VALUES ('9aad7cc58d386a89889ae9167771c834', 'admin', '2022-06-15 05:58:38', 1, '', '127.0.0.1', 0, '2022-06-15 13:58:37');
INSERT INTO `sys_user_login_log` VALUES ('9e3608b68a5c2b3530a799c5d051cc8d', 'admin', '2023-06-28 16:55:19', 1, '', '127.0.0.1', 0, '2023-06-28 16:55:18');
INSERT INTO `sys_user_login_log` VALUES ('a0c82b03ddad56822d434a26256c9649', 'admin', '2020-09-05 06:50:41', 1, '', '127.0.0.1', 0, '2020-09-05 06:50:40');
INSERT INTO `sys_user_login_log` VALUES ('a23b01632231410e7ea122c7a9b7db1d', 'admin', '2022-06-17 01:14:40', 1, '', '127.0.0.1', 0, '2022-06-17 01:14:39');
INSERT INTO `sys_user_login_log` VALUES ('a308ff88816bdc2ac85067fadb31fd12', 'admin', '2022-06-16 08:44:05', 1, '', '127.0.0.1', 0, '2022-06-16 16:44:05');
INSERT INTO `sys_user_login_log` VALUES ('a5151665cad3cc85cd172e56b3dfcb21', 'admin', '2020-07-28 08:14:18', 1, '', '127.0.0.1', 0, '2020-07-28 08:14:19');
INSERT INTO `sys_user_login_log` VALUES ('a548d57fec7e5d34af5339b82392cceb', 'admin', '2023-06-29 14:33:22', 1, '', '127.0.0.1', 0, '2023-06-29 14:33:22');
INSERT INTO `sys_user_login_log` VALUES ('a70e9e01527e28e133d2ca83bd3494a2', 'admin', '2020-03-22 14:31:20', 1, '', '127.0.0.1', 0, '2020-03-22 14:31:19');
INSERT INTO `sys_user_login_log` VALUES ('a7b90e8b4ec766b08208a8268f47bebb', 'admin', '2020-07-24 07:55:40', 1, '', '127.0.0.1', 0, '2020-07-24 07:55:40');
INSERT INTO `sys_user_login_log` VALUES ('a801e04054ab9741e588c3fb7e69e83e', 'admin', '2020-04-17 03:48:58', 1, '', '127.0.0.1', 0, '2020-04-17 03:48:57');
INSERT INTO `sys_user_login_log` VALUES ('a81b79189ae656ebf7d20d89c8041628', 'admin', '2020-05-14 10:38:15', 1, '', '127.0.0.1', 0, '2020-05-14 10:38:15');
INSERT INTO `sys_user_login_log` VALUES ('a8dbc37e1a5e853e4fe1ad5021ff0625', 'admin', '2023-06-30 15:14:22', 1, '', '127.0.0.1', 0, '2023-06-30 15:14:21');
INSERT INTO `sys_user_login_log` VALUES ('b145c65c87ba643db149c8b6beccd130', 'admin', '2020-04-16 08:27:52', 1, '', '127.0.0.1', 0, '2020-04-16 08:27:51');
INSERT INTO `sys_user_login_log` VALUES ('b1fb5004dee11e82dff0d72d57df3626', 'admin', '2020-03-22 07:48:15', 1, '', '127.0.0.1', 0, '2020-03-22 07:48:22');
INSERT INTO `sys_user_login_log` VALUES ('b2c6e4aa4c9b647803a4b301b0ea555f', 'admin', '2023-06-28 20:40:02', 1, '', '127.0.0.1', 0, '2023-06-28 20:40:01');
INSERT INTO `sys_user_login_log` VALUES ('b4f7d0c03e18bf87fa3f213951b43d3b', 'admin', '2020-09-02 13:56:31', 1, '', '127.0.0.1', 0, '2020-09-02 13:56:31');
INSERT INTO `sys_user_login_log` VALUES ('b4f8d656477c03e2a49fc7887171b48e', 'admin', '2022-06-15 05:41:03', 1, '', '127.0.0.1', 0, '2022-06-15 13:41:03');
INSERT INTO `sys_user_login_log` VALUES ('b500958e67a88fa2e0955bad517db036', 'admin', '2023-06-26 05:55:30', 1, '', '127.0.0.1', 0, '2023-06-26 13:55:29');
INSERT INTO `sys_user_login_log` VALUES ('b74edeee31db80390e46f89dbc9fdf41', 'admin', '2020-03-16 09:32:30', 1, '', '127.0.0.1', 0, '2020-03-16 09:32:29');
INSERT INTO `sys_user_login_log` VALUES ('b75f6d17f010d301c47ad18eb5fec523', 'admin', '2023-06-28 09:25:38', 1, '', '127.0.0.1', 0, '2023-06-28 09:25:37');
INSERT INTO `sys_user_login_log` VALUES ('b7f8000fe979045af7e10d39ea1dbb67', 'admin', '2020-09-06 07:26:37', 1, '', '127.0.0.1', 0, '2020-09-06 07:26:36');
INSERT INTO `sys_user_login_log` VALUES ('b828bca859c7fb0f88377acc2275b6e7', 'admin', '2022-06-15 17:36:25', 1, '', '127.0.0.1', 0, '2022-06-16 01:36:24');
INSERT INTO `sys_user_login_log` VALUES ('c24c4709d410cd9cd0b8b40df6649d54', 'admin', '2020-05-09 10:28:05', 1, '', '127.0.0.1', 0, '2020-05-09 10:28:04');
INSERT INTO `sys_user_login_log` VALUES ('c30e5cb927057b6fc0bf51334e564bca', 'admin', '2020-10-04 16:56:08', 1, '', '127.0.0.1', 0, '2020-10-04 16:56:08');
INSERT INTO `sys_user_login_log` VALUES ('c33623e3f32c73450dfcf1dffe584d0a', 'admin', '2022-06-17 00:44:28', 1, '', '127.0.0.1', 0, '2022-06-17 00:44:28');
INSERT INTO `sys_user_login_log` VALUES ('c56fa1c56440ee047209f1d17c8a5ba1', 'admin', '2023-06-30 13:39:54', 1, '', '127.0.0.1', 0, '2023-06-30 13:39:54');
INSERT INTO `sys_user_login_log` VALUES ('c61097b222f4dadaa952380d7398de3c', 'admin', '2020-05-08 01:32:24', 1, '', '127.0.0.1', 0, '2020-05-08 01:32:24');
INSERT INTO `sys_user_login_log` VALUES ('c7c10e972c23657e756896745e078b38', 'admin', '2023-06-30 13:39:48', 1, '', '127.0.0.1', 0, '2023-06-30 13:39:48');
INSERT INTO `sys_user_login_log` VALUES ('c8154a5aebc25fde195fdd43bdf34bd5', 'admin', '2020-09-06 06:10:31', 1, '', '127.0.0.1', 0, '2020-09-06 06:10:31');
INSERT INTO `sys_user_login_log` VALUES ('c82b5d19ab79b57fc13241af99343f6e', 'admin', '2023-06-26 06:46:24', 1, '', '127.0.0.1', 0, '2023-06-26 14:46:24');
INSERT INTO `sys_user_login_log` VALUES ('c849f97a16a76bc7bb140be38338bb54', 'admin', '2020-04-30 03:54:07', 1, '', '127.0.0.1', 0, '2020-04-30 03:54:07');
INSERT INTO `sys_user_login_log` VALUES ('cb7fe436d5eda047194673b959fc3d2c', 'admin', '2020-09-03 02:22:31', 1, '', '127.0.0.1', 0, '2020-09-03 02:22:31');
INSERT INTO `sys_user_login_log` VALUES ('cbfb18140c7782f7d4667eaf12e3193c', 'admin', '2020-04-08 07:16:33', 1, '', '127.0.0.1', 0, '2020-04-08 07:16:33');
INSERT INTO `sys_user_login_log` VALUES ('cd223bb7037ba44b029d255b595b0dfb', 'admin', '2020-04-21 04:35:55', 1, '', '127.0.0.1', 0, '2020-04-21 04:35:54');
INSERT INTO `sys_user_login_log` VALUES ('cd40013d51d9d0b4c0a34f33224c2a60', 'admin', '2020-09-06 12:58:01', 1, '', '127.0.0.1', 0, '2020-09-06 12:58:00');
INSERT INTO `sys_user_login_log` VALUES ('cda34aa5bdd15ee7d48fdccacd83b4a0', 'admin', '2020-04-17 05:47:58', 1, '', '127.0.0.1', 0, '2020-04-17 05:47:57');
INSERT INTO `sys_user_login_log` VALUES ('d33c5a4a11f200df21963807cb49a2f9', 'admin', '2020-08-10 07:42:49', 1, '', '127.0.0.1', 0, '2020-08-10 07:42:49');
INSERT INTO `sys_user_login_log` VALUES ('d4aec4839b8dd2dc618b6979a6e4e30b', 'admin', '2023-06-26 01:19:02', 1, '', '127.0.0.1', 0, '2023-06-26 09:19:02');
INSERT INTO `sys_user_login_log` VALUES ('d7af21bae13e97c2b4bea9835ef0b821', 'admin', '2020-04-07 08:09:29', 1, '', '127.0.0.1', 0, '2020-04-07 08:09:28');
INSERT INTO `sys_user_login_log` VALUES ('d9424d2e32da2efdb5fe61d623e4fa4b', 'admin', '2020-04-13 02:27:27', 1, '', '127.0.0.1', 0, '2020-04-13 02:27:27');
INSERT INTO `sys_user_login_log` VALUES ('daeeca15bf04f328eb0e4c284696b036', 'admin', '2023-06-27 22:36:02', 1, '', '127.0.0.1', 0, '2023-06-27 22:36:01');
INSERT INTO `sys_user_login_log` VALUES ('dd362c5f2d4a0b47132cc903d29cc6d9', 'admin', '2023-06-30 00:51:57', 1, '', '127.0.0.1', 0, '2023-06-30 00:51:57');
INSERT INTO `sys_user_login_log` VALUES ('e05a023e956f0b36200238f930ab2e60', 'admin', '2023-06-30 13:40:06', 1, '', '127.0.0.1', 0, '2023-06-30 13:40:06');
INSERT INTO `sys_user_login_log` VALUES ('e08064bf29efaf98d74f7e63e81a5c9c', 'admin', '2020-05-08 07:16:06', 1, '', '127.0.0.1', 0, '2020-05-08 07:16:05');
INSERT INTO `sys_user_login_log` VALUES ('e1661e670cd6443ef80789969cb7e435', 'admin', '2020-08-11 02:06:04', 1, '', '127.0.0.1', 0, '2020-08-11 02:06:04');
INSERT INTO `sys_user_login_log` VALUES ('e36293c4d89f3b7a719df7fcd8934fc8', 'admin', '2020-05-18 07:37:28', 1, '', '127.0.0.1', 0, '2020-05-18 07:37:28');
INSERT INTO `sys_user_login_log` VALUES ('e5ae35673b662dbc184495306b8422ef', 'admin', '2020-03-21 08:07:43', 1, '', '127.0.0.1', 0, '2020-03-21 08:07:50');
INSERT INTO `sys_user_login_log` VALUES ('e6912a9573b8b239f117ad5bc9db028a', 'admin', '2020-04-13 01:32:13', 1, '', '127.0.0.1', 0, '2020-04-13 01:32:12');
INSERT INTO `sys_user_login_log` VALUES ('e6a38ac29d445baeba19a859568a18f4', 'admin', '2020-04-16 08:16:55', 1, '', '127.0.0.1', 0, '2020-04-16 08:16:55');
INSERT INTO `sys_user_login_log` VALUES ('e7d33e96faa7fe9e6a53c279dda6c17c', 'admin', '2020-04-29 13:41:54', 1, '', '127.0.0.1', 0, '2020-04-29 13:41:54');
INSERT INTO `sys_user_login_log` VALUES ('ea2921ce05f3ccbf70a12dd50bf4509e', 'admin', '2020-04-16 07:35:09', 1, '', '192.168.213.1', 0, '2020-04-16 07:34:59');
INSERT INTO `sys_user_login_log` VALUES ('ec6a7ff535ab3f96eebf2053cae375d2', 'admin', '2022-06-15 08:49:01', 1, '', '127.0.0.1', 0, '2022-06-15 16:49:00');
INSERT INTO `sys_user_login_log` VALUES ('edbb8d266c880d197240b860ff86ba0a', 'admin', '2020-08-31 02:25:10', 1, '', '127.0.0.1', 0, '2020-08-31 02:25:10');
INSERT INTO `sys_user_login_log` VALUES ('ee0f90c96b70de719c5ece448c74a605', 'admin', '2023-06-28 20:46:54', 1, '', '127.0.0.1', 0, '2023-06-28 20:46:53');
INSERT INTO `sys_user_login_log` VALUES ('ee18d557afb7349495c67afa75906417', 'admin', '2020-05-07 08:21:56', 1, '', '127.0.0.1', 0, '2020-05-07 08:21:55');
INSERT INTO `sys_user_login_log` VALUES ('ef7f124ec6c7c3942d9a1aba39665f49', 'admin', '2022-06-15 16:51:11', 1, '', '127.0.0.1', 0, '2022-06-16 00:51:11');
INSERT INTO `sys_user_login_log` VALUES ('f024ec1a99b53db40fb95b62541e6af5', 'admin', '2020-04-16 09:01:37', 1, '', '127.0.0.1', 0, '2020-04-16 09:01:36');
INSERT INTO `sys_user_login_log` VALUES ('f083c8b3cb9048b1cd1cab0bffe95af2', 'admin', '2020-07-27 06:07:51', 1, '', '127.0.0.1', 0, '2020-07-27 06:07:51');
INSERT INTO `sys_user_login_log` VALUES ('f118ce9fa7ad2b2e3a4e0a29fbf9ab57', 'admin', '2023-06-30 14:59:12', 1, '', '127.0.0.1', 0, '2023-06-30 14:59:12');
INSERT INTO `sys_user_login_log` VALUES ('f253d34910bbc0dd2c5abc4aa51210c5', 'admin', '2023-06-30 15:10:33', 1, '', '127.0.0.1', 0, '2023-06-30 15:10:32');
INSERT INTO `sys_user_login_log` VALUES ('f38820170d8239f64cb1e8457ef92451', 'admin', '2020-04-13 06:47:53', 1, '', '127.0.0.1', 0, '2020-04-13 06:47:53');
INSERT INTO `sys_user_login_log` VALUES ('f46da8c63d8241cb84017f5632bba9be', 'admin', '2020-04-16 08:25:34', 1, '', '127.0.0.1', 0, '2020-04-16 08:25:34');
INSERT INTO `sys_user_login_log` VALUES ('f5e549f918dbb40cae3c4e509de307e9', 'admin', '2020-03-22 05:37:43', 1, '', '127.0.0.1', 0, '2020-03-22 05:37:49');
INSERT INTO `sys_user_login_log` VALUES ('f85ca52cdced4a828244652621c545e5', 'admin', '2020-09-03 06:31:05', 1, '', '127.0.0.1', 0, '2020-09-03 06:31:05');
INSERT INTO `sys_user_login_log` VALUES ('f879c550b45271dcce0890145401df5a', 'admin', '2022-06-16 15:18:47', 1, '', '127.0.0.1', 0, '2022-06-16 23:18:47');
INSERT INTO `sys_user_login_log` VALUES ('fbeaa0d3169f672457396e55b82ad12e', 'admin', '2023-06-27 14:29:58', 1, '', '127.0.0.1', 0, '2023-06-27 14:29:57');
INSERT INTO `sys_user_login_log` VALUES ('ff391d6b12b15505f2788c2b0d115a64', 'admin', '2022-06-16 08:44:27', 1, '', '127.0.0.1', 0, '2022-06-16 16:44:27');

-- ----------------------------
-- Table structure for sys_user_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_operation_log`;
CREATE TABLE `sys_user_operation_log`  (
  `ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `OPERATION_MODULE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '操作模块',
  `OPERATION_TYPE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '操作类型',
  `VISIT_METHOD` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '请求方法',
  `PARAMETERS` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '请求参数',
  `IP_ADDRESS` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'IP地址',
  `DURATION` int NOT NULL DEFAULT 0 COMMENT '执行时长',
  `OPERATION_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_operation_log
-- ----------------------------
INSERT INTO `sys_user_operation_log` VALUES ('00009162ba90f52d930575b914026fce', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-30 13:52:57');
INSERT INTO `sys_user_operation_log` VALUES ('00655d07fc28fe99e0c534dcb36cc46f', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 15, '2023-06-29 14:37:21');
INSERT INTO `sys_user_operation_log` VALUES ('0074431855b68e3c9626e7bf1029129c', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 124, '2020-04-17 02:18:00');
INSERT INTO `sys_user_operation_log` VALUES ('00a69cc7ea45f3f3220994520053d83b', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 63, '2020-05-09 10:29:11');
INSERT INTO `sys_user_operation_log` VALUES ('00b94d2c48510d0d54e3b880ad509b05', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 470, '2022-06-15 05:39:53');
INSERT INTO `sys_user_operation_log` VALUES ('00d10d1caffc077e7a1cfdd205751b4b', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 14:56:16');
INSERT INTO `sys_user_operation_log` VALUES ('00fa6d91afce991f2ab26d9bdde7f437', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-27 15:17:05');
INSERT INTO `sys_user_operation_log` VALUES ('012e8a6abed5c49b07688ede2b0eabcb', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 205, '2020-07-27 07:00:58');
INSERT INTO `sys_user_operation_log` VALUES ('01320cb34192ca62853965e6c6eeb24f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1961, '2020-09-08 16:16:16');
INSERT INTO `sys_user_operation_log` VALUES ('01372ba0aec5ed4ad3d6444792491490', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"4444\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 226, '2020-11-07 17:40:50');
INSERT INTO `sys_user_operation_log` VALUES ('013e9d6e09fa05148f5bc04ad455e758', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 09:06:14');
INSERT INTO `sys_user_operation_log` VALUES ('016f3d37559485b6a92ccc1d44c336a9', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 122, '2020-09-03 02:22:28');
INSERT INTO `sys_user_operation_log` VALUES ('017e46826a8b4882dcd86dd372c1f564', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:39:00');
INSERT INTO `sys_user_operation_log` VALUES ('01889c23dacab5100b0d85d78335b7ef', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 24, '2023-06-30 15:10:25');
INSERT INTO `sys_user_operation_log` VALUES ('01a4943114b794b8c0300f67409d01bb', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"4444\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 167, '2020-11-07 17:14:18');
INSERT INTO `sys_user_operation_log` VALUES ('01c3df89f36873424087800909ad9278', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 182, '2020-04-13 07:14:50');
INSERT INTO `sys_user_operation_log` VALUES ('01d002e397db4a36156f736e1bc9673b', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 436, '2020-04-29 14:49:51');
INSERT INTO `sys_user_operation_log` VALUES ('0264280c94a921dd3cd2c4fe346f362c', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 228, '2020-10-24 03:56:50');
INSERT INTO `sys_user_operation_log` VALUES ('0286f935ca6a1797eb0e7eea26b5025c', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 27, '2022-06-17 01:07:13');
INSERT INTO `sys_user_operation_log` VALUES ('02b55cf68ae60dd095263c89b403c865', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 27, '2020-11-07 17:06:03');
INSERT INTO `sys_user_operation_log` VALUES ('0311a31519543be7841fd7d4664ab4c6', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 156, '2020-04-13 07:22:18');
INSERT INTO `sys_user_operation_log` VALUES ('033d734bb768782c704ff34adf0579e6', 'root', '用户管理', '列表', 'page', '{\"phone\":\"\",\"nickName\":\"\",\"disable\":\"\",\"roles\":\"\",\"limit\":\"10\",\"deptId\":\"1325121829601280001\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 25, '2022-06-17 01:13:53');
INSERT INTO `sys_user_operation_log` VALUES ('0410550d4c56f67fb85871c6d0255a38', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 16:33:53');
INSERT INTO `sys_user_operation_log` VALUES ('0415a6a025df870c0f11655b80f9404a', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 10:59:57');
INSERT INTO `sys_user_operation_log` VALUES ('04864abcb331b5deb821a40b0b5b3fb1', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 57, '2020-09-06 22:11:27');
INSERT INTO `sys_user_operation_log` VALUES ('049276cbe686d48cfbbce236392f4a36', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 12, '2023-06-30 14:23:27');
INSERT INTO `sys_user_operation_log` VALUES ('04af6d6b697264431933335481b9afd5', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 306, '2020-09-06 12:58:01');
INSERT INTO `sys_user_operation_log` VALUES ('04b2ea23b83f394c741466d69ca18b8b', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-29 22:34:32');
INSERT INTO `sys_user_operation_log` VALUES ('04d7804e82d3a2d3640c6eaa17b1e99e', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 10:41:49');
INSERT INTO `sys_user_operation_log` VALUES ('04e126f6bd1bfa5f228cd37ef4b1b5dc', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 91, '2020-09-07 09:44:02');
INSERT INTO `sys_user_operation_log` VALUES ('0517d3438e491a17c7b478a02a66fe7c', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-08 02:31:35');
INSERT INTO `sys_user_operation_log` VALUES ('053eea938de79bfb53026a8d6729b480', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:45:34');
INSERT INTO `sys_user_operation_log` VALUES ('05574a6591ffb74d70008b4ce256e5e3', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 77, '2020-05-08 03:47:21');
INSERT INTO `sys_user_operation_log` VALUES ('059a77fd19408ddf7a202a2ce6bd529d', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"1325123225058803713\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 12, '2022-06-15 05:40:50');
INSERT INTO `sys_user_operation_log` VALUES ('05a8c7f66a106030379d465d3c9de6de', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 78, '2020-09-03 02:22:24');
INSERT INTO `sys_user_operation_log` VALUES ('0619088f841db7c39cd0b8aac1d703ff', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 22, '2020-10-27 09:01:26');
INSERT INTO `sys_user_operation_log` VALUES ('062a7346f6b2b4bfeac07588ea8945d2', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000411\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 82, '2020-11-07 17:01:54');
INSERT INTO `sys_user_operation_log` VALUES ('0661bce3eeafd2e5fe4d63d159581c5d', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:34:19');
INSERT INTO `sys_user_operation_log` VALUES ('06d7d88d74b66de733fc15bdd552dc7d', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 355, '2020-04-07 07:01:08');
INSERT INTO `sys_user_operation_log` VALUES ('0711a1501ac7eeead3cac9dc384ab021', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 556, '2020-10-27 09:01:05');
INSERT INTO `sys_user_operation_log` VALUES ('07375207607469e142e6a9d3808eadd6', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 11:15:14');
INSERT INTO `sys_user_operation_log` VALUES ('075774e90910091d06190baf78b9e2cd', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 3, '2023-06-28 08:52:32');
INSERT INTO `sys_user_operation_log` VALUES ('076c57e1dc2e0e786f72db44bbca4a9b', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-08 01:55:57');
INSERT INTO `sys_user_operation_log` VALUES ('078fa782bfa19748ed8e6a23faf5021e', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-28 16:32:50');
INSERT INTO `sys_user_operation_log` VALUES ('085de7a14eec7ce860bc5f33b1fe063a', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 80, '2020-04-07 08:20:26');
INSERT INTO `sys_user_operation_log` VALUES ('0889dbaa38d6fb738bb1dcc80986cf1d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 129, '2020-10-04 16:56:07');
INSERT INTO `sys_user_operation_log` VALUES ('08de9e1687caaaa07d2b843271c6c44c', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:02:11');
INSERT INTO `sys_user_operation_log` VALUES ('093c27fbd0a67a107d0dc1f8c3dfd855', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 10:02:42');
INSERT INTO `sys_user_operation_log` VALUES ('0955cb28e8b8269d5f72d7c3560f4bf3', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 12, '2022-06-17 01:17:06');
INSERT INTO `sys_user_operation_log` VALUES ('097d43cb39771fdbcd63cc96e708eb10', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 169, '2020-04-13 06:51:24');
INSERT INTO `sys_user_operation_log` VALUES ('09b0ea5258137822ff1ce93bd26c47eb', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 35, '2020-11-07 17:09:04');
INSERT INTO `sys_user_operation_log` VALUES ('09b97da1937cc46abc8d5cab9b3448ce', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:32:24');
INSERT INTO `sys_user_operation_log` VALUES ('09c3e6719bbf6d10bcb005fe45ebb864', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:30:17');
INSERT INTO `sys_user_operation_log` VALUES ('09f507d2156bf5d75b1c1fa2f97ed227', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 22, '2020-04-07 07:01:59');
INSERT INTO `sys_user_operation_log` VALUES ('0a00833326cd35adb7e6e3a8e2f86d45', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"deptId\":\"OR1200000703\",\"page\":\"1\"}', '127.0.0.1', 208, '2020-04-16 08:58:16');
INSERT INTO `sys_user_operation_log` VALUES ('0a092787e1646ae021e50748d6320061', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 74, '2020-04-13 07:42:39');
INSERT INTO `sys_user_operation_log` VALUES ('0a1bd88603a61c412e36e86c5399b97b', 'admin', '登录模块', '用户登录', 'login', '{}', '192.168.250.1', 595, '2020-09-06 21:26:08');
INSERT INTO `sys_user_operation_log` VALUES ('0a4ed17507e810f06bccd86013b14a0b', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 11:40:15');
INSERT INTO `sys_user_operation_log` VALUES ('0a99d461f22d43cd159f9730d277cf5c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 229, '2020-04-17 03:49:02');
INSERT INTO `sys_user_operation_log` VALUES ('0ab443192c9b593eddb66b2682f4e5a0', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 09:25:08');
INSERT INTO `sys_user_operation_log` VALUES ('0abd079435da9d876343a6abb74760c2', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 199, '2020-11-07 17:10:28');
INSERT INTO `sys_user_operation_log` VALUES ('0abda3cdedb500cc89253359da71ef93', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 14:02:25');
INSERT INTO `sys_user_operation_log` VALUES ('0ad5c43d7ed8ff92c84d6ee615aee20b', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"1233333333333\"}', '127.0.0.1', 59, '2020-10-04 16:56:15');
INSERT INTO `sys_user_operation_log` VALUES ('0ae4feb4c620db3affa96f7ab2f7e76b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 148, '2020-05-07 10:00:57');
INSERT INTO `sys_user_operation_log` VALUES ('0b3508303a1860f0a5991862af74eeec', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 274, '2020-04-13 02:45:22');
INSERT INTO `sys_user_operation_log` VALUES ('0be400eadf24401ae1f0c43751f3681e', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 11:16:22');
INSERT INTO `sys_user_operation_log` VALUES ('0c22846c37e72ecaf9d4e1177f4dbf86', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 83, '2020-04-17 07:38:00');
INSERT INTO `sys_user_operation_log` VALUES ('0c22eb5714d002415130d01e5d5f57a4', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"1\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 60, '2020-05-09 10:30:16');
INSERT INTO `sys_user_operation_log` VALUES ('0c291fc1b222199873e3bd91137f01ce', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 216, '2020-03-22 07:48:14');
INSERT INTO `sys_user_operation_log` VALUES ('0c538dbea2fbce6f7732e8ad18369917', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 11:11:55');
INSERT INTO `sys_user_operation_log` VALUES ('0ce3442c3f0167de93a132d921d90f0d', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-29 16:23:37');
INSERT INTO `sys_user_operation_log` VALUES ('0cef947a17a1ec03ef8fca97f17aa872', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 37, '2022-06-16 08:44:24');
INSERT INTO `sys_user_operation_log` VALUES ('0cf878f65193f2fb9ad4d09356973f80', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 09:39:24');
INSERT INTO `sys_user_operation_log` VALUES ('0d5a37a22abb18e815b818f98e7bcd54', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 152, '2020-09-07 09:34:33');
INSERT INTO `sys_user_operation_log` VALUES ('0d92dcd5f0757089aba9d44ee89999b5', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 10:48:03');
INSERT INTO `sys_user_operation_log` VALUES ('0dccd760ef33b65d61c2c5273049b89d', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 13:45:31');
INSERT INTO `sys_user_operation_log` VALUES ('0dfad5f0f3dcc38b5a19a7c50a111590', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000575\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 83, '2020-11-07 17:01:55');
INSERT INTO `sys_user_operation_log` VALUES ('0e67dfa410f0bc7b46784867cc804e04', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 29, '2020-05-18 07:40:32');
INSERT INTO `sys_user_operation_log` VALUES ('0e6c952f8daa0a5195e3934f8b2298e9', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 11:12:42');
INSERT INTO `sys_user_operation_log` VALUES ('0e7e0194893f9ca69602134bbb9564e9', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 77, '2020-05-08 03:52:05');
INSERT INTO `sys_user_operation_log` VALUES ('0eb262687e11fe574c17a89fa9b08ff7', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 09:33:00');
INSERT INTO `sys_user_operation_log` VALUES ('0ec722f6ff097cb059b5b45e08508e06', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 17, '2023-06-30 13:40:26');
INSERT INTO `sys_user_operation_log` VALUES ('0f168834d6ff23a37bbb9446382882ad', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 382, '2023-06-26 01:16:52');
INSERT INTO `sys_user_operation_log` VALUES ('0f29edc9acf4307965c85333beeb4ae8', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:42:40');
INSERT INTO `sys_user_operation_log` VALUES ('0f75fa686c4df74dd7d55162f54b32b7', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 08:52:00');
INSERT INTO `sys_user_operation_log` VALUES ('0f9e8b0829ad9b4aad351e0b4845e7d6', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 5, '2022-06-16 06:43:12');
INSERT INTO `sys_user_operation_log` VALUES ('1025f2ebd2cef0a38d358baeac1ab23a', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 232, '2020-04-21 09:55:09');
INSERT INTO `sys_user_operation_log` VALUES ('104c26df38c0822bb83b2256614f2ef3', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 31, '2020-11-07 17:06:03');
INSERT INTO `sys_user_operation_log` VALUES ('105672a4ce35b5b7a1bcd34a5ba0ba62', 'Anonymous', '查询用户列表', 'openApi', 'userList', '{\"id\":\"0\"}', '127.0.0.1', 86, '2020-09-07 13:49:19');
INSERT INTO `sys_user_operation_log` VALUES ('1066481da820920a9a4106332f9cb749', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 543, '2020-04-20 07:30:17');
INSERT INTO `sys_user_operation_log` VALUES ('107441d9fa2075a8ebe603f2657d8a59', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 175, '2020-09-05 11:43:54');
INSERT INTO `sys_user_operation_log` VALUES ('1087074615cdb1db21c1ecac73f286e4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 353, '2023-06-26 01:19:01');
INSERT INTO `sys_user_operation_log` VALUES ('10bbb83d5db49e45921e5e8dc41b6f61', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 11:28:54');
INSERT INTO `sys_user_operation_log` VALUES ('10bbbddbd631d483d67534a48e8cba82', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 17, '2022-06-17 01:07:14');
INSERT INTO `sys_user_operation_log` VALUES ('111c8f7dcf3803521b9f0b12a16a9269', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-04-07 08:20:27');
INSERT INTO `sys_user_operation_log` VALUES ('112225c124337bb79628db147dd2e81d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997?_=1688032025464\"}', '127.0.0.1', 15, '2023-06-29 17:47:05');
INSERT INTO `sys_user_operation_log` VALUES ('112d673aa23c00ef6efa68b36c82e21b', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 62, '2020-05-08 02:28:38');
INSERT INTO `sys_user_operation_log` VALUES ('118efda1a2f347c83aa6ee5ff7d24b09', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 119, '2022-06-16 06:42:46');
INSERT INTO `sys_user_operation_log` VALUES ('12100fb62f6c232b359cb9d98089e376', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"东莞分公司\",\"deptId\":\"OR1200000387\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 73, '2020-08-20 09:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('121d800233e25ff17ce958b2089eab93', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 17, '2023-06-28 08:55:28');
INSERT INTO `sys_user_operation_log` VALUES ('12312a83b5238a4534097b37e426cb1b', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 12, '2022-06-15 05:40:20');
INSERT INTO `sys_user_operation_log` VALUES ('1241897757699440641', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 3120, '2020-03-23 01:21:13');
INSERT INTO `sys_user_operation_log` VALUES ('1241897766708805634', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 416, '2020-03-23 01:21:16');
INSERT INTO `sys_user_operation_log` VALUES ('1241904177006215170', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 97, '2020-03-23 01:46:44');
INSERT INTO `sys_user_operation_log` VALUES ('1241904298750083073', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 85, '2020-03-23 01:47:13');
INSERT INTO `sys_user_operation_log` VALUES ('1241904424012972033', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 85, '2020-03-23 01:47:43');
INSERT INTO `sys_user_operation_log` VALUES ('1241916917468856321', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 190, '2020-03-23 02:37:21');
INSERT INTO `sys_user_operation_log` VALUES ('1241918640799318017', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 121, '2020-03-23 02:44:12');
INSERT INTO `sys_user_operation_log` VALUES ('1241929379144499202', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 169, '2020-03-23 03:26:53');
INSERT INTO `sys_user_operation_log` VALUES ('1241929388946587649', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 118, '2020-03-23 03:26:55');
INSERT INTO `sys_user_operation_log` VALUES ('1241935624421212162', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 174, '2020-03-23 03:51:42');
INSERT INTO `sys_user_operation_log` VALUES ('1242721743962316802', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 2451, '2020-03-25 07:55:27');
INSERT INTO `sys_user_operation_log` VALUES ('1242721762664718338', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 466, '2020-03-25 07:55:32');
INSERT INTO `sys_user_operation_log` VALUES ('1242750888872189953', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 210, '2020-03-25 09:51:16');
INSERT INTO `sys_user_operation_log` VALUES ('1242750895004262401', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 135, '2020-03-25 09:51:17');
INSERT INTO `sys_user_operation_log` VALUES ('1242750942857076737', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 91, '2020-03-25 09:51:29');
INSERT INTO `sys_user_operation_log` VALUES ('124bd38fe152c2aca61f448a858f91b5', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 147, '2020-03-16 09:12:34');
INSERT INTO `sys_user_operation_log` VALUES ('124e1bb2880a452edb93a15a81580477', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 13:43:12');
INSERT INTO `sys_user_operation_log` VALUES ('125e4fd2776e27e078da930ae51ee29f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 190, '2020-04-13 02:28:49');
INSERT INTO `sys_user_operation_log` VALUES ('1262284477498368001', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2727, '2020-05-18 07:30:46');
INSERT INTO `sys_user_operation_log` VALUES ('1262284484335083522', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 468, '2020-05-18 07:30:48');
INSERT INTO `sys_user_operation_log` VALUES ('1262284696067743746', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 102, '2020-05-18 07:31:38');
INSERT INTO `sys_user_operation_log` VALUES ('12b5e068a74f74e19f8dd4b8d732326e', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 132, '2020-05-08 02:30:34');
INSERT INTO `sys_user_operation_log` VALUES ('12d35c86f94aea266a5e715ea9412f2c', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 4, '2022-06-16 08:44:34');
INSERT INTO `sys_user_operation_log` VALUES ('12d7ec1668da3098ad97c3b36ffb90d6', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 142, '2020-04-21 10:07:28');
INSERT INTO `sys_user_operation_log` VALUES ('13180d2f61759420556eb0e9b4e3bb27', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 24, '2023-06-29 13:33:17');
INSERT INTO `sys_user_operation_log` VALUES ('132e9584268c62f9f78d1192137bf2f9', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 153, '2020-09-02 07:50:14');
INSERT INTO `sys_user_operation_log` VALUES ('1358a292523f94f5ababbcc454e403c2', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 224, '2020-04-21 09:52:16');
INSERT INTO `sys_user_operation_log` VALUES ('13c624ab6e368c9a8dc79b17114d7dbc', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 151, '2020-09-06 21:50:31');
INSERT INTO `sys_user_operation_log` VALUES ('1494d9b1504869a11c2c3e07b3fdddcd', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:41:32');
INSERT INTO `sys_user_operation_log` VALUES ('14c83a02147bd1f3aa30d9717fd5ab68', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 96, '2023-06-28 09:24:40');
INSERT INTO `sys_user_operation_log` VALUES ('14ca76ba1641a1f8d87b6a5f70af2e0b', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 5, '2023-06-27 14:29:32');
INSERT INTO `sys_user_operation_log` VALUES ('14d0d0a46952875d1ad19de0dc83bc42', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 27, '2022-06-17 01:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('1500c30b5715ed02032516b041397410', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 10, '2023-06-30 11:40:12');
INSERT INTO `sys_user_operation_log` VALUES ('15212da0c1f0527419fdf8d7d0610b9e', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 144, '2020-11-07 16:58:18');
INSERT INTO `sys_user_operation_log` VALUES ('1599f3996c8d6de3badce1839cf1ed55', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688109029855\"}', '127.0.0.1', 21, '2023-06-30 15:10:30');
INSERT INTO `sys_user_operation_log` VALUES ('15a3f660deffb51909913cab0d3fb6a5', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 10, '2022-06-16 08:44:58');
INSERT INTO `sys_user_operation_log` VALUES ('15e7d8cd405ca2a7bd2b2d50949065bd', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:30:15');
INSERT INTO `sys_user_operation_log` VALUES ('15ff0c825c7327ef19d62b74d142d68c', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 96, '2020-05-07 05:37:13');
INSERT INTO `sys_user_operation_log` VALUES ('166ef6e6282e636ebdd6d8ce97d4ecb6', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 4, '2023-06-30 13:39:56');
INSERT INTO `sys_user_operation_log` VALUES ('16a682b081c9cb3a10149ef136dec196', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 271, '2020-07-30 06:56:59');
INSERT INTO `sys_user_operation_log` VALUES ('1714892a623bde4b12d28767c21e9c75', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 187, '2020-04-13 08:06:13');
INSERT INTO `sys_user_operation_log` VALUES ('17284e6ccae587a77b73d06dd5408108', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 200, '2020-04-13 07:24:48');
INSERT INTO `sys_user_operation_log` VALUES ('172c2471dda76a138ebd8dcb5568919e', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 09:57:20');
INSERT INTO `sys_user_operation_log` VALUES ('17310e860097578d67121d257dd6795a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 145, '2020-10-24 03:46:52');
INSERT INTO `sys_user_operation_log` VALUES ('173bb1f1c18ac45745a72c653e3d053f', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:34:55');
INSERT INTO `sys_user_operation_log` VALUES ('1759cb51e32c9918ac88a688586d7412', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 21:58:59');
INSERT INTO `sys_user_operation_log` VALUES ('17787e0ee83d3836fe640be32cb5b0c6', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217?_=1688092090373?_=1688092090547?_=1688092090705?_=1688092090858\"}', '127.0.0.1', 17, '2023-06-30 10:28:11');
INSERT INTO `sys_user_operation_log` VALUES ('177d6c8808493f95fe91f4ca0ecd5852', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 10:32:04');
INSERT INTO `sys_user_operation_log` VALUES ('178a816b09654005868c406a75b527dc', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 20, '2023-06-28 16:32:36');
INSERT INTO `sys_user_operation_log` VALUES ('17b551eae1fc61d6b497d73c94636d7c', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 7, '2022-06-17 01:17:30');
INSERT INTO `sys_user_operation_log` VALUES ('17daed0990b31e1a19a01e719e9e1f40', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000703\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 93, '2020-05-18 07:40:47');
INSERT INTO `sys_user_operation_log` VALUES ('17ffef9c08409af127b7a0121ed0d222', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 231, '2020-03-21 08:07:44');
INSERT INTO `sys_user_operation_log` VALUES ('1801a7bf86db2a0a1e7388d27235c400', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 194, '2020-11-07 17:14:02');
INSERT INTO `sys_user_operation_log` VALUES ('185f9ecb1db185cdf2611366d5d02846', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 15:24:04');
INSERT INTO `sys_user_operation_log` VALUES ('1878079b23b501f27a49c2798e102aad', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 19, '2023-06-27 00:41:54');
INSERT INTO `sys_user_operation_log` VALUES ('19455bb927987042e3af485a90eecb08', 'admin', '数据字典', '导出', 'export', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 215, '2020-07-24 07:56:05');
INSERT INTO `sys_user_operation_log` VALUES ('197aa0ce4fe61a04cc0c52712338c064', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 09:39:21');
INSERT INTO `sys_user_operation_log` VALUES ('19ce5961dec5ab6a79ec6decdd90375d', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 09:31:10');
INSERT INTO `sys_user_operation_log` VALUES ('19d11d1ad127f7214128cd70295c50af', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1901, '2020-04-17 01:40:45');
INSERT INTO `sys_user_operation_log` VALUES ('1a2a0f414c1a9b6291bab11a8175e6f3', 'admin', '用户管理', '用户模板', 'template', '{}', '127.0.0.1', 151, '2020-03-16 08:10:43');
INSERT INTO `sys_user_operation_log` VALUES ('1a6244c89acad131b6552cfa2187110c', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 21, '2022-06-15 09:39:02');
INSERT INTO `sys_user_operation_log` VALUES ('1a8b6a0d5f4df9f5eb54f4c508ded568', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 09:30:19');
INSERT INTO `sys_user_operation_log` VALUES ('1aa1ae69578f861532341823eae36c9c', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 08:21:53');
INSERT INTO `sys_user_operation_log` VALUES ('1b0c32566e36530e54433bb6d804281c', 'admin', '用户管理', '用户模板', 'template', '{}', '127.0.0.1', 6566, '2020-03-16 08:04:25');
INSERT INTO `sys_user_operation_log` VALUES ('1b1bdd4d27c0887b15fc01303704a32e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 262, '2020-04-07 08:50:12');
INSERT INTO `sys_user_operation_log` VALUES ('1b86b43278499c00713d8705219a7295', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 193, '2020-04-29 13:45:25');
INSERT INTO `sys_user_operation_log` VALUES ('1be4eaf21cb3c18f931f5b2eccab6dd4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 344, '2020-04-21 09:51:53');
INSERT INTO `sys_user_operation_log` VALUES ('1c04aab67767c755c9015650f1620a40', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 157, '2020-10-24 03:50:38');
INSERT INTO `sys_user_operation_log` VALUES ('1ce0c70bdf199e7e767113867e88c97b', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 1, '2023-06-30 13:53:08');
INSERT INTO `sys_user_operation_log` VALUES ('1ce2c3761715af377f43e78a797193cf', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 856, '2020-08-01 06:07:15');
INSERT INTO `sys_user_operation_log` VALUES ('1d28f86bc6ea18e2d5a2b4936d8ff9d7', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 11, '2023-06-27 22:47:13');
INSERT INTO `sys_user_operation_log` VALUES ('1d7a4b79bf872c1c034dfd7e6aa7771b', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 303, '2020-07-30 06:56:55');
INSERT INTO `sys_user_operation_log` VALUES ('1d8bec8b03a45dfba00bc3a50a1a8cc3', 'admin', 'TbVisit', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:33:40');
INSERT INTO `sys_user_operation_log` VALUES ('1d950a345a7b59c1b0e7fb561fbea5b8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 178, '2020-09-03 01:43:58');
INSERT INTO `sys_user_operation_log` VALUES ('1da0bd9af4e1d4aeac8ea833cc770c2d', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 11:24:18');
INSERT INTO `sys_user_operation_log` VALUES ('1dcf294413031d5ff20247561b2d6202', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 18, '2023-06-30 13:39:57');
INSERT INTO `sys_user_operation_log` VALUES ('1e79a7224d0e74776c2f9e9608a30e46', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 143, '2020-10-24 03:50:31');
INSERT INTO `sys_user_operation_log` VALUES ('1eb546e54264ef002b3ada426b747941', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 10:54:52');
INSERT INTO `sys_user_operation_log` VALUES ('1ebd4191e0e7f4612022a53c4eaa14b8', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-27 01:32:03');
INSERT INTO `sys_user_operation_log` VALUES ('1f569e5bceb497cda7a92811289930ae', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 08:52:24');
INSERT INTO `sys_user_operation_log` VALUES ('1f57ff8d03e2959c86f234f43585b6c9', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 56, '2020-05-08 03:05:30');
INSERT INTO `sys_user_operation_log` VALUES ('1fff0baaf5a8babdb3058ce252c3eeb3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 368, '2023-06-29 13:33:14');
INSERT INTO `sys_user_operation_log` VALUES ('201c98e1eedf6f8c7b612864f1a10d52', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 1, '2023-06-30 13:18:35');
INSERT INTO `sys_user_operation_log` VALUES ('20c001f01ebe1685879a06079f67aa28', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 359, '2020-05-08 07:16:06');
INSERT INTO `sys_user_operation_log` VALUES ('20c09559de15178066f97f6eeb082c4e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 77, '2020-04-15 07:13:33');
INSERT INTO `sys_user_operation_log` VALUES ('20c35223d2b9615f615794ebeb509bd8', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 86, '2020-10-24 03:56:46');
INSERT INTO `sys_user_operation_log` VALUES ('20c70e21b427661ae8d7cb95a4b8d18e', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-28 09:05:22');
INSERT INTO `sys_user_operation_log` VALUES ('215273565d75c258c6dbba747b736a80', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1900, '2020-05-14 10:38:15');
INSERT INTO `sys_user_operation_log` VALUES ('21921c2bd8bd226fbd38567816dfef10', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 210, '2020-03-22 05:37:41');
INSERT INTO `sys_user_operation_log` VALUES ('21a8e1599e1be7f3196af1740cd1e2ce', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 17:13:49');
INSERT INTO `sys_user_operation_log` VALUES ('21addd4f7a38d138fd78084af0747e2c', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-28 16:33:29');
INSERT INTO `sys_user_operation_log` VALUES ('21af0d68689270da8f49b1f3eb75982f', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2020-11-07 17:09:31');
INSERT INTO `sys_user_operation_log` VALUES ('21ce954cf3b14b242a2d3050b367b61e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 102, '2020-04-13 06:47:53');
INSERT INTO `sys_user_operation_log` VALUES ('221a76b7e3d30d787f0e71cdd092f4ff', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 15, '2023-06-30 13:40:33');
INSERT INTO `sys_user_operation_log` VALUES ('2270b5a28acbaf3dd4715b98209af47e', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-27 01:30:25');
INSERT INTO `sys_user_operation_log` VALUES ('230aa351157e3647542d443b81991710', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 415, '2020-05-06 15:13:14');
INSERT INTO `sys_user_operation_log` VALUES ('230d0d2f65724cb2d8fe7b25144c62ff', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 927, '2020-07-28 09:12:12');
INSERT INTO `sys_user_operation_log` VALUES ('23560f456f5c781975abdcc95d6cde5e', 'admin', 'TbVisit', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:33:38');
INSERT INTO `sys_user_operation_log` VALUES ('23aa138fee50e03067b59ba743d9dd4e', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 01:25:22');
INSERT INTO `sys_user_operation_log` VALUES ('23b2bd64eb5f4214055fd247ca2edcf1', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 979, '2022-06-15 17:40:35');
INSERT INTO `sys_user_operation_log` VALUES ('23b792aa7b393cd9dd81b421ad918187', 'admin', 'TbOrderInfo', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-30 14:18:10');
INSERT INTO `sys_user_operation_log` VALUES ('23c5426bd73985e3edb37e2305e102cc', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688103629114\"}', '127.0.0.1', 14, '2023-06-30 13:40:29');
INSERT INTO `sys_user_operation_log` VALUES ('244726676226a1e67001e4719288c5e3', 'admin', '机构管理', '新增', 'save', '{}', '127.0.0.1', 61, '2020-11-07 17:09:57');
INSERT INTO `sys_user_operation_log` VALUES ('24548129997629b5ac88858c3a9371d5', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 72, '2020-08-12 01:51:21');
INSERT INTO `sys_user_operation_log` VALUES ('248b1cb907bfe2d636a4c26309b8784d', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 13:41:58');
INSERT INTO `sys_user_operation_log` VALUES ('24a26c7186b0ea2613d4147adf34f593', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 8, '2023-06-28 08:30:21');
INSERT INTO `sys_user_operation_log` VALUES ('24c0e1dbe7777ac7a22ac36b3e2d8479', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 301, '2020-09-06 13:20:24');
INSERT INTO `sys_user_operation_log` VALUES ('253c04a4900f0044ccd4a6df682230f2', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-28 09:05:25');
INSERT INTO `sys_user_operation_log` VALUES ('25475d1ecf2a7461b241eb125df36fd4', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 69, '2020-05-07 05:45:50');
INSERT INTO `sys_user_operation_log` VALUES ('25d2892b67f5482358800344e831f340', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 172, '2020-05-07 10:00:57');
INSERT INTO `sys_user_operation_log` VALUES ('26039ae845374216e9feb699523772b4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 22, '2023-06-27 05:39:19');
INSERT INTO `sys_user_operation_log` VALUES ('262b9e70381478bc32b5a0177c41800f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1373, '2020-11-06 08:18:45');
INSERT INTO `sys_user_operation_log` VALUES ('2759870138181c90bfe9fbb16a2c6a5e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1510, '2020-05-08 09:08:07');
INSERT INTO `sys_user_operation_log` VALUES ('275ca203c095ea812820e60208071431', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2020-11-07 17:04:40');
INSERT INTO `sys_user_operation_log` VALUES ('2768fa165632df16b9f052229ca86028', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1425, '2020-10-24 03:54:48');
INSERT INTO `sys_user_operation_log` VALUES ('2776c314ed47f9500b61e1a9eea9db16', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 109, '2020-04-21 10:07:38');
INSERT INTO `sys_user_operation_log` VALUES ('278d677dee5748ce13fc370b3b7e9177', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217?_=1688092090373?_=1688092090547?_=1688092090705\"}', '127.0.0.1', 15, '2023-06-30 10:28:11');
INSERT INTO `sys_user_operation_log` VALUES ('27af01e54f68fdc1eca90e6c402f3f3e', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 14, '2023-06-28 08:48:29');
INSERT INTO `sys_user_operation_log` VALUES ('27eca72ad37c4ba2b513cbc0e50439bc', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 10, '2023-06-28 09:05:40');
INSERT INTO `sys_user_operation_log` VALUES ('283ceac66ed02eadc441f7a91ae7683c', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 25, '2020-05-09 10:29:20');
INSERT INTO `sys_user_operation_log` VALUES ('284b302be704704aa3b1c195de75b7c5', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-27 14:52:51');
INSERT INTO `sys_user_operation_log` VALUES ('29174a2bb68bf447d68aaa59f87fa879', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-30 14:42:44');
INSERT INTO `sys_user_operation_log` VALUES ('2a2a6c557f983d5863df6a1f62661818', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"chen\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 51, '2020-05-09 10:30:11');
INSERT INTO `sys_user_operation_log` VALUES ('2a83ae50444dc6e60eeb5651a7a2d54b', 'admin', 'demo', '修改', 'update', '{}', '127.0.0.1', 6, '2022-06-15 06:08:04');
INSERT INTO `sys_user_operation_log` VALUES ('2aa219e29b6fea2d32860c2170287893', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 10, '2023-06-27 14:03:59');
INSERT INTO `sys_user_operation_log` VALUES ('2ae77708cb059ed90988972dfcc74382', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 170, '2020-05-07 10:01:03');
INSERT INTO `sys_user_operation_log` VALUES ('2aebab6abf8eada17b15aaad7a2f148f', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000387\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 86, '2020-11-07 17:01:54');
INSERT INTO `sys_user_operation_log` VALUES ('2b0d9201051d32cd757919089188e9cb', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 122, '2020-08-31 02:26:13');
INSERT INTO `sys_user_operation_log` VALUES ('2b1ddf6e443eb93726c7e418b614a674', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 21, '2022-06-17 01:14:39');
INSERT INTO `sys_user_operation_log` VALUES ('2c16c00ccdee498aa62398cacc035290', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 11:24:32');
INSERT INTO `sys_user_operation_log` VALUES ('2c1acd52ca63e9f454044455f96b7825', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1649, '2020-10-24 03:46:45');
INSERT INTO `sys_user_operation_log` VALUES ('2c24ccaebd0dd3e55c7d8fc74f3352c4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 16, '2023-06-30 13:40:00');
INSERT INTO `sys_user_operation_log` VALUES ('2c4f69117cd984d32bea2ed3e43cd133', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 271, '2020-05-07 09:22:55');
INSERT INTO `sys_user_operation_log` VALUES ('2cb327b4c009dffca042824cb5fe8f49', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 231, '2020-04-13 01:36:30');
INSERT INTO `sys_user_operation_log` VALUES ('2cbc874e8fe76dfadad09c721751b64b', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-30 11:24:00');
INSERT INTO `sys_user_operation_log` VALUES ('2d101e74386ddbbc7d83b551fc7c54ac', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 90, '2020-09-06 12:58:17');
INSERT INTO `sys_user_operation_log` VALUES ('2d18f48d0cf48d4a7a18f7dee4b5dec6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 273, '2020-03-22 13:13:15');
INSERT INTO `sys_user_operation_log` VALUES ('2d2b3e4ffd15f50de89c6dff618ff52f', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325121829601280001\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 95, '2020-11-07 17:14:17');
INSERT INTO `sys_user_operation_log` VALUES ('2d2f3ac7dcaa9f5421d01f16461db561', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 14, '2023-06-30 11:40:07');
INSERT INTO `sys_user_operation_log` VALUES ('2d6ce7b848f14f0bc2a85bff50fa5b30', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 298, '2020-07-26 08:57:41');
INSERT INTO `sys_user_operation_log` VALUES ('2e599779eac1d32b9d2774da70913503', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 28, '2023-06-30 15:10:33');
INSERT INTO `sys_user_operation_log` VALUES ('2e87aa2bde64ba7cc4785e9012b65a02', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-27 14:58:13');
INSERT INTO `sys_user_operation_log` VALUES ('2eac7ede53efaa7f40b0a7b6428a50d1', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 66, '2020-07-24 07:55:54');
INSERT INTO `sys_user_operation_log` VALUES ('2f00d66e935ad155790a0cccfbdd31a5', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"4444\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 84, '2020-11-07 17:08:37');
INSERT INTO `sys_user_operation_log` VALUES ('2f03013753aac532c14bc031aaaa83e3', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 226, '2020-04-07 09:01:20');
INSERT INTO `sys_user_operation_log` VALUES ('2f200d808b3619ba1024f0287ba37a93', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 450, '2023-06-29 19:19:54');
INSERT INTO `sys_user_operation_log` VALUES ('2f52cfc0bca7825c6ae536c0e1ca5b6e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 167, '2023-06-28 08:23:49');
INSERT INTO `sys_user_operation_log` VALUES ('2f6f655db029795832504c890aba0767', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 266, '2020-04-08 07:47:17');
INSERT INTO `sys_user_operation_log` VALUES ('2fdf3dc398b64971fde460338948920b', 'root', '用户管理', '修改', 'update', '{}', '127.0.0.1', 16, '2022-06-17 01:14:10');
INSERT INTO `sys_user_operation_log` VALUES ('3032c761112606bb36e355ff2f19b380', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 809, '2020-04-16 08:16:55');
INSERT INTO `sys_user_operation_log` VALUES ('30512d72a6d51efcd482b03d5c5a4b33', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 14, '2023-06-29 15:16:21');
INSERT INTO `sys_user_operation_log` VALUES ('306b3f04376af0faf0abeb41d982c8dc', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 7, '2023-06-26 01:26:03');
INSERT INTO `sys_user_operation_log` VALUES ('30dd74b546dee4023b3260e4f3b798dd', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 174, '2020-05-07 04:36:40');
INSERT INTO `sys_user_operation_log` VALUES ('30e76e6bc43b296c09b1b8eabb2785b7', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 264, '2020-05-14 03:12:40');
INSERT INTO `sys_user_operation_log` VALUES ('30efe6605489c36e318df055858576a4', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 10:44:54');
INSERT INTO `sys_user_operation_log` VALUES ('3106bc1d7cd58c932aac9bbdaa375654', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 80, '2020-05-09 10:30:44');
INSERT INTO `sys_user_operation_log` VALUES ('31c7092ed00b388e7a09587dbc888b0a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997?_=1688032025464?_=1688032025608?_=1688032025748?_=1688032025882?_=1688032028221\"}', '127.0.0.1', 16, '2023-06-29 17:47:08');
INSERT INTO `sys_user_operation_log` VALUES ('31ed6f6a8ed4f606113c7ee8a6125d92', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 9, '2023-06-30 15:11:39');
INSERT INTO `sys_user_operation_log` VALUES ('31ef0dc69f185f62e5a7c49ce5eb9cc2', 'Anonymous', '查询用户列表', 'openApi', 'userList', '{}', '127.0.0.1', 5, '2020-09-05 08:51:43');
INSERT INTO `sys_user_operation_log` VALUES ('324173f861b47be868fc12ced31cd814', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1428, '2020-09-06 07:26:37');
INSERT INTO `sys_user_operation_log` VALUES ('3259a0b19a069ac58e5d4270479a2700', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 11:28:58');
INSERT INTO `sys_user_operation_log` VALUES ('329a1687da5221dea0077192bb97019f', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 14:53:41');
INSERT INTO `sys_user_operation_log` VALUES ('32ee7a85f6cc3451d4dab9f6daf904c4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2115, '2022-06-17 01:13:14');
INSERT INTO `sys_user_operation_log` VALUES ('33098bc3afe02844d62445d7b09e26e4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1492, '2020-04-08 07:16:32');
INSERT INTO `sys_user_operation_log` VALUES ('33124dc6bc751d5bc998a2cee3c148be', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 172, '2020-11-07 17:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('331af7ab6f2d11cb2d6b844e27050d2e', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 69, '2020-04-13 07:44:51');
INSERT INTO `sys_user_operation_log` VALUES ('33507d81aba34b673604413b3787e429', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 3, '2022-06-15 05:40:59');
INSERT INTO `sys_user_operation_log` VALUES ('3360cb6928e009379912365ac597186e', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 171, '2020-11-07 17:12:55');
INSERT INTO `sys_user_operation_log` VALUES ('338b57300224cfc23952d39f04380de1', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 58, '2020-05-07 05:45:21');
INSERT INTO `sys_user_operation_log` VALUES ('33ae95e50249270372f115a0032a325b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 627, '2023-06-27 00:41:49');
INSERT INTO `sys_user_operation_log` VALUES ('34448d682928c7f9c0793a696abe803b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 193, '2020-04-17 07:37:58');
INSERT INTO `sys_user_operation_log` VALUES ('3479f258a9fda0cb300425c7c055eece', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 181, '2020-05-14 03:12:52');
INSERT INTO `sys_user_operation_log` VALUES ('34cf0fdd6d8f92ac1ee6c3f6e1d0b783', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 187, '2022-06-17 00:48:38');
INSERT INTO `sys_user_operation_log` VALUES ('35041ca32da21ace72ff74bc8e4c6f19', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-28 08:52:10');
INSERT INTO `sys_user_operation_log` VALUES ('353916f9c3f9aa26bdab9ed80ccfc107', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 265, '2020-04-17 03:49:46');
INSERT INTO `sys_user_operation_log` VALUES ('355d50dfaceb2b17101beaa845543efa', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 67, '2020-05-11 07:52:45');
INSERT INTO `sys_user_operation_log` VALUES ('35b0100e505f6bd9040d3a44d4fde025', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 141, '2020-04-17 08:51:18');
INSERT INTO `sys_user_operation_log` VALUES ('35c96882bdfdf0b3f4e2c69636ba6b07', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 8, '2023-06-30 14:46:53');
INSERT INTO `sys_user_operation_log` VALUES ('35f1462b94fcb571cb5d3970fcf09f69', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 132, '2023-06-27 22:36:02');
INSERT INTO `sys_user_operation_log` VALUES ('36520c0d6b5446006035253a2f5c3952', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 132, '2022-06-16 15:38:04');
INSERT INTO `sys_user_operation_log` VALUES ('3699d70379515c5dd43adbe2c9b4458f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 330, '2020-03-21 08:07:40');
INSERT INTO `sys_user_operation_log` VALUES ('36a26bcc448a574efe5352e5c7d3f202', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-30 13:40:03');
INSERT INTO `sys_user_operation_log` VALUES ('37139c90c422a67e68140c2728dfb900', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 228, '2020-05-18 07:38:39');
INSERT INTO `sys_user_operation_log` VALUES ('372634b8819350b461f9a3e8be5e9207', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 414, '2023-06-29 17:46:45');
INSERT INTO `sys_user_operation_log` VALUES ('3796ede92bcbcf058bed4a1cf9779ee5', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 49, '2022-06-16 08:44:05');
INSERT INTO `sys_user_operation_log` VALUES ('379da0c9e8a541808b91261ff3495ddf', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-27 14:04:22');
INSERT INTO `sys_user_operation_log` VALUES ('37bc4718e2cf940f26b09b84b293f950', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 520, '2022-06-15 16:51:14');
INSERT INTO `sys_user_operation_log` VALUES ('37e30eb327bcafbabf8d3d2c437c8ea3', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 8, '2023-06-30 15:11:41');
INSERT INTO `sys_user_operation_log` VALUES ('38319cdb9199ffbb501d70eef7f6a111', 'admin', '代码生成', '新增', 'save', '{}', '127.0.0.1', 217, '2020-09-06 06:13:10');
INSERT INTO `sys_user_operation_log` VALUES ('3834d544badb1e57a354c724301673f0', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 09:39:23');
INSERT INTO `sys_user_operation_log` VALUES ('3851e7232b6262d17659756ac0005e62', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 15069, '2020-04-21 10:22:04');
INSERT INTO `sys_user_operation_log` VALUES ('385b35319e317dc18d30cbc1b3dff3e7', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 16, '2023-06-30 13:40:06');
INSERT INTO `sys_user_operation_log` VALUES ('3861926796a6a814bf79f0b286ec5f99', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 6, '2023-06-30 14:46:15');
INSERT INTO `sys_user_operation_log` VALUES ('386a3f72e7fa201eec7c170e5c7720bf', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 7, '2023-06-30 15:12:53');
INSERT INTO `sys_user_operation_log` VALUES ('387c81bddd44225823fabb3d1c75c5c0', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 26, '2023-06-30 14:59:12');
INSERT INTO `sys_user_operation_log` VALUES ('38f8ef7f090850421a8ea017bef07a39', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 183, '2020-11-07 17:13:24');
INSERT INTO `sys_user_operation_log` VALUES ('3932fd49ab86a702354bd7dd22a53058', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1534, '2020-04-07 07:01:07');
INSERT INTO `sys_user_operation_log` VALUES ('3976061fb8dbc2d9ae5a1a77df363184', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:34:53');
INSERT INTO `sys_user_operation_log` VALUES ('3991751adf5c3b4c22f3fec6a29fffa3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1737, '2020-05-09 01:20:30');
INSERT INTO `sys_user_operation_log` VALUES ('39e04299d90d4bd959bd7444f295fe04', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 21, '2020-04-13 07:56:11');
INSERT INTO `sys_user_operation_log` VALUES ('39f50215a12b3337d3262ec5f90cc3fa', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 70, '2020-05-08 03:05:15');
INSERT INTO `sys_user_operation_log` VALUES ('3a0324a5f1fa3a5f8896ec3e5f4ac56f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 245, '2020-03-22 07:48:22');
INSERT INTO `sys_user_operation_log` VALUES ('3a2aefd333d31a3d500a0dd79065ca02', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 18, '2023-06-30 13:40:14');
INSERT INTO `sys_user_operation_log` VALUES ('3a305bd627fe12ba32400bf35afad3b4', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 36, '2023-06-30 09:32:20');
INSERT INTO `sys_user_operation_log` VALUES ('3a905ea8406304294bec2d28e19ed213', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106\"}', '127.0.0.1', 1119, '2023-06-30 10:28:10');
INSERT INTO `sys_user_operation_log` VALUES ('3a94fb033868659d9820c42acc78030f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1247, '2023-06-26 06:44:16');
INSERT INTO `sys_user_operation_log` VALUES ('3ab831c943fb771d51b0dc4a67a720dc', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 47, '2020-07-26 08:58:34');
INSERT INTO `sys_user_operation_log` VALUES ('3ad4417dd2c010bdd63ce71116e7ea22', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000703\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 83, '2020-11-07 17:01:52');
INSERT INTO `sys_user_operation_log` VALUES ('3ad6d1e48815cc2089fb5f9a86749f9d', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 299, '2020-08-11 02:06:05');
INSERT INTO `sys_user_operation_log` VALUES ('3af0b0e9b1c785f13aa3c01f53179349', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997?_=1688032025464?_=1688032025608?_=1688032025748\"}', '127.0.0.1', 16, '2023-06-29 17:47:06');
INSERT INTO `sys_user_operation_log` VALUES ('3b5a56c505563c808e7b67ae0b0b8d97', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-27 15:22:35');
INSERT INTO `sys_user_operation_log` VALUES ('3b98e1eae3873caf91f2fd9fbec480b4', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 22:37:00');
INSERT INTO `sys_user_operation_log` VALUES ('3bff36438a7164da40709682edab4067', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 160, '2020-04-13 02:29:47');
INSERT INTO `sys_user_operation_log` VALUES ('3c3af9f117be8fa263498607987b60b0', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 119, '2020-11-07 17:13:13');
INSERT INTO `sys_user_operation_log` VALUES ('3c4d8d4f1eaa9c23d1cb66dc172cadbc', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 10:44:57');
INSERT INTO `sys_user_operation_log` VALUES ('3c56114f7fb64692a0c6f4e48c5bdb2d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 14, '2023-06-30 13:40:03');
INSERT INTO `sys_user_operation_log` VALUES ('3c6ab7d8cd766724c6db31febe0a0aad', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"东莞分公司\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-08-20 09:13:21');
INSERT INTO `sys_user_operation_log` VALUES ('3cb5bad1086fd2e73e0a152134b01ef9', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 59, '2020-05-08 03:05:20');
INSERT INTO `sys_user_operation_log` VALUES ('3d4b5e1aefe77edd61bc58dcd075c14e', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-28 20:41:15');
INSERT INTO `sys_user_operation_log` VALUES ('3dac50a256ba0713c222403e9443c1e0', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 7043, '2020-04-21 10:29:07');
INSERT INTO `sys_user_operation_log` VALUES ('3dad9d5e679b9a30eed1f2dbf3e8872d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 185, '2020-09-03 01:47:31');
INSERT INTO `sys_user_operation_log` VALUES ('3dda4134ad54c092c635b9dc90f63878', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 173, '2020-09-03 01:43:54');
INSERT INTO `sys_user_operation_log` VALUES ('3e1b5e4a71e5bbae852cff84f40f75b4', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 243, '2020-04-07 07:01:14');
INSERT INTO `sys_user_operation_log` VALUES ('3e522c9f18d864b09554e0af43ab91a4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 348, '2020-05-07 08:21:56');
INSERT INTO `sys_user_operation_log` VALUES ('3e68db1bc7d21d39dd64ed6f1202de32', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2020-03-23 05:26:25');
INSERT INTO `sys_user_operation_log` VALUES ('3e8c75f94eadefb7f9b200b76a2f850d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 540, '2020-04-21 08:29:08');
INSERT INTO `sys_user_operation_log` VALUES ('3f1cf94a5617462e73c26ea70031abea', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 55, '2020-11-07 17:09:44');
INSERT INTO `sys_user_operation_log` VALUES ('3f710660bc55600e86e3e26a480bd5c9', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 264, '2020-05-09 10:29:04');
INSERT INTO `sys_user_operation_log` VALUES ('40e43e1ba2df92a546d6ae5e6c34db67', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2088, '2020-04-17 03:48:56');
INSERT INTO `sys_user_operation_log` VALUES ('40ed59d24c9b843498aa3d588163846c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1138, '2020-09-06 10:05:32');
INSERT INTO `sys_user_operation_log` VALUES ('40f0e475de36a92a4d84aaa00bbfa172', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688103584848\"}', '127.0.0.1', 16, '2023-06-30 13:39:45');
INSERT INTO `sys_user_operation_log` VALUES ('4101664e6f65003acef4777ac172375b', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 35, '2023-06-28 10:16:46');
INSERT INTO `sys_user_operation_log` VALUES ('41498c7c1874b6115385d0934465aafa', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 20, '2023-06-27 22:36:01');
INSERT INTO `sys_user_operation_log` VALUES ('41631ccc4e2d43e083f26c23379ca871', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 155, '2020-09-07 10:03:47');
INSERT INTO `sys_user_operation_log` VALUES ('419cbc9b1a7b62ddcc6d025ce5cf53e9', 'admin', '用户管理', '用户模板', 'template', '{}', '127.0.0.1', 126, '2020-03-16 08:05:01');
INSERT INTO `sys_user_operation_log` VALUES ('41d4c0c5b32679681feda96f800371bd', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 162, '2020-09-06 22:06:23');
INSERT INTO `sys_user_operation_log` VALUES ('41e094fbe4a47283305eabcf7e646850', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 09:25:17');
INSERT INTO `sys_user_operation_log` VALUES ('41ff4f313d6bda87680fc7f81bbe97b8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 36, '2022-06-16 08:46:43');
INSERT INTO `sys_user_operation_log` VALUES ('42146bb3ba1513dd6fd597f06daf97e8', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 96186, '2020-04-21 10:24:51');
INSERT INTO `sys_user_operation_log` VALUES ('4245b3ab7f125463ce7f7d23eb2f6dce', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 16, '2023-06-27 03:05:32');
INSERT INTO `sys_user_operation_log` VALUES ('427cfb896c4b2b4572744ea2d331c3a7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2340, '2020-08-31 02:25:01');
INSERT INTO `sys_user_operation_log` VALUES ('427fe994766d946fc5f6ab289cb2b1df', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1420, '2020-09-02 13:54:48');
INSERT INTO `sys_user_operation_log` VALUES ('428dfb6b6ddf7b346e3ddd26488311a7', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000467\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-05-18 07:40:38');
INSERT INTO `sys_user_operation_log` VALUES ('42d129312e2c98420193baf80e1e627a', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 157, '2020-09-06 21:49:57');
INSERT INTO `sys_user_operation_log` VALUES ('42e942d985f4549f27c41ec0d3501679', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 15:24:09');
INSERT INTO `sys_user_operation_log` VALUES ('4323a1dc2929d1ae74d1870a0d175706', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 27, '2020-04-13 07:17:31');
INSERT INTO `sys_user_operation_log` VALUES ('432c8c1012b82e8b1b9ce387ffdb8416', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 137, '2020-05-07 10:00:58');
INSERT INTO `sys_user_operation_log` VALUES ('436607a6160647d8333eec0d981aceba', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 391, '2020-04-16 08:27:52');
INSERT INTO `sys_user_operation_log` VALUES ('43814f7b88b632e112a8a72b44fbe44f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 371, '2020-03-22 14:31:18');
INSERT INTO `sys_user_operation_log` VALUES ('43e0325ab4490ee452a6d2d282cc0aa7', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 63, '2020-03-23 05:26:22');
INSERT INTO `sys_user_operation_log` VALUES ('448ff1632f475f6258171a0226b3856e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1311, '2020-09-05 08:51:39');
INSERT INTO `sys_user_operation_log` VALUES ('44a5fa1c751642cf7da234563899c660', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1372, '2020-04-09 02:51:30');
INSERT INTO `sys_user_operation_log` VALUES ('44bf1cae9dc2bf3e6276017927cc967e', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 08:52:11');
INSERT INTO `sys_user_operation_log` VALUES ('44c749b88e805282d7d9c4b1d18874d7', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 9, '2023-06-30 15:11:55');
INSERT INTO `sys_user_operation_log` VALUES ('44e84b83f83ee1be6a7cd60b5aba0aa8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1558, '2020-05-08 01:32:24');
INSERT INTO `sys_user_operation_log` VALUES ('44f5cb2a820b9def3d1d3ef3a0b90c5f', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-27 15:23:20');
INSERT INTO `sys_user_operation_log` VALUES ('457e68da23ff716bd20c1842ea147fec', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 15:24:06');
INSERT INTO `sys_user_operation_log` VALUES ('459eb0daad93906bed55873700a7f074', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 22, '2022-06-16 08:46:43');
INSERT INTO `sys_user_operation_log` VALUES ('45c02cf6c791bcece78a5bffe2d0ff07', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 13:53:18');
INSERT INTO `sys_user_operation_log` VALUES ('45ed9f175f6debe031612b71abaf02b8', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 3, '2022-06-16 08:44:24');
INSERT INTO `sys_user_operation_log` VALUES ('45f4cb3a30e7c5a75dc6d7a45f5ba08f', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 147, '2020-05-09 10:30:45');
INSERT INTO `sys_user_operation_log` VALUES ('45f982103c3e48b831d8ae745580dd32', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 51, '2020-05-08 02:15:05');
INSERT INTO `sys_user_operation_log` VALUES ('46886a7a6c60c62f68541ebe015c3891', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:03:33');
INSERT INTO `sys_user_operation_log` VALUES ('46b334cd3e093f30bdfcf19f12d70229', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217\"}', '127.0.0.1', 16, '2023-06-30 10:28:10');
INSERT INTO `sys_user_operation_log` VALUES ('46f71896a69b5c86d60697c2038fbfc6', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 282, '2020-09-06 22:00:59');
INSERT INTO `sys_user_operation_log` VALUES ('470420bb246f7a9c5b382120fc0206ba', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:02:05');
INSERT INTO `sys_user_operation_log` VALUES ('47a4782266700879b41d371a5a54802c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 254, '2020-10-04 16:56:13');
INSERT INTO `sys_user_operation_log` VALUES ('47aac4892f4ecc968865cabbd23ba2bb', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"OR1200000387\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 103, '2020-05-18 07:38:17');
INSERT INTO `sys_user_operation_log` VALUES ('47adedcae059b2b7cef3bd30536ccedf', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 4798, '2022-06-15 17:18:38');
INSERT INTO `sys_user_operation_log` VALUES ('47bf70df1dad70a134a1f294c8755772', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 10:32:07');
INSERT INTO `sys_user_operation_log` VALUES ('47d3564a14c09eb986543e4551bbf13d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 369, '2023-06-26 06:20:23');
INSERT INTO `sys_user_operation_log` VALUES ('48024376a04a7fe465f9fa4aca332411', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 09:24:50');
INSERT INTO `sys_user_operation_log` VALUES ('48045ac7474a5f4a4cc7453e867b1fd6', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1168, '2020-10-24 03:50:30');
INSERT INTO `sys_user_operation_log` VALUES ('48266373229092afa1804b64ed1d889d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 93, '2020-04-17 08:51:18');
INSERT INTO `sys_user_operation_log` VALUES ('483ca71bf37cf957cd15a46984123a95', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-27 15:23:11');
INSERT INTO `sys_user_operation_log` VALUES ('484a3bd5c4dd6474d7d35d6a8b3d965c', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 10, '2023-06-30 11:40:18');
INSERT INTO `sys_user_operation_log` VALUES ('488bae5e1758658fcc128a3a6a7be2a2', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 290, '2020-05-11 07:52:47');
INSERT INTO `sys_user_operation_log` VALUES ('48ae91db791b104e88d3fbbd0d8ffc03', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 102, '2020-09-03 02:22:22');
INSERT INTO `sys_user_operation_log` VALUES ('49b2ccd807a893bbdc0085ee9a37fcaa', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 110, '2020-04-20 07:37:33');
INSERT INTO `sys_user_operation_log` VALUES ('49e181ac3c8b945242308322bc1eddbe', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 122, '2020-04-07 08:09:29');
INSERT INTO `sys_user_operation_log` VALUES ('4a48e3f171aa371e91a704bf12a8064f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1856, '2020-10-04 16:55:37');
INSERT INTO `sys_user_operation_log` VALUES ('4ab1d43c994d11bb2a51b7088ab94584', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 123, '2020-07-28 09:01:25');
INSERT INTO `sys_user_operation_log` VALUES ('4ab2eb87f16a0b81fac90f7a0978e69e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 171, '2020-04-13 06:48:03');
INSERT INTO `sys_user_operation_log` VALUES ('4ad30f6f48fc7021436162b4a7910000', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1674, '2020-04-07 10:01:59');
INSERT INTO `sys_user_operation_log` VALUES ('4b1a032b5456b67b749a541644314be9', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2544, '2022-06-17 00:48:35');
INSERT INTO `sys_user_operation_log` VALUES ('4b4244c9e35da14fdcf12bc28107fa3d', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 01:25:19');
INSERT INTO `sys_user_operation_log` VALUES ('4b942f6d5f647c9e7dccbe0d0b2e1401', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-07 05:48:17');
INSERT INTO `sys_user_operation_log` VALUES ('4bde3d80ed1d9bb4e83a85ef2e6569db', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 33, '2020-11-07 16:58:20');
INSERT INTO `sys_user_operation_log` VALUES ('4be1db314d5479e5387253014698fdae', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 260, '2020-08-31 02:48:34');
INSERT INTO `sys_user_operation_log` VALUES ('4c013caa3faaa10162a75a9bd3b9a438', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-28 10:32:09');
INSERT INTO `sys_user_operation_log` VALUES ('4c1523322ab900b29f3f2cd82f8ba563', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 49, '2020-10-27 09:01:23');
INSERT INTO `sys_user_operation_log` VALUES ('4c47977e76273a49a41ba2999e00ff28', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 155, '2020-05-08 01:35:49');
INSERT INTO `sys_user_operation_log` VALUES ('4c847090f8afb001e8c52f1b9b3edd8c', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 181, '2020-11-07 17:12:31');
INSERT INTO `sys_user_operation_log` VALUES ('4c8d315cdc0bb04375e2ec51364ce3e4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 322, '2020-03-23 05:25:52');
INSERT INTO `sys_user_operation_log` VALUES ('4c8fca6c8f59e925d504fce6dafdad5f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1331, '2020-04-29 13:41:54');
INSERT INTO `sys_user_operation_log` VALUES ('4ccd1a4441ce34387125b814b3080d6c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 211, '2020-04-13 02:35:51');
INSERT INTO `sys_user_operation_log` VALUES ('4d05b81019b5197f8c7718991d584f4b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1117, '2020-09-07 09:27:37');
INSERT INTO `sys_user_operation_log` VALUES ('4d70076f8427e8fb2ee8a699c9af5267', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 22:34:49');
INSERT INTO `sys_user_operation_log` VALUES ('4d76e2f0f1c9c82e515bd4e36e80ce8f', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 331, '2020-05-14 03:09:37');
INSERT INTO `sys_user_operation_log` VALUES ('4d8dc54b320afb03223d8f601dd50058', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 247, '2020-05-07 04:32:30');
INSERT INTO `sys_user_operation_log` VALUES ('4d92709f2f18da54f3290eeec64bd280', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 11:08:59');
INSERT INTO `sys_user_operation_log` VALUES ('4dc57cfd589ec362f6fa3319c4483c19', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 347, '2020-10-24 03:46:54');
INSERT INTO `sys_user_operation_log` VALUES ('4de06aee5c23820370322415c87fe00c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 184, '2020-09-03 01:44:28');
INSERT INTO `sys_user_operation_log` VALUES ('4e4572f795ed6cb31cfee8b7f078e96e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 2083, '2020-05-14 03:09:36');
INSERT INTO `sys_user_operation_log` VALUES ('4e7b61bc5ceb567a6a1163658f694437', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 30, '2020-11-07 17:06:03');
INSERT INTO `sys_user_operation_log` VALUES ('4ea82164a8712c3bc08e46236f2c9dfb', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1117, '2020-10-24 03:51:24');
INSERT INTO `sys_user_operation_log` VALUES ('4ec33251cb0c24e4f665780ffbc2659d', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 224, '2020-08-11 02:07:59');
INSERT INTO `sys_user_operation_log` VALUES ('4ee8195ce0036ae86f57f0acf7b2e396', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 331, '2020-05-14 10:38:16');
INSERT INTO `sys_user_operation_log` VALUES ('4ee836ab4680a2bf461f9399096c8c52', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 29, '2020-05-18 07:39:55');
INSERT INTO `sys_user_operation_log` VALUES ('4f16d9707a188fa6d38b849d2db5f138', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 20, '2023-06-30 13:40:17');
INSERT INTO `sys_user_operation_log` VALUES ('4f247d95113cdcdc006bf1130d0925ba', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:02:19');
INSERT INTO `sys_user_operation_log` VALUES ('4f5c3a18842519110ee716f6dfd88e77', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 09:57:21');
INSERT INTO `sys_user_operation_log` VALUES ('4fabe9637b3b567e6e1f05e18a418827', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 83, '2020-04-13 08:06:20');
INSERT INTO `sys_user_operation_log` VALUES ('4ffacab40daeb01074480929fd01ea3d', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"OR1200000703\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 273, '2020-05-18 07:38:20');
INSERT INTO `sys_user_operation_log` VALUES ('501e0af3b7aec9624b273b7656d0ee2c', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 253, '2020-05-08 03:51:59');
INSERT INTO `sys_user_operation_log` VALUES ('503e2defd700bf7118216a45039a8ad2', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 75, '2020-05-07 05:41:59');
INSERT INTO `sys_user_operation_log` VALUES ('50455cc85674fa95559016c64fe24746', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 29, '2022-06-16 08:44:58');
INSERT INTO `sys_user_operation_log` VALUES ('5072e7291946a00e9b7ebe370e65883c', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 11:39:20');
INSERT INTO `sys_user_operation_log` VALUES ('50778d9d4e1e73e243bb6820226fe6cf', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 09:28:26');
INSERT INTO `sys_user_operation_log` VALUES ('507e90be7e6d72bee54f4e66b169e014', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 259, '2020-04-21 03:42:31');
INSERT INTO `sys_user_operation_log` VALUES ('5100f265057836cd6de78228f785babb', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 700, '2022-06-15 09:26:25');
INSERT INTO `sys_user_operation_log` VALUES ('5104846dc4fa06722bc46ad7b0604010', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 457, '2023-06-30 00:51:47');
INSERT INTO `sys_user_operation_log` VALUES ('512440495343103335ee126a0d16916c', 'admin', '机构管理', '删除', 'delete', '{}', '127.0.0.1', 126, '2020-08-20 09:13:30');
INSERT INTO `sys_user_operation_log` VALUES ('5141be8921e4a7aae7d4e79d1e2ff56b', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 92, '2023-06-28 16:55:19');
INSERT INTO `sys_user_operation_log` VALUES ('5187acf71972ed18159e2fde3b82e277', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 148, '2020-09-07 09:34:41');
INSERT INTO `sys_user_operation_log` VALUES ('518e9b50a88d6d9741f40b3158a6763e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 249, '2020-09-06 10:19:08');
INSERT INTO `sys_user_operation_log` VALUES ('51d9bbb15b3b14c3af63d5768d52859e', 'admin', '机构管理', '恢复', 'recovery', '{}', '127.0.0.1', 120, '2020-08-20 09:13:33');
INSERT INTO `sys_user_operation_log` VALUES ('5227707280db4ae6272f8602528be0ef', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 1866, '2020-04-21 10:26:34');
INSERT INTO `sys_user_operation_log` VALUES ('52a1e11a2f953fff99991b054302ee69', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 251, '2023-06-30 13:39:25');
INSERT INTO `sys_user_operation_log` VALUES ('52b226f064a17c91610adc471a9f4788', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 154, '2020-04-21 10:07:39');
INSERT INTO `sys_user_operation_log` VALUES ('52b5f0dcae9d5c1357bed0ed41ee54bc', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217?_=1688092090373\"}', '127.0.0.1', 17, '2023-06-30 10:28:10');
INSERT INTO `sys_user_operation_log` VALUES ('52c8d84cf3931446ca953269ca2aebd6', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:34:59');
INSERT INTO `sys_user_operation_log` VALUES ('52e7ca740f07056a4f6c9f5a09e13da2', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 251, '2022-06-15 05:58:38');
INSERT INTO `sys_user_operation_log` VALUES ('52f572ab5f587073edf251cc7a0cc0e8', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 266, '2020-05-08 03:08:24');
INSERT INTO `sys_user_operation_log` VALUES ('531cbc7549d7196c7f697fa529b82a77', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:45:39');
INSERT INTO `sys_user_operation_log` VALUES ('532f838566569dff8939db2dc3820544', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-30 13:54:48');
INSERT INTO `sys_user_operation_log` VALUES ('533bdfaaf935b5de0cb22fdf8869627f', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:05:18');
INSERT INTO `sys_user_operation_log` VALUES ('5373b2fff9f63978dbe7fb9ea84ce522', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 09:33:02');
INSERT INTO `sys_user_operation_log` VALUES ('537f58d5f9840e311a2994d51e2c77d1', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 139, '2023-06-27 22:49:35');
INSERT INTO `sys_user_operation_log` VALUES ('53bab69e9d986bcf6bd0d0d1cb62cd36', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 155, '2020-03-16 08:04:10');
INSERT INTO `sys_user_operation_log` VALUES ('53d30f20e4a35d06ed9d24429c0c4dc6', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"OR1500058289\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 84, '2020-05-18 07:38:16');
INSERT INTO `sys_user_operation_log` VALUES ('549a673efafd8ef97c5390a622788140', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 24, '2023-06-29 19:19:59');
INSERT INTO `sys_user_operation_log` VALUES ('54a2a020dcf66eb2581f8f8a85b67c39', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 851, '2020-08-10 07:42:49');
INSERT INTO `sys_user_operation_log` VALUES ('54b75dc21ab9ac1b3d23f4e77f9793f9', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 35, '2020-09-07 09:35:14');
INSERT INTO `sys_user_operation_log` VALUES ('54effc25bcea7747e457038f78dae789', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-30 14:38:36');
INSERT INTO `sys_user_operation_log` VALUES ('553f407a44faf79c71b7b730ec33ef6f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 349, '2020-05-18 07:37:33');
INSERT INTO `sys_user_operation_log` VALUES ('555681920e0618489dfcb946a14c63f2', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 54, '2020-05-08 02:08:56');
INSERT INTO `sys_user_operation_log` VALUES ('5573f96aeabd36c6439c246536f9f566', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1222, '2020-09-05 06:50:39');
INSERT INTO `sys_user_operation_log` VALUES ('55a9917c2e69322eb0324e85b11c4b16', 'root', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 24, '2022-06-17 01:13:27');
INSERT INTO `sys_user_operation_log` VALUES ('55d18931704c3ea2cefc30b4cf57bc46', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217?_=1688092090373?_=1688092090547?_=1688092090705?_=1688092090858?_=1688092091046\"}', '127.0.0.1', 15, '2023-06-30 10:28:11');
INSERT INTO `sys_user_operation_log` VALUES ('55db57fcd6e518655587031164261d52', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 15:24:11');
INSERT INTO `sys_user_operation_log` VALUES ('55ed475a9e6df28c389c4fbe178bcbe1', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 142, '2023-06-29 08:21:19');
INSERT INTO `sys_user_operation_log` VALUES ('56b6acdc92375ec80acf9171a5c6c313', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 24, '2023-06-27 03:05:32');
INSERT INTO `sys_user_operation_log` VALUES ('573324b75605a6c68ab18f71b79c1eee', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 197, '2020-11-07 17:14:12');
INSERT INTO `sys_user_operation_log` VALUES ('5743d6a14269c194d6738e8cf80f742e', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 4, '2023-06-30 14:46:54');
INSERT INTO `sys_user_operation_log` VALUES ('5795399f34c3645f8974fc75bfa28602', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 14:13:06');
INSERT INTO `sys_user_operation_log` VALUES ('57c43cc135d2443dd706b607c23103ba', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 156, '2020-11-07 16:58:12');
INSERT INTO `sys_user_operation_log` VALUES ('57e4b0c0870b99f10fb3f3e6e2fea3f4', 'admin', '用户管理', '列表', 'page', '{\"phone\":\"\",\"nickName\":\"\",\"disable\":\"\",\"roles\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 42, '2022-06-17 01:13:10');
INSERT INTO `sys_user_operation_log` VALUES ('57e4e288283ba211aed59d26ae40b21c', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 12, '2023-06-29 09:24:02');
INSERT INTO `sys_user_operation_log` VALUES ('5814d02c78855d4a60b3b45fd5de0d15', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1578, '2020-04-21 03:42:29');
INSERT INTO `sys_user_operation_log` VALUES ('5876875f33899fb5f4ececbaab84ebaa', 'root', '用户管理', '修改', 'update', '{}', '127.0.0.1', 34, '2022-06-17 01:13:48');
INSERT INTO `sys_user_operation_log` VALUES ('587e660cd723021255c9bc1776d65291', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 77, '2020-04-13 08:04:21');
INSERT INTO `sys_user_operation_log` VALUES ('58b9ce41a87f584a9c057d3f19fd440b', 'admin', 'DemoTest', '删除', 'delete', '{}', '', 8, '2022-06-17 00:48:00');
INSERT INTO `sys_user_operation_log` VALUES ('58c1a42989ff7dd1e5a9149704dbe266', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-29 08:21:32');
INSERT INTO `sys_user_operation_log` VALUES ('59348021b1943eccdbdbf686057ccda1', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 164, '2020-05-07 10:01:05');
INSERT INTO `sys_user_operation_log` VALUES ('593abb38dcd4cbc334563ccbeb00412b', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-28 08:24:13');
INSERT INTO `sys_user_operation_log` VALUES ('593d907fbb91957b4d9d215da0ac95cc', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 232, '2023-06-30 14:27:34');
INSERT INTO `sys_user_operation_log` VALUES ('5940898a9720c7eff095bae2a740dd18', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 76, '2020-04-13 07:56:23');
INSERT INTO `sys_user_operation_log` VALUES ('5946a450fed8c91093cf00a3705c2bde', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 66, '2020-08-20 09:43:51');
INSERT INTO `sys_user_operation_log` VALUES ('5984ca6d4dfced22e367ea9d9d043d98', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"2\"}', '127.0.0.1', 105, '2020-04-08 07:33:00');
INSERT INTO `sys_user_operation_log` VALUES ('599c9adbf3ce5425db830feeb048eb5e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 282, '2020-07-27 07:56:48');
INSERT INTO `sys_user_operation_log` VALUES ('59e6ce41033841ede18bb329029f2a1a', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 109, '2020-04-08 07:48:29');
INSERT INTO `sys_user_operation_log` VALUES ('5a252bad250368aa4258955ad8d3a955', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 503, '2023-06-28 08:23:41');
INSERT INTO `sys_user_operation_log` VALUES ('5a65a34c00f9b8043542a109c1c9d48d', 'admin', '登录模块', '用户登录', 'login', '{}', '192.168.213.1', 1411, '2020-04-16 07:35:10');
INSERT INTO `sys_user_operation_log` VALUES ('5b21c283cebc240d96d11d58b861e2ec', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 168, '2020-11-07 17:12:30');
INSERT INTO `sys_user_operation_log` VALUES ('5b3352f5b7794fd1d8f8e89363ae4ced', 'admin', '查询用户列表', 'openApi', 'userList', '{}', '127.0.0.1', 82, '2020-09-06 22:16:00');
INSERT INTO `sys_user_operation_log` VALUES ('5b345a4868f54be0a5551b7321d76e24', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325122003077693442\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 117, '2020-11-07 17:40:56');
INSERT INTO `sys_user_operation_log` VALUES ('5b80924dc0e1ad90a3cadd0318b3f71c', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 11:16:05');
INSERT INTO `sys_user_operation_log` VALUES ('5b931db1f18af2de9f1e9f212a7b1047', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 22, '2020-04-07 07:13:23');
INSERT INTO `sys_user_operation_log` VALUES ('5ba9069349ea33982626744cf75e01f9', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 76, '2020-05-08 07:16:10');
INSERT INTO `sys_user_operation_log` VALUES ('5c101e324980a140d76fdbb5b49cceca', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 08:52:16');
INSERT INTO `sys_user_operation_log` VALUES ('5c9c35206644efaa6a1b293167cdf2cf', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 37, '2022-06-16 08:44:34');
INSERT INTO `sys_user_operation_log` VALUES ('5ccb3978b300f7c30ec7b53e51df2978', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 407, '2020-05-07 09:03:39');
INSERT INTO `sys_user_operation_log` VALUES ('5ce80c1c328a69989cbe168a3f0d7ac9', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 196, '2020-04-13 06:47:46');
INSERT INTO `sys_user_operation_log` VALUES ('5d170fae7978aa2a4cf0b70b4be21bd1', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 08:56:38');
INSERT INTO `sys_user_operation_log` VALUES ('5d3d8ea99efe9fec4d9de37e7a1148b9', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 111, '2020-09-02 07:48:58');
INSERT INTO `sys_user_operation_log` VALUES ('5e20f817aa7dd21e49ddf3a0a9753bd5', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:38:26');
INSERT INTO `sys_user_operation_log` VALUES ('5e508e748660cd39f52b1d9f5e822a08', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 21:45:02');
INSERT INTO `sys_user_operation_log` VALUES ('5e7498dc74e695c3076413b923cc3c9b', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 126, '2020-11-07 17:14:02');
INSERT INTO `sys_user_operation_log` VALUES ('5ea84ce17e28f64963f189ee5596dbfc', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-27 15:31:17');
INSERT INTO `sys_user_operation_log` VALUES ('5eb77432b8f2fe8eb5fd54bcb765afeb', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 184, '2020-03-22 13:13:17');
INSERT INTO `sys_user_operation_log` VALUES ('5ed95a85c35b8d588c346235a6c62fa3', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 186, '2020-08-12 01:53:36');
INSERT INTO `sys_user_operation_log` VALUES ('5f11cf5c9b5dcd10be101450cca72ecd', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 270, '2020-07-29 07:10:43');
INSERT INTO `sys_user_operation_log` VALUES ('5f3fa8ffcc4d5ebd925bfc72b1076be8', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 303, '2020-09-02 13:56:31');
INSERT INTO `sys_user_operation_log` VALUES ('5f7d0bb045eddc9ca7f86201ccb8d767', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 141, '2020-10-24 03:51:29');
INSERT INTO `sys_user_operation_log` VALUES ('5f93f22897a3c1d99135be1d76ac8873', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 175, '2020-09-05 08:56:35');
INSERT INTO `sys_user_operation_log` VALUES ('6014a76963f9aad8872ecdc4fadc54d0', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 13:34:33');
INSERT INTO `sys_user_operation_log` VALUES ('60243a2487e0e62494302e2047223932', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 189, '2020-04-13 07:55:04');
INSERT INTO `sys_user_operation_log` VALUES ('6085bbc402feb0990f1b2f96dd214996', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-27 15:17:53');
INSERT INTO `sys_user_operation_log` VALUES ('60afe7697ac1958894b799ef54d95d9c', 'admin', '查询用户列表', 'openApi', 'userList', '{}', '127.0.0.1', 63, '2020-09-07 09:29:22');
INSERT INTO `sys_user_operation_log` VALUES ('60da0237977603e913f046ae1ded473a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 332, '2020-10-04 16:56:08');
INSERT INTO `sys_user_operation_log` VALUES ('613590cbff458904d0612d8cd362f8a6', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 174, '2020-03-22 14:31:20');
INSERT INTO `sys_user_operation_log` VALUES ('614dc6a59c4f9775883bef9228626bef', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 135, '2020-04-17 05:47:55');
INSERT INTO `sys_user_operation_log` VALUES ('61544cf225f55a18d995be2331e8a308', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 30, '2022-06-16 08:44:17');
INSERT INTO `sys_user_operation_log` VALUES ('6165987cc980dd5480af482e1a73f98c', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"4444\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 31, '2022-06-15 05:40:51');
INSERT INTO `sys_user_operation_log` VALUES ('6179ac91d4c297c7f948f2fe956660d1', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 11:15:26');
INSERT INTO `sys_user_operation_log` VALUES ('61a38ac2f77a90241785644ac6e63697', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 239, '2020-08-01 06:07:17');
INSERT INTO `sys_user_operation_log` VALUES ('61b3cbb30d1fd8814ff331aefc475394', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 65, '2020-05-08 03:07:06');
INSERT INTO `sys_user_operation_log` VALUES ('61d804c831c78ccc27074e4ec3da999c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 226, '2020-04-16 08:26:45');
INSERT INTO `sys_user_operation_log` VALUES ('62284cd655140f33af99cd51cdf493a7', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 7, '2023-06-30 15:11:41');
INSERT INTO `sys_user_operation_log` VALUES ('6252d6929af6707ce2c81cf99b0d0388', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 8, '2023-06-30 15:11:53');
INSERT INTO `sys_user_operation_log` VALUES ('626a90ab9238807909b1a9ab279a4891', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 347, '2023-06-28 20:34:21');
INSERT INTO `sys_user_operation_log` VALUES ('6280fcd0c6431bfbc15aab5cc386c7e3', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 68, '2020-08-01 06:45:37');
INSERT INTO `sys_user_operation_log` VALUES ('629f6fdf3bd62ecc217b5337c99bb607', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 196, '2020-07-26 08:58:33');
INSERT INTO `sys_user_operation_log` VALUES ('62cf2c608c7226cf90a71bf9c0df8d0c', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 282, '2020-04-29 13:41:54');
INSERT INTO `sys_user_operation_log` VALUES ('62e7c2be9b99b974700b72ea9d99b016', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 262, '2020-05-07 04:34:29');
INSERT INTO `sys_user_operation_log` VALUES ('630828dfa11398cf00ae2edd90ef6164', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 101, '2020-10-24 03:56:54');
INSERT INTO `sys_user_operation_log` VALUES ('63103417d406cf6d5256333ea080f984', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 59, '2020-10-27 09:14:54');
INSERT INTO `sys_user_operation_log` VALUES ('63309e47fc6affc96d88787d44c30283', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 179, '2020-05-07 04:36:18');
INSERT INTO `sys_user_operation_log` VALUES ('6369aee5fd2f7014f6574b443bc6f217', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:12:58');
INSERT INTO `sys_user_operation_log` VALUES ('6374dca393f1e760da89541016841529', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 11, '2022-06-17 01:07:10');
INSERT INTO `sys_user_operation_log` VALUES ('64052c58f854dc18866d2925baf2184a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 187, '2020-07-27 07:09:58');
INSERT INTO `sys_user_operation_log` VALUES ('6418f001b64c2037a6d55f6c6f89bc8e', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"4444\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 194, '2020-11-07 17:41:08');
INSERT INTO `sys_user_operation_log` VALUES ('6469dc6ada116316a686f6efe447b0d4', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 15, '2022-06-15 09:39:02');
INSERT INTO `sys_user_operation_log` VALUES ('6471044ceee52b6f1b9e683bc04f8916', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 231, '2020-04-29 13:42:10');
INSERT INTO `sys_user_operation_log` VALUES ('647b0dba596ec216b2cdba765fc227c0', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1549, '2020-09-23 03:18:14');
INSERT INTO `sys_user_operation_log` VALUES ('64abd6636a23effc94e4dc7e9f51f69d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1896, '2020-09-05 08:32:39');
INSERT INTO `sys_user_operation_log` VALUES ('64b50be2560ab2e79e7ce9107195c335', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 13, '2023-06-30 13:40:28');
INSERT INTO `sys_user_operation_log` VALUES ('64b7383e58b9979a4a1bb2401984245f', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-30 14:47:19');
INSERT INTO `sys_user_operation_log` VALUES ('64d16b5aac9efb9b1ce8a63ad758586e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 52, '2020-05-08 02:02:59');
INSERT INTO `sys_user_operation_log` VALUES ('64f006051bfaab7d5fb7a8b8ed9bbc6b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 144, '2020-04-17 05:47:56');
INSERT INTO `sys_user_operation_log` VALUES ('64fc1b5cab95b0243c508970b9a4b87b', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 11:13:06');
INSERT INTO `sys_user_operation_log` VALUES ('6543a2d1f35b5aaeff7a69edeb176f2b', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 6, '2023-06-26 01:25:34');
INSERT INTO `sys_user_operation_log` VALUES ('6552aa3c7918fbec023c0d55c1f21575', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 141, '2020-04-16 09:01:34');
INSERT INTO `sys_user_operation_log` VALUES ('65b607019d52275f7cfdc128dc540836', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 433, '2020-04-29 14:48:27');
INSERT INTO `sys_user_operation_log` VALUES ('65bb374436c4190d92655edbc28aee01', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1114, '2023-06-27 14:29:33');
INSERT INTO `sys_user_operation_log` VALUES ('65cc5f4dff88386d9c5bc4d603b40698', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 501, '2020-04-21 07:30:56');
INSERT INTO `sys_user_operation_log` VALUES ('65e020ebcab93dfc4d19f41a41195808', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 217, '2020-04-13 07:54:49');
INSERT INTO `sys_user_operation_log` VALUES ('661994f20cde870ef028b99432919dcd', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1681, '2020-05-07 08:21:54');
INSERT INTO `sys_user_operation_log` VALUES ('663340fb611541df3b444d31e646a8ba', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 156, '2020-04-21 10:08:15');
INSERT INTO `sys_user_operation_log` VALUES ('6657685094c3ebcaaa7f43e46cfea5f8', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000478\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 91, '2020-05-18 07:40:39');
INSERT INTO `sys_user_operation_log` VALUES ('6688516bcc935599513eea917c10de8a', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 70, '2020-05-08 02:46:17');
INSERT INTO `sys_user_operation_log` VALUES ('668d5a63117bf78aefe82656a87ac30e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 71, '2020-04-16 09:28:01');
INSERT INTO `sys_user_operation_log` VALUES ('66983e39bc84aa1e1aa0269109649f21', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997?_=1688032025464?_=1688032025608?_=1688032025748?_=1688032025882\"}', '127.0.0.1', 15, '2023-06-29 17:47:06');
INSERT INTO `sys_user_operation_log` VALUES ('66ba636cfd601d7af97118561d001ff3', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 90, '2020-04-17 08:51:19');
INSERT INTO `sys_user_operation_log` VALUES ('6726320a604fa818a31552971eb80e68', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-30 15:02:45');
INSERT INTO `sys_user_operation_log` VALUES ('673681ab1e50ceb09d83d3280469e640', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 28, '2020-11-07 17:01:50');
INSERT INTO `sys_user_operation_log` VALUES ('6752a8e5e2c2f603f6f571a22d3495b6', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 16:37:52');
INSERT INTO `sys_user_operation_log` VALUES ('675db9e5f3e0cac0cefc74363d975abe', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 3215, '2020-08-31 02:25:11');
INSERT INTO `sys_user_operation_log` VALUES ('6799fd67ccc9f18771e73a95bc170a2c', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 66, '2020-05-07 05:51:02');
INSERT INTO `sys_user_operation_log` VALUES ('67c4b9b95f11b8a67ac791753c967c29', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1507, '2020-08-20 09:09:56');
INSERT INTO `sys_user_operation_log` VALUES ('6845f86250d74eaa16db171c6edbad6f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 234, '2020-03-23 05:25:58');
INSERT INTO `sys_user_operation_log` VALUES ('68b45d60dc37aaa8c19f5b7dea13d04d', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 08:21:37');
INSERT INTO `sys_user_operation_log` VALUES ('68f7e27a57dd07bf2a201ae82c329629', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 09:25:25');
INSERT INTO `sys_user_operation_log` VALUES ('68feb5a2eb938253b8cdae2e7b68371f', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-29 09:57:18');
INSERT INTO `sys_user_operation_log` VALUES ('692bc2544ae8a553c4271f5c09fadb6c', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 13:16:15');
INSERT INTO `sys_user_operation_log` VALUES ('698087d2a60a4db7495c1053105e8384', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 526, '2023-06-26 01:13:32');
INSERT INTO `sys_user_operation_log` VALUES ('698f8ec9b092d45a2bf18e8206e42707', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 11:09:09');
INSERT INTO `sys_user_operation_log` VALUES ('69c621d5007b1014dc315bf14449e7cb', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 201, '2020-09-03 06:31:03');
INSERT INTO `sys_user_operation_log` VALUES ('6a00237815c26eb193d2c3d57fd72f4b', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-30 13:54:29');
INSERT INTO `sys_user_operation_log` VALUES ('6a087ba1fd639befac3f4187583bd22d', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 22, '2020-11-07 17:10:21');
INSERT INTO `sys_user_operation_log` VALUES ('6a5f37e914491e181b2d253c413f2f81', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 525, '2020-04-29 14:48:37');
INSERT INTO `sys_user_operation_log` VALUES ('6a6e83725f7a5f1c33ed6d40b0ca832f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 16, '2023-06-30 13:40:03');
INSERT INTO `sys_user_operation_log` VALUES ('6ab0106c18cb3bb16b12ca2c6a4b4554', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 13, '2023-06-28 09:59:21');
INSERT INTO `sys_user_operation_log` VALUES ('6aeca27aa552aff8f4822feb466fa482', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 175, '2020-09-06 22:03:30');
INSERT INTO `sys_user_operation_log` VALUES ('6b6a13c659caabaac8e96c50a52347d0', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 121, '2020-11-07 17:14:12');
INSERT INTO `sys_user_operation_log` VALUES ('6b7fb33fa987e68a80819470d1e7f0f0', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 178, '2020-09-03 07:54:37');
INSERT INTO `sys_user_operation_log` VALUES ('6b90b5b391ee9a60e6aa569560d8853c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688109244435?_=1688109255646\"}', '127.0.0.1', 14, '2023-06-30 15:14:16');
INSERT INTO `sys_user_operation_log` VALUES ('6bb2153d53d93f55d71a9c39b74833a8', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 189, '2020-04-21 10:07:18');
INSERT INTO `sys_user_operation_log` VALUES ('6bd021de79451e2f8ebbe607cdad9bcb', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-30 01:25:08');
INSERT INTO `sys_user_operation_log` VALUES ('6bf71eb7de87557ffa6b8bc5d0d23fd7', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325123334769213441\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 125, '2020-11-07 17:40:57');
INSERT INTO `sys_user_operation_log` VALUES ('6c0a65d4a4621d100e390878ec6a8d96', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 328, '2023-06-29 19:52:03');
INSERT INTO `sys_user_operation_log` VALUES ('6c356ebca462364d531fc5163e109171', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:35:30');
INSERT INTO `sys_user_operation_log` VALUES ('6c52b8964ebfe09aeccb15012c58ee72', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-30 11:10:48');
INSERT INTO `sys_user_operation_log` VALUES ('6c72d1896445d8c25b1a22c81da566df', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 32, '2020-04-16 09:28:03');
INSERT INTO `sys_user_operation_log` VALUES ('6c7f69982814440ee4b28a02dbfaba22', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 112, '2022-06-17 01:07:07');
INSERT INTO `sys_user_operation_log` VALUES ('6c8e17b955b0764e09daab12496f8b0e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 18, '2023-06-30 14:47:20');
INSERT INTO `sys_user_operation_log` VALUES ('6ca7b3bef6c7a86428248c190674f0e5', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:41:45');
INSERT INTO `sys_user_operation_log` VALUES ('6d2929f17e87a3e2a94c96058d5489c0', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 543, '2023-06-30 08:03:38');
INSERT INTO `sys_user_operation_log` VALUES ('6d70a9021d06d70b594f145e078f8732', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2064, '2020-05-18 07:37:27');
INSERT INTO `sys_user_operation_log` VALUES ('6d8c5b25779fb77ba156bebda69f770d', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 118, '2022-06-17 01:12:56');
INSERT INTO `sys_user_operation_log` VALUES ('6e0884ea6c411607158d78b559293f39', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 432, '2022-06-15 08:49:01');
INSERT INTO `sys_user_operation_log` VALUES ('6e3c917199e950229dad95102e27871a', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 30, '2020-05-07 05:47:00');
INSERT INTO `sys_user_operation_log` VALUES ('6e537fd373e629b9c46156585ac0ece5', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 84, '2020-05-11 07:52:01');
INSERT INTO `sys_user_operation_log` VALUES ('6eb1869e58bc8dc18b8bdc4833dfdd26', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-30 15:00:18');
INSERT INTO `sys_user_operation_log` VALUES ('6ebbbda8e1b4c136098227da866ff0fa', 'admin', 'demo', '删除', 'delete', '{}', '127.0.0.1', 9, '2022-06-16 18:15:08');
INSERT INTO `sys_user_operation_log` VALUES ('6f69bec419b937a1d5c7cffc12a0191d', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 12, '2023-06-29 21:55:17');
INSERT INTO `sys_user_operation_log` VALUES ('6fd90175be18279733b4fa0a37f4064f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '192.168.213.1', 145, '2020-04-16 07:33:33');
INSERT INTO `sys_user_operation_log` VALUES ('7018e065ced441fa2082a320074798dc', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"OR1500058290\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 111, '2020-05-18 07:38:19');
INSERT INTO `sys_user_operation_log` VALUES ('7033bda09e425531e133d8e88eaf566e', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-30 13:40:17');
INSERT INTO `sys_user_operation_log` VALUES ('708e896e925d8e2ecbbbc908b6b84c3d', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 21:05:28');
INSERT INTO `sys_user_operation_log` VALUES ('71276f25da34b66bddadac9750ebee8b', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 5, '2023-06-26 01:25:31');
INSERT INTO `sys_user_operation_log` VALUES ('714c72f27370ca0e49c5f20795eb9183', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 162, '2023-06-30 08:03:41');
INSERT INTO `sys_user_operation_log` VALUES ('71513df5cb035795e3993dff4c6a425b', 'admin', '用户管理', '导出', 'export', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"username\":\"\"}', '127.0.0.1', 885, '2020-05-09 10:29:50');
INSERT INTO `sys_user_operation_log` VALUES ('71d7c5c5015692c7de28daa5c5e7539b', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 118, '2020-08-12 01:51:09');
INSERT INTO `sys_user_operation_log` VALUES ('721abdf8d874cdc7a6fb63ab0ea59567', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 56, '2020-04-13 07:47:14');
INSERT INTO `sys_user_operation_log` VALUES ('7285db51f697160f1a9fd6ecb1143ab8', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 14:23:33');
INSERT INTO `sys_user_operation_log` VALUES ('72c4d03b21cfdafc5b38dc064b76516b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 28, '2022-06-15 05:41:00');
INSERT INTO `sys_user_operation_log` VALUES ('73157119fc79f7d772be0a7c58bba063', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688109244435\"}', '127.0.0.1', 15, '2023-06-30 15:14:04');
INSERT INTO `sys_user_operation_log` VALUES ('731e14dcb257cb7d5ae04e8d9bd13e13', 'root', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 182, '2022-06-17 01:13:17');
INSERT INTO `sys_user_operation_log` VALUES ('732e03f091e450b95daca6843b6c647e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 24, '2022-06-16 08:44:49');
INSERT INTO `sys_user_operation_log` VALUES ('735b4db231d2b770f893aa323c4c5110', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 99, '2023-06-29 16:08:00');
INSERT INTO `sys_user_operation_log` VALUES ('735fe919535367dc503df4b8364dffa5', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 430, '2020-04-21 07:38:43');
INSERT INTO `sys_user_operation_log` VALUES ('73885d9530c2c1704eda483fa715b875', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 11, '2023-06-30 10:27:19');
INSERT INTO `sys_user_operation_log` VALUES ('738b2d05c9659d884f23942defbc0bdd', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 196, '2020-09-03 01:47:02');
INSERT INTO `sys_user_operation_log` VALUES ('73c041dff1bca667187a2fbd6a6882fd', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 38, '2022-06-16 06:43:12');
INSERT INTO `sys_user_operation_log` VALUES ('73cfb2e5d7290f7e69d8ca8f4662753f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 15, '2023-06-30 13:40:28');
INSERT INTO `sys_user_operation_log` VALUES ('73d3ddf1f0c8de27068bec0686e6fa3a', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000691\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-05-18 07:40:41');
INSERT INTO `sys_user_operation_log` VALUES ('73d66d700f420c6d51b0c65d11666978', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 127, '2023-06-27 05:39:20');
INSERT INTO `sys_user_operation_log` VALUES ('73efa01218143c40c19b4bf98d954554', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 840, '2020-08-31 02:48:24');
INSERT INTO `sys_user_operation_log` VALUES ('746b13650544cedaafbd164227376e97', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 57, '2020-10-27 09:14:54');
INSERT INTO `sys_user_operation_log` VALUES ('7478d778a5e5107e43a5f82df347fb10', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 58, '2020-04-13 07:47:42');
INSERT INTO `sys_user_operation_log` VALUES ('748e4152d797269660c6e45885da50cf', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 26, '2020-10-04 16:56:33');
INSERT INTO `sys_user_operation_log` VALUES ('749d49c9f8dd5cbd3dc754894d0d5a6d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1622, '2020-04-03 14:23:33');
INSERT INTO `sys_user_operation_log` VALUES ('74a4911297b245d01691a849d5c38268', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 239, '2020-10-24 03:55:00');
INSERT INTO `sys_user_operation_log` VALUES ('74c1163da0bf20392fe560d0476bae63', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 990, '2020-04-16 08:25:34');
INSERT INTO `sys_user_operation_log` VALUES ('74f75dbf2c59043627cb4f0679b0e3ae', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-30 15:05:52');
INSERT INTO `sys_user_operation_log` VALUES ('752a73a6c278a6eb7215ee1098b79f82', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 22, '2023-06-30 14:47:19');
INSERT INTO `sys_user_operation_log` VALUES ('75383138be97b1b13672eb597c16df15', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 12:23:03');
INSERT INTO `sys_user_operation_log` VALUES ('753e5680fce3ff3812747e62c886df57', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2312, '2020-04-29 14:48:25');
INSERT INTO `sys_user_operation_log` VALUES ('7548e9a871b0f64796dea46611343155', 'admin', '机构管理', '新增', 'save', '{}', '127.0.0.1', 61, '2020-11-07 17:09:31');
INSERT INTO `sys_user_operation_log` VALUES ('756c8f143a90460b22ed54c46803d7ab', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1393, '2020-05-23 05:36:16');
INSERT INTO `sys_user_operation_log` VALUES ('75772609445201da924668bcf8287bc9', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 142, '2023-06-26 01:19:02');
INSERT INTO `sys_user_operation_log` VALUES ('75984b36c2e080946e02819acef61f7b', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-30 13:40:08');
INSERT INTO `sys_user_operation_log` VALUES ('75a40efe6848fdae938e376912c6ac7a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 97, '2023-06-27 14:29:58');
INSERT INTO `sys_user_operation_log` VALUES ('75aa546b3175bf4818e377e422357f0b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 148, '2020-09-06 10:19:07');
INSERT INTO `sys_user_operation_log` VALUES ('75db6134fae7e5de5a65aa1d72a5de2b', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 467, '2020-04-17 01:40:48');
INSERT INTO `sys_user_operation_log` VALUES ('762fceb5c793855907b6c93fcda1ac30', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 83, '2023-06-30 14:27:43');
INSERT INTO `sys_user_operation_log` VALUES ('7639477786fadf2bef73189008bea4a5', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 144, '2023-06-29 19:52:08');
INSERT INTO `sys_user_operation_log` VALUES ('7647fbe71dbba8cf171089d85b7f62a6', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 184, '2020-05-14 03:12:46');
INSERT INTO `sys_user_operation_log` VALUES ('766147e08d2a34257782f1ecd3de48a2', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 442, '2020-05-08 09:08:08');
INSERT INTO `sys_user_operation_log` VALUES ('769542724ee60e26496300ffb12b3561', 'zhouliufu', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 14, '2022-06-17 01:14:29');
INSERT INTO `sys_user_operation_log` VALUES ('76b6b404a1a5a278182e7869ce73bc4a', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:37:35');
INSERT INTO `sys_user_operation_log` VALUES ('772e67624f45bd69b08ef3eb863b4fa6', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 50, '2020-04-13 07:37:28');
INSERT INTO `sys_user_operation_log` VALUES ('775ba7784a2faa9d3d6831fd6ba13f82', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 58, '2020-04-13 07:15:11');
INSERT INTO `sys_user_operation_log` VALUES ('7768cfec9069ff29edf71da79d6fdbbc', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 57, '2020-03-23 05:26:23');
INSERT INTO `sys_user_operation_log` VALUES ('77c54b118eacf3c9691fb3bcefceb915', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 12:26:41');
INSERT INTO `sys_user_operation_log` VALUES ('77d8d031f1fb95d823f41e760c992dd1', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865\"}', '127.0.0.1', 358, '2023-06-30 10:28:10');
INSERT INTO `sys_user_operation_log` VALUES ('77f900d3489165fd5683c475728d0447', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 172, '2020-11-07 17:13:50');
INSERT INTO `sys_user_operation_log` VALUES ('7813fe9e8b95a9518000223d9ec7d2c4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 239, '2020-07-27 06:07:51');
INSERT INTO `sys_user_operation_log` VALUES ('78c18833552bd3460f8ab4005d20087b', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 10:32:05');
INSERT INTO `sys_user_operation_log` VALUES ('78d98342e373bb2e5d38d7614ee6d2c9', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 214, '2020-04-07 10:02:07');
INSERT INTO `sys_user_operation_log` VALUES ('79321f00fa68576a02e8395abfd434aa', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 15, '2023-06-28 10:58:19');
INSERT INTO `sys_user_operation_log` VALUES ('794f65e4b749df69ea471e52aabcd9e8', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 112, '2020-03-22 07:48:15');
INSERT INTO `sys_user_operation_log` VALUES ('7963580dd4e2d60216960afee9623317', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2004, '2022-06-16 18:12:35');
INSERT INTO `sys_user_operation_log` VALUES ('79999f9ecea740211e0b2effc97e2c42', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 243, '2020-04-17 06:33:52');
INSERT INTO `sys_user_operation_log` VALUES ('79d23b0e8bb766158c4a94cf9ae12b9b', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-27 14:53:40');
INSERT INTO `sys_user_operation_log` VALUES ('7a15153972ad1463c069b440ed97123e', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 10:59:02');
INSERT INTO `sys_user_operation_log` VALUES ('7a49602db4359d7e64af859050229d1f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 162, '2020-04-13 07:55:35');
INSERT INTO `sys_user_operation_log` VALUES ('7a5b749387a4e4dc7d4896a2587237f0', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 75, '2020-05-08 02:01:17');
INSERT INTO `sys_user_operation_log` VALUES ('7a8140c207cf05cd276bd701bf81fc69', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 32, '2023-06-30 13:49:20');
INSERT INTO `sys_user_operation_log` VALUES ('7aa83f89200a8f62c9f31a082d9782e8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 595, '2023-06-27 01:29:29');
INSERT INTO `sys_user_operation_log` VALUES ('7afd93b9347b63b19ca0a42ed5735052', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 64611, '2020-04-21 10:21:23');
INSERT INTO `sys_user_operation_log` VALUES ('7b08cb46e637d087a8a67ea5e16c0673', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"deptId\":\"OR1500058291\",\"page\":\"1\"}', '127.0.0.1', 81, '2020-04-16 08:58:05');
INSERT INTO `sys_user_operation_log` VALUES ('7b416688e8a0d0d6aa4c1b077140f0b5', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 31, '2022-06-16 08:44:24');
INSERT INTO `sys_user_operation_log` VALUES ('7b93d87389bc633f72377d9009241acd', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1039, '2020-03-21 06:43:25');
INSERT INTO `sys_user_operation_log` VALUES ('7b9df1ba480beb133761b9d79297581c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 269, '2020-04-30 03:54:11');
INSERT INTO `sys_user_operation_log` VALUES ('7bcb1289420509390e9ac8ed5b166ab3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1878, '2020-03-23 05:25:51');
INSERT INTO `sys_user_operation_log` VALUES ('7bf358a52fb30e6a768705686b8e0599', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-27 15:19:41');
INSERT INTO `sys_user_operation_log` VALUES ('7bf42f2e02a692234d41c443ebae40ef', 'admin', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688092089106?_=1688092089865?_=1688092090217?_=1688092090373?_=1688092090547\"}', '127.0.0.1', 15, '2023-06-30 10:28:11');
INSERT INTO `sys_user_operation_log` VALUES ('7c13b8369ff696b1b70518dadc5469a3', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 221, '2020-04-07 09:01:07');
INSERT INTO `sys_user_operation_log` VALUES ('7c2ee9ed4b7110f1b844443c40360e25', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-27 15:29:09');
INSERT INTO `sys_user_operation_log` VALUES ('7c4e5919f6afe966d64fc8b9103868fe', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 102, '2020-09-03 06:31:05');
INSERT INTO `sys_user_operation_log` VALUES ('7c6560b3e9ddab52a5e42eabb50277ae', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 09:06:08');
INSERT INTO `sys_user_operation_log` VALUES ('7c7264287b1e9db88e2f8d4b1b52e3cc', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 15, '2023-06-29 21:34:40');
INSERT INTO `sys_user_operation_log` VALUES ('7c9bb882d6caf0b2d1ec83ef0adeec3c', 'admin', 'TbOrderInfo', '删除', 'delete', '{}', '127.0.0.1', 7, '2023-06-30 14:18:07');
INSERT INTO `sys_user_operation_log` VALUES ('7d50ed42a4b36ac7a45de47f8ffa6b25', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 09:24:48');
INSERT INTO `sys_user_operation_log` VALUES ('7d62af0b1bb42265e1ce4477c8391db3', 'admin', 'TbVisit', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:33:37');
INSERT INTO `sys_user_operation_log` VALUES ('7d63b34055b36654b32750331db625aa', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 272, '2020-09-07 09:27:38');
INSERT INTO `sys_user_operation_log` VALUES ('7d6d9b01a3d9ccf8eb567a507095996c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1316, '2023-06-26 05:55:30');
INSERT INTO `sys_user_operation_log` VALUES ('7db8aa8a6a6989327cbe80764eb9b6c2', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2020-11-07 17:03:45');
INSERT INTO `sys_user_operation_log` VALUES ('7dc78ed2084ec4ea3d07517c4a64404b', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"deptId\":\"OR1200000703\",\"page\":\"1\"}', '127.0.0.1', 217, '2020-04-16 08:58:07');
INSERT INTO `sys_user_operation_log` VALUES ('7dc98fd018d55478cd8d3ea085da6881', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 10, '2023-06-29 19:20:26');
INSERT INTO `sys_user_operation_log` VALUES ('7dd22e9418dcf4110d6eb5f2d27d5ff1', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 56, '2020-04-13 07:15:09');
INSERT INTO `sys_user_operation_log` VALUES ('7de31c48aee09463d16c0b560a9cad36', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 364, '2020-04-17 03:48:58');
INSERT INTO `sys_user_operation_log` VALUES ('7e298d73dd30482976ff37e234ad56aa', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:30:21');
INSERT INTO `sys_user_operation_log` VALUES ('7e6046fc2b44b11d8a0b62f692ef579e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 69, '2020-08-12 01:51:13');
INSERT INTO `sys_user_operation_log` VALUES ('7e62d1d249597c9f9a9fab797be4a764', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 9, '2023-06-30 15:11:54');
INSERT INTO `sys_user_operation_log` VALUES ('7e6e0e786e5503474f792df5819ffa5e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1850, '2020-05-11 07:50:58');
INSERT INTO `sys_user_operation_log` VALUES ('7e721e6500549081b661cd2a1e35a0e1', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 80, '2020-04-13 07:46:35');
INSERT INTO `sys_user_operation_log` VALUES ('7e81676c54c9990785ddea627043f370', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 13:53:03');
INSERT INTO `sys_user_operation_log` VALUES ('7e894a62dd67088443f2bbf98d747074', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 541, '2022-06-17 00:44:28');
INSERT INTO `sys_user_operation_log` VALUES ('7f08ad7966c4f71fb4ee5552997e58ae', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 28, '2020-11-07 17:08:36');
INSERT INTO `sys_user_operation_log` VALUES ('7f0ed208574b05288357f57aa7ee5abe', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 7, '2023-06-30 15:11:53');
INSERT INTO `sys_user_operation_log` VALUES ('7f2599122278ddfd5ed1a033fcf28b8b', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 5, '2023-06-30 14:46:26');
INSERT INTO `sys_user_operation_log` VALUES ('7fafa1e3d3c1159bc6404d8982044cca', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2022-06-17 01:14:27');
INSERT INTO `sys_user_operation_log` VALUES ('80557e6cf2928eea5f6ed98d98a1c1cf', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1242, '2020-04-30 03:54:06');
INSERT INTO `sys_user_operation_log` VALUES ('813bbf0d2258ddd2e77c6b6e207e4b9d', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 60, '2022-06-15 05:40:40');
INSERT INTO `sys_user_operation_log` VALUES ('8171650b81b72c5f90224380fcb89372', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 483, '2022-06-16 15:18:48');
INSERT INTO `sys_user_operation_log` VALUES ('81e3a825b4b8cf519874cf0dc236253f', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 4, '2023-06-30 14:46:53');
INSERT INTO `sys_user_operation_log` VALUES ('81f28578f1150df881fb8adae9cff0a4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 277, '2023-06-30 13:11:14');
INSERT INTO `sys_user_operation_log` VALUES ('82a68e8cbcef4b7e638fb6b131ca4f00', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 435, '2020-04-29 14:53:36');
INSERT INTO `sys_user_operation_log` VALUES ('82cf95659117075f6f363a82cd3ae89e', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 68981, '2020-04-21 10:28:16');
INSERT INTO `sys_user_operation_log` VALUES ('82eb3427fe763a74c5bbdd3c98565e52', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 445, '2023-06-29 16:08:00');
INSERT INTO `sys_user_operation_log` VALUES ('833776ace59f56acfae4f720d68c9e8b', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 316, '2020-09-06 06:10:31');
INSERT INTO `sys_user_operation_log` VALUES ('834e74208c5fe90a25946c1c458e70de', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 27, '2022-06-16 08:44:34');
INSERT INTO `sys_user_operation_log` VALUES ('83611ac9712339bd65933798c0101d70', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 133, '2020-10-24 03:51:37');
INSERT INTO `sys_user_operation_log` VALUES ('83709201cb2a4e24d2855917a9becaca', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 4, '2023-06-30 14:27:33');
INSERT INTO `sys_user_operation_log` VALUES ('837420d81a702f0b0815b09b5eca976f', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-30 13:54:36');
INSERT INTO `sys_user_operation_log` VALUES ('839031b88bc54154977545695ffdf22f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 306, '2020-04-08 07:32:57');
INSERT INTO `sys_user_operation_log` VALUES ('83bfec9a9b6fc335c0683addcc5550b8', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 11, '2023-06-30 10:39:49');
INSERT INTO `sys_user_operation_log` VALUES ('83cf2fc3856e2718cc2e87872b748716', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 61, '2020-05-08 03:07:57');
INSERT INTO `sys_user_operation_log` VALUES ('84332bb5b52f50262353f8e72341491b', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 191, '2020-04-13 02:53:48');
INSERT INTO `sys_user_operation_log` VALUES ('845c4a31b9fb3f9c4e42f1a1409f4290', 'Anonymous', '查询用户列表', 'openApi', 'userList', '{}', '127.0.0.1', 5, '2020-09-05 08:33:00');
INSERT INTO `sys_user_operation_log` VALUES ('84add9075f1b923d2e87ceb085da51bd', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 118, '2020-04-20 07:31:20');
INSERT INTO `sys_user_operation_log` VALUES ('84d83e5493273cd76262f57eb5c76bb6', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 192, '2020-05-14 03:13:10');
INSERT INTO `sys_user_operation_log` VALUES ('84e1c060aa364faf535f9316b6691762', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 401, '2020-10-27 09:01:09');
INSERT INTO `sys_user_operation_log` VALUES ('84e5116ab6f6acfcc208225c61b9236b', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 222, '2020-05-07 08:32:00');
INSERT INTO `sys_user_operation_log` VALUES ('8517d2513e8abfd3816d27e2a9f82d30', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"13333333333333333333\",\"roles\":\"\",\"phone\":\"1233333\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"1233333333333\"}', '127.0.0.1', 58, '2020-10-04 16:56:21');
INSERT INTO `sys_user_operation_log` VALUES ('859b2da733264bdf28fe01e296da04ba', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 12, '2023-06-28 09:05:20');
INSERT INTO `sys_user_operation_log` VALUES ('85a6223d188372cfdb5af982bc9ade8e', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-29 09:57:37');
INSERT INTO `sys_user_operation_log` VALUES ('85e52980b3509f08293e4f93ffd57808', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 150, '2023-06-29 09:01:14');
INSERT INTO `sys_user_operation_log` VALUES ('85f1afe5f4449a48e272c227e7b14d7a', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 152, '2020-09-06 21:50:23');
INSERT INTO `sys_user_operation_log` VALUES ('85f8d2528dd004a61334ad5c9d1a8f9d', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 545, '2020-04-20 07:36:21');
INSERT INTO `sys_user_operation_log` VALUES ('86272c5013f386e3b724bbb8e91d7858', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 313, '2020-07-27 07:56:17');
INSERT INTO `sys_user_operation_log` VALUES ('862c29f13b32c0115e62700bfc532957', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 198, '2020-04-07 08:50:36');
INSERT INTO `sys_user_operation_log` VALUES ('869adaff3cfdba43e6457ea047d1bdef', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 21:57:20');
INSERT INTO `sys_user_operation_log` VALUES ('86b297bd65610f52813e78f34bdc179f', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 72, '2020-08-20 09:38:44');
INSERT INTO `sys_user_operation_log` VALUES ('86cb1f3a8ad797a0d736669b92da96f8', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-30 13:54:39');
INSERT INTO `sys_user_operation_log` VALUES ('86db4a82e3c8123768f522631f093974', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 35, '2020-09-07 09:33:39');
INSERT INTO `sys_user_operation_log` VALUES ('8715eb83682b3e8ad9a0718b44037524', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 170, '2020-04-08 07:33:09');
INSERT INTO `sys_user_operation_log` VALUES ('87746bc07e014ac21c5e23c298ae18f6', 'admin', 'demo', '修改', 'update', '{}', '127.0.0.1', 4, '2022-06-15 06:08:07');
INSERT INTO `sys_user_operation_log` VALUES ('889667fb96bb0111caf12f9ae7b668ef', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1367, '2020-09-06 06:10:25');
INSERT INTO `sys_user_operation_log` VALUES ('889c2be78d8a31ea32d43ce53ff06af9', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 363, '2020-04-21 07:30:57');
INSERT INTO `sys_user_operation_log` VALUES ('88cad021b51272e4d43295a7b73c4154', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 10:02:43');
INSERT INTO `sys_user_operation_log` VALUES ('891c33de67b2e4d90b5595fcef81d956', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 141, '2023-06-28 20:34:22');
INSERT INTO `sys_user_operation_log` VALUES ('895f1ab63b1b841f0399465652d431a6', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"deptId\":\"OR1500067158\",\"page\":\"1\"}', '127.0.0.1', 84, '2020-04-16 08:58:03');
INSERT INTO `sys_user_operation_log` VALUES ('895f74371363bbd5ad33f3c7699b4372', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997\"}', '127.0.0.1', 14, '2023-06-29 17:47:05');
INSERT INTO `sys_user_operation_log` VALUES ('89e5c210f43cc7102b543df06bbfccf1', 'Anonymous', '查询用户列表', 'openApi', 'userList', '{\"ddd\":\"ddd\"}', '127.0.0.1', 1, '2020-09-05 13:35:31');
INSERT INTO `sys_user_operation_log` VALUES ('89f92a9060e0948e0aa73ce2f2fd4c9c', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 65, '2020-04-13 07:47:16');
INSERT INTO `sys_user_operation_log` VALUES ('8a324bf93131fb61f9f579273f0a54e7', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 8, '2022-06-17 01:07:09');
INSERT INTO `sys_user_operation_log` VALUES ('8a9d67b33c8283f8708af7069668a5ed', 'admin', 'demo', '修改', 'update', '{}', '127.0.0.1', 5, '2022-06-15 06:08:10');
INSERT INTO `sys_user_operation_log` VALUES ('8aa8b9aefeecbee4615d6c7b11b8568c', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-29 09:01:34');
INSERT INTO `sys_user_operation_log` VALUES ('8aca64a00fddd757e3e62cb20f97ea24', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:30:22');
INSERT INTO `sys_user_operation_log` VALUES ('8ad71d9784115c2f8c2e4aacbff74809', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 92, '2020-03-16 09:32:30');
INSERT INTO `sys_user_operation_log` VALUES ('8b0f9f17c486970bd37933fe2e4d7592', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 5, '2023-06-30 14:46:54');
INSERT INTO `sys_user_operation_log` VALUES ('8b38e31970c30f52a212e84a7dc0663e', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"东莞分公司\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 99, '2020-08-20 09:13:30');
INSERT INTO `sys_user_operation_log` VALUES ('8bcda125752cf8f5cad65d889e35394d', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 7, '2023-06-30 15:07:45');
INSERT INTO `sys_user_operation_log` VALUES ('8bd01c50fabe6d80b2864bd1c9911b05', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-28 10:16:49');
INSERT INTO `sys_user_operation_log` VALUES ('8be30d216154ea6ca26b6b7e57017c33', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 144, '2020-09-07 09:34:39');
INSERT INTO `sys_user_operation_log` VALUES ('8ca7eb957186c16883219fb470253cb5', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 11:00:51');
INSERT INTO `sys_user_operation_log` VALUES ('8cb7f25138897924a8c2d2a8d6d6c0df', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 08:52:15');
INSERT INTO `sys_user_operation_log` VALUES ('8cb87e5eaafa070c003415fac30e7e86', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 19, '2023-06-28 09:25:37');
INSERT INTO `sys_user_operation_log` VALUES ('8cc5010e6f0e4af7721b4c29092739ea', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 42, '2022-06-15 05:40:59');
INSERT INTO `sys_user_operation_log` VALUES ('8d1131026368ee0168acdc6852939151', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 210, '2020-04-13 07:22:00');
INSERT INTO `sys_user_operation_log` VALUES ('8d87bb358e7f6a856f46eaaae17d9684', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 237, '2020-09-03 02:20:36');
INSERT INTO `sys_user_operation_log` VALUES ('8da2cab03b63141ccb70052fde67c73b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 810, '2020-09-03 01:40:41');
INSERT INTO `sys_user_operation_log` VALUES ('8e068c29a8f8857f00d327e4fb5630f1', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 64, '2020-11-07 17:41:27');
INSERT INTO `sys_user_operation_log` VALUES ('8e292d35c7f2dd7d6cc1e37b17427336', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 917, '2020-09-02 07:37:38');
INSERT INTO `sys_user_operation_log` VALUES ('8e601cddbb3b910b74335c2743534a82', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:38:05');
INSERT INTO `sys_user_operation_log` VALUES ('8e7234a5d53099947953239d6b67b752', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 12:27:05');
INSERT INTO `sys_user_operation_log` VALUES ('8e8599512ab9a92a3c0424486286140a', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"1325123334769213441\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2022-06-15 05:40:50');
INSERT INTO `sys_user_operation_log` VALUES ('8e94aa49b276d22a419703fde8dd823f', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"4444\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 198, '2020-11-07 17:40:59');
INSERT INTO `sys_user_operation_log` VALUES ('8ea606e1d4dfe036f70b7017005bf8d0', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 23, '2020-11-07 17:09:46');
INSERT INTO `sys_user_operation_log` VALUES ('8eee5cbefe80499db60b48dab6cea553', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 93, '2023-06-28 20:40:02');
INSERT INTO `sys_user_operation_log` VALUES ('8f0268898db54b8521e791c7876598b8', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 139, '2020-05-08 02:44:14');
INSERT INTO `sys_user_operation_log` VALUES ('8f4afdb5424531193bfbbb59849841e0', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:43:32');
INSERT INTO `sys_user_operation_log` VALUES ('8f79f583459c817a753181eb78be32b6', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:38:03');
INSERT INTO `sys_user_operation_log` VALUES ('8f86999996ddc7eb95c5c46f41fbfe4f', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 16, '2023-06-29 16:27:23');
INSERT INTO `sys_user_operation_log` VALUES ('8fe35d4466953d1a88eb3d25d39bfe70', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 214, '2020-05-07 04:36:50');
INSERT INTO `sys_user_operation_log` VALUES ('8ff7d0ad093aef6f087ca86587ad4ec5', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 21:09:57');
INSERT INTO `sys_user_operation_log` VALUES ('902caa146876806c41310c5433d45e4b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 16, '2023-06-29 17:47:04');
INSERT INTO `sys_user_operation_log` VALUES ('903900cefb72a768af65f12af43a475e', 'root', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 43, '2022-06-17 01:13:38');
INSERT INTO `sys_user_operation_log` VALUES ('905f456eb7ac7c815a5c9bfc3b57efb3', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 11:13:07');
INSERT INTO `sys_user_operation_log` VALUES ('907bf2595b6eb68510b1758c1e3b6468', 'root', '用户管理', '列表', 'page', '{\"phone\":\"\",\"nickName\":\"\",\"disable\":\"\",\"roles\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 45, '2022-06-17 01:13:48');
INSERT INTO `sys_user_operation_log` VALUES ('90aec588609ce49987b5daea6a12df4d', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-27 15:24:05');
INSERT INTO `sys_user_operation_log` VALUES ('90cde3c2062c56124dc6cbefbedc51a4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1261, '2023-06-28 09:24:34');
INSERT INTO `sys_user_operation_log` VALUES ('90f52331aa30b13e122dd8aed5cb37b5', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 112, '2020-11-07 17:13:32');
INSERT INTO `sys_user_operation_log` VALUES ('9126be5a4b26a9cf416fa9c7f9748440', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 95, '2020-05-08 02:28:37');
INSERT INTO `sys_user_operation_log` VALUES ('913e21dc8d2112a756eeb299bd6878cc', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 20:44:38');
INSERT INTO `sys_user_operation_log` VALUES ('918b9aa794faab018e65f934b91a0542', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1283, '2020-09-03 06:47:20');
INSERT INTO `sys_user_operation_log` VALUES ('9222199c35070a9576bf58d9ec2ca380', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-29 21:10:27');
INSERT INTO `sys_user_operation_log` VALUES ('92512339b8f9a7567360cecf1de2abc8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 187, '2020-04-17 02:18:00');
INSERT INTO `sys_user_operation_log` VALUES ('925f1ad8dcd1732df11ec25a26870b64', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 93, '2020-08-31 02:52:45');
INSERT INTO `sys_user_operation_log` VALUES ('9261984bba06f93d664e9de22c26d075', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000387\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 98, '2020-05-18 07:40:37');
INSERT INTO `sys_user_operation_log` VALUES ('92726f3f6ebc4efde42c7b6e1b005458', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 26, '2020-11-07 17:06:02');
INSERT INTO `sys_user_operation_log` VALUES ('92778ac442d2a2474a7e2b8fb1a58d36', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 15, '2023-06-29 17:58:57');
INSERT INTO `sys_user_operation_log` VALUES ('92ebfc2c70402c5c9d4acaf2e9188743', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 15:00:39');
INSERT INTO `sys_user_operation_log` VALUES ('92f33f0cacd83a25b03a014f323b7b5e', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 29, '2020-04-13 07:43:37');
INSERT INTO `sys_user_operation_log` VALUES ('9300cf1795f7c85db7ff0ebcf0b677e5', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 220, '2020-10-27 09:01:18');
INSERT INTO `sys_user_operation_log` VALUES ('93269e269975ef623477067f26fccd2b', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2022-06-17 01:14:39');
INSERT INTO `sys_user_operation_log` VALUES ('938f548bb2fdd94a2ab14d6ca679642b', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 221, '2020-04-08 07:47:27');
INSERT INTO `sys_user_operation_log` VALUES ('93a1421a794d24922bef8960b9a04b72', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 8, '2023-06-28 09:39:19');
INSERT INTO `sys_user_operation_log` VALUES ('93f0d59f8efb09725c6bd907a6f46039', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"2\"}', '127.0.0.1', 74, '2020-05-09 10:30:04');
INSERT INTO `sys_user_operation_log` VALUES ('94306ea8fff987ecc1ad4cda64edc4e7', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 12, '2023-06-30 14:09:35');
INSERT INTO `sys_user_operation_log` VALUES ('945b254e7ef9df068785c6dd044a05f4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 572, '2020-04-29 07:18:57');
INSERT INTO `sys_user_operation_log` VALUES ('94977979b16bce056570fc87863e7969', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 48, '2022-06-16 08:44:13');
INSERT INTO `sys_user_operation_log` VALUES ('949f557c2ea5173e7d7f810deb1d9151', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-27 14:53:50');
INSERT INTO `sys_user_operation_log` VALUES ('94b44f6a61caf4535ff41ef2b398606a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 44, '2022-06-17 01:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('94da313d5f8d77478fe821456ff24ab6', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 09:29:41');
INSERT INTO `sys_user_operation_log` VALUES ('94f798aa2576b0e3ef640539e1bdc8d3', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 72, '2020-05-07 05:41:05');
INSERT INTO `sys_user_operation_log` VALUES ('952b9cebecaf1eefad531ac0e481ec96', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 175, '2020-04-13 02:27:17');
INSERT INTO `sys_user_operation_log` VALUES ('954138ce44710875f09371ea7fc30c4c', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 251, '2020-04-21 09:52:24');
INSERT INTO `sys_user_operation_log` VALUES ('9557370e1246aa77574ff5a258f839af', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 269, '2020-10-27 09:14:46');
INSERT INTO `sys_user_operation_log` VALUES ('95682cca578afdf64ab2aeb0548ba133', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 35, '2022-06-16 08:44:24');
INSERT INTO `sys_user_operation_log` VALUES ('95934f6f704f4917f8235dffdfd19efe', 'admin', 'TbVisit', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-30 01:25:11');
INSERT INTO `sys_user_operation_log` VALUES ('959733e5a68fb6247eb5a36d5bbfbff8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 76, '2022-06-17 01:14:27');
INSERT INTO `sys_user_operation_log` VALUES ('95cac9e0b30cbd2bb10fbeed7c921741', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 153, '2023-06-26 05:55:30');
INSERT INTO `sys_user_operation_log` VALUES ('95db9bda6bff79749968b6966a155803', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1423, '2020-10-24 03:56:48');
INSERT INTO `sys_user_operation_log` VALUES ('95e3b3f89e86878d6330b33bf3c4773e', 'admin', '菜单管理', '删除', 'delete', '{}', '127.0.0.1', 110, '2020-11-07 17:43:12');
INSERT INTO `sys_user_operation_log` VALUES ('966602fa3a22442629d793ae220ea552', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 138, '2020-03-16 07:11:48');
INSERT INTO `sys_user_operation_log` VALUES ('96881be9c9fad5398ba265447340b89f', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 301, '2020-08-20 09:09:57');
INSERT INTO `sys_user_operation_log` VALUES ('968b1dd4a07d5e03755afc90e2cee833', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 13, '2023-06-28 08:50:42');
INSERT INTO `sys_user_operation_log` VALUES ('96d7d9bc149572ef63523ab6a4d23fa6', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 11:26:55');
INSERT INTO `sys_user_operation_log` VALUES ('96de8a0ab7a679e613d7fd320f8e5582', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 141, '2023-06-29 19:20:07');
INSERT INTO `sys_user_operation_log` VALUES ('96df4a3abfd0b5a8e0b2aa527283329d', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-29 19:21:02');
INSERT INTO `sys_user_operation_log` VALUES ('97060aac96b68cee299c1084a3f6c7e5', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 12, '2023-06-29 16:52:38');
INSERT INTO `sys_user_operation_log` VALUES ('972b73066e834b046a451c143834814e', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 184, '2020-07-30 06:57:20');
INSERT INTO `sys_user_operation_log` VALUES ('974733cd9b087a89c780f65590928b4e', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 12, '2023-06-30 14:44:10');
INSERT INTO `sys_user_operation_log` VALUES ('97a538afd384f8cfa8c51e91ad9fbdc4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 108, '2020-08-01 06:45:18');
INSERT INTO `sys_user_operation_log` VALUES ('981c8a71e947bd2f43f09a102e5375f0', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 47, '2020-05-08 02:06:10');
INSERT INTO `sys_user_operation_log` VALUES ('9844a3a3c72b142a9db3a4977871ba00', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1326, '2020-09-06 22:00:57');
INSERT INTO `sys_user_operation_log` VALUES ('985b4f0b8bf7e6ffb39129f40fbc5492', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 130, '2020-04-17 06:08:55');
INSERT INTO `sys_user_operation_log` VALUES ('9863e797cb43ae5071ff576c451fffb1', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"121\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 75, '2020-08-20 09:14:55');
INSERT INTO `sys_user_operation_log` VALUES ('988a955312a5266db43107df6494bb9a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 292, '2023-06-29 16:08:00');
INSERT INTO `sys_user_operation_log` VALUES ('9938f5953fe720bc668b527e95b7d0b9', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 22:31:54');
INSERT INTO `sys_user_operation_log` VALUES ('99585f7e5b0b6f7cad1c17ff1111aaf0', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-30 14:34:25');
INSERT INTO `sys_user_operation_log` VALUES ('99729b9b71af20f00d503ae301681126', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 338, '2023-06-28 20:40:01');
INSERT INTO `sys_user_operation_log` VALUES ('99ac7645209043ebde948b9538c9743a', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 8, '2023-06-30 15:12:31');
INSERT INTO `sys_user_operation_log` VALUES ('99acfe34cc87ee01c2265b497697a997', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 53, '2020-09-06 08:46:38');
INSERT INTO `sys_user_operation_log` VALUES ('99b155f4665d5fda945489498ae6d5cf', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325121829601280001\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 93, '2020-11-07 17:40:55');
INSERT INTO `sys_user_operation_log` VALUES ('9a020f32f7341c42a4fef3daf30a4eb6', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 76, '2020-09-06 21:43:54');
INSERT INTO `sys_user_operation_log` VALUES ('9a6b98f56d2cc3b59847a4e76142f63e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 184, '2020-04-07 10:02:21');
INSERT INTO `sys_user_operation_log` VALUES ('9a94e1e1da5acf2cd41f4a0e5f6ad262', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 106, '2020-03-22 05:37:43');
INSERT INTO `sys_user_operation_log` VALUES ('9aa0271a1c9c05d188d3b5a89033184a', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 183, '2020-04-13 02:27:33');
INSERT INTO `sys_user_operation_log` VALUES ('9ad4773b31ae5548ec11b692f4529efd', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 19, '2022-06-15 05:41:03');
INSERT INTO `sys_user_operation_log` VALUES ('9af029d79a3764d6a14b04b4e71da3d6', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"1\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 71, '2020-08-20 09:13:43');
INSERT INTO `sys_user_operation_log` VALUES ('9b2b454aa6e65f7ac3d162b0ab0451fc', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"东莞分公司\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 105, '2020-08-20 09:13:17');
INSERT INTO `sys_user_operation_log` VALUES ('9b34a96cd27181eb356f2dbbbba48ceb', 'admin', 'TbCustLinkman', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:38:30');
INSERT INTO `sys_user_operation_log` VALUES ('9b6a17d41e5105dcfe504ea42127bf39', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 164, '2020-09-05 08:56:21');
INSERT INTO `sys_user_operation_log` VALUES ('9b997d840ab142f153fcc42342c2be98', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 133, '2020-03-16 08:04:57');
INSERT INTO `sys_user_operation_log` VALUES ('9bb8071769f167961ec5fd07dbf2b0d8', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 258, '2020-09-02 06:59:45');
INSERT INTO `sys_user_operation_log` VALUES ('9bd481f2fa92bbab471ee7936fe66c93', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 19, '2023-06-30 13:39:51');
INSERT INTO `sys_user_operation_log` VALUES ('9c089d502c1bbfe18a62c73f5baf6955', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 203, '2020-09-07 09:35:11');
INSERT INTO `sys_user_operation_log` VALUES ('9c1e342928d18951dc4d0dc9173bd5ea', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 8, '2023-06-30 15:04:30');
INSERT INTO `sys_user_operation_log` VALUES ('9c33d30acf7422a41d09e971d3a97ab7', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 5, '2023-06-30 14:46:52');
INSERT INTO `sys_user_operation_log` VALUES ('9c57a351fa95c6abb736d7f60fa37197', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 159, '2023-06-27 01:29:47');
INSERT INTO `sys_user_operation_log` VALUES ('9c58ca0e6c49010828adf67433ae9a48', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 166, '2022-06-15 09:26:28');
INSERT INTO `sys_user_operation_log` VALUES ('9ca783928332be94f0f4ed1907fb9157', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 32, '2020-09-03 02:21:46');
INSERT INTO `sys_user_operation_log` VALUES ('9cc7f10d7995f3154fcec2687024095c', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-30 14:09:46');
INSERT INTO `sys_user_operation_log` VALUES ('9ccda1b75e4c0ad2533d8089f5e2a150', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 16, '2023-06-28 09:03:21');
INSERT INTO `sys_user_operation_log` VALUES ('9d02364a39439714689211b6d3ed3c9f', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 57, '2020-05-09 10:29:18');
INSERT INTO `sys_user_operation_log` VALUES ('9d075492b64cac1aa70558e3de549ee4', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"111\"}', '127.0.0.1', 65, '2020-05-09 10:30:47');
INSERT INTO `sys_user_operation_log` VALUES ('9dc95fa884cf7b2bceab55652f714e86', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 70, '2020-09-06 22:03:23');
INSERT INTO `sys_user_operation_log` VALUES ('9df7fcdd131c4c65ad5be2506f60aedb', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 13:41:38');
INSERT INTO `sys_user_operation_log` VALUES ('9df8f790e6aef8608a06a490a21871e4', 'admin', 'TbOrderInfo', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:37:04');
INSERT INTO `sys_user_operation_log` VALUES ('9e2223ccaa78766b321ebe89e69d291c', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-30 14:35:18');
INSERT INTO `sys_user_operation_log` VALUES ('9e24ad0d556e73ff31048942d6b3cf0e', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-27 14:43:15');
INSERT INTO `sys_user_operation_log` VALUES ('9e7f84a4b4efd4462df49bfc3f41a782', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1637, '2020-08-12 01:50:57');
INSERT INTO `sys_user_operation_log` VALUES ('9ea1099767e219cea3b7e5a380e99eb6', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 349, '2020-04-09 02:51:36');
INSERT INTO `sys_user_operation_log` VALUES ('9ea9fd5f207458dac6378bf332af2065', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 441, '2020-04-24 01:16:34');
INSERT INTO `sys_user_operation_log` VALUES ('9eac9276ad0fe5c7a33e0c9c685be135', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 188, '2020-08-01 06:45:17');
INSERT INTO `sys_user_operation_log` VALUES ('9f2d23af5a15056594c5fcd0cfa6ca9a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1244, '2020-09-02 06:56:59');
INSERT INTO `sys_user_operation_log` VALUES ('9f5f41b2aa05e2f21f0df86d8a02c76d', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 20, '2023-06-30 01:24:23');
INSERT INTO `sys_user_operation_log` VALUES ('9fde99fcd87eae12f2a886af908d569b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 173, '2020-09-02 07:49:37');
INSERT INTO `sys_user_operation_log` VALUES ('9ff19910e084533dd2965ced7282da7a', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 11:33:18');
INSERT INTO `sys_user_operation_log` VALUES ('9ff33ee8acaa3d342d10491cc0b4ea19', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 21, '2022-06-16 06:43:13');
INSERT INTO `sys_user_operation_log` VALUES ('a02136ba31a101bc7c96b1b9c2153f41', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 20:28:42');
INSERT INTO `sys_user_operation_log` VALUES ('a0452f774f17341e9caeb3520f04eafc', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 307, '2020-07-24 07:55:41');
INSERT INTO `sys_user_operation_log` VALUES ('a05d6728b56cfca1c0b41560deb5845c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 270, '2020-04-09 02:51:46');
INSERT INTO `sys_user_operation_log` VALUES ('a0b7c23d3587157b72c383660b187669', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"OR1200000387\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 105, '2020-05-18 07:38:25');
INSERT INTO `sys_user_operation_log` VALUES ('a0e93baf6e8ab23e697e22fb459f40d7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 184, '2020-07-28 09:01:21');
INSERT INTO `sys_user_operation_log` VALUES ('a133626204235339d76c3d9e2b9b6271', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 10:46:34');
INSERT INTO `sys_user_operation_log` VALUES ('a180b0cb4053d7b899bd1bb54da09fe0', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 7, '2023-06-26 01:25:56');
INSERT INTO `sys_user_operation_log` VALUES ('a18497069876eea7e32d3e8edb1ec911', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 113, '2020-04-17 05:47:58');
INSERT INTO `sys_user_operation_log` VALUES ('a1886f2255f9dcd792510c82deb6af24', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 295, '2020-09-05 06:50:41');
INSERT INTO `sys_user_operation_log` VALUES ('a192f2d19e62451161996468921bdf08', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 109, '2020-11-07 17:13:50');
INSERT INTO `sys_user_operation_log` VALUES ('a1a2e25822694dd5f01024029d80ccda', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-28 16:38:52');
INSERT INTO `sys_user_operation_log` VALUES ('a1c17314cfe09473221943fafb633afe', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 115, '2022-06-15 05:58:48');
INSERT INTO `sys_user_operation_log` VALUES ('a1e684b24e724e3cd9782c2acfdd1b9a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 82, '2023-06-30 08:07:54');
INSERT INTO `sys_user_operation_log` VALUES ('a20a194b9171a5610e4b63b90ac7ac23', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 106, '2020-04-21 03:02:47');
INSERT INTO `sys_user_operation_log` VALUES ('a222852a980f4b26b78907035d4e71fb', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 10:31:23');
INSERT INTO `sys_user_operation_log` VALUES ('a233b6d46644482a54564b9879fe03d2', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 09:33:13');
INSERT INTO `sys_user_operation_log` VALUES ('a277b3eb53604907b918f571da394ea7', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 50, '2020-05-08 02:00:30');
INSERT INTO `sys_user_operation_log` VALUES ('a285a0522a49ade9d22aa48d606673dd', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 93, '2020-04-21 10:07:40');
INSERT INTO `sys_user_operation_log` VALUES ('a33eece3b37009b71e62f69072863b66', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688083667911\"}', '127.0.0.1', 18, '2023-06-30 08:07:48');
INSERT INTO `sys_user_operation_log` VALUES ('a340608c4380ef1193b90420bf09ced4', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 145, '2020-10-24 03:50:34');
INSERT INTO `sys_user_operation_log` VALUES ('a34dbe6995e4e952cd5c10fd0b812c3a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 99, '2020-09-02 07:50:56');
INSERT INTO `sys_user_operation_log` VALUES ('a3540caa162283461194256796cd38f5', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 888, '2020-07-28 08:14:14');
INSERT INTO `sys_user_operation_log` VALUES ('a397664e8414ad478879d3cb66a65bf6', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 11, '2023-06-27 15:09:17');
INSERT INTO `sys_user_operation_log` VALUES ('a39f527b7ddf425c3e5293124ebd37d4', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 154, '2020-09-07 09:35:18');
INSERT INTO `sys_user_operation_log` VALUES ('a3dbaffcf5e92c08bb14987c86bb034e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 121, '2022-06-16 18:14:59');
INSERT INTO `sys_user_operation_log` VALUES ('a4097a2e0a49b2b5adda613f18ff138f', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 8, '2023-06-29 17:46:44');
INSERT INTO `sys_user_operation_log` VALUES ('a4212633ef33e074160769d634f0dc50', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-07 05:42:32');
INSERT INTO `sys_user_operation_log` VALUES ('a448a9c74e9f38400023c1e62a6464a2', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 128, '2022-06-15 09:35:51');
INSERT INTO `sys_user_operation_log` VALUES ('a48dc938a231231a05ce9355c94c0dcd', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 3, '2023-06-29 22:32:53');
INSERT INTO `sys_user_operation_log` VALUES ('a4cc0ebe7326ccd5ec0da6dd2470fb08', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1320, '2020-05-08 03:51:54');
INSERT INTO `sys_user_operation_log` VALUES ('a4fb989918dbcff33306d3fff47c0fc7', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 133, '2023-06-28 20:46:54');
INSERT INTO `sys_user_operation_log` VALUES ('a52cd1dba870d1522e2188f1ab041b34', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 243, '2020-04-07 08:59:30');
INSERT INTO `sys_user_operation_log` VALUES ('a65363cf05c71e6c5d3a8200ad9dcbe8', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 11:15:21');
INSERT INTO `sys_user_operation_log` VALUES ('a6adadd44e6199e03348a0ea5baa6fff', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 365, '2020-04-15 06:53:55');
INSERT INTO `sys_user_operation_log` VALUES ('a77afdc40a8823aa69b04fd2bcd34885', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 119, '2020-04-17 02:18:02');
INSERT INTO `sys_user_operation_log` VALUES ('a7910e1d7692f505f44f1bee7e5fd96b', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 1, '2023-06-27 15:17:14');
INSERT INTO `sys_user_operation_log` VALUES ('a795f8f79706113e3b8c38df52de8f00', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-29 20:44:42');
INSERT INTO `sys_user_operation_log` VALUES ('a79731bd28afce67aa83359cf23b0fc3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 150, '2020-07-28 09:01:21');
INSERT INTO `sys_user_operation_log` VALUES ('a7b64feaad495d892a1115383856bf06', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 45, '2020-05-08 02:11:08');
INSERT INTO `sys_user_operation_log` VALUES ('a7dc0b1174903c43fac66ffd4186afe1', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 140, '2020-09-07 09:34:32');
INSERT INTO `sys_user_operation_log` VALUES ('a805234a206b13bb3749b9f9fa39bff5', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 48, '2022-06-16 08:44:14');
INSERT INTO `sys_user_operation_log` VALUES ('a8260c1a555ba3dc4392a05956161bf8', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 361, '2023-06-26 06:46:24');
INSERT INTO `sys_user_operation_log` VALUES ('a83b80b36002f1ebb01d8178280e3cc6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1663, '2020-05-08 03:51:54');
INSERT INTO `sys_user_operation_log` VALUES ('a8a5e8282cbaeb057aff8328fbb971be', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 43, '2023-06-30 09:13:31');
INSERT INTO `sys_user_operation_log` VALUES ('a90684fc37a2358e608d1ffaad0c8fd8', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 83, '2020-04-13 02:27:27');
INSERT INTO `sys_user_operation_log` VALUES ('a91fb1bcede93f0407651404a0db507e', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 84, '2020-09-06 12:58:16');
INSERT INTO `sys_user_operation_log` VALUES ('a938cd7e19c08bec4396f0e9b29aa45b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 440, '2023-06-27 22:35:58');
INSERT INTO `sys_user_operation_log` VALUES ('a94df23f62714587f36737ff66019e46', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325123225058803713\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 96, '2020-11-07 17:40:56');
INSERT INTO `sys_user_operation_log` VALUES ('aa206c52f1a0d8fccdceffdca9ad49de', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 4, '2023-06-30 14:46:55');
INSERT INTO `sys_user_operation_log` VALUES ('aa20bff5220f67f290c73a56e9d192e4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 35, '2022-06-17 01:14:39');
INSERT INTO `sys_user_operation_log` VALUES ('aa9952f4ed26958e3d738b6fd0a35252', 'admin', '菜单管理', '新增', 'save', '{}', '127.0.0.1', 111, '2020-05-08 01:37:35');
INSERT INTO `sys_user_operation_log` VALUES ('aaac8cd9d4f2e55c96eb25ffc8123194', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 409, '2022-06-15 17:36:25');
INSERT INTO `sys_user_operation_log` VALUES ('ab5d0f5a6a838955c9c749c540bcd9ac', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 164, '2022-06-16 18:12:36');
INSERT INTO `sys_user_operation_log` VALUES ('abbd0ab70e82ceb5cf59706d17933514', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 51, '2020-04-13 07:37:33');
INSERT INTO `sys_user_operation_log` VALUES ('abfffeb7cf26aa833c9405ec3adbadf2', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-27 14:22:02');
INSERT INTO `sys_user_operation_log` VALUES ('ac1c75a4c752aed0be9a656f6e5d3839', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 373, '2020-04-13 01:32:13');
INSERT INTO `sys_user_operation_log` VALUES ('ac4ab85c87738ed46062300b23a7392c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 154, '2020-09-05 12:16:23');
INSERT INTO `sys_user_operation_log` VALUES ('ac89bf4c097c8dd881cd4fa8ee2abb72', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 4, '2023-06-30 14:46:14');
INSERT INTO `sys_user_operation_log` VALUES ('ac8e5a50b0c112965395c03b7bac76ab', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 76, '2020-03-22 07:58:13');
INSERT INTO `sys_user_operation_log` VALUES ('acc6e91f7f10113ca7c91e1e2397d631', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 169, '2020-04-13 06:50:22');
INSERT INTO `sys_user_operation_log` VALUES ('accdcf7221733dd9cd31bbf9d0db52f9', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 136, '2020-10-24 03:50:32');
INSERT INTO `sys_user_operation_log` VALUES ('ad33c1fc54d7e2f449a1d60ee0fb32ee', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 20, '2023-06-30 13:39:51');
INSERT INTO `sys_user_operation_log` VALUES ('ad6701b3dc9b0c0c665333965078af86', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 114, '2022-06-16 08:42:42');
INSERT INTO `sys_user_operation_log` VALUES ('ada76fe372b5debcab63533909e1dbed', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 151, '2020-09-07 09:33:34');
INSERT INTO `sys_user_operation_log` VALUES ('adba1adb81d513a509c6506471f5a35c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1405, '2020-09-23 07:35:38');
INSERT INTO `sys_user_operation_log` VALUES ('ade90d02284dc8d50acb94364d4547f8', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-08 02:48:58');
INSERT INTO `sys_user_operation_log` VALUES ('adf8cf08fab1d9d3dd6d1ceab7fbd85a', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-30 15:04:45');
INSERT INTO `sys_user_operation_log` VALUES ('ae0cd8ec793775b1a2aa1717317b5ec9', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 75, '2020-05-09 10:30:18');
INSERT INTO `sys_user_operation_log` VALUES ('ae1deee67734401b3b933fdb5cab8c5d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 44, '2022-06-16 06:43:12');
INSERT INTO `sys_user_operation_log` VALUES ('ae4342bc553aa5080acb054860861b2e', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1772, '2020-07-26 08:57:39');
INSERT INTO `sys_user_operation_log` VALUES ('ae6a4d72f304cd71f6e2edb652fbece9', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 22:34:02');
INSERT INTO `sys_user_operation_log` VALUES ('aea7534a050dc7f9643695db1b475187', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"2\"}', '127.0.0.1', 78, '2020-04-08 07:47:21');
INSERT INTO `sys_user_operation_log` VALUES ('aedc9a24d35b138ca4437933fa25c789', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-27 15:16:58');
INSERT INTO `sys_user_operation_log` VALUES ('aeeb26b15329a55ef3c72c5085412118', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1157, '2020-07-24 07:55:40');
INSERT INTO `sys_user_operation_log` VALUES ('af21641a74e12f9196a24cefac983126', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 142, '2023-06-26 06:20:24');
INSERT INTO `sys_user_operation_log` VALUES ('af2374106de2932dc1b003f98e24612e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 207, '2020-05-07 04:37:10');
INSERT INTO `sys_user_operation_log` VALUES ('af6f40855034b06f346c333f0b785346', 'admin', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 136, '2020-10-24 03:50:50');
INSERT INTO `sys_user_operation_log` VALUES ('af7c8b6bf2960ba7fd6065f6f748db75', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1525, '2020-04-21 02:45:42');
INSERT INTO `sys_user_operation_log` VALUES ('afdbf91fc8245c9970f182960ea2ce2b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 335, '2020-03-21 08:03:31');
INSERT INTO `sys_user_operation_log` VALUES ('aff9c363614041bc33cd4934ced9d047', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 143, '2022-06-16 08:46:58');
INSERT INTO `sys_user_operation_log` VALUES ('b03fe30eb4794cadbad04c95e644cd82', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1915, '2022-06-15 05:58:34');
INSERT INTO `sys_user_operation_log` VALUES ('b05407564b598c2e7594f44623d72e99', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 55, '2020-10-04 16:56:31');
INSERT INTO `sys_user_operation_log` VALUES ('b07c8b246a95798a16c4efbeff9713ba', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 467, '2020-03-21 06:43:28');
INSERT INTO `sys_user_operation_log` VALUES ('b087966ad0204ab0f3d78e88f2621607', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '192.168.213.1', 135, '2020-04-16 07:35:03');
INSERT INTO `sys_user_operation_log` VALUES ('b0a9a85d3350e504bdc21c6532575697', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 22:36:25');
INSERT INTO `sys_user_operation_log` VALUES ('b0aeeff97abbb4fa09cc479c11d3996c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 2173, '2020-04-24 01:16:33');
INSERT INTO `sys_user_operation_log` VALUES ('b0cc2b29935b1af39899ea23c0c34e5c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1370, '2023-06-29 08:21:17');
INSERT INTO `sys_user_operation_log` VALUES ('b1a0fb860666030e609726738046a799', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 21:58:57');
INSERT INTO `sys_user_operation_log` VALUES ('b1b81733d79ca608e2f72508b1caad99', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 124, '2020-04-16 09:01:35');
INSERT INTO `sys_user_operation_log` VALUES ('b1ebcc7f2b53ea805b13adcd97c359ca', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 128, '2020-11-07 17:12:47');
INSERT INTO `sys_user_operation_log` VALUES ('b1fad04f3e3cae4e80775322facd651e', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 61, '2020-04-13 08:02:56');
INSERT INTO `sys_user_operation_log` VALUES ('b22b0461f0c78cd7bee84f58cc863fdf', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"2\"}', '127.0.0.1', 94, '2020-04-07 07:01:19');
INSERT INTO `sys_user_operation_log` VALUES ('b23569f14b75f1a99f9392713d5f3e22', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1629, '2020-07-30 06:56:54');
INSERT INTO `sys_user_operation_log` VALUES ('b23902fbfb3b5d44942f5743c8d3e932', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-29 22:33:32');
INSERT INTO `sys_user_operation_log` VALUES ('b2a58a9f90d28e09c08579ae5ddc63aa', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 180, '2020-11-07 17:12:47');
INSERT INTO `sys_user_operation_log` VALUES ('b3010a21e3096ea6c07269aeabd3c018', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-29 16:47:20');
INSERT INTO `sys_user_operation_log` VALUES ('b3513e4c8c9e5a537d25f9be2a432fc7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 926, '2020-04-16 07:32:41');
INSERT INTO `sys_user_operation_log` VALUES ('b3788b16c41738717ec9b4c580f35cb8', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 99, '2020-04-15 06:54:07');
INSERT INTO `sys_user_operation_log` VALUES ('b3dba5eb8058a3d73bff59d81fd8cda3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 375, '2023-06-30 08:07:46');
INSERT INTO `sys_user_operation_log` VALUES ('b401e5ee1288c1bb34e6f4190a232851', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-28 16:57:37');
INSERT INTO `sys_user_operation_log` VALUES ('b44ada19f7979137c47b2ed1891a0d01', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 16:08:09');
INSERT INTO `sys_user_operation_log` VALUES ('b45965dfad2532c614dd6b20cb748079', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-30 00:55:46');
INSERT INTO `sys_user_operation_log` VALUES ('b4a40d951bc90f59407910b9979099b8', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 16:47:45');
INSERT INTO `sys_user_operation_log` VALUES ('b4c528547ddf8472293d6bc8e04edbcb', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 1, '2023-06-30 15:03:22');
INSERT INTO `sys_user_operation_log` VALUES ('b5155b5f8b984a76b8baba03915a60af', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-28 09:59:42');
INSERT INTO `sys_user_operation_log` VALUES ('b5162239aa40892fbdd24a51e1a6d7e6', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 13, '2023-06-29 11:20:45');
INSERT INTO `sys_user_operation_log` VALUES ('b550f44ab7dc61b1d6cbd212e547f657', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 11:36:44');
INSERT INTO `sys_user_operation_log` VALUES ('b55b27c9f4072166bc913d286b41a1a9', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"deptId\":\"OR1200000703\",\"page\":\"1\"}', '127.0.0.1', 210, '2020-04-21 09:55:10');
INSERT INTO `sys_user_operation_log` VALUES ('b5773a60bb440fc171967cdbbcf2be22', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 342, '2020-04-03 14:23:40');
INSERT INTO `sys_user_operation_log` VALUES ('b5d5687fc8e6c741725ef52bdfeab98f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1586246938373\"}', '', 88, '2020-04-07 08:08:58');
INSERT INTO `sys_user_operation_log` VALUES ('b5da2fe8954c3f0b8c89a40673bcb6e9', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 371, '2020-11-07 17:40:33');
INSERT INTO `sys_user_operation_log` VALUES ('b5e02f4a3f86087b93f3de81a5480e7c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1393, '2020-04-21 04:35:54');
INSERT INTO `sys_user_operation_log` VALUES ('b60b167a6b0f24d004db176b6bdfa4cb', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 10:02:25');
INSERT INTO `sys_user_operation_log` VALUES ('b656947c4a2bb22369392a43f9b79a17', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 660, '2020-04-20 01:24:42');
INSERT INTO `sys_user_operation_log` VALUES ('b6865c5aea460544afdd9e20f3afab54', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 139, '2023-06-29 13:33:18');
INSERT INTO `sys_user_operation_log` VALUES ('b70c9f61274762e9662fee27c6ca973f', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 14:19:07');
INSERT INTO `sys_user_operation_log` VALUES ('b737019290a786e763d6f5a3fe1f133a', 'admin', '机构管理', '新增', 'save', '{}', '127.0.0.1', 74, '2020-11-07 17:03:58');
INSERT INTO `sys_user_operation_log` VALUES ('b73b66c6a25606ac42465ef25b1438b7', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 21:09:29');
INSERT INTO `sys_user_operation_log` VALUES ('b74e09088c49713aad767514873e09da', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 252, '2020-07-28 08:14:18');
INSERT INTO `sys_user_operation_log` VALUES ('b85dc42985a55ba9288a2d06ec2a9eb7', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000703\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 93, '2020-08-20 09:13:12');
INSERT INTO `sys_user_operation_log` VALUES ('b88c08dd5ffeddbfc4142371eb99d549', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 14, '2023-06-30 11:49:29');
INSERT INTO `sys_user_operation_log` VALUES ('b89c90e5d2a69295826683d00ab61db0', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:30:08');
INSERT INTO `sys_user_operation_log` VALUES ('b93306218b7b4df5d87b395e772e78b7', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-29 23:20:19');
INSERT INTO `sys_user_operation_log` VALUES ('b956a9af2f38c4da5968e8891459a3c4', 'root', '角色管理', '修改', 'update', '{}', '127.0.0.1', 22, '2022-06-17 01:14:21');
INSERT INTO `sys_user_operation_log` VALUES ('b95d703f229b70398fcd0f554cc4575b', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 97, '2020-05-08 03:51:52');
INSERT INTO `sys_user_operation_log` VALUES ('b9640eb2249c6dbcce9a59cf11e61402', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 173, '2020-09-02 07:48:59');
INSERT INTO `sys_user_operation_log` VALUES ('b97a3ffe3b61c06cb5633969ce0431ca', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 9, '2023-06-30 13:39:25');
INSERT INTO `sys_user_operation_log` VALUES ('b980adfdec01684a29dc66eab0024eab', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 72, '2020-05-09 10:29:33');
INSERT INTO `sys_user_operation_log` VALUES ('b9877f1943b35ce907d055391354b974', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 264, '2020-09-03 06:47:21');
INSERT INTO `sys_user_operation_log` VALUES ('b9af65fb8ec3597f395fc6f37abe36ad', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 113, '2020-04-08 07:47:36');
INSERT INTO `sys_user_operation_log` VALUES ('b9bf69522583d9a5a5ea2b95ce6a88e0', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 138, '2020-09-07 09:35:10');
INSERT INTO `sys_user_operation_log` VALUES ('b9f327d884c29547643b3a3422ac74d3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 185, '2020-09-03 01:47:36');
INSERT INTO `sys_user_operation_log` VALUES ('b9fd4ef1d149c3497854aa7444627bb2', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-27 15:29:03');
INSERT INTO `sys_user_operation_log` VALUES ('ba03d676b14c4dfc855af759f493aa1c', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 119, '2020-09-05 08:56:34');
INSERT INTO `sys_user_operation_log` VALUES ('ba1a54e7ebc4373bc18cfd1afc4c788f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 336, '2023-06-27 22:49:33');
INSERT INTO `sys_user_operation_log` VALUES ('ba7a0314bbbe75ec2d7e83e229a3c851', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 159, '2020-09-02 13:56:30');
INSERT INTO `sys_user_operation_log` VALUES ('baa7efa39ad4bf29c527fe9f5ed6a022', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 117, '2020-07-27 07:26:03');
INSERT INTO `sys_user_operation_log` VALUES ('bac40a03985c119272ce722eb84698bd', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 107, '2020-09-05 08:57:08');
INSERT INTO `sys_user_operation_log` VALUES ('bae7e8e1b398a80cc19330f6a5209c93', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 27, '2020-04-13 08:06:22');
INSERT INTO `sys_user_operation_log` VALUES ('bb0c52701997d0b108aa6c45b1557210', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 10:02:46');
INSERT INTO `sys_user_operation_log` VALUES ('bb16890181e7dea7ad8023fda8b383cb', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 28, '2020-05-07 05:43:22');
INSERT INTO `sys_user_operation_log` VALUES ('bb49350dbd2bc43e2274be1abf93c47a', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 70, '2020-04-13 08:06:18');
INSERT INTO `sys_user_operation_log` VALUES ('bb75ed867a867f2d182b4cbdd9203d75', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-27 15:28:46');
INSERT INTO `sys_user_operation_log` VALUES ('bb8c598a7060c10e1257e8515a1edb08', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 252, '2020-04-07 08:59:31');
INSERT INTO `sys_user_operation_log` VALUES ('bc335efa3a0c30fe8e1e02a13df764b1', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 1, '2023-06-30 14:41:02');
INSERT INTO `sys_user_operation_log` VALUES ('bc557f3a023062fad6731620079f4af4', 'admin', '用户管理', '重置密码', 'resetPassword', '{}', '127.0.0.1', 40, '2022-06-17 01:13:10');
INSERT INTO `sys_user_operation_log` VALUES ('bc62a230f2f5001f39606734af4fb4e2', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 822, '2020-03-21 06:43:57');
INSERT INTO `sys_user_operation_log` VALUES ('bcad2c6f103f44a5a750052c11765619', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 392, '2020-05-07 05:44:24');
INSERT INTO `sys_user_operation_log` VALUES ('bcd2df328ce869447b361f604aa9ebe4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 401, '2020-04-08 07:16:33');
INSERT INTO `sys_user_operation_log` VALUES ('bdbdba02df29427cba973884a62b4b8b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2423, '2020-08-11 02:06:02');
INSERT INTO `sys_user_operation_log` VALUES ('bdd08a88d7b5339cd4f7c7c66e382389', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:34:58');
INSERT INTO `sys_user_operation_log` VALUES ('bdd3e8274efa16fae4205e0503a481a1', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 09:25:48');
INSERT INTO `sys_user_operation_log` VALUES ('bdecee81d527cb9ceb9c4436ae899230', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"111\"}', '127.0.0.1', 60, '2020-05-09 10:30:26');
INSERT INTO `sys_user_operation_log` VALUES ('be8c8f273adf5f322e870a98b587cc9a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 294, '2020-05-09 10:28:05');
INSERT INTO `sys_user_operation_log` VALUES ('be95bdb6e67c08b1a9be976fca171ea9', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 138, '2023-06-28 16:32:37');
INSERT INTO `sys_user_operation_log` VALUES ('bed80cd3b3ed5f4fe7df3bc79f57a61d', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 15, '2023-06-29 14:56:04');
INSERT INTO `sys_user_operation_log` VALUES ('befdaa3bd885e262acad86b28f265092', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1395, '2020-04-07 08:08:36');
INSERT INTO `sys_user_operation_log` VALUES ('bf0f2cf3d30d114537535fdc646a31c3', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 11:39:59');
INSERT INTO `sys_user_operation_log` VALUES ('bf1c1b6e403542e80c720ecc2cb7f744', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:42:50');
INSERT INTO `sys_user_operation_log` VALUES ('bf30d346acec3676295ed2a06436e19b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 158, '2020-09-07 09:35:08');
INSERT INTO `sys_user_operation_log` VALUES ('bf7653f56d64467d3b6588e12885d491', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000647\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 85, '2020-11-07 17:01:56');
INSERT INTO `sys_user_operation_log` VALUES ('bf81874e5aad30bb47f926ab05a5bd31', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"4444\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 220, '2020-11-07 17:40:34');
INSERT INTO `sys_user_operation_log` VALUES ('c03ea479a86e460dbe5fbefdf1aaefca', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 61, '2020-09-07 09:44:05');
INSERT INTO `sys_user_operation_log` VALUES ('c0417fd92a9b105990628c45a53d2b53', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1417, '2020-05-08 07:16:05');
INSERT INTO `sys_user_operation_log` VALUES ('c080a1636ad7b6d40734bf84ec496b84', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:30:14');
INSERT INTO `sys_user_operation_log` VALUES ('c09e059bd69b264ec48ae4372ebf27e1', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 485, '2020-04-17 02:42:46');
INSERT INTO `sys_user_operation_log` VALUES ('c0cf135d992ce95731084d8ad04717a5', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 308, '2020-05-23 05:36:17');
INSERT INTO `sys_user_operation_log` VALUES ('c0f1d86593369064f79dc9f9773b577a', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 14:09:53');
INSERT INTO `sys_user_operation_log` VALUES ('c167b1461c69491edf3144d4c5de98f7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 362, '2023-06-29 09:01:13');
INSERT INTO `sys_user_operation_log` VALUES ('c18b26e9ca695cf6ea5aa1379ef7d785', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 176, '2020-11-07 17:13:33');
INSERT INTO `sys_user_operation_log` VALUES ('c1f2937af4ba5da3ced7593b58a6d193', 'admin', '机构管理', '新增', 'save', '{}', '127.0.0.1', 55, '2020-11-07 17:04:40');
INSERT INTO `sys_user_operation_log` VALUES ('c29f3f03af715c48fbf669554f67a66a', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 83, '2020-08-31 02:26:13');
INSERT INTO `sys_user_operation_log` VALUES ('c30454254a704c6ba0152d37cfc01acb', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:42:36');
INSERT INTO `sys_user_operation_log` VALUES ('c31443dd2ef824e39ac0d86f0cfe36c5', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 230, '2020-05-07 05:37:24');
INSERT INTO `sys_user_operation_log` VALUES ('c3517aeb2affe00f92f1fa093acad505', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 57, '2020-05-08 02:15:42');
INSERT INTO `sys_user_operation_log` VALUES ('c35c1be1ed31c468b9a5c92c333833e0', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 7, '2023-06-30 15:11:40');
INSERT INTO `sys_user_operation_log` VALUES ('c36debcc83cda872539e0e7acbccf8b2', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 17, '2023-06-30 11:39:01');
INSERT INTO `sys_user_operation_log` VALUES ('c3d51d98af6eec9124870c1d15e5263e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 219, '2020-04-16 08:57:52');
INSERT INTO `sys_user_operation_log` VALUES ('c3d7529763ed88179705e94e95e7711e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 88, '2020-09-03 02:21:44');
INSERT INTO `sys_user_operation_log` VALUES ('c3de9202c9398938bf6b2fd5a88e918f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 190, '2020-04-07 08:25:50');
INSERT INTO `sys_user_operation_log` VALUES ('c45ace28d6d5a5a53ee9d8dacd7faba0', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 274, '2020-09-06 04:55:04');
INSERT INTO `sys_user_operation_log` VALUES ('c485a4aa7b35ec2f22e6806bad8d1d8d', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 61, '2020-05-08 01:54:49');
INSERT INTO `sys_user_operation_log` VALUES ('c48ec38102ce2cd6155eac5688c5c926', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 19:20:58');
INSERT INTO `sys_user_operation_log` VALUES ('c4d879bf0cec98e715827e9b730eaedc', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 153, '2020-09-05 08:56:35');
INSERT INTO `sys_user_operation_log` VALUES ('c4e79653a812d410b11005320d2721b6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 2524, '2020-04-16 08:27:50');
INSERT INTO `sys_user_operation_log` VALUES ('c55ff3b2f6cbec17625bfe8093135f4f', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 405, '2020-05-11 07:50:59');
INSERT INTO `sys_user_operation_log` VALUES ('c57aad76b321e2b63c535e5fa1757473', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 297, '2020-04-07 08:09:41');
INSERT INTO `sys_user_operation_log` VALUES ('c59d7c853d208594c82e091176671b91', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 30, '2020-11-07 17:01:40');
INSERT INTO `sys_user_operation_log` VALUES ('c6879843815c00e5a3b993f168740fee', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 233, '2020-04-21 07:32:04');
INSERT INTO `sys_user_operation_log` VALUES ('c691323daccbba321b4dec170a8e7acd', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1197, '2020-09-06 07:26:37');
INSERT INTO `sys_user_operation_log` VALUES ('c6a2548b5411ce46bc564a8d058c3b17', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688083667911?_=1688083669094\"}', '127.0.0.1', 18, '2023-06-30 08:07:49');
INSERT INTO `sys_user_operation_log` VALUES ('c6e996715376ae90791eef997990fd7b', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"1325121829601280001\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 21, '2022-06-15 05:40:49');
INSERT INTO `sys_user_operation_log` VALUES ('c6fef700b13f7aaf2709fbe8827dd528', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 95, '2020-08-20 09:13:53');
INSERT INTO `sys_user_operation_log` VALUES ('c70d14c1954c8402960f0ea8b9fda792', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 76, '2023-06-30 13:39:48');
INSERT INTO `sys_user_operation_log` VALUES ('c782da2eeb1bf676ce28bbc1a858f87f', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 83, '2023-06-30 10:28:17');
INSERT INTO `sys_user_operation_log` VALUES ('c7bcccbee0dd78f2f71f1d3667f09d61', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 29, '2020-10-27 09:14:55');
INSERT INTO `sys_user_operation_log` VALUES ('c812a5e20dd9d3a8d7ff0ee5c7d3e363', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 66, '2020-09-06 22:11:43');
INSERT INTO `sys_user_operation_log` VALUES ('c8420214d4344d0144eebbfd07abf126', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 27, '2020-08-12 01:51:12');
INSERT INTO `sys_user_operation_log` VALUES ('c87d1819befdfd2fe28ba8b47440f837', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 8, '2023-06-26 01:25:38');
INSERT INTO `sys_user_operation_log` VALUES ('c888badb53e810eb1792436304a7af6b', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 8, '2023-06-29 14:59:25');
INSERT INTO `sys_user_operation_log` VALUES ('c8a6e08496febd0ac8574b4b39f28e46', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 9, '2023-06-28 08:24:06');
INSERT INTO `sys_user_operation_log` VALUES ('c8b09084c8e3c73d48f406d9a96836ab', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 420, '2023-06-30 14:27:34');
INSERT INTO `sys_user_operation_log` VALUES ('c8b6a3ec34dca333fe0e927487410001', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 64, '2020-04-13 07:56:18');
INSERT INTO `sys_user_operation_log` VALUES ('c9084a60213c8cacd13dd0f6923a26ac', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 416, '2020-05-18 07:37:28');
INSERT INTO `sys_user_operation_log` VALUES ('c91aca6558a67a6857679add3dc77729', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 295, '2020-07-24 07:55:47');
INSERT INTO `sys_user_operation_log` VALUES ('c91d837c5c32fdb65939997dda7a691e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 14, '2023-06-28 09:25:38');
INSERT INTO `sys_user_operation_log` VALUES ('c9506b2b30766972e162c992ef00a32a', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-28 11:12:16');
INSERT INTO `sys_user_operation_log` VALUES ('c96d64501d5e2fb25c4a53b2bef7b78c', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 376, '2020-04-21 10:06:48');
INSERT INTO `sys_user_operation_log` VALUES ('c9d7fa4bb475a737881c339ced66156a', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"1212\",\"roles\":\"1111\",\"phone\":\"1221\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"111\"}', '127.0.0.1', 56, '2020-05-09 10:31:22');
INSERT INTO `sys_user_operation_log` VALUES ('c9e48e46971b6c807afb26158db99419', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 181, '2020-04-13 02:31:10');
INSERT INTO `sys_user_operation_log` VALUES ('ca5fbfd44a5a38205824bbd6363a8ff1', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 11:33:22');
INSERT INTO `sys_user_operation_log` VALUES ('ca5ff0bb08e96fd3b6fbdda0bfab2b37', 'admin', 'TbCustLinkman', '新增', 'save', '{}', '127.0.0.1', 3, '2023-06-29 22:39:41');
INSERT INTO `sys_user_operation_log` VALUES ('ca61eaae10a0167d7867b5afe37ed551', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 15, '2022-06-15 05:40:19');
INSERT INTO `sys_user_operation_log` VALUES ('ca7a1d1cf67e5a4b48c44acd6f6c91c1', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 25, '2020-11-07 17:03:59');
INSERT INTO `sys_user_operation_log` VALUES ('caa2265a2342827dbc13e1cb59fe011f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 15, '2023-06-30 13:40:08');
INSERT INTO `sys_user_operation_log` VALUES ('cb1a5b14dc66d7254943e9245c1c51f3', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 317, '2020-09-02 06:59:34');
INSERT INTO `sys_user_operation_log` VALUES ('cb20b4a0abe5fdf6f8a12f211d9a35c4', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-27 14:43:06');
INSERT INTO `sys_user_operation_log` VALUES ('cb5940458b46edf00bf3150ed032fcc9', 'admin', '用户管理', '导出', 'export', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"username\":\"111\"}', '127.0.0.1', 150, '2020-05-09 10:30:51');
INSERT INTO `sys_user_operation_log` VALUES ('cc555584f78db3e4d9d53734695dd2ef', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-27 15:30:05');
INSERT INTO `sys_user_operation_log` VALUES ('cc977663341110551d069d56804c0980', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:37:58');
INSERT INTO `sys_user_operation_log` VALUES ('cd1a912e7b7f8fe8a1ea62cb0e513b36', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 5, '2022-06-17 01:13:12');
INSERT INTO `sys_user_operation_log` VALUES ('cd4c8c53523e5433e7e85682d57b1051', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 11:28:57');
INSERT INTO `sys_user_operation_log` VALUES ('cd666f16e0414434af606abffc6a6db7', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 57, '2020-04-13 07:55:58');
INSERT INTO `sys_user_operation_log` VALUES ('cd7918c2fa85fa86a24135deb142865a', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 14, '2023-06-28 09:34:37');
INSERT INTO `sys_user_operation_log` VALUES ('cda6a49e2fb645a75b252ad9da98d7a9', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-30 14:09:58');
INSERT INTO `sys_user_operation_log` VALUES ('ce20c118a44b282fa0e7bec8ee6b6696', 'admin', '用户管理', '列表', 'page', '{\"deptId\":\"1325122003077693442\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 18, '2022-06-15 05:40:49');
INSERT INTO `sys_user_operation_log` VALUES ('ce44b5325a62e1c0ac33a807cbf0927d', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"东莞分公司\",\"deptId\":\"OR1200000703\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 89, '2020-08-20 09:13:33');
INSERT INTO `sys_user_operation_log` VALUES ('ce60e3853f2ba7fda58e83b4604d3cdd', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 64, '2023-06-26 01:25:24');
INSERT INTO `sys_user_operation_log` VALUES ('cea42558685f237009d7e5a2e76f3843', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-27 15:21:42');
INSERT INTO `sys_user_operation_log` VALUES ('ceb57ae89d57c17ba7617c06f7df126d', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 148, '2020-09-06 21:52:49');
INSERT INTO `sys_user_operation_log` VALUES ('cece0d828b6d793951a5c10b0a8ed986', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 97, '2020-09-03 02:22:31');
INSERT INTO `sys_user_operation_log` VALUES ('cf0a792fdd9417f4308a95d501f70009', 'admin', '用户管理', '用户模板', 'template', '{}', '127.0.0.1', 171, '2022-06-16 15:39:19');
INSERT INTO `sys_user_operation_log` VALUES ('cf0c6606833fee1f0023a0c199c03c61', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 20, '2023-06-29 13:55:56');
INSERT INTO `sys_user_operation_log` VALUES ('cf2a8b2159af017fd2697965eeb26820', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2012, '2020-05-07 04:32:21');
INSERT INTO `sys_user_operation_log` VALUES ('cf3858275026aa7f78c0f656ad3a61d6', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 15, '2023-06-28 16:41:30');
INSERT INTO `sys_user_operation_log` VALUES ('cf3e70c923ff244a57b859d45f0df77f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 371, '2023-06-28 16:55:18');
INSERT INTO `sys_user_operation_log` VALUES ('cf7cbaacaabdc6f40a71a030c23d6eb7', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-27 15:14:52');
INSERT INTO `sys_user_operation_log` VALUES ('cf9c9c21352df927d1def593e9b5717a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 182, '2020-09-03 01:47:42');
INSERT INTO `sys_user_operation_log` VALUES ('cf9ca696a85e0c97216066b1df8fcf7c', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 20:28:23');
INSERT INTO `sys_user_operation_log` VALUES ('cfa80ec8fcfa1eae7f6940c963566cd1', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 117, '2020-11-07 17:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('cfe727ad590fdb48bae2d0dde66fdd03', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 16:53:13');
INSERT INTO `sys_user_operation_log` VALUES ('d09e454d4038bde20bfaa85a5f0bd168', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 127, '2020-04-08 07:33:17');
INSERT INTO `sys_user_operation_log` VALUES ('d0f4820add8d706f6e3e998b2ceab52b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 25, '2023-06-28 09:25:34');
INSERT INTO `sys_user_operation_log` VALUES ('d0ff7c2ee605785af2745acf80898235', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 35, '2020-11-07 17:06:03');
INSERT INTO `sys_user_operation_log` VALUES ('d11be2dd1ff22c5819bebcfe05654006', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 10:45:03');
INSERT INTO `sys_user_operation_log` VALUES ('d124f89a6d5c2d00b6b81b95cc5b5a76', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 17, '2023-06-28 09:02:20');
INSERT INTO `sys_user_operation_log` VALUES ('d12538b55f6fddf3c4c258927c322040', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 188, '2020-05-07 05:37:11');
INSERT INTO `sys_user_operation_log` VALUES ('d13a42648ba5bd7b62fe58f2a09afceb', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 47, '2020-10-27 09:01:24');
INSERT INTO `sys_user_operation_log` VALUES ('d14389b97d3012a04fed53cc113633ae', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 15, '2023-06-30 13:40:17');
INSERT INTO `sys_user_operation_log` VALUES ('d144c4184580594d1de48eb1b7ea42c3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 810, '2020-07-27 06:07:49');
INSERT INTO `sys_user_operation_log` VALUES ('d1615405d2c04aeaf3d84afeda00c2bb', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-29 17:47:04');
INSERT INTO `sys_user_operation_log` VALUES ('d178b7b9a5ec1919754d243c22aa92b9', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 75, '2020-04-16 08:43:36');
INSERT INTO `sys_user_operation_log` VALUES ('d17a6302ac7ded08e00227f0d92298e6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 201, '2020-09-02 07:43:01');
INSERT INTO `sys_user_operation_log` VALUES ('d1cda26acbf02506281f6a2eac958da6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 193, '2020-04-21 10:07:39');
INSERT INTO `sys_user_operation_log` VALUES ('d21cc33386ec6bc10ae9d4a35bd198b4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 142, '2023-06-26 06:46:25');
INSERT INTO `sys_user_operation_log` VALUES ('d26cf24dde5aa013fe211e11e5b51526', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 222, '2020-05-18 07:38:12');
INSERT INTO `sys_user_operation_log` VALUES ('d2a2323a09a6dd01a3b13386171dcb8a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1496, '2020-09-06 04:55:02');
INSERT INTO `sys_user_operation_log` VALUES ('d2e9a8f7ab66afc28d3fc8673046ec45', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 120, '2020-11-07 17:13:02');
INSERT INTO `sys_user_operation_log` VALUES ('d2eb4e6f177a4aee4f36dcd661ad239c', 'admin', '菜单管理', '删除', 'delete', '{}', '127.0.0.1', 473, '2020-08-01 06:45:51');
INSERT INTO `sys_user_operation_log` VALUES ('d3113a9fe7fa4d0240af046836567d6d', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 38, '2020-11-07 17:03:33');
INSERT INTO `sys_user_operation_log` VALUES ('d31a1eef4d5bbd636094d91d9ec2914a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1735, '2020-05-09 10:28:04');
INSERT INTO `sys_user_operation_log` VALUES ('d35c9b8fc5eaa169b9f0f58920c629f8', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 10:32:01');
INSERT INTO `sys_user_operation_log` VALUES ('d3883477d3d1b6696a7717ec46147fad', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 16, '2023-06-30 13:39:54');
INSERT INTO `sys_user_operation_log` VALUES ('d38f879377405c8f07758479968cbaf5', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 192, '2020-04-21 10:29:19');
INSERT INTO `sys_user_operation_log` VALUES ('d3abab191503fc5542516dfd8b8a6b4d', 'admin', '用户管理', '修改', 'update', '{}', '127.0.0.1', 122, '2020-11-07 17:12:54');
INSERT INTO `sys_user_operation_log` VALUES ('d449a91231d30ec2ffdb4a29c3818ad0', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 19, '2023-06-30 13:39:57');
INSERT INTO `sys_user_operation_log` VALUES ('d461b2b89c86dd4691cc24c44e7da5b3', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 92, '2020-04-16 09:01:37');
INSERT INTO `sys_user_operation_log` VALUES ('d4ee806dd26367be3aa3b8658d048942', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 958, '2020-05-06 15:13:12');
INSERT INTO `sys_user_operation_log` VALUES ('d5080c095f619ce19f5337f2a8391e15', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 343, '2020-04-08 07:16:39');
INSERT INTO `sys_user_operation_log` VALUES ('d52afbf972432304ce5748dc77bd18fa', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1413, '2020-09-06 13:20:21');
INSERT INTO `sys_user_operation_log` VALUES ('d5623f1f0e80570453478033d66c358a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 179, '2020-09-03 01:46:19');
INSERT INTO `sys_user_operation_log` VALUES ('d57ba801c8d2a040400c82281710e817', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 160, '2020-09-05 08:32:51');
INSERT INTO `sys_user_operation_log` VALUES ('d5af5575b896b7f9b0e1946ed928b918', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 830, '2020-05-06 15:13:27');
INSERT INTO `sys_user_operation_log` VALUES ('d5b42a946cb655d4bd8e5719929e2966', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 12, '2023-06-27 03:05:33');
INSERT INTO `sys_user_operation_log` VALUES ('d5bb533d507d90de027b21a7e8ad392f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 437, '2023-06-29 14:33:21');
INSERT INTO `sys_user_operation_log` VALUES ('d5df923427a29966851aed82922a1003', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2732, '2020-04-17 03:48:56');
INSERT INTO `sys_user_operation_log` VALUES ('d5ff739874817515016afee9e09fc24e', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000648\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-05-18 07:40:40');
INSERT INTO `sys_user_operation_log` VALUES ('d61d5a07f0a2f42701a8a7cde180afb2', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 180, '2020-09-03 02:22:29');
INSERT INTO `sys_user_operation_log` VALUES ('d637a7ba2df71a82ed7a1f938f9b448d', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 155, '2020-04-13 07:25:11');
INSERT INTO `sys_user_operation_log` VALUES ('d65c544c1fd293dd1b6711dd0461ee31', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 23, '2022-06-16 08:45:14');
INSERT INTO `sys_user_operation_log` VALUES ('d69940d30fd37d7f7652c73d3234eba4', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 296, '2020-09-05 08:56:23');
INSERT INTO `sys_user_operation_log` VALUES ('d6afa1bbe769bc3a747feab60b20267f', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 144, '2023-06-30 00:51:57');
INSERT INTO `sys_user_operation_log` VALUES ('d7f55dce985611bc2a907c387b033992', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 21:58:52');
INSERT INTO `sys_user_operation_log` VALUES ('d805e5a0efaf4df09a661fb658a42a94', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:34:54');
INSERT INTO `sys_user_operation_log` VALUES ('d822fa2bd1ea64b3054dc3a7c0e245ca', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 08:21:45');
INSERT INTO `sys_user_operation_log` VALUES ('d8a86c77d32deb199a172f5d2a7f87ee', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 22:31:28');
INSERT INTO `sys_user_operation_log` VALUES ('d8e060aca2503da140d1f495fa3eeebe', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 60, '2020-03-16 09:38:36');
INSERT INTO `sys_user_operation_log` VALUES ('d8e29c45585d91f3973ccd48ee57b172', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 13, '2023-06-29 21:38:17');
INSERT INTO `sys_user_operation_log` VALUES ('d95a60d67cb2c40460e39e3ddcfe4ee1', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 226, '2020-04-16 09:03:36');
INSERT INTO `sys_user_operation_log` VALUES ('d961fa50ca324d79a39073e667ebceff', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 18, '2023-06-29 17:47:04');
INSERT INTO `sys_user_operation_log` VALUES ('d9a8834d33cf0886fc87043a09c4a0a7', 'admin', 'TbVisit', '新增', 'save', '{}', '127.0.0.1', 14, '2023-06-29 16:46:53');
INSERT INTO `sys_user_operation_log` VALUES ('d9beae76366ae47e777ccb299c81cd70', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-10-24 03:56:55');
INSERT INTO `sys_user_operation_log` VALUES ('d9f74de54ef3772f1691f254f6b6642c', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-30 14:36:44');
INSERT INTO `sys_user_operation_log` VALUES ('da01be62c9385f8f0b0def39248f2eec', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 72, '2020-04-16 08:43:39');
INSERT INTO `sys_user_operation_log` VALUES ('da0fd0638d1f4ab41271408655aba4d7', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 83, '2023-06-29 17:46:55');
INSERT INTO `sys_user_operation_log` VALUES ('daa5be45daffb4df4f60a627aa15a11c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 157, '2020-04-13 06:53:32');
INSERT INTO `sys_user_operation_log` VALUES ('dad957091ba369ad98c460cb38cf0f4f', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 2, '2023-06-30 13:40:28');
INSERT INTO `sys_user_operation_log` VALUES ('daff5f96edf283b42d05d846179c168e', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 172, '2020-11-07 17:13:02');
INSERT INTO `sys_user_operation_log` VALUES ('db137d2ffd21a3e31e0631d738535f82', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"4444\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 183, '2020-11-07 17:41:08');
INSERT INTO `sys_user_operation_log` VALUES ('db68787105613e83de8fbabdb2fd9838', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 21:58:56');
INSERT INTO `sys_user_operation_log` VALUES ('db9b3c5d3b0128cc7b755f0397028ada', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 9, '2023-06-30 15:11:36');
INSERT INTO `sys_user_operation_log` VALUES ('dbb1219159b117131c5e09c088b132b6', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 9, '2023-06-29 09:05:32');
INSERT INTO `sys_user_operation_log` VALUES ('dc2a4cef661dd12fe0f1f9f5f05e3029', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 11:17:33');
INSERT INTO `sys_user_operation_log` VALUES ('dc89e437d72bd96fabe3631350548364', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 2, '2023-06-27 15:24:08');
INSERT INTO `sys_user_operation_log` VALUES ('dc8f4fe2e278aab7389ca195392edc69', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 522, '2023-06-30 13:11:09');
INSERT INTO `sys_user_operation_log` VALUES ('dca6dd1518cd3d458eda6707ee27c352', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-30 15:03:12');
INSERT INTO `sys_user_operation_log` VALUES ('dccc73e2abe768e76c096a209651b097', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 298, '2020-09-08 16:16:18');
INSERT INTO `sys_user_operation_log` VALUES ('dceee2012381950c34313f899c71772d', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-30 14:18:59');
INSERT INTO `sys_user_operation_log` VALUES ('dd0406c36e849f98ab307ff5ca326fda', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 63, '2020-11-07 17:42:45');
INSERT INTO `sys_user_operation_log` VALUES ('dd4275b789c4677b26fbb014b09bcba9', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 132, '2020-05-11 07:52:06');
INSERT INTO `sys_user_operation_log` VALUES ('dd45e336ea9227c9cd9bb07cce6eb20c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 704, '2020-04-16 08:26:35');
INSERT INTO `sys_user_operation_log` VALUES ('dd4dbe946f1c83ce672b244bb170f2b5', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 25, '2020-04-07 08:26:26');
INSERT INTO `sys_user_operation_log` VALUES ('dd84ae948466668f22e1d57b813c38a0', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 207, '2020-04-17 03:49:45');
INSERT INTO `sys_user_operation_log` VALUES ('dd9a348118dcfa4120d3d0248e772ddd', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 11, '2023-06-30 13:39:51');
INSERT INTO `sys_user_operation_log` VALUES ('ddde63f3f1833f8f1feb77da5ebdcde1', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 82, '2020-04-07 08:25:52');
INSERT INTO `sys_user_operation_log` VALUES ('de064733168e92a0ea1ad8160abd3801', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 12, '2023-06-28 10:33:42');
INSERT INTO `sys_user_operation_log` VALUES ('de0661d43c8f5560fcdb62da370a8c4b', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 130, '2020-09-02 07:48:59');
INSERT INTO `sys_user_operation_log` VALUES ('dedc65b30d0b9fa99da16da2c8c91a94', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"111\"}', '127.0.0.1', 56, '2020-05-09 10:30:41');
INSERT INTO `sys_user_operation_log` VALUES ('dee684cb63b2cc3af139aeba51c2753d', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 208, '2020-04-15 07:13:34');
INSERT INTO `sys_user_operation_log` VALUES ('df63a50b47b7d687014e77b7725157ae', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1222, '2020-09-06 12:58:00');
INSERT INTO `sys_user_operation_log` VALUES ('df7604e8661a546b56e056dfde4eb3b0', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000724\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 91, '2020-05-18 07:40:41');
INSERT INTO `sys_user_operation_log` VALUES ('df7cdd848c1cff73cee1312ed54d4c1f', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"111\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 53, '2020-05-09 10:30:21');
INSERT INTO `sys_user_operation_log` VALUES ('dfa2bef357d0dc7ac7ba68522410f2e1', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:34:57');
INSERT INTO `sys_user_operation_log` VALUES ('dfaef1e545b1ae23579f14c45e869fb4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2305, '2022-06-17 01:13:14');
INSERT INTO `sys_user_operation_log` VALUES ('dfd0c553f63ed6dd4bd3643b19a9e751', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-30 14:18:50');
INSERT INTO `sys_user_operation_log` VALUES ('e02d407ed3e8c72422cd750736f9c600', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 143, '2023-06-27 00:41:55');
INSERT INTO `sys_user_operation_log` VALUES ('e0370487c6f1d1ea6f21196b6ca44642', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 268, '2020-04-07 10:02:03');
INSERT INTO `sys_user_operation_log` VALUES ('e0462e1ebb08d23690749687017c6752', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 125, '2020-08-31 02:26:13');
INSERT INTO `sys_user_operation_log` VALUES ('e0b70a8f922a142614f6f7d242eea1ad', 'admin', 'SystemMessage', '修改', 'unTop', '{}', '127.0.0.1', 10, '2023-06-30 14:46:28');
INSERT INTO `sys_user_operation_log` VALUES ('e0bcf71397055f9aa7ab0bff145e1e64', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"1111\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 43, '2020-05-09 10:30:14');
INSERT INTO `sys_user_operation_log` VALUES ('e0fa927659248c981ee4b269c95cc467', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 80, '2020-05-07 05:48:23');
INSERT INTO `sys_user_operation_log` VALUES ('e1426f63e448e09b6be2362f31f5627a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 71, '2022-06-16 08:44:59');
INSERT INTO `sys_user_operation_log` VALUES ('e1afbc702c074dcaf9c53f5e7a4815ca', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 14:02:01');
INSERT INTO `sys_user_operation_log` VALUES ('e1ce336f19244a10de64955537577226', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 26, '2020-04-07 07:01:25');
INSERT INTO `sys_user_operation_log` VALUES ('e2b360c6ff99676027810a6598409975', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 224, '2020-10-24 03:51:27');
INSERT INTO `sys_user_operation_log` VALUES ('e2c03e1e6324cc3806e26954ddafe616', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 265, '2020-05-07 05:44:26');
INSERT INTO `sys_user_operation_log` VALUES ('e304b3a29872a830c034fc16e45b4f9e', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 3, '2022-06-16 08:44:13');
INSERT INTO `sys_user_operation_log` VALUES ('e3381d91ce68e745d143e4243cbcea74', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 485, '2023-06-27 05:39:16');
INSERT INTO `sys_user_operation_log` VALUES ('e36ebdf3dd99a99288ab3824703dc7a4', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-29 17:48:54');
INSERT INTO `sys_user_operation_log` VALUES ('e373d53d8246ed69de2481e41eff8bea', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-28 10:28:28');
INSERT INTO `sys_user_operation_log` VALUES ('e3da0ca7a11ac03d9c4b7677c89d2570', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 6, '2023-06-28 08:52:08');
INSERT INTO `sys_user_operation_log` VALUES ('e3e4e7d2a0dec6ec9f2a00f588dea158', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 415, '2020-04-20 07:30:18');
INSERT INTO `sys_user_operation_log` VALUES ('e41f92c7d21d7a2298d0690b4ebf606b', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 7, '2023-06-30 14:46:13');
INSERT INTO `sys_user_operation_log` VALUES ('e4b18583b1f27e651bd1174fd230947e', 'root', '用户管理', '列表', 'page', '{\"phone\":\"\",\"nickName\":\"\",\"disable\":\"\",\"roles\":\"\",\"limit\":\"10\",\"deptId\":\"1325121829601280001\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 22, '2022-06-17 01:14:10');
INSERT INTO `sys_user_operation_log` VALUES ('e4e833af08f2ddfd20aec5930c94b773', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"deptId\":\"1325122003077693442\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"50\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 104, '2020-11-07 17:14:18');
INSERT INTO `sys_user_operation_log` VALUES ('e561eec923377f1ced7246412856e355', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 29, '2020-11-07 17:06:03');
INSERT INTO `sys_user_operation_log` VALUES ('e56668c00bbf9ee1fdce80f42a960b69', 'admin', '数据字典', '导出', 'export', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 437, '2020-07-24 07:55:57');
INSERT INTO `sys_user_operation_log` VALUES ('e5dc9403a81919c2db34c6489b242258', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 8, '2023-06-28 11:12:47');
INSERT INTO `sys_user_operation_log` VALUES ('e6181ecef4ca08215b79cf3e1a819363', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 69, '2020-09-06 13:23:27');
INSERT INTO `sys_user_operation_log` VALUES ('e655ba3670ec713bff073f3d7ec56bf2', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 385, '2020-08-12 01:50:58');
INSERT INTO `sys_user_operation_log` VALUES ('e6aca6d008c17008ea402323e1da5e18', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 12:26:29');
INSERT INTO `sys_user_operation_log` VALUES ('e6b7d06a5868b81f33a11f9ddf8bf750', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 11:16:11');
INSERT INTO `sys_user_operation_log` VALUES ('e6bf9b570b54ca4850b11ac002311eea', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 160, '2020-09-07 09:33:31');
INSERT INTO `sys_user_operation_log` VALUES ('e70269f7878ffe7a4f1a5b0f160b01ed', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 0, '2023-06-27 15:24:02');
INSERT INTO `sys_user_operation_log` VALUES ('e76cba6601b5fd874549c4376ec6fd7c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 515, '2023-06-28 16:32:29');
INSERT INTO `sys_user_operation_log` VALUES ('e774ff8f462ad254a10227bdd0761485', 'admin', 'demo', '删除', 'delete', '{}', '127.0.0.1', 8, '2022-06-16 18:15:06');
INSERT INTO `sys_user_operation_log` VALUES ('e779bcc6db0d368cf7d2c0d1893122d1', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 95, '2020-09-06 13:14:00');
INSERT INTO `sys_user_operation_log` VALUES ('e799dcf516d733cbcd0a6c9b2e69d570', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 15, '2022-06-17 01:14:40');
INSERT INTO `sys_user_operation_log` VALUES ('e7c6f847215eec2c1df915d907773c9f', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 150, '2020-03-16 08:03:43');
INSERT INTO `sys_user_operation_log` VALUES ('e7e2332e8d96f04639315b9f124275da', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 7, '2023-06-29 22:31:03');
INSERT INTO `sys_user_operation_log` VALUES ('e7ec59e2063e30366db81d64997d9a1b', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-30 01:25:16');
INSERT INTO `sys_user_operation_log` VALUES ('e7efde65b2e098e0adc24d9df4348658', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 21:34:54');
INSERT INTO `sys_user_operation_log` VALUES ('e821fca384be01ed1ad04c6a88ac56c9', 'admin', '代码检测', '新增', 'save', '{}', '127.0.0.1', 63, '2020-09-07 09:27:51');
INSERT INTO `sys_user_operation_log` VALUES ('e90c99e5f9b47c415e11454c60c4fa75', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 90, '2020-04-21 04:36:02');
INSERT INTO `sys_user_operation_log` VALUES ('e953e733716ec48afc8f12e2278bc1b7', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 296, '2020-09-06 07:26:37');
INSERT INTO `sys_user_operation_log` VALUES ('e98e38da8b161839d80148b92f2b4ce5', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 09:57:32');
INSERT INTO `sys_user_operation_log` VALUES ('e991546d6c39d391187e5d08e0ac8fd0', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000722\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-05-18 07:40:40');
INSERT INTO `sys_user_operation_log` VALUES ('e9a748a0162f2893ca43229f811ab3dd', 'admin', '角色管理', '修改', 'update', '{}', '127.0.0.1', 37683, '2020-04-21 10:12:09');
INSERT INTO `sys_user_operation_log` VALUES ('e9b8b05201e1dc6b6db84622b6110606', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 21:08:01');
INSERT INTO `sys_user_operation_log` VALUES ('ea23611aa0fa18f675a3c830585e50a8', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 78, '2020-04-15 06:54:01');
INSERT INTO `sys_user_operation_log` VALUES ('ea6665e86937a18711a83f65f5dd13cf', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-30 13:50:14');
INSERT INTO `sys_user_operation_log` VALUES ('eabee62f46d119eaedc5aacd97ea078f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1425, '2020-09-06 10:05:32');
INSERT INTO `sys_user_operation_log` VALUES ('eae2a088f79a9b444f9f07be81bde758', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 239, '2023-06-29 14:33:21');
INSERT INTO `sys_user_operation_log` VALUES ('eb5b1da19da9e199e1a7104dd42a1673', 'admin', 'TbContract', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-29 09:24:13');
INSERT INTO `sys_user_operation_log` VALUES ('eb7e0abd9f24fd9024e6ba89149a3771', 'admin', '机构管理', '列表', 'page', '{\"deptName\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 24, '2020-11-07 17:09:58');
INSERT INTO `sys_user_operation_log` VALUES ('ebac9ff9ffc86d19b072d136416d8a61', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 13, '2023-06-29 16:22:04');
INSERT INTO `sys_user_operation_log` VALUES ('ebb543c7e8c96e91f5ca4bd3b5b4ba0e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 165, '2020-04-13 07:25:28');
INSERT INTO `sys_user_operation_log` VALUES ('ebbe9e9a5b9b8a2d69620d682e7293ab', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 406, '2020-04-20 01:24:45');
INSERT INTO `sys_user_operation_log` VALUES ('ebcd2e0cf9a3e0061003b0cb2f84a8fa', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 317, '2020-04-21 03:42:36');
INSERT INTO `sys_user_operation_log` VALUES ('ec444e6a044d409cc8eb62d9a3e5a526', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 16, '2023-06-30 13:40:09');
INSERT INTO `sys_user_operation_log` VALUES ('ec6c22bc7f8d6819ba0675ee480bdb8c', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 234, '2020-11-07 16:58:19');
INSERT INTO `sys_user_operation_log` VALUES ('ecaa626038264bb5f1669455858ba97f', 'admin', 'SystemMessage', '修改', 'top', '{}', '127.0.0.1', 9, '2023-06-30 15:11:52');
INSERT INTO `sys_user_operation_log` VALUES ('ecf2e56e2b86b726b8e05fdf876b086f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 398, '2023-06-30 13:39:25');
INSERT INTO `sys_user_operation_log` VALUES ('ecf9d4462eaed41df5fa590a2b909cce', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 419, '2022-06-16 06:42:42');
INSERT INTO `sys_user_operation_log` VALUES ('ed974b55e9d9b1c30de1e7ad75ee2f40', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1846, '2020-04-21 10:06:47');
INSERT INTO `sys_user_operation_log` VALUES ('ed989d3b31686f2970508a4c5c12acc2', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 383, '2020-04-21 02:45:42');
INSERT INTO `sys_user_operation_log` VALUES ('edacd5240a9c8180fc75be30be516f12', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1819, '2020-04-21 09:51:42');
INSERT INTO `sys_user_operation_log` VALUES ('edcccde66d859848ad480d9237bf5fce', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:30:10');
INSERT INTO `sys_user_operation_log` VALUES ('edd36055f725715d57c35bba01608c92', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 154, '2020-04-07 07:01:21');
INSERT INTO `sys_user_operation_log` VALUES ('edef2829810d3d59e95c4e0292f376e8', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 267, '2020-08-20 09:10:03');
INSERT INTO `sys_user_operation_log` VALUES ('edf6d66b818fe120d084bfe8d0ca6a30', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-29 21:47:11');
INSERT INTO `sys_user_operation_log` VALUES ('ee01e46df90dd822911485edc2bc7dc3', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 6, '2023-06-29 19:20:46');
INSERT INTO `sys_user_operation_log` VALUES ('ee7dd29211d9b5a8c69b6e245e6bf235', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 08:52:13');
INSERT INTO `sys_user_operation_log` VALUES ('ee8fe2f273fcf80d5c2ea47ab799263b', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 319, '2020-08-12 01:51:06');
INSERT INTO `sys_user_operation_log` VALUES ('eeaa1fb67981b387e8656c089172a1c7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1122, '2020-10-24 03:56:48');
INSERT INTO `sys_user_operation_log` VALUES ('eecc904c9544290cb8f127f68dd5c516', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 57, '2020-09-03 02:21:42');
INSERT INTO `sys_user_operation_log` VALUES ('eef96512b253202cac43da7ebf1647ae', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 159, '2020-03-16 07:13:07');
INSERT INTO `sys_user_operation_log` VALUES ('ef13a6a6ea6d21b285e1dca1d6eed292', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 4, '2023-06-28 16:37:28');
INSERT INTO `sys_user_operation_log` VALUES ('ef9ab929929b0c8c4701cf341d7b482e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 285, '2020-04-21 08:29:09');
INSERT INTO `sys_user_operation_log` VALUES ('f0102c0e3d2561cc6ec40bd1b28e7981', 'admin', 'TbContract', '新增', 'save', '{}', '127.0.0.1', 21, '2023-06-29 21:43:20');
INSERT INTO `sys_user_operation_log` VALUES ('f04a6bb36fb7fc252c35062aa54d371e', 'Anonymous', '登录模块', '用户退出', 'logout', '{}', '127.0.0.1', 3, '2022-06-17 01:13:20');
INSERT INTO `sys_user_operation_log` VALUES ('f06ef61a3c66610768c4efe55b19cf24', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 405, '2020-05-08 01:32:25');
INSERT INTO `sys_user_operation_log` VALUES ('f0d4f1c7fa87dea4ebada6c4782936fc', 'Anonymous', '查询用户列表', 'openApi', 'userList', '{\"id\":\"0\"}', '127.0.0.1', 65, '2020-09-06 22:21:05');
INSERT INTO `sys_user_operation_log` VALUES ('f1088cd69edac550cfed199005e8fa0f', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1117, '2020-09-07 09:35:06');
INSERT INTO `sys_user_operation_log` VALUES ('f119dab0fb7c9d7505a5764e20bd171e', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 19:20:51');
INSERT INTO `sys_user_operation_log` VALUES ('f12582797a7382928854d1bafc63df59', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 7, '2023-06-30 13:53:14');
INSERT INTO `sys_user_operation_log` VALUES ('f1d3dbcb35c9e661fe54f96108f6e4e1', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 352, '2020-04-03 14:23:34');
INSERT INTO `sys_user_operation_log` VALUES ('f2173aa2879598d901701520f4772bf1', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 14, '2023-06-28 10:21:54');
INSERT INTO `sys_user_operation_log` VALUES ('f2565d4e0ccf38bbae17d871cec81069', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 63, '2020-04-13 08:03:01');
INSERT INTO `sys_user_operation_log` VALUES ('f268397e28cd9f268cabfe33ea466b32', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 10, '2023-06-29 09:05:38');
INSERT INTO `sys_user_operation_log` VALUES ('f27b8388c7729b5c92cde3270391b3c3', 'admin', 'TbOrderInfo', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-30 14:40:54');
INSERT INTO `sys_user_operation_log` VALUES ('f2a0cff4a47da7918de8cc79357b9f7e', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 19, '2022-06-15 09:39:01');
INSERT INTO `sys_user_operation_log` VALUES ('f2ba32e6df7737c70499e41a427680f2', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000647\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 109, '2020-05-18 07:40:39');
INSERT INTO `sys_user_operation_log` VALUES ('f2f117e7ab0bc709517e45e6d40ef1f7', 'admin', 'DemoTest', '删除', 'delete', '{}', '127.0.0.1', 4, '2022-06-17 00:48:04');
INSERT INTO `sys_user_operation_log` VALUES ('f2f572e4d1fb81acd55e4dc69526322c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 161, '2020-04-17 02:18:01');
INSERT INTO `sys_user_operation_log` VALUES ('f3051f805572dee867c48e6fec24d44a', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 14:38:58');
INSERT INTO `sys_user_operation_log` VALUES ('f30f69ad288202afffefd624d77b7aa1', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 9, '2022-06-17 01:07:09');
INSERT INTO `sys_user_operation_log` VALUES ('f328e74f1a0a1d62350dbc7cc819c5b2', 'admin', '代码生成', '新增', 'save', '{}', '127.0.0.1', 198, '2020-09-08 08:37:47');
INSERT INTO `sys_user_operation_log` VALUES ('f3369d7f7df96357584c712091e0c4c5', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 38, '2020-05-07 05:46:22');
INSERT INTO `sys_user_operation_log` VALUES ('f363b42619519809fa804718520c83fa', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"2\"}', '127.0.0.1', 103, '2020-05-07 04:36:47');
INSERT INTO `sys_user_operation_log` VALUES ('f389bf6620217cf589d3199ba9762b51', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 344, '2020-05-07 04:32:22');
INSERT INTO `sys_user_operation_log` VALUES ('f3947af4c4a6aead13a06ab73ede4da1', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 183, '2020-11-07 17:02:33');
INSERT INTO `sys_user_operation_log` VALUES ('f42c23718492e30f8feda0cd5ccb91f9', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:34:38');
INSERT INTO `sys_user_operation_log` VALUES ('f459e160566f71ca225e0ab9f7a910a5', 'admin', '登录日志管理', '日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 65, '2020-04-13 07:47:43');
INSERT INTO `sys_user_operation_log` VALUES ('f46f5700666f288c85776107228444c7', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{\"_\":\"1688032024997?_=1688032025464?_=1688032025608\"}', '127.0.0.1', 14, '2023-06-29 17:47:06');
INSERT INTO `sys_user_operation_log` VALUES ('f47a1ce144432b67979342f74f60be11', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 23, '2022-06-16 08:44:27');
INSERT INTO `sys_user_operation_log` VALUES ('f4b10510c3255ce9d8eb26d8ecc7f464', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1008, '2023-06-27 14:29:33');
INSERT INTO `sys_user_operation_log` VALUES ('f4c321015a64c63b7bfc733210f124f7', 'admin', 'TbCustLinkman', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-30 14:44:32');
INSERT INTO `sys_user_operation_log` VALUES ('f4cdcff129e9f460c83ff7437b6d5c9c', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 16, '2023-06-28 09:36:09');
INSERT INTO `sys_user_operation_log` VALUES ('f4d824cec9629d2302a86ce34c4150d3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 5438, '2022-06-15 16:51:18');
INSERT INTO `sys_user_operation_log` VALUES ('f4f0b73c1fcda7560bdb518f96c2d15a', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 10:02:45');
INSERT INTO `sys_user_operation_log` VALUES ('f4f8fc2890bf58a6532c8fd0d79e1edf', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 349, '2020-04-21 07:38:44');
INSERT INTO `sys_user_operation_log` VALUES ('f503b20b40aee22a51fe8a529051a681', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-29 22:30:18');
INSERT INTO `sys_user_operation_log` VALUES ('f5721adb8a6be7cacde6a0cb34c445a7', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000703\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 92, '2020-05-18 07:40:37');
INSERT INTO `sys_user_operation_log` VALUES ('f5b100e68cc19807269105666bc9d0ce', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1606, '2020-04-15 06:53:54');
INSERT INTO `sys_user_operation_log` VALUES ('f5c1dd24f6eded5ebce12cdf0a147e0a', 'admin', '数据字典', '列表', 'page', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 55, '2020-10-04 16:56:29');
INSERT INTO `sys_user_operation_log` VALUES ('f5c8a437bfdd25d38147f049c5b36618', 'admin', 'TbVisit', '修改', 'update', '{}', '127.0.0.1', 3, '2023-06-30 13:54:33');
INSERT INTO `sys_user_operation_log` VALUES ('f5ed3756ea2addb9f0d6733fb66c8d36', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 68, '2020-05-08 03:18:20');
INSERT INTO `sys_user_operation_log` VALUES ('f62c41eaf11538c5ee1e1046592d0fd3', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 233, '2020-04-13 07:55:48');
INSERT INTO `sys_user_operation_log` VALUES ('f62f0a332ebd8699a8bebb8e92b6f426', 'admin', '登录日志管理', '登录日志列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 74, '2020-04-13 08:04:23');
INSERT INTO `sys_user_operation_log` VALUES ('f65ae977e5320b4c65231c3c9e7e1c03', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"2\",\"username\":\"\"}', '127.0.0.1', 69, '2020-05-09 10:30:28');
INSERT INTO `sys_user_operation_log` VALUES ('f66e5554515e1befb3b5df8305689421', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"13333333333333333333\",\"roles\":\"\",\"phone\":\"1233333\",\"disable\":\"0\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"1233333333333\"}', '127.0.0.1', 54, '2020-10-04 16:56:26');
INSERT INTO `sys_user_operation_log` VALUES ('f67498b3c49d3e153f50e4804177c1ba', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 81, '2022-06-15 09:38:58');
INSERT INTO `sys_user_operation_log` VALUES ('f68deb743e593aeccd59f4d5a28c4228', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 6, '2023-06-29 20:28:59');
INSERT INTO `sys_user_operation_log` VALUES ('f7201b1d7753e5ce928310037fd6be17', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 23, '2023-06-30 15:13:56');
INSERT INTO `sys_user_operation_log` VALUES ('f74d9159f797975271914b3bf07bc3f9', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 14, '2023-06-28 10:11:46');
INSERT INTO `sys_user_operation_log` VALUES ('f74f69c88f8e8a79db81a96b301da54e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 352, '2020-04-21 04:35:55');
INSERT INTO `sys_user_operation_log` VALUES ('f77c757165ec65df1628915884ae7b9c', 'admin', '机构管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 31, '2020-08-20 09:12:42');
INSERT INTO `sys_user_operation_log` VALUES ('f7a7d5cf7b002281302eb018a2c71699', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 55, '2020-05-08 03:07:11');
INSERT INTO `sys_user_operation_log` VALUES ('f7ecbd4552dab699c4cff603774b0757', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 96, '2023-06-29 14:33:22');
INSERT INTO `sys_user_operation_log` VALUES ('f7f03fb45d8f86d8775e4aaac92a052f', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-29 22:30:12');
INSERT INTO `sys_user_operation_log` VALUES ('f8447952795224aa75263d014e7608ef', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 142, '2020-09-07 09:34:40');
INSERT INTO `sys_user_operation_log` VALUES ('f886f5c6d28798f87391c2abc529320a', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 273, '2020-04-30 03:54:07');
INSERT INTO `sys_user_operation_log` VALUES ('f8b31a17c363aecdb9992082ad231354', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 263, '2023-06-29 17:46:45');
INSERT INTO `sys_user_operation_log` VALUES ('f8c84b9ebfd1687e24acfc7079c5cce3', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 3442, '2020-04-28 06:25:26');
INSERT INTO `sys_user_operation_log` VALUES ('f8d850e2ecaba1b4a4df1d2ac97b3473', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 0, '2023-06-30 14:05:13');
INSERT INTO `sys_user_operation_log` VALUES ('f8dc2c8e019423a67713f7854fb9690a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 334, '2023-06-28 20:46:49');
INSERT INTO `sys_user_operation_log` VALUES ('f926029ef9211f24104e05c735ca313d', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 23, '2023-06-28 20:46:53');
INSERT INTO `sys_user_operation_log` VALUES ('f980bcad223a4517c23264abe38f502e', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 62, '2020-05-08 01:59:39');
INSERT INTO `sys_user_operation_log` VALUES ('f98bd63b115f577d24d068205e2aca57', 'admin', '菜单管理', '修改', 'update', '{}', '127.0.0.1', 101, '2020-04-21 03:02:31');
INSERT INTO `sys_user_operation_log` VALUES ('f9b9af362d0f657c215c8383dabe796e', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 13:35:44');
INSERT INTO `sys_user_operation_log` VALUES ('f9cd35b5664315ad7f3cf7f668cd7872', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 376, '2020-09-02 07:45:12');
INSERT INTO `sys_user_operation_log` VALUES ('f9ed6cdc7a1b2126fc20ff67a3429ce3', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 97, '2020-05-08 02:44:59');
INSERT INTO `sys_user_operation_log` VALUES ('fa9d98bdb29d2a125a70fbb0f8c4a75a', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 65, '2020-04-13 07:56:05');
INSERT INTO `sys_user_operation_log` VALUES ('fac43526310b2da7e9dcdfc493e56f0e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 118, '2020-09-05 08:56:47');
INSERT INTO `sys_user_operation_log` VALUES ('fb00a501bef11e10877ac460bde84c88', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 3, '2023-06-28 16:33:30');
INSERT INTO `sys_user_operation_log` VALUES ('fb3429b5cb404300a24c678aeac2da80', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 5, '2023-06-29 11:12:47');
INSERT INTO `sys_user_operation_log` VALUES ('fb6d81287919c24fc50092488492119d', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 65, '2020-05-08 03:09:36');
INSERT INTO `sys_user_operation_log` VALUES ('fb97c8ae0e09ef99c50057524321fbd6', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 1411, '2020-07-27 07:56:16');
INSERT INTO `sys_user_operation_log` VALUES ('fba109ac680e2ec7499a324b4f1869cb', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 18, '2023-06-29 17:47:11');
INSERT INTO `sys_user_operation_log` VALUES ('fc47e5cbae0d8f7f0e58c0e108302984', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 33, '2022-06-16 08:44:14');
INSERT INTO `sys_user_operation_log` VALUES ('fca1a698a7866630e8e9a9520295217e', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 349, '2020-05-09 01:20:31');
INSERT INTO `sys_user_operation_log` VALUES ('fca8f6b52759ae39623ebc0fb705934e', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 322, '2020-05-07 08:31:58');
INSERT INTO `sys_user_operation_log` VALUES ('fcb6d2a9692abdf7fe3ace58be8c6037', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 100, '2020-10-24 03:51:35');
INSERT INTO `sys_user_operation_log` VALUES ('fd14bbb21f74f48262dcb0e066878d0d', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 181, '2020-11-07 17:11:26');
INSERT INTO `sys_user_operation_log` VALUES ('fd1f6061daca4c0a1dc3cb10cb1446c0', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 16, '2023-06-30 15:14:22');
INSERT INTO `sys_user_operation_log` VALUES ('fd38bc1b926841dcdc1f13e41a1e3fd2', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 572, '2020-08-10 07:42:45');
INSERT INTO `sys_user_operation_log` VALUES ('fd5901d34a6a20f9e04a63ebdc60eccf', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 4, '2023-06-28 09:39:22');
INSERT INTO `sys_user_operation_log` VALUES ('fdc00792a50baaaca3a30e3ab26a9e52', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 160, '2020-09-03 02:22:29');
INSERT INTO `sys_user_operation_log` VALUES ('fdf9e3c0458afbd4a44bd5afc2cac064', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 1777, '2020-04-13 01:32:06');
INSERT INTO `sys_user_operation_log` VALUES ('fe0a8a163f9adc26c61ab0afdf12d1f9', 'admin', 'TbOrderInfo', '修改', 'update', '{}', '127.0.0.1', 14, '2023-06-30 10:34:00');
INSERT INTO `sys_user_operation_log` VALUES ('fe3fda5ed30c190f684297a67d7ecf37', 'admin', 'TbCustomer', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 20:44:45');
INSERT INTO `sys_user_operation_log` VALUES ('fe6b72129643df511f6b84a860988fe7', 'admin', '用户管理', '列表', 'page', '{\"nickName\":\"\",\"roles\":\"\",\"phone\":\"\",\"disable\":\"\",\"limit\":\"10\",\"page\":\"1\",\"username\":\"\"}', '127.0.0.1', 168, '2020-11-07 17:13:13');
INSERT INTO `sys_user_operation_log` VALUES ('fe728aa9c6abdc6503126ee64739d6fe', 'admin', '登录模块', '用户登录', 'login', '{}', '127.0.0.1', 722, '2020-04-20 01:22:42');
INSERT INTO `sys_user_operation_log` VALUES ('fec6ce01ddd0c871a84afe1b270c65c4', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '', 810, '2020-07-29 07:10:41');
INSERT INTO `sys_user_operation_log` VALUES ('fecbff4a59ab24d18612d2a84b3a436e', 'admin', '机构管理', '列表', 'page', '{\"deptId\":\"OR1200000389\",\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 93, '2020-05-18 07:40:38');
INSERT INTO `sys_user_operation_log` VALUES ('fece971f43cd08280a6fcbdac407b624', 'admin', 'TbCustomer', '新增', 'save', '{}', '127.0.0.1', 5, '2023-06-28 10:23:34');
INSERT INTO `sys_user_operation_log` VALUES ('fed8a20674a3b48b4ba163b38ab005cf', 'admin', '代码检测', '下载检测结果文件', 'delete', '{}', '127.0.0.1', 157, '2020-09-07 09:33:35');
INSERT INTO `sys_user_operation_log` VALUES ('fedf086cfaa62d452f76d5eec0c46812', 'admin', '用户管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 166, '2020-03-16 07:05:59');
INSERT INTO `sys_user_operation_log` VALUES ('ff185e82f2fbec11fbb2bf4fbe116d06', 'admin', 'TbCustomer', '删除', 'delete', '{}', '127.0.0.1', 5, '2023-06-28 09:33:03');
INSERT INTO `sys_user_operation_log` VALUES ('ff382c9dd3d9e72cfea3d1195fa45690', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 79, '2020-11-07 17:02:30');
INSERT INTO `sys_user_operation_log` VALUES ('ff583f1bc94c65f9843ef77abae3285c', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 2121, '2020-05-07 09:03:38');
INSERT INTO `sys_user_operation_log` VALUES ('ff6894b0cbce5b63f6a6d61159637bce', 'admin', '数据字典', '导出', 'export', '{\"diceCodes\":\"\",\"dictName\":\"\"}', '127.0.0.1', 228, '2020-07-24 07:56:10');
INSERT INTO `sys_user_operation_log` VALUES ('ff7b5d517649aeb778b319f053bb076a', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 228, '2020-09-02 07:45:07');
INSERT INTO `sys_user_operation_log` VALUES ('ff82b48d29c01d726f8c58f355a29dd1', 'Anonymous', '登录模块', '登录验证码', 'captcha', '{}', '127.0.0.1', 26, '2022-06-17 01:14:27');
INSERT INTO `sys_user_operation_log` VALUES ('ffc5c1bd7bdf83f3fb8c9a9b296099dd', 'admin', '系统管理', '列表', 'page', '{\"limit\":\"10\",\"page\":\"1\"}', '127.0.0.1', 73, '2020-05-08 03:16:49');
INSERT INTO `sys_user_operation_log` VALUES ('fffa04aa423c8cb5f9f98159fcb7301c', 'admin', 'TbContract', '修改', 'update', '{}', '127.0.0.1', 4, '2023-06-29 21:57:25');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `USER_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ROLE_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`USER_ID`, `ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1115864230968729601', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115864462813077506', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115889682278023169', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115897726932131841', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115897952292085762', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115899722758164481', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115901422860570625', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1115901422860570625', '2');
INSERT INTO `sys_user_role` VALUES ('1115903825278210050', '1');
INSERT INTO `sys_user_role` VALUES ('1116300420066959361', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1116538422137143297', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1117666119402192897', '1');
INSERT INTO `sys_user_role` VALUES ('1117666119402192897', '11111218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1117666119402192897', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1118690678960066561', '1111');
INSERT INTO `sys_user_role` VALUES ('1118706266428194818', '1111');
INSERT INTO `sys_user_role` VALUES ('1118706266428194818', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1138460331855884289', '1111');
INSERT INTO `sys_user_role` VALUES ('1138460331855884289', '1218567428905160705');
INSERT INTO `sys_user_role` VALUES ('1138463107453333505', '1111');
INSERT INTO `sys_user_role` VALUES ('1138463481715273730', '1111');
INSERT INTO `sys_user_role` VALUES ('1138465382401953793', '1218717746478055426');
INSERT INTO `sys_user_role` VALUES ('1147850266972839937', '1218567729141829633');
INSERT INTO `sys_user_role` VALUES ('1157842323041148930', '1111');
INSERT INTO `sys_user_role` VALUES ('1157842678214811649', '1111');
INSERT INTO `sys_user_role` VALUES ('1176673562082635778', '1111');
INSERT INTO `sys_user_role` VALUES ('1189475248153251842', '1218567872230510594');
INSERT INTO `sys_user_role` VALUES ('1227877059054125057', '1111');

-- ----------------------------
-- Table structure for system_message
-- ----------------------------
DROP TABLE IF EXISTS `system_message`;
CREATE TABLE `system_message`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `TYPE` int NULL DEFAULT NULL COMMENT '消息类型号',
  `MSG_DATE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '信息日期',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `TOP` int NULL DEFAULT NULL COMMENT '置顶',
  `SOURCE_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '发送方',
  `SEND_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '接收方',
  `TITLE` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '消息题目',
  `IS_READER` int NULL DEFAULT NULL COMMENT '是否已读',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 433 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_message
-- ----------------------------
INSERT INTO `system_message` VALUES (1, 1, '祝您中秋团圆,国庆快乐!', '2020-09-22 16:55:42', 0, '张三', '李四', '来自院长的祝福', 1);
INSERT INTO `system_message` VALUES (2, 1, '祝您中秋团圆,国庆快乐!', '2020-09-23 15:55:42', 0, '王兀', '张柳', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (3, 1, '祝您中秋团圆,国庆快乐!', '2020-09-24 12:55:42', 0, '张柳', '王兀', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (4, 1, '祝您中秋团圆,国庆快乐!', '2020-09-23 10:57:42', 0, '张三', '李四', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (5, 1, '祝您中秋团圆,国庆快乐!', '2020-09-23 13:55:42', 0, '李逵', '张柳', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (6, 1, '祝您中秋团圆,国庆快乐!', '2020-09-23 18:55:42', 0, '李四', '张三', '来自院长的祝福', 1);
INSERT INTO `system_message` VALUES (7, 1, '祝您中秋团圆,国庆快乐!', '2020-09-23 20:55:42', 0, '赵六', '张三', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (8, 2, '祝您中秋团圆,国庆快乐!', '2020-09-23 16:55:42', 0, '李清', '伍媚', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (9, 1, '祝您中秋团圆,国庆快乐!', '2020-09-22 19:55:42', 0, '伍媚', '王五', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (10, 1, '祝您中秋团圆,国庆快乐!', '2019-12-23 16:55:42', 0, '李白', 'admin', '来自院长的祝福', 1);
INSERT INTO `system_message` VALUES (11, 1, '祝您中秋团圆,国庆快乐!', '2020-09-22 18:01:42', 0, '张柳', '王兀', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (12, 2, '祝您中秋团圆,国庆快乐!', '2020-06-23 12:55:42', 0, '四一', '污了污了', '来自院长的祝福', 0);
INSERT INTO `system_message` VALUES (13, 1, '我的崽崽们,你们一定要记得吃饭,记得保暖,注意爱护自己,写代码累了,就休息下,但是要按时提交进度,有啥事记得打电话来!!爱你们', '2020-01-09 16:55:42', 1, '老麦,阳阳,谢总', 'admin', '来自啰嗦妈妈的嘱咐', 1);
INSERT INTO `system_message` VALUES (14, 1, '大家中秋快乐,国庆快乐,一周时间看不到你们,挺寂寞孤独的,给你们布置作业的日子,是最开心的日子', '2020-07-23 16:55:42', 1, '赵文贤,魏志伟', 'admin', '来自讲师的关怀', 0);
INSERT INTO `system_message` VALUES (15, 2, '现在是在做企业项目,大家晚上都加班加点,还被项目经理,技术经理虐待,但是,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!\n', '2020-09-23 11:30:42', 0, '任小龙', 'admin', '来自校长的爱戴', 1);
INSERT INTO `system_message` VALUES (16, 2, '如果你们国庆不好好把项目写了,国庆以后我就把你们扬了\n恶魔中的魔鬼--东方不败', '2020-01-09 13:05:42', 1, '东方不败', 'admin', '来自恶魔的忠告', 0);
INSERT INTO `system_message` VALUES (17, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '王兀', '系统消息', 0);
INSERT INTO `system_message` VALUES (18, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '张柳', '系统消息', 0);
INSERT INTO `system_message` VALUES (19, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '李逵', '系统消息', 0);
INSERT INTO `system_message` VALUES (20, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '李四', '系统消息', 0);
INSERT INTO `system_message` VALUES (21, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 张三', '2020-10-04 08:12:26', 1, '张三', 'admin', '系统消息', 0);
INSERT INTO `system_message` VALUES (22, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '李清', '系统消息', 0);
INSERT INTO `system_message` VALUES (23, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '伍媚', '系统消息', 0);
INSERT INTO `system_message` VALUES (24, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '李白', '系统消息', 0);
INSERT INTO `system_message` VALUES (25, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '张柳', '系统消息', 0);
INSERT INTO `system_message` VALUES (26, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '四一', '系统消息', 0);
INSERT INTO `system_message` VALUES (27, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '吴起', '系统消息', 0);
INSERT INTO `system_message` VALUES (28, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '赵文贤', '系统消息', 0);
INSERT INTO `system_message` VALUES (29, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '任小龙', '系统消息', 0);
INSERT INTO `system_message` VALUES (30, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 张三', '2020-10-04 08:12:26', NULL, '张三', '东方不败', '系统消息', 0);
INSERT INTO `system_message` VALUES (31, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '张三', '系统消息', 0);
INSERT INTO `system_message` VALUES (32, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '张柳', '系统消息', 0);
INSERT INTO `system_message` VALUES (33, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '李逵', '系统消息', 0);
INSERT INTO `system_message` VALUES (34, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '李四', '系统消息', 0);
INSERT INTO `system_message` VALUES (35, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (36, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (37, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (38, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (39, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (40, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (41, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (42, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (43, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (44, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 王兀', '2020-10-04 08:12:26', NULL, '王兀', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (45, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (46, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (47, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (48, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (49, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (50, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (51, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (52, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (53, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (54, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (55, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (56, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (57, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (58, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (59, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (60, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (61, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (62, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (63, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (64, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (65, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (66, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (67, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (68, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (69, 1, '祝您中秋团圆,国庆快乐! TO:admin I am: 李逵', '2020-10-04 08:12:26', 1, '李逵', 'admin', '系统消息', 1);
INSERT INTO `system_message` VALUES (70, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (71, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 李逵', '2020-10-04 08:12:26', NULL, '李逵', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (72, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (73, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (74, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (75, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (76, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (77, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (78, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (79, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (80, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (81, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (82, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (83, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (84, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (85, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 李四', '2020-10-04 08:12:26', NULL, '李四', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (86, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (87, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (88, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (89, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (90, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (91, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (92, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (93, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (94, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (95, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (96, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (97, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (98, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (99, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 赵六', '2020-10-04 08:12:26', NULL, '赵六', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (100, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (101, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (102, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (103, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (104, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (105, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (106, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (107, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (108, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (109, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (110, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (111, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (112, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (113, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 李清', '2020-10-04 08:12:26', NULL, '李清', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (114, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (115, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (116, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (117, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (118, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (119, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (120, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (121, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (122, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (123, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (124, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (125, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (126, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (127, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 伍媚', '2020-10-04 08:12:26', NULL, '伍媚', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (128, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (129, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (130, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (131, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (132, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (133, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (134, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (135, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (136, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (137, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (138, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (139, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (140, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (141, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 李白', '2020-10-04 08:12:26', NULL, '李白', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (142, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (143, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (144, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (145, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (146, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '赵六', '系统消息', 0);
INSERT INTO `system_message` VALUES (147, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李清', '系统消息', 0);
INSERT INTO `system_message` VALUES (148, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '伍媚', '系统消息', 0);
INSERT INTO `system_message` VALUES (149, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '李白', '系统消息', 0);
INSERT INTO `system_message` VALUES (150, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '四一', '系统消息', 0);
INSERT INTO `system_message` VALUES (151, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (152, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (153, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (154, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 张柳', '2020-10-04 08:12:26', NULL, '张柳', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (155, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (156, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (157, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (158, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (159, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (160, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (161, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (162, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (163, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (164, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (165, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (166, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (167, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (168, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 四一', '2020-10-04 08:12:26', NULL, '四一', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (169, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (170, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (171, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (172, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (173, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (174, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (175, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (176, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (177, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (178, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (179, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (180, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (181, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (182, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 吴起', '2020-10-04 08:12:26', NULL, '吴起', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (183, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (184, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (185, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (186, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (187, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (188, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (189, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (190, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (191, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (192, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (193, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (194, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (195, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (196, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 赵文贤', '2020-10-04 08:12:26', NULL, '赵文贤', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (197, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (198, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (199, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (200, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (201, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (202, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (203, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (204, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (205, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (206, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (207, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (208, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (209, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (210, 1, '祝您中秋团圆,国庆快乐! TO:东方不败I am: 任小龙', '2020-10-04 08:12:26', NULL, '任小龙', '东方不败', '系统消息', 1);
INSERT INTO `system_message` VALUES (211, 1, '祝您中秋团圆,国庆快乐! TO:张三I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '张三', '系统消息', 1);
INSERT INTO `system_message` VALUES (212, 1, '祝您中秋团圆,国庆快乐! TO:王兀I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '王兀', '系统消息', 1);
INSERT INTO `system_message` VALUES (213, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (214, 1, '祝您中秋团圆,国庆快乐! TO:李逵I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '李逵', '系统消息', 1);
INSERT INTO `system_message` VALUES (215, 1, '祝您中秋团圆,国庆快乐! TO:李四I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '李四', '系统消息', 1);
INSERT INTO `system_message` VALUES (216, 1, '祝您中秋团圆,国庆快乐! TO:赵六I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '赵六', '系统消息', 1);
INSERT INTO `system_message` VALUES (217, 1, '祝您中秋团圆,国庆快乐! TO:李清I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '李清', '系统消息', 1);
INSERT INTO `system_message` VALUES (218, 1, '祝您中秋团圆,国庆快乐! TO:伍媚I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '伍媚', '系统消息', 1);
INSERT INTO `system_message` VALUES (219, 1, '祝您中秋团圆,国庆快乐! TO:李白I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '李白', '系统消息', 1);
INSERT INTO `system_message` VALUES (220, 1, '祝您中秋团圆,国庆快乐! TO:张柳I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '张柳', '系统消息', 1);
INSERT INTO `system_message` VALUES (221, 1, '祝您中秋团圆,国庆快乐! TO:四一I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '四一', '系统消息', 1);
INSERT INTO `system_message` VALUES (222, 1, '祝您中秋团圆,国庆快乐! TO:吴起I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '吴起', '系统消息', 1);
INSERT INTO `system_message` VALUES (223, 1, '祝您中秋团圆,国庆快乐! TO:赵文贤I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '赵文贤', '系统消息', 1);
INSERT INTO `system_message` VALUES (224, 1, '祝您中秋团圆,国庆快乐! TO:任小龙I am: 东方不败', '2020-10-04 08:12:26', NULL, '东方不败', '任小龙', '系统消息', 1);
INSERT INTO `system_message` VALUES (225, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (226, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (227, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (228, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (229, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (230, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (231, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (232, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (233, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (234, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (235, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (236, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (237, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (238, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张三', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (239, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (240, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (241, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (242, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (243, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (244, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (245, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (246, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (247, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (248, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (249, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (250, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (251, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (252, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '王兀', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (253, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (254, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (255, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (256, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李四', '个人消息', 0);
INSERT INTO `system_message` VALUES (257, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '赵六', '个人消息', 0);
INSERT INTO `system_message` VALUES (258, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李清', '个人消息', 0);
INSERT INTO `system_message` VALUES (259, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '伍媚', '个人消息', 0);
INSERT INTO `system_message` VALUES (260, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李白', '个人消息', 0);
INSERT INTO `system_message` VALUES (261, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '四一', '个人消息', 0);
INSERT INTO `system_message` VALUES (262, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '吴起', '个人消息', 0);
INSERT INTO `system_message` VALUES (263, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '赵文贤', '个人消息', 0);
INSERT INTO `system_message` VALUES (264, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '任小龙', '个人消息', 0);
INSERT INTO `system_message` VALUES (265, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '东方不败', '个人消息', 0);
INSERT INTO `system_message` VALUES (266, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '张三', '个人消息', 0);
INSERT INTO `system_message` VALUES (267, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '王兀', '个人消息', 0);
INSERT INTO `system_message` VALUES (268, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (269, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '李四', '个人消息', 0);
INSERT INTO `system_message` VALUES (270, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '赵六', '个人消息', 0);
INSERT INTO `system_message` VALUES (271, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '李清', '个人消息', 0);
INSERT INTO `system_message` VALUES (272, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '伍媚', '个人消息', 0);
INSERT INTO `system_message` VALUES (273, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '李白', '个人消息', 0);
INSERT INTO `system_message` VALUES (274, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (275, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '四一', '个人消息', 0);
INSERT INTO `system_message` VALUES (276, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '吴起', '个人消息', 0);
INSERT INTO `system_message` VALUES (277, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '赵文贤', '个人消息', 0);
INSERT INTO `system_message` VALUES (278, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '任小龙', '个人消息', 0);
INSERT INTO `system_message` VALUES (279, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李逵', '东方不败', '个人消息', 0);
INSERT INTO `system_message` VALUES (280, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '张三', '个人消息', 0);
INSERT INTO `system_message` VALUES (281, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '王兀', '个人消息', 0);
INSERT INTO `system_message` VALUES (282, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (283, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '李逵', '个人消息', 0);
INSERT INTO `system_message` VALUES (284, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '赵六', '个人消息', 0);
INSERT INTO `system_message` VALUES (285, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '李清', '个人消息', 0);
INSERT INTO `system_message` VALUES (286, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '伍媚', '个人消息', 0);
INSERT INTO `system_message` VALUES (287, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '李白', '个人消息', 0);
INSERT INTO `system_message` VALUES (288, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (289, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '四一', '个人消息', 0);
INSERT INTO `system_message` VALUES (290, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '吴起', '个人消息', 0);
INSERT INTO `system_message` VALUES (291, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '赵文贤', '个人消息', 0);
INSERT INTO `system_message` VALUES (292, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '任小龙', '个人消息', 0);
INSERT INTO `system_message` VALUES (293, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李四', '东方不败', '个人消息', 0);
INSERT INTO `system_message` VALUES (294, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '张三', '个人消息', 0);
INSERT INTO `system_message` VALUES (295, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '王兀', '个人消息', 0);
INSERT INTO `system_message` VALUES (296, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (297, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '李逵', '个人消息', 0);
INSERT INTO `system_message` VALUES (298, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '李四', '个人消息', 0);
INSERT INTO `system_message` VALUES (299, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '李清', '个人消息', 0);
INSERT INTO `system_message` VALUES (300, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '伍媚', '个人消息', 0);
INSERT INTO `system_message` VALUES (301, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '李白', '个人消息', 0);
INSERT INTO `system_message` VALUES (302, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (303, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '四一', '个人消息', 0);
INSERT INTO `system_message` VALUES (304, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '吴起', '个人消息', 0);
INSERT INTO `system_message` VALUES (305, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '赵文贤', '个人消息', 0);
INSERT INTO `system_message` VALUES (306, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '任小龙', '个人消息', 0);
INSERT INTO `system_message` VALUES (307, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵六', '东方不败', '个人消息', 0);
INSERT INTO `system_message` VALUES (308, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '张三', '个人消息', 0);
INSERT INTO `system_message` VALUES (309, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '王兀', '个人消息', 0);
INSERT INTO `system_message` VALUES (310, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '张柳', '个人消息', 0);
INSERT INTO `system_message` VALUES (311, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '李逵', '个人消息', 0);
INSERT INTO `system_message` VALUES (312, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (313, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (314, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (315, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (316, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (317, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (318, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (319, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (320, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (321, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李清', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (322, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (323, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (324, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (325, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (326, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (327, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (328, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (329, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (330, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (331, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (332, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (333, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (334, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (335, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '伍媚', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (336, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (337, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (338, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (339, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (340, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (341, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (342, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (343, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (344, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (345, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (346, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (347, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (348, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (349, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '李白', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (350, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (351, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (352, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (353, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (354, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (355, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (356, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (357, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (358, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (359, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (360, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (361, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (362, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '张柳', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (363, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (364, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (365, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (366, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (367, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (368, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (369, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (370, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (371, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (372, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (373, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (374, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (375, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (376, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '四一', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (377, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (378, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (379, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (380, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (381, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (382, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (383, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (384, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (385, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (386, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (387, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (388, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (389, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '任小龙', '个人消息', 1);
INSERT INTO `system_message` VALUES (390, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '吴起', '东方不败', '个人消息', 1);
INSERT INTO `system_message` VALUES (391, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (392, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (393, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (394, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (395, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (396, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (397, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (398, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (399, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (400, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (401, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (402, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '吴起', '个人消息', 0);
INSERT INTO `system_message` VALUES (403, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '任小龙', '个人消息', 0);
INSERT INTO `system_message` VALUES (404, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '赵文贤', '东方不败', '个人消息', 0);
INSERT INTO `system_message` VALUES (405, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '张三', '个人消息', 0);
INSERT INTO `system_message` VALUES (406, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (407, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (408, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (409, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (410, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (411, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (412, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (413, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (414, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (415, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (416, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (417, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '任小龙', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (418, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', 1, '任小龙', 'admin', '个人消息', 1);
INSERT INTO `system_message` VALUES (419, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '张三', '个人消息', 1);
INSERT INTO `system_message` VALUES (420, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '王兀', '个人消息', 1);
INSERT INTO `system_message` VALUES (421, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (422, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '李逵', '个人消息', 1);
INSERT INTO `system_message` VALUES (423, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '李四', '个人消息', 1);
INSERT INTO `system_message` VALUES (424, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '赵六', '个人消息', 1);
INSERT INTO `system_message` VALUES (425, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '李清', '个人消息', 1);
INSERT INTO `system_message` VALUES (426, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '伍媚', '个人消息', 1);
INSERT INTO `system_message` VALUES (427, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '李白', '个人消息', 1);
INSERT INTO `system_message` VALUES (428, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '张柳', '个人消息', 1);
INSERT INTO `system_message` VALUES (429, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '四一', '个人消息', 1);
INSERT INTO `system_message` VALUES (430, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '吴起', '个人消息', 1);
INSERT INTO `system_message` VALUES (431, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', NULL, '东方不败', '赵文贤', '个人消息', 1);
INSERT INTO `system_message` VALUES (432, 2, '现在是在做企业项目,一切的辛苦付出,都是为了以后更好的就业,可以走的更远,以后可以过的更好,为了美好的明天,好好加油!!!', '2020-10-04 08:12:26', 1, '东方不败', 'admin', '个人消息', 1);

-- ----------------------------
-- Table structure for tb_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_contract`;
CREATE TABLE `tb_contract`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `cust_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '客户id',
  `contract_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `contract_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '合同编码',
  `amounts` int NULL DEFAULT NULL COMMENT '合同金额',
  `start_date` date NULL DEFAULT NULL COMMENT '合同生效开始时间',
  `end_date` date NULL DEFAULT NULL COMMENT '合同生效结束时间',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '合同内容',
  `affix_seal_status` int NULL DEFAULT 0 COMMENT '是否盖章确认 0 否 1 是',
  `audit_status` int NULL DEFAULT 0 COMMENT '审核状态 0 未审核 1 审核通过 -1 审核不通过',
  `nullify_status` int NULL DEFAULT 0 COMMENT '是否作废 1 作废 0 在用',
  `input_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '录入人',
  `input_time` datetime NULL DEFAULT NULL COMMENT '录入时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '合同信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_contract
-- ----------------------------
INSERT INTO `tb_contract` VALUES ('3fdeab812c5cb7b718813a50d8629033', 'a48e73407a18ebb430c60babd46834f5', '名称3', '3', 123123, '2023-06-04', '2023-06-29', '内容3', 0, -1, 0, '1115864462813077506', '2023-06-29 22:37:00', '2023-06-30 11:39:01');
INSERT INTO `tb_contract` VALUES ('5f7d53b55e9375cac05d93c998eba5cb', '5322865c16b17511ab213c1f06061d87', 'dasd', 'dsadsa', 444, '2023-06-15', '2023-06-19', 'dsada', 1, 1, 1, '1115864462813077506', '2023-06-30 14:36:44', NULL);
INSERT INTO `tb_contract` VALUES ('7a6dd3bb897e44c6805de22dc59f5c55', 'a48e73407a18ebb430c60babd46834f5', '名称1', '2', 100, '2023-05-29', '2023-06-27', '内容1', 0, 0, 0, '1115864462813077506', '2023-06-29 22:35:30', '2023-06-30 15:03:12');
INSERT INTO `tb_contract` VALUES ('d54bb7725c6949b09edf3875b3f33bd3', 'a76142d0da2aac947e32d05078e2c656', '名称2', '2', 15000, '2023-06-05', '2023-06-21', '内容2', 1, 1, 1, '1115864462813077506', '2023-06-29 22:36:25', NULL);
INSERT INTO `tb_contract` VALUES ('e0e647ad8e24ea0c0a1e642e6b33a49f', '5322865c16b17511ab213c1f06061d87', 'fdsdfs', 'dfsf', 123, '2023-06-23', '2023-06-21', 'dsad', 1, -1, 1, '1115864462813077506', '2023-06-30 15:02:45', NULL);

-- ----------------------------
-- Table structure for tb_cust_linkman
-- ----------------------------
DROP TABLE IF EXISTS `tb_cust_linkman`;
CREATE TABLE `tb_cust_linkman`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `cust_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '客户id',
  `linkman` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `sex` int NULL DEFAULT NULL COMMENT '性别 1 男 0 女',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `position` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职位',
  `status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职位状态',
  `department` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门',
  `remark` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `input_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '录入人',
  `input_time` datetime NULL DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_customer`(`cust_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客户联系人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_cust_linkman
-- ----------------------------
INSERT INTO `tb_cust_linkman` VALUES ('600283bbe938ebdffe2b3c8395b2dce2', '企业5', '名字1', 1, 0, '42432423', '经理', '0', 'java', '无', '1115864462813077506', '2023-06-29 22:39:00');
INSERT INTO `tb_cust_linkman` VALUES ('8e40cda04754d882fee247412440f0a3', '企业4', '名字2', 1, 26, '15248562598', '程序员', '0', 'web', '删库跑路', '1115864462813077506', '2023-06-29 22:39:41');
INSERT INTO `tb_cust_linkman` VALUES ('9ae4c714c49e34907c93007f1737a412', '企业4', 'asb', 1, 10, '13360827577', 'a', '0', '1', '1', '1115864462813077506', '2023-06-30 13:49:20');
INSERT INTO `tb_cust_linkman` VALUES ('d47a8ce20cace72798337d366a2ede98', '企业5', 'fafsa', 1, 12, '6666666', 'dsad', '1', 'dsad', 'fdsf', '1115864462813077506', '2023-06-30 15:05:52');
INSERT INTO `tb_cust_linkman` VALUES ('fe007e59717290aecf9076946c710f08', '企业4', 'dfsf', 1, 12, '15248562598', 'sdada', '1', 'd', 'sdad', '1115864462813077506', '2023-06-30 14:42:44');

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `legal_leader` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '法定代表人',
  `register_date` date NULL DEFAULT NULL COMMENT '成立时间',
  `open_status` int NULL DEFAULT NULL COMMENT '经营状态, 0 开业、1 注销、2 破产',
  `province` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所属地区省份',
  `reg_capital` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '注册资本,(万元)',
  `industry` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `scope` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `reg_addr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '注册地址',
  `input_time` datetime NULL DEFAULT NULL COMMENT '录入时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `input_user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '录入人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES ('262f18b7da9b1d85bcc980a932fb3db0', '企业4', '代表人4', '2023-06-13', 0, '130000', '100000', '行业4', '范围4', '地址4', '2023-06-29 22:32:24', NULL, '1115864462813077506');
INSERT INTO `tb_customer` VALUES ('5322865c16b17511ab213c1f06061d87', '企业5', '代表人5', '2023-06-11', 0, '310000', '150000', '行业5', '范围5', '地址5', '2023-06-29 22:32:53', NULL, '1115864462813077506');
INSERT INTO `tb_customer` VALUES ('8f78a71819080904534aae7baa50d86e', '企业6', '代表人6', '2023-06-26', 0, '330000', '15200', '行业6', '范围6', '地址6', '2023-06-29 22:33:32', NULL, '1115864462813077506');
INSERT INTO `tb_customer` VALUES ('a48e73407a18ebb430c60babd46834f5', '企业1', '代表人1', '2023-06-01', 0, '120000', '10000', '行业1', '范围1', '地址1', '2023-06-29 22:31:03', NULL, '1115864462813077506');
INSERT INTO `tb_customer` VALUES ('a76142d0da2aac947e32d05078e2c656', '企业2', '代表人2', '2023-06-13', 1, '150000', '10000', '行业2', '范围2', '地址2', '2023-06-29 22:31:28', NULL, '1115864462813077506');
INSERT INTO `tb_customer` VALUES ('de6621d6d1b3c8594fd28c0010d41a95', '企业3', '代表人3', '2023-05-30', 2, '220000', '10000', '行业3', '范围3', '地址3', '2023-06-29 22:31:54', NULL, '1115864462813077506');

-- ----------------------------
-- Table structure for tb_order_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_info`;
CREATE TABLE `tb_order_info`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `cust_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '所属客户id',
  `prod_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `amounts` int NULL DEFAULT NULL COMMENT '产品数量',
  `price` int NULL DEFAULT NULL COMMENT '产品价格',
  `status` int NULL DEFAULT NULL COMMENT '状态 0 未发货 1 已发货 2 已收货',
  `receiver` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '收货人',
  `link_phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `logistcs` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流',
  `logistics_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `deliver_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_customer`(`cust_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_info
-- ----------------------------
INSERT INTO `tb_order_info` VALUES ('30196c3889b6a31fb86095cffb692744', '企业5', '名称1', 12, 200, 1, '1', '13333333333', '佛山', '11', '11', NULL, NULL);
INSERT INTO `tb_order_info` VALUES ('427a31bc5715a25985712a033f9c279a', '企业5', 'fs', 12, 12, 1, '3', '111', 'fsafa', 'fdafd', 'dfdsf', '2023-06-30 14:40:54', NULL);
INSERT INTO `tb_order_info` VALUES ('8426d7e605d5301b5b08862cd0c66d2f', '企业5', 'fdsfs', 12, 12, 1, 'fsdf', '32131', 'fafd', 'fdaf', 'dsff', '2023-06-30 15:04:30', NULL);
INSERT INTO `tb_order_info` VALUES ('8966a1b0f2070926407a38c799aa9d4b', '企业6', 'sdsasd', 12, 321, 1, '2313', '213', 'dsad', 'dsa', 'dsa', NULL, NULL);
INSERT INTO `tb_order_info` VALUES ('e310bab874ed8e39cb884f4ecf408e1e', '企业6', 'abC', 10, 10, 1, '1', '13333333333', '佛山', '1', '1', NULL, NULL);

-- ----------------------------
-- Table structure for tb_visit
-- ----------------------------
DROP TABLE IF EXISTS `tb_visit`;
CREATE TABLE `tb_visit`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '唯一id',
  `cust_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户id',
  `linkman_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '联系人id',
  `visit_type` int NULL DEFAULT NULL COMMENT '拜访方式, 1 上门走访, 2 电话拜访',
  `visit_reason` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '拜访原因',
  `content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '交流内容',
  `visit_date` date NULL DEFAULT NULL COMMENT '拜访时间',
  `input_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '录入人',
  `input_time` datetime NULL DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_customer`(`cust_id`) USING BTREE,
  INDEX `IDX_linkman`(`linkman_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '拜访信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_visit
-- ----------------------------
INSERT INTO `tb_visit` VALUES ('01307fc850908491da98c7c12c5ebf00', '5322865c16b17511ab213c1f06061d87', '名字2', 2, '1', '1', '2023-06-30', '1115864462813077506', '2023-06-30 14:35:18');
INSERT INTO `tb_visit` VALUES ('67b269690c91d8d534eb10443be70c7c', 'a48e73407a18ebb430c60babd46834f5', '名字1', 1, '原因1', '内容1', '2023-06-29', '1115864462813077506', '2023-06-30 13:54:29');
INSERT INTO `tb_visit` VALUES ('6cf0cbf0391dc6b60487175f9aa91412', 'de6621d6d1b3c8594fd28c0010d41a95', 'asb', 1, '原因3', '内容3', '2023-06-29', '1115864462813077506', '2023-06-30 13:54:33');
INSERT INTO `tb_visit` VALUES ('724188e9265a5bf0af2853dafcd1ae94', '8f78a71819080904534aae7baa50d86e', '名字2', 1, 'sfds', 'dsadsa', '2023-06-30', '1115864462813077506', '2023-06-30 14:34:25');
INSERT INTO `tb_visit` VALUES ('7705d2ae001818cea3193969997b2cb2', '262f18b7da9b1d85bcc980a932fb3db0', '名字1', 2, '原因4', '内容', '2023-06-29', '1115864462813077506', '2023-06-30 15:00:39');
INSERT INTO `tb_visit` VALUES ('aac56907761a6ef44e2c0ee1d4d1079f', '5322865c16b17511ab213c1f06061d87', '名字1', 1, 'wddsa', 'dsa', '2023-07-05', '1115864462813077506', '2023-06-30 15:00:18');
INSERT INTO `tb_visit` VALUES ('bbbaea238257714b853aa2f9fe16e2af', 'a76142d0da2aac947e32d05078e2c656', '名字2', 2, '原因2', '内容2', '2023-06-29', '1115864462813077506', '2023-06-30 13:54:39');

SET FOREIGN_KEY_CHECKS = 1;
