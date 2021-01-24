# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: zhonghujiaotong
# Generation Time: 2021-01-24 07:30:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table zh_attach
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_attach`;

CREATE TABLE `zh_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) DEFAULT NULL,
  `attach_url` varchar(100) DEFAULT NULL,
  `folder` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_user` varchar(100) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '1' COMMENT '1正常2删除',
  `op_user` varchar(100) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件';

LOCK TABLES `zh_attach` WRITE;
/*!40000 ALTER TABLE `zh_attach` DISABLE KEYS */;

INSERT INTO `zh_attach` (`id`, `related_id`, `attach_url`, `folder`, `name`, `create_user`, `create_time`, `type`, `op_user`, `op_time`)
VALUES
	(1,'2021010900001','20210109/c87a8c57ce5e60cf6ebec7823c1dc8d6.jpg','default1','参统资料',NULL,1610171057,1,NULL,NULL),
	(2,'2021010900001','20210109/0a5607170fb68c4c571a41e86abdc3c2.jpg','default2','车损',NULL,1610171066,2,'杜兆森',1610438167),
	(3,'2021010900001','20210109/b9f5448ca5392c7a93ac3d6055c335af.jpg','default2','车损',NULL,1610171066,2,'杜兆森',1610438196),
	(4,'2021010900001','20210109/775b9819e809b3a10fa6ea7b5d4cf349.jpg','default1','参统资料',NULL,1610172634,1,NULL,NULL),
	(5,'2021010900002','20210109/3b66b711a405e7425eae30eccaeb3d1e.jpg','default2','牛气',NULL,1610172649,2,'杜兆森',1610439773),
	(18,'P2021011000001','20210110/c87a8c57ce5e60cf6ebec7823c1dc8d6.jpg','default1','参统资料',NULL,1610262394,1,NULL,NULL),
	(19,'P2021011000001','20210110/775b9819e809b3a10fa6ea7b5d4cf349.jpg','default1','参统资料',NULL,1610262394,1,NULL,NULL),
	(20,'P2021011000001','20210110/0a5607170fb68c4c571a41e86abdc3c2.jpg','default2','车损',NULL,1610262394,1,NULL,NULL),
	(21,'P2021011000001','20210110/b9f5448ca5392c7a93ac3d6055c335af.jpg','default2','车损',NULL,1610262394,1,NULL,NULL),
	(22,'2021011200001','20210112/76c554a6b4a57712f18af8ea8e64af46.jpg','default1','参统资料','杜兆森',1610439909,2,'杜兆森',1610439913),
	(23,'undefined','20210115/ab03c79dbe5fe5a42063a7673f803fb0.jpg','default1','参统资料','杜兆森',1610707215,1,NULL,NULL),
	(24,'BA2021010001','20210115/cd6726e5f7a8a49c85496be842e34da9.jpg','default1','参统资料','杜兆森',1610707382,1,NULL,NULL),
	(25,'BA2021010001','20210115/dae2a0a0f4ea1e49607e0190e1fdf77b.jpg','default2','dsfsdf','杜兆森',1610707392,1,NULL,NULL),
	(26,'2021011500001','20210115/741aab1f91cd14585239111ad12fa899.jpg','default1','参统资料','杜兆森',1610707466,1,NULL,NULL),
	(27,'BA2021010001','20210115/364e3bc0c808521fc72777ceb0852e9d.jpg','default1','参统资料','杜兆森',1610707497,2,'杜兆森',1610707500),
	(28,'BA2021010001','20210115/6052e39dd1f526417b18c9fe71596478.jpg','default1','参统资料','杜兆森',1610717319,1,NULL,NULL),
	(29,'2021011800001','20210118/f16d72232fdf5d257f4cee51a7dd000d.jpg','default1','参统资料','杜兆森',1610937745,1,NULL,NULL),
	(30,'2021011800001','20210118/873825e98a181322fa643a2f30a3dbad.jpg','default2','测哇','杜兆森',1610937751,1,NULL,NULL),
	(31,'2021012200001','20210122/7a4b2aef0e21cd689afc7bd19fea9a0e.jpg','default1','参统资料','杜兆森',1611294385,1,NULL,NULL),
	(32,'2021012200001','20210122/37786256babb138c6d289dff1311f8d5.jpg','default2','车损','杜兆森',1611294396,1,NULL,NULL),
	(33,'2021012200001','20210122/db4a301a02362aa6a0e916ada27da42b.jpg','default1','参统资料','杜兆森',1611308094,1,NULL,NULL),
	(34,'2021012200001','20210122/16b0b62509e9321eef22438497ce7b2c.jpg','default1','参统资料','杜兆森',1611308098,2,'杜兆森',1611308781),
	(35,'2021012200001','20210122/613f853af07c2dbb4abc603619c131ec.jpg','default2','jjj','杜兆森',1611308180,2,'杜兆森',1611308293),
	(36,'2021012200001','20210122/9b9c6787349f8935d6cfef25ae8d316c.jpg','default1','参统资料','杜兆森',1611308306,1,NULL,NULL),
	(37,'2021012200001','20210122/1984860a9f0bae3193b7067b422988a3.jpg','default2','车损','杜兆森',1611308946,2,'杜兆森',1611309047),
	(38,'2021012200001','20210122/aa297c7888a010a4d4a1c2dd22c9699f.jpg','default2','车损','杜兆森',1611309053,1,NULL,NULL),
	(39,'2021012300001','20210123/65b3d3fca07178af3e7d9bf65ebfa1ea.jpg','default1','参统资料','杜兆森',1611363638,2,'杜兆森',1611364450),
	(40,'2021012300001','20210123/fbe22fd8cea5901524acc8a4af6bb665.jpg','default1','参统资料','杜兆森',1611363646,1,NULL,NULL),
	(41,'2021012300001','20210123/4946471e276cf79bf55bd41b4bb53068.jpg','default1','参统资料','杜兆森',1611363722,1,NULL,NULL),
	(42,'2021012300001','20210123/b0b2d81e996f584561e9e1f3d96dc9bd.jpg','default1','参统资料','杜兆森',1611363839,1,NULL,NULL),
	(43,'2021012300001','20210123/88d12b77413181df98bdce6587cf0488.jpg','default1','参统资料','杜兆森',1611364446,1,NULL,NULL),
	(44,'2021012300001','20210123/637b5649f8416c01fe328ee1ca6f5ad1.jpg','default2','niuqi ','杜兆森',1611364457,1,NULL,NULL);

/*!40000 ALTER TABLE `zh_attach` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_car`;

CREATE TABLE `zh_car` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plate` varchar(20) DEFAULT NULL,
  `plate_type` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `car_name` varchar(11) DEFAULT NULL,
  `relationship` int(11) DEFAULT NULL,
  `license_type` int(11) DEFAULT NULL,
  `license_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `frame` varchar(30) DEFAULT NULL,
  `engine` varchar(30) DEFAULT NULL,
  `label_signal` varchar(20) DEFAULT NULL,
  `registered_time` int(11) DEFAULT NULL,
  `issuance_time` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `new_price` int(11) DEFAULT NULL,
  `actual_price` int(11) DEFAULT NULL,
  `species` int(11) DEFAULT NULL,
  `approved_user` int(11) DEFAULT NULL,
  `car_type` int(11) DEFAULT NULL,
  `approved_load` int(11) DEFAULT NULL,
  `curb_quality` int(11) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL,
  `use_nature` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `vehicle_inspection` int(11) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `last_year_danger` int(11) DEFAULT NULL,
  `participate_city` varchar(10) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `year_indemnity` int(11) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `last_year_status` int(11) DEFAULT NULL,
  `danger_total` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `remarks` text,
  `continuous_non_risk` int(11) DEFAULT NULL,
  `coefficient` int(11) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `continuous_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息';

LOCK TABLES `zh_car` WRITE;
/*!40000 ALTER TABLE `zh_car` DISABLE KEYS */;

INSERT INTO `zh_car` (`id`, `plate`, `plate_type`, `color`, `car_name`, `relationship`, `license_type`, `license_number`, `address`, `frame`, `engine`, `label_signal`, `registered_time`, `issuance_time`, `age`, `transfer`, `new_price`, `actual_price`, `species`, `approved_user`, `car_type`, `approved_load`, `curb_quality`, `displacement`, `use_nature`, `power`, `vehicle_inspection`, `reason`, `last_year_danger`, `participate_city`, `create_user`, `create_time`, `related_id`, `op_user`, `year_indemnity`, `op_time`, `name`, `last_year_status`, `danger_total`, `rating`, `remarks`, `continuous_non_risk`, `coefficient`, `discount`, `continuous_year`)
VALUES
	(1,'冀A12345',1,1,'杜',1,1,'130121199501123411','河北省石家庄市','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1608134400,1608134400,2,1,1530000,1400000,1,3,1,45,55,12,1,2,1,'手动方式分地方',1,'130000',NULL,1610439148,'2021010900001','杜兆森',NULL,1610439148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'冀A12340',1,1,'测试哇',1,1,'130121','河北省','chejiahao','fasongjihao','changpaixinghao',1609430400,1609430400,3,1,140000,130000,1,4,1,23,22,2,1,3,1,'reason',1,'130000',NULL,1610509826,'2021010900002','杜兆森',NULL,1610509826,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'冀A12345',1,1,'杜',1,1,'130121199501123411','河北省石家庄市','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1608134400,1608134400,2,1,1530000,1400000,1,3,1,45,55,12,1,2,1,'手动方式分地方',1,'130000',NULL,1610524510,'P2021011000001','杜兆森',NULL,1610524510,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'冀A11111',1,1,'独照',NULL,NULL,NULL,NULL,'sdffdsa','sdfjsdfsdf','sdfsdf',1609776000,NULL,2,1,2333333,2222222,4,3,4,23,33,NULL,3,NULL,2,'2',NULL,'130000',NULL,NULL,'BJ20210100001',NULL,3,NULL,NULL,2,2,2,'23234',23,23,23,22),
	(9,'冀A12340',1,1,'测试哇',1,1,'130121','河北省','chejiahao','fasongjihao','changpaixinghao',1609430400,1609430400,3,1,140000,130000,1,4,1,23,22,2,1,3,1,'reason',1,'130000',NULL,1610524734,'P2021011200001','杜兆森',NULL,1610524734,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'暂未上牌',3,1,'gua',1,1,'130121199501123400','河北省石家庄市','dsfsdf','34fdfsf','sdfdfa',1610899200,1610899200,1,1,1500000,1400000,1,5,1,23,NULL,23,1,23,1,'的说法是否',1,'130000',NULL,NULL,'2021011800001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `zh_car` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_car_damage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_car_damage`;

