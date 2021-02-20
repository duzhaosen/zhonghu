/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : zhonghujiaotong

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/02/2021 17:31:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zh_attach
-- ----------------------------
DROP TABLE IF EXISTS `zh_attach`;
CREATE TABLE `zh_attach`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联号',
  `attach_url` char(49) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件地址',
  `folder` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件夹名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件分类名称',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_attach
-- ----------------------------
INSERT INTO `zh_attach` VALUES (1, '2021020100001', '20210201/34adced0f5789a43556d585879b5d55d.jpg', 'default1', '参统资料', '杜兆森', 1612167919, 1, '', 0);
INSERT INTO `zh_attach` VALUES (2, '2021020100001', '20210201/40a19e31e7531b3cee07f441479bb494.jpg', 'default1', '参统资料', '杜兆森', 1612167919, 1, '', 0);
INSERT INTO `zh_attach` VALUES (3, '2021020100001', '20210201/c762119edd0b226b6e84c594d9ef0302.jpg', 'default1', '参统资料', '杜兆森', 1612167919, 1, '', 0);
INSERT INTO `zh_attach` VALUES (4, '2021020100001', '20210201/fe6a5f85918c32036d9c0a6e2aadf7cc.jpg', 'default2', '牛气', '杜兆森', 1612167936, 1, '', 0);
INSERT INTO `zh_attach` VALUES (5, '2021020100001', '20210201/ce64330e224bda9bf6daea9292e74223.jpg', 'default2', '牛气', '杜兆森', 1612167936, 1, '', 0);
INSERT INTO `zh_attach` VALUES (6, '2021020100001', '20210201/1dec47494bdb861de2eea2bce6f66b19.jpg', 'default2', '牛气', '杜兆森', 1612167936, 1, '', 0);
INSERT INTO `zh_attach` VALUES (7, '2021020100002', '20210201/a0572b43d45973f67ee1a312065916b5.jpg', 'default1', '参统资料', '杜兆森', 1612169689, 1, '', 0);
INSERT INTO `zh_attach` VALUES (8, '2021020100002', '20210201/5b58cdd62a627ae0140fa469c9bad369.jpg', 'default1', '参统资料', '杜兆森', 1612169689, 1, '', 0);
INSERT INTO `zh_attach` VALUES (9, '2021020100002', '20210201/03814496e41b4712fee32e49270155a7.jpg', 'default1', '参统资料', '杜兆森', 1612169689, 1, '', 0);
INSERT INTO `zh_attach` VALUES (10, 'P2021020200001', '20210202/a0572b43d45973f67ee1a312065916b5.jpg', 'default1', '参统资料', '杜兆森', 1612231221, 1, '', 0);
INSERT INTO `zh_attach` VALUES (11, 'P2021020200001', '20210202/5b58cdd62a627ae0140fa469c9bad369.jpg', 'default1', '参统资料', '杜兆森', 1612231221, 1, '', 0);
INSERT INTO `zh_attach` VALUES (12, 'P2021020200001', '20210202/03814496e41b4712fee32e49270155a7.jpg', 'default1', '参统资料', '杜兆森', 1612231221, 1, '', 0);
INSERT INTO `zh_attach` VALUES (13, 'P2021020200001', '20210202/a0572b43d45973f67ee1a312065916b5.jpg', 'default1', '参统资料', '杜兆森', 1612255594, 1, '', 0);
INSERT INTO `zh_attach` VALUES (14, 'P2021020200001', '20210202/5b58cdd62a627ae0140fa469c9bad369.jpg', 'default1', '参统资料', '杜兆森', 1612255594, 1, '', 0);
INSERT INTO `zh_attach` VALUES (15, 'P2021020200001', '20210202/03814496e41b4712fee32e49270155a7.jpg', 'default1', '参统资料', '杜兆森', 1612255594, 1, '', 0);
INSERT INTO `zh_attach` VALUES (16, 'P2021020300001', '20210203/a0572b43d45973f67ee1a312065916b5.jpg', 'default1', '参统资料', '杜兆森', 1612317467, 2, '杜兆森', 1612504189);
INSERT INTO `zh_attach` VALUES (17, 'P2021020300001', '20210203/5b58cdd62a627ae0140fa469c9bad369.jpg', 'default1', '参统资料', '杜兆森', 1612317467, 2, '杜兆森', 1612504113);
INSERT INTO `zh_attach` VALUES (18, 'P2021020300001', '20210203/03814496e41b4712fee32e49270155a7.jpg', 'default1', '参统资料', '杜兆森', 1612317467, 2, '杜兆森', 1612504104);
INSERT INTO `zh_attach` VALUES (19, 'BA2021020001', '20210204/9a32796e9751510aeb7b3332f2e3acbd.jpg', 'default1', '参统资料', '杜兆森', 1612423819, 2, '杜兆森', 1612485890);
INSERT INTO `zh_attach` VALUES (20, 'BA2021020001', '20210204/45ce1b5454cecddd52a3b1941598ddc1.jpg', 'default1', '参统资料', '杜兆森', 1612423864, 2, '杜兆森', 1612485910);
INSERT INTO `zh_attach` VALUES (21, 'BA2021020001', '20210204/128d56b0dffcd60e8d150a9d8a64e1ab.jpg', 'default1', '参统资料', '杜兆森', 1612424007, 2, '杜兆森', 1612485864);
INSERT INTO `zh_attach` VALUES (22, 'BA2021020001', '20210204/02e4bb8d7b5074ac32e7cf09371969f9.jpg', 'default1', '参统资料', '杜兆森', 1612427822, 2, '杜兆森', 1612486298);
INSERT INTO `zh_attach` VALUES (23, 'BA2021020001', '20210204/7f265bf359be471c0341dc8d141b2fc3.jpg', 'default1', '参统资料', '杜兆森', 1612427910, 2, '杜兆森', 1612486366);
INSERT INTO `zh_attach` VALUES (24, 'BA2021020001', '20210204/6faac67c8ed266dc70e745f7ded24ae8.jpg', 'default1', '参统资料', '杜兆森', 1612428240, 2, '杜兆森', 1612486491);
INSERT INTO `zh_attach` VALUES (25, 'BA2021020001', '20210204/7d15a924832b6440d1f8110324de24c4.jpg', 'default1', '参统资料', '杜兆森', 1612428357, 2, '杜兆森', 1612486604);
INSERT INTO `zh_attach` VALUES (26, 'BA2021020001', '20210204/6ac8a5643fc2191d30397991de9c2f80.jpg', 'default1', '参统资料', '杜兆森', 1612428404, 2, '杜兆森', 1612486247);
INSERT INTO `zh_attach` VALUES (27, 'BA2021020001', '20210204/08b63947ab5f7b52cc3b99cf564d66e4.jpg', 'default1', '参统资料', '杜兆森', 1612428493, 2, '杜兆森', 1612486211);
INSERT INTO `zh_attach` VALUES (28, 'BA2021020001', '20210204/168c7d92808cbc01ff7a1be93ad94bbe.jpg', 'default1', '参统资料', '杜兆森', 1612428721, 2, '杜兆森', 1612486647);
INSERT INTO `zh_attach` VALUES (29, 'BA2021020001', '20210204/64ef73cec359bc9cdf7043e684117393.jpg', 'default1', '参统资料', '杜兆森', 1612428749, 2, '杜兆森', 1612487932);
INSERT INTO `zh_attach` VALUES (30, 'BA2021020001', '20210204/e31edaf884e8f5165a06b695d7268052.jpg', 'default1', '参统资料', '杜兆森', 1612428757, 1, '', 0);
INSERT INTO `zh_attach` VALUES (31, 'BA2021020001', '20210204/8439712a5429fd5330242a0a8aa5fe08.jpg', 'default1', '参统资料', '杜兆森', 1612428762, 1, '', 0);
INSERT INTO `zh_attach` VALUES (32, 'BA2021020001', '20210204/da68991f9417f193d643c4784435752f.jpg', 'default1', '参统资料', '杜兆森', 1612428769, 2, '杜兆森', 1612486188);
INSERT INTO `zh_attach` VALUES (33, 'BA2021020001', '20210204/4c75e9c0fe37ed499ea9740c4e90db44.jpg', 'default1', '参统资料', '杜兆森', 1612429054, 1, '', 0);
INSERT INTO `zh_attach` VALUES (34, 'BA2021020001', '20210204/a62ece4c9b9b8e0c08c524e5d0c6dcb5.jpg', 'default1', '参统资料', '杜兆森', 1612429066, 1, '', 0);
INSERT INTO `zh_attach` VALUES (35, 'BA2021020001', '20210204/cd583542896d671cca2bc75a9f5fd973.jpg', 'default1', '参统资料', '杜兆森', 1612429100, 2, '杜兆森', 1613615260);
INSERT INTO `zh_attach` VALUES (36, 'BA2021020001', '20210204/8ff6b0d9bc4173ef7a88dbc1edacafbd.jpg', 'default1', '参统资料', '杜兆森', 1612429163, 2, '杜兆森', 1613615269);
INSERT INTO `zh_attach` VALUES (37, 'BA2021020001', '20210204/36436173e8b2bb4728f86aeffe8b8cc1.jpg', 'default1', '参统资料', '杜兆森', 1612429477, 2, '杜兆森', 1612485844);
INSERT INTO `zh_attach` VALUES (38, 'BA2021020001', '20210204/5fa9f1eda2a72ebf3ba2fc6b4a1dd99e.jpg', 'default1', '参统资料', '杜兆森', 1612429926, 2, '杜兆森', 1612486784);
INSERT INTO `zh_attach` VALUES (39, 'BA2021020001', '20210204/ae4456e64454a0459833537891649c26.png', 'default1', '参统资料', '杜兆森', 1612429938, 2, '杜兆森', 1612485829);
INSERT INTO `zh_attach` VALUES (40, 'BA2021020001', '20210204/040923c85f0c3c453d69eddec38b42e9.png', 'default2', '牛年', '杜兆森', 1612429954, 1, '', 0);
INSERT INTO `zh_attach` VALUES (41, 'BA2021020001', '20210204/81937d942d21b6af728209668cda4cf0.jpg', 'default2', '牛年', '杜兆森', 1612432154, 2, '杜兆森', 1612485322);
INSERT INTO `zh_attach` VALUES (42, 'BA2021020001', '20210205/7eff250dd6e886c8ae855d78ea44a9d8.png', 'default2', '牛年', '杜兆森', 1612485305, 2, '杜兆森', 1612485766);
INSERT INTO `zh_attach` VALUES (43, 'BA2021020001', '20210205/a63f7e77b6be18675ce0e2318a978a37.png', 'default2', '牛年', '杜兆森', 1612485328, 2, '杜兆森', 1612485442);
INSERT INTO `zh_attach` VALUES (44, 'BA2021020001', '20210205/e1f3928f00f4729878d4c7482aaf2394.jpg', 'default1', '参统资料', '杜兆森', 1612486791, 2, '杜兆森', 1612486806);
INSERT INTO `zh_attach` VALUES (45, 'BA2021020001', '20210205/c9f05f3146252560f7e4cf667dbcc5d0.jpg', 'default1', '参统资料', '杜兆森', 1612486801, 2, '杜兆森', 1612487832);
INSERT INTO `zh_attach` VALUES (46, 'BA2021020001', '20210205/38202ee20add3f32a78d86e2df83321a.jpg', 'default1', '参统资料', '杜兆森', 1612486812, 2, '杜兆森', 1612487079);
INSERT INTO `zh_attach` VALUES (47, 'BA2021020001', '20210205/c8bada5b6ba7c2f280fbfb2f21cbf8c8.jpg', 'default1', '参统资料', '杜兆森', 1612487082, 2, '杜兆森', 1612487183);
INSERT INTO `zh_attach` VALUES (48, 'BA2021020001', '20210205/f20694deecf84f73ade786e86f831bb5.jpg', 'default1', '参统资料', '杜兆森', 1612487189, 2, '杜兆森', 1612487332);
INSERT INTO `zh_attach` VALUES (49, 'BA2021020001', '20210205/e8ba797712e4a70b4e87b9c5d064c0fa.jpg', 'default1', '参统资料', '杜兆森', 1612487347, 2, '杜兆森', 1612487415);
INSERT INTO `zh_attach` VALUES (50, 'BA2021020001', '20210205/64c9b68428f57f9f9cb30620a439b966.jpg', 'default1', '参统资料', '杜兆森', 1612487427, 2, '杜兆森', 1612487479);
INSERT INTO `zh_attach` VALUES (51, 'BA2021020001', '20210205/5bc73046a934f4d1a7855e831dfab09b.jpg', 'default1', '参统资料', '杜兆森', 1612487483, 2, '杜兆森', 1612487769);
INSERT INTO `zh_attach` VALUES (52, '2021020500001', '20210205/99fce91671c51e2128303c38a56f848d.jpg', 'default1', '参统资料', '杜兆森', 1612487540, 2, '杜兆森', 1612487563);
INSERT INTO `zh_attach` VALUES (53, '2021020500001', '20210205/49aedfc8d26196d8a1fa899a6f777d15.jpg', 'default1', '参统资料', '杜兆森', 1612487543, 2, '杜兆森', 1612488553);
INSERT INTO `zh_attach` VALUES (54, '2021020500001', '20210205/1adffda21a9151291eb07e0f0c9f4f2f.jpg', 'default1', '参统资料', '杜兆森', 1612487550, 2, '杜兆森', 1612509095);
INSERT INTO `zh_attach` VALUES (55, '2021020500001', '20210205/bd6db3270b81a4e167b4f01d339ef434.png', 'default1', '参统资料', '杜兆森', 1612487566, 2, '杜兆森', 1612495055);
INSERT INTO `zh_attach` VALUES (56, 'BA2021020001', '20210205/e774b929fc5b43aa31e49f08b47d2488.jpg', 'default1', '参统资料', '杜兆森', 1612487893, 2, '杜兆森', 1613615292);
INSERT INTO `zh_attach` VALUES (57, 'BA2021020001', '20210205/770efdc5356266684d402f0833dee4d2.jpg', 'default1', '参统资料', '杜兆森', 1612487967, 2, '杜兆森', 1612488032);
INSERT INTO `zh_attach` VALUES (58, 'BA2021020001', '20210205/928d325da2e52cee3a0b2fc88cfe4645.jpg', 'default1', '参统资料', '杜兆森', 1612488037, 2, '杜兆森', 1613615290);
INSERT INTO `zh_attach` VALUES (59, 'BA2021020001', '20210205/ff01ac1158cf7618027889cec5a6aa97.png', 'default1', '参统资料', '杜兆森', 1612488103, 2, '杜兆森', 1613615288);
INSERT INTO `zh_attach` VALUES (60, 'BA2021020001', '20210205/ed4216cd819306e0e44768d031df1d7d.png', 'default1', '参统资料', '杜兆森', 1612488151, 2, '杜兆森', 1612488226);
INSERT INTO `zh_attach` VALUES (61, 'BA2021020001', '20210205/78a9a7915fe459e0971e0e25e0076ea6.png', 'default1', '参统资料', '杜兆森', 1612488228, 2, '杜兆森', 1613615286);
INSERT INTO `zh_attach` VALUES (62, '2021020500001', '20210205/065d880817e008a677efc3b128090ca0.jpg', 'default1', '参统资料', '杜兆森', 1612488556, 2, '杜兆森', 1612488613);
INSERT INTO `zh_attach` VALUES (63, '2021020500001', '20210205/8e5939a06257682add221c3a677c5b2c.jpg', 'default1', '参统资料', '杜兆森', 1612488621, 2, '杜兆森', 1612488777);
INSERT INTO `zh_attach` VALUES (64, '2021020500001', '20210205/ee6b1d3fade18a19a6cb917df287b092.jpg', 'default1', '参统资料', '杜兆森', 1612488780, 2, '杜兆森', 1612488790);
INSERT INTO `zh_attach` VALUES (65, '2021020500001', '20210205/e48b4956c7d0cd9039a975778d308da1.jpg', 'default1', '参统资料', '杜兆森', 1612488792, 2, '杜兆森', 1612489362);
INSERT INTO `zh_attach` VALUES (66, '2021020500001', '20210205/0acc2f52ae304fff161b03c6d7ef4274.jpg', 'default2', '测试', '杜兆森', 1612488984, 2, '杜兆森', 1612488995);
INSERT INTO `zh_attach` VALUES (67, '2021020500001', '20210205/e65c5114d385e05b77c489a170cc6d34.jpg', 'default2', '测试', '杜兆森', 1612488991, 2, '杜兆森', 1612509097);
INSERT INTO `zh_attach` VALUES (68, '2021020500001', '20210205/4296e39a84f1da6a1466a54d179c9a97.png', 'default2', '测试', '杜兆森', 1612489000, 2, '杜兆森', 1612494854);
INSERT INTO `zh_attach` VALUES (69, '2021020500001', '20210205/ce39df8a86807f3f99950dd74fa2a04a.png', 'default1', '参统资料', '杜兆森', 1612495603, 2, '杜兆森', 1612495607);
INSERT INTO `zh_attach` VALUES (70, '2021020500001', '20210205/1a8ca4b92f3c938a4d8a8b6ca25e43d1.jpg', 'default1', '参统资料', '杜兆森', 1612495611, 2, '杜兆森', 1612495737);
INSERT INTO `zh_attach` VALUES (71, '2021020500001', '20210205/2ea8a3340734732f90a88d451905fade.png', 'default1', '参统资料', '杜兆森', 1612495740, 2, '杜兆森', 1612496224);
INSERT INTO `zh_attach` VALUES (72, '2021020500001', '20210205/e9ce95d470da20a3d66856c608f9dc22.png', 'default1', '参统资料', '杜兆森', 1612496227, 2, '杜兆森', 1612504419);
INSERT INTO `zh_attach` VALUES (73, '2021020100002', '20210205/a4739075dc5021c21134ed9e5e56904b.png', 'default1', '参统资料', '杜兆森', 1612504235, 1, '', 0);
INSERT INTO `zh_attach` VALUES (74, '2021020100002', '20210205/3af1d1c7940487136041e0c41cc3899d.jpg', 'default1', '参统资料', '杜兆森', 1612504238, 1, '', 0);
INSERT INTO `zh_attach` VALUES (75, '2021020100002', '20210205/3fd2a8d627a3739d6095543aed35af43.png', 'default2', '测试', '杜兆森', 1612504254, 1, '', 0);
INSERT INTO `zh_attach` VALUES (76, '2021020100002', '20210205/0a21b798d47cc22691fdfc2d843dea8f.png', 'default2', '测试', '杜兆森', 1612504254, 1, '', 0);
INSERT INTO `zh_attach` VALUES (77, '2021020100002', '20210205/eac3f94cd7e8a1d7fbc29862b9eee956.png', 'default2', '测试', '杜兆森', 1612504254, 1, '', 0);
INSERT INTO `zh_attach` VALUES (78, '2021020100002', '20210205/38c458285e30a8ea80bac74f31ffee39.png', 'default2', '测试', '杜兆森', 1612504254, 2, '杜兆森', 1612504259);
INSERT INTO `zh_attach` VALUES (79, '2021020100002', '20210205/6426f9290083d1392d49e81ce8cac4e2.jpg', 'default2', '测试', '杜兆森', 1612504263, 1, '', 0);
INSERT INTO `zh_attach` VALUES (80, 'P2021020300001', '20210205/efc8d290324a93007a9d7f31db0e3b60.png', 'default1', '参统资料', '杜兆森', 1612504350, 1, '', 0);
INSERT INTO `zh_attach` VALUES (85, 'P2021020500002', '20210205/b17bd5b475be99d83cac2f3d491dc949.png', 'default2', '测试', '杜兆森', 1612506246, 1, '', 0);
INSERT INTO `zh_attach` VALUES (86, 'P2021020500002', '20210205/bc61e1bd2dd061ddc3e431349cfa9c3b.png', 'default1', '参统资料', '杜兆森', 1612506249, 1, '', 0);
INSERT INTO `zh_attach` VALUES (87, 'P2021020500002', '20210205/05145381b5261f009e2d4fdfd8db5e26.png', 'default1', '参统资料', '杜兆森', 1612506963, 1, '', 0);
INSERT INTO `zh_attach` VALUES (88, 'P2021020500002', '20210205/33d0e215f95d74665b1d929ae4b1685d.png', 'default2', '测试', '杜兆森', 1612506966, 1, '', 0);
INSERT INTO `zh_attach` VALUES (89, 'P2021020500002', '20210205/ae2de555ac376dede3ae48b4656423d1.png', 'default1', '参统资料', '杜兆森', 1612507048, 1, '', 0);
INSERT INTO `zh_attach` VALUES (90, 'P2021020500002', '20210205/69bde7151aaf776fd282822b2cb2f875.png', 'default1', '参统资料', '杜兆森', 1612507272, 1, '', 0);
INSERT INTO `zh_attach` VALUES (93, '2021020500001', '20210205/9579b5c41b4ffdacb1203c6fd37d7d87.jpg', 'default1', '参统资料', '杜兆森', 1612509105, 1, '', 0);
INSERT INTO `zh_attach` VALUES (94, '2021020500001', '20210205/352eb5cf1ee6bb9f628c2b39f10787f5.jpg', 'default1', '参统资料', '杜兆森', 1612509105, 1, '', 0);
INSERT INTO `zh_attach` VALUES (95, '2021020500001', '20210205/ce541cc4be08bce9bbb546bd3f2f1009.png', 'default2', '测试', '杜兆森', 1612509111, 1, '', 0);
INSERT INTO `zh_attach` VALUES (96, '2021020500001', '20210205/61ae6cb3bc47b178e00cf7a63973b716.png', 'default2', '测试', '杜兆森', 1612509112, 1, '', 0);
INSERT INTO `zh_attach` VALUES (101, 'P2021020500001', '20210205/9579b5c41b4ffdacb1203c6fd37dcopy.jpg', 'default1', '参统资料', '杜兆森', 1612509931, 1, '', 0);
INSERT INTO `zh_attach` VALUES (102, 'P2021020500001', '20210205/352eb5cf1ee6bb9f628c2b39f107copy.jpg', 'default1', '参统资料', '杜兆森', 1612509931, 1, '', 0);
INSERT INTO `zh_attach` VALUES (103, 'P2021020500001', '20210205/ce541cc4be08bce9bbb546bd3f2fcopy.png', 'default2', '测试', '杜兆森', 1612509931, 1, '', 0);
INSERT INTO `zh_attach` VALUES (104, 'P2021020500001', '20210205/61ae6cb3bc47b178e00cf7a63973copy.png', 'default2', '测试', '杜兆森', 1612509931, 1, '', 0);
INSERT INTO `zh_attach` VALUES (105, 'BA2021020001', '20210218\\e9048f8260d53a5a8a8a7c26e338a7e6.png', 'default3', '11', '杜兆森', 1613616023, 1, '', 0);

