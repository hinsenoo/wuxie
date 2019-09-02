/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : wlwxh

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 02/09/2019 00:18:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '会长团');
INSERT INTO `department` VALUES (2, '项目部');
INSERT INTO `department` VALUES (3, '办公室');
INSERT INTO `department` VALUES (4, '学术部');

-- ----------------------------
-- Table structure for library
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `press` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出版社',
  `number` int(11) NULL DEFAULT NULL COMMENT '数量',
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `direction` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 608 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of library
-- ----------------------------
INSERT INTO `library` VALUES (1, '物联网工程导论', '清华大学出版社', 1, '工具类', '软件');
INSERT INTO `library` VALUES (2, '单片机', '清华大学出版社', 2, '硬件', '硬件');
INSERT INTO `library` VALUES (3, 'Java Web', '清华大学出版社', 0, '学习资源类', '硬件');
INSERT INTO `library` VALUES (4, 'C#程序设计', '清华大学出版社', 1, '学习资源', '软件');
INSERT INTO `library` VALUES (320, '单片机接口与技术12', '1清华大学出版社', 12, '学习资源', '硬件');
INSERT INTO `library` VALUES (321, '单片机接口与技术13', '1清华大学出版社', 13, '工具类', '软件');
INSERT INTO `library` VALUES (322, '单片机接口与技术14', '1清华大学出版社', 14, '学习资源', '软件');
INSERT INTO `library` VALUES (323, '单片机接口与技术15', '1清华大学出版社', 15, '工具类', '软件');
INSERT INTO `library` VALUES (324, '单片机接口与技术16', '1清华大学出版社', 16, '学习资源', '软件');
INSERT INTO `library` VALUES (325, '单片机接口与技术17', '1清华大学出版社', 17, '工具类', '硬件');
INSERT INTO `library` VALUES (326, '单片机接口与技术18', '1清华大学出版社', 18, '学习资源', '软件');
INSERT INTO `library` VALUES (327, '单片机接口与技术19', '1清华大学出版社', 19, '工具类', '软件');
INSERT INTO `library` VALUES (328, '单片机接口与技术20', '1清华大学出版社', 20, '学习资源', '软件');
INSERT INTO `library` VALUES (329, '单片机接口与技术21', '1清华大学出版社', 21, '工具类', '软件');
INSERT INTO `library` VALUES (330, '单片机接口与技术22', '1清华大学出版社', 22, '学习资源', '硬件');
INSERT INTO `library` VALUES (331, '单片机接口与技术23', '1清华大学出版社', 23, '工具类', '软件');
INSERT INTO `library` VALUES (332, '单片机接口与技术24', '1清华大学出版社', 24, '学习资源', '软件');
INSERT INTO `library` VALUES (333, '单片机接口与技术25', '1清华大学出版社', 25, '工具类', '软件');
INSERT INTO `library` VALUES (334, '单片机接口与技术26', '1清华大学出版社', 26, '学习资源', '软件');
INSERT INTO `library` VALUES (335, '单片机接口与技术27', '1清华大学出版社', 27, '工具类', '硬件');
INSERT INTO `library` VALUES (336, '单片机接口与技术28', '1清华大学出版社', 28, '学习资源', '软件');
INSERT INTO `library` VALUES (337, '单片机接口与技术29', '1清华大学出版社', 29, '工具类', '软件');
INSERT INTO `library` VALUES (338, '单片机接口与技术30', '1清华大学出版社', 30, '学习资源', '软件');
INSERT INTO `library` VALUES (339, '单片机接口与技术31', '1清华大学出版社', 31, '工具类', '软件');
INSERT INTO `library` VALUES (340, '单片机接口与技术32', '1清华大学出版社', 32, '学习资源', '硬件');
INSERT INTO `library` VALUES (341, '单片机接口与技术33', '1清华大学出版社', 33, '工具类', '软件');
INSERT INTO `library` VALUES (342, '单片机接口与技术34', '1清华大学出版社', 34, '学习资源', '软件');
INSERT INTO `library` VALUES (343, '单片机接口与技术35', '1清华大学出版社', 35, '工具类', '软件');
INSERT INTO `library` VALUES (344, '单片机接口与技术36', '1清华大学出版社', 36, '学习资源', '软件');
INSERT INTO `library` VALUES (345, '单片机接口与技术37', '1清华大学出版社', 37, '工具类', '硬件');
INSERT INTO `library` VALUES (346, '单片机接口与技术38', '1清华大学出版社', 38, '学习资源', '软件');
INSERT INTO `library` VALUES (347, '单片机接口与技术39', '1清华大学出版社', 39, '工具类', '软件');
INSERT INTO `library` VALUES (348, '单片机接口与技术40', '1清华大学出版社', 40, '学习资源', '软件');
INSERT INTO `library` VALUES (349, '单片机接口与技术41', '1清华大学出版社', 41, '工具类', '软件');
INSERT INTO `library` VALUES (350, '单片机接口与技术42', '1清华大学出版社', 42, '学习资源', '硬件');
INSERT INTO `library` VALUES (351, '单片机接口与技术43', '1清华大学出版社', 43, '工具类', '软件');
INSERT INTO `library` VALUES (352, '单片机接口与技术44', '1清华大学出版社', 44, '学习资源', '软件');
INSERT INTO `library` VALUES (353, '单片机接口与技术45', '1清华大学出版社', 45, '工具类', '软件');
INSERT INTO `library` VALUES (354, '单片机接口与技术46', '1清华大学出版社', 46, '学习资源', '软件');
INSERT INTO `library` VALUES (355, '单片机接口与技术47', '1清华大学出版社', 47, '工具类', '硬件');
INSERT INTO `library` VALUES (356, '单片机接口与技术48', '1清华大学出版社', 48, '学习资源', '软件');
INSERT INTO `library` VALUES (357, '单片机接口与技术49', '1清华大学出版社', 49, '工具类', '软件');
INSERT INTO `library` VALUES (358, '单片机接口与技术50', '1清华大学出版社', 50, '学习资源', '软件');
INSERT INTO `library` VALUES (359, '单片机接口与技术51', '1清华大学出版社', 51, '工具类', '软件');
INSERT INTO `library` VALUES (360, '单片机接口与技术52', '1清华大学出版社', 52, '学习资源', '硬件');
INSERT INTO `library` VALUES (361, '单片机接口与技术53', '1清华大学出版社', 53, '工具类', '软件');
INSERT INTO `library` VALUES (362, '单片机接口与技术54', '1清华大学出版社', 54, '学习资源', '软件');
INSERT INTO `library` VALUES (363, '单片机接口与技术55', '1清华大学出版社', 55, '工具类', '软件');
INSERT INTO `library` VALUES (364, '单片机接口与技术56', '1清华大学出版社', 56, '学习资源', '软件');
INSERT INTO `library` VALUES (365, '单片机接口与技术57', '1清华大学出版社', 57, '工具类', '硬件');
INSERT INTO `library` VALUES (366, '单片机接口与技术58', '1清华大学出版社', 58, '学习资源', '软件');
INSERT INTO `library` VALUES (367, '单片机接口与技术59', '1清华大学出版社', 59, '工具类', '软件');
INSERT INTO `library` VALUES (368, '单片机接口与技术60', '1清华大学出版社', 60, '学习资源', '软件');
INSERT INTO `library` VALUES (369, '单片机接口与技术61', '1清华大学出版社', 61, '工具类', '软件');
INSERT INTO `library` VALUES (370, '单片机接口与技术62', '1清华大学出版社', 62, '学习资源', '硬件');
INSERT INTO `library` VALUES (371, '单片机接口与技术63', '1清华大学出版社', 63, '工具类', '软件');
INSERT INTO `library` VALUES (372, '单片机接口与技术64', '1清华大学出版社', 64, '学习资源', '软件');
INSERT INTO `library` VALUES (373, '单片机接口与技术65', '1清华大学出版社', 65, '工具类', '软件');
INSERT INTO `library` VALUES (374, '单片机接口与技术66', '1清华大学出版社', 66, '学习资源', '软件');
INSERT INTO `library` VALUES (375, '单片机接口与技术67', '1清华大学出版社', 67, '工具类', '硬件');
INSERT INTO `library` VALUES (376, '单片机接口与技术68', '1清华大学出版社', 68, '学习资源', '软件');
INSERT INTO `library` VALUES (377, '单片机接口与技术69', '1清华大学出版社', 69, '工具类', '软件');
INSERT INTO `library` VALUES (378, '单片机接口与技术70', '1清华大学出版社', 70, '学习资源', '软件');
INSERT INTO `library` VALUES (379, '单片机接口与技术71', '1清华大学出版社', 71, '工具类', '软件');
INSERT INTO `library` VALUES (380, '单片机接口与技术72', '1清华大学出版社', 72, '学习资源', '硬件');
INSERT INTO `library` VALUES (381, '单片机接口与技术73', '1清华大学出版社', 73, '工具类', '软件');
INSERT INTO `library` VALUES (382, '单片机接口与技术74', '1清华大学出版社', 74, '学习资源', '软件');
INSERT INTO `library` VALUES (383, '单片机接口与技术75', '1清华大学出版社', 75, '工具类', '软件');
INSERT INTO `library` VALUES (384, '单片机接口与技术76', '1清华大学出版社', 76, '学习资源', '软件');
INSERT INTO `library` VALUES (385, '单片机接口与技术77', '1清华大学出版社', 77, '工具类', '硬件');
INSERT INTO `library` VALUES (386, '单片机接口与技术78', '1清华大学出版社', 78, '学习资源', '软件');
INSERT INTO `library` VALUES (387, '单片机接口与技术79', '1清华大学出版社', 79, '工具类', '软件');
INSERT INTO `library` VALUES (388, '单片机接口与技术80', '1清华大学出版社', 80, '学习资源', '软件');
INSERT INTO `library` VALUES (389, '单片机接口与技术81', '1清华大学出版社', 81, '工具类', '软件');
INSERT INTO `library` VALUES (390, '单片机接口与技术82', '1清华大学出版社', 82, '学习资源', '硬件');
INSERT INTO `library` VALUES (391, '单片机接口与技术83', '1清华大学出版社', 83, '工具类', '软件');
INSERT INTO `library` VALUES (392, '单片机接口与技术84', '1清华大学出版社', 84, '学习资源', '软件');
INSERT INTO `library` VALUES (393, '单片机接口与技术85', '1清华大学出版社', 85, '工具类', '软件');
INSERT INTO `library` VALUES (394, '单片机接口与技术86', '1清华大学出版社', 86, '学习资源', '软件');
INSERT INTO `library` VALUES (395, '单片机接口与技术87', '1清华大学出版社', 87, '工具类', '硬件');
INSERT INTO `library` VALUES (396, '单片机接口与技术88', '1清华大学出版社', 88, '学习资源', '软件');
INSERT INTO `library` VALUES (397, '单片机接口与技术89', '1清华大学出版社', 89, '工具类', '软件');
INSERT INTO `library` VALUES (398, '单片机接口与技术90', '1清华大学出版社', 90, '学习资源', '软件');
INSERT INTO `library` VALUES (399, '单片机接口与技术91', '1清华大学出版社', 91, '工具类', '软件');
INSERT INTO `library` VALUES (400, '单片机接口与技术92', '1清华大学出版社', 92, '学习资源', '硬件');
INSERT INTO `library` VALUES (401, '单片机接口与技术93', '1清华大学出版社', 93, '工具类', '软件');
INSERT INTO `library` VALUES (402, '单片机接口与技术94', '1清华大学出版社', 94, '学习资源', '软件');
INSERT INTO `library` VALUES (403, '单片机接口与技术95', '1清华大学出版社', 95, '工具类', '软件');
INSERT INTO `library` VALUES (404, '单片机接口与技术96', '1清华大学出版社', 96, '学习资源', '软件');
INSERT INTO `library` VALUES (405, '单片机接口与技术97', '1清华大学出版社', 97, '工具类', '硬件');
INSERT INTO `library` VALUES (406, '单片机接口与技术98', '1清华大学出版社', 98, '学习资源', '软件');
INSERT INTO `library` VALUES (407, '单片机接口与技术99', '1清华大学出版社', 99, '工具类', '软件');
INSERT INTO `library` VALUES (408, '单片机接口与技术100', '1清华大学出版社', 100, '学习资源', '软件');
INSERT INTO `library` VALUES (409, '单片机接口与技术101', '1清华大学出版社', 101, '工具类', '软件');
INSERT INTO `library` VALUES (410, '单片机接口与技术102', '1清华大学出版社', 102, '学习资源', '硬件');
INSERT INTO `library` VALUES (411, '单片机接口与技术103', '1清华大学出版社', 103, '工具类', '软件');
INSERT INTO `library` VALUES (412, '单片机接口与技术104', '1清华大学出版社', 104, '学习资源', '软件');
INSERT INTO `library` VALUES (413, '单片机接口与技术105', '1清华大学出版社', 105, '工具类', '软件');
INSERT INTO `library` VALUES (414, '单片机接口与技术106', '1清华大学出版社', 106, '学习资源', '软件');
INSERT INTO `library` VALUES (415, '单片机接口与技术107', '1清华大学出版社', 107, '工具类', '硬件');
INSERT INTO `library` VALUES (416, '单片机接口与技术108', '1清华大学出版社', 108, '学习资源', '软件');
INSERT INTO `library` VALUES (417, '单片机接口与技术109', '1清华大学出版社', 109, '工具类', '软件');
INSERT INTO `library` VALUES (418, '单片机接口与技术110', '1清华大学出版社', 110, '学习资源', '软件');
INSERT INTO `library` VALUES (419, '单片机接口与技术111', '1清华大学出版社', 111, '工具类', '软件');
INSERT INTO `library` VALUES (420, '单片机接口与技术112', '1清华大学出版社', 112, '学习资源', '硬件');
INSERT INTO `library` VALUES (421, '单片机接口与技术113', '1清华大学出版社', 113, '工具类', '软件');
INSERT INTO `library` VALUES (422, '单片机接口与技术114', '1清华大学出版社', 114, '学习资源', '软件');
INSERT INTO `library` VALUES (423, '单片机接口与技术115', '1清华大学出版社', 115, '工具类', '软件');
INSERT INTO `library` VALUES (424, '单片机接口与技术116', '1清华大学出版社', 116, '学习资源', '软件');
INSERT INTO `library` VALUES (425, '单片机接口与技术117', '1清华大学出版社', 117, '工具类', '硬件');
INSERT INTO `library` VALUES (426, '单片机接口与技术118', '1清华大学出版社', 118, '学习资源', '软件');
INSERT INTO `library` VALUES (427, '单片机接口与技术119', '1清华大学出版社', 119, '工具类', '软件');
INSERT INTO `library` VALUES (428, '单片机接口与技术120', '1清华大学出版社', 120, '学习资源', '软件');
INSERT INTO `library` VALUES (429, '单片机接口与技术121', '1清华大学出版社', 121, '工具类', '软件');
INSERT INTO `library` VALUES (430, '单片机接口与技术122', '1清华大学出版社', 122, '学习资源', '硬件');
INSERT INTO `library` VALUES (431, '单片机接口与技术123', '1清华大学出版社', 123, '工具类', '软件');
INSERT INTO `library` VALUES (432, '单片机接口与技术124', '1清华大学出版社', 124, '学习资源', '软件');
INSERT INTO `library` VALUES (433, '单片机接口与技术125', '1清华大学出版社', 125, '工具类', '软件');
INSERT INTO `library` VALUES (434, '单片机接口与技术126', '1清华大学出版社', 126, '学习资源', '软件');
INSERT INTO `library` VALUES (435, '单片机接口与技术127', '1清华大学出版社', 127, '工具类', '硬件');
INSERT INTO `library` VALUES (436, '单片机接口与技术128', '1清华大学出版社', 128, '学习资源', '软件');
INSERT INTO `library` VALUES (437, '单片机接口与技术129', '1清华大学出版社', 129, '工具类', '软件');
INSERT INTO `library` VALUES (438, '单片机接口与技术130', '1清华大学出版社', 130, '学习资源', '软件');
INSERT INTO `library` VALUES (439, '单片机接口与技术131', '1清华大学出版社', 131, '工具类', '软件');
INSERT INTO `library` VALUES (440, '单片机接口与技术132', '1清华大学出版社', 132, '学习资源', '硬件');
INSERT INTO `library` VALUES (441, '单片机接口与技术133', '1清华大学出版社', 133, '工具类', '软件');
INSERT INTO `library` VALUES (442, '单片机接口与技术134', '1清华大学出版社', 134, '学习资源', '软件');
INSERT INTO `library` VALUES (443, '单片机接口与技术135', '1清华大学出版社', 135, '工具类', '软件');
INSERT INTO `library` VALUES (444, '单片机接口与技术136', '1清华大学出版社', 136, '学习资源', '软件');
INSERT INTO `library` VALUES (445, '单片机接口与技术137', '1清华大学出版社', 137, '工具类', '硬件');
INSERT INTO `library` VALUES (446, '单片机接口与技术138', '1清华大学出版社', 138, '学习资源', '软件');
INSERT INTO `library` VALUES (447, '单片机接口与技术139', '1清华大学出版社', 139, '工具类', '软件');
INSERT INTO `library` VALUES (448, '单片机接口与技术140', '1清华大学出版社', 140, '学习资源', '软件');
INSERT INTO `library` VALUES (449, '单片机接口与技术141', '1清华大学出版社', 141, '工具类', '软件');
INSERT INTO `library` VALUES (450, '单片机接口与技术142', '1清华大学出版社', 142, '学习资源', '硬件');
INSERT INTO `library` VALUES (451, '单片机接口与技术143', '1清华大学出版社', 143, '工具类', '软件');
INSERT INTO `library` VALUES (452, '单片机接口与技术144', '1清华大学出版社', 144, '学习资源', '软件');
INSERT INTO `library` VALUES (453, '单片机接口与技术145', '1清华大学出版社', 145, '工具类', '软件');
INSERT INTO `library` VALUES (454, '单片机接口与技术146', '1清华大学出版社', 146, '学习资源', '软件');
INSERT INTO `library` VALUES (455, '单片机接口与技术147', '1清华大学出版社', 147, '工具类', '硬件');
INSERT INTO `library` VALUES (456, '单片机接口与技术148', '1清华大学出版社', 148, '学习资源', '软件');
INSERT INTO `library` VALUES (457, '单片机接口与技术149', '1清华大学出版社', 149, '工具类', '软件');
INSERT INTO `library` VALUES (458, '单片机接口与技术150', '1清华大学出版社', 150, '学习资源', '软件');
INSERT INTO `library` VALUES (459, '单片机接口与技术151', '1清华大学出版社', 151, '工具类', '软件');
INSERT INTO `library` VALUES (460, '单片机接口与技术152', '1清华大学出版社', 152, '学习资源', '硬件');
INSERT INTO `library` VALUES (461, '单片机接口与技术153', '1清华大学出版社', 153, '工具类', '软件');
INSERT INTO `library` VALUES (462, '单片机接口与技术154', '1清华大学出版社', 154, '学习资源', '软件');
INSERT INTO `library` VALUES (463, '单片机接口与技术155', '1清华大学出版社', 155, '工具类', '软件');
INSERT INTO `library` VALUES (464, '单片机接口与技术156', '1清华大学出版社', 156, '学习资源', '软件');
INSERT INTO `library` VALUES (465, '单片机接口与技术157', '1清华大学出版社', 157, '工具类', '硬件');
INSERT INTO `library` VALUES (466, '单片机接口与技术158', '1清华大学出版社', 158, '学习资源', '软件');
INSERT INTO `library` VALUES (467, '单片机接口与技术159', '1清华大学出版社', 159, '工具类', '软件');
INSERT INTO `library` VALUES (468, '单片机接口与技术160', '1清华大学出版社', 160, '学习资源', '软件');
INSERT INTO `library` VALUES (469, '单片机接口与技术161', '1清华大学出版社', 161, '工具类', '软件');
INSERT INTO `library` VALUES (470, '单片机接口与技术162', '1清华大学出版社', 162, '学习资源', '硬件');
INSERT INTO `library` VALUES (471, '单片机接口与技术163', '1清华大学出版社', 163, '工具类', '软件');
INSERT INTO `library` VALUES (472, '单片机接口与技术164', '1清华大学出版社', 164, '学习资源', '软件');
INSERT INTO `library` VALUES (473, '单片机接口与技术165', '1清华大学出版社', 165, '工具类', '软件');
INSERT INTO `library` VALUES (474, '单片机接口与技术166', '1清华大学出版社', 166, '学习资源', '软件');
INSERT INTO `library` VALUES (475, '单片机接口与技术167', '1清华大学出版社', 167, '工具类', '硬件');
INSERT INTO `library` VALUES (476, '单片机接口与技术168', '1清华大学出版社', 168, '学习资源', '软件');
INSERT INTO `library` VALUES (477, '单片机接口与技术169', '1清华大学出版社', 169, '工具类', '软件');
INSERT INTO `library` VALUES (478, '单片机接口与技术170', '1清华大学出版社', 170, '学习资源', '软件');
INSERT INTO `library` VALUES (479, '单片机接口与技术171', '1清华大学出版社', 171, '工具类', '软件');
INSERT INTO `library` VALUES (480, '单片机接口与技术172', '1清华大学出版社', 172, '学习资源', '硬件');
INSERT INTO `library` VALUES (481, '单片机接口与技术173', '1清华大学出版社', 173, '工具类', '软件');
INSERT INTO `library` VALUES (482, '单片机接口与技术174', '1清华大学出版社', 174, '学习资源', '软件');
INSERT INTO `library` VALUES (483, '单片机接口与技术175', '1清华大学出版社', 175, '工具类', '软件');
INSERT INTO `library` VALUES (484, '单片机接口与技术176', '1清华大学出版社', 176, '学习资源', '软件');
INSERT INTO `library` VALUES (485, '单片机接口与技术177', '1清华大学出版社', 177, '工具类', '硬件');
INSERT INTO `library` VALUES (486, '单片机接口与技术178', '1清华大学出版社', 178, '学习资源', '软件');
INSERT INTO `library` VALUES (487, '单片机接口与技术179', '1清华大学出版社', 179, '工具类', '软件');
INSERT INTO `library` VALUES (488, '单片机接口与技术180', '1清华大学出版社', 180, '学习资源', '软件');
INSERT INTO `library` VALUES (489, '单片机接口与技术181', '1清华大学出版社', 181, '工具类', '软件');
INSERT INTO `library` VALUES (490, '单片机接口与技术182', '1清华大学出版社', 182, '学习资源', '硬件');
INSERT INTO `library` VALUES (491, '单片机接口与技术183', '1清华大学出版社', 183, '工具类', '软件');
INSERT INTO `library` VALUES (492, '单片机接口与技术184', '1清华大学出版社', 184, '学习资源', '软件');
INSERT INTO `library` VALUES (493, '单片机接口与技术185', '1清华大学出版社', 185, '工具类', '软件');
INSERT INTO `library` VALUES (494, '单片机接口与技术186', '1清华大学出版社', 186, '学习资源', '软件');
INSERT INTO `library` VALUES (495, '单片机接口与技术187', '1清华大学出版社', 187, '工具类', '硬件');
INSERT INTO `library` VALUES (496, '单片机接口与技术188', '1清华大学出版社', 188, '学习资源', '软件');
INSERT INTO `library` VALUES (497, '单片机接口与技术189', '1清华大学出版社', 189, '工具类', '软件');
INSERT INTO `library` VALUES (498, '单片机接口与技术190', '1清华大学出版社', 190, '学习资源', '软件');
INSERT INTO `library` VALUES (499, '单片机接口与技术191', '1清华大学出版社', 191, '工具类', '软件');
INSERT INTO `library` VALUES (500, '单片机接口与技术192', '1清华大学出版社', 192, '学习资源', '硬件');
INSERT INTO `library` VALUES (501, '单片机接口与技术193', '1清华大学出版社', 193, '工具类', '软件');
INSERT INTO `library` VALUES (502, '单片机接口与技术194', '1清华大学出版社', 194, '学习资源', '软件');
INSERT INTO `library` VALUES (503, '单片机接口与技术195', '1清华大学出版社', 195, '工具类', '软件');
INSERT INTO `library` VALUES (504, '单片机接口与技术196', '1清华大学出版社', 196, '学习资源', '软件');
INSERT INTO `library` VALUES (505, '单片机接口与技术197', '1清华大学出版社', 197, '工具类', '硬件');
INSERT INTO `library` VALUES (506, '单片机接口与技术198', '1清华大学出版社', 198, '学习资源', '软件');
INSERT INTO `library` VALUES (507, '单片机接口与技术199', '1清华大学出版社', 199, '工具类', '软件');
INSERT INTO `library` VALUES (508, '单片机接口与技术200', '1清华大学出版社', 200, '学习资源', '软件');
INSERT INTO `library` VALUES (509, '单片机接口与技术201', '1清华大学出版社', 201, '工具类', '软件');
INSERT INTO `library` VALUES (510, '单片机接口与技术202', '1清华大学出版社', 202, '学习资源', '硬件');
INSERT INTO `library` VALUES (511, '单片机接口与技术203', '1清华大学出版社', 203, '工具类', '软件');
INSERT INTO `library` VALUES (512, '单片机接口与技术204', '1清华大学出版社', 204, '学习资源', '软件');
INSERT INTO `library` VALUES (513, '单片机接口与技术205', '1清华大学出版社', 205, '工具类', '软件');
INSERT INTO `library` VALUES (514, '单片机接口与技术206', '1清华大学出版社', 206, '学习资源', '软件');
INSERT INTO `library` VALUES (515, '单片机接口与技术207', '1清华大学出版社', 207, '工具类', '硬件');
INSERT INTO `library` VALUES (516, '单片机接口与技术208', '1清华大学出版社', 208, '学习资源', '软件');
INSERT INTO `library` VALUES (517, '单片机接口与技术209', '1清华大学出版社', 209, '工具类', '软件');
INSERT INTO `library` VALUES (518, '单片机接口与技术210', '1清华大学出版社', 210, '学习资源', '软件');
INSERT INTO `library` VALUES (519, '单片机接口与技术211', '1清华大学出版社', 211, '工具类', '软件');
INSERT INTO `library` VALUES (520, '单片机接口与技术212', '1清华大学出版社', 212, '学习资源', '硬件');
INSERT INTO `library` VALUES (521, '单片机接口与技术213', '1清华大学出版社', 213, '工具类', '软件');
INSERT INTO `library` VALUES (522, '单片机接口与技术214', '1清华大学出版社', 214, '学习资源', '软件');
INSERT INTO `library` VALUES (523, '单片机接口与技术215', '1清华大学出版社', 215, '工具类', '软件');
INSERT INTO `library` VALUES (524, '单片机接口与技术216', '1清华大学出版社', 216, '学习资源', '软件');
INSERT INTO `library` VALUES (525, '单片机接口与技术217', '1清华大学出版社', 217, '工具类', '硬件');
INSERT INTO `library` VALUES (526, '单片机接口与技术218', '1清华大学出版社', 218, '学习资源', '软件');
INSERT INTO `library` VALUES (527, '单片机接口与技术219', '1清华大学出版社', 219, '工具类', '软件');
INSERT INTO `library` VALUES (528, '单片机接口与技术220', '1清华大学出版社', 220, '学习资源', '软件');
INSERT INTO `library` VALUES (529, '单片机接口与技术221', '1清华大学出版社', 221, '工具类', '软件');
INSERT INTO `library` VALUES (530, '单片机接口与技术222', '1清华大学出版社', 222, '学习资源', '硬件');
INSERT INTO `library` VALUES (531, '单片机接口与技术223', '1清华大学出版社', 223, '工具类', '软件');
INSERT INTO `library` VALUES (532, '单片机接口与技术224', '1清华大学出版社', 224, '学习资源', '软件');
INSERT INTO `library` VALUES (533, '单片机接口与技术225', '1清华大学出版社', 225, '工具类', '软件');
INSERT INTO `library` VALUES (534, '单片机接口与技术226', '1清华大学出版社', 226, '学习资源', '软件');
INSERT INTO `library` VALUES (535, '单片机接口与技术227', '1清华大学出版社', 227, '工具类', '硬件');
INSERT INTO `library` VALUES (536, '单片机接口与技术228', '1清华大学出版社', 228, '学习资源', '软件');
INSERT INTO `library` VALUES (537, '单片机接口与技术229', '1清华大学出版社', 229, '工具类', '软件');
INSERT INTO `library` VALUES (538, '单片机接口与技术230', '1清华大学出版社', 230, '学习资源', '软件');
INSERT INTO `library` VALUES (539, '单片机接口与技术231', '1清华大学出版社', 231, '工具类', '软件');
INSERT INTO `library` VALUES (540, '单片机接口与技术232', '1清华大学出版社', 232, '学习资源', '硬件');
INSERT INTO `library` VALUES (541, '单片机接口与技术233', '1清华大学出版社', 233, '工具类', '软件');
INSERT INTO `library` VALUES (542, '单片机接口与技术234', '1清华大学出版社', 234, '学习资源', '软件');
INSERT INTO `library` VALUES (543, '单片机接口与技术235', '1清华大学出版社', 235, '工具类', '软件');
INSERT INTO `library` VALUES (544, '单片机接口与技术236', '1清华大学出版社', 236, '学习资源', '软件');
INSERT INTO `library` VALUES (545, '单片机接口与技术237', '1清华大学出版社', 237, '工具类', '硬件');
INSERT INTO `library` VALUES (546, '单片机接口与技术238', '1清华大学出版社', 238, '学习资源', '软件');
INSERT INTO `library` VALUES (547, '单片机接口与技术239', '1清华大学出版社', 239, '工具类', '软件');
INSERT INTO `library` VALUES (548, '单片机接口与技术240', '1清华大学出版社', 240, '学习资源', '软件');
INSERT INTO `library` VALUES (549, '单片机接口与技术241', '1清华大学出版社', 241, '工具类', '软件');
INSERT INTO `library` VALUES (550, '单片机接口与技术242', '1清华大学出版社', 242, '学习资源', '硬件');
INSERT INTO `library` VALUES (551, '单片机接口与技术243', '1清华大学出版社', 243, '工具类', '软件');
INSERT INTO `library` VALUES (552, '单片机接口与技术244', '1清华大学出版社', 244, '学习资源', '软件');
INSERT INTO `library` VALUES (553, '单片机接口与技术245', '1清华大学出版社', 245, '工具类', '软件');
INSERT INTO `library` VALUES (554, '单片机接口与技术246', '1清华大学出版社', 246, '学习资源', '软件');
INSERT INTO `library` VALUES (555, '单片机接口与技术247', '1清华大学出版社', 247, '工具类', '硬件');
INSERT INTO `library` VALUES (556, '单片机接口与技术248', '1清华大学出版社', 248, '学习资源', '软件');
INSERT INTO `library` VALUES (557, '单片机接口与技术249', '1清华大学出版社', 249, '工具类', '软件');
INSERT INTO `library` VALUES (558, '单片机接口与技术250', '1清华大学出版社', 250, '学习资源', '软件');
INSERT INTO `library` VALUES (559, '单片机接口与技术251', '1清华大学出版社', 251, '工具类', '软件');
INSERT INTO `library` VALUES (560, '单片机接口与技术252', '1清华大学出版社', 252, '学习资源', '硬件');
INSERT INTO `library` VALUES (561, '单片机接口与技术253', '1清华大学出版社', 253, '工具类', '软件');
INSERT INTO `library` VALUES (562, '单片机接口与技术254', '1清华大学出版社', 254, '学习资源', '软件');
INSERT INTO `library` VALUES (563, '单片机接口与技术255', '1清华大学出版社', 255, '工具类', '软件');
INSERT INTO `library` VALUES (564, '单片机接口与技术256', '1清华大学出版社', 256, '学习资源', '软件');
INSERT INTO `library` VALUES (565, '单片机接口与技术257', '1清华大学出版社', 257, '工具类', '硬件');
INSERT INTO `library` VALUES (566, '单片机接口与技术258', '1清华大学出版社', 258, '学习资源', '软件');
INSERT INTO `library` VALUES (567, '单片机接口与技术259', '1清华大学出版社', 259, '工具类', '软件');
INSERT INTO `library` VALUES (568, '单片机接口与技术260', '1清华大学出版社', 260, '学习资源', '软件');
INSERT INTO `library` VALUES (569, '单片机接口与技术261', '1清华大学出版社', 261, '工具类', '软件');
INSERT INTO `library` VALUES (570, '单片机接口与技术262', '1清华大学出版社', 262, '学习资源', '硬件');
INSERT INTO `library` VALUES (571, '单片机接口与技术263', '1清华大学出版社', 263, '工具类', '软件');
INSERT INTO `library` VALUES (572, '单片机接口与技术264', '1清华大学出版社', 264, '学习资源', '软件');
INSERT INTO `library` VALUES (573, '单片机接口与技术265', '1清华大学出版社', 265, '工具类', '软件');
INSERT INTO `library` VALUES (574, '单片机接口与技术266', '1清华大学出版社', 266, '学习资源', '软件');
INSERT INTO `library` VALUES (575, '单片机接口与技术267', '1清华大学出版社', 267, '工具类', '硬件');
INSERT INTO `library` VALUES (576, '单片机接口与技术268', '1清华大学出版社', 268, '学习资源', '软件');
INSERT INTO `library` VALUES (577, '单片机接口与技术269', '1清华大学出版社', 269, '工具类', '软件');
INSERT INTO `library` VALUES (578, '单片机接口与技术270', '1清华大学出版社', 270, '学习资源', '软件');
INSERT INTO `library` VALUES (579, '单片机接口与技术271', '1清华大学出版社', 271, '工具类', '软件');
INSERT INTO `library` VALUES (580, '单片机接口与技术272', '1清华大学出版社', 272, '学习资源', '硬件');
INSERT INTO `library` VALUES (581, '单片机接口与技术273', '1清华大学出版社', 273, '工具类', '软件');
INSERT INTO `library` VALUES (582, '单片机接口与技术274', '1清华大学出版社', 274, '学习资源', '软件');
INSERT INTO `library` VALUES (583, '单片机接口与技术275', '1清华大学出版社', 275, '工具类', '软件');
INSERT INTO `library` VALUES (584, '单片机接口与技术276', '1清华大学出版社', 276, '学习资源', '软件');
INSERT INTO `library` VALUES (585, '单片机接口与技术277', '1清华大学出版社', 277, '工具类', '硬件');
INSERT INTO `library` VALUES (586, '单片机接口与技术278', '1清华大学出版社', 278, '学习资源', '软件');
INSERT INTO `library` VALUES (587, '单片机接口与技术279', '1清华大学出版社', 279, '工具类', '软件');
INSERT INTO `library` VALUES (588, '单片机接口与技术280', '1清华大学出版社', 280, '学习资源', '软件');
INSERT INTO `library` VALUES (589, '单片机接口与技术281', '1清华大学出版社', 281, '工具类', '软件');
INSERT INTO `library` VALUES (590, '单片机接口与技术282', '1清华大学出版社', 282, '学习资源', '硬件');
INSERT INTO `library` VALUES (591, '单片机接口与技术283', '1清华大学出版社', 283, '工具类', '软件');
INSERT INTO `library` VALUES (592, '单片机接口与技术284', '1清华大学出版社', 284, '学习资源', '软件');
INSERT INTO `library` VALUES (593, '单片机接口与技术285', '1清华大学出版社', 285, '工具类', '软件');
INSERT INTO `library` VALUES (594, '单片机接口与技术286', '1清华大学出版社', 286, '学习资源', '软件');
INSERT INTO `library` VALUES (595, '单片机接口与技术287', '1清华大学出版社', 287, '工具类', '硬件');
INSERT INTO `library` VALUES (596, '单片机接口与技术288', '1清华大学出版社', 288, '学习资源', '软件');
INSERT INTO `library` VALUES (597, '单片机接口与技术289', '1清华大学出版社', 289, '工具类', '软件');
INSERT INTO `library` VALUES (598, '单片机接口与技术290', '1清华大学出版社', 290, '学习资源', '软件');
INSERT INTO `library` VALUES (599, '单片机接口与技术291', '1清华大学出版社', 291, '工具类', '软件');
INSERT INTO `library` VALUES (600, '单片机接口与技术292', '1清华大学出版社', 292, '学习资源', '硬件');
INSERT INTO `library` VALUES (601, '单片机接口与技术293', '1清华大学出版社', 293, '工具类', '软件');
INSERT INTO `library` VALUES (602, '单片机接口与技术294', '1清华大学出版社', 294, '学习资源', '软件');
INSERT INTO `library` VALUES (603, '单片机接口与技术295', '1清华大学出版社', 295, '工具类', '软件');
INSERT INTO `library` VALUES (604, '单片机接口与技术296', '1清华大学出版社', 296, '学习资源', '软件');
INSERT INTO `library` VALUES (605, '单片机接口与技术297', '1清华大学出版社', 297, '工具类', '硬件');
INSERT INTO `library` VALUES (606, '单片机接口与技术298', '1清华大学出版社', 298, '学习资源', '软件');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `grade` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年级',
  `direction` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方向',
  `major` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `position_id` int(11) NOT NULL COMMENT '职位_ID',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门_ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 892 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, '张六六', '19级', '嵌入式', '物联网', 3, 2);