CREATE TABLE `zh_car_damage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) NOT NULL DEFAULT '' COMMENT '关联单号ID',
  `this_car` tinyint(11) NOT NULL COMMENT '是否本车：1是2否',
  `damage_plate` varchar(20) NOT NULL DEFAULT '' COMMENT '车牌号',
  `damage_brand` varchar(20) NOT NULL DEFAULT '' COMMENT '车辆品牌',
  `damage_model` varchar(20) NOT NULL DEFAULT '' COMMENT '车型型号',
  `damage_year` int(11) NOT NULL COMMENT '车辆年款',
  `damage_frame` varchar(50) NOT NULL DEFAULT '' COMMENT '车架号',
  `damage_engine` varchar(50) NOT NULL DEFAULT '' COMMENT '发动机号',
  `damage_driver` varchar(50) NOT NULL DEFAULT '' COMMENT '驾驶员',
  `damage_sex` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '性别',
  `damage_phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `damage_repairer` varchar(50) NOT NULL DEFAULT '' COMMENT '维修厂',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `accessories_money` float NOT NULL COMMENT '配件定损-金额小计',
  `accessories_approved` float NOT NULL COMMENT '配件定损-核定金额小计',
  `accessories_total` float NOT NULL COMMENT '配件定损-合计',
  `accessories_residual` float NOT NULL COMMENT '配件定损-残值',
  `accessories_all` float NOT NULL COMMENT '配件定损-总计',
  `work_money` float NOT NULL COMMENT '工时-金额小计',
  `work_approved` float NOT NULL COMMENT '工时-核定金额小计',
  `work_rescue` float NOT NULL COMMENT '工时-施救费',
  `work_all` float NOT NULL COMMENT '工时-总计',
  `work_total` float NOT NULL COMMENT '工时-合计',
  `finance_money` float NOT NULL COMMENT '财务-金额小计',
  `finance_approved` float NOT NULL COMMENT '财务-核定金额',
  `finance_total` float NOT NULL COMMENT '财务-合计',
  `finance_residual` float NOT NULL COMMENT '财务-残值',
  `finance_all` float NOT NULL COMMENT '财务-总计',
  `finance_litigation` float NOT NULL COMMENT '财务诉讼费',
  `finance_identification` float NOT NULL COMMENT '财务-鉴定费',
  `finance_appraisal` float NOT NULL COMMENT '财务-公估费',
  `finance_stay` float NOT NULL COMMENT '财务-住宿费',
  `finance_road` float NOT NULL COMMENT '财务-路桥费',
  `finance_fuel` float NOT NULL COMMENT '财务-燃油费',
  `finance_other` float NOT NULL COMMENT '财务-其他',
  `finance_summary` float NOT NULL COMMENT '财务汇总',
  `finance_remark` text NOT NULL COMMENT '财务备注说明',
  `damage_status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车损';



# Dump of table zh_carcode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_carcode`;

CREATE TABLE `zh_carcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(6) NOT NULL DEFAULT '' COMMENT '验车码',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_carcode` WRITE;
/*!40000 ALTER TABLE `zh_carcode` DISABLE KEYS */;

INSERT INTO `zh_carcode` (`id`, `code`, `time`)
VALUES
	(1,'3WPLTU',1611072000),
	(2,'D9RAGY',1611158400),
	(3,'KPAN16',1611244800);

/*!40000 ALTER TABLE `zh_carcode` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_compensation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_compensation`;

CREATE TABLE `zh_compensation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payee` varchar(50) NOT NULL DEFAULT '' COMMENT '收款人',
  `reloated_id` varchar(20) NOT NULL DEFAULT '' COMMENT '关联ID',
  `license_type` tinyint(4) NOT NULL COMMENT '证件类型',
  `license_number` varchar(18) NOT NULL DEFAULT '' COMMENT '证件号',
  `compensation_phone` char(11) NOT NULL DEFAULT '' COMMENT '电话',
  `compensation_relationship` varchar(50) NOT NULL DEFAULT '' COMMENT '与被统筹人关系',
  `compensation_bank` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `compensation_account` varchar(20) NOT NULL DEFAULT '' COMMENT '帐号',
  `compensation_money` float NOT NULL COMMENT '金额',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `other_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '是否其他类型：1是2否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='补偿款信息';



# Dump of table zh_coordinator
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_coordinator`;

CREATE TABLE `zh_coordinator` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coordinated_same` int(11) DEFAULT NULL,
  `coordinated_name` varchar(20) DEFAULT NULL,
  `coordinated_license_type` int(11) DEFAULT NULL,
  `coordinated_number` varchar(20) DEFAULT NULL,
  `coordinated_phone` varchar(13) DEFAULT NULL,
  `coordinated_email` varchar(20) DEFAULT NULL,
  `coordinated_address` varchar(20) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='被统筹人';

LOCK TABLES `zh_coordinator` WRITE;
/*!40000 ALTER TABLE `zh_coordinator` DISABLE KEYS */;