-- ----------------------------
-- Table structure for zh_car
-- ----------------------------
DROP TABLE IF EXISTS `zh_car`;
CREATE TABLE `zh_car`  (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联号',
  `plate` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `plate_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车牌类型：1大型汽车2小型汽车3挂车4大型新能源5小型新能源',
  `license_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '证件号',
  `license_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '证件类型：1身份证2统一社会信用代码',
  `license_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `relationship` tinyint(4) NOT NULL DEFAULT 1 COMMENT '与被统筹人关系：1所有2使用3管理',
  `displacement` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '排量',
  `color` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车牌底色：1蓝2黑3白4黄5白蓝6黄绿双拼7渐变绿',
  `power` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '功率',
  `car_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车主姓名',
  `frame` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架号',
  `engine` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发动机号',
  `label_signal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '厂牌型号',
  `registered_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册日期',
  `age` tinyint(4) NOT NULL DEFAULT 0 COMMENT '车龄',
  `transfer` tinyint(4) NOT NULL DEFAULT 1 COMMENT '过户：1是2否',
  `new_price` bigint(10) NOT NULL DEFAULT 0 COMMENT '新车购置价',
  `actual_price` bigint(10) NOT NULL DEFAULT 0 COMMENT '实际购置价',
  `use_nature` tinyint(4) NOT NULL DEFAULT 1 COMMENT '使用性质：1非营运2货运3特一4特二5特三6特四7租赁8公路客运9城市公交',
  `species` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车辆种类：1货车2半挂牵引车3自卸货车4挂车5特一6冷藏车7清洁车8清障车9起重车10混凝土搅拌车11自卸式垃圾车12混凝土泵车13水泥粉粒车14客车',
  `car_type` tinyint(4) NOT NULL COMMENT '车辆类型：1十吨以上2两吨以下3二-五吨4五-十吨5六-九座6十-十九座7二十-三十五座8三十五座以上',
  `approved_user` tinyint(4) NOT NULL DEFAULT 0 COMMENT '核定载客人',
  `approved_load` int(4) NOT NULL DEFAULT 0 COMMENT '核定载质量/准牵引总质量',
  `curb_quality` int(4) NOT NULL DEFAULT 0 COMMENT '整备质量',
  `vehicle_inspection` tinyint(4) NOT NULL DEFAULT 1 COMMENT '验车情况：1是2否',
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原因',
  `participate_city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统省份',
  `last_year_danger` tinyint(4) NOT NULL DEFAULT 1 COMMENT '往年出险情况:1：0,2:1,3:2,4:3次及以上，5：无状态及过户',
  `last_year_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '上年状态',
  `year_indemnity` tinyint(4) NOT NULL DEFAULT 0 COMMENT '本年赔款（次）',
  `continuous_non_risk` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '连续未出险',
  `continuous_year` tinyint(4) NOT NULL DEFAULT 0 COMMENT '连续年数',
  `danger_total` tinyint(4) NOT NULL DEFAULT 0 COMMENT '连续期间出险次数',
  `discount` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '主体折扣',
  `coefficient` float(10, 1) NOT NULL DEFAULT 0.0 COMMENT '无赔优系数',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `rating` float(10, 1) NOT NULL DEFAULT 0.0 COMMENT '评分、评级',
  `issuance_time` int(11) NOT NULL DEFAULT 0 COMMENT '发证日期',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`car_id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_car
-- ----------------------------
INSERT INTO `zh_car` VALUES (1, 'BJ20210200001', '暂未上牌', 2, '', 1, '', 1, '', 1, '', '杜', 'jdhh435ndfjge', 'dsfsdfdsd', 'sdfdfjf', 1612108800, 2, 1, 1530000, 1400000, 1, 1, 1, 3, 23, 33, 1, '手动方式分地方', '130000', 1, '2', 3, '23', 3, 2, 23.00, 0.3, '6074651676', 2.0, 0, '', '', 0, '', 0);
INSERT INTO `zh_car` VALUES (2, '2021020100001', '冀A12345', 1, '130121199501123411', 1, '', 1, '2', 1, '3', '杜', 'sdffdsa', 'kfmsfa', '232dsfdsf', 1612108800, 2, 1, 1530000, 1400000, 1, 1, 1, 3, 33, 23, 1, '2', '130000', 1, '', 0, '', 0, 0, 0.00, 0.0, '', 0.0, 1612108800, '河北省石家庄市', '', 0, '', 0);
INSERT INTO `zh_car` VALUES (3, '2021020100002', '冀A0001', 1, '130121199501123411', 1, '', 1, '23', 1, '2', '杜', 'jdhh435ndfjge', 'dsfsdfdsd', 'sdfdfjf', 1609430400, 2, 2, 1530000, 1400000, 1, 1, 1, 4, 23, 33, 1, 'K201911251125', '130000', 1, '', 0, '', 0, 0, 0.00, 0.0, '', 0.0, 1612108800, '河北省石家庄市', '杜兆森', 1612510856, '', 0);
INSERT INTO `zh_car` VALUES (11, 'P2021020300001', '暂未上牌', 1, '130121199501123411', 1, '', 1, '23', 1, '2', '杜', 'jdhh435ndfjge', 'dsfsdfdsd', 'sdfdfjf', 1609430400, 2, 1, 1530000, 1400000, 1, 1, 1, 4, 23, 33, 1, 'K201911251125', '130000', 1, '', 0, '', 0, 0, 0.00, 0.0, '', 0.0, 1609430400, '河北省石家庄市', '', 0, '', 0);
INSERT INTO `zh_car` VALUES (12, 'BJ20210200002', '暂未上牌', 1, '', 1, '', 1, '', 1, '', 'd', 'fsdf1f3', 'qf3', 'dsfq', 1612368000, 2, 1, 1530000, 1400000, 1, 1, 1, 5, 33, 34, 1, 'ff', '130000', 1, '3', 4, '1', 1, 3, 34.00, 0.3, '43', 4.0, 0, '', '', 0, '', 0);
INSERT INTO `zh_car` VALUES (16, '2021020500001', '冀A0000', 1, '130121199501123411', 1, '', 1, '22', 1, '12', '牛', 'jdhh435nd3', 'sdfsj4dfs', 'sdfs', 1612454400, 3, 1, 1530000, 1400000, 1, 1, 1, 5, 11, 2, 1, '12sffdsf', '130000', 1, '', 0, '', 0, 0, 0.00, 0.0, '', 0.0, 1612454400, '河北省石家庄市', '杜兆森', 1612509114, '杜兆森', 1612489308);
INSERT INTO `zh_car` VALUES (20, 'P2021020500001', '冀A0000', 1, '130121199501123411', 1, '', 1, '22', 1, '12', '牛', 'jdhh435nd3', 'sdfsj4dfs', 'sdfs', 1612454400, 3, 1, 1530000, 1400000, 1, 1, 1, 5, 11, 2, 1, '12sffdsf', '130000', 1, '', 0, '', 0, 0, 0.00, 0.0, '', 0.0, 1612454400, '河北省石家庄市', '', 0, '', 0);

-- ----------------------------
-- Table structure for zh_car_damage
-- ----------------------------
DROP TABLE IF EXISTS `zh_car_damage`;
CREATE TABLE `zh_car_damage`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联单号ID',
  `this_car` tinyint(11) NOT NULL DEFAULT 1 COMMENT '是否本车：1是2否',
  `damage_plate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `damage_brand` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车辆品牌',
  `damage_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车型型号',
  `damage_year` int(11) NOT NULL DEFAULT 0 COMMENT '车辆年款',
  `damage_frame` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架号',
  `damage_engine` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发动机号',
  `damage_driver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '驾驶员',
  `damage_sex` tinyint(4) NOT NULL DEFAULT -1 COMMENT '性别',
  `damage_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `damage_repairer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '维修厂',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `accessories_money` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配件定损-金额小计',
  `accessories_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配件定损-核定金额小计',
  `accessories_total` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配件定损-合计',
  `accessories_residual` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配件定损-残值',
  `accessories_all` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配件定损-总计',
  `work_money` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '工时-金额小计',
  `work_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '工时-核定金额小计',
  `work_rescue` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '工时-施救费',
  `work_all` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '工时-总计',
  `work_total` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '工时-合计',
  `finance_money` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-金额小计',
  `finance_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-核定金额',
  `finance_total` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-合计',
  `finance_residual` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-残值',
  `finance_all` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-总计',
  `finance_litigation` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务诉讼费',
  `finance_identification` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-鉴定费',
  `finance_appraisal` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-公估费',
  `finance_stay` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-住宿费',
  `finance_road` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-路桥费',
  `finance_fuel` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-燃油费',
  `finance_other` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务-其他',
  `finance_summary` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '财务汇总',
  `finance_remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '财务备注说明',
  `damage_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态:1正常2删除',
  `op_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车损' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_car_damage
-- ----------------------------
INSERT INTO `zh_car_damage` VALUES (7, 'BA2021020001', 1, '冀A0001', '测试', 'sdfdfjf', 2021, 'jdhh435ndfjge', 'dsfsdfdsd', '杜', 1, '19903211962', '哈哈', '杜兆森', 1613713301, 500.00, 155.00, 155.00, 0.00, 155.00, 200.00, 200.00, 10.00, 200.00, 210.00, 210.00, 210.00, 200.00, 10.00, 190.00, 10.00, 20.00, 11.00, 22.00, 12.00, 21.00, 11.00, 55.00, '更好地发挥的', 1, '杜兆森', 1613806620);
INSERT INTO `zh_car_damage` VALUES (8, 'BA2021020001', 2, '冀A0002', '手动阀', '是的', 2022, '2355', 'sdfsad', '擦', 1, '19903211962', '东风风光', '杜兆森', 1613714100, 200.00, 46.00, 46.00, 20.00, 26.00, 200.00, 200.00, 1.00, 200.00, 201.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 1, '杜兆森', 1613806068);

-- ----------------------------
-- Table structure for zh_carcode
-- ----------------------------
DROP TABLE IF EXISTS `zh_carcode`;
CREATE TABLE `zh_carcode`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验车码',
  `time` int(11) NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '验证码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_carcode
-- ----------------------------
INSERT INTO `zh_carcode` VALUES (1, '3WPLTU', 1611072000);
INSERT INTO `zh_carcode` VALUES (2, 'D9RAGY', 1611158400);
INSERT INTO `zh_carcode` VALUES (3, 'KPAN16', 1611244800);
INSERT INTO `zh_carcode` VALUES (4, 'P5BZFZ', 1611936000);

-- ----------------------------
-- Table structure for zh_company
-- ----------------------------
DROP TABLE IF EXISTS `zh_company`;
CREATE TABLE `zh_company`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司名称',
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司地址',
  `customer_phone` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '客服电话',
  `office` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮局电话',
  `chapter` char(49) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '章',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_company
-- ----------------------------
INSERT INTO `zh_company` VALUES (1, '中互交通运输有限公司', '河北省石家庄市太行南大街197号A座10层', '400-681-8811', '050000', '20210207/da0e4ef90ee62586d778601e382baff3.png', 1, 1612595406, '杜兆森', 1612662872, '杜兆森');
INSERT INTO `zh_company` VALUES (2, '中互', '石家庄', '400-681-8811', '050000', '20210207/701cc2dd6212dde4bd2ca2880b1a87d6.png', 1, 1612662904, '杜兆森', 0, '');

-- ----------------------------
-- Table structure for zh_compensation
-- ----------------------------
DROP TABLE IF EXISTS `zh_compensation`;
CREATE TABLE `zh_compensation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payee` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收款人',
  `related_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联ID',
  `license_type` tinyint(4) NOT NULL COMMENT '证件类型',
  `license_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '证件号',
  `compensation_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `compensation_relationship` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '与被统筹人关系',
  `compensation_bank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '开户行',
  `compensation_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '帐号',
  `compensation_money` float NOT NULL COMMENT '金额',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `other_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '是否其他类型：1是2否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '补偿款信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_compensation
-- ----------------------------
INSERT INTO `zh_compensation` VALUES (2, '测试', 'BA2021020001', 1, '1', '2', '3', '4', '5', 6, '杜兆森', 1613796200, 2);
INSERT INTO `zh_compensation` VALUES (7, '测试是', 'BA2021020001', -1, '9', '8', '7', '6', '5', 4, '杜兆森', 1613796414, 1);

-- ----------------------------
-- Table structure for zh_coordinator
-- ----------------------------
DROP TABLE IF EXISTS `zh_coordinator`;
CREATE TABLE `zh_coordinator`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联单号',
  `coordinated_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人姓名',
  `coordinated_license_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '被统筹人证件类型：1身份证2社会统一信用代码',
  `coordinated_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人身份证号',
  `coordinated_phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人手机号',
  `coordinated_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人邮箱',
  `coordinated_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人地址',
  `coordinated_same` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1同参统人2同车主',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '被统筹人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_coordinator
-- ----------------------------
INSERT INTO `zh_coordinator` VALUES (1, '2021020100001', '小红', 1, '13012199501123400', '18633937097', '', '', 1, 'duzhaosen', 1612168671, '', 0);
INSERT INTO `zh_coordinator` VALUES (2, '2021020100002', '杜', 1, '13012199501123411', '18633937097', '', '', 1, 'duzhaosen', 1612170824, '杜兆森', 1612170884);
INSERT INTO `zh_coordinator` VALUES (6, 'P2021020300001', '杜', 1, '13012199501123411', '18633937097', '', '', 1, 'duzhaosen', 1612317467, '', 0);
INSERT INTO `zh_coordinator` VALUES (10, '2021020500001', 'df', 1, '13012199501123411', '18633937097', '', '', 0, 'duzhaosen', 1612489308, '杜兆森', 1612509114);
INSERT INTO `zh_coordinator` VALUES (14, 'P2021020500001', 'df', 1, '13012199501123411', '18633937097', '', '', 0, 'duzhaosen', 1612509931, '', 0);

-- ----------------------------
-- Table structure for zh_damage_info
-- ----------------------------
DROP TABLE IF EXISTS `zh_damage_info`;
CREATE TABLE `zh_damage_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联报案单号',
  `damage_overall` tinyint(4) NOT NULL DEFAULT -1 COMMENT '统筹种类',
  `damage_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `price_program` tinyint(4) NOT NULL DEFAULT -1 COMMENT '价格方案',
  `damage_price` float NOT NULL COMMENT '价格',
  `damage_num` tinyint(4) NOT NULL COMMENT '数量',
  `damage_money` float NOT NULL COMMENT '金额',
  `damage_discount` int(11) NOT NULL COMMENT '折扣',
  `damage_approved` float NOT NULL COMMENT '核定金额',
  `damage_remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `damage_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1配件2工时3财务',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车损详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_damage_info
-- ----------------------------
INSERT INTO `zh_damage_info` VALUES (5, '7', 1, '本车工时', 3, 200, 1, 200, 100, 200, '', 1613713847, '杜兆森', 2, 1);
INSERT INTO `zh_damage_info` VALUES (12, '7', 5, '大', 3, 10, 20, 20, 100, 200, '', 1613801951, '杜兆森', 3, 1);
INSERT INTO `zh_damage_info` VALUES (16, '8', -1, '10', 1, 100, 2, 200, 100, 200, '', 1613805532, '杜兆森', 2, 1);
INSERT INTO `zh_damage_info` VALUES (17, '8', 4, '测试', 3, 100, 2, 200, 23, 46, '', 1613806068, '杜兆森', 1, 1);
INSERT INTO `zh_damage_info` VALUES (18, '7', 1, '本车配', 1, 100, 1, 100, 23, 23, '', 1613806620, '杜兆森', 1, 1);
INSERT INTO `zh_damage_info` VALUES (19, '7', 4, '测试有误', 3, 200, 2, 400, 33, 132, '', 1613806620, '杜兆森', 1, 1);

-- ----------------------------
-- Table structure for zh_documents_add
-- ----------------------------
DROP TABLE IF EXISTS `zh_documents_add`;
CREATE TABLE `zh_documents_add`  (
  `add_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '入库批次号',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型：1统筹单2批单',
  `s_num` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '起始号',
  `e_num` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '截止号',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '总数量',
  `remaining` int(11) NOT NULL DEFAULT 0 COMMENT '剩余量',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '入库时间',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '有效截止期',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后操作人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后操作时间',
  PRIMARY KEY (`add_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单证入库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_documents_add
-- ----------------------------
INSERT INTO `zh_documents_add` VALUES ('0202095223', 1, '00001', '00010', 10, 4, 1612230743, 1643766743, '杜兆森', 1, '', 0);

-- ----------------------------
-- Table structure for zh_documents_info
-- ----------------------------
DROP TABLE IF EXISTS `zh_documents_info`;
CREATE TABLE `zh_documents_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '下发批次号/入库批次号',
  `documents_id` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '单证号',
  `issued_time` int(11) NOT NULL DEFAULT 0 COMMENT '使用时间',
  `issued_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '使用人',
  `is_issued` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1未使用2已使用3已回收',
  `related_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型：1入库2下发',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单证使用log表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_documents_info
-- ----------------------------
INSERT INTO `zh_documents_info` VALUES (1, '0202095223', '00001', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (2, '0202095223', '00002', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (3, '0202095223', '00003', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (4, '0202095223', '00004', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (5, '0202095223', '00005', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (6, '0202095223', '00006', 1612230758, '杜兆森', 2, 1);
INSERT INTO `zh_documents_info` VALUES (7, '0202095223', '00007', 0, '', 1, 1);
INSERT INTO `zh_documents_info` VALUES (8, '0202095223', '00008', 0, '', 1, 1);
INSERT INTO `zh_documents_info` VALUES (9, '0202095223', '00009', 0, '', 1, 1);
INSERT INTO `zh_documents_info` VALUES (10, '0202095223', '00010', 0, '', 1, 1);
INSERT INTO `zh_documents_info` VALUES (11, '02095238', '00001', 1612230771, '杜兆森', 2, 2);
INSERT INTO `zh_documents_info` VALUES (12, '02095238', '00002', 0, '', 1, 2);
INSERT INTO `zh_documents_info` VALUES (13, '02095238', '00003', 0, '', 1, 2);
INSERT INTO `zh_documents_info` VALUES (14, '02095238', '00004', 0, '', 1, 2);
INSERT INTO `zh_documents_info` VALUES (15, '02095238', '00005', 0, '', 1, 2);
INSERT INTO `zh_documents_info` VALUES (16, '02095238', '00006', 0, '', 1, 2);

-- ----------------------------
-- Table structure for zh_documents_issued
-- ----------------------------
DROP TABLE IF EXISTS `zh_documents_issued`;
CREATE TABLE `zh_documents_issued`  (
  `issued_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下发证号',
  `add_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '入库批次号',
  `issued_structure` int(11) NOT NULL DEFAULT 0 COMMENT '下发组织',
  `issued_user` int(11) NOT NULL DEFAULT 0 COMMENT '下发工号',
  `issued_type` int(11) NOT NULL DEFAULT 0 COMMENT '类型：1统筹单2批单',
  `issued_s_num` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000000' COMMENT '起始号',
  `issued_e_num` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000000' COMMENT '截止号',
  `issued_total` int(11) NOT NULL DEFAULT 0 COMMENT '下发数量',
  `issued_remaining` int(11) NOT NULL DEFAULT 0 COMMENT '剩余量',
  `issued_create_time` int(11) NOT NULL COMMENT '下发时间',
  `issued_end_time` int(11) NOT NULL COMMENT '截止期',
  `issued_create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人',
  `issued_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `issued_op_time` int(11) NOT NULL DEFAULT 0 COMMENT '操作时间',
  `issued_op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人',
  PRIMARY KEY (`issued_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单证下发表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_documents_issued
-- ----------------------------
INSERT INTO `zh_documents_issued` VALUES ('02095238', '0202095223', 1, 800001, 1, '00001', '00006', 6, 5, 1612230758, 1643766758, '杜兆森', 1, 0, '');

-- ----------------------------
-- Table structure for zh_documents_recycle
-- ----------------------------
DROP TABLE IF EXISTS `zh_documents_recycle`;
CREATE TABLE `zh_documents_recycle`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '回收批次号',
  `add_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '入库批次号',
  `issued_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下发批次号',
  `documents_id` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单证号码',
  `recycle_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1统筹单2统筹批单',
  `recycle_structure` int(11) NOT NULL COMMENT '回收组织',
  `recycle_user` int(11) NOT NULL COMMENT '回收用户',
  `recycle_create_time` int(11) NOT NULL COMMENT '回收日期',
  `recycle_create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回收操作人',
  `recycle_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `recycle_fettle` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1已使用2作废3空白',
  `recycle_op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后操作人',
  `recycle_op_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单证回收' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_documents_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for zh_endorsements
-- ----------------------------
DROP TABLE IF EXISTS `zh_endorsements`;
CREATE TABLE `zh_endorsements`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `overall_id` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '统筹单号',
  `endorsements_id` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '批单号',
  `p_temporary_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '暂存单号',
  `documents` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '打印单号',
  `attribution_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '录入日期',
  `nuclear_system_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核统人',
  `nuclear_system_time` int(11) NOT NULL DEFAULT 0 COMMENT '核统日期',
  `financial_review_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '财务审核人',
  `financial_review_time` int(11) NOT NULL DEFAULT 0 COMMENT '财务审核日期',
  `plate` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT 0 COMMENT '生效天数',
  `short_term_coefficient` float(3, 2) NOT NULL DEFAULT 0.00 COMMENT '短期系数',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `car_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1未生成新的单号2已生成新的单号',
  `dispute_resolution` tinyint(4) NOT NULL DEFAULT 1 COMMENT '争议解决方：1诉讼2仲裁',
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '特别约定',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参统说明',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1待修改2待二级审核3待财务审核4审核通过',
  `participate_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `documents_id` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单证号',
  `approval` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '批文',
  `endorsements_time` int(11) NOT NULL COMMENT '批改日期',
  `endorsements_type` tinyint(11) NOT NULL DEFAULT 1 COMMENT '批单类型：1全单批改',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `overall_id`(`overall_id`) USING BTREE,
  UNIQUE INDEX `p_temporary_id`(`p_temporary_id`) USING BTREE,
  UNIQUE INDEX `endorsements_id`(`endorsements_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '批单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_endorsements
-- ----------------------------
INSERT INTO `zh_endorsements` VALUES (3, 'ZH2021000000020', 'PZH2021000000001', 'P2021020300001', '', '800003', '800002', 'duzhaosen', 1612108800, '', 0, '', 0, '暂未上牌', 'jdhh435ndfjge', 1612195200, 1635696000, 273, 0.75, '', '', 0, '杜', 1, 1, 1, '1、本统筹单的第一受益人为***。未经其事先书面同意本统筹单不得被退统或减统或批改，不影响第一受益人权益的批改除外。\r\n2、验车风险特约：本统筹车辆在参统时**已有损坏，在被统筹人未自行修复并我公司验车合格前，同一部位发生事故所造成的损失，我公司不承担补偿责任。\r\n3、因任何原因造成混凝土凝固而导致的设备损失,统筹人不负责赔偿。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n', 'sdfasfdaf', 2, 'duzhaosen', '00001', NULL, 1612317467, 1);
INSERT INTO `zh_endorsements` VALUES (7, 'ZH2021000000021', 'PZH2021000000002', 'P2021020500001', '', '800003', '800002', 'duzhaosen', 1612454400, '', 0, '', 0, '冀A0000', 'jdhh435nd3', 1612540800, 1636041600, 273, 0.75, '', '杜兆森', 1612512763, '牛', 1, 1, 1, '1、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n2、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n3、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n', 'sdafjijakdfjkafd', 2, '杜', '', NULL, 1612509931, 1);

-- ----------------------------
-- Table structure for zh_human_info
-- ----------------------------
DROP TABLE IF EXISTS `zh_human_info`;
CREATE TABLE `zh_human_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `human_id` int(11) NOT NULL COMMENT '人伤主表ID',
  `overall_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '统筹种类',
  `injury_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `injury_sex` tinyint(4) NOT NULL DEFAULT -1 COMMENT '性别',
  `injury_age` int(11) NOT NULL DEFAULT 0 COMMENT '年龄',
  `injury_domicile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '户籍性质',
  `injury_medical` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '医疗机构',
  `injury_record` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '病案号',
  `injury_money` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `injury_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '核定金额',
  `injury_remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `injury_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `injury_condition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '诊断病情',
  `injury_hospitalized` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否住院',
  `injury_day` int(11) NOT NULL DEFAULT 0 COMMENT '住院天数',
  `injury_disability` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否残疾',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人伤详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_human_info
-- ----------------------------
INSERT INTO `zh_human_info` VALUES (7, 1, -1, 'sdf', -1, 0, '', '', '', 200.00, 200.00, NULL, '杜兆森', 1613806641, 1, '', 0, 0, 0);
INSERT INTO `zh_human_info` VALUES (14, 2, -1, '三者', -1, 0, '', '', '', 100.00, 100.00, NULL, '杜兆森', 1613790808, 1, '', 0, 0, 0);
INSERT INTO `zh_human_info` VALUES (15, 2, -1, '电饭锅', -1, 0, '', '', '', 100.00, 100.00, NULL, '杜兆森', 1613790808, 1, '', 0, 0, 0);

-- ----------------------------
-- Table structure for zh_human_injury
-- ----------------------------
DROP TABLE IF EXISTS `zh_human_injury`;
CREATE TABLE `zh_human_injury`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联ID',
  `human_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型：1本车人2三者人',
  `human_money` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '金额小计',
  `human_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '核定金额',
  `human_fee` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '费用合计',
  `human_litigation` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '诉讼费',
  `human_identification` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '鉴定费',
  `human_appraisal` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '公估费',
  `human_stay` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '住宿费',
  `human_road` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '路桥费',
  `human_fue` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '燃油费',
  `human_other` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '其他',
  `human_total` bigint(20) NOT NULL COMMENT '合计',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人伤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_human_injury
-- ----------------------------
INSERT INTO `zh_human_injury` VALUES (1, 'BA2021020001', 1, 800.00, 800.00, 800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1613722969, '杜兆森');
INSERT INTO `zh_human_injury` VALUES (2, 'BA2021020001', 2, 300.00, 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1613787390, '杜兆森');

-- ----------------------------
-- Table structure for zh_human_price
-- ----------------------------
DROP TABLE IF EXISTS `zh_human_price`;
CREATE TABLE `zh_human_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` int(11) NOT NULL DEFAULT 0 COMMENT '人伤姓名信息表id',
  `overall_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '统筹种类',
  `price_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '费用类型',
  `price` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `num` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `price_total` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '总价',
  `price_approved` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '核价金额',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_human_price
-- ----------------------------
INSERT INTO `zh_human_price` VALUES (77, 14, -1, -1, 100.00, 1, 100.00, 100.00, '', '杜兆森', 1613791358);
INSERT INTO `zh_human_price` VALUES (76, 15, -1, -1, 100.00, 1, 100.00, 100.00, '', '杜兆森', 1613791346);
INSERT INTO `zh_human_price` VALUES (74, 9, -1, -1, 400.00, 1, 400.00, 400.00, '', '杜兆森', 1613786585);
INSERT INTO `zh_human_price` VALUES (72, 8, -1, -1, 200.00, 1, 200.00, 200.00, '', '杜兆森', 1613786259);
INSERT INTO `zh_human_price` VALUES (71, 7, -1, -1, 100.00, 2, 200.00, 200.00, '', '杜兆森', 1613784743);

-- ----------------------------
-- Table structure for zh_invoice
-- ----------------------------
DROP TABLE IF EXISTS `zh_invoice`;
CREATE TABLE `zh_invoice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发票名称',
  `invoice_tax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '税号',
  `invoice_bank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '开户行',
  `invoice_account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账号',
  `invoice_open_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '开户地址',
  `invoice_phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `invoice_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `invoice_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型：1普通发票2专用发票3同参统人4同被参统人',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联单号',
  `invoice_remarks` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_invoice
-- ----------------------------
INSERT INTO `zh_invoice` VALUES (1, 'sdfaf', '', '', '', '', '', '', 1, 'duzhaosen', 1612489308, '2021020500001', '', '', 0);

-- ----------------------------
-- Table structure for zh_logs
-- ----------------------------
DROP TABLE IF EXISTS `zh_logs`;
CREATE TABLE `zh_logs`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志类型：1增加2编辑3删除4上传',
  `log_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加时间',
  `power_id` int(11) NOT NULL DEFAULT 0 COMMENT '权限ID',
  `log_server_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人',
  `log_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 431 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_logs
-- ----------------------------
INSERT INTO `zh_logs` VALUES (1, '1', '2021-01-21 11:03:23:597', 11, '2886795265', '杜兆森', '添加角色name=sefsdf&type=1&powers=&admin=1&salesman=1结果：成功');
INSERT INTO `zh_logs` VALUES (2, '1', '2021-01-21 11:04:57:156', 11, '2886795265', '杜兆森', '添加角色name=sefsdf&type=1&powers=&admin=1&salesman=1结果：成功');
INSERT INTO `zh_logs` VALUES (3, '1', '2021-01-21 13:45:36:096', 6, '2886795265', '杜兆森', '添加菜单pid=4&name=%E6%97%A5%E5%BF%97%E7%AE%A1%E7%90%86&folder=System&action=logs%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (4, '7', '2021-01-21 14:00:54:015', 33, '2886795265', '杜兆森', '登陆成功0%5Bid%5D=800001&0%5Busername%5D=duzhaosen&0%5Bpasswd%5D=70bc419990b6bc19fc89f2ec3a470af7&0%5Bidentity%5D=130121199501123410&0%5Bsalesman%5D=1&0%5Btype%5D=1&0%5Bmanager%5D=1&0%5Bstructure%5D=1&0%5Broles%5D=1&0%5Bsex%5D=1&0%5Bcity%5D=130000&0%5Bcreate_time%5D=2021-01-11+09%3A29%3A39&0%5Bop_user%5D=%E6%9D%9C%E5%85%86%E6%A3%AE&0%5Bop_time%5D=2021-01-19+16%3A43%3A04&0%5Bphone%5D=19903211962&0%5Bname%5D=%E6%9D%9C%E5%85%86%E6%A3%AE&0%5Bpinyin_name%5D=duzhaosen&0%5BstructureStr%5D=%E6%80%BB%E9%83%A8&0%5BrolesStr%5D=%E4%B8%AD%E4%BA%92&0%5BtypeStr%5D=%E5%90%AF%E7%94%A8&0%5BsalesmanStr%5D=%E4%B8%9A%E5%8A%A1%E5%91%98&0%5BmanagerStr%5D=%E7%BB%8F%E5%8A%9E%E4%BA%BA&0%5BsexStr%5D=%E7%94%B7&0%5Ball_name%5D=%E6%9D%9C%E5%85%86%E6%A3%AE%26nbsp%28duzhaosen%29%26nbsp%28%E6%80%BB%E9%83%A8%29%26nbsp%28%E4%B8%AD%E4%BA%92%29&0%5BcityName%5D=%E6%B2%B3%E5%8C%97%E7%9C%81');
INSERT INTO `zh_logs` VALUES (5, '7', '2021-01-22 08:37:29:076', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (6, '8', '2021-01-22 09:56:05:445', 0, '', 'system', '任务开始执行');
INSERT INTO `zh_logs` VALUES (7, '8', '2021-01-22 09:56:05:485', 0, '', 'system', '验车码生成成功，第0次,内容KPAN16');
INSERT INTO `zh_logs` VALUES (8, '8', '2021-01-22 09:56:05:490', 0, '', 'system', '任务执行完毕');
INSERT INTO `zh_logs` VALUES (9, '7', '2021-01-22 09:56:14:159', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (10, '7', '2021-01-22 10:02:18:001', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (11, '7', '2021-01-22 10:02:47:801', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (12, '7', '2021-01-22 13:42:37:167', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (13, '4', '2021-01-22 13:46:25:498', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F7a4b2aef0e21cd689afc7bd19fea9a0e.jpg&id=31');
INSERT INTO `zh_logs` VALUES (14, '4', '2021-01-22 13:46:36:342', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F37786256babb138c6d289dff1311f8d5.jpg&id=32');
INSERT INTO `zh_logs` VALUES (15, '1', '2021-01-22 14:42:22:562', 6, '2886795265', '杜兆森', '添加菜单name=%E5%8D%95%E8%AF%81%E7%AE%A1%E7%90%86&folder=Documents&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (16, '1', '2021-01-22 14:42:49:384', 6, '2886795265', '杜兆森', '添加菜单pid=24&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=documents%2Fadd&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (17, '2', '2021-01-22 14:43:20:669', 7, '2886795265', '杜兆森', '修改菜单id=49&pid=48&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=documents%2Fadd&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (18, '1', '2021-01-22 14:43:46:253', 6, '2886795265', '杜兆森', '添加菜单pid=48&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=documents%2Fissued&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (19, '1', '2021-01-22 14:44:04:632', 6, '2886795265', '杜兆森', '添加菜单pid=48&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=documents%2Frecycle&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (20, '2', '2021-01-22 14:44:36:211', 7, '2886795265', '杜兆森', '菜单排序id=48&sort=6结果：成功');
INSERT INTO `zh_logs` VALUES (21, '2', '2021-01-22 14:44:48:484', 7, '2886795265', '杜兆森', '菜单排序id=34&sort=7结果：成功');
INSERT INTO `zh_logs` VALUES (22, '2', '2021-01-22 14:44:59:270', 7, '2886795265', '杜兆森', '菜单排序id=8&sort=8结果：成功');
INSERT INTO `zh_logs` VALUES (23, '2', '2021-01-22 14:45:14:927', 7, '2886795265', '杜兆森', '菜单排序id=8&sort=9结果：成功');
INSERT INTO `zh_logs` VALUES (24, '2', '2021-01-22 14:45:32:766', 7, '2886795265', '杜兆森', '菜单排序id=4&sort=9结果：成功');
INSERT INTO `zh_logs` VALUES (25, '2', '2021-01-22 14:45:39:381', 7, '2886795265', '杜兆森', '菜单排序id=8&sort=8结果：成功');
INSERT INTO `zh_logs` VALUES (26, '1', '2021-01-22 15:50:26:911', 495, '2886795265', '杜兆森', '添加单证入库s_num=0001&e_num=0002&total=2&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (27, '1', '2021-01-22 15:56:21:600', 495, '2886795265', '杜兆森', '添加单证入库s_num=0002&e_num=0003&total=2&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (28, '1', '2021-01-22 16:06:18:237', 495, '2886795265', '杜兆森', '添加单证入库s_num=0001&e_num=0002&total=2&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (29, '3', '2021-01-22 16:53:10:695', 15, '2886795265', '杜兆森', '删除单证add_id=0122160618结果：成功');
INSERT INTO `zh_logs` VALUES (30, '1', '2021-01-22 17:03:54:320', 15, '2886795265', '杜兆森', '添加单证入库s_num=0002&e_num=0003&total=2&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (31, '4', '2021-01-22 17:34:54:947', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2Fdb4a301a02362aa6a0e916ada27da42b.jpg&id=33');
INSERT INTO `zh_logs` VALUES (32, '4', '2021-01-22 17:34:58:136', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F16b0b62509e9321eef22438497ce7b2c.jpg&id=34');
INSERT INTO `zh_logs` VALUES (33, '4', '2021-01-22 17:36:20:248', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F613f853af07c2dbb4abc603619c131ec.jpg&id=35');
INSERT INTO `zh_logs` VALUES (34, '3', '2021-01-22 17:38:13:623', 0, '2886795265', '杜兆森', '删除文件id-35结果：成功');
INSERT INTO `zh_logs` VALUES (35, '4', '2021-01-22 17:38:26:840', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F9b9c6787349f8935d6cfef25ae8d316c.jpg&id=36');
INSERT INTO `zh_logs` VALUES (36, '3', '2021-01-22 17:46:21:627', 0, '2886795265', '杜兆森', '删除文件id-34结果：成功');
INSERT INTO `zh_logs` VALUES (37, '4', '2021-01-22 17:49:06:283', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F1984860a9f0bae3193b7067b422988a3.jpg&id=37');
INSERT INTO `zh_logs` VALUES (38, '3', '2021-01-22 17:50:47:870', 0, '2886795265', '杜兆森', '删除文件id-37结果：成功');
INSERT INTO `zh_logs` VALUES (39, '4', '2021-01-22 17:50:53:195', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2Faa297c7888a010a4d4a1c2dd22c9699f.jpg&id=38');
INSERT INTO `zh_logs` VALUES (40, '3', '2021-01-22 17:51:01:357', 0, '2886795265', '杜兆森', '删除文件id-function(el) {\\n            return this.splice(this.indexOf(el), 1);\\n        }结果：失败');
INSERT INTO `zh_logs` VALUES (41, '7', '2021-01-23 09:00:22:513', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (42, '4', '2021-01-23 09:00:38:424', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F65b3d3fca07178af3e7d9bf65ebfa1ea.jpg&id=39');
INSERT INTO `zh_logs` VALUES (43, '4', '2021-01-23 09:00:46:757', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2Ffbe22fd8cea5901524acc8a4af6bb665.jpg&id=40');
INSERT INTO `zh_logs` VALUES (44, '4', '2021-01-23 09:02:02:448', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F4946471e276cf79bf55bd41b4bb53068.jpg&id=41');
INSERT INTO `zh_logs` VALUES (45, '4', '2021-01-23 09:03:59:815', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2Fb0b2d81e996f584561e9e1f3d96dc9bd.jpg&id=42');
INSERT INTO `zh_logs` VALUES (46, '4', '2021-01-23 09:14:06:026', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F88d12b77413181df98bdce6587cf0488.jpg&id=43');
INSERT INTO `zh_logs` VALUES (47, '3', '2021-01-23 09:14:10:057', 0, '2886795265', '杜兆森', '删除文件id-39结果：成功');
INSERT INTO `zh_logs` VALUES (48, '4', '2021-01-23 09:14:17:815', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210123%2F637b5649f8416c01fe328ee1ca6f5ad1.jpg&id=44');
INSERT INTO `zh_logs` VALUES (49, '1', '2021-01-23 09:17:43:773', 15, '2886795265', '杜兆森', '添加单证入库s_num=0001&e_num=0022&total=22&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (50, '3', '2021-01-23 09:21:51:798', 15, '2886795265', '杜兆森', '删除单证add_id=0123091743结果：成功');
INSERT INTO `zh_logs` VALUES (51, '2', '2021-01-23 10:49:08:832', 7, '2886795265', '杜兆森', '修改菜单id=49&pid=48&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=warehousing%2Fwarehousing&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (52, '2', '2021-01-23 10:49:29:545', 7, '2886795265', '杜兆森', '修改菜单id=50&pid=48&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=issued%2Fissued&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (53, '2', '2021-01-23 10:49:44:041', 7, '2886795265', '杜兆森', '修改菜单id=51&pid=48&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=recycle%2Frecycle&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (54, '1', '2021-01-23 13:50:58:742', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=24&issued_user=800004&issued_type=1&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：失败');
INSERT INTO `zh_logs` VALUES (55, '1', '2021-01-23 13:54:06:639', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=24&issued_user=800004&issued_type=1&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：成功');
INSERT INTO `zh_logs` VALUES (56, '1', '2021-01-23 13:57:35:444', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=15&issued_user=800003&issued_type=2&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：成功');
INSERT INTO `zh_logs` VALUES (57, '7', '2021-01-23 14:22:41:702', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (58, '3', '2021-01-23 14:37:33:718', 50, '2886795265', '杜兆森', '删除单证下发issued_id=23135735结果：成功');
INSERT INTO `zh_logs` VALUES (59, '1', '2021-01-23 15:25:57:187', 49, '2886795265', '杜兆森', '添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败');
INSERT INTO `zh_logs` VALUES (60, '1', '2021-01-23 15:28:11:389', 49, '2886795265', '杜兆森', '添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败');
INSERT INTO `zh_logs` VALUES (61, '1', '2021-01-23 15:29:01:030', 49, '2886795265', '杜兆森', '添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败');
INSERT INTO `zh_logs` VALUES (62, '1', '2021-01-23 15:29:24:920', 49, '2886795265', '杜兆森', '添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (63, '1', '2021-01-23 16:40:03:395', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败');
INSERT INTO `zh_logs` VALUES (64, '1', '2021-01-23 16:40:10:476', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败');
INSERT INTO `zh_logs` VALUES (65, '1', '2021-01-23 16:40:44:820', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败');
INSERT INTO `zh_logs` VALUES (66, '1', '2021-01-23 16:42:47:887', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：成功');
INSERT INTO `zh_logs` VALUES (67, '3', '2021-01-23 16:48:20:949', 49, '2886795265', '杜兆森', '删除单证add_id=0123152924结果：成功');
INSERT INTO `zh_logs` VALUES (68, '3', '2021-01-23 16:48:23:035', 49, '2886795265', '杜兆森', '删除单证add_id=0122170354结果：成功');
INSERT INTO `zh_logs` VALUES (69, '3', '2021-01-23 16:48:28:061', 50, '2886795265', '杜兆森', '删除单证下发issued_id=23135735结果：成功');
INSERT INTO `zh_logs` VALUES (70, '1', '2021-01-23 16:49:19:755', 49, '2886795265', '杜兆森', '添加单证入库s_num=00012&e_num=00033&total=22&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (71, '1', '2021-01-23 16:54:54:037', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=24&issued_user=800003&issued_type=1&issued_s_num=00022&issued_e_num=00023&issued_total=2&add_id=0123164919结果：成功');
INSERT INTO `zh_logs` VALUES (72, '1', '2021-01-23 16:59:49:846', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=24&issued_user=800003&issued_type=1&issued_s_num=00012&issued_e_num=00013&issued_total=2&add_id=0123164919结果：成功');
INSERT INTO `zh_logs` VALUES (73, '7', '2021-01-24 08:52:52:226', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (74, '1', '2021-01-24 09:52:19:051', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=19&recycle_user=800004&recycle_s_num=00012&recycle_e_num=00013&recycle_total=2&recycle_fettle=1&recycle_create_time=2021%2F01%2F12&recycle_type=1&add_id=0123164919&issued_id=23165949结果：成功');
INSERT INTO `zh_logs` VALUES (75, '3', '2021-01-24 10:09:47:277', 50, '2886795265', '杜兆森', '删除单证回收id=2结果：成功');
INSERT INTO `zh_logs` VALUES (76, '1', '2021-01-24 10:38:36:978', 49, '2886795265', '杜兆森', '添加单证入库s_num=02000&e_num=02020&total=21&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (77, '5', '2021-01-24 10:40:24:433', 49, '2886795265', '杜兆森', '单证入库导出总条数：2');
INSERT INTO `zh_logs` VALUES (78, '5', '2021-01-24 13:48:12:060', 50, '2886795265', '杜兆森', '单证入库导出总条数：1');
INSERT INTO `zh_logs` VALUES (79, '5', '2021-01-24 13:48:26:103', 49, '2886795265', '杜兆森', '单证入库导出总条数：1');
INSERT INTO `zh_logs` VALUES (80, '7', '2021-01-24 14:03:43:508', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (81, '1', '2021-01-24 14:59:06:407', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=3&issued_user=800001&issued_type=1&issued_s_num=00030&issued_e_num=00033&issued_total=4&add_id=0123164919结果：成功');
INSERT INTO `zh_logs` VALUES (82, '2', '2021-01-24 15:00:01:538', 1, '2886795265', '杜兆森', '打印documents_id=00030&id=1&issued_type=1&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (83, '2', '2021-01-24 15:18:00:492', 1, '2886795265', '杜兆森', '打印documents_id=00031&related_id=2021010900002&issued_type=1&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (84, '2', '2021-01-24 15:22:18:769', 1, '2886795265', '杜兆森', '打印documents_id=00032&related_id=2021011800001&issued_type=1&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (85, '1', '2021-01-24 15:25:41:295', 49, '2886795265', '杜兆森', '添加单证入库s_num=00200&e_num=00300&total=101&type=2结果：成功');
INSERT INTO `zh_logs` VALUES (86, '1', '2021-01-24 15:25:54:499', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=24&issued_user=800001&issued_type=2&issued_s_num=00200&issued_e_num=00202&issued_total=3&add_id=0124152541结果：成功');
INSERT INTO `zh_logs` VALUES (87, '2', '2021-01-24 15:26:04:089', 1, '2886795265', '杜兆森', '打印documents_id=00200&related_id=P2021011000001&issued_type=2&issued_id=24152554结果：成功');
INSERT INTO `zh_logs` VALUES (88, '4', '2021-01-24 15:31:50:089', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210124%2F8b16f50cfde3c713d8492ea428866cee.jpg&id=45');
INSERT INTO `zh_logs` VALUES (89, '7', '2021-01-25 11:40:41:697', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (90, '7', '2021-01-25 16:45:19:665', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (91, '7', '2021-01-26 11:26:53:463', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (92, '7', '2021-01-27 14:48:06:948', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (93, '7', '2021-01-28 10:55:09:186', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (94, '7', '2021-01-28 10:55:09:261', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (95, '7', '2021-01-28 10:55:17:624', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (96, '2', '2021-01-28 10:56:29:018', 23, '2886795265', '杜兆森', '修改统筹单id=ZH2021000000001&overall_id=ZH2021000000001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F12&temporary_id=2021010900001&documents_id=30&traffic_company=%E4%BA%A4%E5%BC%BA%E9%99%A9%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&traffic_start_time=+2020%2F12%2F31&traffic_end_time=+2021%2F01%2F30&plate=%E5%86%80A12345&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F10&end_time=2022%2F01%2F09&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2020%2F12%2F17&issuance_time=2020%2F12%2F17&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=3&approved_load=45&curb_quality=55&vehicle_inspection=1&reason=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86%E5%9C%B0%E6%96%B9&displacement=12&power=2&last_year_danger=1&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=180000&vehicle_loss_discount=22&vehicle_loss_payable=39600&vehicle_third=vehicle_third&vehicle_third_money=30000&vehicle_third_standard=29000&vehicle_third_discount=22&vehicle_third_payable=6380&car_driver_discount=22&seat=2&car_passenger_discount=22&car_goods_discount=22&combustion_discount=22&engine_wading=engine_wading&engine_wading_money=10000&engine_wading_standard=9000&engine_wading_discount=22&engine_wading_payable=1980&designated_repai=designated_repai&designated_repai_money=20000&designated_repai_standard=12000&designated_repai_discount=22&designated_repai_payable=2640&broken_glass_discount=22&benchmarking=59960&total_discount=22&total_planning=50600&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&dispute_resolution=1&agreement=1%E3%80%81%E7%8E%BB%E7%92%83%E7%BB%9F%E7%AD%B9%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E7%8E%BB%E7%92%83%E5%8D%95%E7%8B%AC%E7%A0%B4%E7%A2%8E%E7%BB%9F%E7%AD%B9%E6%8C%89%E5%9B%BD%E4%BA%A7%E7%8E%BB%E7%92%83%E5%8F%82%E7%BB%9F%EF%BC%8C%E7%90%86%E8%B5%94%E6%97%B6%E6%8C%89%E5%9B%BD%E4%BA%A7%E4%BB%B6%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A3%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=%E6%B5%8B%E8%AF%95%E7%94%B5%E8%AF%9D%E8%B4%B9%E8%88%92%E6%9C%8D%E7%9A%84%E6%B2%99%E5%8F%91%E5%9C%A3%E8%AF%9E%E8%8A%82%E9%A3%9E%E6%9C%BA%E4%B8%8A%E7%9C%8B%E9%A3%8E%E6%99%AF%E7%9C%8B%E5%B0%B1%E6%98%AF%E5%9C%B0%E6%96%B9%E5%8D%B3%E4%BD%BF%E5%88%86%E5%BC%80%E5%B0%B1%E5%88%86%E5%BC%80%E5%B0%B1%E6%98%AF%E7%9C%8B%E7%9A%84%E9%A3%8E%E6%99%AF%E7%9C%8B%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF%E7%9A%84%E6%89%8B%E6%9C%BA%E8%B4%B9%E4%B8%96%E6%9D%B0%E5%9C%B0%E6%96%B9%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (97, '6', '2021-01-28 10:56:46:181', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021010900001&type=1&status=4&log_type=1结果：成功');
INSERT INTO `zh_logs` VALUES (98, '6', '2021-01-28 10:56:52:640', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021010900001&type=1&status=5&log_type=3结果：成功');
INSERT INTO `zh_logs` VALUES (99, '6', '2021-01-28 10:57:03:997', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021010900001&type=1&status=6&log_type=4结果：成功');
INSERT INTO `zh_logs` VALUES (100, '4', '2021-01-28 14:09:45:226', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210128%2F43eea2e449178bbaaa430667e656309b.png&id=46');
INSERT INTO `zh_logs` VALUES (101, '4', '2021-01-28 14:09:52:027', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210128%2F4fe99b3226da1caa3d26eac0e55e3ddc.jpg&id=47');
INSERT INTO `zh_logs` VALUES (102, '1', '2021-01-28 14:10:07:598', 2, '2886795265', '杜兆森', '添加统筹单attribution_user=800004&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F28&temporary_id=2021012800001&traffic_company=%E6%B5%8B%E8%AF%95%E4%BA%A4%E5%BC%BA&traffic_start_time=2021%2F01%2F28&traffic_end_time=2021%2F01%2F28&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=dsfsdffsdfa&relationship=2&license_type=2&license_number=130121199501123400&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F29&end_time=2022%2F01%2F28&car_name=dudu&plate_type=3&color=1&engine=kfmsfa&label_signal=232dsfdsf&registered_time=2021%2F01%2F14&issuance_time=2021%2F01%2F22&age=23&transfer=1&new_price=1650000&actual_price=1550000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=33&curb_quality=23&vehicle_inspection=1&reason=dfjfsaf&displacement=23&power=1&last_year_danger=2&participate_city=150000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=78&vehicle_third_discount=78&car_driver=car_driver&car_driver_money=130000&car_driver_standard=80000&car_driver_discount=78&car_driver_payable=62400.00&seat=3&car_passenger_discount=78&car_goods_discount=78&combustion_discount=78&engine_wading=engine_wading&engine_wading_money=20000&engine_wading_standard=15000&engine_wading_discount=78&engine_wading_payable=11700.00&designated_repai_discount=78&broken_glass_discount=78&benchmarking=77400&total_discount=78&total_planning=74100.00&participate_name=du&participate_license_type=1&participate_number=130121199501123400&participate_phone=18633937097&coordinated_name=%E7%9A%84%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF%E5%95%8A&coordinated_license_type=1&coordinated_number=13012199501123400&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E7%8E%BB%E7%92%83%E7%BB%9F%E7%AD%B9%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E7%8E%BB%E7%92%83%E5%8D%95%E7%8B%AC%E7%A0%B4%E7%A2%8E%E7%BB%9F%E7%AD%B9%E6%8C%89%E5%9B%BD%E4%BA%A7%E7%8E%BB%E7%92%83%E5%8F%82%E7%BB%9F%EF%BC%8C%E7%90%86%E8%B5%94%E6%97%B6%E6%8C%89%E5%9B%BD%E4%BA%A7%E4%BB%B6%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A3%E3%80%81%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E5%9C%A8%E6%9C%AA%E4%B8%8E%E7%AC%AC%E4%B8%89%E8%80%85%E5%8F%91%E7%94%9F%E7%A2%B0%E6%92%9E%E6%97%B6%EF%BC%8C%E4%B8%BB%E6%8C%82%E8%BD%A6%E4%BA%92%E7%A2%B0%E4%BA%A7%E7%94%9F%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=1&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=sdfasf3453&invoice_bank=%E6%94%BE%E7%82%B9%E5%8F%91%E8%BD%A6&invoice_account=13222&invoice_open_address=%E5%87%BA%E7%8E%B0%E5%9C%A8+v+%E5%95%8A+v&invoice_phone=19903211962&invoice_remarks=%E6%89%8B%E5%8A%A8%E5%BC%80%E5%8F%91%E5%8F%AF%E5%87%8F%E8%82%A5&description=%E7%96%AF%E7%8B%82%E5%87%8F%E8%82%A5%E5%81%A5%E5%BA%B7%E7%9A%84%E6%B0%B4%E7%85%8E%E6%9C%8D&overall_id=ZH2021000000003&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (103, '1', '2021-01-28 14:14:07:133', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=2&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F28&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (104, '7', '2021-01-28 14:52:47:787', 33, '2886795265', '杜', '登陆成功');
INSERT INTO `zh_logs` VALUES (105, '7', '2021-01-28 15:00:20:835', 33, '2886795265', '杜1', '登陆成功');
INSERT INTO `zh_logs` VALUES (106, '2', '2021-01-28 15:01:00:926', 10, '2886795265', '杜兆森', '修改用户id=800004&username=du1&roles=2&phone=19903211111&sex=1&identity=130121995011233333&name=%E6%9D%9C1&pinyin_name=duone&structure=17&salesman=1&manager=2&city=460100&manager_id=800002结果：成功');
INSERT INTO `zh_logs` VALUES (107, '7', '2021-01-28 15:02:01:452', 33, '2886795265', '杜1', '登陆成功');
INSERT INTO `zh_logs` VALUES (108, '7', '2021-01-29 16:49:01:145', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (109, '3', '2021-01-29 16:55:10:068', 50, '2886795265', '杜兆森', '删除单证回收id=3结果：成功');
INSERT INTO `zh_logs` VALUES (110, '1', '2021-01-29 16:55:27:863', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=14&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (111, '3', '2021-01-29 17:11:12:430', 50, '2886795265', '杜兆森', '删除单证回收id=4结果：成功');
INSERT INTO `zh_logs` VALUES (112, '1', '2021-01-29 17:11:30:163', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=16&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败');
INSERT INTO `zh_logs` VALUES (113, '1', '2021-01-29 17:11:33:127', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=16&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败');
INSERT INTO `zh_logs` VALUES (114, '1', '2021-01-29 17:11:51:424', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败');
INSERT INTO `zh_logs` VALUES (115, '1', '2021-01-29 17:11:57:318', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败');
INSERT INTO `zh_logs` VALUES (116, '1', '2021-01-29 17:40:23:739', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败');
INSERT INTO `zh_logs` VALUES (117, '1', '2021-01-29 17:40:43:326', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功');
INSERT INTO `zh_logs` VALUES (118, '7', '2021-01-30 08:48:55:895', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (119, '7', '2021-01-30 08:48:55:985', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (120, '7', '2021-01-30 08:48:56:054', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (121, '7', '2021-01-30 08:49:04:516', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (122, '7', '2021-01-30 14:34:29:813', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (123, '8', '2021-01-30 14:38:22:848', 0, '', 'system', 'car_code cron-任务开始执行');
INSERT INTO `zh_logs` VALUES (124, '8', '2021-01-30 14:38:22:899', 0, '', 'system', 'car_code cron-验车码生成成功，第1次,内容P5BZFZ');
INSERT INTO `zh_logs` VALUES (125, '8', '2021-01-30 14:38:22:904', 0, '', 'system', 'car_code cron-任务执行完毕');
INSERT INTO `zh_logs` VALUES (126, '7', '2021-01-30 14:38:33:221', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (127, '1', '2021-01-30 14:39:25:482', 49, '2886795265', '杜兆森', '添加单证入库s_num=00050&e_num=00060&total=11&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (128, '1', '2021-01-30 14:39:40:233', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=1&issued_user=800001&issued_type=1&issued_s_num=00050&issued_e_num=00055&issued_total=6&add_id=0130143925结果：成功');
INSERT INTO `zh_logs` VALUES (129, '1', '2021-01-30 14:42:14:286', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=1&recycle_user=800001&recycle_s_num=00050&recycle_e_num=00050&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F30&recycle_type=1&add_id=0130143925&issued_id=30143940结果：成功');
INSERT INTO `zh_logs` VALUES (130, '1', '2021-01-30 14:44:46:568', 50, '2886795265', '杜兆森', '添加单证回收recycle_structure=1&recycle_user=800001&recycle_s_num=00051&recycle_e_num=00051&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F30&recycle_type=1&add_id=0130143925&issued_id=30143940结果：成功');
INSERT INTO `zh_logs` VALUES (131, '2', '2021-01-30 14:46:32:912', 1, '2886795265', '杜兆森', '打印documents_id=00052&related_id=2021010900001&issued_type=1&issued_id=30143940结果：成功');
INSERT INTO `zh_logs` VALUES (132, '4', '2021-01-30 15:17:11:850', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2F3a6477a373c76a970fb94defb2cd2f26.jpg&id=48');
INSERT INTO `zh_logs` VALUES (133, '4', '2021-01-30 15:17:16:202', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fb05965dd73d2f66ce2ed3f8c4828ba9e.jpg&id=49');
INSERT INTO `zh_logs` VALUES (134, '4', '2021-01-30 15:17:16:287', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fc3e954c9919a51911045281521273239.jpg&id=50');
INSERT INTO `zh_logs` VALUES (135, '4', '2021-01-30 15:17:16:358', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fa44764ff7418756797d3a7fa56a7cfb8.jpg&id=51');
INSERT INTO `zh_logs` VALUES (136, '4', '2021-01-30 15:17:29:924', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Fdbcd739a441d1e9c864c7df29d0575f3.jpg&id=52');
INSERT INTO `zh_logs` VALUES (137, '4', '2021-01-30 15:17:30:074', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Ff8ecb45043d7a95f8ef17b66b25a7e87.jpg&id=53');
INSERT INTO `zh_logs` VALUES (138, '4', '2021-01-30 15:17:30:215', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Fa970fd4089589df7638ef64829f685c9.jpg&id=54');
INSERT INTO `zh_logs` VALUES (139, '4', '2021-01-30 15:17:30:337', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2F248ea5e95e851d3ee8dbcaca32b2d83e.jpg&id=55');
INSERT INTO `zh_logs` VALUES (140, '1', '2021-01-30 15:17:34:804', 2, '2886795265', '杜兆森', '添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F30&temporary_id=2021013000001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F01%2F30&traffic_end_time=2021%2F01%2F30&plate=%E5%86%80ASSSSS&frame=chejiahaodsf23dsf&relationship=3&license_type=1&license_number=130121199501123001&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F31&end_time=2022%2F01%2F30&car_name=%E5%B0%8F%E6%98%8E&plate_type=2&color=1&engine=sdfmsfd&label_signal=sdfjskjdfajfksakf&registered_time=2021%2F01%2F30&issuance_time=2021%2F01%2F31&age=3&transfer=1&new_price=1500000&actual_price=1440000&use_nature=7&species=14&car_type=2&approved_user=5&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%B5%8B%E8%AF%95%E5%93%88%E5%93%88&displacement=1&power=23&last_year_danger=2&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third=vehicle_third&vehicle_third_money=20000&vehicle_third_standard=14000&vehicle_third_discount=89&vehicle_third_payable=12460.00&car_driver=car_driver&car_driver_money=40000&car_driver_standard=35999&car_driver_discount=89&car_driver_payable=32039.11&seat=4&car_passenger_discount=89&car_goods=car_goods&car_goods_money=23000&car_goods_standard=20000&car_goods_discount=89&car_goods_payable=17800.00&combustion_discount=89&engine_wading_discount=89&designated_repai=designated_repai&designated_repai_money=1000&designated_repai_standard=999&designated_repai_discount=89&designated_repai_payable=889.11&broken_glass_discount=89&benchmarking=63298&total_discount=89&total_planning=63188.00&car_owner=1&participate_name=%E5%B0%8F%E6%98%8E&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=%E5%B0%8F%E7%BA%A2&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E5%86%B7%E8%97%8F%E8%BD%A6%E5%8E%A2%E4%BD%93%E4%B8%8D%E6%89%BF%E7%BB%9F%EF%BC%8C%E5%8E%A2%E4%BD%93%E5%8F%8A%E8%BD%A6%E4%B8%8A%E5%88%B6%E5%86%B7%E8%AE%BE%E5%A4%87%E4%B8%8D%E6%89%BF%E7%BB%9F%E3%80%82%0D%0A2%E3%80%81%E6%9C%AC%E8%BD%A6%E8%BD%A6%E6%8D%9F%E7%BB%9F%E7%AD%B9%E5%8F%8A%E5%85%B6%E9%99%84%E5%8A%A0%E7%BB%9F%E7%AD%B9%E9%AA%8C%E8%BD%A6%E5%90%8E%E4%B8%8A%E4%BC%A0%E7%B3%BB%E7%BB%9F%E7%BB%8F%E5%AE%A1%E6%A0%B8%E5%90%8E%E6%96%B9%E5%8F%AF%E7%94%9F%E6%95%88%E3%80%82%0D%0A3%E3%80%81%E8%BD%A6%E4%B8%8A%E4%BA%BA%E5%91%98%E8%B4%A3%E4%BB%BB%E9%99%A9%EF%BC%88%E4%B9%98%E5%AE%A2%EF%BC%89%E8%A1%A5%E5%81%BF%E9%99%90%E9%A2%9D%E4%B8%BA50000%E5%85%83%2A2%E4%BA%BA%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=1&invoice_name=%E5%9C%A3%E8%AF%9E%E8%8A%82%E5%8F%91&invoice_tax=fjsdjfsdsijfiafds&invoice_bank=sdfkjsfdj&invoice_account=8778778889&description=%E6%B5%8B%E8%AF%95%E5%93%87&overall_id=ZH2021000000004&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (141, '6', '2021-01-30 16:50:24:380', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=4&log_type=1结果：成功');
INSERT INTO `zh_logs` VALUES (142, '6', '2021-01-30 16:50:37:158', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败');
INSERT INTO `zh_logs` VALUES (143, '6', '2021-01-30 16:50:46:295', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败');
INSERT INTO `zh_logs` VALUES (144, '6', '2021-01-30 16:51:14:491', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败');
INSERT INTO `zh_logs` VALUES (145, '6', '2021-01-30 16:53:02:732', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：成功');
INSERT INTO `zh_logs` VALUES (146, '6', '2021-01-30 16:53:16:889', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=2&log_type=2结果：成功');
INSERT INTO `zh_logs` VALUES (147, '2', '2021-01-30 17:21:45:284', 23, '2886795265', '杜兆森', '修改统筹单id=ZH2021000000004&overall_id=ZH2021000000004&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F30&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F01%2F30&temporary_id=2021013000001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F01%2F30&traffic_end_time=+2021%2F01%2F30&plate=%E5%86%80ASSSSS&frame=chejiahaodsf23dsf&relationship=1&license_type=1&license_number=130121199501123001&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F31&end_time=2022%2F01%2F30&car_name=%E5%B0%8F%E6%98%8E&plate_type=1&color=1&engine=sdfmsfd&label_signal=sdfjskjdfajfksakf&registered_time=2021%2F01%2F30&issuance_time=2021%2F01%2F30&age=3&transfer=1&new_price=1500000&actual_price=1440000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%B5%8B%E8%AF%95%E5%93%88%E5%93%88&displacement=1&power=23&last_year_danger=1&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third=vehicle_third&vehicle_third_money=20000&vehicle_third_standard=14000&vehicle_third_discount=89&vehicle_third_payable=12460&car_driver=car_driver&car_driver_money=40000&car_driver_standard=35999&car_driver_discount=89&car_driver_payable=32039.1&seat=4&car_passenger_money=40000&car_passenger_discount=89&car_goods=car_goods&car_goods_money=23000&car_goods_standard=20000&car_goods_discount=89&car_goods_payable=17800&combustion_discount=89&engine_wading_discount=89&designated_repai=designated_repai&designated_repai_money=1000&designated_repai_standard=999&designated_repai_discount=89&designated_repai_payable=889.11&broken_glass_discount=89&benchmarking=63298&total_discount=89&total_planning=63188&car_owner=1&participate_name=%E5%B0%8F%E6%98%8E&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=%E5%B0%8F%E7%BA%A2&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E5%86%B7%E8%97%8F%E8%BD%A6%E5%8E%A2%E4%BD%93%E4%B8%8D%E6%89%BF%E7%BB%9F%EF%BC%8C%E5%8E%A2%E4%BD%93%E5%8F%8A%E8%BD%A6%E4%B8%8A%E5%88%B6%E5%86%B7%E8%AE%BE%E5%A4%87%E4%B8%8D%E6%89%BF%E7%BB%9F%E3%80%82%0D%0A2%E3%80%81%E6%9C%AC%E8%BD%A6%E8%BD%A6%E6%8D%9F%E7%BB%9F%E7%AD%B9%E5%8F%8A%E5%85%B6%E9%99%84%E5%8A%A0%E7%BB%9F%E7%AD%B9%E9%AA%8C%E8%BD%A6%E5%90%8E%E4%B8%8A%E4%BC%A0%E7%B3%BB%E7%BB%9F%E7%BB%8F%E5%AE%A1%E6%A0%B8%E5%90%8E%E6%96%B9%E5%8F%AF%E7%94%9F%E6%95%88%E3%80%82%0D%0A3%E3%80%81%E8%BD%A6%E4%B8%8A%E4%BA%BA%E5%91%98%E8%B4%A3%E4%BB%BB%E9%99%A9%EF%BC%88%E4%B9%98%E5%AE%A2%EF%BC%89%E8%A1%A5%E5%81%BF%E9%99%90%E9%A2%9D%E4%B8%BA50000%E5%85%83%2A2%E4%BA%BA%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=%E6%B5%8B%E8%AF%95%E5%93%87&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (148, '6', '2021-01-30 17:23:59:043', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=4&log_type=1结果：成功');
INSERT INTO `zh_logs` VALUES (149, '6', '2021-01-30 17:24:05:631', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：成功');
INSERT INTO `zh_logs` VALUES (150, '6', '2021-01-30 17:24:17:656', 25, '2886795265', '杜兆森', '初级审核统筹单related_id=2021013000001&type=1&status=6&log_type=4结果：成功');
INSERT INTO `zh_logs` VALUES (151, '1', '2021-01-30 17:29:32:512', 6, '2886795265', '杜兆森', '添加菜单pid=29&name=%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (152, '2', '2021-01-30 17:29:58:619', 7, '2886795265', '杜兆森', '修改菜单id=52&pid=29&name=%E5%AE%A1%E6%A0%B8%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (153, '1', '2021-01-30 17:30:40:395', 6, '2886795265', '杜兆森', '添加菜单pid=31&name=%E5%AE%A1%E6%A0%B8%E9%A1%B5&folder=Endorsements&action=endorsements%2FreviewInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (154, '7', '2021-01-31 14:01:02:842', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (155, '7', '2021-02-01 08:36:28:694', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (156, '6', '2021-02-01 09:11:02:681', 25, '2886795265', '杜兆森', '审核统筹单related_id=2021010900002&type=1&status=2&log_type=7结果：成功');
INSERT INTO `zh_logs` VALUES (157, '6', '2021-02-01 09:12:19:253', 25, '2886795265', '杜兆森', '审核统筹单related_id=2021013000001&type=1&status=2&log_type=7结果：成功');
INSERT INTO `zh_logs` VALUES (158, '6', '2021-02-01 09:18:06:871', 25, '2886795265', '杜兆森', '审核统筹单related_id=P2021011200001&type=1&status=2&log_type=7结果：成功');
INSERT INTO `zh_logs` VALUES (159, '6', '2021-02-01 09:18:54:375', 25, '2886795265', '杜兆森', '审核统筹单related_id=P2021011200001&type=2&status=1&log_type=7结果：成功');
INSERT INTO `zh_logs` VALUES (160, '1', '2021-02-01 13:42:13:157', 11, '2886795265', 'duzhaosen', '添加角色name=%E7%AE%A1%E7%90%86%E5%91%98&type=1&admin=2&powers=&salesman=1结果：成功');
INSERT INTO `zh_logs` VALUES (161, '2', '2021-02-01 13:45:19:939', 9, '2886795265', 'duzhaosen', '修改组织id=1&source=1&name=%E6%80%BB%E9%83%A8结果：成功');
INSERT INTO `zh_logs` VALUES (162, '2', '2021-02-01 13:49:43:756', 10, '2886795265', 'duzhaosen', '修改用户id=800001&username=duzhaosen&roles=3&phone=19903211962&sex=1&identity=130121199501123410&name=%E6%9D%9C%E5%85%86%E6%A3%AE&pinyin_name=duzhaosen&structure=1&salesman=2&manager=1&city=130000结果：成功');
INSERT INTO `zh_logs` VALUES (163, '7', '2021-02-01 13:53:43:344', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (164, '2', '2021-02-01 13:54:59:116', 7, '2886795265', '杜兆森', '修改菜单id=41&pid=39&name=%E8%B4%A2%E5%8A%A1%E6%9F%A5%E8%AF%A2%EF%BC%88%E7%BB%9F%E7%AD%B9%E5%8D%95%EF%BC%89&folder=Financial&action=overall%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (165, '2', '2021-02-01 13:56:23:457', 7, '2886795265', '杜兆森', '修改菜单id=50&pid=48&name=%E4%BA%8C%E7%BA%A7%E5%AE%A1%E6%A0%B8%EF%BC%88%E7%BB%9F%E7%AD%B9%E5%8D%95%EF%BC%89&folder=Review&action=secondary%2Foverall&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (166, '2', '2021-02-01 13:57:08:385', 7, '2886795265', '杜兆森', '修改菜单id=53&pid=52&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=warehousing%2Fwarehousing&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (167, '2', '2021-02-01 13:57:34:818', 7, '2886795265', '杜兆森', '修改菜单id=54&pid=52&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=issued%2Fissued&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (168, '2', '2021-02-01 13:57:46:378', 7, '2886795265', '杜兆森', '修改菜单id=55&pid=52&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=recycle%2Frecycle&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (169, '2', '2021-02-01 13:59:34:949', 7, '2886795265', '杜兆森', '修改菜单id=57&pid=56&name=%E6%8A%A5%E6%A1%88%E4%B8%AD%E5%BF%83&folder=Overallcompensation&action=report%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (170, '2', '2021-02-01 14:00:20:846', 7, '2886795265', '杜兆森', '修改菜单id=58&pid=56&name=%E6%9F%A5%E5%8B%98%E4%B8%AD%E5%BF%83&folder=Overallcompensation&action=survey%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (171, '1', '2021-02-01 14:01:38:599', 6, '2886795265', '杜兆森', '添加菜单pid=24&name=%E5%AF%86%E7%A0%81%E4%BF%AE%E6%94%B9&folder=System&action=Pass%2Fedit&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (172, '1', '2021-02-01 14:02:05:281', 6, '2886795265', '杜兆森', '添加菜单pid=24&name=%E6%97%A5%E5%BF%97%E7%AE%A1%E7%90%86&folder=System&action=logs%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (173, '1', '2021-02-01 14:02:23:224', 6, '2886795265', '杜兆森', '添加菜单pid=24&name=%E9%AA%8C%E8%BD%A6%E7%A0%81&folder=System&action=carcode%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (174, '1', '2021-02-01 14:08:52:076', 11, '2886795265', '杜兆森', '添加角色name=%E6%8A%A5%E4%BB%B7%E5%8D%95&type=1&powers=30%2C31%2C34%2C35%2C33&admin=1&salesman=1结果：成功');
INSERT INTO `zh_logs` VALUES (175, '1', '2021-02-01 14:09:37:793', 10, '2886795265', '杜兆森', '添加用户username=jingban&passwd=70bc419990b6bc19fc89f2ec3a470af7&roles=4&phone=19903211962&sex=1&identity=130121199501123411&name=%E7%BB%8F%E5%8A%9E&pinyin_name=jingban&structure=1&salesman=2&manager=1&city=130000结果：成功');
INSERT INTO `zh_logs` VALUES (176, '1', '2021-02-01 14:10:22:868', 10, '2886795265', '杜兆森', '添加用户username=baojia&passwd=70bc419990b6bc19fc89f2ec3a470af7&roles=4&phone=19903211962&sex=1&identity=130121199501123412&name=%E6%8A%A5%E4%BB%B7%E4%BA%BA&pinyin_name=baojia&structure=1&salesman=1&manager=2&city=130000&manager_id=800002结果：成功');
INSERT INTO `zh_logs` VALUES (177, '1', '2021-02-01 14:15:54:601', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=dkfj42&start_time=2021%2F02%2F02&end_time=2022%2F02%2F01&car_name=%E6%8A%A5%E4%BB%B7%E4%BA%BA&plate_type=2&color=1&engine=dflkakfja&label_signal=fjjrfe&registered_time=2020-11-01&age=10&transfer=1&new_price=230000&actual_price=223333&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=34&curb_quality=33&vehicle_inspection=1&reason=%E4%B8%9C%E6%96%B9%E5%8D%A1%E6%8B%89%E6%96%AF%E7%A7%91%E8%80%81%E5%85%AC&participate_city=130000&last_year_status=%E6%9D%9C%E5%AF%8C%E5%9B%BD&year_indemnity=2&continuous_non_risk=2&continuous_year=3&danger_total=4&discount=34&coefficient=0.34&remarks=%E4%B8%9C%E6%96%B9%E5%BD%92%E5%B1%9E%E6%84%9F&rating=2&date_time=365&short_term_coefficient=1&vehicle_loss=vehicle_loss&vehicle_loss_money=8000.44&vehicle_loss_standard=7000&vehicle_loss_discount=23&vehicle_loss_payable=1610.00&vehicle_third_discount=23&car_driver_discount=23&seat=3&car_passenger_discount=23&car_goods_discount=23&benchmarking=7000&total_discount=23&total_planning=1610结果：成功');
INSERT INTO `zh_logs` VALUES (178, '1', '2021-02-01 14:22:38:876', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&start_time=2021%2F02%2F02&end_time=2022%2F02%2F01&car_name=%E6%9D%9C&plate_type=2&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021-02-01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=3&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86%E5%9C%B0%E6%96%B9&participate_city=130000&last_year_status=2&year_indemnity=3&continuous_non_risk=23&continuous_year=3&danger_total=2&discount=23&coefficient=0.34&remarks=6074651676&rating=2&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third_discount=89&car_driver=car_driver&car_driver_money=130000&car_driver_standard=80000&car_driver_discount=89&car_driver_payable=71200.00&seat=2&car_passenger_discount=89&car_goods_discount=89&benchmarking=80000&total_discount=89&total_planning=71200结果：成功');
INSERT INTO `zh_logs` VALUES (179, '1', '2021-02-01 14:40:00:366', 6, '2886795265', '杜兆森', '添加菜单pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Quotation&action=quotation%2Fedit&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (180, '2', '2021-02-01 14:40:12:936', 7, '2886795265', '杜兆森', '修改菜单id=70&pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Quotation&action=quotation%2Fedit&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (181, '1', '2021-02-01 14:41:11:650', 6, '2886795265', '杜兆森', '添加菜单pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E5%A4%8D%E5%88%B6&folder=Quotation&action=quotation%2Fcopy&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (182, '4', '2021-02-01 16:25:19:704', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F34adced0f5789a43556d585879b5d55d.jpg&id=1');
INSERT INTO `zh_logs` VALUES (183, '4', '2021-02-01 16:25:19:802', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F40a19e31e7531b3cee07f441479bb494.jpg&id=2');
INSERT INTO `zh_logs` VALUES (184, '4', '2021-02-01 16:25:19:884', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2Fc762119edd0b226b6e84c594d9ef0302.jpg&id=3');
INSERT INTO `zh_logs` VALUES (185, '4', '2021-02-01 16:25:36:063', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2Ffe6a5f85918c32036d9c0a6e2aadf7cc.jpg&id=4');
INSERT INTO `zh_logs` VALUES (186, '4', '2021-02-01 16:25:36:193', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2Fce64330e224bda9bf6daea9292e74223.jpg&id=5');
INSERT INTO `zh_logs` VALUES (187, '4', '2021-02-01 16:25:36:323', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2F1dec47494bdb861de2eea2bce6f66b19.jpg&id=6');
INSERT INTO `zh_logs` VALUES (188, '4', '2021-02-01 16:54:49:318', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2Fa0572b43d45973f67ee1a312065916b5.jpg&id=7');
INSERT INTO `zh_logs` VALUES (189, '4', '2021-02-01 16:54:49:397', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F5b58cdd62a627ae0140fa469c9bad369.jpg&id=8');
INSERT INTO `zh_logs` VALUES (190, '4', '2021-02-01 16:54:49:476', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F03814496e41b4712fee32e49270155a7.jpg&id=9');
INSERT INTO `zh_logs` VALUES (191, '1', '2021-02-01 16:54:52:346', 2, '2886795265', '杜兆森', '添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&temporary_id=2021020100002&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F02%2F01&traffic_end_time=2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F02%2F01&age=2&transfer=2&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825.00&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825.00&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=2&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=324234&invoice_bank=34234&invoice_account=234&invoice_open_address=23243&invoice_phone=234&invoice_remarks=234&description=sdfasfdaf&overall_id=ZH2021000000001&status=3结果：失败');
INSERT INTO `zh_logs` VALUES (192, '1', '2021-02-01 17:14:44:819', 2, '2886795265', '杜兆森', '添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&temporary_id=2021020100002&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F02%2F01&traffic_end_time=2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F02%2F01&age=2&transfer=2&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825.00&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825.00&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=2&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=324234&invoice_bank=34234&invoice_account=234&invoice_open_address=23243&invoice_phone=234&invoice_remarks=234&description=sdfasfdaf&overall_id=ZH2021000000020&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (193, '7', '2021-02-02 09:42:14:896', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (194, '1', '2021-02-02 09:45:25:624', 6, '2886795265', '杜兆森', '添加菜单pid=49&name=%E5%88%9D%E7%BA%A7%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Review&action=primary%2Finfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (195, '6', '2021-02-02 09:45:34:576', 25, '2886795265', '杜兆森', '审核统筹单related_id=2021020100002&type=1&status=4&log_type=1结果：成功');
INSERT INTO `zh_logs` VALUES (196, '1', '2021-02-02 09:46:42:827', 6, '2886795265', '杜兆森', '添加菜单pid=50&name=%E4%BA%8C%E7%BA%A7%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Review&action=secondary%2FoverallInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (197, '6', '2021-02-02 09:49:27:925', 25, '2886795265', '杜兆森', '审核统筹单related_id=2021020100002&type=1&status=5&log_type=3结果：成功');
INSERT INTO `zh_logs` VALUES (198, '1', '2021-02-02 09:51:15:163', 6, '2886795265', '杜兆森', '添加菜单pid=40&name=%E8%B4%A2%E5%8A%A1%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (199, '6', '2021-02-02 09:51:23:606', 25, '2886795265', '杜兆森', '审核统筹单related_id=2021020100002&type=1&status=6&log_type=4结果：成功');
INSERT INTO `zh_logs` VALUES (200, '1', '2021-02-02 09:52:23:198', 49, '2886795265', '杜兆森', '添加单证入库s_num=00001&e_num=00010&total=10&type=1结果：成功');
INSERT INTO `zh_logs` VALUES (201, '1', '2021-02-02 09:52:38:850', 50, '2886795265', '杜兆森', '添加单证下发issued_structure=1&issued_user=800001&issued_type=1&issued_s_num=00001&issued_e_num=00006&issued_total=6&add_id=0202095223结果：成功');
INSERT INTO `zh_logs` VALUES (202, '2', '2021-02-02 09:52:51:718', 1, '2886795265', '杜兆森', '打印documents_id=00001&related_id=2021020100002&issued_type=1&issued_id=02095238结果：成功');
INSERT INTO `zh_logs` VALUES (203, '1', '2021-02-02 09:54:22:387', 6, '2886795265', '杜兆森', '添加菜单pid=46&name=%E5%85%A8%E5%8D%95%E6%89%B9%E6%94%B9%E8%AF%A6%E6%83%85&folder=Endorsements&action=fullorder%2Fendorsements&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (204, '1', '2021-02-02 10:00:21:220', 15, '2886795265', '杜兆森', '添加批单overall_id=ZH2021000000020&temporary_id=2021020100002&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F02%2F01&financial_review_user=%E6%9D%9C%E5%85%86%E6%A3%AE&documents_id=00001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F02%2F01&traffic_end_time=+2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F01%2F01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion=combustion&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdfasfdafdfaf+&p_temporary_id=P2021020200001&endorsements_id=ZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (205, '7', '2021-02-02 16:31:56:704', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (206, '1', '2021-02-02 16:46:34:421', 15, '2886795265', '杜兆森', '添加批单overall_id=ZH2021000000020&temporary_id=2021020100002&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F02%2F01&financial_review_user=%E6%9D%9C%E5%85%86%E6%A3%AE&documents_id=00001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F02%2F01&traffic_end_time=+2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F01%2F01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion=combustion&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdfasfdaf&p_temporary_id=P2021020200001&endorsements_id=PZH2021000000001&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (207, '7', '2021-02-03 09:57:27:454', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (208, '1', '2021-02-03 09:57:47:293', 15, '2886795265', '杜兆森', '添加批单overall_id=ZH2021000000020&temporary_id=2021020100002&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F02%2F01&financial_review_user=%E6%9D%9C%E5%85%86%E6%A3%AE&documents_id=00001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F02%2F01&traffic_end_time=+2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F01%2F01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion=combustion&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdfasfdaf&p_temporary_id=P2021020300001&endorsements_id=PZH2021000000001&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (209, '1', '2021-02-03 09:59:36:607', 6, '2886795265', '杜兆森', '添加菜单pid=47&name=%E6%89%B9%E5%8D%95%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Endorsements&action=endorsements%2Fview&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (210, '1', '2021-02-03 10:00:26:695', 6, '2886795265', '杜兆森', '添加菜单pid=47&name=%E6%89%B9%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Endorsements&action=%2Ffullorder%2FeditEndorsements&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (211, '2', '2021-02-03 10:00:54:758', 7, '2886795265', '杜兆森', '修改菜单id=77&pid=47&name=%E6%89%B9%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Endorsements&action=fullorder%2FeditEndorsements&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (212, '1', '2021-02-03 10:02:09:047', 6, '2886795265', '杜兆森', '添加菜单pid=57&name=%E6%8A%A5%E6%A1%88%E4%B8%AD%E5%BF%83%E6%B7%BB%E5%8A%A0&folder=Overallcompensation&action=report%2Fadd&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (213, '1', '2021-02-03 10:25:22:852', 37, '2886795265', '杜兆森', '添加报案单report_id=BA2021020001&overall_id=ZH2021000000020&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&coordinated_name=%E6%9D%9C&nuclear_system_time=1612230567&end_time=1635696000&report_user=%E6%9D%9C%E5%85%86%E6%A3%AE&report_time=1612281600&out_danger_time=1612281600&accident_situation=1&human_injury=2&driver=%E6%9D%9C&way_type=1&phone=19903211962&risk_location=130104&address=sdfjkaf+&description=sdfajkfdja&survey_agency=2&survey_user=201&survey_phone=18632149540&survey_remarks=kjafakfkaf&report_type=1结果：成功');
INSERT INTO `zh_logs` VALUES (214, '1', '2021-02-03 10:28:14:408', 6, '2886795265', '杜兆森', '添加菜单pid=58&name=%E6%9F%A5%E5%8B%98%E5%BD%95%E5%85%A5&folder=Overallcompensation&action=survey%2Fadd&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (215, '7', '2021-02-03 15:03:45:293', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (216, '1', '2021-02-03 15:04:54:016', 6, '2886795265', '杜兆森', '添加菜单name=%E9%A6%96%E9%A1%B5&folder=Index&action=index%2Findex&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (217, '2', '2021-02-03 15:05:55:405', 7, '2886795265', '杜兆森', '修改菜单id=80&name=%E9%A6%96%E9%A1%B5&folder=Index&action=index&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (218, '7', '2021-02-04 08:35:37:910', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (219, '1', '2021-02-04 08:38:19:365', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (220, '1', '2021-02-04 08:46:14:873', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (221, '1', '2021-02-04 08:47:24:857', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (222, '1', '2021-02-04 08:54:15:436', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (223, '1', '2021-02-04 08:55:22:581', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (224, '1', '2021-02-04 08:55:29:239', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：失败');
INSERT INTO `zh_logs` VALUES (225, '1', '2021-02-04 08:56:26:767', 18, '2886795265', '杜兆森', '添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-04&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=fsdf1f3&start_time=2021%2F02%2F05&end_time=2021%2F09%2F04&car_name=d&plate_type=1&color=1&engine=qf3&label_signal=dsfq&registered_time=2021-02-04&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=33&curb_quality=34&vehicle_inspection=1&reason=ff&participate_city=130000&last_year_status=3&year_indemnity=4&continuous_non_risk=1&continuous_year=1&danger_total=3&discount=34&coefficient=0.33&remarks=43&rating=4&date_time=212&short_term_coefficient=0.58&vehicle_loss=vehicle_loss&vehicle_loss_money=130000&vehicle_loss_standard=124444.44&vehicle_loss_discount=23&vehicle_loss_payable=16600.89&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&benchmarking=124444.44&total_discount=23&total_planning=16600.89结果：成功');
INSERT INTO `zh_logs` VALUES (226, '3', '2021-02-04 09:03:04:733', 21, '2886795265', '杜兆森', '删除报价单:id=BJ20210200001结果：失败');
INSERT INTO `zh_logs` VALUES (227, '3', '2021-02-04 09:05:10:413', 21, '2886795265', '杜兆森', '删除报价单:id=BJ20210200001结果：失败');
INSERT INTO `zh_logs` VALUES (228, '3', '2021-02-04 09:07:06:440', 21, '2886795265', '杜兆森', '删除报价单:id=BJ20210200002结果：失败');
INSERT INTO `zh_logs` VALUES (229, '3', '2021-02-04 09:09:05:776', 21, '2886795265', '杜兆森', '删除报价单:id=BJ20210200002结果：成功');
INSERT INTO `zh_logs` VALUES (230, '1', '2021-02-04 11:22:42:137', 6, '2886795265', '杜兆森', '添加菜单pid=36&name=%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Overall&action=overall%2Fedit&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (231, '1', '2021-02-04 11:23:00:563', 6, '2886795265', '杜兆森', '添加菜单pid=36&name=%E7%BB%9F%E7%AD%B9%E5%8D%95%E5%A4%8D%E5%88%B6&folder=Overall&action=overall%2Fcopy&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (232, '1', '2021-02-04 11:23:33:173', 6, '2886795265', '杜兆森', '添加菜单pid=36&name=%E7%BB%9F%E7%AD%B9%E5%8D%95%E6%9F%A5%E7%9C%8B%E8%AF%A6%E6%83%85&folder=Overall&action=overall%2Fview&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (233, '1', '2021-02-04 11:23:56:436', 6, '2886795265', '杜兆森', '添加菜单pid=36&name=%E7%BB%9F%E7%AD%B9%E5%8D%95%E6%89%93%E5%8D%B0&folder=Overall&action=overall%2FoverallPdf&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (234, '1', '2021-02-04 11:29:05:103', 6, '2886795265', '杜兆森', '添加菜单pid=42&name=%E8%B4%A2%E5%8A%A1%E5%AE%A1%E6%A0%B8%EF%BC%88%E6%89%B9%E5%8D%95%EF%BC%89%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Financial&action=endorsements%2FreviewInfo&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (235, '7', '2021-02-04 13:36:11:879', 33, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (236, '1', '2021-02-04 13:37:01:043', 6, '2886795265', '杜兆森', '添加菜单pid=51&name=%E4%BA%8C%E7%BA%A7%E5%AE%A1%E6%A0%B8%EF%BC%88%E6%89%B9%E5%8D%95%EF%BC%89%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Review&action=secondary%2Fendorsements&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (237, '1', '2021-02-04 13:40:42:402', 6, '2886795265', '杜兆森', '添加菜单pid=57&name=%E6%8A%A5%E6%A1%88%E4%B8%AD%E5%BF%83%E4%BF%AE%E6%94%B9&folder=Overallcompensation&action=report%2Fedit&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (238, '1', '2021-02-04 13:41:10:943', 6, '2886795265', '杜兆森', '添加菜单pid=57&name=%E6%8A%A5%E6%A1%88%E4%B8%AD%E5%BF%83%E6%9F%A5%E7%9C%8B&folder=Overallcompensation&action=report%2Fview&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (239, '1', '2021-02-04 13:45:45:390', 6, '2886795265', '杜兆森', '添加菜单pid=28&name=%E6%B7%BB%E5%8A%A0%E4%BA%BA%E5%91%98&folder=User&action=user%2FaddUser&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (240, '1', '2021-02-04 13:46:00:877', 6, '2886795265', '杜兆森', '添加菜单pid=28&name=%E4%BF%AE%E6%94%B9%E4%BA%BA%E5%91%98&folder=User&action=user%2FeditUser&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (241, '1', '2021-02-04 13:52:49:014', 6, '2886795265', '杜兆森', '添加菜单pid=25&name=%E8%8F%9C%E5%8D%95%E4%BF%AE%E6%94%B9&folder=System&action=menu%2Fedit&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (242, '2', '2021-02-04 15:10:51:309', 91, '2886795265', '杜兆森', '菜单排序id=36&sort=2结果：成功');
INSERT INTO `zh_logs` VALUES (243, '2', '2021-02-04 15:11:22:963', 91, '2886795265', '杜兆森', '菜单排序id=39&sort=3结果：成功');
INSERT INTO `zh_logs` VALUES (244, '2', '2021-02-04 15:11:36:691', 91, '2886795265', '杜兆森', '菜单排序id=44&sort=4结果：成功');
INSERT INTO `zh_logs` VALUES (245, '2', '2021-02-04 15:11:48:183', 91, '2886795265', '杜兆森', '菜单排序id=48&sort=5结果：成功');
INSERT INTO `zh_logs` VALUES (246, '2', '2021-02-04 15:12:06:790', 91, '2886795265', '杜兆森', '菜单排序id=52&sort=6结果：成功');
INSERT INTO `zh_logs` VALUES (247, '2', '2021-02-04 15:12:18:965', 91, '2886795265', '杜兆森', '菜单排序id=56&sort=7结果：成功');
INSERT INTO `zh_logs` VALUES (248, '2', '2021-02-04 15:12:28:807', 91, '2886795265', '杜兆森', '菜单排序id=59&sort=8结果：成功');
INSERT INTO `zh_logs` VALUES (249, '2', '2021-02-04 15:12:42:235', 91, '2886795265', '杜兆森', '菜单排序id=64&sort=9结果：成功');
INSERT INTO `zh_logs` VALUES (250, '2', '2021-02-04 15:12:54:945', 91, '2886795265', '杜兆森', '菜单排序id=26&sort=10结果：成功');
INSERT INTO `zh_logs` VALUES (251, '2', '2021-02-04 15:13:07:577', 91, '2886795265', '杜兆森', '菜单排序id=24&sort=11结果：成功');
INSERT INTO `zh_logs` VALUES (252, '4', '2021-02-04 15:30:19:505', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F9a32796e9751510aeb7b3332f2e3acbd.jpg&id=19');
INSERT INTO `zh_logs` VALUES (253, '4', '2021-02-04 15:31:04:075', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F45ce1b5454cecddd52a3b1941598ddc1.jpg&id=20');
INSERT INTO `zh_logs` VALUES (254, '4', '2021-02-04 15:33:27:597', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F128d56b0dffcd60e8d150a9d8a64e1ab.jpg&id=21');
INSERT INTO `zh_logs` VALUES (255, '4', '2021-02-04 16:37:02:340', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F02e4bb8d7b5074ac32e7cf09371969f9.jpg&id=22');
INSERT INTO `zh_logs` VALUES (256, '4', '2021-02-04 16:38:30:519', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F7f265bf359be471c0341dc8d141b2fc3.jpg&id=23');
INSERT INTO `zh_logs` VALUES (257, '4', '2021-02-04 16:44:00:251', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F6faac67c8ed266dc70e745f7ded24ae8.jpg&id=24');
INSERT INTO `zh_logs` VALUES (258, '4', '2021-02-04 16:45:57:474', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F7d15a924832b6440d1f8110324de24c4.jpg&id=25');
INSERT INTO `zh_logs` VALUES (259, '4', '2021-02-04 16:46:44:118', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F6ac8a5643fc2191d30397991de9c2f80.jpg&id=26');
INSERT INTO `zh_logs` VALUES (260, '4', '2021-02-04 16:48:13:401', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F08b63947ab5f7b52cc3b99cf564d66e4.jpg&id=27');
INSERT INTO `zh_logs` VALUES (261, '4', '2021-02-04 16:52:01:621', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F168c7d92808cbc01ff7a1be93ad94bbe.jpg&id=28');
INSERT INTO `zh_logs` VALUES (262, '4', '2021-02-04 16:52:29:347', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F64ef73cec359bc9cdf7043e684117393.jpg&id=29');
INSERT INTO `zh_logs` VALUES (263, '4', '2021-02-04 16:52:37:198', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2Fe31edaf884e8f5165a06b695d7268052.jpg&id=30');
INSERT INTO `zh_logs` VALUES (264, '4', '2021-02-04 16:52:42:426', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F8439712a5429fd5330242a0a8aa5fe08.jpg&id=31');
INSERT INTO `zh_logs` VALUES (265, '4', '2021-02-04 16:52:49:614', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2Fda68991f9417f193d643c4784435752f.jpg&id=32');
INSERT INTO `zh_logs` VALUES (266, '4', '2021-02-04 16:57:34:853', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F4c75e9c0fe37ed499ea9740c4e90db44.jpg&id=33');
INSERT INTO `zh_logs` VALUES (267, '4', '2021-02-04 16:57:46:431', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2Fa62ece4c9b9b8e0c08c524e5d0c6dcb5.jpg&id=34');
INSERT INTO `zh_logs` VALUES (268, '4', '2021-02-04 16:58:20:412', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2Fcd583542896d671cca2bc75a9f5fd973.jpg&id=35');
INSERT INTO `zh_logs` VALUES (269, '4', '2021-02-04 16:59:23:818', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F8ff6b0d9bc4173ef7a88dbc1edacafbd.jpg&id=36');
INSERT INTO `zh_logs` VALUES (270, '4', '2021-02-04 17:04:37:562', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F36436173e8b2bb4728f86aeffe8b8cc1.jpg&id=37');
INSERT INTO `zh_logs` VALUES (271, '4', '2021-02-04 17:12:06:589', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2F5fa9f1eda2a72ebf3ba2fc6b4a1dd99e.jpg&id=38');
INSERT INTO `zh_logs` VALUES (272, '4', '2021-02-04 17:12:18:250', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210204%2Fae4456e64454a0459833537891649c26.png&id=39');
INSERT INTO `zh_logs` VALUES (273, '4', '2021-02-04 17:12:34:027', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210204%2F040923c85f0c3c453d69eddec38b42e9.png&id=40');
INSERT INTO `zh_logs` VALUES (274, '4', '2021-02-04 17:49:14:153', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210204%2F81937d942d21b6af728209668cda4cf0.jpg&id=41');
INSERT INTO `zh_logs` VALUES (275, '7', '2021-02-05 08:32:42:425', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (276, '3', '2021-02-05 08:34:58:176', 0, '2886795265', '杜兆森', '删除文件id-41结果：成功');
INSERT INTO `zh_logs` VALUES (277, '4', '2021-02-05 08:35:05:945', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F7eff250dd6e886c8ae855d78ea44a9d8.png&id=42');
INSERT INTO `zh_logs` VALUES (278, '3', '2021-02-05 08:35:22:266', 0, '2886795265', '杜兆森', '删除文件id-41结果：成功');
INSERT INTO `zh_logs` VALUES (279, '4', '2021-02-05 08:35:28:467', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2Fa63f7e77b6be18675ce0e2318a978a37.png&id=43');
INSERT INTO `zh_logs` VALUES (280, '3', '2021-02-05 08:37:22:268', 0, '2886795265', '杜兆森', '删除文件id-43结果：成功');
INSERT INTO `zh_logs` VALUES (281, '3', '2021-02-05 08:42:46:767', 0, '2886795265', '杜兆森', '删除文件id-42结果：成功');
INSERT INTO `zh_logs` VALUES (282, '3', '2021-02-05 08:43:49:257', 0, '2886795265', '杜兆森', '删除文件id-39结果：成功');
INSERT INTO `zh_logs` VALUES (283, '3', '2021-02-05 08:44:04:199', 0, '2886795265', '杜兆森', '删除文件id-37结果：成功');
INSERT INTO `zh_logs` VALUES (284, '3', '2021-02-05 08:44:24:607', 0, '2886795265', '杜兆森', '删除文件id-21结果：成功');
INSERT INTO `zh_logs` VALUES (285, '3', '2021-02-05 08:44:50:141', 0, '2886795265', '杜兆森', '删除文件id-19结果：成功');
INSERT INTO `zh_logs` VALUES (286, '3', '2021-02-05 08:45:10:573', 0, '2886795265', '杜兆森', '删除文件id-20结果：成功');
INSERT INTO `zh_logs` VALUES (287, '3', '2021-02-05 08:49:48:291', 0, '2886795265', '杜兆森', '删除文件id-32结果：成功');
INSERT INTO `zh_logs` VALUES (288, '3', '2021-02-05 08:50:11:552', 0, '2886795265', '杜兆森', '删除文件id-27结果：成功');
INSERT INTO `zh_logs` VALUES (289, '3', '2021-02-05 08:50:47:237', 0, '2886795265', '杜兆森', '删除文件id-26结果：成功');
INSERT INTO `zh_logs` VALUES (290, '3', '2021-02-05 08:51:38:743', 0, '2886795265', '杜兆森', '删除文件id-22结果：成功');
INSERT INTO `zh_logs` VALUES (291, '3', '2021-02-05 08:52:46:103', 0, '2886795265', '杜兆森', '删除文件id-23结果：成功');
INSERT INTO `zh_logs` VALUES (292, '3', '2021-02-05 08:54:51:612', 0, '2886795265', '杜兆森', '删除文件id-24结果：成功');
INSERT INTO `zh_logs` VALUES (293, '3', '2021-02-05 08:56:44:821', 0, '2886795265', '杜兆森', '删除文件id-25结果：成功');
INSERT INTO `zh_logs` VALUES (294, '3', '2021-02-05 08:57:27:980', 0, '2886795265', '杜兆森', '删除文件id-28结果：成功');
INSERT INTO `zh_logs` VALUES (295, '3', '2021-02-05 08:59:44:845', 0, '2886795265', '杜兆森', '删除文件id-38结果：成功');
INSERT INTO `zh_logs` VALUES (296, '4', '2021-02-05 08:59:51:573', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fe1f3928f00f4729878d4c7482aaf2394.jpg&id=44');
INSERT INTO `zh_logs` VALUES (297, '4', '2021-02-05 09:00:01:252', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fc9f05f3146252560f7e4cf667dbcc5d0.jpg&id=45');
INSERT INTO `zh_logs` VALUES (298, '3', '2021-02-05 09:00:06:999', 0, '2886795265', '杜兆森', '删除文件id-44结果：成功');
INSERT INTO `zh_logs` VALUES (299, '4', '2021-02-05 09:00:12:070', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F38202ee20add3f32a78d86e2df83321a.jpg&id=46');
INSERT INTO `zh_logs` VALUES (300, '3', '2021-02-05 09:04:39:863', 0, '2886795265', '杜兆森', '删除文件id-46结果：成功');
INSERT INTO `zh_logs` VALUES (301, '4', '2021-02-05 09:04:42:826', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fc8bada5b6ba7c2f280fbfb2f21cbf8c8.jpg&id=47');
INSERT INTO `zh_logs` VALUES (302, '3', '2021-02-05 09:06:23:719', 0, '2886795265', '杜兆森', '删除文件id-47结果：成功');
INSERT INTO `zh_logs` VALUES (303, '4', '2021-02-05 09:06:29:538', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Ff20694deecf84f73ade786e86f831bb5.jpg&id=48');
INSERT INTO `zh_logs` VALUES (304, '3', '2021-02-05 09:08:52:749', 0, '2886795265', '杜兆森', '删除文件id-48结果：成功');
INSERT INTO `zh_logs` VALUES (305, '4', '2021-02-05 09:09:07:100', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fe8ba797712e4a70b4e87b9c5d064c0fa.jpg&id=49');
INSERT INTO `zh_logs` VALUES (306, '3', '2021-02-05 09:10:15:351', 0, '2886795265', '杜兆森', '删除文件id-49结果：成功');
INSERT INTO `zh_logs` VALUES (307, '4', '2021-02-05 09:10:27:275', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F64c9b68428f57f9f9cb30620a439b966.jpg&id=50');
INSERT INTO `zh_logs` VALUES (308, '3', '2021-02-05 09:11:19:179', 0, '2886795265', '杜兆森', '删除文件id-50结果：成功');
INSERT INTO `zh_logs` VALUES (309, '4', '2021-02-05 09:11:24:014', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F5bc73046a934f4d1a7855e831dfab09b.jpg&id=51');
INSERT INTO `zh_logs` VALUES (310, '4', '2021-02-05 09:12:20:134', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F99fce91671c51e2128303c38a56f848d.jpg&id=52');
INSERT INTO `zh_logs` VALUES (311, '4', '2021-02-05 09:12:23:539', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F49aedfc8d26196d8a1fa899a6f777d15.jpg&id=53');
INSERT INTO `zh_logs` VALUES (312, '3', '2021-02-05 09:12:26:473', 0, '2886795265', '杜兆森', '删除文件id-52结果：成功');
INSERT INTO `zh_logs` VALUES (313, '4', '2021-02-05 09:12:30:263', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F1adffda21a9151291eb07e0f0c9f4f2f.jpg&id=54');
INSERT INTO `zh_logs` VALUES (314, '3', '2021-02-05 09:12:43:267', 0, '2886795265', '杜兆森', '删除文件id-52结果：成功');
INSERT INTO `zh_logs` VALUES (315, '4', '2021-02-05 09:12:46:725', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fbd6db3270b81a4e167b4f01d339ef434.png&id=55');
INSERT INTO `zh_logs` VALUES (316, '3', '2021-02-05 09:16:09:403', 0, '2886795265', '杜兆森', '删除文件id-51结果：成功');
INSERT INTO `zh_logs` VALUES (317, '3', '2021-02-05 09:17:12:510', 0, '2886795265', '杜兆森', '删除文件id-45结果：成功');
INSERT INTO `zh_logs` VALUES (318, '4', '2021-02-05 09:18:13:665', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fe774b929fc5b43aa31e49f08b47d2488.jpg&id=56');
INSERT INTO `zh_logs` VALUES (319, '3', '2021-02-05 09:18:52:179', 0, '2886795265', '杜兆森', '删除文件id-29结果：成功');
INSERT INTO `zh_logs` VALUES (320, '4', '2021-02-05 09:19:27:368', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F770efdc5356266684d402f0833dee4d2.jpg&id=57');
INSERT INTO `zh_logs` VALUES (321, '3', '2021-02-05 09:20:32:200', 0, '2886795265', '杜兆森', '删除文件id-57结果：成功');
INSERT INTO `zh_logs` VALUES (322, '4', '2021-02-05 09:20:37:146', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F928d325da2e52cee3a0b2fc88cfe4645.jpg&id=58');
INSERT INTO `zh_logs` VALUES (323, '4', '2021-02-05 09:21:43:297', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fff01ac1158cf7618027889cec5a6aa97.png&id=59');
INSERT INTO `zh_logs` VALUES (324, '4', '2021-02-05 09:22:31:930', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fed4216cd819306e0e44768d031df1d7d.png&id=60');
INSERT INTO `zh_logs` VALUES (325, '3', '2021-02-05 09:23:46:035', 0, '2886795265', '杜兆森', '删除文件id-60结果：成功');
INSERT INTO `zh_logs` VALUES (326, '4', '2021-02-05 09:23:48:716', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F78a9a7915fe459e0971e0e25e0076ea6.png&id=61');
INSERT INTO `zh_logs` VALUES (327, '3', '2021-02-05 09:29:13:989', 0, '2886795265', '杜兆森', '删除文件id-53结果：成功');
INSERT INTO `zh_logs` VALUES (328, '4', '2021-02-05 09:29:16:702', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F065d880817e008a677efc3b128090ca0.jpg&id=62');
INSERT INTO `zh_logs` VALUES (329, '3', '2021-02-05 09:30:13:707', 0, '2886795265', '杜兆森', '删除文件id-62结果：成功');
INSERT INTO `zh_logs` VALUES (330, '4', '2021-02-05 09:30:21:938', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F8e5939a06257682add221c3a677c5b2c.jpg&id=63');
INSERT INTO `zh_logs` VALUES (331, '3', '2021-02-05 09:30:33:388', 0, '2886795265', '杜兆森', '删除文件id-undefined结果：失败');
INSERT INTO `zh_logs` VALUES (332, '3', '2021-02-05 09:32:57:329', 0, '2886795265', '杜兆森', '删除文件id-63结果：成功');
INSERT INTO `zh_logs` VALUES (333, '4', '2021-02-05 09:33:00:959', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fee6b1d3fade18a19a6cb917df287b092.jpg&id=64');
INSERT INTO `zh_logs` VALUES (334, '3', '2021-02-05 09:33:10:034', 0, '2886795265', '杜兆森', '删除文件id-64结果：成功');
INSERT INTO `zh_logs` VALUES (335, '4', '2021-02-05 09:33:12:794', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fe48b4956c7d0cd9039a975778d308da1.jpg&id=65');
INSERT INTO `zh_logs` VALUES (336, '4', '2021-02-05 09:36:24:707', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F0acc2f52ae304fff161b03c6d7ef4274.jpg&id=66');
INSERT INTO `zh_logs` VALUES (337, '4', '2021-02-05 09:36:32:004', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2Fe65c5114d385e05b77c489a170cc6d34.jpg&id=67');
INSERT INTO `zh_logs` VALUES (338, '3', '2021-02-05 09:36:36:003', 0, '2886795265', '杜兆森', '删除文件id-66结果：成功');
INSERT INTO `zh_logs` VALUES (339, '4', '2021-02-05 09:36:40:349', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F4296e39a84f1da6a1466a54d179c9a97.png&id=68');
INSERT INTO `zh_logs` VALUES (340, '1', '2021-02-05 09:41:48:657', 37, '2886795265', '杜兆森', '添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&temporary_id=2021020500001&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=2021%2F02%2F05&traffic_end_time=2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830.00&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=1&invoice_name=sdfaf&description=sdafjijakdfjkafd&overall_id=ZH2021000000021&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (341, '6', '2021-02-05 09:42:04:261', 48, '2886795265', '杜兆森', '审核统筹单related_id=2021020500001&type=1&status=2&log_type=2结果：成功');
INSERT INTO `zh_logs` VALUES (342, '3', '2021-02-05 09:42:42:370', 0, '2886795265', '杜兆森', '删除文件id-65结果：成功');
INSERT INTO `zh_logs` VALUES (343, '3', '2021-02-05 11:14:14:788', 0, '2886795265', '杜兆森', '删除文件id-68结果：成功');
INSERT INTO `zh_logs` VALUES (344, '3', '2021-02-05 11:17:35:649', 0, '2886795265', '杜兆森', '删除文件id-55结果：成功');
INSERT INTO `zh_logs` VALUES (345, '4', '2021-02-05 11:26:43:290', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fce39df8a86807f3f99950dd74fa2a04a.png&id=69');
INSERT INTO `zh_logs` VALUES (346, '3', '2021-02-05 11:26:47:816', 0, '2886795265', '杜兆森', '删除文件id-69结果：成功');
INSERT INTO `zh_logs` VALUES (347, '4', '2021-02-05 11:26:51:540', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F1a8ca4b92f3c938a4d8a8b6ca25e43d1.jpg&id=70');
INSERT INTO `zh_logs` VALUES (348, '3', '2021-02-05 11:28:57:347', 0, '2886795265', '杜兆森', '删除文件id-70结果：成功');
INSERT INTO `zh_logs` VALUES (349, '4', '2021-02-05 11:29:00:172', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F2ea8a3340734732f90a88d451905fade.png&id=71');
INSERT INTO `zh_logs` VALUES (350, '3', '2021-02-05 11:37:04:326', 0, '2886795265', '杜兆森', '删除文件id-71结果：成功');
INSERT INTO `zh_logs` VALUES (351, '4', '2021-02-05 11:37:07:019', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fe9ce95d470da20a3d66856c608f9dc22.png&id=72');
INSERT INTO `zh_logs` VALUES (352, '2', '2021-02-05 11:37:16:468', 81, '2886795265', '杜兆森', '修改统筹单id=ZH2021000000021&overall_id=ZH2021000000021&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&temporary_id=2021020500001&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (353, '7', '2021-02-05 13:33:22:946', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (354, '3', '2021-02-05 13:48:24:689', 0, '2886795265', '杜兆森', '删除文件id-18结果：成功');
INSERT INTO `zh_logs` VALUES (355, '3', '2021-02-05 13:48:33:875', 0, '2886795265', '杜兆森', '删除文件id-17结果：成功');
INSERT INTO `zh_logs` VALUES (356, '3', '2021-02-05 13:49:49:955', 0, '2886795265', '杜兆森', '删除文件id-16结果：成功');
INSERT INTO `zh_logs` VALUES (357, '4', '2021-02-05 13:50:35:434', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fa4739075dc5021c21134ed9e5e56904b.png&id=73');
INSERT INTO `zh_logs` VALUES (358, '4', '2021-02-05 13:50:38:307', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F3af1d1c7940487136041e0c41cc3899d.jpg&id=74');
INSERT INTO `zh_logs` VALUES (359, '4', '2021-02-05 13:50:54:431', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F3fd2a8d627a3739d6095543aed35af43.png&id=75');
INSERT INTO `zh_logs` VALUES (360, '4', '2021-02-05 13:50:54:605', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F0a21b798d47cc22691fdfc2d843dea8f.png&id=76');
INSERT INTO `zh_logs` VALUES (361, '4', '2021-02-05 13:50:54:757', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2Feac3f94cd7e8a1d7fbc29862b9eee956.png&id=77');
INSERT INTO `zh_logs` VALUES (362, '4', '2021-02-05 13:50:54:911', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F38c458285e30a8ea80bac74f31ffee39.png&id=78');
INSERT INTO `zh_logs` VALUES (363, '3', '2021-02-05 13:50:59:907', 0, '2886795265', '杜兆森', '删除文件id-78结果：成功');
INSERT INTO `zh_logs` VALUES (364, '4', '2021-02-05 13:51:03:615', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F6426f9290083d1392d49e81ce8cac4e2.jpg&id=79');
INSERT INTO `zh_logs` VALUES (365, '4', '2021-02-05 13:52:30:958', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fefc8d290324a93007a9d7f31db0e3b60.png&id=80');
INSERT INTO `zh_logs` VALUES (366, '3', '2021-02-05 13:53:39:190', 0, '2886795265', '杜兆森', '删除文件id-72结果：成功');
INSERT INTO `zh_logs` VALUES (367, '4', '2021-02-05 14:10:33:653', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F268940a110e1b6d9205ee2fd6c49f8d6.png&id=81');
INSERT INTO `zh_logs` VALUES (368, '4', '2021-02-05 14:12:08:531', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F6eda28c97d16ccea5893861a75634ac1.png&id=82');
INSERT INTO `zh_logs` VALUES (369, '4', '2021-02-05 14:12:59:927', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F4de74d593dc0b6dcf931f3051d13b882.png&id=83');
INSERT INTO `zh_logs` VALUES (370, '4', '2021-02-05 14:13:02:664', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F518f0e09cdd3519cef5c1eec74fd5be4.png&id=84');
INSERT INTO `zh_logs` VALUES (371, '1', '2021-02-05 14:13:03:729', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500001&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=ZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (372, '4', '2021-02-05 14:24:06:819', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2Fb17bd5b475be99d83cac2f3d491dc949.png&id=85');
INSERT INTO `zh_logs` VALUES (373, '4', '2021-02-05 14:24:09:335', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fbc61e1bd2dd061ddc3e431349cfa9c3b.png&id=86');
INSERT INTO `zh_logs` VALUES (374, '4', '2021-02-05 14:36:03:232', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F05145381b5261f009e2d4fdfd8db5e26.png&id=87');
INSERT INTO `zh_logs` VALUES (375, '4', '2021-02-05 14:36:06:377', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F33d0e215f95d74665b1d929ae4b1685d.png&id=88');
INSERT INTO `zh_logs` VALUES (376, '4', '2021-02-05 14:37:28:905', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fae2de555ac376dede3ae48b4656423d1.png&id=89');
INSERT INTO `zh_logs` VALUES (377, '4', '2021-02-05 14:41:12:269', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F69bde7151aaf776fd282822b2cb2f875.png&id=90');
INSERT INTO `zh_logs` VALUES (378, '1', '2021-02-05 14:41:17:107', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500002&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=PZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (379, '4', '2021-02-05 14:47:52:488', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2Fa18bfa8e3f0fff39da9c5da47cfe05e5.png&id=91');
INSERT INTO `zh_logs` VALUES (380, '4', '2021-02-05 14:48:17:552', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F08e34d04ab377b6eddfff2063887584e.jpg&id=92');
INSERT INTO `zh_logs` VALUES (381, '1', '2021-02-05 14:48:40:304', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500001&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=PZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (382, '6', '2021-02-05 15:11:10:756', 48, '2886795265', '杜兆森', '审核统筹单related_id=2021020500001&type=1&status=2&log_type=2结果：成功');
INSERT INTO `zh_logs` VALUES (383, '3', '2021-02-05 15:11:35:088', 0, '2886795265', '杜兆森', '删除文件id-54结果：成功');
INSERT INTO `zh_logs` VALUES (384, '3', '2021-02-05 15:11:37:373', 0, '2886795265', '杜兆森', '删除文件id-67结果：成功');
INSERT INTO `zh_logs` VALUES (385, '4', '2021-02-05 15:11:45:381', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F9579b5c41b4ffdacb1203c6fd37d7d87.jpg&id=93');
INSERT INTO `zh_logs` VALUES (386, '4', '2021-02-05 15:11:45:520', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210205%2F352eb5cf1ee6bb9f628c2b39f10787f5.jpg&id=94');
INSERT INTO `zh_logs` VALUES (387, '4', '2021-02-05 15:11:51:875', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2Fce541cc4be08bce9bbb546bd3f2f1009.png&id=95');
INSERT INTO `zh_logs` VALUES (388, '4', '2021-02-05 15:11:52:032', 0, '2886795265', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210205%2F61ae6cb3bc47b178e00cf7a63973b716.png&id=96');
INSERT INTO `zh_logs` VALUES (389, '2', '2021-02-05 15:11:54:401', 81, '2886795265', '杜兆森', '修改统筹单id=ZH2021000000021&overall_id=ZH2021000000021&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&temporary_id=2021020500001&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&status=3结果：成功');
INSERT INTO `zh_logs` VALUES (390, '1', '2021-02-05 15:13:34:799', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500001&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=PZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (391, '1', '2021-02-05 15:23:55:303', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500001&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=PZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (392, '1', '2021-02-05 15:25:31:923', 46, '2886795265', '杜兆森', '添加批单p_temporary_id=P2021020500001&overall_id=ZH2021000000021&temporary_id=2021020500001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F05&nuclear_system_time=2021%2F02%2F05&traffic_company=%E6%B5%8B%E8%AF%95&traffic_start_time=+2021%2F02%2F05&traffic_end_time=+2021%2F02%2F05&plate=%E5%86%80A0000&frame=jdhh435nd3&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F06&end_time=2021%2F11%2F05&car_name=%E7%89%9B&plate_type=1&color=1&engine=sdfsj4dfs&label_signal=sdfs&registered_time=2021%2F02%2F05&issuance_time=2021%2F02%2F05&age=3&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=11&curb_quality=2&vehicle_inspection=1&reason=12sffdsf&displacement=22&power=12&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=12222.33&vehicle_loss_discount=23&vehicle_loss_payable=2108.35&vehicle_third_discount=23&car_driver_discount=23&seat=4&car_passenger_discount=23&car_goods_discount=23&combustion=combustion&combustion_money=30000&combustion_standard=28000&combustion_discount=23&combustion_payable=4830&engine_wading_discount=23&designated_repai_discount=23&broken_glass_discount=23&benchmarking=40222.33&total_discount=23&total_planning=6938.35&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=df&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E8%B5%B7%E9%87%8D%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E4%BD%9C%E4%B8%9A%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E8%BD%A6%E4%BD%93%E5%A4%B1%E5%8E%BB%E9%87%8D%E5%BF%83%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E8%A6%86%E3%80%81%E5%80%BE%E6%96%9C%EF%BC%8C%E5%BC%95%E8%B5%B7%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9C%A8%E5%90%8A%E5%8D%87%E3%80%81%E4%B8%BE%E5%8D%87%E3%80%81%E8%A3%85%E8%BD%BD%E8%B4%A7%E7%89%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E5%90%8A%E8%87%82%E6%96%AD%E8%A3%82%E3%80%81%E8%B4%A7%E7%89%A9%E6%8E%89%E8%90%BD%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E7%9A%84%E6%9C%AC%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E4%BB%A5%E5%8F%8A%E9%80%A0%E6%88%90%E6%9E%B6%E7%A9%BA%E7%AE%A1%E9%81%93%E3%80%81%E7%BA%BF%E8%B7%AF%E6%88%96%E5%85%B6%E4%BB%96%E7%89%A9%E4%BD%93%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E4%BA%BA%E5%91%98%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E5%88%99%EF%BC%8C%E5%AF%BC%E8%87%B4%E6%9C%BA%E6%A2%B0%E8%87%82%E6%88%96%E8%BD%A6%E8%BA%AB%E8%A7%A6%E5%8F%8A%E9%AB%98%E5%8E%8B%E7%BA%BF%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%9B%E8%BD%A6%E8%BE%86%E5%9C%A8%E8%A1%8C%E9%A9%B6%E4%B8%AD%EF%BC%8C%E7%94%B1%E4%BA%8E%E8%B6%85%E8%BF%87%E9%99%90%E5%88%B6%E9%AB%98%E5%BA%A6%E6%89%80%E5%BC%95%E8%B5%B7%E7%9A%84%E8%BD%A6%E8%BE%86%E6%9C%AC%E8%BA%AB%E5%92%8C%E7%AC%AC%E4%B8%89%E8%80%85%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdafjijakdfjkafd&endorsements_id=PZH2021000000002&status=2结果：成功');
INSERT INTO `zh_logs` VALUES (393, '6', '2021-02-05 15:31:45:687', 48, '2886795265', '杜兆森', '审核统筹单related_id=2021020500001&type=1&status=2&log_type=2结果：成功');
INSERT INTO `zh_logs` VALUES (394, '2', '2021-02-05 15:36:50:712', 45, '2886795265', '杜兆森', '新车上牌overall_id=ZH2021000000020&plate=%E5%86%80A0001结果：失败');
INSERT INTO `zh_logs` VALUES (395, '2', '2021-02-05 15:36:57:344', 45, '2886795265', '杜兆森', '新车上牌overall_id=ZH2021000000020&plate=%E5%86%80A0001结果：失败');
INSERT INTO `zh_logs` VALUES (396, '2', '2021-02-05 15:40:56:602', 45, '2886795265', '杜兆森', '新车上牌overall_id=ZH2021000000020&plate=%E5%86%80A0001&temporary_id=2021020100002结果：成功');
INSERT INTO `zh_logs` VALUES (397, '7', '2021-02-06 08:48:34:155', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (398, '7', '2021-02-06 08:48:34:270', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (399, '7', '2021-02-06 08:48:34:429', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (400, '7', '2021-02-06 08:48:34:521', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (401, '7', '2021-02-06 08:48:34:607', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (402, '7', '2021-02-06 08:48:34:692', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (403, '7', '2021-02-06 08:48:34:771', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (404, '7', '2021-02-06 08:48:37:821', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (405, '1', '2021-02-06 09:14:39:615', 32, '2886795265', '杜兆森', '添加菜单pid=24&name=%E5%85%AC%E5%8F%B8%E7%AE%A1%E7%90%86&folder=System&action=company%2Findex&isshow=1结果：成功');
INSERT INTO `zh_logs` VALUES (406, '7', '2021-02-06 13:50:27:182', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (407, '1', '2021-02-06 15:10:06:018', 29, '2886795265', '杜兆森', '添加公司name=%E4%B8%AD%E4%BA%92%E4%BA%A4%E9%80%9A%E8%BF%90%E8%BE%93%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82%E5%A4%AA%E8%A1%8C%E5%8D%97%E5%A4%A7%E8%A1%97197%E5%8F%B7A%E5%BA%A710%E5%B1%82&customer_phone=400-681-8811&office=050000&chapter=20210206%2F1494a45b10fc7f2c74f37eb63b28dd69.png结果：成功');
INSERT INTO `zh_logs` VALUES (408, '1', '2021-02-06 15:30:25:088', 32, '2886795265', '杜兆森', '添加菜单pid=92&name=%E6%B7%BB%E5%8A%A0%E5%85%AC%E5%8F%B8&folder=System&action=company%2FaddCompany&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (409, '1', '2021-02-06 15:30:52:178', 32, '2886795265', '杜兆森', '添加菜单pid=92&name=%E7%BC%96%E8%BE%91%E5%85%AC%E5%8F%B8&folder=System&action=company%2FeditCompany&isshow=2结果：成功');
INSERT INTO `zh_logs` VALUES (410, '7', '2021-02-07 09:39:11:283', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (411, '2', '2021-02-07 09:54:32:848', 94, '2886795265', '杜兆森', '编辑公司id=1&name=%E4%B8%AD%E4%BA%92%E4%BA%A4%E9%80%9A%E8%BF%90%E8%BE%93%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82%E5%A4%AA%E8%A1%8C%E5%8D%97%E5%A4%A7%E8%A1%97197%E5%8F%B7A%E5%BA%A710%E5%B1%82&customer_phone=400-681-8811&office=050000&chapter=20210207%2Fda0e4ef90ee62586d778601e382baff3.png结果：成功');
INSERT INTO `zh_logs` VALUES (412, '1', '2021-02-07 09:55:04:635', 93, '2886795265', '杜兆森', '添加公司name=%E4%B8%AD%E4%BA%92&address=%E7%9F%B3%E5%AE%B6%E5%BA%84&customer_phone=400-681-8811&office=050000&chapter=20210207%2F701cc2dd6212dde4bd2ca2880b1a87d6.png结果：成功');
INSERT INTO `zh_logs` VALUES (413, '5', '2021-02-07 09:55:23:843', 33, '2886795265', '杜兆森', '导出报价单总条数：1');
INSERT INTO `zh_logs` VALUES (414, '7', '2021-02-08 08:33:07:492', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (415, '7', '2021-02-09 09:25:42:867', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (416, '7', '2021-02-10 08:40:49:611', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (417, '7', '2021-02-10 13:46:36:277', 80, '2886795265', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (418, '3', '2021-02-18 10:27:40:155', 0, '2130706433', '杜兆森', '删除文件id-35结果：成功');
INSERT INTO `zh_logs` VALUES (419, '3', '2021-02-18 10:27:49:539', 0, '2130706433', '杜兆森', '删除文件id-36结果：成功');
INSERT INTO `zh_logs` VALUES (420, '3', '2021-02-18 10:28:06:742', 0, '2130706433', '杜兆森', '删除文件id-61结果：成功');
INSERT INTO `zh_logs` VALUES (421, '3', '2021-02-18 10:28:08:767', 0, '2130706433', '杜兆森', '删除文件id-59结果：成功');
INSERT INTO `zh_logs` VALUES (422, '3', '2021-02-18 10:28:10:492', 0, '2130706433', '杜兆森', '删除文件id-58结果：成功');
INSERT INTO `zh_logs` VALUES (423, '3', '2021-02-18 10:28:12:192', 0, '2130706433', '杜兆森', '删除文件id-56结果：成功');
INSERT INTO `zh_logs` VALUES (424, '4', '2021-02-18 10:40:23:436', 0, '2130706433', '杜兆森', '上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault3%2F20210218%5Ce9048f8260d53a5a8a8a7c26e338a7e6.png&id=105');
INSERT INTO `zh_logs` VALUES (425, '7', '2021-02-18 14:21:45:815', 80, '2130706433', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (426, '7', '2021-02-19 08:33:43:479', 80, '2130706433', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (427, '7', '2021-02-19 13:34:06:741', 80, '2130706433', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (428, '7', '2021-02-19 18:34:37:424', 80, '2130706433', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (429, '7', '2021-02-20 08:21:56:972', 80, '2130706433', '杜兆森', '登陆成功');
INSERT INTO `zh_logs` VALUES (430, '7', '2021-02-20 13:26:10:481', 80, '2130706433', '杜兆森', '登陆成功');

-- ----------------------------
-- Table structure for zh_menu
-- ----------------------------
DROP TABLE IF EXISTS `zh_menu`;
CREATE TABLE `zh_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级id',
  `sort` tinyint(4) NOT NULL DEFAULT 1 COMMENT '排序',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `folder` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件夹名称',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器/方法',
  `param` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `isshow` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1展示2不展示',
  `level` tinyint(1) NOT NULL DEFAULT 0 COMMENT '层级',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_menu
-- ----------------------------
INSERT INTO `zh_menu` VALUES (24, '系统设置', 0, 11, 'fa-cogs', 'System', '', '', 1, 0, 'admin', 1609294669, '杜兆森', 1612422787, 1);
INSERT INTO `zh_menu` VALUES (25, '菜单管理', 24, 1, '', 'System', 'menu/index', '', 1, 0, 'admin', 1609294697, '', 0, 1);
INSERT INTO `zh_menu` VALUES (26, '组织管理', 0, 10, 'fa-users', 'User', '', '', 1, 0, 'admin', 1609294729, '杜兆森', 1612422774, 1);
INSERT INTO `zh_menu` VALUES (27, '组织结构', 26, 1, '', 'User', 'structure/index', '', 1, 0, 'admin', 1609294753, '', 0, 1);
INSERT INTO `zh_menu` VALUES (28, '人员管理', 26, 1, '', 'User', 'user/index', '', 1, 0, 'admin', 1609294790, '', 0, 1);
INSERT INTO `zh_menu` VALUES (29, '角色管理', 26, 1, '', 'User', 'roles/index', '', 1, 0, 'admin', 1609294814, '', 0, 1);
INSERT INTO `zh_menu` VALUES (30, '报价单管理', 0, 1, 'fa-file-text-o', 'Quotation', '', '', 1, 0, 'admin', 1609294857, 'duzhaosen', 1609808912, 1);
INSERT INTO `zh_menu` VALUES (31, '报价单录入', 30, 1, '', 'Quotation', 'quotation/add', '', 1, 0, 'admin', 1609294878, '', 0, 1);
INSERT INTO `zh_menu` VALUES (32, '菜单添加', 25, 1, '', 'System', 'menu/add', '', 2, 0, 'admin', 1609294915, 'admin', 1609294926, 1);
INSERT INTO `zh_menu` VALUES (33, '报价单查询', 30, 1, '', 'Quotation', 'quotation/index', '', 1, 0, 'admin', 1609295156, '', 0, 1);
INSERT INTO `zh_menu` VALUES (34, '报价单查看', 33, 1, '', 'Quotation', 'quotation/view', '', 2, 0, 'admin', 1609312802, '', 0, 1);
INSERT INTO `zh_menu` VALUES (35, '生成报价单', 33, 1, '', 'Quotation', 'quotation/quotationPdf', '', 2, 0, 'duzhaosen', 1609381087, '', 0, 1);
INSERT INTO `zh_menu` VALUES (36, '统筹单管理', 0, 2, 'fa-map-o', 'Overall', '', '', 1, 0, 'duzhaosen', 1609386800, '杜兆森', 1612422651, 1);
INSERT INTO `zh_menu` VALUES (37, '统筹单录入', 36, 1, '', 'Overall', 'overall/add', '', 1, 0, 'duzhaosen', 1609386827, '', 0, 1);
INSERT INTO `zh_menu` VALUES (38, '统筹单查询', 36, 1, '', 'Overall', 'overall/index', '', 1, 0, 'duzhaosen', 1609386840, '', 0, 1);
INSERT INTO `zh_menu` VALUES (39, '财务管理', 0, 3, ' fa-calculator', 'Financial', '', '', 1, 0, 'duzhaosen', 1609807563, '杜兆森', 1612422682, 1);
INSERT INTO `zh_menu` VALUES (40, '财务审核（统筹单）', 39, 1, '', 'Financial', 'overall/review', '', 1, 0, 'duzhaosen', 1609807618, '', 0, 1);
INSERT INTO `zh_menu` VALUES (41, '财务查询（统筹单）', 39, 1, '', 'Financial', 'overall/index', '', 1, 0, 'duzhaosen', 1609807644, '杜兆森', 1612158899, 1);
INSERT INTO `zh_menu` VALUES (42, '财务审核（批单）', 39, 1, '', 'Financial', 'endorsements/review', '', 1, 0, 'duzhaosen', 1609807682, '', 0, 1);
INSERT INTO `zh_menu` VALUES (43, '财务查询（批单）', 39, 1, '', 'Financial', 'endorsements/index', '', 1, 0, 'duzhaosen', 1609807723, '', 0, 1);
INSERT INTO `zh_menu` VALUES (44, '统筹单批改', 0, 4, ' fa-edit', 'Endorsements', '', '', 1, 0, 'duzhaosen', 1609807750, '杜兆森', 1612422696, 1);
INSERT INTO `zh_menu` VALUES (45, '新车上牌', 44, 1, '', 'Endorsements', 'newcar/index', '', 1, 0, 'duzhaosen', 1609807834, '', 0, 1);
INSERT INTO `zh_menu` VALUES (46, '全单批改', 44, 1, '', 'Endorsements', 'fullorder/correction', '', 1, 0, 'duzhaosen', 1609807869, 'duzhaosen', 1609810650, 1);
INSERT INTO `zh_menu` VALUES (47, '批单查询', 44, 1, '', 'Endorsements', 'endorsements/index', '', 1, 0, 'duzhaosen', 1609807892, '', 0, 1);
INSERT INTO `zh_menu` VALUES (48, '审核管理', 0, 5, ' fa-calculator', 'Review', '', '', 1, 0, 'duzhaosen', 1609807970, '杜兆森', 1612422708, 1);
INSERT INTO `zh_menu` VALUES (49, '初级审核', 48, 1, '', 'Review', 'primary/review', '', 1, 0, 'duzhaosen', 1609808000, '', 0, 1);
INSERT INTO `zh_menu` VALUES (50, '二级审核（统筹单）', 48, 1, '', 'Review', 'secondary/overall', '', 1, 0, 'duzhaosen', 1609808044, '杜兆森', 1612158983, 1);
INSERT INTO `zh_menu` VALUES (51, '二级审核（批单）', 48, 1, '', 'Review', 'secondary/endorsements', '', 1, 0, 'duzhaosen', 1609808087, 'duzhaosen', 1609812878, 1);
INSERT INTO `zh_menu` VALUES (52, '单证管理', 0, 6, 'fa-credit-card', 'Documents', '', '', 1, 0, 'duzhaosen', 1609808104, '杜兆森', 1612422726, 1);
INSERT INTO `zh_menu` VALUES (53, '单证入库', 52, 1, '', 'Documents', 'warehousing/warehousing', '', 1, 0, 'duzhaosen', 1609808172, '杜兆森', 1612159028, 1);
INSERT INTO `zh_menu` VALUES (54, '单证下发', 52, 1, '', 'Documents', 'issued/issued', '', 1, 0, 'duzhaosen', 1609808238, '杜兆森', 1612159054, 1);
INSERT INTO `zh_menu` VALUES (55, '单证回收', 52, 1, '', 'Documents', 'recycle/recycle', '', 1, 0, 'duzhaosen', 1609808283, '杜兆森', 1612159066, 1);
INSERT INTO `zh_menu` VALUES (56, '统筹单补偿', 0, 7, 'fa-calendar-check-o', 'Overallcompensation', '', '', 1, 0, 'duzhaosen', 1609808337, '杜兆森', 1612422738, 1);
INSERT INTO `zh_menu` VALUES (57, '报案中心', 56, 1, '', 'Overallcompensation', 'report/index', '', 1, 0, 'duzhaosen', 1609808377, '杜兆森', 1612159174, 1);
INSERT INTO `zh_menu` VALUES (58, '查勘中心', 56, 1, '', 'Overallcompensation', 'survey/index', '', 1, 0, 'duzhaosen', 1609808409, '杜兆森', 1612159220, 1);
INSERT INTO `zh_menu` VALUES (59, '补偿单审核', 0, 8, 'fa-check-square-o', 'Makereview', '', '', 1, 0, 'duzhaosen', 1609808450, '杜兆森', 1612422748, 1);
INSERT INTO `zh_menu` VALUES (60, '车损/人伤审核', 59, 1, '', 'Makereview', 'carinjury/review', '', 1, 0, 'duzhaosen', 1609808524, 'duzhaosen', 1609811239, 1);
INSERT INTO `zh_menu` VALUES (61, '补偿理算', 59, 1, '', 'Makereview', 'compensation/adjustment', '', 1, 0, 'duzhaosen', 1609808564, 'duzhaosen', 1609811312, 1);
INSERT INTO `zh_menu` VALUES (62, '补偿核赔', 59, 1, '', 'Makereview', 'compensation/index', '', 1, 0, 'duzhaosen', 1609808637, 'duzhaosen', 1609811321, 1);
INSERT INTO `zh_menu` VALUES (63, '补偿费审核', 59, 1, '', 'Makereview', 'compensation/review', '', 1, 0, 'duzhaosen', 1609808671, 'duzhaosen', 1609811330, 1);
INSERT INTO `zh_menu` VALUES (64, '报表管理', 0, 9, 'fa-calendar', 'Report', '', '', 1, 0, 'duzhaosen', 1609808703, '杜兆森', 1612422762, 1);
INSERT INTO `zh_menu` VALUES (65, '报表类型', 64, 1, '', 'Report', 'report/index', '', 1, 0, 'duzhaosen', 1609808736, 'duzhaosen', 1609811436, 1);
INSERT INTO `zh_menu` VALUES (66, '统计分析', 64, 1, '', 'Report', 'statistical/analysis', '', 1, 0, 'duzhaosen', 1609808777, '', 0, 1);
INSERT INTO `zh_menu` VALUES (67, '密码修改', 24, 1, '', 'System', 'Pass/edit', '', 1, 0, '杜兆森', 1612159298, '', 0, 1);
INSERT INTO `zh_menu` VALUES (68, '日志管理', 24, 1, '', 'System', 'logs/index', '', 1, 0, '杜兆森', 1612159325, '', 0, 1);
INSERT INTO `zh_menu` VALUES (69, '验车码', 24, 1, '', 'System', 'carcode/index', '', 1, 0, '杜兆森', 1612159343, '', 0, 1);
INSERT INTO `zh_menu` VALUES (70, '报价单修改', 33, 1, '', 'Quotation', 'quotation/edit', '', 2, 0, '杜兆森', 1612161600, '杜兆森', 1612161612, 1);
INSERT INTO `zh_menu` VALUES (71, '报价单复制', 33, 1, '', 'Quotation', 'quotation/copy', '', 2, 0, '杜兆森', 1612161671, '', 0, 1);
INSERT INTO `zh_menu` VALUES (72, '初级审核详情页', 49, 1, '', 'Review', 'primary/info', '', 2, 0, '杜兆森', 1612230325, '', 0, 1);
INSERT INTO `zh_menu` VALUES (73, '二级审核详情页', 50, 1, '', 'Review', 'secondary/overallInfo', '', 2, 0, '杜兆森', 1612230402, '', 0, 1);
INSERT INTO `zh_menu` VALUES (74, '财务审核详情页', 40, 1, '', 'Financial', 'overall/reviewInfo', '', 2, 0, '杜兆森', 1612230675, '', 0, 1);
INSERT INTO `zh_menu` VALUES (75, '全单批改详情', 46, 1, '', 'Endorsements', 'fullorder/endorsements', '', 2, 0, '杜兆森', 1612230862, '', 0, 1);
INSERT INTO `zh_menu` VALUES (76, '批单详情页', 47, 1, '', 'Endorsements', 'endorsements/view', '', 2, 0, '杜兆森', 1612317576, '', 0, 1);
INSERT INTO `zh_menu` VALUES (77, '批单修改', 47, 1, '', 'Endorsements', 'fullorder/editEndorsements', '', 2, 0, '杜兆森', 1612317626, '杜兆森', 1612317654, 1);
INSERT INTO `zh_menu` VALUES (78, '报案中心添加', 57, 1, '', 'Overallcompensation', 'report/add', '', 2, 0, '杜兆森', 1612317729, '', 0, 1);
INSERT INTO `zh_menu` VALUES (79, '查勘录入', 58, 1, '', 'Overallcompensation', 'survey/add', '', 2, 0, '杜兆森', 1612319294, '', 0, 1);
INSERT INTO `zh_menu` VALUES (80, '首页', 0, 1, '', 'Index', 'index', '', 2, 0, '杜兆森', 1612335893, '杜兆森', 1612335955, 1);
INSERT INTO `zh_menu` VALUES (81, '统筹单修改', 36, 1, '', 'Overall', 'overall/edit', '', 2, 0, '杜兆森', 1612408962, '', 0, 1);
INSERT INTO `zh_menu` VALUES (82, '统筹单复制', 36, 1, '', 'Overall', 'overall/copy', '', 2, 0, '杜兆森', 1612408980, '', 0, 1);
INSERT INTO `zh_menu` VALUES (83, '统筹单查看详情', 36, 1, '', 'Overall', 'overall/view', '', 2, 0, '杜兆森', 1612409013, '', 0, 1);
INSERT INTO `zh_menu` VALUES (84, '统筹单打印', 36, 1, '', 'Overall', 'overall/overallPdf', '', 2, 0, '杜兆森', 1612409036, '', 0, 1);
INSERT INTO `zh_menu` VALUES (85, '财务审核（批单）详情页', 42, 1, '', 'Financial', 'endorsements/reviewInfo', '', 2, 0, '杜兆森', 1612409345, '', 0, 1);
INSERT INTO `zh_menu` VALUES (86, '二级审核（批单）详情页', 51, 1, '', 'Review', 'secondary/endorsements', '', 2, 0, '杜兆森', 1612417021, '', 0, 1);
INSERT INTO `zh_menu` VALUES (87, '报案中心修改', 57, 1, '', 'Overallcompensation', 'report/edit', '', 2, 0, '杜兆森', 1612417242, '', 0, 1);
INSERT INTO `zh_menu` VALUES (88, '报案中心查看', 57, 1, '', 'Overallcompensation', 'report/view', '', 2, 0, '杜兆森', 1612417270, '', 0, 1);
INSERT INTO `zh_menu` VALUES (89, '添加人员', 28, 1, '', 'User', 'user/addUser', '', 2, 0, '杜兆森', 1612417545, '', 0, 1);
INSERT INTO `zh_menu` VALUES (90, '修改人员', 28, 1, '', 'User', 'user/editUser', '', 2, 0, '杜兆森', 1612417560, '', 0, 1);
INSERT INTO `zh_menu` VALUES (91, '菜单修改', 25, 1, '', 'System', 'menu/edit', '', 2, 0, '杜兆森', 1612417969, '', 0, 1);
INSERT INTO `zh_menu` VALUES (92, '公司管理', 24, 1, '', 'System', 'company/index', '', 1, 0, '杜兆森', 1612574079, '', 0, 1);
INSERT INTO `zh_menu` VALUES (93, '添加公司', 92, 1, '', 'System', 'company/addCompany', '', 2, 0, '杜兆森', 1612596625, '', 0, 1);
INSERT INTO `zh_menu` VALUES (94, '编辑公司', 92, 1, '', 'System', 'company/editCompany', '', 2, 0, '杜兆森', 1612596652, '', 0, 1);

-- ----------------------------
-- Table structure for zh_overall
-- ----------------------------
DROP TABLE IF EXISTS `zh_overall`;
CREATE TABLE `zh_overall`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `overall_id` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '统筹单号',
  `temporary_id` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '暂存单号',
  `attribution_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '录入日期',
  `nuclear_system_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核统人',
  `nuclear_system_time` int(11) NOT NULL DEFAULT 0 COMMENT '核统日期',
  `financial_review_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '财务审核人',
  `financial_review_time` int(11) NOT NULL DEFAULT 0 COMMENT '财务审核日期',
  `plate` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT 0 COMMENT '生效天数',
  `short_term_coefficient` float(3, 2) NOT NULL DEFAULT 0.00 COMMENT '短期系数',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `car_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1未生成新的单号2已生成新的单号',
  `dispute_resolution` tinyint(4) NOT NULL DEFAULT 1 COMMENT '争议解决方：1诉讼2仲裁',
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '特别约定',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参统说明',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1暂存2待修改3待初级审核4待二级审核5待财务审核6审核通过',
  `participate_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `documents_id` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单证号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `overall_id`(`overall_id`, `type`) USING BTREE,
  UNIQUE INDEX `documents_id`(`documents_id`) USING BTREE,
  UNIQUE INDEX `temporary_id`(`temporary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '统筹单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_overall
-- ----------------------------
INSERT INTO `zh_overall` VALUES (1, 'ZH2021000000020', '2021020100002', '800003', '800002', 'duzhaosen', 1612108800, '杜兆森', 1612230567, '杜兆森', 1612230683, '冀A0001', 'jdhh435ndfjge', 1612195200, 1635696000, 273, 0.75, '', '杜兆森', 1612510856, '杜', 1, 1, 1, '1、本统筹单的第一受益人为***。未经其事先书面同意本统筹单不得被退统或减统或批改，不影响第一受益人权益的批改除外。\r\n2、验车风险特约：本统筹车辆在参统时**已有损坏，在被统筹人未自行修复并我公司验车合格前，同一部位发生事故所造成的损失，我公司不承担补偿责任。\r\n3、因任何原因造成混凝土凝固而导致的设备损失,统筹人不负责赔偿。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n', 'sdfasfdaf', 6, 'duzhaosen', '00001');
INSERT INTO `zh_overall` VALUES (7, 'ZH2021000000021', '2021020500001', '800003', '800002', 'duzhaosen', 1612454400, '', 0, '', 0, '冀A0000', 'jdhh435nd3', 1612540800, 1636041600, 273, 0.75, '', '杜兆森', 1612510305, '牛', 1, 1, 1, '1、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n2、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n3、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n', 'sdafjijakdfjkafd', 2, '杜', '');

-- ----------------------------
-- Table structure for zh_overall_planning
-- ----------------------------
DROP TABLE IF EXISTS `zh_overall_planning`;
CREATE TABLE `zh_overall_planning`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联ID',
  `vehicle_loss` tinyint(4) NOT NULL DEFAULT 1 COMMENT '机动车损失统筹：1未选中2选中',
  `vehicle_loss_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车损失统筹金额',
  `vehicle_loss_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车损失统筹标准统筹费',
  `vehicle_loss_discount` int(11) NOT NULL DEFAULT 0 COMMENT '机动车损失统筹折扣',
  `vehicle_loss_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车损失统筹应缴统筹费',
  `vehicle_third` tinyint(4) NOT NULL DEFAULT 1 COMMENT '机动车第三者责任统筹：1未选中2选中',
  `vehicle_third_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车第三者责任统筹金额',
  `vehicle_third_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车第三者责任统筹标准统筹费',
  `vehicle_third_discount` int(11) NOT NULL DEFAULT 0 COMMENT '机动车第三者责任统筹折扣',
  `vehicle_third_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '机动车第三者责任统筹应缴统筹费',
  `car_driver` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车上人员责任统筹(司机):1未选中2选中',
  `car_driver_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(司机)金额',
  `car_driver_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(司机)标准统筹费',
  `car_driver_discount` int(11) NOT NULL DEFAULT 0 COMMENT '车上人员责任统筹(司机)折扣',
  `car_driver_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(司机)应缴统筹费',
  `car_passenger` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车上人员责任统筹(乘客):1未选中2选中',
  `car_passenger_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(乘客)金额',
  `yuan` int(11) NOT NULL DEFAULT 0 COMMENT '车上人员责任统筹(乘客):元',
  `seat` tinyint(4) NOT NULL DEFAULT 0 COMMENT '车上人员责任统筹(乘客):座',
  `car_passenger_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(乘客)标准统筹费',
  `car_passenger_discount` int(11) NOT NULL DEFAULT 0 COMMENT '车上人员责任统筹(乘客)折扣',
  `car_passenger_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上人员责任统筹(乘客)应缴统筹费',
  `car_goods` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车上货物责任统筹：1未选中2选中',
  `car_goods_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上货物责任统筹金额',
  `car_goods_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上货物责任统筹标准统筹费',
  `car_goods_discount` int(11) NOT NULL DEFAULT 0 COMMENT '车上货物责任统筹折扣',
  `car_goods_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '车上货物责任统筹应缴统筹费',
  `combustion` tinyint(4) NOT NULL DEFAULT 1 COMMENT '附加项目-自燃损失统筹：1未选中2选中',
  `combustion_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自燃损失统筹金额',
  `combustion_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自燃损失统筹标准统筹费',
  `combustion_discount` int(1) NOT NULL DEFAULT 0 COMMENT '自燃损失统筹折扣',
  `combustion_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自燃损失统筹应缴统筹费',
  `engine_wading` tinyint(4) NOT NULL DEFAULT 1 COMMENT '发动机涉水损失统筹：1未选中2选中',
  `engine_wading_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '发送机涉水损失统筹金额',
  `engine_wading_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '发送机涉水损失统筹标准统筹费',
  `engine_wading_discount` int(11) NOT NULL DEFAULT 0 COMMENT '发动机涉水损失统筹折扣',
  `engine_wading_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '发动机涉水损失应缴统筹费',
  `designated_repai` tinyint(4) NOT NULL DEFAULT 1 COMMENT '指定修理厂统筹：1未选中2选中',
  `designated_repai_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '指定修理厂统筹金额',
  `designated_repai_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '指定修理厂统筹标准统筹费',
  `designated_repai_discount` int(11) NOT NULL DEFAULT 0 COMMENT '指定修理厂统筹折扣',
  `designated_repai_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '指定修理厂应缴统筹费',
  `broken_glass` tinyint(4) NOT NULL DEFAULT 1 COMMENT '玻璃单独破碎统筹：1未选中2选中',
  `broken_glass_money` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '玻璃单独破碎统筹金额',
  `broken_glass_standard` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '玻璃单独破碎统筹标准统筹费',
  `broken_glass_discount` int(11) NOT NULL DEFAULT 0 COMMENT '玻璃单独破碎统筹折扣',
  `broken_glass_payable` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '玻璃单独破碎统筹应缴统筹费',
  `benchmarking` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '基准统筹费总计',
  `total_discount` int(20) NOT NULL DEFAULT 0 COMMENT '折扣',
  `total_planning` float(20, 2) NOT NULL DEFAULT 0.00 COMMENT '统筹总额',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '统筹信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_overall_planning
-- ----------------------------
INSERT INTO `zh_overall_planning` VALUES (1, 'BJ20210200001', 1, 0.00, 0.00, 89, 0.00, 1, 0.00, 0.00, 89, 0.00, 2, 130000.00, 80000.00, 89, 71200.00, 1, 0.00, 0, 2, 0.00, 89, 0.00, 1, 0.00, 0.00, 89, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 80000.00, 89, 71200.00, 'duzhaosen', 1612108800, '', 0);
INSERT INTO `zh_overall_planning` VALUES (2, '2021020100001', 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0, 2, 0.00, 33, 0.00, 2, 4444.00, 3333.33, 33, 957.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 2, 2222.00, 1222.22, 33, 350.90, 1, 0.00, 0.00, 33, 0.00, 4555.55, 33, 1307.90, 'duzhaosen', 1612168671, '', 0);
INSERT INTO `zh_overall_planning` VALUES (3, '2021020100002', 2, 3333.00, 3333.33, 33, 825.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0, 3, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 3333.33, 33, 825.00, 'duzhaosen', 1612169692, '杜兆森', 1612170884);
INSERT INTO `zh_overall_planning` VALUES (10, 'P2021020300001', 2, 3333.00, 3333.33, 825, 825.00, 1, 0.00, 0.00, 825, 0.00, 1, 0.00, 0.00, 825, 0.00, 1, 0.00, 0, 3, 0.00, 825, 0.00, 1, 0.00, 0.00, 825, 0.00, 2, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 1, 0.00, 0.00, 33, 0.00, 3333.33, 33, 825.00, 'duzhaosen', 1612317467, '', 0);
INSERT INTO `zh_overall_planning` VALUES (11, 'BJ20210200002', 2, 130000.00, 124444.44, 23, 16600.89, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0, 4, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 1, 0.00, 0.00, 0, 0.00, 124444.44, 23, 16600.89, 'duzhaosen', 1612368000, '', 0);
INSERT INTO `zh_overall_planning` VALUES (15, '2021020500001', 2, 200000.00, 12222.33, 23, 2108.35, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0, 4, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 2, 30000.00, 28000.00, 23, 4830.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 40222.33, 23, 6938.35, 'duzhaosen', 1612489308, '杜兆森', 1612509114);
INSERT INTO `zh_overall_planning` VALUES (19, 'P2021020500001', 2, 200000.00, 12222.33, 6938, 2108.35, 1, 0.00, 0.00, 6938, 0.00, 1, 0.00, 0.00, 6938, 0.00, 1, 0.00, 0, 4, 0.00, 6938, 0.00, 1, 0.00, 0.00, 6938, 0.00, 2, 30000.00, 28000.00, 23, 4830.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 1, 0.00, 0.00, 23, 0.00, 40222.33, 23, 6938.35, 'duzhaosen', 1612509931, '', 0);

-- ----------------------------
-- Table structure for zh_participate
-- ----------------------------
DROP TABLE IF EXISTS `zh_participate`;
CREATE TABLE `zh_participate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联单号',
  `participate_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `participate_license_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '参统人证件号：1身份证2社会统一信用代码',
  `participate_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人证件号',
  `participate_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人手机号',
  `participate_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人邮箱',
  `participate_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参统人地址',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `car_owner` tinyint(4) NOT NULL DEFAULT 1 COMMENT '同车主：1是2否',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参统人信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_participate
-- ----------------------------
INSERT INTO `zh_participate` VALUES (1, '2021020100001', 'duzhaosen', 1, '130121199501123411', '18633937097', '', '', 'duzhaosen', 1612168671, 1, '', 0);
INSERT INTO `zh_participate` VALUES (2, '2021020100002', 'duzhaosen', 1, '130121199501123411', '18633937097', '', '', 'duzhaosen', 1612169692, 1, '杜兆森', 1612170884);
INSERT INTO `zh_participate` VALUES (7, 'P2021020300001', 'duzhaosen', 1, '130121199501123411', '18633937097', '', '', 'duzhaosen', 1612317467, 1, '', 0);
INSERT INTO `zh_participate` VALUES (11, '2021020500001', '杜', 1, '130121199501123411', '18633937097', '', '', 'duzhaosen', 1612489308, 1, '杜兆森', 1612509114);
INSERT INTO `zh_participate` VALUES (15, 'P2021020500001', '杜', 1, '130121199501123411', '18633937097', '', '', 'duzhaosen', 1612509931, 1, '', 0);

-- ----------------------------
-- Table structure for zh_pay
-- ----------------------------
DROP TABLE IF EXISTS `zh_pay`;
CREATE TABLE `zh_pay`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `overall_type` int(11) NOT NULL COMMENT '统筹单类型：1统筹单2批单',
  `pay_money` float NOT NULL COMMENT '缴费金额',
  `pay_time` int(11) NOT NULL COMMENT '缴费时间',
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联ID',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '缴费信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_pay
-- ----------------------------
INSERT INTO `zh_pay` VALUES (1, 1, 50600, 1610380800, '2021010900001', 1611802589, 'duzhaosen', '杜兆森', 1611802589);
INSERT INTO `zh_pay` VALUES (2, 1, 7761, 1610467200, '2021010900002', 1610509826, 'duzhaosen', '杜兆森', 1610509826);
INSERT INTO `zh_pay` VALUES (28, 1, 50600, 1610208000, 'P2021011000001', 1610524510, 'duzhaosen', '杜兆森', 1610524510);
INSERT INTO `zh_pay` VALUES (31, 1, 7761, 1610467200, 'P2021011200001', 1610524734, 'duzhaosen', '杜兆森', 1610524734);
INSERT INTO `zh_pay` VALUES (32, 1, 122011, 1610899200, '2021011800001', 1610937843, 'duzhaosen', '', 0);
INSERT INTO `zh_pay` VALUES (33, 1, 74100, 1611763200, '2021012800001', 1611814207, 'duzhaosen', '', 0);
INSERT INTO `zh_pay` VALUES (34, 1, 63188, 1611936000, '2021013000001', 1611998505, 'duzhaosen', '杜兆森', 1611998505);
INSERT INTO `zh_pay` VALUES (35, 1, 825, 1612108800, 'P2021020300001', 1612317467, 'duzhaosen', '', 0);
INSERT INTO `zh_pay` VALUES (39, 1, 6938.35, 1612454400, '2021020500001', 1612489308, 'duzhaosen', '杜兆森', 1612509114);
INSERT INTO `zh_pay` VALUES (43, 1, 6938.35, 1612454400, 'P2021020500001', 1612509931, 'duzhaosen', '', 0);

-- ----------------------------
-- Table structure for zh_quotation
-- ----------------------------
DROP TABLE IF EXISTS `zh_quotation`;
CREATE TABLE `zh_quotation`  (
  `id` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attribution_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '录入日期',
  `plate` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT 0 COMMENT '生效天数',
  `short_term_coefficient` float(3, 2) NOT NULL DEFAULT 0.00 COMMENT '短期系数',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `car_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1未生成新的单号2已生成新的单号',
  UNIQUE INDEX `id`(`id`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报价单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_quotation
-- ----------------------------
INSERT INTO `zh_quotation` VALUES ('BJ20210200001', '800003', '800002', 'duzhaosen', 1612108800, '暂未上牌', 'jdhh435ndfjge', 1612195200, 1643644800, 365, 1.00, '6074651676', '', 0, '杜', 1, 1);
INSERT INTO `zh_quotation` VALUES ('BJ20210200002', '800003', '800002', 'duzhaosen', 1612368000, '暂未上牌', 'fsdf1f3', 1612454400, 1630684800, 212, 0.58, '43', '杜兆森', 1612400945, 'd', 2, 1);

-- ----------------------------
-- Table structure for zh_report
-- ----------------------------
DROP TABLE IF EXISTS `zh_report`;
CREATE TABLE `zh_report`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `report_code` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '报案编号',
  `report_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报案单号',
  `overall_id` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '统筹单号',
  `plate` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌',
  `frame` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车架',
  `coordinated_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人',
  `nuclear_system_time` int(11) NOT NULL COMMENT '核统日期',
  `end_time` int(11) NOT NULL COMMENT '统筹止期',
  `report_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报案人',
  `report_time` int(11) NOT NULL COMMENT '报案时间',
  `out_danger_time` int(11) NOT NULL COMMENT '出险时间',
  `accident_situation` tinyint(4) NOT NULL COMMENT '事故情况：1单方2多方',
  `human_injury` tinyint(4) NOT NULL DEFAULT 2 COMMENT '人伤：1是2否',
  `driver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '驾驶员',
  `way_type` tinyint(4) NOT NULL COMMENT '道路类型',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `risk_location` int(11) NOT NULL COMMENT '出险地点',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '具体地点',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出险描述',
  `survey_agency` tinyint(4) NOT NULL COMMENT '查勘机构',
  `survey_user` int(4) NOT NULL COMMENT '查勘人',
  `survey_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查勘人电话',
  `survey_remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '查勘备注',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `report_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '案件状态：',
  `car_damage_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '车损：1未录入',
  `human_injury_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '人伤：1未录入',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态：0无状态1待车损/人伤审核2待理算审核3待核赔审核4待财务审核5审核完成',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `report_id`(`report_id`) USING BTREE,
  UNIQUE INDEX `overall_id`(`overall_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报案信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_report
-- ----------------------------
INSERT INTO `zh_report` VALUES (1, 'BC2021020001', 'BA2021020001', 'ZH2021000000020', '暂未上牌', 'jdhh435ndfjge', '杜', 1612230567, 1635696000, '杜兆森', 1612281600, 1612281600, 1, 2, '杜', 1, '19903211962', 130104, 'sdfjkaf ', 'sdfajkfdja', 2, 201, '18632149540', 'kjafakfkaf', '杜兆森', 1612319122, 1, 1, 1, '', 0, 0);

-- ----------------------------
-- Table structure for zh_review_log
-- ----------------------------
DROP TABLE IF EXISTS `zh_review_log`;
CREATE TABLE `zh_review_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `related_id` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联ID',
  `create_time` int(11) NOT NULL COMMENT '审核时间',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '审核人',
  `type` int(11) NOT NULL COMMENT '1初级通过2待修改3二级审核(统筹单)通过4财务审核(统筹单)通过5二级审核（批单）通过6财务审核（批单）通过7取消通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审核日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_review_log
-- ----------------------------
INSERT INTO `zh_review_log` VALUES (1, '2021010900002', 1610506734, '杜兆森', 2);
INSERT INTO `zh_review_log` VALUES (2, '2021010900002', 1610509847, '杜兆森', 1);
INSERT INTO `zh_review_log` VALUES (3, '2021010900002', 1610510081, '杜兆森', 3);
INSERT INTO `zh_review_log` VALUES (4, 'P2021011200001', 1610525799, '杜兆森', 5);
INSERT INTO `zh_review_log` VALUES (5, '2021010900002', 1610526428, '杜兆森', 4);
INSERT INTO `zh_review_log` VALUES (6, 'P2021011200001', 1610526610, '杜兆森', 6);
INSERT INTO `zh_review_log` VALUES (7, 'P2021011200001', 1610526736, '杜兆森', 6);
INSERT INTO `zh_review_log` VALUES (8, '2021010900001', 1611802606, '杜兆森', 1);
INSERT INTO `zh_review_log` VALUES (9, '2021010900001', 1611802612, '杜兆森', 3);
INSERT INTO `zh_review_log` VALUES (10, '2021010900001', 1611802623, '杜兆森', 4);
INSERT INTO `zh_review_log` VALUES (11, '2021013000001', 1611996624, '杜兆森', 1);
INSERT INTO `zh_review_log` VALUES (12, '2021013000001', 1611996782, '杜兆森', 3);
INSERT INTO `zh_review_log` VALUES (13, '2021013000001', 1611996796, '杜兆森', 2);
INSERT INTO `zh_review_log` VALUES (14, '2021013000001', 1611998639, '杜兆森', 1);
INSERT INTO `zh_review_log` VALUES (15, '2021013000001', 1611998645, '杜兆森', 3);
INSERT INTO `zh_review_log` VALUES (16, '2021013000001', 1611998657, '杜兆森', 4);
INSERT INTO `zh_review_log` VALUES (17, '2021010900002', 1612141862, '杜兆森', 7);
INSERT INTO `zh_review_log` VALUES (18, '2021013000001', 1612141939, '杜兆森', 7);
INSERT INTO `zh_review_log` VALUES (19, 'P2021011200001', 1612142286, '杜兆森', 7);
INSERT INTO `zh_review_log` VALUES (20, 'P2021011200001', 1612142334, '杜兆森', 7);
INSERT INTO `zh_review_log` VALUES (21, '2021020100002', 1612230334, '杜兆森', 1);
INSERT INTO `zh_review_log` VALUES (22, '2021020100002', 1612230567, '杜兆森', 3);
INSERT INTO `zh_review_log` VALUES (23, '2021020100002', 1612230683, '杜兆森', 4);
INSERT INTO `zh_review_log` VALUES (24, '2021020500001', 1612489324, '杜兆森', 2);
INSERT INTO `zh_review_log` VALUES (25, '2021020500001', 1612509070, '杜兆森', 2);
INSERT INTO `zh_review_log` VALUES (26, '2021020500001', 1612510305, '杜兆森', 2);

-- ----------------------------
-- Table structure for zh_roles
-- ----------------------------
DROP TABLE IF EXISTS `zh_roles`;
CREATE TABLE `zh_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1正常2禁用',
  `salesman` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1不是业务归属2是业务归属',
  `isuser` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1不是出单员2是出单员',
  `admin` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1不是超管2超管',
  `group_power` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1未拥有2拥有同部门及下属权限',
  `powers` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_roles
-- ----------------------------
INSERT INTO `zh_roles` VALUES (3, '管理员', 1, 1, 1, 2, 1, '', 'duzhaosen', 1612158133, '', 0);
INSERT INTO `zh_roles` VALUES (4, '报价单', 1, 1, 1, 1, 1, '30,31,34,35,33', '杜兆森', 1612159732, '', 0);

-- ----------------------------
-- Table structure for zh_structure
-- ----------------------------
DROP TABLE IF EXISTS `zh_structure`;
CREATE TABLE `zh_structure`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组织名称',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级id',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1正常2禁用',
  `source` tinyint(4) NOT NULL DEFAULT 0 COMMENT '业务来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_structure
-- ----------------------------
INSERT INTO `zh_structure` VALUES (1, '总部', 0, '', 0, 'duzhaosen', 1612158319, 1, 1);

-- ----------------------------
-- Table structure for zh_survey
-- ----------------------------
DROP TABLE IF EXISTS `zh_survey`;
CREATE TABLE `zh_survey`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `report_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报案单号',
  `report_time` int(11) NOT NULL DEFAULT 0 COMMENT '报案时间',
  `plate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `coordinated_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '被统筹人',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `driver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '驾驶员',
  `out_danger_time` int(11) NOT NULL DEFAULT 0 COMMENT '出险时间',
  `actual_driver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '实际驾驶员',
  `survey_sex` tinyint(4) NOT NULL DEFAULT 1 COMMENT '性别：1男2女',
  `driver_license` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '驾驶证号',
  `dirver_model` tinyint(4) NOT NULL DEFAULT -1 COMMENT '准驾车型',
  `cause_accident` tinyint(4) NOT NULL DEFAULT -1 COMMENT '事故原因',
  `cause_liability` tinyint(4) NOT NULL DEFAULT -1 COMMENT '事故责任',
  `process_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '案件流程类型',
  `estimated_amount` float NOT NULL COMMENT '预估金额',
  `cause_area` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事故区域',
  `cause_department` tinyint(11) NOT NULL DEFAULT -1 COMMENT '事故处理部门',
  `other_cause_department` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '其他事故处理部门',
  `casualties` tinyint(4) NOT NULL DEFAULT 0 COMMENT '人员伤亡',
  `way_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '道路类型',
  `cause_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '事故类型',
  `major_case` tinyint(4) NOT NULL DEFAULT -1 COMMENT '重大案件1是2否',
  `case_type` tinyint(4) NOT NULL DEFAULT -1 COMMENT '案件状态',
  `three_blame` tinyint(4) NOT NULL DEFAULT -1 COMMENT '三责伤：1是2否',
  `three_die` tinyint(4) NOT NULL DEFAULT -1 COMMENT '三者亡：1是2否',
  `own_car_injury` tinyint(4) NOT NULL DEFAULT -1 COMMENT '本车伤：1是2否',
  `own_car_die` tinyint(4) NOT NULL DEFAULT -1 COMMENT '本车亡：1是2否',
  `three_vehicles` tinyint(4) NOT NULL DEFAULT 0 COMMENT '三者车辆数',
  `rescue` tinyint(4) NOT NULL DEFAULT -1 COMMENT '施救：1是2否',
  `responsible_death_cause` tinyint(4) NOT NULL DEFAULT -1 COMMENT '有责死亡事故：1是2否',
  `road_cause` tinyint(4) NOT NULL DEFAULT -1 COMMENT '道路交通事故：1是2否',
  `small_quick_case` int(11) NOT NULL DEFAULT -1 COMMENT '小额快赔案件：1是2否',
  `estimated_case` tinyint(4) NOT NULL DEFAULT -1 COMMENT '预估案件：1是2佛',
  `cause_book` tinyint(4) NOT NULL DEFAULT -1 COMMENT '交管事故书：1是2否',
  `cause_book_num` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事故书编号',
  `subrogation` tinyint(4) NOT NULL DEFAULT -1 COMMENT '代位求偿：1是2否',
  `first_scene` tinyint(4) NOT NULL DEFAULT -1 COMMENT '第一现场：1是2否',
  `survey_agency` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查勘机构',
  `survey_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查勘人',
  `survey_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查勘人电话',
  `survey_time` int(11) NOT NULL COMMENT '查勘时间',
  `survey_address` tinyint(4) NOT NULL DEFAULT -1 COMMENT '查勘地点',
  `case_details` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '案件详细经过',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `report_id`(`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '查勘录入' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_survey
-- ----------------------------
INSERT INTO `zh_survey` VALUES (1, 'BA2021020001', 1612281600, 'ji sdfjsa', '杜', '19903211962', '杜', 1612281600, 'ceshi ', 2, '130', 5, 2, 3, 2, 12, '2000', 2, '12', 1, 4, 4, -1, 4, 1, 1, 1, -1, 1, 1, 1, 2, 1, 1, 1, '12', 2, 2, '11', '12', '18632149540', 12, 3, 'sdfafd', 'sdfa', 1613812811, '杜兆森');

-- ----------------------------
-- Table structure for zh_traffic
-- ----------------------------
DROP TABLE IF EXISTS `zh_traffic`;
CREATE TABLE `zh_traffic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '统筹单号',
  `traffic_company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '交强险公司',
  `traffic_start_time` int(11) NOT NULL DEFAULT 0 COMMENT '交强起期',
  `traffic_end_time` int(11) NOT NULL DEFAULT 0 COMMENT '交强止期',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `related_id`(`related_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交强险' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_traffic
-- ----------------------------
INSERT INTO `zh_traffic` VALUES (1, '2021020100001', '交强险有限公司', 1612108800, 1612108800, 'duzhaosen', 1612168671, '', 0);
INSERT INTO `zh_traffic` VALUES (2, '2021020100002', '较强', 1612108800, 1612108800, 'duzhaosen', 1612169692, '杜兆森', 1612170884);
INSERT INTO `zh_traffic` VALUES (8, 'P2021020300001', '较强', 1612108800, 1612108800, 'duzhaosen', 1612317467, '', 0);
INSERT INTO `zh_traffic` VALUES (12, '2021020500001', '测试', 1612454400, 1612454400, 'duzhaosen', 1612489308, '杜兆森', 1612509114);
INSERT INTO `zh_traffic` VALUES (16, 'P2021020500001', '测试', 1612454400, 1612454400, 'duzhaosen', 1612509931, '', 0);

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `roles` int(1) NOT NULL COMMENT '角色',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1男2女',
  `identity` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `city` int(11) NOT NULL DEFAULT 0 COMMENT '市',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `op_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `pinyin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '英文姓名',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1正常2禁用',
  `structure` int(11) NOT NULL DEFAULT 0 COMMENT '组织id',
  `salesman` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1业务员2非业务员',
  `manager` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1经办人2非经办人',
  `manager_id` int(11) NOT NULL DEFAULT 0 COMMENT '经办人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 800004 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES (800001, 'duzhaosen', '70bc419990b6bc19fc89f2ec3a470af7', 3, '19903211962', 1, '130121199501123410', 130000, '', 0, 'duzhaosen', 1612158583, '杜兆森', 'duzhaosen', 1, 1, 1, 1, 0);
INSERT INTO `zh_user` VALUES (800002, 'jingban', '70bc419990b6bc19fc89f2ec3a470af7', 4, '19903211962', 1, '130121199501123411', 130000, '杜兆森', 1612159777, '', 0, '经办', 'jingban', 1, 1, 2, 1, 0);
INSERT INTO `zh_user` VALUES (800003, 'baojia', '70bc419990b6bc19fc89f2ec3a470af7', 4, '19903211962', 1, '130121199501123412', 130000, '杜兆森', 1612159822, '', 0, '报价人', 'baojia', 1, 1, 1, 2, 800002);

SET FOREIGN_KEY_CHECKS = 1;