INSERT INTO `person` VALUES (2, '李四', '18级', '前端开发', '通信工程', 6, 1);
INSERT INTO `person` VALUES (3, '王五', '17级', '后端开发', '计算机科学与技术', 1, 1);
INSERT INTO `person` VALUES (4, '叶六', '18级', 'UI设计师', '物联网工程', 6, 3);
INSERT INTO `person` VALUES (5, '小左', '18级', 'Java工程师', '软件工程', 2, 4);
INSERT INTO `person` VALUES (6, '小右', '17级', '单片机开发', '电子信息工程', 6, 4);
INSERT INTO `person` VALUES (7, '哈哈', '19级', '游戏开发', '物联网工程', 3, 2);
INSERT INTO `person` VALUES (509, '李12', '1级', '前端12', '物联网12', 12, 12);
INSERT INTO `person` VALUES (512, '李15', '1级', '前端15', '物联网15', 6, 15);
INSERT INTO `person` VALUES (519, '李22', '17级', '前端22', '物联网22', 1, 1);
INSERT INTO `person` VALUES (520, '李23', '16级', '前端23', '物联网23', 4, 1);
INSERT INTO `person` VALUES (521, '李24', '1级', '前端24', '物联网24', 24, 24);
INSERT INTO `person` VALUES (522, '李25', '17级', '前端25', '物联网25', 6, 4);
INSERT INTO `person` VALUES (523, '李26', '1级', '前端26', '物联网26', 26, 26);
INSERT INTO `person` VALUES (524, '李27', '1级', '前端27', '物联网27', 6, 27);
INSERT INTO `person` VALUES (525, '李28', '19级', '前端28', '物联网28', 3, 2);
INSERT INTO `person` VALUES (526, '李29', '1级', '前端29', '物联网29', 6, 29);
INSERT INTO `person` VALUES (527, '李30', '1级', '前端30', '物联网30', 30, 30);
INSERT INTO `person` VALUES (528, '李31', '17级', '前端31', '物联网31', 6, 4);
INSERT INTO `person` VALUES (529, '李32', '1级', '前端32', '物联网32', 32, 32);
INSERT INTO `person` VALUES (530, '李33', '16级', '前端33', '物联网33', 4, 1);
INSERT INTO `person` VALUES (531, '李34', '17级', '前端34', '物联网34', 1, 1);
INSERT INTO `person` VALUES (532, '李35', '19级', '前端35', '物联网35', 3, 2);
INSERT INTO `person` VALUES (533, '李36', '1级', '前端36', '物联网36', 36, 36);
INSERT INTO `person` VALUES (534, '李37', '17级', '前端37', '物联网37', 6, 4);
INSERT INTO `person` VALUES (535, '李38', '18级', '前端38', '物联网38', 2, 4);
INSERT INTO `person` VALUES (536, '李39', '1级', '前端39', '物联网39', 6, 39);
INSERT INTO `person` VALUES (537, '李40', '17级', '前端40', '物联网40', 1, 1);
INSERT INTO `person` VALUES (538, '李41', '1级', '前端41', '物联网41', 6, 41);
INSERT INTO `person` VALUES (539, '李42', '15级', '前端42', '物联网42', 5, 3);
INSERT INTO `person` VALUES (540, '李43', '17级', '前端43', '物联网43', 6, 4);
INSERT INTO `person` VALUES (541, '李44', '1级', '前端44', '物联网44', 44, 44);
INSERT INTO `person` VALUES (542, '李45', '1级', '前端45', '物联网45', 6, 45);
INSERT INTO `person` VALUES (543, '李46', '17级', '前端46', '物联网46', 1, 1);
INSERT INTO `person` VALUES (544, '李47', '1级', '前端47', '物联网47', 6, 47);
INSERT INTO `person` VALUES (545, '李48', '18级', '前端48', '物联网48', 2, 4);
INSERT INTO `person` VALUES (546, '李49', '17级', '前端49', '物联网49', 6, 4);
INSERT INTO `person` VALUES (547, '李50', '1级', '前端50', '物联网50', 50, 50);
INSERT INTO `person` VALUES (548, '李51', '1级', '前端51', '物联网51', 6, 51);
INSERT INTO `person` VALUES (549, '李52', '17级', '前端52', '物联网52', 1, 1);
INSERT INTO `person` VALUES (550, '李53', '15级', '前端53', '物联网53', 5, 3);
INSERT INTO `person` VALUES (551, '李54', '1级', '前端54', '物联网54', 54, 54);
INSERT INTO `person` VALUES (552, '李55', '17级', '前端55', '物联网55', 6, 4);
INSERT INTO `person` VALUES (553, '李56', '19级', '前端56', '物联网56', 3, 2);
INSERT INTO `person` VALUES (554, '李57', '1级', '前端57', '物联网57', 6, 57);
INSERT INTO `person` VALUES (555, '李58', '18级', '前端58', '物联网58', 2, 4);
INSERT INTO `person` VALUES (556, '李59', '1级', '前端59', '物联网59', 6, 59);
INSERT INTO `person` VALUES (557, '李60', '1级', '前端60', '物联网60', 60, 60);
INSERT INTO `person` VALUES (558, '李61', '17级', '前端61', '物联网61', 6, 4);
INSERT INTO `person` VALUES (559, '李62', '1级', '前端62', '物联网62', 62, 62);
INSERT INTO `person` VALUES (560, '李63', '16级', '前端63', '物联网63', 4, 1);
INSERT INTO `person` VALUES (561, '李64', '15级', '前端64', '物联网64', 5, 3);
INSERT INTO `person` VALUES (562, '李65', '1级', '前端65', '物联网65', 6, 65);
INSERT INTO `person` VALUES (563, '李66', '1级', '前端66', '物联网66', 66, 66);
INSERT INTO `person` VALUES (564, '李67', '17级', '前端67', '物联网67', 6, 4);
INSERT INTO `person` VALUES (565, '李68', '18级', '前端68', '物联网68', 2, 4);
INSERT INTO `person` VALUES (566, '李69', '1级', '前端69', '物联网69', 6, 69);
INSERT INTO `person` VALUES (567, '李70', '19级', '前端70', '物联网70', 3, 2);
INSERT INTO `person` VALUES (568, '李71', '1级', '前端71', '物联网71', 6, 71);
INSERT INTO `person` VALUES (569, '李72', '1级', '前端72', '物联网72', 72, 72);
INSERT INTO `person` VALUES (570, '李73', '17级', '前端73', '物联网73', 6, 4);
INSERT INTO `person` VALUES (571, '李74', '1级', '前端74', '物联网74', 74, 74);
INSERT INTO `person` VALUES (572, '李75', '15级', '前端75', '物联网75', 5, 3);
INSERT INTO `person` VALUES (573, '李76', '17级', '前端76', '物联网76', 1, 1);
INSERT INTO `person` VALUES (574, '李77', '19级', '前端77', '物联网77', 3, 2);
INSERT INTO `person` VALUES (575, '李78', '18级', '前端78', '物联网78', 2, 4);
INSERT INTO `person` VALUES (576, '李79', '17级', '前端79', '物联网79', 6, 4);
INSERT INTO `person` VALUES (577, '李80', '1级', '前端80', '物联网80', 80, 80);
INSERT INTO `person` VALUES (578, '李81', '1级', '前端81', '物联网81', 6, 81);
INSERT INTO `person` VALUES (579, '李82', '17级', '前端82', '物联网82', 1, 1);
INSERT INTO `person` VALUES (580, '李83', '16级', '前端83', '物联网83', 4, 1);
INSERT INTO `person` VALUES (581, '李84', '19级', '前端84', '物联网84', 3, 2);
INSERT INTO `person` VALUES (582, '李85', '17级', '前端85', '物联网85', 6, 4);
INSERT INTO `person` VALUES (583, '李86', '15级', '前端86', '物联网86', 5, 3);
INSERT INTO `person` VALUES (584, '李87', '1级', '前端87', '物联网87', 6, 87);
INSERT INTO `person` VALUES (585, '李88', '18级', '前端88', '物联网88', 2, 4);
INSERT INTO `person` VALUES (586, '李89', '1级', '前端89', '物联网89', 6, 89);
INSERT INTO `person` VALUES (587, '李90', '1级', '前端90', '物联网90', 90, 90);
INSERT INTO `person` VALUES (588, '李91', '17级', '前端91', '物联网91', 6, 4);
INSERT INTO `person` VALUES (589, '李92', '1级', '前端92', '物联网92', 92, 92);
INSERT INTO `person` VALUES (590, '李93', '16级', '前端93', '物联网93', 4, 1);
INSERT INTO `person` VALUES (591, '李94', '17级', '前端94', '物联网94', 1, 1);
INSERT INTO `person` VALUES (592, '李95', '1级', '前端95', '物联网95', 6, 95);
INSERT INTO `person` VALUES (593, '李96', '1级', '前端96', '物联网96', 96, 96);
INSERT INTO `person` VALUES (594, '李97', '17级', '前端97', '物联网97', 6, 4);
INSERT INTO `person` VALUES (595, '李98', '19级', '前端98', '物联网98', 3, 2);
INSERT INTO `person` VALUES (596, '李99', '1级', '前端99', '物联网99', 6, 99);
INSERT INTO `person` VALUES (597, '李7', '17级', '前端7', '物联网7', 1, 1);
INSERT INTO `person` VALUES (598, '李8', '1级', '前端8', '物联网8', 6, 8);
INSERT INTO `person` VALUES (599, '李9', '1级', '前端9', '物联网9', 9, 9);
INSERT INTO `person` VALUES (600, '李10', '17级', '前端10', '物联网10', 6, 4);
INSERT INTO `person` VALUES (601, '李11', '1级', '前端11', '物联网11', 11, 11);
INSERT INTO `person` VALUES (602, '李12', '19级', '前端12', '物联网12', 3, 2);
INSERT INTO `person` VALUES (603, '李13', '17级', '前端13', '物联网13', 1, 1);
INSERT INTO `person` VALUES (604, '李14', '1级', '前端14', '物联网14', 6, 14);
INSERT INTO `person` VALUES (605, '李15', '15级', '前端15', '物联网15', 5, 3);
INSERT INTO `person` VALUES (606, '李16', '17级', '前端16', '物联网16', 6, 4);
INSERT INTO `person` VALUES (607, '李17', '1级', '前端17', '物联网17', 17, 17);
INSERT INTO `person` VALUES (608, '李18', '1级', '前端18', '物联网18', 6, 18);
INSERT INTO `person` VALUES (609, '李19', '19级', '前端19', '物联网19', 3, 2);
INSERT INTO `person` VALUES (610, '李20', '16级', '前端20', '物联网20', 4, 1);
INSERT INTO `person` VALUES (611, '李21', '1级', '前端21', '物联网21', 21, 21);
INSERT INTO `person` VALUES (612, '李22', '17级', '前端22', '物联网22', 6, 4);
INSERT INTO `person` VALUES (613, '李23', '1级', '前端23', '物联网23', 23, 23);
INSERT INTO `person` VALUES (614, '李24', '1级', '前端24', '物联网24', 6, 24);
INSERT INTO `person` VALUES (615, '李25', '18级', '前端25', '物联网25', 2, 4);
INSERT INTO `person` VALUES (616, '李26', '15级', '前端26', '物联网26', 5, 3);
INSERT INTO `person` VALUES (617, '李27', '1级', '前端27', '物联网27', 27, 27);
INSERT INTO `person` VALUES (618, '李28', '17级', '前端28', '物联网28', 6, 4);
INSERT INTO `person` VALUES (619, '李29', '1级', '前端29', '物联网29', 29, 29);
INSERT INTO `person` VALUES (620, '李30', '16级', '前端30', '物联网30', 4, 1);
INSERT INTO `person` VALUES (621, '李31', '17级', '前端31', '物联网31', 1, 1);
INSERT INTO `person` VALUES (622, '李32', '1级', '前端32', '物联网32', 6, 32);
INSERT INTO `person` VALUES (623, '李33', '19级', '前端33', '物联网33', 3, 2);
INSERT INTO `person` VALUES (624, '李34', '17级', '前端34', '物联网34', 6, 4);
INSERT INTO `person` VALUES (625, '李35', '18级', '前端35', '物联网35', 2, 4);
INSERT INTO `person` VALUES (626, '李36', '1级', '前端36', '物联网36', 6, 36);
INSERT INTO `person` VALUES (627, '李37', '15级', '前端37', '物联网37', 5, 3);
INSERT INTO `person` VALUES (628, '李38', '1级', '前端38', '物联网38', 6, 38);
INSERT INTO `person` VALUES (629, '李39', '1级', '前端39', '物联网39', 39, 39);
INSERT INTO `person` VALUES (630, '李40', '17级', '前端40', '物联网40', 6, 4);
INSERT INTO `person` VALUES (631, '李41', '1级', '前端41', '物联网41', 41, 41);
INSERT INTO `person` VALUES (632, '李42', '1级', '前端42', '物联网42', 6, 42);
INSERT INTO `person` VALUES (633, '李43', '17级', '前端43', '物联网43', 1, 1);
INSERT INTO `person` VALUES (634, '李44', '1级', '前端44', '物联网44', 6, 44);
INSERT INTO `person` VALUES (635, '李45', '18级', '前端45', '物联网45', 2, 4);
INSERT INTO `person` VALUES (636, '李46', '17级', '前端46', '物联网46', 6, 4);
INSERT INTO `person` VALUES (637, '李47', '19级', '前端47', '物联网47', 3, 2);
INSERT INTO `person` VALUES (638, '李48', '15级', '前端48', '物联网48', 5, 3);
INSERT INTO `person` VALUES (639, '李49', '17级', '前端49', '物联网49', 1, 1);
INSERT INTO `person` VALUES (640, '李50', '16级', '前端50', '物联网50', 4, 1);
INSERT INTO `person` VALUES (641, '李51', '1级', '前端51', '物联网51', 51, 51);
INSERT INTO `person` VALUES (642, '李52', '17级', '前端52', '物联网52', 6, 4);
INSERT INTO `person` VALUES (643, '李53', '1级', '前端53', '物联网53', 53, 53);
INSERT INTO `person` VALUES (644, '李54', '19级', '前端54', '物联网54', 3, 2);
INSERT INTO `person` VALUES (645, '李55', '18级', '前端55', '物联网55', 2, 4);
INSERT INTO `person` VALUES (646, '李56', '1级', '前端56', '物联网56', 6, 56);
INSERT INTO `person` VALUES (647, '李57', '1级', '前端57', '物联网57', 57, 57);
INSERT INTO `person` VALUES (648, '李58', '17级', '前端58', '物联网58', 6, 4);
INSERT INTO `person` VALUES (649, '李59', '15级', '前端59', '物联网59', 5, 3);
INSERT INTO `person` VALUES (650, '李60', '16级', '前端60', '物联网60', 4, 1);
INSERT INTO `person` VALUES (651, '李61', '19级', '前端61', '物联网61', 3, 2);
INSERT INTO `person` VALUES (652, '李62', '1级', '前端62', '物联网62', 6, 62);
INSERT INTO `person` VALUES (653, '李63', '1级', '前端63', '物联网63', 63, 63);
INSERT INTO `person` VALUES (654, '李64', '17级', '前端64', '物联网64', 6, 4);
INSERT INTO `person` VALUES (655, '李65', '18级', '前端65', '物联网65', 2, 4);
INSERT INTO `person` VALUES (656, '李66', '1级', '前端66', '物联网66', 6, 66);
INSERT INTO `person` VALUES (657, '李67', '17级', '前端67', '物联网67', 1, 1);
INSERT INTO `person` VALUES (658, '李68', '19级', '前端68', '物联网68', 3, 2);
INSERT INTO `person` VALUES (659, '李69', '1级', '前端69', '物联网69', 69, 69);
INSERT INTO `person` VALUES (660, '李70', '17级', '前端70', '物联网70', 6, 4);
INSERT INTO `person` VALUES (661, '李71', '1级', '前端71', '物联网71', 71, 71);
INSERT INTO `person` VALUES (662, '李72', '1级', '前端72', '物联网72', 6, 72);
INSERT INTO `person` VALUES (663, '李73', '17级', '前端73', '物联网73', 1, 1);
INSERT INTO `person` VALUES (664, '李74', '1级', '前端74', '物联网74', 6, 74);
INSERT INTO `person` VALUES (665, '李75', '19级', '前端75', '物联网75', 3, 2);
INSERT INTO `person` VALUES (666, '李76', '17级', '前端76', '物联网76', 6, 4);
INSERT INTO `person` VALUES (667, '李77', '1级', '前端77', '物联网77', 77, 77);
INSERT INTO `person` VALUES (668, '李78', '1级', '前端78', '物联网78', 6, 78);
INSERT INTO `person` VALUES (669, '李79', '17级', '前端79', '物联网79', 1, 1);
INSERT INTO `person` VALUES (670, '李80', '16级', '前端80', '物联网80', 4, 1);
INSERT INTO `person` VALUES (671, '李81', '15级', '前端81', '物联网81', 5, 3);
INSERT INTO `person` VALUES (672, '李82', '17级', '前端82', '物联网82', 6, 4);
INSERT INTO `person` VALUES (673, '李83', '1级', '前端83', '物联网83', 83, 83);
INSERT INTO `person` VALUES (674, '李84', '1级', '前端84', '物联网84', 6, 84);
INSERT INTO `person` VALUES (675, '李85', '18级', '前端85', '物联网85', 2, 4);
INSERT INTO `person` VALUES (676, '李86', '1级', '前端86', '物联网86', 6, 86);
INSERT INTO `person` VALUES (677, '李87', '1级', '前端87', '物联网87', 87, 87);
INSERT INTO `person` VALUES (678, '李88', '17级', '前端88', '物联网88', 6, 4);
INSERT INTO `person` VALUES (679, '李89', '19级', '前端89', '物联网89', 3, 2);
INSERT INTO `person` VALUES (680, '李90', '16级', '前端90', '物联网90', 4, 1);
INSERT INTO `person` VALUES (681, '李91', '17级', '前端91', '物联网91', 1, 1);
INSERT INTO `person` VALUES (682, '李92', '15级', '前端92', '物联网92', 5, 3);
INSERT INTO `person` VALUES (683, '李93', '1级', '前端93', '物联网93', 93, 93);
INSERT INTO `person` VALUES (684, '李94', '17级', '前端94', '物联网94', 6, 4);
INSERT INTO `person` VALUES (685, '李95', '18级', '前端95', '物联网95', 2, 4);
INSERT INTO `person` VALUES (686, '李96', '19级', '前端96', '物联网96', 3, 2);
INSERT INTO `person` VALUES (687, '李97', '17级', '前端97', '物联网97', 1, 1);
INSERT INTO `person` VALUES (688, '李98', '1级', '前端98', '物联网98', 6, 98);
INSERT INTO `person` VALUES (689, '李99', '1级', '前端99', '物联网99', 99, 99);
INSERT INTO `person` VALUES (690, '李100', '17级', '前端100', '物联网100', 6, 4);
INSERT INTO `person` VALUES (691, '李101', '1级', '前端101', '物联网101', 101, 101);
INSERT INTO `person` VALUES (692, '李102', '1级', '前端102', '物联网102', 6, 102);
INSERT INTO `person` VALUES (693, '李103', '15级', '前端103', '物联网103', 5, 3);
INSERT INTO `person` VALUES (694, '李104', '1级', '前端104', '物联网104', 6, 104);
INSERT INTO `person` VALUES (695, '李105', '18级', '前端105', '物联网105', 2, 4);
INSERT INTO `person` VALUES (696, '李106', '17级', '前端106', '物联网106', 6, 4);
INSERT INTO `person` VALUES (697, '李107', '1级', '前端107', '物联网107', 107, 107);
INSERT INTO `person` VALUES (698, '李108', '1级', '前端108', '物联网108', 6, 108);
INSERT INTO `person` VALUES (699, '李109', '17级', '前端109', '物联网109', 1, 1);
INSERT INTO `person` VALUES (700, '李110', '16级', '前端110', '物联网110', 4, 1);
INSERT INTO `person` VALUES (701, '李111', '1级', '前端111', '物联网111', 111, 111);
INSERT INTO `person` VALUES (702, '李112', '17级', '前端112', '物联网112', 6, 4);
INSERT INTO `person` VALUES (703, '李113', '1级', '前端113', '物联网113', 113, 113);
INSERT INTO `person` VALUES (704, '李114', '15级', '前端114', '物联网114', 5, 3);
INSERT INTO `person` VALUES (705, '李115', '18级', '前端115', '物联网115', 2, 4);
INSERT INTO `person` VALUES (706, '李116', '1级', '前端116', '物联网116', 6, 116);
INSERT INTO `person` VALUES (707, '李117', '19级', '前端117', '物联网117', 3, 2);
INSERT INTO `person` VALUES (708, '李118', '17级', '前端118', '物联网118', 6, 4);
INSERT INTO `person` VALUES (709, '李119', '1级', '前端119', '物联网119', 119, 119);
INSERT INTO `person` VALUES (710, '李120', '16级', '前端120', '物联网120', 4, 1);
INSERT INTO `person` VALUES (711, '李121', '17级', '前端121', '物联网121', 1, 1);
INSERT INTO `person` VALUES (712, '李122', '1级', '前端122', '物联网122', 6, 122);
INSERT INTO `person` VALUES (713, '李123', '1级', '前端123', '物联网123', 123, 123);
INSERT INTO `person` VALUES (714, '李124', '17级', '前端124', '物联网124', 6, 4);
INSERT INTO `person` VALUES (715, '李125', '15级', '前端125', '物联网125', 5, 3);
INSERT INTO `person` VALUES (716, '李126', '1级', '前端126', '物联网126', 6, 126);
INSERT INTO `person` VALUES (717, '李127', '17级', '前端127', '物联网127', 1, 1);
INSERT INTO `person` VALUES (718, '李128', '1级', '前端128', '物联网128', 6, 128);
INSERT INTO `person` VALUES (719, '李129', '1级', '前端129', '物联网129', 129, 129);
INSERT INTO `person` VALUES (720, '李130', '17级', '前端130', '物联网130', 6, 4);
INSERT INTO `person` VALUES (721, '李131', '19级', '前端131', '物联网131', 3, 2);
INSERT INTO `person` VALUES (722, '李132', '1级', '前端132', '物联网132', 6, 132);
INSERT INTO `person` VALUES (723, '李133', '17级', '前端133', '物联网133', 1, 1);
INSERT INTO `person` VALUES (724, '李134', '1级', '前端134', '物联网134', 6, 134);
INSERT INTO `person` VALUES (725, '李135', '18级', '前端135', '物联网135', 2, 4);
INSERT INTO `person` VALUES (726, '李136', '17级', '前端136', '物联网136', 6, 4);
INSERT INTO `person` VALUES (727, '李137', '1级', '前端137', '物联网137', 137, 137);
INSERT INTO `person` VALUES (728, '李138', '19级', '前端138', '物联网138', 3, 2);
INSERT INTO `person` VALUES (729, '李139', '17级', '前端139', '物联网139', 1, 1);
INSERT INTO `person` VALUES (730, '李140', '16级', '前端140', '物联网140', 4, 1);
INSERT INTO `person` VALUES (731, '李141', '1级', '前端141', '物联网141', 141, 141);
INSERT INTO `person` VALUES (732, '李142', '17级', '前端142', '物联网142', 6, 4);
INSERT INTO `person` VALUES (733, '李143', '1级', '前端143', '物联网143', 143, 143);
INSERT INTO `person` VALUES (734, '李144', '1级', '前端144', '物联网144', 6, 144);
INSERT INTO `person` VALUES (735, '李145', '19级', '前端145', '物联网145', 3, 2);
INSERT INTO `person` VALUES (736, '李146', '1级', '前端146', '物联网146', 6, 146);
INSERT INTO `person` VALUES (737, '李147', '15级', '前端147', '物联网147', 5, 3);
INSERT INTO `person` VALUES (738, '李148', '17级', '前端148', '物联网148', 6, 4);
INSERT INTO `person` VALUES (739, '李149', '1级', '前端149', '物联网149', 149, 149);
INSERT INTO `person` VALUES (740, '李150', '16级', '前端150', '物联网150', 4, 1);
INSERT INTO `person` VALUES (741, '李151', '17级', '前端151', '物联网151', 1, 1);
INSERT INTO `person` VALUES (742, '李152', '19级', '前端152', '物联网152', 3, 2);
INSERT INTO `person` VALUES (743, '李153', '1级', '前端153', '物联网153', 153, 153);
INSERT INTO `person` VALUES (744, '李154', '17级', '前端154', '物联网154', 6, 4);
INSERT INTO `person` VALUES (745, '李155', '18级', '前端155', '物联网155', 2, 4);
INSERT INTO `person` VALUES (746, '李156', '1级', '前端156', '物联网156', 6, 156);
INSERT INTO `person` VALUES (747, '李157', '17级', '前端157', '物联网157', 1, 1);
INSERT INTO `person` VALUES (748, '李158', '15级', '前端158', '物联网158', 5, 3);
INSERT INTO `person` VALUES (749, '李159', '19级', '前端159', '物联网159', 3, 2);
INSERT INTO `person` VALUES (750, '李160', '17级', '前端160', '物联网160', 6, 4);
INSERT INTO `person` VALUES (751, '李161', '1级', '前端161', '物联网161', 161, 161);
INSERT INTO `person` VALUES (752, '李162', '1级', '前端162', '物联网162', 6, 162);
INSERT INTO `person` VALUES (753, '李163', '17级', '前端163', '物联网163', 1, 1);
INSERT INTO `person` VALUES (754, '李164', '1级', '前端164', '物联网164', 6, 164);
INSERT INTO `person` VALUES (755, '李165', '18级', '前端165', '物联网165', 2, 4);
INSERT INTO `person` VALUES (756, '李166', '17级', '前端166', '物联网166', 6, 4);
INSERT INTO `person` VALUES (757, '李167', '1级', '前端167', '物联网167', 167, 167);
INSERT INTO `person` VALUES (758, '李168', '1级', '前端168', '物联网168', 6, 168);
INSERT INTO `person` VALUES (759, '李169', '15级', '前端169', '物联网169', 5, 3);
INSERT INTO `person` VALUES (760, '李170', '16级', '前端170', '物联网170', 4, 1);
INSERT INTO `person` VALUES (761, '李171', '1级', '前端171', '物联网171', 171, 171);
INSERT INTO `person` VALUES (762, '李172', '17级', '前端172', '物联网172', 6, 4);
INSERT INTO `person` VALUES (763, '李173', '19级', '前端173', '物联网173', 3, 2);
INSERT INTO `person` VALUES (764, '李174', '1级', '前端174', '物联网174', 6, 174);
INSERT INTO `person` VALUES (765, '李175', '18级', '前端175', '物联网175', 2, 4);
INSERT INTO `person` VALUES (766, '李176', '1级', '前端176', '物联网176', 6, 176);
INSERT INTO `person` VALUES (767, '李177', '1级', '前端177', '物联网177', 177, 177);
INSERT INTO `person` VALUES (768, '李178', '17级', '前端178', '物联网178', 6, 4);
INSERT INTO `person` VALUES (769, '李179', '1级', '前端179', '物联网179', 179, 179);
INSERT INTO `person` VALUES (770, '李180', '15级', '前端180', '物联网180', 5, 3);
INSERT INTO `person` VALUES (771, '李181', '17级', '前端181', '物联网181', 1, 1);
INSERT INTO `person` VALUES (772, '李182', '1级', '前端182', '物联网182', 6, 182);
INSERT INTO `person` VALUES (773, '李183', '1级', '前端183', '物联网183', 183, 183);
INSERT INTO `person` VALUES (774, '李184', '17级', '前端184', '物联网184', 6, 4);
INSERT INTO `person` VALUES (775, '李185', '18级', '前端185', '物联网185', 2, 4);
INSERT INTO `person` VALUES (776, '李186', '1级', '前端186', '物联网186', 6, 186);
INSERT INTO `person` VALUES (777, '李187', '19级', '前端187', '物联网187', 3, 2);
INSERT INTO `person` VALUES (778, '李188', '1级', '前端188', '物联网188', 6, 188);
INSERT INTO `person` VALUES (779, '李189', '1级', '前端189', '物联网189', 189, 189);
INSERT INTO `person` VALUES (780, '李190', '17级', '前端190', '物联网190', 6, 4);
INSERT INTO `person` VALUES (781, '李191', '15级', '前端191', '物联网191', 5, 3);
INSERT INTO `person` VALUES (782, '李192', '1级', '前端192', '物联网192', 6, 192);
INSERT INTO `person` VALUES (783, '李193', '17级', '前端193', '物联网193', 1, 1);
INSERT INTO `person` VALUES (784, '李194', '19级', '前端194', '物联网194', 3, 2);
INSERT INTO `person` VALUES (785, '李195', '18级', '前端195', '物联网195', 2, 4);
INSERT INTO `person` VALUES (786, '李196', '17级', '前端196', '物联网196', 6, 4);
INSERT INTO `person` VALUES (787, '李197', '1级', '前端197', '物联网197', 197, 197);
INSERT INTO `person` VALUES (788, '李198', '1级', '前端198', '物联网198', 6, 198);
INSERT INTO `person` VALUES (789, '李199', '17级', '前端199', '物联网199', 1, 1);
INSERT INTO `person` VALUES (790, '李200', '16级', '前端200', '物联网200', 4, 1);
INSERT INTO `person` VALUES (791, '李201', '19级', '前端201', '物联网201', 3, 2);
INSERT INTO `person` VALUES (792, '李202', '17级', '前端202', '物联网202', 6, 4);
INSERT INTO `person` VALUES (793, '李203', '1级', '前端203', '物联网203', 203, 203);
INSERT INTO `person` VALUES (794, '李204', '1级', '前端204', '物联网204', 6, 204);
INSERT INTO `person` VALUES (795, '李205', '18级', '前端205', '物联网205', 2, 4);
INSERT INTO `person` VALUES (796, '李206', '1级', '前端206', '物联网206', 6, 206);
INSERT INTO `person` VALUES (797, '李207', '1级', '前端207', '物联网207', 207, 207);
INSERT INTO `person` VALUES (798, '李208', '17级', '前端208', '物联网208', 6, 4);
INSERT INTO `person` VALUES (799, '李209', '1级', '前端209', '物联网209', 209, 209);
INSERT INTO `person` VALUES (800, '李210', '16级', '前端210', '物联网210', 4, 1);
INSERT INTO `person` VALUES (801, '李211', '17级', '前端211', '物联网211', 1, 1);
INSERT INTO `person` VALUES (802, '李212', '1级', '前端212', '物联网212', 6, 212);
INSERT INTO `person` VALUES (803, '李213', '15级', '前端213', '物联网213', 5, 3);
INSERT INTO `person` VALUES (804, '李214', '17级', '前端214', '物联网214', 6, 4);
INSERT INTO `person` VALUES (805, '李215', '19级', '前端215', '物联网215', 3, 2);
INSERT INTO `person` VALUES (806, '李216', '1级', '前端216', '物联网216', 6, 216);
INSERT INTO `person` VALUES (807, '李217', '17级', '前端217', '物联网217', 1, 1);
INSERT INTO `person` VALUES (808, '李218', '1级', '前端218', '物联网218', 6, 218);
INSERT INTO `person` VALUES (809, '李219', '1级', '前端219', '物联网219', 219, 219);
INSERT INTO `person` VALUES (810, '李220', '17级', '前端220', '物联网220', 6, 4);
INSERT INTO `person` VALUES (811, '李221', '1级', '前端221', '物联网221', 221, 221);
INSERT INTO `person` VALUES (812, '李222', '19级', '前端222', '物联网222', 3, 2);
INSERT INTO `person` VALUES (813, '李223', '17级', '前端223', '物联网223', 1, 1);
INSERT INTO `person` VALUES (814, '李224', '15级', '前端224', '物联网224', 5, 3);
INSERT INTO `person` VALUES (815, '李225', '18级', '前端225', '物联网225', 2, 4);
INSERT INTO `person` VALUES (816, '李226', '17级', '前端226', '物联网226', 6, 4);
INSERT INTO `person` VALUES (817, '李227', '1级', '前端227', '物联网227', 227, 227);
INSERT INTO `person` VALUES (818, '李228', '1级', '前端228', '物联网228', 6, 228);
INSERT INTO `person` VALUES (819, '李229', '19级', '前端229', '物联网229', 3, 2);
INSERT INTO `person` VALUES (820, '李230', '16级', '前端230', '物联网230', 4, 1);
INSERT INTO `person` VALUES (821, '李231', '1级', '前端231', '物联网231', 231, 231);
INSERT INTO `person` VALUES (822, '李232', '17级', '前端232', '物联网232', 6, 4);
INSERT INTO `person` VALUES (823, '李233', '1级', '前端233', '物联网233', 233, 233);
INSERT INTO `person` VALUES (824, '李234', '1级', '前端234', '物联网234', 6, 234);
INSERT INTO `person` VALUES (825, '李235', '15级', '前端235', '物联网235', 5, 3);
INSERT INTO `person` VALUES (826, '李236', '19级', '前端236', '物联网236', 3, 2);
INSERT INTO `person` VALUES (827, '李237', '1级', '前端237', '物联网237', 237, 237);
INSERT INTO `person` VALUES (828, '李238', '17级', '前端238', '物联网238', 6, 4);
INSERT INTO `person` VALUES (829, '李239', '1级', '前端239', '物联网239', 239, 239);
INSERT INTO `person` VALUES (830, '李240', '16级', '前端240', '物联网240', 4, 1);
INSERT INTO `person` VALUES (831, '李241', '17级', '前端241', '物联网241', 1, 1);
INSERT INTO `person` VALUES (832, '李242', '1级', '前端242', '物联网242', 6, 242);
INSERT INTO `person` VALUES (833, '李243', '19级', '前端243', '物联网243', 3, 2);
INSERT INTO `person` VALUES (834, '李244', '17级', '前端244', '物联网244', 6, 4);
INSERT INTO `person` VALUES (835, '李245', '18级', '前端245', '物联网245', 2, 4);
INSERT INTO `person` VALUES (836, '李246', '15级', '前端246', '物联网246', 5, 3);
INSERT INTO `person` VALUES (837, '李247', '17级', '前端247', '物联网247', 1, 1);
INSERT INTO `person` VALUES (838, '李248', '1级', '前端248', '物联网248', 6, 248);
INSERT INTO `person` VALUES (839, '李249', '1级', '前端249', '物联网249', 249, 249);
INSERT INTO `person` VALUES (840, '李250', '17级', '前端250', '物联网250', 6, 4);
INSERT INTO `person` VALUES (841, '李251', '1级', '前端251', '物联网251', 251, 251);
INSERT INTO `person` VALUES (842, '李252', '1级', '前端252', '物联网252', 6, 252);
INSERT INTO `person` VALUES (843, '李253', '17级', '前端253', '物联网253', 1, 1);
INSERT INTO `person` VALUES (844, '李254', '1级', '前端254', '物联网254', 6, 254);
INSERT INTO `person` VALUES (845, '李255', '18级', '前端255', '物联网255', 2, 4);
INSERT INTO `person` VALUES (846, '李256', '17级', '前端256', '物联网256', 6, 4);
INSERT INTO `person` VALUES (847, '李257', '15级', '前端257', '物联网257', 5, 3);
INSERT INTO `person` VALUES (848, '李258', '1级', '前端258', '物联网258', 6, 258);
INSERT INTO `person` VALUES (849, '李259', '17级', '前端259', '物联网259', 1, 1);
INSERT INTO `person` VALUES (850, '李260', '16级', '前端260', '物联网260', 4, 1);
INSERT INTO `person` VALUES (851, '李261', '1级', '前端261', '物联网261', 261, 261);
INSERT INTO `person` VALUES (852, '李262', '17级', '前端262', '物联网262', 6, 4);
INSERT INTO `person` VALUES (853, '李263', '1级', '前端263', '物联网263', 263, 263);
INSERT INTO `person` VALUES (854, '李264', '19级', '前端264', '物联网264', 3, 2);
INSERT INTO `person` VALUES (855, '李265', '18级', '前端265', '物联网265', 2, 4);
INSERT INTO `person` VALUES (856, '李266', '1级', '前端266', '物联网266', 6, 266);
INSERT INTO `person` VALUES (857, '李267', '1级', '前端267', '物联网267', 267, 267);
INSERT INTO `person` VALUES (858, '李268', '17级', '前端268', '物联网268', 6, 4);
INSERT INTO `person` VALUES (859, '李269', '1级', '前端269', '物联网269', 269, 269);
INSERT INTO `person` VALUES (860, '李270', '16级', '前端270', '物联网270', 4, 1);
INSERT INTO `person` VALUES (861, '李271', '19级', '前端271', '物联网271', 3, 2);
INSERT INTO `person` VALUES (862, '李272', '1级', '前端272', '物联网272', 6, 272);
INSERT INTO `person` VALUES (863, '李273', '1级', '前端273', '物联网273', 273, 273);
INSERT INTO `person` VALUES (864, '李274', '17级', '前端274', '物联网274', 6, 4);
INSERT INTO `person` VALUES (865, '李275', '18级', '前端275', '物联网275', 2, 4);
INSERT INTO `person` VALUES (866, '李276', '1级', '前端276', '物联网276', 6, 276);
INSERT INTO `person` VALUES (867, '李277', '17级', '前端277', '物联网277', 1, 1);
INSERT INTO `person` VALUES (868, '李278', '19级', '前端278', '物联网278', 3, 2);
INSERT INTO `person` VALUES (869, '李279', '15级', '前端279', '物联网279', 5, 3);
INSERT INTO `person` VALUES (870, '李280', '17级', '前端280', '物联网280', 6, 4);
INSERT INTO `person` VALUES (871, '李281', '1级', '前端281', '物联网281', 281, 281);
INSERT INTO `person` VALUES (872, '李282', '1级', '前端282', '物联网282', 6, 282);
INSERT INTO `person` VALUES (873, '李283', '17级', '前端283', '物联网283', 1, 1);
INSERT INTO `person` VALUES (874, '李284', '1级', '前端284', '物联网284', 6, 284);
INSERT INTO `person` VALUES (875, '李285', '19级', '前端285', '物联网285', 3, 2);
INSERT INTO `person` VALUES (876, '李286', '17级', '前端286', '物联网286', 6, 4);
INSERT INTO `person` VALUES (877, '李287', '1级', '前端287', '物联网287', 287, 287);
INSERT INTO `person` VALUES (878, '李288', '1级', '前端288', '物联网288', 6, 288);
INSERT INTO `person` VALUES (879, '李289', '17级', '前端289', '物联网289', 1, 1);
INSERT INTO `person` VALUES (880, '李290', '15级', '前端290', '物联网290', 5, 3);
INSERT INTO `person` VALUES (881, '李291', '1级', '前端291', '物联网291', 291, 291);
INSERT INTO `person` VALUES (882, '李292', '17级', '前端292', '物联网292', 6, 4);
INSERT INTO `person` VALUES (883, '李293', '1级', '前端293', '物联网293', 293, 293);
INSERT INTO `person` VALUES (884, '李294', '1级', '前端294', '物联网294', 6, 294);
INSERT INTO `person` VALUES (885, '李295', '18级', '前端295', '物联网295', 2, 4);
INSERT INTO `person` VALUES (886, '李296', '1级', '前端296', '物联网296', 6, 296);
INSERT INTO `person` VALUES (887, '李297', '1级', '前端297', '物联网297', 297, 297);
INSERT INTO `person` VALUES (888, '李298', '17级', '前端298', '物联网298', 6, 4);
INSERT INTO `person` VALUES (889, '李299', '19级', '前端299', '物联网299', 3, 2);
INSERT INTO `person` VALUES (890, '阿瑟东', '17级', '前端', '物联网', 6, 2);
INSERT INTO `person` VALUES (891, '阿瑟东', '17级', '前端', '物联网', 6, 2);
INSERT INTO `person` VALUES (892, '阿瑟西', '18级', '前端', '物联网', 6, 2);

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (7, '主任');
INSERT INTO `position` VALUES (6, '会员');
INSERT INTO `position` VALUES (1, '会长');
INSERT INTO `position` VALUES (8, '副主任');
INSERT INTO `position` VALUES (2, '副会长');
INSERT INTO `position` VALUES (4, '副部长');
INSERT INTO `position` VALUES (5, '干事');
INSERT INTO `position` VALUES (3, '部长');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接',
  `link_pw` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提取码',
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `direction` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 307 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1, '百度云不限速', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '8ckt', '工具类', '软件');
INSERT INTO `resource` VALUES (2, 'Vs code', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', NULL, '视频类', '硬件');
INSERT INTO `resource` VALUES (3, 'Postman', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '8ckt', '视频', '视频');
INSERT INTO `resource` VALUES (4, 'Navicat Premium', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', NULL, '工具类', '阅读');
INSERT INTO `resource` VALUES (16, '百度云不限速12', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t12', '工具类', '软件');
INSERT INTO `resource` VALUES (17, '百度云不限速13', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t13', '工具类', '软件');
INSERT INTO `resource` VALUES (18, '百度云不限速14', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t14', '视频', '视频');
INSERT INTO `resource` VALUES (19, '百度云不限速15', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t15', '工具类', '软件');
INSERT INTO `resource` VALUES (20, '百度云不限速16', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t16', '学习资源', '硬件');
INSERT INTO `resource` VALUES (21, '百度云不限速17', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t17', '工具类', '阅读');
INSERT INTO `resource` VALUES (22, '百度云不限速18', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t18', '工具类', '软件');
INSERT INTO `resource` VALUES (23, '百度云不限速19', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t19', '工具类', '软件');
INSERT INTO `resource` VALUES (24, '百度云不限速20', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t20', '视频', '视频');
INSERT INTO `resource` VALUES (25, '百度云不限速21', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t21', '学习资源', '硬件');
INSERT INTO `resource` VALUES (26, '百度云不限速22', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t22', '工具类', '软件');
INSERT INTO `resource` VALUES (27, '百度云不限速23', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t23', '视频', '视频');
INSERT INTO `resource` VALUES (28, '百度云不限速24', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t24', '工具类', '阅读');
INSERT INTO `resource` VALUES (29, '百度云不限速25', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t25', '工具类', '软件');
INSERT INTO `resource` VALUES (30, '百度云不限速26', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t26', '视频', '视频');
INSERT INTO `resource` VALUES (31, '百度云不限速27', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t27', '工具类', '软件');
INSERT INTO `resource` VALUES (32, '百度云不限速28', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t28', '工具类', '软件');
INSERT INTO `resource` VALUES (33, '百度云不限速29', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t29', '视频', '视频');
INSERT INTO `resource` VALUES (34, '百度云不限速30', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t30', '工具类', '软件');
INSERT INTO `resource` VALUES (35, '百度云不限速31', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t31', '工具类', '阅读');
INSERT INTO `resource` VALUES (36, '百度云不限速32', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t32', '视频', '视频');
INSERT INTO `resource` VALUES (37, '百度云不限速33', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t33', '工具类', '软件');
INSERT INTO `resource` VALUES (38, '百度云不限速34', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t34', '工具类', '软件');
INSERT INTO `resource` VALUES (39, '百度云不限速35', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t35', '视频', '视频');
INSERT INTO `resource` VALUES (40, '百度云不限速36', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t36', '学习资源', '硬件');
INSERT INTO `resource` VALUES (41, '百度云不限速37', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t37', '工具类', '软件');
INSERT INTO `resource` VALUES (42, '百度云不限速38', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t38', '工具类', '阅读');
INSERT INTO `resource` VALUES (43, '百度云不限速39', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t39', '工具类', '软件');
INSERT INTO `resource` VALUES (44, '百度云不限速40', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t40', '工具类', '软件');
INSERT INTO `resource` VALUES (45, '百度云不限速41', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t41', '视频', '视频');
INSERT INTO `resource` VALUES (46, '百度云不限速42', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t42', '工具类', '软件');
INSERT INTO `resource` VALUES (47, '百度云不限速43', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t43', '工具类', '软件');
INSERT INTO `resource` VALUES (48, '百度云不限速44', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t44', '视频', '视频');
INSERT INTO `resource` VALUES (49, '百度云不限速45', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t45', '工具类', '阅读');
INSERT INTO `resource` VALUES (50, '百度云不限速46', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t46', '学习资源', '硬件');
INSERT INTO `resource` VALUES (51, '百度云不限速47', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t47', '视频', '视频');
INSERT INTO `resource` VALUES (52, '百度云不限速48', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t48', '工具类', '软件');
INSERT INTO `resource` VALUES (53, '百度云不限速49', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t49', '工具类', '软件');
INSERT INTO `resource` VALUES (54, '百度云不限速50', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t50', '视频', '视频');
INSERT INTO `resource` VALUES (55, '百度云不限速51', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t51', '学习资源', '硬件');
INSERT INTO `resource` VALUES (56, '百度云不限速52', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t52', '工具类', '阅读');
INSERT INTO `resource` VALUES (57, '百度云不限速53', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t53', '视频', '视频');
INSERT INTO `resource` VALUES (58, '百度云不限速54', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t54', '工具类', '软件');
INSERT INTO `resource` VALUES (59, '百度云不限速55', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t55', '工具类', '软件');
INSERT INTO `resource` VALUES (60, '百度云不限速56', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t56', '视频', '视频');
INSERT INTO `resource` VALUES (61, '百度云不限速57', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t57', '工具类', '软件');
INSERT INTO `resource` VALUES (62, '百度云不限速58', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t58', '工具类', '软件');
INSERT INTO `resource` VALUES (63, '百度云不限速59', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t59', '工具类', '阅读');
INSERT INTO `resource` VALUES (64, '百度云不限速60', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t60', '工具类', '软件');
INSERT INTO `resource` VALUES (65, '百度云不限速61', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t61', '学习资源', '硬件');
INSERT INTO `resource` VALUES (66, '百度云不限速62', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t62', '视频', '视频');
INSERT INTO `resource` VALUES (67, '百度云不限速63', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t63', '工具类', '软件');
INSERT INTO `resource` VALUES (68, '百度云不限速64', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t64', '工具类', '软件');
INSERT INTO `resource` VALUES (69, '百度云不限速65', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t65', '视频', '视频');
INSERT INTO `resource` VALUES (70, '百度云不限速66', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t66', '工具类', '阅读');
INSERT INTO `resource` VALUES (71, '百度云不限速67', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t67', '工具类', '软件');
INSERT INTO `resource` VALUES (72, '百度云不限速68', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t68', '视频', '视频');
INSERT INTO `resource` VALUES (73, '百度云不限速69', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t69', '工具类', '软件');
INSERT INTO `resource` VALUES (74, '百度云不限速70', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t70', '工具类', '软件');
INSERT INTO `resource` VALUES (75, '百度云不限速71', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t71', '视频', '视频');
INSERT INTO `resource` VALUES (76, '百度云不限速72', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t72', '工具类', '软件');
INSERT INTO `resource` VALUES (77, '百度云不限速73', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t73', '工具类', '阅读');
INSERT INTO `resource` VALUES (78, '百度云不限速74', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t74', '视频', '视频');
INSERT INTO `resource` VALUES (79, '百度云不限速75', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t75', '工具类', '软件');
INSERT INTO `resource` VALUES (80, '百度云不限速76', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t76', '学习资源', '硬件');
INSERT INTO `resource` VALUES (81, '百度云不限速77', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t77', '视频', '视频');
INSERT INTO `resource` VALUES (82, '百度云不限速78', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t78', '工具类', '软件');
INSERT INTO `resource` VALUES (83, '百度云不限速79', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t79', '工具类', '软件');
INSERT INTO `resource` VALUES (84, '百度云不限速80', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t80', '工具类', '阅读');
INSERT INTO `resource` VALUES (85, '百度云不限速81', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t81', '学习资源', '硬件');
INSERT INTO `resource` VALUES (86, '百度云不限速82', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t82', '工具类', '软件');
INSERT INTO `resource` VALUES (87, '百度云不限速83', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t83', '视频', '视频');
INSERT INTO `resource` VALUES (88, '百度云不限速84', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t84', '工具类', '软件');
INSERT INTO `resource` VALUES (89, '百度云不限速85', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t85', '工具类', '软件');
INSERT INTO `resource` VALUES (90, '百度云不限速86', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t86', '视频', '视频');
INSERT INTO `resource` VALUES (91, '百度云不限速87', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t87', '工具类', '阅读');
INSERT INTO `resource` VALUES (92, '百度云不限速88', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t88', '工具类', '软件');
INSERT INTO `resource` VALUES (93, '百度云不限速89', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t89', '视频', '视频');
INSERT INTO `resource` VALUES (94, '百度云不限速90', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t90', '工具类', '软件');
INSERT INTO `resource` VALUES (95, '百度云不限速91', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t91', '学习资源', '硬件');
INSERT INTO `resource` VALUES (96, '百度云不限速92', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t92', '视频', '视频');
INSERT INTO `resource` VALUES (97, '百度云不限速93', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t93', '工具类', '软件');
INSERT INTO `resource` VALUES (98, '百度云不限速94', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t94', '工具类', '阅读');
INSERT INTO `resource` VALUES (99, '百度云不限速95', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t95', '视频', '视频');
INSERT INTO `resource` VALUES (100, '百度云不限速96', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t96', '学习资源', '硬件');
INSERT INTO `resource` VALUES (101, '百度云不限速97', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t97', '工具类', '软件');
INSERT INTO `resource` VALUES (102, '百度云不限速98', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t98', '视频', '视频');
INSERT INTO `resource` VALUES (103, '百度云不限速99', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t99', '工具类', '软件');
INSERT INTO `resource` VALUES (104, '百度云不限速100', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t100', '工具类', '软件');
INSERT INTO `resource` VALUES (105, '百度云不限速101', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t101', '工具类', '阅读');
INSERT INTO `resource` VALUES (106, '百度云不限速102', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t102', '工具类', '软件');
INSERT INTO `resource` VALUES (107, '百度云不限速103', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t103', '工具类', '软件');
INSERT INTO `resource` VALUES (108, '百度云不限速104', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t104', '视频', '视频');
INSERT INTO `resource` VALUES (109, '百度云不限速105', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t105', '工具类', '软件');
INSERT INTO `resource` VALUES (110, '百度云不限速106', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t106', '学习资源', '硬件');
INSERT INTO `resource` VALUES (111, '百度云不限速107', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t107', '视频', '视频');
INSERT INTO `resource` VALUES (112, '百度云不限速108', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t108', '工具类', '阅读');
INSERT INTO `resource` VALUES (113, '百度云不限速109', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t109', '工具类', '软件');
INSERT INTO `resource` VALUES (114, '百度云不限速110', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t110', '视频', '视频');
INSERT INTO `resource` VALUES (115, '百度云不限速111', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t111', '学习资源', '硬件');
INSERT INTO `resource` VALUES (116, '百度云不限速112', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t112', '工具类', '软件');
INSERT INTO `resource` VALUES (117, '百度云不限速113', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t113', '视频', '视频');
INSERT INTO `resource` VALUES (118, '百度云不限速114', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t114', '工具类', '软件');
INSERT INTO `resource` VALUES (119, '百度云不限速115', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t115', '工具类', '阅读');
INSERT INTO `resource` VALUES (120, '百度云不限速116', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t116', '视频', '视频');
INSERT INTO `resource` VALUES (121, '百度云不限速117', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t117', '工具类', '软件');
INSERT INTO `resource` VALUES (122, '百度云不限速118', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t118', '工具类', '软件');
INSERT INTO `resource` VALUES (123, '百度云不限速119', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t119', '视频', '视频');
INSERT INTO `resource` VALUES (124, '百度云不限速120', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t120', '工具类', '软件');
INSERT INTO `resource` VALUES (125, '百度云不限速121', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t121', '学习资源', '硬件');
INSERT INTO `resource` VALUES (126, '百度云不限速122', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t122', '工具类', '阅读');
INSERT INTO `resource` VALUES (127, '百度云不限速123', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t123', '工具类', '软件');
INSERT INTO `resource` VALUES (128, '百度云不限速124', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t124', '工具类', '软件');
INSERT INTO `resource` VALUES (129, '百度云不限速125', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t125', '视频', '视频');
INSERT INTO `resource` VALUES (130, '百度云不限速126', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t126', '学习资源', '硬件');
INSERT INTO `resource` VALUES (131, '百度云不限速127', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t127', '工具类', '软件');
INSERT INTO `resource` VALUES (132, '百度云不限速128', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t128', '视频', '视频');
INSERT INTO `resource` VALUES (133, '百度云不限速129', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t129', '工具类', '阅读');
INSERT INTO `resource` VALUES (134, '百度云不限速130', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t130', '工具类', '软件');
INSERT INTO `resource` VALUES (135, '百度云不限速131', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t131', '视频', '视频');
INSERT INTO `resource` VALUES (136, '百度云不限速132', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t132', '工具类', '软件');
INSERT INTO `resource` VALUES (137, '百度云不限速133', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t133', '工具类', '软件');
INSERT INTO `resource` VALUES (138, '百度云不限速134', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t134', '视频', '视频');
INSERT INTO `resource` VALUES (139, '百度云不限速135', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t135', '工具类', '软件');
INSERT INTO `resource` VALUES (140, '百度云不限速136', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t136', '工具类', '阅读');
INSERT INTO `resource` VALUES (141, '百度云不限速137', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t137', '视频', '视频');
INSERT INTO `resource` VALUES (142, '百度云不限速138', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t138', '工具类', '软件');
INSERT INTO `resource` VALUES (143, '百度云不限速139', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t139', '工具类', '软件');
INSERT INTO `resource` VALUES (144, '百度云不限速140', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t140', '视频', '视频');
INSERT INTO `resource` VALUES (145, '百度云不限速141', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t141', '学习资源', '硬件');
INSERT INTO `resource` VALUES (146, '百度云不限速142', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t142', '工具类', '软件');
INSERT INTO `resource` VALUES (147, '百度云不限速143', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t143', '工具类', '阅读');
INSERT INTO `resource` VALUES (148, '百度云不限速144', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t144', '工具类', '软件');
INSERT INTO `resource` VALUES (149, '百度云不限速145', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t145', '工具类', '软件');
INSERT INTO `resource` VALUES (150, '百度云不限速146', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t146', '视频', '视频');
INSERT INTO `resource` VALUES (151, '百度云不限速147', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t147', '工具类', '软件');
INSERT INTO `resource` VALUES (152, '百度云不限速148', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t148', '工具类', '软件');
INSERT INTO `resource` VALUES (153, '百度云不限速149', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t149', '视频', '视频');
INSERT INTO `resource` VALUES (154, '百度云不限速150', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t150', '工具类', '阅读');
INSERT INTO `resource` VALUES (155, '百度云不限速151', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t151', '学习资源', '硬件');
INSERT INTO `resource` VALUES (156, '百度云不限速152', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t152', '视频', '视频');
INSERT INTO `resource` VALUES (157, '百度云不限速153', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t153', '工具类', '软件');
INSERT INTO `resource` VALUES (158, '百度云不限速154', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t154', '工具类', '软件');
INSERT INTO `resource` VALUES (159, '百度云不限速155', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t155', '视频', '视频');
INSERT INTO `resource` VALUES (160, '百度云不限速156', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t156', '学习资源', '硬件');
INSERT INTO `resource` VALUES (161, '百度云不限速157', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t157', '工具类', '阅读');
INSERT INTO `resource` VALUES (162, '百度云不限速158', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t158', '视频', '视频');
INSERT INTO `resource` VALUES (163, '百度云不限速159', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t159', '工具类', '软件');
INSERT INTO `resource` VALUES (164, '百度云不限速160', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t160', '工具类', '软件');
INSERT INTO `resource` VALUES (165, '百度云不限速161', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t161', '视频', '视频');
INSERT INTO `resource` VALUES (166, '百度云不限速162', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t162', '工具类', '软件');
INSERT INTO `resource` VALUES (167, '百度云不限速163', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t163', '工具类', '软件');
INSERT INTO `resource` VALUES (168, '百度云不限速164', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t164', '工具类', '阅读');
INSERT INTO `resource` VALUES (169, '百度云不限速165', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t165', '工具类', '软件');
INSERT INTO `resource` VALUES (170, '百度云不限速166', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t166', '学习资源', '硬件');
INSERT INTO `resource` VALUES (171, '百度云不限速167', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t167', '视频', '视频');
INSERT INTO `resource` VALUES (172, '百度云不限速168', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t168', '工具类', '软件');
INSERT INTO `resource` VALUES (173, '百度云不限速169', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t169', '工具类', '软件');
INSERT INTO `resource` VALUES (174, '百度云不限速170', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t170', '视频', '视频');
INSERT INTO `resource` VALUES (175, '百度云不限速171', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t171', '工具类', '阅读');
INSERT INTO `resource` VALUES (176, '百度云不限速172', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t172', '工具类', '软件');
INSERT INTO `resource` VALUES (177, '百度云不限速173', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t173', '视频', '视频');
INSERT INTO `resource` VALUES (178, '百度云不限速174', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t174', '工具类', '软件');
INSERT INTO `resource` VALUES (179, '百度云不限速175', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t175', '工具类', '软件');
INSERT INTO `resource` VALUES (180, '百度云不限速176', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t176', '视频', '视频');
INSERT INTO `resource` VALUES (181, '百度云不限速177', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t177', '工具类', '软件');
INSERT INTO `resource` VALUES (182, '百度云不限速178', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t178', '工具类', '阅读');
INSERT INTO `resource` VALUES (183, '百度云不限速179', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t179', '视频', '视频');
INSERT INTO `resource` VALUES (184, '百度云不限速180', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t180', '工具类', '软件');
INSERT INTO `resource` VALUES (185, '百度云不限速181', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t181', '学习资源', '硬件');
INSERT INTO `resource` VALUES (186, '百度云不限速182', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t182', '视频', '视频');
INSERT INTO `resource` VALUES (187, '百度云不限速183', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t183', '工具类', '软件');
INSERT INTO `resource` VALUES (188, '百度云不限速184', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t184', '工具类', '软件');
INSERT INTO `resource` VALUES (189, '百度云不限速185', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t185', '工具类', '阅读');
INSERT INTO `resource` VALUES (190, '百度云不限速186', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t186', '学习资源', '硬件');
INSERT INTO `resource` VALUES (191, '百度云不限速187', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t187', '工具类', '软件');
INSERT INTO `resource` VALUES (192, '百度云不限速188', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t188', '视频', '视频');
INSERT INTO `resource` VALUES (193, '百度云不限速189', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t189', '工具类', '软件');
INSERT INTO `resource` VALUES (194, '百度云不限速190', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t190', '工具类', '软件');
INSERT INTO `resource` VALUES (195, '百度云不限速191', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t191', '视频', '视频');
INSERT INTO `resource` VALUES (196, '百度云不限速192', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t192', '工具类', '阅读');
INSERT INTO `resource` VALUES (197, '百度云不限速193', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t193', '工具类', '软件');
INSERT INTO `resource` VALUES (198, '百度云不限速194', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t194', '视频', '视频');
INSERT INTO `resource` VALUES (199, '百度云不限速195', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t195', '工具类', '软件');
INSERT INTO `resource` VALUES (200, '百度云不限速196', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t196', '学习资源', '硬件');
INSERT INTO `resource` VALUES (201, '百度云不限速197', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t197', '视频', '视频');
INSERT INTO `resource` VALUES (202, '百度云不限速198', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t198', '工具类', '软件');
INSERT INTO `resource` VALUES (203, '百度云不限速199', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t199', '工具类', '阅读');
INSERT INTO `resource` VALUES (204, '百度云不限速200', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t200', '视频', '视频');
INSERT INTO `resource` VALUES (205, '百度云不限速201', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t201', '学习资源', '硬件');
INSERT INTO `resource` VALUES (206, '百度云不限速202', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t202', '工具类', '软件');
INSERT INTO `resource` VALUES (207, '百度云不限速203', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t203', '视频', '视频');
INSERT INTO `resource` VALUES (208, '百度云不限速204', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t204', '工具类', '软件');
INSERT INTO `resource` VALUES (209, '百度云不限速205', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t205', '工具类', '软件');
INSERT INTO `resource` VALUES (210, '百度云不限速206', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t206', '工具类', '阅读');
INSERT INTO `resource` VALUES (211, '百度云不限速207', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t207', '工具类', '软件');
INSERT INTO `resource` VALUES (212, '百度云不限速208', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t208', '工具类', '软件');
INSERT INTO `resource` VALUES (213, '百度云不限速209', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t209', '视频', '视频');
INSERT INTO `resource` VALUES (214, '百度云不限速210', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t210', '工具类', '软件');
INSERT INTO `resource` VALUES (215, '百度云不限速211', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t211', '学习资源', '硬件');
INSERT INTO `resource` VALUES (216, '百度云不限速212', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t212', '视频', '视频');
INSERT INTO `resource` VALUES (217, '百度云不限速213', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t213', '工具类', '阅读');
INSERT INTO `resource` VALUES (218, '百度云不限速214', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t214', '工具类', '软件');
INSERT INTO `resource` VALUES (219, '百度云不限速215', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t215', '视频', '视频');
INSERT INTO `resource` VALUES (220, '百度云不限速216', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t216', '学习资源', '硬件');
INSERT INTO `resource` VALUES (221, '百度云不限速217', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t217', '工具类', '软件');
INSERT INTO `resource` VALUES (222, '百度云不限速218', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t218', '视频', '视频');
INSERT INTO `resource` VALUES (223, '百度云不限速219', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t219', '工具类', '软件');
INSERT INTO `resource` VALUES (224, '百度云不限速220', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t220', '工具类', '阅读');
INSERT INTO `resource` VALUES (225, '百度云不限速221', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t221', '视频', '视频');
INSERT INTO `resource` VALUES (226, '百度云不限速222', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t222', '工具类', '软件');
INSERT INTO `resource` VALUES (227, '百度云不限速223', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t223', '工具类', '软件');
INSERT INTO `resource` VALUES (228, '百度云不限速224', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t224', '视频', '视频');
INSERT INTO `resource` VALUES (229, '百度云不限速225', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t225', '工具类', '软件');
INSERT INTO `resource` VALUES (230, '百度云不限速226', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t226', '学习资源', '硬件');
INSERT INTO `resource` VALUES (231, '百度云不限速227', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t227', '工具类', '阅读');
INSERT INTO `resource` VALUES (232, '百度云不限速228', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t228', '工具类', '软件');
INSERT INTO `resource` VALUES (233, '百度云不限速229', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t229', '工具类', '软件');
INSERT INTO `resource` VALUES (234, '百度云不限速230', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t230', '视频', '视频');
INSERT INTO `resource` VALUES (235, '百度云不限速231', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t231', '学习资源', '硬件');
INSERT INTO `resource` VALUES (236, '百度云不限速232', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t232', '工具类', '软件');
INSERT INTO `resource` VALUES (237, '百度云不限速233', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t233', '视频', '视频');
INSERT INTO `resource` VALUES (238, '百度云不限速234', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t234', '工具类', '阅读');
INSERT INTO `resource` VALUES (239, '百度云不限速235', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t235', '工具类', '软件');
INSERT INTO `resource` VALUES (240, '百度云不限速236', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t236', '视频', '视频');
INSERT INTO `resource` VALUES (241, '百度云不限速237', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t237', '工具类', '软件');
INSERT INTO `resource` VALUES (242, '百度云不限速238', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t238', '工具类', '软件');
INSERT INTO `resource` VALUES (243, '百度云不限速239', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t239', '视频', '视频');
INSERT INTO `resource` VALUES (244, '百度云不限速240', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t240', '工具类', '软件');
INSERT INTO `resource` VALUES (245, '百度云不限速241', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t241', '工具类', '阅读');
INSERT INTO `resource` VALUES (246, '百度云不限速242', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t242', '视频', '视频');
INSERT INTO `resource` VALUES (247, '百度云不限速243', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t243', '工具类', '软件');
INSERT INTO `resource` VALUES (248, '百度云不限速244', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t244', '工具类', '软件');
INSERT INTO `resource` VALUES (249, '百度云不限速245', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t245', '视频', '视频');
INSERT INTO `resource` VALUES (250, '百度云不限速246', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t246', '学习资源', '硬件');
INSERT INTO `resource` VALUES (251, '百度云不限速247', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t247', '工具类', '软件');
INSERT INTO `resource` VALUES (252, '百度云不限速248', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t248', '工具类', '阅读');
INSERT INTO `resource` VALUES (253, '百度云不限速249', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t249', '工具类', '软件');
INSERT INTO `resource` VALUES (254, '百度云不限速250', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t250', '工具类', '软件');
INSERT INTO `resource` VALUES (255, '百度云不限速251', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t251', '视频', '视频');
INSERT INTO `resource` VALUES (256, '百度云不限速252', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t252', '工具类', '软件');
INSERT INTO `resource` VALUES (257, '百度云不限速253', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t253', '工具类', '软件');
INSERT INTO `resource` VALUES (258, '百度云不限速254', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t254', '视频', '视频');
INSERT INTO `resource` VALUES (259, '百度云不限速255', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t255', '工具类', '阅读');
INSERT INTO `resource` VALUES (260, '百度云不限速256', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t256', '学习资源', '硬件');
INSERT INTO `resource` VALUES (261, '百度云不限速257', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t257', '视频', '视频');
INSERT INTO `resource` VALUES (262, '百度云不限速258', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t258', '工具类', '软件');
INSERT INTO `resource` VALUES (263, '百度云不限速259', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t259', '工具类', '软件');
INSERT INTO `resource` VALUES (264, '百度云不限速260', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t260', '视频', '视频');
INSERT INTO `resource` VALUES (265, '百度云不限速261', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t261', '学习资源', '硬件');
INSERT INTO `resource` VALUES (266, '百度云不限速262', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t262', '工具类', '阅读');
INSERT INTO `resource` VALUES (267, '百度云不限速263', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t263', '视频', '视频');
INSERT INTO `resource` VALUES (268, '百度云不限速264', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t264', '工具类', '软件');
INSERT INTO `resource` VALUES (269, '百度云不限速265', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t265', '工具类', '软件');
INSERT INTO `resource` VALUES (270, '百度云不限速266', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t266', '视频', '视频');
INSERT INTO `resource` VALUES (271, '百度云不限速267', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t267', '工具类', '软件');
INSERT INTO `resource` VALUES (272, '百度云不限速268', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t268', '工具类', '软件');
INSERT INTO `resource` VALUES (273, '百度云不限速269', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t269', '工具类', '阅读');
INSERT INTO `resource` VALUES (274, '百度云不限速270', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t270', '工具类', '软件');
INSERT INTO `resource` VALUES (275, '百度云不限速271', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t271', '学习资源', '硬件');
INSERT INTO `resource` VALUES (276, '百度云不限速272', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t272', '视频', '视频');
INSERT INTO `resource` VALUES (277, '百度云不限速273', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t273', '工具类', '软件');
INSERT INTO `resource` VALUES (278, '百度云不限速274', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t274', '工具类', '软件');
INSERT INTO `resource` VALUES (279, '百度云不限速275', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t275', '视频', '视频');
INSERT INTO `resource` VALUES (280, '百度云不限速276', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t276', '工具类', '阅读');
INSERT INTO `resource` VALUES (281, '百度云不限速277', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t277', '工具类', '软件');
INSERT INTO `resource` VALUES (282, '百度云不限速278', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t278', '视频', '视频');
INSERT INTO `resource` VALUES (283, '百度云不限速279', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t279', '工具类', '软件');
INSERT INTO `resource` VALUES (284, '百度云不限速280', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t280', '工具类', '软件');
INSERT INTO `resource` VALUES (285, '百度云不限速281', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t281', '视频', '视频');
INSERT INTO `resource` VALUES (286, '百度云不限速282', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t282', '工具类', '软件');
INSERT INTO `resource` VALUES (287, '百度云不限速283', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t283', '工具类', '阅读');
INSERT INTO `resource` VALUES (288, '百度云不限速284', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t284', '视频', '视频');
INSERT INTO `resource` VALUES (289, '百度云不限速285', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t285', '工具类', '软件');
INSERT INTO `resource` VALUES (290, '百度云不限速286', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t286', '学习资源', '硬件');
INSERT INTO `resource` VALUES (291, '百度云不限速287', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t287', '视频', '视频');
INSERT INTO `resource` VALUES (292, '百度云不限速288', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t288', '工具类', '软件');
INSERT INTO `resource` VALUES (293, '百度云不限速289', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t289', '工具类', '软件');
INSERT INTO `resource` VALUES (294, '百度云不限速290', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t290', '工具类', '阅读');
INSERT INTO `resource` VALUES (295, '百度云不限速291', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t291', '学习资源', '硬件');
INSERT INTO `resource` VALUES (296, '百度云不限速292', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t292', '工具类', '软件');
INSERT INTO `resource` VALUES (297, '百度云不限速293', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t293', '视频', '视频');
INSERT INTO `resource` VALUES (298, '百度云不限速294', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t294', '工具类', '软件');
INSERT INTO `resource` VALUES (299, '百度云不限速295', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t295', '工具类', '软件');
INSERT INTO `resource` VALUES (300, '百度云不限速296', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t296', '视频', '视频');
INSERT INTO `resource` VALUES (301, '百度云不限速297', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t297', '工具类', '阅读');
INSERT INTO `resource` VALUES (302, '百度云不限速298', 'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg', '1t298', '工具类', '软件');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性键',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'site_url', 'http://localhost');
INSERT INTO `settings` VALUES (2, 'site_logo', '/static/assets/img/wuxielogo.jpg');
INSERT INTO `settings` VALUES (3, 'site_name', '北部湾大学物联网协会');
INSERT INTO `settings` VALUES (4, 'site_description', '这是北部湾大学物联网协会');
INSERT INTO `settings` VALUES (5, 'site_keywords', '物联网, 编程, 计算机, 科技, 智能');
INSERT INTO `settings` VALUES (6, 'site_footer', '<p>© 2019 物联网协会后台 本站由 hinsenoo 制作</p>');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Procedure structure for add_person
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_person`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(IN n int)
BEGIN 
DECLARE i INT DEFAULT 8;
WHILE (i <= n ) DO
INSERT into person (id,name,grade,direction,major,position_id,department_id) 
										VALUEs (i,'张三'+i,i+'级','前端'+i,'物联网'+i,i,i);
set i=i+1;
END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for person
-- ----------------------------
DROP PROCEDURE IF EXISTS `person`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `person`(IN n INT)
BEGIN
    DECLARE i INT DEFAULT 7;
    WHILE i < n DO
				INSERT into resource (name,link,link_pw,category,direction) values (concat('百度云不限速',i),'https://pan.baidu.com/s/1gWvF7UrOZLnCKlOLSVqKQg',concat('1t',i),'工具类','软件');
        set i = i+1;
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