INSERT INTO `zh_coordinator` (`id`, `coordinated_same`, `coordinated_name`, `coordinated_license_type`, `coordinated_number`, `coordinated_phone`, `coordinated_email`, `coordinated_address`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,NULL,'杜',1,'13012199501123411',NULL,NULL,NULL,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,NULL,'杜兆森',1,'130',NULL,NULL,NULL,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(3,NULL,'杜',1,'13012199501123411',NULL,NULL,NULL,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(6,NULL,'杜兆森',1,'130',NULL,NULL,NULL,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734),
	(7,NULL,'dudu',1,'13012199501123222',NULL,NULL,NULL,'2021011800001','duzhaosen',1610937843,NULL,NULL);

/*!40000 ALTER TABLE `zh_coordinator` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_damage_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_damage_info`;

CREATE TABLE `zh_damage_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '统筹种类',
  `damage_name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `price_program` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '价格方案',
  `damage_price` float NOT NULL COMMENT '价格',
  `damage_num` tinyint(4) NOT NULL COMMENT '数量',
  `damage_money` float NOT NULL COMMENT '金额',
  `damage_discount` int(11) NOT NULL COMMENT '折扣',
  `damage_approved` float NOT NULL COMMENT '核定金额',
  `damage_remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '添加人',
  `damage_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1配件2工时3财务',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车损详情';



# Dump of table zh_documents_add
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_documents_add`;

CREATE TABLE `zh_documents_add` (
  `add_id` char(10) NOT NULL DEFAULT '' COMMENT '入库批次号',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1统筹单2批单',
  `s_num` char(7) NOT NULL DEFAULT '0' COMMENT '起始号',
  `e_num` char(7) NOT NULL DEFAULT '0' COMMENT '截止号',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总数量',
  `remaining` int(11) NOT NULL DEFAULT '0' COMMENT '剩余量',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '入库时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '有效截止期',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '最后操作人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后操作时间',
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单证入库表';

LOCK TABLES `zh_documents_add` WRITE;
/*!40000 ALTER TABLE `zh_documents_add` DISABLE KEYS */;

INSERT INTO `zh_documents_add` (`add_id`, `type`, `s_num`, `e_num`, `total`, `remaining`, `create_time`, `end_time`, `create_user`, `status`, `op_user`, `op_time`)
VALUES
	('0123164919',1,'00012','00033',22,18,1611391759,1642927759,'杜兆森',1,'',0),
	('0124103836',1,'02000','02020',21,21,1611455916,1642991916,'杜兆森',1,'',0),
	('0124152541',2,'00200','00300',101,98,1611473141,1643009141,'杜兆森',1,'',0);

/*!40000 ALTER TABLE `zh_documents_add` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_documents_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_documents_info`;

CREATE TABLE `zh_documents_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` char(10) NOT NULL DEFAULT '0' COMMENT '下发批次号/入库批次号',
  `documents_id` char(7) NOT NULL DEFAULT '0' COMMENT '单证号',
  `issued_time` int(11) NOT NULL DEFAULT '0' COMMENT '使用时间',
  `issued_user` varchar(50) NOT NULL DEFAULT '' COMMENT '使用人',
  `is_issued` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未使用2已使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_documents_info` WRITE;
/*!40000 ALTER TABLE `zh_documents_info` DISABLE KEYS */;

INSERT INTO `zh_documents_info` (`id`, `related_id`, `documents_id`, `issued_time`, `issued_user`, `is_issued`)
VALUES
	(1,'0123164919','00012',1611392389,'杜兆森',2),
	(2,'0123164919','00013',1611392389,'杜兆森',2),
	(3,'0123164919','00014',0,'',1),
	(4,'0123164919','00015',0,'',1),
	(5,'0123164919','00016',0,'',1),
	(6,'0123164919','00017',0,'',1),
	(7,'0123164919','00018',0,'',1),
	(8,'0123164919','00019',0,'',1),
	(9,'0123164919','00020',0,'',1),
	(10,'0123164919','00021',0,'',1),
	(11,'0123164919','00022',0,'',1),
	(12,'0123164919','00023',0,'',1),
	(13,'0123164919','00024',0,'',1),
	(14,'0123164919','00025',0,'',1),
	(15,'0123164919','00026',0,'',1),
	(16,'0123164919','00027',0,'',1),
	(17,'0123164919','00028',0,'',1),
	(18,'0123164919','00029',0,'',1),
	(19,'0123164919','00030',1611471546,'杜兆森',2),
	(20,'0123164919','00031',1611471546,'杜兆森',2),
	(21,'0123164919','00032',1611471546,'杜兆森',2),
	(22,'0123164919','00033',1611471546,'杜兆森',2),
	(25,'23165949','00012',0,'',1),
	(26,'23165949','00013',0,'',1),
	(27,'0124103836','02000',0,'',1),
	(28,'0124103836','02001',0,'',1),
	(29,'0124103836','02002',0,'',1),
	(30,'0124103836','02003',0,'',1),
	(31,'0124103836','02004',0,'',1),
	(32,'0124103836','02005',0,'',1),
	(33,'0124103836','02006',0,'',1),
	(34,'0124103836','02007',0,'',1),
	(35,'0124103836','02008',0,'',1),
	(36,'0124103836','02009',0,'',1),
	(37,'0124103836','02010',0,'',1),
	(38,'0124103836','02011',0,'',1),
	(39,'0124103836','02012',0,'',1),
	(40,'0124103836','02013',0,'',1),
	(41,'0124103836','02014',0,'',1),
	(42,'0124103836','02015',0,'',1),
	(43,'0124103836','02016',0,'',1),
	(44,'0124103836','02017',0,'',1),
	(45,'0124103836','02018',0,'',1),
	(46,'0124103836','02019',0,'',1),
	(47,'0124103836','02020',0,'',1),
	(48,'24145906','00030',1611471601,'杜兆森',2),
	(49,'24145906','00031',1611472680,'杜兆森',2),
	(50,'24145906','00032',1611472938,'杜兆森',2),
	(51,'24145906','00033',0,'',1),
	(52,'0124152541','00200',1611473154,'杜兆森',2),
	(53,'0124152541','00201',1611473154,'杜兆森',2),
	(54,'0124152541','00202',1611473154,'杜兆森',2),
	(55,'0124152541','00203',0,'',1),
	(56,'0124152541','00204',0,'',1),
	(57,'0124152541','00205',0,'',1),
	(58,'0124152541','00206',0,'',1),
	(59,'0124152541','00207',0,'',1),
	(60,'0124152541','00208',0,'',1),
	(61,'0124152541','00209',0,'',1),
	(62,'0124152541','00210',0,'',1),
	(63,'0124152541','00211',0,'',1),
	(64,'0124152541','00212',0,'',1),
	(65,'0124152541','00213',0,'',1),
	(66,'0124152541','00214',0,'',1),
	(67,'0124152541','00215',0,'',1),
	(68,'0124152541','00216',0,'',1),
	(69,'0124152541','00217',0,'',1),
	(70,'0124152541','00218',0,'',1),
	(71,'0124152541','00219',0,'',1),
	(72,'0124152541','00220',0,'',1),
	(73,'0124152541','00221',0,'',1),
	(74,'0124152541','00222',0,'',1),
	(75,'0124152541','00223',0,'',1),
	(76,'0124152541','00224',0,'',1),
	(77,'0124152541','00225',0,'',1),
	(78,'0124152541','00226',0,'',1),
	(79,'0124152541','00227',0,'',1),
	(80,'0124152541','00228',0,'',1),
	(81,'0124152541','00229',0,'',1),
	(82,'0124152541','00230',0,'',1),
	(83,'0124152541','00231',0,'',1),
	(84,'0124152541','00232',0,'',1),
	(85,'0124152541','00233',0,'',1),
	(86,'0124152541','00234',0,'',1),
	(87,'0124152541','00235',0,'',1),
	(88,'0124152541','00236',0,'',1),
	(89,'0124152541','00237',0,'',1),
	(90,'0124152541','00238',0,'',1),
	(91,'0124152541','00239',0,'',1),
	(92,'0124152541','00240',0,'',1),
	(93,'0124152541','00241',0,'',1),
	(94,'0124152541','00242',0,'',1),
	(95,'0124152541','00243',0,'',1),
	(96,'0124152541','00244',0,'',1),
	(97,'0124152541','00245',0,'',1),
	(98,'0124152541','00246',0,'',1),
	(99,'0124152541','00247',0,'',1),
	(100,'0124152541','00248',0,'',1),
	(101,'0124152541','00249',0,'',1),
	(102,'0124152541','00250',0,'',1),
	(103,'0124152541','00251',0,'',1),
	(104,'0124152541','00252',0,'',1),
	(105,'0124152541','00253',0,'',1),
	(106,'0124152541','00254',0,'',1),
	(107,'0124152541','00255',0,'',1),
	(108,'0124152541','00256',0,'',1),
	(109,'0124152541','00257',0,'',1),
	(110,'0124152541','00258',0,'',1),
	(111,'0124152541','00259',0,'',1),
	(112,'0124152541','00260',0,'',1),
	(113,'0124152541','00261',0,'',1),
	(114,'0124152541','00262',0,'',1),
	(115,'0124152541','00263',0,'',1),
	(116,'0124152541','00264',0,'',1),
	(117,'0124152541','00265',0,'',1),
	(118,'0124152541','00266',0,'',1),
	(119,'0124152541','00267',0,'',1),
	(120,'0124152541','00268',0,'',1),
	(121,'0124152541','00269',0,'',1),
	(122,'0124152541','00270',0,'',1),
	(123,'0124152541','00271',0,'',1),
	(124,'0124152541','00272',0,'',1),
	(125,'0124152541','00273',0,'',1),
	(126,'0124152541','00274',0,'',1),
	(127,'0124152541','00275',0,'',1),
	(128,'0124152541','00276',0,'',1),
	(129,'0124152541','00277',0,'',1),
	(130,'0124152541','00278',0,'',1),
	(131,'0124152541','00279',0,'',1),
	(132,'0124152541','00280',0,'',1),
	(133,'0124152541','00281',0,'',1),
	(134,'0124152541','00282',0,'',1),
	(135,'0124152541','00283',0,'',1),
	(136,'0124152541','00284',0,'',1),
	(137,'0124152541','00285',0,'',1),
	(138,'0124152541','00286',0,'',1),
	(139,'0124152541','00287',0,'',1),
	(140,'0124152541','00288',0,'',1),
	(141,'0124152541','00289',0,'',1),
	(142,'0124152541','00290',0,'',1),
	(143,'0124152541','00291',0,'',1),
	(144,'0124152541','00292',0,'',1),
	(145,'0124152541','00293',0,'',1),
	(146,'0124152541','00294',0,'',1),
	(147,'0124152541','00295',0,'',1),
	(148,'0124152541','00296',0,'',1),
	(149,'0124152541','00297',0,'',1),
	(150,'0124152541','00298',0,'',1),
	(151,'0124152541','00299',0,'',1),
	(152,'0124152541','00300',0,'',1),
	(153,'24152554','00200',1611473164,'杜兆森',2),
	(154,'24152554','00201',0,'',1),
	(155,'24152554','00202',0,'',1);

/*!40000 ALTER TABLE `zh_documents_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_documents_issued
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_documents_issued`;

CREATE TABLE `zh_documents_issued` (
  `issued_id` char(10) NOT NULL DEFAULT '' COMMENT '下发证号',
  `add_id` char(10) NOT NULL DEFAULT '0' COMMENT '入库批次号',
  `issued_structure` int(11) NOT NULL DEFAULT '0' COMMENT '下发组织',
  `issued_user` int(11) NOT NULL DEFAULT '0' COMMENT '下发工号',
  `issued_type` int(11) NOT NULL DEFAULT '0' COMMENT '类型：1统筹单2批单',
  `issued_s_num` char(7) NOT NULL DEFAULT '0000000' COMMENT '起始号',
  `issued_e_num` char(7) NOT NULL DEFAULT '0000000' COMMENT '截止号',
  `issued_total` int(11) NOT NULL DEFAULT '0' COMMENT '下发数量',
  `issued_remaining` int(11) NOT NULL DEFAULT '0' COMMENT '剩余量',
  `issued_create_time` int(11) NOT NULL COMMENT '下发时间',
  `issued_end_time` int(11) NOT NULL COMMENT '截止期',
  `issued_create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '操作人',
  `issued_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `issued_op_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `issued_op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '操作人',
  PRIMARY KEY (`issued_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单证下发表';

LOCK TABLES `zh_documents_issued` WRITE;
/*!40000 ALTER TABLE `zh_documents_issued` DISABLE KEYS */;

INSERT INTO `zh_documents_issued` (`issued_id`, `add_id`, `issued_structure`, `issued_user`, `issued_type`, `issued_s_num`, `issued_e_num`, `issued_total`, `issued_remaining`, `issued_create_time`, `issued_end_time`, `issued_create_user`, `issued_status`, `issued_op_time`, `issued_op_user`)
VALUES
	('23165949','0123164919',24,800003,1,'00012','00013',2,2,1611392389,1642928389,'杜兆森',1,0,''),
	('24145906','0123164919',3,800001,1,'00030','00033',3,4,1611471546,1643007546,'杜兆森',1,0,''),
	('24152554','0124152541',24,800001,2,'00200','00202',3,2,1611473154,1643009154,'杜兆森',1,0,'');

/*!40000 ALTER TABLE `zh_documents_issued` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_documents_recycle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_documents_recycle`;

CREATE TABLE `zh_documents_recycle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回收批次号',
  `add_id` char(10) NOT NULL DEFAULT '' COMMENT '入库批次号',
  `issued_id` char(10) NOT NULL DEFAULT '' COMMENT '下发批次号',
  `documents_id` char(7) NOT NULL DEFAULT '' COMMENT '单证号码',
  `recycle_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1统筹单2统筹批单',
  `recycle_structure` int(11) NOT NULL COMMENT '回收组织',
  `recycle_user` int(11) NOT NULL COMMENT '回收用户',
  `recycle_create_time` int(11) NOT NULL COMMENT '回收日期',
  `recycle_create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '回收操作人',
  `recycle_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `recycle_fettle` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1已使用2作废3空白',
  `recycle_op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '最后操作人',
  `recycle_op_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_documents_recycle` WRITE;
/*!40000 ALTER TABLE `zh_documents_recycle` DISABLE KEYS */;

INSERT INTO `zh_documents_recycle` (`id`, `add_id`, `issued_id`, `documents_id`, `recycle_type`, `recycle_structure`, `recycle_user`, `recycle_create_time`, `recycle_create_user`, `recycle_status`, `recycle_fettle`, `recycle_op_user`, `recycle_op_time`)
VALUES
	(1,'0123164919','23165949','00012',1,19,800004,1610380800,'杜兆森',1,1,'',0),
	(2,'0123164919','23165949','00013',1,19,800004,1610380800,'杜兆森',2,1,'杜兆森',1611454187);

/*!40000 ALTER TABLE `zh_documents_recycle` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_endorsements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_endorsements`;

CREATE TABLE `zh_endorsements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_id` varchar(20) DEFAULT NULL,
  `endorsements_id` varchar(20) DEFAULT NULL,
  `p_temporary_id` varchar(20) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `car_name` varchar(50) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `short_term_coefficient` int(11) DEFAULT NULL,
  `participate_name` text,
  `dispute_resolution` int(11) DEFAULT NULL,
  `agreement` text,
  `description` text,
  `be_unified_name` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `frame` varchar(30) DEFAULT NULL,
  `plate` char(7) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `attribution_user` varchar(20) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1待修改2待二级审核3待财务审核4审核通过',
  `new_id` int(11) DEFAULT NULL,
  `financial_review_user` varchar(20) DEFAULT NULL,
  `documents_id` int(11) DEFAULT NULL,
  `financial_review_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `approval` text COMMENT '批文',
  `endorsements_time` int(11) DEFAULT NULL COMMENT '批改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批单';

LOCK TABLES `zh_endorsements` WRITE;
/*!40000 ALTER TABLE `zh_endorsements` DISABLE KEYS */;

INSERT INTO `zh_endorsements` (`id`, `overall_id`, `endorsements_id`, `p_temporary_id`, `start_time`, `end_time`, `car_name`, `date_time`, `short_term_coefficient`, `participate_name`, `dispute_resolution`, `agreement`, `description`, `be_unified_name`, `create_user`, `create_time`, `frame`, `plate`, `type`, `attribution_user`, `manager`, `status`, `new_id`, `financial_review_user`, `documents_id`, `financial_review_time`, `op_user`, `op_time`, `approval`, `endorsements_time`)
VALUES
	(3,'ZH2021000000001','PZH2021000000001','P2021011000001',1610208000,1641657600,'杜',365,1,'杜',1,'1、玻璃统筹特别约定：参统玻璃单独破碎统筹按国产玻璃参统，理赔时按国产件补偿。\r\n2、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n3、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n','测试电话费舒服的沙发圣诞节飞机上看风景看就是地方即使分开就分开就是看的风景看大煞风景的手机费世杰地方大煞风景说',NULL,'duzhaosen',1610208000,'jdhh435ndfjge','冀A12345',1,'800004','800002',1,NULL,NULL,200,NULL,'杜兆森',1611473164,NULL,NULL),
	(6,'ZH2021000000002','ZH4','P2021011200001',1610208000,1640966400,'测试哇',357,1,'duzhaosen',1,'1、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n2、车上货物责任统筹特别约定：易燃、易碎、易腐蚀、易污染物品及鲜活产品不在统筹责任范围内。单独运输玻璃（玻璃不得与其他货物混装）且仅在发生道路交通事故的情况下，统筹人负责补偿。2吨以下车辆单次责任限额**万，年累计责任限额**万。\r\n3、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n4、无其他特别约定。（*此项为必须）\r\n','测试参统寿',NULL,'duzhaosen',1610467200,'chejiahao','冀A12340',1,'800004','800002',4,NULL,'杜兆森',NULL,1610526736,'杜兆森',1610526736,NULL,1610442752);

/*!40000 ALTER TABLE `zh_endorsements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_human_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_human_info`;

CREATE TABLE `zh_human_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `human_id` int(11) NOT NULL COMMENT '人伤主表ID',
  `overall_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '统筹种类',
  `injury_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `injury_sex` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '性别',
  `injury_age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `injury_domicile` varchar(100) NOT NULL DEFAULT '' COMMENT '户籍性质',
  `injury_medical` varchar(100) NOT NULL DEFAULT '' COMMENT '医疗机构',
  `injury_record` varchar(20) NOT NULL DEFAULT '' COMMENT '病案号',
  `injury_money` float NOT NULL COMMENT '金额',
  `injury_approved` float NOT NULL COMMENT '核定金额',
  `injury_remarks` text NOT NULL COMMENT '备注',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `injury_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人伤详情';



# Dump of table zh_human_injury
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_human_injury`;

CREATE TABLE `zh_human_injury` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` char(20) NOT NULL DEFAULT '' COMMENT '关联ID',
  `human_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1本车人2三者人',
  `human_money` float NOT NULL COMMENT '金额小计',
  `human_approved` float NOT NULL COMMENT '核定金额',
  `human_fee` float NOT NULL COMMENT '费用合计',
  `human_litigation` float NOT NULL COMMENT '诉讼费',
  `human_identification` float NOT NULL COMMENT '鉴定费',
  `human_appraisal` float NOT NULL COMMENT '公估费',
  `human_stay` float NOT NULL COMMENT '住宿费',
  `human_road` float NOT NULL COMMENT '路桥费',
  `human_fue` float NOT NULL COMMENT '燃油费',
  `human_other` float NOT NULL COMMENT '其他',
  `human_total` bigint(20) NOT NULL COMMENT '合计',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='`finance_firm` float NOT NULL COMMENT ''财务-鉴定费'',\n  `finance_appraisal` float NOT NULL COMMENT ''财务-公估费'',\n  `finance_stay` float NOT NULL COMMENT ''财务-住宿费'',\n  `finance_road` float NOT NULL COMMENT ''财务-路桥费'',\n  `finance_fuel` float NOT NULL COMMENT ''财务-燃油费'',\n  `finance_other` float NOT NULL COMMENT ''财务-其他'',\n  `finance_summary` float NOT NULL COMMENT ''财务汇总'',';



# Dump of table zh_invoice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_invoice`;

CREATE TABLE `zh_invoice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_type` varchar(11) DEFAULT NULL,
  `invoice_name` varchar(50) DEFAULT NULL,
  `invoice_tax` varchar(50) DEFAULT NULL,
  `invoice_bank` varchar(50) DEFAULT NULL,
  `invoice_account` varchar(50) DEFAULT NULL,
  `invoice_open_address` varchar(50) DEFAULT NULL,
  `invoice_phone` varchar(13) DEFAULT NULL,
  `invoice_remarks` text,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发票';

LOCK TABLES `zh_invoice` WRITE;
/*!40000 ALTER TABLE `zh_invoice` DISABLE KEYS */;

INSERT INTO `zh_invoice` (`id`, `invoice_type`, `invoice_name`, `invoice_tax`, `invoice_bank`, `invoice_account`, `invoice_open_address`, `invoice_phone`, `invoice_remarks`, `create_user`, `create_time`, `related_id`, `op_user`, `op_time`)
VALUES
	(1,'1','发票',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1610171073,'2021010900001',NULL,NULL),
	(2,'1','jdjs','shuihao','3242342',NULL,NULL,NULL,NULL,NULL,1610172657,'2021010900002',NULL,NULL);

/*!40000 ALTER TABLE `zh_invoice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_logs`;

CREATE TABLE `zh_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) NOT NULL DEFAULT '' COMMENT '日志类型：1增加2编辑3删除4上传',
  `log_time` varchar(30) NOT NULL DEFAULT '' COMMENT '添加时间',
  `power_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `log_server_ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `login_name` varchar(30) NOT NULL DEFAULT '' COMMENT '操作人',
  `log_content` text NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_logs` WRITE;
/*!40000 ALTER TABLE `zh_logs` DISABLE KEYS */;

INSERT INTO `zh_logs` (`id`, `log_type`, `log_time`, `power_id`, `log_server_ip`, `login_name`, `log_content`)
VALUES
	(1,'1','2021-01-21 11:03:23:597',11,'2886795265','杜兆森','添加角色name=sefsdf&type=1&powers=&admin=1&salesman=1结果：成功'),
	(2,'1','2021-01-21 11:04:57:156',11,'2886795265','杜兆森','添加角色name=sefsdf&type=1&powers=&admin=1&salesman=1结果：成功'),
	(3,'1','2021-01-21 13:45:36:096',6,'2886795265','杜兆森','添加菜单pid=4&name=%E6%97%A5%E5%BF%97%E7%AE%A1%E7%90%86&folder=System&action=logs%2Findex&isshow=1结果：成功'),
	(4,'7','2021-01-21 14:00:54:015',33,'2886795265','杜兆森','登陆成功0%5Bid%5D=800001&0%5Busername%5D=duzhaosen&0%5Bpasswd%5D=70bc419990b6bc19fc89f2ec3a470af7&0%5Bidentity%5D=130121199501123410&0%5Bsalesman%5D=1&0%5Btype%5D=1&0%5Bmanager%5D=1&0%5Bstructure%5D=1&0%5Broles%5D=1&0%5Bsex%5D=1&0%5Bcity%5D=130000&0%5Bcreate_time%5D=2021-01-11+09%3A29%3A39&0%5Bop_user%5D=%E6%9D%9C%E5%85%86%E6%A3%AE&0%5Bop_time%5D=2021-01-19+16%3A43%3A04&0%5Bphone%5D=19903211962&0%5Bname%5D=%E6%9D%9C%E5%85%86%E6%A3%AE&0%5Bpinyin_name%5D=duzhaosen&0%5BstructureStr%5D=%E6%80%BB%E9%83%A8&0%5BrolesStr%5D=%E4%B8%AD%E4%BA%92&0%5BtypeStr%5D=%E5%90%AF%E7%94%A8&0%5BsalesmanStr%5D=%E4%B8%9A%E5%8A%A1%E5%91%98&0%5BmanagerStr%5D=%E7%BB%8F%E5%8A%9E%E4%BA%BA&0%5BsexStr%5D=%E7%94%B7&0%5Ball_name%5D=%E6%9D%9C%E5%85%86%E6%A3%AE%26nbsp%28duzhaosen%29%26nbsp%28%E6%80%BB%E9%83%A8%29%26nbsp%28%E4%B8%AD%E4%BA%92%29&0%5BcityName%5D=%E6%B2%B3%E5%8C%97%E7%9C%81'),
	(5,'7','2021-01-22 08:37:29:076',33,'2886795265','杜兆森','登陆成功'),
	(6,'8','2021-01-22 09:56:05:445',0,'','system','任务开始执行'),
	(7,'8','2021-01-22 09:56:05:485',0,'','system','验车码生成成功，第0次,内容KPAN16'),
	(8,'8','2021-01-22 09:56:05:490',0,'','system','任务执行完毕'),
	(9,'7','2021-01-22 09:56:14:159',33,'2886795265','杜兆森','登陆成功'),
	(10,'7','2021-01-22 10:02:18:001',33,'2886795265','杜兆森','登陆成功'),
	(11,'7','2021-01-22 10:02:47:801',33,'2886795265','杜兆森','登陆成功'),
	(12,'7','2021-01-22 13:42:37:167',33,'2886795265','杜兆森','登陆成功'),
	(13,'4','2021-01-22 13:46:25:498',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F7a4b2aef0e21cd689afc7bd19fea9a0e.jpg&id=31'),
	(14,'4','2021-01-22 13:46:36:342',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F37786256babb138c6d289dff1311f8d5.jpg&id=32'),
	(15,'1','2021-01-22 14:42:22:562',6,'2886795265','杜兆森','添加菜单name=%E5%8D%95%E8%AF%81%E7%AE%A1%E7%90%86&folder=Documents&isshow=1结果：成功'),
	(16,'1','2021-01-22 14:42:49:384',6,'2886795265','杜兆森','添加菜单pid=24&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=documents%2Fadd&isshow=1结果：成功'),
	(17,'2','2021-01-22 14:43:20:669',7,'2886795265','杜兆森','修改菜单id=49&pid=48&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=documents%2Fadd&isshow=1结果：成功'),
	(18,'1','2021-01-22 14:43:46:253',6,'2886795265','杜兆森','添加菜单pid=48&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=documents%2Fissued&isshow=1结果：成功'),
	(19,'1','2021-01-22 14:44:04:632',6,'2886795265','杜兆森','添加菜单pid=48&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=documents%2Frecycle&isshow=1结果：成功'),
	(20,'2','2021-01-22 14:44:36:211',7,'2886795265','杜兆森','菜单排序id=48&sort=6结果：成功'),
	(21,'2','2021-01-22 14:44:48:484',7,'2886795265','杜兆森','菜单排序id=34&sort=7结果：成功'),
	(22,'2','2021-01-22 14:44:59:270',7,'2886795265','杜兆森','菜单排序id=8&sort=8结果：成功'),
	(23,'2','2021-01-22 14:45:14:927',7,'2886795265','杜兆森','菜单排序id=8&sort=9结果：成功'),
	(24,'2','2021-01-22 14:45:32:766',7,'2886795265','杜兆森','菜单排序id=4&sort=9结果：成功'),
	(25,'2','2021-01-22 14:45:39:381',7,'2886795265','杜兆森','菜单排序id=8&sort=8结果：成功'),
	(26,'1','2021-01-22 15:50:26:911',495,'2886795265','杜兆森','添加单证入库s_num=0001&e_num=0002&total=2&type=1结果：成功'),
	(27,'1','2021-01-22 15:56:21:600',495,'2886795265','杜兆森','添加单证入库s_num=0002&e_num=0003&total=2&type=1结果：成功'),
	(28,'1','2021-01-22 16:06:18:237',495,'2886795265','杜兆森','添加单证入库s_num=0001&e_num=0002&total=2&type=1结果：成功'),
	(29,'3','2021-01-22 16:53:10:695',15,'2886795265','杜兆森','删除单证add_id=0122160618结果：成功'),
	(30,'1','2021-01-22 17:03:54:320',15,'2886795265','杜兆森','添加单证入库s_num=0002&e_num=0003&total=2&type=1结果：成功'),
	(31,'4','2021-01-22 17:34:54:947',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2Fdb4a301a02362aa6a0e916ada27da42b.jpg&id=33'),
	(32,'4','2021-01-22 17:34:58:136',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F16b0b62509e9321eef22438497ce7b2c.jpg&id=34'),
	(33,'4','2021-01-22 17:36:20:248',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F613f853af07c2dbb4abc603619c131ec.jpg&id=35'),
	(34,'3','2021-01-22 17:38:13:623',0,'2886795265','杜兆森','删除文件id-35结果：成功'),
	(35,'4','2021-01-22 17:38:26:840',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210122%2F9b9c6787349f8935d6cfef25ae8d316c.jpg&id=36'),
	(36,'3','2021-01-22 17:46:21:627',0,'2886795265','杜兆森','删除文件id-34结果：成功'),
	(37,'4','2021-01-22 17:49:06:283',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2F1984860a9f0bae3193b7067b422988a3.jpg&id=37'),
	(38,'3','2021-01-22 17:50:47:870',0,'2886795265','杜兆森','删除文件id-37结果：成功'),
	(39,'4','2021-01-22 17:50:53:195',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210122%2Faa297c7888a010a4d4a1c2dd22c9699f.jpg&id=38'),
	(40,'3','2021-01-22 17:51:01:357',0,'2886795265','杜兆森','删除文件id-function(el) {\\n            return this.splice(this.indexOf(el), 1);\\n        }结果：失败'),
	(41,'7','2021-01-23 09:00:22:513',33,'2886795265','杜兆森','登陆成功'),
	(42,'4','2021-01-23 09:00:38:424',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F65b3d3fca07178af3e7d9bf65ebfa1ea.jpg&id=39'),
	(43,'4','2021-01-23 09:00:46:757',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2Ffbe22fd8cea5901524acc8a4af6bb665.jpg&id=40'),
	(44,'4','2021-01-23 09:02:02:448',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F4946471e276cf79bf55bd41b4bb53068.jpg&id=41'),
	(45,'4','2021-01-23 09:03:59:815',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2Fb0b2d81e996f584561e9e1f3d96dc9bd.jpg&id=42'),
	(46,'4','2021-01-23 09:14:06:026',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210123%2F88d12b77413181df98bdce6587cf0488.jpg&id=43'),
	(47,'3','2021-01-23 09:14:10:057',0,'2886795265','杜兆森','删除文件id-39结果：成功'),
	(48,'4','2021-01-23 09:14:17:815',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210123%2F637b5649f8416c01fe328ee1ca6f5ad1.jpg&id=44'),
	(49,'1','2021-01-23 09:17:43:773',15,'2886795265','杜兆森','添加单证入库s_num=0001&e_num=0022&total=22&type=1结果：成功'),
	(50,'3','2021-01-23 09:21:51:798',15,'2886795265','杜兆森','删除单证add_id=0123091743结果：成功'),
	(51,'2','2021-01-23 10:49:08:832',7,'2886795265','杜兆森','修改菜单id=49&pid=48&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=warehousing%2Fwarehousing&isshow=1结果：成功'),
	(52,'2','2021-01-23 10:49:29:545',7,'2886795265','杜兆森','修改菜单id=50&pid=48&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=issued%2Fissued&isshow=1结果：成功'),
	(53,'2','2021-01-23 10:49:44:041',7,'2886795265','杜兆森','修改菜单id=51&pid=48&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=recycle%2Frecycle&isshow=1结果：成功'),
	(54,'1','2021-01-23 13:50:58:742',50,'2886795265','杜兆森','添加单证下发issued_structure=24&issued_user=800004&issued_type=1&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：失败'),
	(55,'1','2021-01-23 13:54:06:639',50,'2886795265','杜兆森','添加单证下发issued_structure=24&issued_user=800004&issued_type=1&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：成功'),
	(56,'1','2021-01-23 13:57:35:444',50,'2886795265','杜兆森','添加单证下发issued_structure=15&issued_user=800003&issued_type=2&issued_s_num=00002&issued_e_num=00003&issued_total=2&add_id=0122170354结果：成功'),
	(57,'7','2021-01-23 14:22:41:702',33,'2886795265','杜兆森','登陆成功'),
	(58,'3','2021-01-23 14:37:33:718',50,'2886795265','杜兆森','删除单证下发issued_id=23135735结果：成功'),
	(59,'1','2021-01-23 15:25:57:187',49,'2886795265','杜兆森','添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败'),
	(60,'1','2021-01-23 15:28:11:389',49,'2886795265','杜兆森','添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败'),
	(61,'1','2021-01-23 15:29:01:030',49,'2886795265','杜兆森','添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：失败'),
	(62,'1','2021-01-23 15:29:24:920',49,'2886795265','杜兆森','添加单证入库s_num=00023&e_num=00099&total=77&type=1结果：成功'),
	(63,'1','2021-01-23 16:40:03:395',50,'2886795265','杜兆森','添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败'),
	(64,'1','2021-01-23 16:40:10:476',50,'2886795265','杜兆森','添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败'),
	(65,'1','2021-01-23 16:40:44:820',50,'2886795265','杜兆森','添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：失败'),
	(66,'1','2021-01-23 16:42:47:887',50,'2886795265','杜兆森','添加单证下发issued_structure=14&issued_user=800003&issued_type=2&issued_s_num=00023&issued_e_num=00030&issued_total=8&add_id=0123152924结果：成功'),
	(67,'3','2021-01-23 16:48:20:949',49,'2886795265','杜兆森','删除单证add_id=0123152924结果：成功'),
	(68,'3','2021-01-23 16:48:23:035',49,'2886795265','杜兆森','删除单证add_id=0122170354结果：成功'),
	(69,'3','2021-01-23 16:48:28:061',50,'2886795265','杜兆森','删除单证下发issued_id=23135735结果：成功'),
	(70,'1','2021-01-23 16:49:19:755',49,'2886795265','杜兆森','添加单证入库s_num=00012&e_num=00033&total=22&type=1结果：成功'),
	(71,'1','2021-01-23 16:54:54:037',50,'2886795265','杜兆森','添加单证下发issued_structure=24&issued_user=800003&issued_type=1&issued_s_num=00022&issued_e_num=00023&issued_total=2&add_id=0123164919结果：成功'),
	(72,'1','2021-01-23 16:59:49:846',50,'2886795265','杜兆森','添加单证下发issued_structure=24&issued_user=800003&issued_type=1&issued_s_num=00012&issued_e_num=00013&issued_total=2&add_id=0123164919结果：成功'),
	(73,'7','2021-01-24 08:52:52:226',33,'2886795265','杜兆森','登陆成功'),
	(74,'1','2021-01-24 09:52:19:051',50,'2886795265','杜兆森','添加单证回收recycle_structure=19&recycle_user=800004&recycle_s_num=00012&recycle_e_num=00013&recycle_total=2&recycle_fettle=1&recycle_create_time=2021%2F01%2F12&recycle_type=1&add_id=0123164919&issued_id=23165949结果：成功'),
	(75,'3','2021-01-24 10:09:47:277',50,'2886795265','杜兆森','删除单证回收id=2结果：成功'),
	(76,'1','2021-01-24 10:38:36:978',49,'2886795265','杜兆森','添加单证入库s_num=02000&e_num=02020&total=21&type=1结果：成功'),
	(77,'5','2021-01-24 10:40:24:433',49,'2886795265','杜兆森','单证入库导出总条数：2'),
	(78,'5','2021-01-24 13:48:12:060',50,'2886795265','杜兆森','单证入库导出总条数：1'),
	(79,'5','2021-01-24 13:48:26:103',49,'2886795265','杜兆森','单证入库导出总条数：1'),
	(80,'7','2021-01-24 14:03:43:508',33,'2886795265','杜兆森','登陆成功'),
	(81,'1','2021-01-24 14:59:06:407',50,'2886795265','杜兆森','添加单证下发issued_structure=3&issued_user=800001&issued_type=1&issued_s_num=00030&issued_e_num=00033&issued_total=4&add_id=0123164919结果：成功'),
	(82,'2','2021-01-24 15:00:01:538',1,'2886795265','杜兆森','打印documents_id=00030&id=1&issued_type=1&issued_id=24145906结果：成功'),
	(83,'2','2021-01-24 15:18:00:492',1,'2886795265','杜兆森','打印documents_id=00031&related_id=2021010900002&issued_type=1&issued_id=24145906结果：成功'),
	(84,'2','2021-01-24 15:22:18:769',1,'2886795265','杜兆森','打印documents_id=00032&related_id=2021011800001&issued_type=1&issued_id=24145906结果：成功'),
	(85,'1','2021-01-24 15:25:41:295',49,'2886795265','杜兆森','添加单证入库s_num=00200&e_num=00300&total=101&type=2结果：成功'),
	(86,'1','2021-01-24 15:25:54:499',50,'2886795265','杜兆森','添加单证下发issued_structure=24&issued_user=800001&issued_type=2&issued_s_num=00200&issued_e_num=00202&issued_total=3&add_id=0124152541结果：成功'),
	(87,'2','2021-01-24 15:26:04:089',1,'2886795265','杜兆森','打印documents_id=00200&related_id=P2021011000001&issued_type=2&issued_id=24152554结果：成功');

/*!40000 ALTER TABLE `zh_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_menu`;

CREATE TABLE `zh_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `folder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `action` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `param` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `isshow` int(11) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT '1',
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `create_user` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `level` int(11) DEFAULT '1',
  `icon` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `op_user` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='菜单';

LOCK TABLES `zh_menu` WRITE;
/*!40000 ALTER TABLE `zh_menu` DISABLE KEYS */;

INSERT INTO `zh_menu` (`id`, `folder`, `action`, `param`, `url`, `isshow`, `op_time`, `create_time`, `type`, `sort`, `name`, `pid`, `create_user`, `level`, `icon`, `op_user`)
VALUES
	(1,'Overall',NULL,NULL,NULL,1,1610356384,1610065672,1,2,'统筹单管理',NULL,NULL,NULL,NULL,'杜兆森'),
	(2,'Overall','overall/add',NULL,NULL,1,NULL,1610065890,1,1,'统筹单添加',1,NULL,1,NULL,NULL),
	(3,'Overall','overall/index',NULL,NULL,1,NULL,1610065907,1,1,'统筹单查询',1,NULL,1,NULL,NULL),
	(4,'System',NULL,NULL,NULL,1,1611297932,1610329936,1,9,'系统设置',NULL,'duzhaosen',1,NULL,'杜兆森'),
	(5,'System','menu/index',NULL,NULL,1,NULL,1610329964,1,1,'菜单管理',4,'duzhaosen',1,NULL,NULL),
	(6,'System','menu/add',NULL,NULL,2,1610330320,1610330281,1,1,'菜单添加',5,'duzhaosen',1,NULL,'duzhaosen'),
	(7,'System','menu/edit',NULL,NULL,2,1610330332,1610330305,1,1,'菜单修改',5,'duzhaosen',1,NULL,'duzhaosen'),
	(8,'User',NULL,NULL,NULL,1,1611297939,1610331030,1,8,'组织管理',NULL,'duzhaosen',1,NULL,'杜兆森'),
	(9,'User','structure/index',NULL,NULL,1,NULL,1610331057,1,1,'组织结构',8,'duzhaosen',1,NULL,NULL),
	(10,'User','user/index',NULL,NULL,1,NULL,1610331101,1,1,'人员管理',8,'duzhaosen',1,NULL,NULL),
	(11,'User','roles/index',NULL,NULL,1,NULL,1610331121,1,1,'角色管理',8,'duzhaosen',1,NULL,NULL),
	(12,'System','pass/edit',NULL,NULL,1,NULL,1610331546,1,1,'密码修改',4,'duzhaosen',1,NULL,NULL),
	(13,'Endorsements',NULL,NULL,NULL,1,1610445769,1610355976,1,4,'统筹单批改',NULL,'杜兆森',1,NULL,'杜兆森'),
	(14,'Endorsements','newcar/index',NULL,NULL,1,NULL,1610356008,1,1,'新车上牌',13,'杜兆森',1,NULL,NULL),
	(15,'Endorsements','fullorder/correction',NULL,NULL,1,NULL,1610356063,1,1,'全单批改',13,'杜兆森',1,NULL,NULL),
	(16,'Endorsements','endorsements/index',NULL,NULL,1,NULL,1610356103,1,1,'批单查询',13,'杜兆森',1,NULL,NULL),
	(17,'Quotation',NULL,NULL,NULL,1,NULL,1610356156,1,1,'报价单管理',NULL,'杜兆森',1,NULL,NULL),
	(18,'Quotation','quotation/add',NULL,NULL,1,NULL,1610356175,1,1,'报价单录入',17,'杜兆森',1,NULL,NULL),
	(19,'Quotation','quotation/index',NULL,NULL,1,NULL,1610356199,1,1,'报价单查询',17,'杜兆森',1,NULL,NULL),
	(20,'Quotation','quotation/copy',NULL,NULL,2,1610436023,1610435953,1,1,'报价单复制',17,'杜兆森',1,NULL,'杜兆森'),
	(21,'Quotation','quotation/edit',NULL,NULL,2,NULL,1610436518,1,1,'报价单修改',17,'杜兆森',1,NULL,NULL),
	(22,'Overall','overall/view',NULL,NULL,2,1610437517,1610436538,1,1,'统筹单详情页',1,'杜兆森',1,NULL,'杜兆森'),
	(23,'Overall','overall/edit',NULL,NULL,2,NULL,1610438107,1,1,'统筹单修改',1,'杜兆森',1,NULL,NULL),
	(24,'Review',NULL,NULL,NULL,1,1610445776,1610445354,1,5,'审核管理',NULL,'杜兆森',1,NULL,'杜兆森'),
	(25,'Review','primary/review',NULL,NULL,1,NULL,1610445387,1,1,'初级审核',24,'杜兆森',1,NULL,NULL),
	(26,'Review','secondary/overall',NULL,NULL,1,NULL,1610445459,1,1,'二级审核（统筹单）',24,'杜兆森',1,NULL,NULL),
	(27,'Review','secondary/endorsements',NULL,NULL,1,NULL,1610445489,1,1,'二级审核（批单）',24,'杜兆森',1,NULL,NULL),
	(28,'Financial',NULL,NULL,NULL,1,1610445758,1610445528,1,3,'财务管理',NULL,'杜兆森',1,NULL,'杜兆森'),
	(29,'Financial','overall/review',NULL,NULL,1,NULL,1610445586,1,1,'财务审核（统筹单）',28,'杜兆森',1,NULL,NULL),
	(30,'Financial','overall/index',NULL,NULL,1,NULL,1610445616,1,1,'财务查询（统筹单）',28,'杜兆森',1,NULL,NULL),
	(31,'Financial','endorsements/review',NULL,NULL,1,NULL,1610445677,1,1,'财务审核（批单）',28,'杜兆森',1,NULL,NULL),
	(32,'Financial','endorsements/index',NULL,NULL,1,NULL,1610445706,1,1,'财务查询（批单）',28,'杜兆森',1,NULL,NULL),
	(33,'Index','index',NULL,NULL,2,1610861169,1610501189,1,1,'首页',NULL,'杜兆森',1,NULL,'杜兆森'),
	(34,'Overallcompensation',NULL,NULL,NULL,1,1611297888,1610585459,1,7,'统筹单补偿',NULL,'杜兆森',1,NULL,'杜兆森'),
	(35,'Overallcompensation','report/index',NULL,NULL,1,1611044496,1610585488,1,1,'报案中心',34,'杜兆森',1,NULL,'杜兆森'),
	(36,'Overallcompensation','survey/index',NULL,NULL,1,1611044506,1610585518,1,1,'查勘中心',34,'杜兆森',1,NULL,'杜兆森'),
	(37,'Overallcompensation','report/add',NULL,NULL,2,NULL,1610594430,1,1,'报案添加',35,'杜兆森',1,NULL,NULL),
	(38,'Quotation','quotation/quotationPdf',NULL,NULL,2,NULL,1611042982,1,1,'生成报价单',17,'杜兆森',1,NULL,NULL),
	(39,'Overall','overall/copy',NULL,NULL,2,NULL,1611043062,1,1,'统筹单复制',1,'杜兆森',1,NULL,NULL),
	(40,'Endorsements','fullorder/editEndorsements',NULL,NULL,2,NULL,1611044354,1,1,'批单修改',13,'杜兆森',1,NULL,NULL),
	(41,'Overallcompensation','survey/add',NULL,NULL,2,NULL,1611044403,1,1,'查勘录入',36,'杜兆森',1,NULL,NULL),
	(42,'Quotation','quotation/index',NULL,NULL,2,NULL,1611044731,1,1,'报价单详情',17,'杜兆森',1,NULL,NULL),
	(43,'Endorsements','endorsements/view',NULL,NULL,2,NULL,1611044864,1,1,'批单详情页',13,'杜兆森',1,NULL,NULL),
	(44,'System','carcode/index',NULL,NULL,1,NULL,1611123230,1,1,'验车码',4,'杜兆森',1,NULL,NULL),
	(45,'<script>alert(\"1\")</script>',NULL,NULL,NULL,1,1611124864,1611124759,2,1,'<script>alert(\"1\")</script>',NULL,'杜兆森',1,NULL,'杜兆森'),
	(46,'Overallcompensation','report/edit',NULL,NULL,2,NULL,1611199290,1,1,'报案中心修改',35,'杜兆森',1,NULL,NULL),
	(47,'System','logs/index',NULL,NULL,1,NULL,1611207936,1,1,'日志管理',4,'杜兆森',1,NULL,NULL),
	(48,'Documents',NULL,NULL,NULL,1,1611297876,1611297742,1,6,'单证管理',NULL,'杜兆森',1,NULL,'杜兆森'),
	(49,'Documents','warehousing/warehousing',NULL,NULL,1,1611370148,1611297769,1,1,'单证入库',48,'杜兆森',1,NULL,'杜兆森'),
	(50,'Documents','issued/issued',NULL,NULL,1,1611370169,1611297826,1,1,'单证下发',48,'杜兆森',1,NULL,'杜兆森'),
	(51,'Documents','recycle/recycle',NULL,NULL,1,1611370184,1611297844,1,1,'单证回收',48,'杜兆森',1,NULL,'杜兆森');

/*!40000 ALTER TABLE `zh_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_overall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_overall`;

CREATE TABLE `zh_overall` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_id` varchar(20) DEFAULT NULL,
  `temporary_id` varchar(20) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `car_name` varchar(50) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `short_term_coefficient` int(11) DEFAULT NULL,
  `participate_name` text,
  `dispute_resolution` int(11) DEFAULT NULL,
  `agreement` text,
  `description` text,
  `be_unified_name` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `frame` varchar(30) DEFAULT NULL,
  `plate` char(7) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `attribution_user` varchar(20) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1暂存2待修改3待初级审核4待二级审核5待财务审核6审核通过',
  `new_id` int(11) DEFAULT NULL,
  `financial_review_user` varchar(20) DEFAULT NULL,
  `documents_id` char(7) DEFAULT '' COMMENT '单证号',
  `financial_review_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `continuation` int(11) DEFAULT '2' COMMENT '是否续统：1是2否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='统筹单';

LOCK TABLES `zh_overall` WRITE;
/*!40000 ALTER TABLE `zh_overall` DISABLE KEYS */;

INSERT INTO `zh_overall` (`id`, `overall_id`, `temporary_id`, `start_time`, `end_time`, `car_name`, `date_time`, `short_term_coefficient`, `participate_name`, `dispute_resolution`, `agreement`, `description`, `be_unified_name`, `create_user`, `create_time`, `frame`, `plate`, `type`, `attribution_user`, `manager`, `status`, `new_id`, `financial_review_user`, `documents_id`, `financial_review_time`, `op_user`, `op_time`, `continuation`)
VALUES
	(1,'ZH2021000000001','2021010900001',1610208000,1641657600,'杜',365,1,'杜',1,'1、玻璃统筹特别约定：参统玻璃单独破碎统筹按国产玻璃参统，理赔时按国产件补偿。\r\n2、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n3、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n','测试电话费舒服的沙发圣诞节飞机上看风景看就是地方即使分开就分开就是看的风景看大煞风景的手机费世杰地方大煞风景',NULL,'duzhaosen',1610380800,'jdhh435ndfjge','冀A12345',1,'800003','800002',1,NULL,NULL,'30',NULL,'杜兆森',1611471601,2),
	(2,'ZH2021000000002','2021010900002',1610208000,1640966400,'测试哇',357,1,'duzhaosen',1,'1、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n2、车上货物责任统筹特别约定：易燃、易碎、易腐蚀、易污染物品及鲜活产品不在统筹责任范围内。单独运输玻璃（玻璃不得与其他货物混装）且仅在发生道路交通事故的情况下，统筹人负责补偿。2吨以下车辆单次责任限额**万，年累计责任限额**万。\r\n3、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n4、无其他特别约定。（*此项为必须）\r\n','测试参统寿命',NULL,'duzhaosen',1610467200,'chejiahao','冀A12340',1,'800004','800002',6,NULL,NULL,'00031',NULL,'杜兆森',1611472680,2),
	(5,NULL,'2021011800001',1610985600,1642176000,'gua',362,1,'dudu',NULL,'1、于****年**月**日，本车申请报停， 报停期间为***年**月**日零时至****年**月**日二十四时， 顺延期间为****年**月**日零时至****年**月**日二十四时，报停期间统筹责任终止，期间本车发生任何事故，统筹人均不负补偿责任。\r\n2、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n3、无其他特别约定。（*此项为必须）\r\n','是短发短发短发',NULL,'duzhaosen',1610899200,'dsfsdf','暂未上牌',1,'800003','800002',1,NULL,NULL,'00032',NULL,'杜兆森',1611472938,2);

/*!40000 ALTER TABLE `zh_overall` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_overall_planning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_overall_planning`;

CREATE TABLE `zh_overall_planning` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_loss` int(11) DEFAULT NULL,
  `vehicle_loss_money` float DEFAULT NULL,
  `vehicle_loss_standard` float DEFAULT NULL,
  `vehicle_loss_payable` float DEFAULT NULL,
  `vehicle_third` int(11) DEFAULT NULL,
  `vehicle_third_money` float DEFAULT NULL,
  `vehicle_third_standard` float DEFAULT NULL,
  `vehicle_third_payable` float DEFAULT NULL,
  `car_driver` int(11) DEFAULT NULL,
  `car_driver_money` float DEFAULT NULL,
  `car_driver_standard` float DEFAULT NULL,
  `car_driver_payable` float DEFAULT NULL,
  `car_passenger` int(11) DEFAULT NULL,
  `car_passenger_money` float DEFAULT NULL,
  `yuan` int(11) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `car_passenger_standard` float DEFAULT NULL,
  `car_passenger_payable` float DEFAULT NULL,
  `car_goods` int(11) DEFAULT NULL,
  `car_goods_money` float DEFAULT NULL,
  `car_goods_standard` float DEFAULT NULL,
  `car_goods_payable` float DEFAULT NULL,
  `benchmarking` float DEFAULT NULL,
  `total_discount` float DEFAULT NULL,
  `total_planning` int(11) DEFAULT NULL,
  `vehicle_loss_discount` int(11) DEFAULT NULL,
  `vehicle_third_discount` int(11) DEFAULT NULL,
  `car_driver_discount` int(11) DEFAULT NULL,
  `car_passenger_discount` int(11) DEFAULT NULL,
  `car_goods_discount` int(11) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `combustion` int(11) DEFAULT NULL,
  `combustion_money` float DEFAULT NULL,
  `combustion_standard` float DEFAULT NULL,
  `combustion_discount` int(11) DEFAULT NULL,
  `combustion_payable` float DEFAULT NULL,
  `engine_wading` int(11) DEFAULT NULL,
  `engine_wading_money` float DEFAULT NULL,
  `engine_wading_standard` float DEFAULT NULL,
  `engine_wading_discount` int(11) DEFAULT NULL,
  `engine_wading_payable` float DEFAULT NULL,
  `designated_repai` int(11) DEFAULT NULL,
  `designated_repai_money` float DEFAULT NULL,
  `designated_repai_standard` float DEFAULT NULL,
  `designated_repai_discount` int(11) DEFAULT NULL,
  `designated_repai_payable` float DEFAULT NULL,
  `broken_glass` int(11) DEFAULT NULL,
  `broken_glass_money` float DEFAULT NULL,
  `broken_glass_standard` float DEFAULT NULL,
  `broken_glass_discount` int(11) DEFAULT NULL,
  `broken_glass_payable` float DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='统筹信息';

LOCK TABLES `zh_overall_planning` WRITE;
/*!40000 ALTER TABLE `zh_overall_planning` DISABLE KEYS */;

INSERT INTO `zh_overall_planning` (`id`, `vehicle_loss`, `vehicle_loss_money`, `vehicle_loss_standard`, `vehicle_loss_payable`, `vehicle_third`, `vehicle_third_money`, `vehicle_third_standard`, `vehicle_third_payable`, `car_driver`, `car_driver_money`, `car_driver_standard`, `car_driver_payable`, `car_passenger`, `car_passenger_money`, `yuan`, `seat`, `car_passenger_standard`, `car_passenger_payable`, `car_goods`, `car_goods_money`, `car_goods_standard`, `car_goods_payable`, `benchmarking`, `total_discount`, `total_planning`, `vehicle_loss_discount`, `vehicle_third_discount`, `car_driver_discount`, `car_passenger_discount`, `car_goods_discount`, `create_user`, `create_time`, `related_id`, `combustion`, `combustion_money`, `combustion_standard`, `combustion_discount`, `combustion_payable`, `engine_wading`, `engine_wading_money`, `engine_wading_standard`, `engine_wading_discount`, `engine_wading_payable`, `designated_repai`, `designated_repai_money`, `designated_repai_standard`, `designated_repai_discount`, `designated_repai_payable`, `broken_glass`, `broken_glass_money`, `broken_glass_standard`, `broken_glass_discount`, `broken_glass_payable`, `op_user`, `op_time`)
VALUES
	(1,2,200000,180000,39600,2,30000,29000,6380,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,59960,22,50600,22,22,22,22,22,'duzhaosen',1610439148,'2021010900001',NULL,NULL,NULL,22,NULL,2,10000,9000,22,1980,2,20000,12000,22,2640,NULL,NULL,NULL,22,NULL,'杜兆森',1610439148),
	(2,2,10000,9000,7056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,7956,80,7761,80,80,80,80,80,'duzhaosen',1610509826,'2021010900002',NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,2,1000,900,80,705.6,'杜兆森',1610509826),
	(5,2,200000,180000,39600,2,30000,29000,6380,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,59960,22,50600,50600,50600,50600,50600,50600,'duzhaosen',1610524510,'P2021011000001',NULL,NULL,NULL,22,NULL,2,10000,9000,22,1980,2,20000,12000,22,2640,NULL,NULL,NULL,22,NULL,'杜兆森',1610524510),
	(6,2,2300000,2000000,440000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,2000000,22,440000,22,22,22,22,22,'duzhaosen',1610380800,'BJ20210100001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,2,10000,9000,7056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,7956,80,7761,7761,7761,7761,7761,7761,'duzhaosen',1610524734,'P2021011200001',NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,2,1000,900,80,705.6,'杜兆森',1610524734),
	(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,2,600000,560000,121968,122168,22,122011,22,22,22,22,22,'duzhaosen',1610937843,'2021011800001',NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,22,NULL,2,1000,200,22,43.56,NULL,NULL);

/*!40000 ALTER TABLE `zh_overall_planning` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_participate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_participate`;

CREATE TABLE `zh_participate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participate_name` varchar(20) DEFAULT NULL,
  `car_owner` int(11) DEFAULT NULL,
  `participate_license_type` int(11) DEFAULT NULL,
  `participate_number` varchar(20) DEFAULT NULL,
  `participate_phone` varchar(13) DEFAULT NULL,
  `participate_email` varchar(20) DEFAULT NULL,
  `participate_address` varchar(50) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参统人信息';

LOCK TABLES `zh_participate` WRITE;
/*!40000 ALTER TABLE `zh_participate` DISABLE KEYS */;

INSERT INTO `zh_participate` (`id`, `participate_name`, `car_owner`, `participate_license_type`, `participate_number`, `participate_phone`, `participate_email`, `participate_address`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'杜',1,1,'130121199501123411',NULL,NULL,NULL,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,'duzhaosen',NULL,1,'13012',NULL,NULL,NULL,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(28,'杜',1,1,'130121199501123411',NULL,NULL,NULL,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(31,'duzhaosen',NULL,1,'13012',NULL,NULL,NULL,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734),
	(32,'dudu',NULL,1,'130121199501123111',NULL,NULL,NULL,'2021011800001','duzhaosen',1610937843,NULL,NULL);

/*!40000 ALTER TABLE `zh_participate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_pay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_pay`;

CREATE TABLE `zh_pay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_type` int(11) DEFAULT NULL,
  `pay_money` float DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费信息';

LOCK TABLES `zh_pay` WRITE;
/*!40000 ALTER TABLE `zh_pay` DISABLE KEYS */;

INSERT INTO `zh_pay` (`id`, `overall_type`, `pay_money`, `pay_time`, `related_id`, `create_time`, `create_user`, `op_user`, `op_time`)
VALUES
	(1,1,50600,1610380800,'2021010900001',1610439148,'duzhaosen','杜兆森',1610439148),
	(2,1,7761,1610467200,'2021010900002',1610509826,'duzhaosen','杜兆森',1610509826),
	(28,1,50600,1610208000,'P2021011000001',1610524510,'duzhaosen','杜兆森',1610524510),
	(31,1,7761,1610467200,'P2021011200001',1610524734,'duzhaosen','杜兆森',1610524734),
	(32,1,122011,1610899200,'2021011800001',1610937843,'duzhaosen',NULL,NULL);

/*!40000 ALTER TABLE `zh_pay` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_quotation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_quotation`;

CREATE TABLE `zh_quotation` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `car_name` varchar(50) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `short_term_coefficient` int(11) DEFAULT NULL,
  `participate_name` text,
  `dispute_resolution` int(11) DEFAULT NULL,
  `agreement` text,
  `description` text,
  `be_unified_name` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `frame` varchar(30) DEFAULT NULL,
  `plate` char(7) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `attribution_user` varchar(20) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `new_id` int(11) DEFAULT NULL,
  `financial_review_user` varchar(20) DEFAULT NULL,
  `documents_id` int(11) DEFAULT NULL,
  `financial_review_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报价单';

LOCK TABLES `zh_quotation` WRITE;
/*!40000 ALTER TABLE `zh_quotation` DISABLE KEYS */;

INSERT INTO `zh_quotation` (`id`, `start_time`, `end_time`, `car_name`, `date_time`, `short_term_coefficient`, `participate_name`, `dispute_resolution`, `agreement`, `description`, `be_unified_name`, `create_user`, `create_time`, `frame`, `plate`, `type`, `attribution_user`, `manager`, `new_id`, `financial_review_user`, `documents_id`, `financial_review_time`, `op_user`, `op_time`, `remarks`)
VALUES
	('BJ20210100001',1609430400,1640880000,'独照',365,1,NULL,NULL,NULL,NULL,NULL,'duzhaosen',1610380800,'sdffdsa','冀A11111',1,'800003','800002',NULL,NULL,NULL,NULL,NULL,NULL,'23234');

/*!40000 ALTER TABLE `zh_quotation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_report
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_report`;

CREATE TABLE `zh_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` char(12) DEFAULT NULL COMMENT '报案单号',
  `overall_id` char(15) DEFAULT NULL COMMENT '统筹单号',
  `plate` varchar(12) DEFAULT NULL COMMENT '车牌',
  `frame` varchar(17) DEFAULT NULL COMMENT '车架',
  `coordinated_name` varchar(100) DEFAULT NULL COMMENT '被统筹人',
  `nuclear_system_time` int(11) DEFAULT NULL COMMENT '核统日期',
  `end_time` int(11) DEFAULT NULL COMMENT '统筹止期',
  `report_user` varchar(50) DEFAULT NULL COMMENT '报案人',
  `report_time` int(11) DEFAULT NULL COMMENT '报案时间',
  `out_danger_time` int(11) DEFAULT NULL COMMENT '出险时间',
  `accident_situation` tinyint(4) DEFAULT NULL COMMENT '事故情况：1单方2多方',
  `human_injury` tinyint(4) DEFAULT '2' COMMENT '人伤：1是2否',
  `driver` varchar(50) DEFAULT NULL COMMENT '驾驶员',
  `way_type` tinyint(4) DEFAULT NULL COMMENT '道路类型',
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `risk_location` int(11) DEFAULT NULL COMMENT '出险地点',
  `address` varchar(100) DEFAULT NULL COMMENT '具体地点',
  `description` text COMMENT '出险描述',
  `survey_agency` tinyint(4) DEFAULT NULL COMMENT '查勘机构',
  `survey_user` tinyint(4) DEFAULT NULL COMMENT '查勘人',
  `survey_phone` char(11) DEFAULT NULL COMMENT '查勘人电话',
  `survey_remarks` text COMMENT '查勘备注',
  `create_user` varchar(50) DEFAULT NULL COMMENT '添加人',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `report_type` tinyint(4) DEFAULT '1' COMMENT '案件状态：',
  `car_damage_type` tinyint(4) DEFAULT '1' COMMENT '车损：1未录入',
  `human_injury_type` tinyint(4) DEFAULT '1' COMMENT '人伤：1未录入',
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报案信息';

LOCK TABLES `zh_report` WRITE;
/*!40000 ALTER TABLE `zh_report` DISABLE KEYS */;

INSERT INTO `zh_report` (`id`, `report_id`, `overall_id`, `plate`, `frame`, `coordinated_name`, `nuclear_system_time`, `end_time`, `report_user`, `report_time`, `out_danger_time`, `accident_situation`, `human_injury`, `driver`, `way_type`, `phone`, `risk_location`, `address`, `description`, `survey_agency`, `survey_user`, `survey_phone`, `survey_remarks`, `create_user`, `create_time`, `report_type`, `car_damage_type`, `human_injury_type`, `op_user`, `op_time`)
VALUES
	(1,'BA2021010001','ZH2021000000001','冀A12345','jdhh435ndfjge','杜',NULL,1610640000,'杜兆森',1610640000,1610640000,1,2,'杜杜',2,'19903211962',110101,'成都方式分','第三方水电费',1,101,'13613313101','第三方水电费地方','杜兆森',1610636237,1,1,1,'杜兆森',1610674809),
	(2,'BA2021010002','ZH2021000000002','冀A12340','chejiahao','杜兆森',NULL,1640966400,'sdfsdf ',1610985600,1610985600,1,-1,'sdfsdf',-1,'19903211962',130101,'sdfsdfsf','sdfsdfsdf',1,101,'13613313101','scdsdfs','杜兆森',1611023375,1,1,1,NULL,NULL);

/*!40000 ALTER TABLE `zh_report` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_review_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_review_log`;

CREATE TABLE `zh_review_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1初级通过2待修改3二级审核(统筹单)通过4财务审核(统筹单)通过5二级审核（批单）通过6财务审核（批单）通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审核日志';

LOCK TABLES `zh_review_log` WRITE;
/*!40000 ALTER TABLE `zh_review_log` DISABLE KEYS */;

INSERT INTO `zh_review_log` (`id`, `related_id`, `create_time`, `create_user`, `type`)
VALUES
	(1,'2021010900002',1610506734,'杜兆森',2),
	(2,'2021010900002',1610509847,'杜兆森',1),
	(3,'2021010900002',1610510081,'杜兆森',3),
	(4,'P2021011200001',1610525799,'杜兆森',5),
	(5,'2021010900002',1610526428,'杜兆森',4),
	(6,'P2021011200001',1610526610,'杜兆森',6),
	(7,'P2021011200001',1610526736,'杜兆森',6);

/*!40000 ALTER TABLE `zh_review_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_roles`;

CREATE TABLE `zh_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1正常2禁用',
  `salesman` int(11) DEFAULT NULL COMMENT '1否2是',
  `isuser` int(11) DEFAULT NULL COMMENT '1否2是',
  `admin` int(11) DEFAULT NULL COMMENT '1否2是',
  `group_power` int(11) DEFAULT NULL COMMENT '1否2是',
  `powers` text,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

LOCK TABLES `zh_roles` WRITE;
/*!40000 ALTER TABLE `zh_roles` DISABLE KEYS */;

INSERT INTO `zh_roles` (`id`, `name`, `type`, `salesman`, `isuser`, `admin`, `group_power`, `powers`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'中互',1,2,NULL,2,NULL,'',NULL,1610265846,NULL,NULL),
	(2,'普通出单员',1,1,NULL,1,NULL,'1,2,3,4,5,6,7,12,8,9,10,11','duzhaosen',1610331156,'杜兆森',1610350409),
	(3,'dsfasf',1,1,NULL,1,NULL,'','杜兆森',1611196763,NULL,NULL),
	(4,'dfsdfs',1,1,NULL,1,NULL,'','杜兆森',1611196817,NULL,NULL),
	(5,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197443,NULL,NULL),
	(6,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197455,NULL,NULL),
	(7,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197479,NULL,NULL),
	(8,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197531,NULL,NULL),
	(9,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197551,NULL,NULL),
	(10,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611197603,NULL,NULL),
	(11,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611198124,NULL,NULL),
	(12,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611198142,NULL,NULL),
	(13,'sdfsdfsf',1,1,NULL,1,NULL,'','杜兆森',1611198169,NULL,NULL),
	(14,'sefsdf',1,1,NULL,1,NULL,'','杜兆森',1611198187,NULL,NULL),
	(15,'sefsdf',1,1,NULL,1,NULL,'','杜兆森',1611198194,NULL,NULL),
	(16,'sefsdf',1,1,NULL,1,NULL,'','杜兆森',1611198203,NULL,NULL),
	(17,'sefsdf',1,1,NULL,1,NULL,'','杜兆森',1611198297,NULL,NULL);

/*!40000 ALTER TABLE `zh_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_structure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_structure`;

CREATE TABLE `zh_structure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT '1',
  `pid` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL COMMENT '来源',
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织';

LOCK TABLES `zh_structure` WRITE;
/*!40000 ALTER TABLE `zh_structure` DISABLE KEYS */;

INSERT INTO `zh_structure` (`id`, `type`, `pid`, `name`, `create_user`, `create_time`, `source`, `op_user`, `op_time`)
VALUES
	(1,1,0,'总部',NULL,NULL,NULL,NULL,NULL),
	(2,1,1,'河北',NULL,1610266441,1,NULL,1610266674),
	(3,1,1,'成都',NULL,1610266680,3,'duzhaosen',1610347137),
	(4,2,3,'d',NULL,1610266769,3,NULL,1610267086),
	(5,2,0,'未命名',NULL,1610266783,NULL,NULL,1610266830),
	(6,2,0,'未命名',NULL,1610266788,NULL,NULL,1610266833),
	(7,2,4,'未命名',NULL,1610266811,NULL,NULL,1610267152),
	(8,2,4,'未命名',NULL,1610266816,NULL,NULL,1610267149),
	(9,2,4,'未',NULL,1610266817,3,NULL,1610267146),
	(10,2,3,'未命名',NULL,1610266863,NULL,NULL,1610267136),
	(11,2,10,'未命名',NULL,1610266914,NULL,NULL,1610267132),
	(12,2,9,'未命名',NULL,1610267071,NULL,NULL,1610267141),
	(13,2,0,'海南总部','duzhaosen',1610347051,0,'duzhaosen',1610347076),
	(14,1,0,'海南总部','duzhaosen',1610347127,2,NULL,NULL),
	(15,1,14,'一部','duzhaosen',1610348231,1,'duzhaosen',1610348244),
	(16,1,14,'二部','duzhaosen',1610348247,2,'duzhaosen',1610348255),
	(17,1,15,'东区','杜兆森',1610350546,1,'杜兆森',1610350557),
	(18,1,14,'二部','杜',1610351961,2,NULL,NULL),
	(19,1,15,'西区','杜',1610352105,2,'杜',1610352437),
	(20,1,15,'南区','杜',1610352112,3,'杜',1610352445),
	(21,1,15,'北区','杜',1610352447,4,'杜',1610352454),
	(22,1,17,'东区-2','杜',1610352459,2,'杜',1610352469),
	(23,1,15,'西南区','杜',1610416735,1,'杜',1610416746),
	(24,1,0,'一部-1','杜',1610416763,2,NULL,NULL);

/*!40000 ALTER TABLE `zh_structure` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_survey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_survey`;

CREATE TABLE `zh_survey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` char(12) NOT NULL DEFAULT '' COMMENT '报案单号',
  `report_time` int(11) NOT NULL DEFAULT '0' COMMENT '报案时间',
  `plate` varchar(20) NOT NULL DEFAULT '' COMMENT '车牌号',
  `coordinated_name` varchar(100) NOT NULL DEFAULT '' COMMENT '被统筹人',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '电话',
  `driver` varchar(50) NOT NULL DEFAULT '' COMMENT '驾驶员',
  `out_danger_time` int(11) NOT NULL DEFAULT '0' COMMENT '出险时间',
  `actual_driver` varchar(50) NOT NULL DEFAULT '' COMMENT '实际驾驶员',
  `survey_sex` tinyint(4) NOT NULL DEFAULT '1' COMMENT '性别：1男2女',
  `driver_license` char(18) NOT NULL DEFAULT '' COMMENT '驾驶证号',
  `dirver_model` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '准驾车型',
  `cause_accident` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '事故原因',
  `cause_liability` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '事故责任',
  `process_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '案件流程类型',
  `estimated_amount` float NOT NULL COMMENT '预估金额',
  `cause_area` varchar(100) NOT NULL DEFAULT '' COMMENT '事故区域',
  `cause_department` tinyint(11) NOT NULL DEFAULT '-1' COMMENT '事故处理部门',
  `other_cause_department` varchar(100) NOT NULL DEFAULT '' COMMENT '其他事故处理部门',
  `casualties` tinyint(4) NOT NULL DEFAULT '0' COMMENT '人员伤亡',
  `way_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '道路类型',
  `cause_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '事故类型',
  `major_case` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '重大案件1是2否',
  `case_type` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '案件状态',
  `three_blame` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '三责伤：1是2否',
  `three_die` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '三者亡：1是2否',
  `own_car_injury` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '本车伤：1是2否',
  `own_car_die` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '本车亡：1是2否',
  `three_vehicles` tinyint(4) NOT NULL DEFAULT '0' COMMENT '三者车辆数',
  `rescue` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '施救：1是2否',
  `responsible_death_cause` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '有责死亡事故：1是2否',
  `road_cause` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '道路交通事故：1是2否',
  `small_quick_case` int(11) NOT NULL DEFAULT '-1' COMMENT '小额快赔案件：1是2否',
  `estimated_case` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '预估案件：1是2佛',
  `cause_book` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '交管事故书：1是2否',
  `cause_book_num` char(20) NOT NULL DEFAULT '' COMMENT '事故书编号',
  `subrogation` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '代位求偿：1是2否',
  `first_scene` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '第一现场：1是2否',
  `survey_agency` varchar(50) NOT NULL DEFAULT '' COMMENT '查勘机构',
  `survey_user` varchar(50) NOT NULL DEFAULT '' COMMENT '查勘人',
  `survey_phone` char(1) NOT NULL DEFAULT '' COMMENT '查勘人电话',
  `survey_time` int(11) NOT NULL COMMENT '查勘时间',
  `survey_address` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '查勘地点',
  `case_details` text NOT NULL COMMENT '案件详细经过',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='查勘录入';



# Dump of table zh_traffic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_traffic`;

CREATE TABLE `zh_traffic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `traffic_company` varchar(100) DEFAULT NULL,
  `traffic_start_time` int(11) DEFAULT NULL,
  `traffic_end_time` int(11) DEFAULT NULL,
  `related_id` varchar(20) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交强险';

LOCK TABLES `zh_traffic` WRITE;
/*!40000 ALTER TABLE `zh_traffic` DISABLE KEYS */;

INSERT INTO `zh_traffic` (`id`, `traffic_company`, `traffic_start_time`, `traffic_end_time`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'交强险有限公司',1609344000,1611936000,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,'测试交强险公司',1610121600,1610121600,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(3,'交强险有限公司',1609344000,1611936000,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(6,'测试交强险公司',1610121600,1610121600,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734),
	(7,'哇哈哈',1610899200,1610899200,'2021011800001','duzhaosen',1610937843,NULL,NULL);

/*!40000 ALTER TABLE `zh_traffic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_user`;

CREATE TABLE `zh_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `identity` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `salesman` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '业务员',
  `type` int(11) DEFAULT '1' COMMENT '1启用2禁用',
  `manager` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '经办人',
  `structure` int(11) DEFAULT NULL,
  `roles` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '1男2女',
  `city` int(11) DEFAULT NULL COMMENT '城市',
  `create_user` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pinyin_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户';

LOCK TABLES `zh_user` WRITE;
/*!40000 ALTER TABLE `zh_user` DISABLE KEYS */;

INSERT INTO `zh_user` (`id`, `username`, `passwd`, `identity`, `salesman`, `type`, `manager`, `structure`, `roles`, `sex`, `city`, `create_user`, `create_time`, `op_user`, `op_time`, `phone`, `name`, `pinyin_name`, `manager_id`)
VALUES
	(800001,'duzhaosen','70bc419990b6bc19fc89f2ec3a470af7','130121199501123410','1',1,'1',1,1,1,130000,NULL,1610328579,'杜兆森',1611045784,'19903211962','杜兆森','duzhaosen',NULL),
	(800002,'jingban1','70bc419990b6bc19fc89f2ec3a470af7','130121199501123411','2',1,'1',NULL,NULL,1,140100,'duzhaosen',1610349337,NULL,NULL,'19903211962','经办人1','jinbganren1',NULL),
	(800003,'duzhao','70bc419990b6bc19fc89f2ec3a470af7','130121199501123409','1',1,'2',15,2,1,130100,'杜兆森',1610350259,NULL,NULL,'19903211962','杜','du',800002),
	(800004,'du1','70bc419990b6bc19fc89f2ec3a470af7','130121995011233333','1',1,'2',17,1,1,460100,'杜兆森',1610352653,NULL,NULL,'19903211111','杜1','duone',800002);

/*!40000 ALTER TABLE `zh_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
