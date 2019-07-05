/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : softwarecup001

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-07-05 10:46:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for current_data
-- ----------------------------
DROP TABLE IF EXISTS `current_data`;
CREATE TABLE `current_data` (
  `dataId` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL,
  `headnum` int(11) NOT NULL,
  `sendData` date DEFAULT NULL,
  `sendTime` time DEFAULT NULL,
  PRIMARY KEY (`dataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of current_data
-- ----------------------------
INSERT INTO `current_data` VALUES ('201906071231395', '交通枢纽', '21', '2019-06-07', '12:31:39');
INSERT INTO `current_data` VALUES ('201906071231401x', '交通枢纽', '23', '2019-06-07', '12:31:40');
INSERT INTO `current_data` VALUES ('201906071231415', '交通枢纽', '23', '2019-06-07', '12:31:41');
INSERT INTO `current_data` VALUES ('201906071231435', '交通枢纽', '24', '2019-06-07', '12:31:43');
INSERT INTO `current_data` VALUES ('201906071231435x', '交通枢纽', '24', '2019-06-07', '12:31:43');
INSERT INTO `current_data` VALUES ('201906071231455', '交通枢纽', '23', '2019-06-07', '12:31:45');
INSERT INTO `current_data` VALUES ('201906071231471x', '交通枢纽', '24', '2019-06-07', '12:31:47');
INSERT INTO `current_data` VALUES ('201906071232035', '交通枢纽', '20', '2019-06-07', '12:32:03');
INSERT INTO `current_data` VALUES ('201906071232055', '交通枢纽', '21', '2019-06-07', '12:32:05');
INSERT INTO `current_data` VALUES ('201906071232065', '交通枢纽', '24', '2019-06-07', '12:32:06');
INSERT INTO `current_data` VALUES ('201906071232075', '交通枢纽', '24', '2019-06-07', '12:32:07');
INSERT INTO `current_data` VALUES ('201906071232115', '交通枢纽', '28', '2019-06-07', '12:32:11');
INSERT INTO `current_data` VALUES ('201906071232165', '交通枢纽', '27', '2019-06-07', '12:32:16');
INSERT INTO `current_data` VALUES ('201906071232165x', '交通枢纽', '27', '2019-06-07', '12:32:16');
INSERT INTO `current_data` VALUES ('201906071232185', '交通枢纽', '26', '2019-06-07', '12:32:18');
INSERT INTO `current_data` VALUES ('201906071232185x', '交通枢纽', '26', '2019-06-07', '12:32:18');
INSERT INTO `current_data` VALUES ('201906071232215', '交通枢纽', '24', '2019-06-07', '12:32:21');
INSERT INTO `current_data` VALUES ('201906071232235', '交通枢纽', '25', '2019-06-07', '12:32:23');
INSERT INTO `current_data` VALUES ('201906071232245', '交通枢纽', '21', '2019-06-07', '12:32:24');
INSERT INTO `current_data` VALUES ('201906071232255', '交通枢纽', '21', '2019-06-07', '12:32:25');
INSERT INTO `current_data` VALUES ('201906071232275', '交通枢纽', '22', '2019-06-07', '12:32:27');
INSERT INTO `current_data` VALUES ('201906071232285', '交通枢纽', '21', '2019-06-07', '12:32:28');
INSERT INTO `current_data` VALUES ('201906071232291', '学校食堂', '27', '2019-06-07', '12:32:29');
INSERT INTO `current_data` VALUES ('201906071232301', '学校食堂', '27', '2019-06-07', '12:32:30');
INSERT INTO `current_data` VALUES ('201906071232315', '交通枢纽', '22', '2019-06-07', '12:32:31');
INSERT INTO `current_data` VALUES ('2019060712323151', '校园大门', '17', '2019-06-07', '12:32:31');
INSERT INTO `current_data` VALUES ('2019060712323152', '大型商超', '16', '2019-06-07', '12:32:31');
INSERT INTO `current_data` VALUES ('2019060712323153', '政府大门', '21', '2019-06-07', '12:32:31');
INSERT INTO `current_data` VALUES ('2019060712323154', '交通枢纽', '22', '2019-06-07', '12:32:31');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `placeID` int(11) NOT NULL,
  `placeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`placeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '学校食堂');
INSERT INTO `place` VALUES ('2', '校园大门');
INSERT INTO `place` VALUES ('3', '大型商超');
INSERT INTO `place` VALUES ('4', '政府大门');
INSERT INTO `place` VALUES ('5', '交通枢纽');

-- ----------------------------
-- Table structure for record_data
-- ----------------------------
DROP TABLE IF EXISTS `record_data`;
CREATE TABLE `record_data` (
  `dateId` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL,
  `avgHeadNum` double(11,0) NOT NULL,
  `startTime` time NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`dateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_data
-- ----------------------------
INSERT INTO `record_data` VALUES ('20190604-2057552', '校园大门', '17', '20:57:30', '2019-06-04');
INSERT INTO `record_data` VALUES ('20190604-2058202', '校园大门', '16', '20:58:30', '2019-06-04');
INSERT INTO `record_data` VALUES ('20190604-20582021', '校园大门', '23', '20:59:30', '2019-06-04');
INSERT INTO `record_data` VALUES ('20190604-20582022', '学校食堂', '43', '09:45:27', '2019-06-05');
INSERT INTO `record_data` VALUES ('20190604-20582023', '大型商超', '12', '09:45:47', '2019-06-05');
INSERT INTO `record_data` VALUES ('20190604-20582024', '政府大门', '65', '09:46:07', '2019-06-05');
INSERT INTO `record_data` VALUES ('20190604-20582026', '交通枢纽', '32', '09:46:41', '2019-06-05');
INSERT INTO `record_data` VALUES ('20190607-1126592', '校园大门', '10', '11:26:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127041', '学校食堂', '10', '11:27:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127043', '大型商超', '5', '11:28:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127062', '校园大门', '13', '11:29:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127142', '校园大门', '12', '11:30:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127145', '交通枢纽', '16', '11:31:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127192', '校园大门', '10', '11:32:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127343', '大型商超', '8', '11:33:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127365', '交通枢纽', '13', '11:34:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127392', '校园大门', '10', '11:35:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127393', '大型商超', '7', '11:36:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127441', '学校食堂', '12', '11:37:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127443', '大型商超', '9', '11:38:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127493', '大型商超', '6', '11:39:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127511', '学校食堂', '5', '11:40:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127542', '校园大门', '15', '11:41:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127543', '大型商超', '9', '11:42:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127593', '大型商超', '8', '11:43:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1127595', '交通枢纽', '11', '11:44:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128012', '校园大门', '12', '11:45:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128092', '校园大门', '13', '11:46:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128111', '学校食堂', '5', '11:47:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128142', '校园大门', '12', '11:48:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128163', '大型商超', '13', '11:49:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128212', '校园大门', '13', '11:50:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128292', '校园大门', '19', '11:51:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128315', '交通枢纽', '15', '11:52:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128343', '大型商超', '10', '11:53:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128362', '校园大门', '14', '11:54:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128393', '大型商超', '11', '11:55:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128415', '交通枢纽', '12', '11:56:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128441', '学校食堂', '9', '11:57:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128442', '校园大门', '12', '11:58:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128443', '大型商超', '9', '11:59:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128511', '学校食堂', '6', '12:00:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1128522', '校园大门', '12', '12:01:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129013', '大型商超', '9', '12:02:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129015', '交通枢纽', '12', '12:03:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129042', '校园大门', '11', '12:04:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129063', '大型商超', '8', '12:05:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129065', '交通枢纽', '7', '12:06:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129111', '学校食堂', '7', '12:07:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129112', '校园大门', '19', '12:08:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129115', '交通枢纽', '15', '12:09:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129162', '校园大门', '13', '12:10:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129165', '交通枢纽', '11', '12:11:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129241', '学校食堂', '9', '12:12:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129242', '校园大门', '11', '12:13:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129292', '校园大门', '11', '12:14:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129293', '大型商超', '12', '12:15:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129311', '学校食堂', '6', '12:16:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129343', '大型商超', '7', '12:17:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129345', '交通枢纽', '17', '12:18:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129362', '校园大门', '13', '12:19:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129393', '大型商超', '11', '12:20:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129394', '政府大门', '4', '12:21:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129395', '交通枢纽', '11', '12:22:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129442', '校园大门', '11', '12:23:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129445', '交通枢纽', '12', '12:24:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129492', '校园大门', '17', '12:25:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129562', '校园大门', '13', '12:26:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129564', '政府大门', '4', '12:27:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1129565', '交通枢纽', '19', '12:28:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130065', '交通枢纽', '13', '12:29:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130092', '校园大门', '10', '12:30:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130113', '大型商超', '11', '12:31:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130163', '大型商超', '9', '12:32:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130212', '校园大门', '10', '12:33:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130244', '政府大门', '4', '12:34:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130245', '交通枢纽', '22', '12:35:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130273', '大型商超', '6', '12:36:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130292', '校园大门', '12', '12:37:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130295', '交通枢纽', '12', '12:38:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130313', '大型商超', '8', '12:39:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130314', '政府大门', '3', '12:40:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130362', '校园大门', '11', '12:41:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130363', '大型商超', '7', '12:42:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130395', '交通枢纽', '14', '12:43:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130444', '政府大门', '3', '12:44:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130492', '校园大门', '17', '12:45:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130515', '交通枢纽', '17', '12:46:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130564', '政府大门', '5', '12:47:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1130565', '交通枢纽', '19', '12:48:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131015', '交通枢纽', '14', '12:49:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131062', '校园大门', '11', '12:50:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131094', '政府大门', '4', '12:51:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131095', '交通枢纽', '13', '12:52:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131111', '学校食堂', '8', '12:53:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131143', '大型商超', '12', '12:54:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131145', '交通枢纽', '13', '12:55:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131191', '学校食堂', '5', '12:56:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131192', '校园大门', '11', '12:57:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131195', '交通枢纽', '16', '12:58:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131213', '大型商超', '5', '12:59:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131214', '政府大门', '4', '13:00:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131263', '大型商超', '3', '13:01:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131312', '校园大门', '7', '13:02:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131315', '交通枢纽', '18', '13:03:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131362', '校园大门', '7', '13:04:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131364', '政府大门', '6', '13:05:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131365', '交通枢纽', '11', '13:06:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131415', '交通枢纽', '10', '13:07:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131465', '交通枢纽', '11', '13:08:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131491', '学校食堂', '7', '13:09:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131492', '校园大门', '12', '13:10:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131515', '交通枢纽', '9', '13:11:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131542', '校园大门', '10', '13:12:30', '2019-06-07');
INSERT INTO `record_data` VALUES ('20190607-1131544', '政府大门', '7', '13:13:30', '2019-06-07');

-- ----------------------------
-- Table structure for security_personnel
-- ----------------------------
DROP TABLE IF EXISTS `security_personnel`;
CREATE TABLE `security_personnel` (
  `securityPersonnelId` int(11) NOT NULL,
  `securityPersonnelName` varchar(50) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `status` char(255) NOT NULL,
  `site` varchar(50) NOT NULL,
  PRIMARY KEY (`securityPersonnelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_personnel
-- ----------------------------
INSERT INTO `security_personnel` VALUES ('1', '李明', '13298992911', '0', '校园大门');
INSERT INTO `security_personnel` VALUES ('2', '洪武', '12238998943', '0', '学校食堂');
INSERT INTO `security_personnel` VALUES ('3', '刘飞', '12332323444', '0', '大型商超');
INSERT INTO `security_personnel` VALUES ('4', '王刚', '14353234234', '0', '政府大门');
INSERT INTO `security_personnel` VALUES ('5', '李功夫', '23413232343', '1', '交通枢纽');
INSERT INTO `security_personnel` VALUES ('6', '李好啊', '13298992911', '0', '校园大门');
INSERT INTO `security_personnel` VALUES ('7', '纪晓岚', '12312312312', '1', '大型商超');

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `userId` varchar(32) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPassword` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user1
-- ----------------------------
INSERT INTO `user1` VALUES ('DDE2366165E8440AA4EB6F02DC194AF5', '123', '123123123');
INSERT INTO `user1` VALUES ('E3CDC44B3C214F45ACEE3DE6416FD57D', '1231', '123123');
INSERT INTO `user1` VALUES ('EC68192ED20445779C1A6F94C79CA1E7', '1233', '123456');
INSERT INTO `user1` VALUES ('123', '123', '123123');
INSERT INTO `user1` VALUES ('B348552ED13F487E8DD6CAD82D3805F8', '李明', '1231231');
INSERT INTO `user1` VALUES ('E17B83D4AC3C44439346C81AABAEC5D5', '李明', '1231231');
INSERT INTO `user1` VALUES ('034969D383E64158B2EEB5B054547285', '李明', '1231231');
INSERT INTO `user1` VALUES ('EEE1502F8057450EA30731366D4C3269', '李明', '1231231');
INSERT INTO `user1` VALUES ('D7451146A5A84339B94263F68BCB3BFE', '李明', '1231231');
INSERT INTO `user1` VALUES ('E12C6644372A48A5A45E43006618500F', '李明', '1231231');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `videoId` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL,
  `aveHeadNum` double(11,0) NOT NULL,
  `videoName` varchar(50) NOT NULL,
  `videoPath` varchar(150) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('120190607-115112', '学校食堂', '5', '1-20190607-115112.mp4', '/Videos/1-20190607-115112.mp4', '11:51:12', '11:53:42', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-115358', '学校食堂', '5', '1-20190607-115358.mp4', '/Videos/1-20190607-115358.mp4', '11:53:58', '11:56:37', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-122232', '学校食堂', '5', '1-20190607-122232.mp4', '/Videos/1-20190607-122232.mp4', '12:22:32', '12:22:35', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-122245', '学校食堂', '17', '1-20190607-122245.mp4', '/Videos/1-20190607-122245.mp4', '12:22:45', '12:24:15', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-122415', '学校食堂', '18', '1-20190607-122415.mp4', '/Videos/1-20190607-122415.mp4', '12:24:15', '12:25:00', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-122501', '学校食堂', '8', '1-20190607-122501.mp4', '/Videos/1-20190607-122501.mp4', '12:25:01', '12:26:15', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-122947', '学校食堂', '14', '1-20190607-122947.mp4', '/Videos/1-20190607-122947.mp4', '12:29:47', '12:30:25', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-123113', '学校食堂', '16', '1-20190607-123113.mp4', '/Videos/1-20190607-123113.mp4', '12:31:13', '12:31:26', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-123137', '学校食堂', '19', '1-20190607-123137.mp4', '/Videos/1-20190607-123137.mp4', '12:31:37', '12:31:51', '2019-06-07');
INSERT INTO `video` VALUES ('120190607-123201', '学校食堂', '19', '1-20190607-123201.mp4', '/Videos/1-20190607-123201.mp4', '12:32:01', '12:32:26', '2019-06-07');
INSERT INTO `video` VALUES ('220190607-113905', '校园大门', '20', '2-20190607-113905.mp4', '/Videos/2-20190607-113905.mp4', '11:39:05', '11:41:32', '2019-06-07');
INSERT INTO `video` VALUES ('220190607-114400', '校园大门', '12', '2-20190607-114400.mp4', '/Videos/2-20190607-114400.mp4', '11:44:00', '11:47:52', '2019-06-07');
INSERT INTO `video` VALUES ('220190607-114805', '校园大门', '12', '2-20190607-114805.mp4', '/Videos/2-20190607-114805.mp4', '11:48:05', '11:53:45', '2019-06-07');
INSERT INTO `video` VALUES ('320190607-114049', '大型商超', '5', '3-20190607-114049.mp4', '/Videos/3-20190607-114049.mp4', '11:40:49', '11:41:32', '2019-06-07');
