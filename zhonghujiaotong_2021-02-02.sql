# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: zhonghujiaotong
# Generation Time: 2021-02-02 09:20:52 +0000
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
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联号',
  `attach_url` char(50) NOT NULL DEFAULT '' COMMENT '附件地址',
  `folder` varchar(10) NOT NULL DEFAULT '' COMMENT '文件夹名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '文件分类名称',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件';

LOCK TABLES `zh_attach` WRITE;
/*!40000 ALTER TABLE `zh_attach` DISABLE KEYS */;

INSERT INTO `zh_attach` (`id`, `related_id`, `attach_url`, `folder`, `name`, `create_user`, `create_time`, `type`, `op_user`, `op_time`)
VALUES
	(1,'2021020100001','20210201/34adced0f5789a43556d585879b5d55d.jpg','default1','参统资料','杜兆森',1612167919,1,'',0),
	(2,'2021020100001','20210201/40a19e31e7531b3cee07f441479bb494.jpg','default1','参统资料','杜兆森',1612167919,1,'',0),
	(3,'2021020100001','20210201/c762119edd0b226b6e84c594d9ef0302.jpg','default1','参统资料','杜兆森',1612167919,1,'',0),
	(4,'2021020100001','20210201/fe6a5f85918c32036d9c0a6e2aadf7cc.jpg','default2','牛气','杜兆森',1612167936,1,'',0),
	(5,'2021020100001','20210201/ce64330e224bda9bf6daea9292e74223.jpg','default2','牛气','杜兆森',1612167936,1,'',0),
	(6,'2021020100001','20210201/1dec47494bdb861de2eea2bce6f66b19.jpg','default2','牛气','杜兆森',1612167936,1,'',0),
	(7,'2021020100002','20210201/a0572b43d45973f67ee1a312065916b5.jpg','default1','参统资料','杜兆森',1612169689,1,'',0),
	(8,'2021020100002','20210201/5b58cdd62a627ae0140fa469c9bad369.jpg','default1','参统资料','杜兆森',1612169689,1,'',0),
	(9,'2021020100002','20210201/03814496e41b4712fee32e49270155a7.jpg','default1','参统资料','杜兆森',1612169689,1,'',0),
	(10,'P2021020200001','20210202/a0572b43d45973f67ee1a312065916b5.jpg','default1','参统资料','杜兆森',1612231221,1,'',0),
	(11,'P2021020200001','20210202/5b58cdd62a627ae0140fa469c9bad369.jpg','default1','参统资料','杜兆森',1612231221,1,'',0),
	(12,'P2021020200001','20210202/03814496e41b4712fee32e49270155a7.jpg','default1','参统资料','杜兆森',1612231221,1,'',0),
	(13,'P2021020200001','20210202/a0572b43d45973f67ee1a312065916b5.jpg','default1','参统资料','杜兆森',1612255594,1,'',0),
	(14,'P2021020200001','20210202/5b58cdd62a627ae0140fa469c9bad369.jpg','default1','参统资料','杜兆森',1612255594,1,'',0),
	(15,'P2021020200001','20210202/03814496e41b4712fee32e49270155a7.jpg','default1','参统资料','杜兆森',1612255594,1,'',0);

/*!40000 ALTER TABLE `zh_attach` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_car`;

CREATE TABLE `zh_car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联号',
  `plate` varchar(12) NOT NULL DEFAULT '' COMMENT '车牌号',
  `plate_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车牌类型：1大型汽车2小型汽车3挂车4大型新能源5小型新能源',
  `license_number` varchar(18) NOT NULL DEFAULT '' COMMENT '证件号',
  `license_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '证件类型：1身份证2统一社会信用代码',
  `license_address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `relationship` tinyint(4) NOT NULL DEFAULT '1' COMMENT '与被统筹人关系：1所有2使用3管理',
  `displacement` varchar(10) NOT NULL DEFAULT '' COMMENT '排量',
  `color` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车牌底色：1蓝2黑3白4黄5白蓝6黄绿双拼7渐变绿',
  `power` varchar(10) NOT NULL DEFAULT '' COMMENT '功率',
  `car_name` varchar(30) NOT NULL DEFAULT '' COMMENT '车主姓名',
  `frame` varchar(17) NOT NULL DEFAULT '' COMMENT '车架号',
  `engine` varchar(11) NOT NULL DEFAULT '' COMMENT '发动机号',
  `label_signal` varchar(50) NOT NULL DEFAULT '' COMMENT '厂牌型号',
  `registered_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册日期',
  `age` tinyint(4) NOT NULL DEFAULT '0' COMMENT '车龄',
  `transfer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '过户：1是2否',
  `new_price` bigint(10) NOT NULL DEFAULT '0' COMMENT '新车购置价',
  `actual_price` bigint(10) NOT NULL DEFAULT '0' COMMENT '实际购置价',
  `use_nature` tinyint(4) NOT NULL DEFAULT '1' COMMENT '使用性质：1非营运2货运3特一4特二5特三6特四7租赁8公路客运9城市公交',
  `species` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车辆种类：1货车2半挂牵引车3自卸货车4挂车5特一6冷藏车7清洁车8清障车9起重车10混凝土搅拌车11自卸式垃圾车12混凝土泵车13水泥粉粒车14客车',
  `car_type` tinyint(4) NOT NULL COMMENT '车辆类型：1十吨以上2两吨以下3二-五吨4五-十吨5六-九座6十-十九座7二十-三十五座8三十五座以上',
  `approved_user` tinyint(4) NOT NULL DEFAULT '0' COMMENT '核定载客人',
  `approved_load` int(4) NOT NULL DEFAULT '0' COMMENT '核定载质量/准牵引总质量',
  `curb_quality` int(4) NOT NULL DEFAULT '0' COMMENT '整备质量',
  `vehicle_inspection` tinyint(4) NOT NULL DEFAULT '1' COMMENT '验车情况：1是2否',
  `reason` text NOT NULL COMMENT '原因',
  `participate_city` varchar(10) NOT NULL DEFAULT '' COMMENT '参统省份',
  `last_year_danger` tinyint(4) NOT NULL DEFAULT '1' COMMENT '往年出险情况:1：0,2:1,3:2,4:3次及以上，5：无状态及过户',
  `last_year_status` varchar(100) NOT NULL DEFAULT '' COMMENT '上年状态',
  `year_indemnity` tinyint(4) NOT NULL DEFAULT '0' COMMENT '本年赔款（次）',
  `continuous_non_risk` varchar(100) NOT NULL DEFAULT '' COMMENT '连续未出险',
  `continuous_year` tinyint(4) NOT NULL DEFAULT '0' COMMENT '连续年数',
  `danger_total` tinyint(4) NOT NULL DEFAULT '0' COMMENT '连续期间出险次数',
  `discount` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '主体折扣',
  `coefficient` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '无赔优系数',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `rating` float(10,1) NOT NULL DEFAULT '0.0' COMMENT '评分、评级',
  `issuance_time` int(11) NOT NULL COMMENT '发证日期',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`car_id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆信息';

LOCK TABLES `zh_car` WRITE;
/*!40000 ALTER TABLE `zh_car` DISABLE KEYS */;

INSERT INTO `zh_car` (`car_id`, `related_id`, `plate`, `plate_type`, `license_number`, `license_type`, `license_address`, `relationship`, `displacement`, `color`, `power`, `car_name`, `frame`, `engine`, `label_signal`, `registered_time`, `age`, `transfer`, `new_price`, `actual_price`, `use_nature`, `species`, `car_type`, `approved_user`, `approved_load`, `curb_quality`, `vehicle_inspection`, `reason`, `participate_city`, `last_year_danger`, `last_year_status`, `year_indemnity`, `continuous_non_risk`, `continuous_year`, `danger_total`, `discount`, `coefficient`, `remarks`, `rating`, `issuance_time`, `address`, `op_user`, `op_time`)
VALUES
	(1,'BJ20210200001','暂未上牌',2,'',1,'',1,'',1,'','杜','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1612108800,2,1,1530000,1400000,1,1,1,3,23,33,1,'手动方式分地方','130000',1,'2',3,'23',3,2,23.00,0.3,'6074651676',2.0,0,'','',0),
	(2,'2021020100001','冀A12345',1,'130121199501123411',1,'',1,'2',1,'3','杜','sdffdsa','kfmsfa','232dsfdsf',1612108800,2,1,1530000,1400000,1,1,1,3,33,23,1,'2','130000',1,'',0,'',0,0,0.00,0.0,'',0.0,1612108800,'河北省石家庄市','',0),
	(3,'2021020100002','暂未上牌',1,'130121199501123411',1,'',1,'23',1,'2','杜','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1609430400,2,2,1530000,1400000,1,1,1,4,23,33,1,'K201911251125','130000',1,'',0,'',0,0,0.00,0.0,'',0.0,1612108800,'河北省石家庄市','杜兆森',1612170884);

/*!40000 ALTER TABLE `zh_car` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_car_damage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_car_damage`;

CREATE TABLE `zh_car_damage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` char(12) NOT NULL DEFAULT '' COMMENT '关联单号ID',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车损';



# Dump of table zh_carcode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_carcode`;

CREATE TABLE `zh_carcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(6) NOT NULL DEFAULT '' COMMENT '验车码',
  `time` int(11) NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证码';

LOCK TABLES `zh_carcode` WRITE;
/*!40000 ALTER TABLE `zh_carcode` DISABLE KEYS */;

INSERT INTO `zh_carcode` (`id`, `code`, `time`)
VALUES
	(1,'3WPLTU',1611072000),
	(2,'D9RAGY',1611158400),
	(3,'KPAN16',1611244800),
	(4,'P5BZFZ',1611936000);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `reloated_id` (`reloated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='补偿款信息';



# Dump of table zh_coordinator
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_coordinator`;

CREATE TABLE `zh_coordinator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联单号',
  `coordinated_name` varchar(20) NOT NULL DEFAULT '' COMMENT '被统筹人姓名',
  `coordinated_license_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '被统筹人证件类型：1身份证2社会统一信用代码',
  `coordinated_number` varchar(18) NOT NULL DEFAULT '' COMMENT '被统筹人身份证号',
  `coordinated_phone` varchar(13) NOT NULL DEFAULT '' COMMENT '被统筹人手机号',
  `coordinated_email` varchar(50) NOT NULL DEFAULT '' COMMENT '被统筹人邮箱',
  `coordinated_address` varchar(50) NOT NULL DEFAULT '' COMMENT '被统筹人地址',
  `coordinated_same` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1同参统人2同车主',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='被统筹人';

LOCK TABLES `zh_coordinator` WRITE;
/*!40000 ALTER TABLE `zh_coordinator` DISABLE KEYS */;

INSERT INTO `zh_coordinator` (`id`, `related_id`, `coordinated_name`, `coordinated_license_type`, `coordinated_number`, `coordinated_phone`, `coordinated_email`, `coordinated_address`, `coordinated_same`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'2021020100001','小红',1,'13012199501123400','18633937097','','',1,'duzhaosen',1612168671,'',0),
	(2,'2021020100002','杜',1,'13012199501123411','18633937097','','',1,'duzhaosen',1612170824,'杜兆森',1612170884);

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
	('0202095223',1,'00001','00010',10,4,1612230743,1643766743,'杜兆森',1,'',0);

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
  `is_issued` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未使用2已使用3已回收',
  `related_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1入库2下发',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单证使用log表';

LOCK TABLES `zh_documents_info` WRITE;
/*!40000 ALTER TABLE `zh_documents_info` DISABLE KEYS */;

INSERT INTO `zh_documents_info` (`id`, `related_id`, `documents_id`, `issued_time`, `issued_user`, `is_issued`, `related_type`)
VALUES
	(1,'0202095223','00001',1612230758,'杜兆森',2,1),
	(2,'0202095223','00002',1612230758,'杜兆森',2,1),
	(3,'0202095223','00003',1612230758,'杜兆森',2,1),
	(4,'0202095223','00004',1612230758,'杜兆森',2,1),
	(5,'0202095223','00005',1612230758,'杜兆森',2,1),
	(6,'0202095223','00006',1612230758,'杜兆森',2,1),
	(7,'0202095223','00007',0,'',1,1),
	(8,'0202095223','00008',0,'',1,1),
	(9,'0202095223','00009',0,'',1,1),
	(10,'0202095223','00010',0,'',1,1),
	(11,'02095238','00001',1612230771,'杜兆森',2,2),
	(12,'02095238','00002',0,'',1,2),
	(13,'02095238','00003',0,'',1,2),
	(14,'02095238','00004',0,'',1,2),
	(15,'02095238','00005',0,'',1,2),
	(16,'02095238','00006',0,'',1,2);

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
	('02095238','0202095223',1,800001,1,'00001','00006',6,5,1612230758,1643766758,'杜兆森',1,0,'');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单证回收';



# Dump of table zh_endorsements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_endorsements`;

CREATE TABLE `zh_endorsements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_id` char(15) NOT NULL DEFAULT '' COMMENT '统筹单号',
  `endorsements_id` char(16) NOT NULL DEFAULT '' COMMENT '批单号',
  `p_temporary_id` char(14) NOT NULL DEFAULT '' COMMENT '暂存单号',
  `documents` char(7) NOT NULL DEFAULT '' COMMENT '打印单号',
  `attribution_user` varchar(20) NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '录入日期',
  `nuclear_system_user` varchar(20) NOT NULL DEFAULT '' COMMENT '核统人',
  `nuclear_system_time` int(11) NOT NULL DEFAULT '0' COMMENT '核统日期',
  `financial_review_user` varchar(20) NOT NULL DEFAULT '' COMMENT '财务审核人',
  `financial_review_time` int(11) NOT NULL DEFAULT '0' COMMENT '财务审核日期',
  `plate` varchar(12) NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT '0' COMMENT '生效天数',
  `short_term_coefficient` float(3,2) NOT NULL DEFAULT '0.00' COMMENT '短期系数',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `car_name` varchar(20) NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未生成新的单号2已生成新的单号',
  `dispute_resolution` tinyint(4) NOT NULL DEFAULT '1' COMMENT '争议解决方：1诉讼2仲裁',
  `agreement` text NOT NULL COMMENT '特别约定',
  `description` text NOT NULL COMMENT '参统说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待修改2待二级审核3待财务审核4审核通过',
  `participate_name` varchar(20) NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `documents_id` char(7) NOT NULL DEFAULT '' COMMENT '单证号',
  `approval` text COMMENT '批文',
  `endorsements_time` int(11) NOT NULL COMMENT '批改日期',
  `endorsements_type` tinyint(11) NOT NULL DEFAULT '1' COMMENT '批单类型：1全单批改',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `overall_id` (`overall_id`),
  UNIQUE KEY `p_temporary_id` (`p_temporary_id`),
  UNIQUE KEY `endorsements_id` (`endorsements_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='批单';



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人伤';



# Dump of table zh_invoice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_invoice`;

CREATE TABLE `zh_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_name` varchar(50) NOT NULL DEFAULT '' COMMENT '发票名称',
  `invoice_tax` varchar(50) NOT NULL DEFAULT '' COMMENT '税号',
  `invoice_bank` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `invoice_account` varchar(50) NOT NULL DEFAULT '' COMMENT '账号',
  `invoice_open_address` varchar(50) NOT NULL DEFAULT '' COMMENT '开户地址',
  `invoice_phone` varchar(13) NOT NULL DEFAULT '' COMMENT '电话',
  `invoice_address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `invoice_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1普通发票2专用发票3同参统人4同被参统人',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联单号',
  `invoice_remarks` varchar(150) NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='发票';



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志';

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
	(87,'2','2021-01-24 15:26:04:089',1,'2886795265','杜兆森','打印documents_id=00200&related_id=P2021011000001&issued_type=2&issued_id=24152554结果：成功'),
	(88,'4','2021-01-24 15:31:50:089',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210124%2F8b16f50cfde3c713d8492ea428866cee.jpg&id=45'),
	(89,'7','2021-01-25 11:40:41:697',33,'2886795265','杜兆森','登陆成功'),
	(90,'7','2021-01-25 16:45:19:665',33,'2886795265','杜兆森','登陆成功'),
	(91,'7','2021-01-26 11:26:53:463',33,'2886795265','杜兆森','登陆成功'),
	(92,'7','2021-01-27 14:48:06:948',33,'2886795265','杜兆森','登陆成功'),
	(93,'7','2021-01-28 10:55:09:186',33,'2886795265','杜兆森','登陆成功'),
	(94,'7','2021-01-28 10:55:09:261',33,'2886795265','杜兆森','登陆成功'),
	(95,'7','2021-01-28 10:55:17:624',33,'2886795265','杜兆森','登陆成功'),
	(96,'2','2021-01-28 10:56:29:018',23,'2886795265','杜兆森','修改统筹单id=ZH2021000000001&overall_id=ZH2021000000001&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F12&temporary_id=2021010900001&documents_id=30&traffic_company=%E4%BA%A4%E5%BC%BA%E9%99%A9%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&traffic_start_time=+2020%2F12%2F31&traffic_end_time=+2021%2F01%2F30&plate=%E5%86%80A12345&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F10&end_time=2022%2F01%2F09&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2020%2F12%2F17&issuance_time=2020%2F12%2F17&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=3&approved_load=45&curb_quality=55&vehicle_inspection=1&reason=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86%E5%9C%B0%E6%96%B9&displacement=12&power=2&last_year_danger=1&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss=vehicle_loss&vehicle_loss_money=200000&vehicle_loss_standard=180000&vehicle_loss_discount=22&vehicle_loss_payable=39600&vehicle_third=vehicle_third&vehicle_third_money=30000&vehicle_third_standard=29000&vehicle_third_discount=22&vehicle_third_payable=6380&car_driver_discount=22&seat=2&car_passenger_discount=22&car_goods_discount=22&combustion_discount=22&engine_wading=engine_wading&engine_wading_money=10000&engine_wading_standard=9000&engine_wading_discount=22&engine_wading_payable=1980&designated_repai=designated_repai&designated_repai_money=20000&designated_repai_standard=12000&designated_repai_discount=22&designated_repai_payable=2640&broken_glass_discount=22&benchmarking=59960&total_discount=22&total_planning=50600&car_owner=1&participate_name=%E6%9D%9C&participate_license_type=1&participate_number=130121199501123411&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&dispute_resolution=1&agreement=1%E3%80%81%E7%8E%BB%E7%92%83%E7%BB%9F%E7%AD%B9%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E7%8E%BB%E7%92%83%E5%8D%95%E7%8B%AC%E7%A0%B4%E7%A2%8E%E7%BB%9F%E7%AD%B9%E6%8C%89%E5%9B%BD%E4%BA%A7%E7%8E%BB%E7%92%83%E5%8F%82%E7%BB%9F%EF%BC%8C%E7%90%86%E8%B5%94%E6%97%B6%E6%8C%89%E5%9B%BD%E4%BA%A7%E4%BB%B6%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A3%E3%80%81%E6%B7%B7%E5%87%9D%E5%9C%9F%E6%B3%B5%E8%BD%A6%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%9C%A8%E6%96%BD%E5%B7%A5%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%94%B1%E4%BA%8E%E5%9C%B0%E5%9F%BA%E4%B8%8D%E7%89%A2%E5%8F%91%E7%94%9F%E8%B7%AF%E9%9D%A2%E5%A1%8C%E9%99%B7%E9%80%A0%E6%88%90%E6%9C%AC%E8%BD%A6%E7%9A%84%E4%B8%80%E5%88%87%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%96%E5%9B%A0%E8%BF%9D%E5%8F%8D%E6%93%8D%E4%BD%9C%E8%A7%84%E8%8C%83%E8%87%B4%E4%BD%BF%E6%B0%B4%E6%B3%A5%E8%BE%93%E9%80%81%E8%87%82%E6%9E%B6%E7%B3%BB%E7%BB%9F%E5%8F%8A%E5%85%B6%E9%80%A0%E6%88%90%E7%9A%84%E7%AC%AC%E4%B8%89%E8%80%85%E4%BA%BA%E5%91%98%E4%BC%A4%E4%BA%A1%E5%8F%8A%E8%B4%A2%E4%BA%A7%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=%E6%B5%8B%E8%AF%95%E7%94%B5%E8%AF%9D%E8%B4%B9%E8%88%92%E6%9C%8D%E7%9A%84%E6%B2%99%E5%8F%91%E5%9C%A3%E8%AF%9E%E8%8A%82%E9%A3%9E%E6%9C%BA%E4%B8%8A%E7%9C%8B%E9%A3%8E%E6%99%AF%E7%9C%8B%E5%B0%B1%E6%98%AF%E5%9C%B0%E6%96%B9%E5%8D%B3%E4%BD%BF%E5%88%86%E5%BC%80%E5%B0%B1%E5%88%86%E5%BC%80%E5%B0%B1%E6%98%AF%E7%9C%8B%E7%9A%84%E9%A3%8E%E6%99%AF%E7%9C%8B%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF%E7%9A%84%E6%89%8B%E6%9C%BA%E8%B4%B9%E4%B8%96%E6%9D%B0%E5%9C%B0%E6%96%B9%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF&status=3结果：成功'),
	(97,'6','2021-01-28 10:56:46:181',25,'2886795265','杜兆森','初级审核统筹单related_id=2021010900001&type=1&status=4&log_type=1结果：成功'),
	(98,'6','2021-01-28 10:56:52:640',25,'2886795265','杜兆森','初级审核统筹单related_id=2021010900001&type=1&status=5&log_type=3结果：成功'),
	(99,'6','2021-01-28 10:57:03:997',25,'2886795265','杜兆森','初级审核统筹单related_id=2021010900001&type=1&status=6&log_type=4结果：成功'),
	(100,'4','2021-01-28 14:09:45:226',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210128%2F43eea2e449178bbaaa430667e656309b.png&id=46'),
	(101,'4','2021-01-28 14:09:52:027',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210128%2F4fe99b3226da1caa3d26eac0e55e3ddc.jpg&id=47'),
	(102,'1','2021-01-28 14:10:07:598',2,'2886795265','杜兆森','添加统筹单attribution_user=800004&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F28&temporary_id=2021012800001&traffic_company=%E6%B5%8B%E8%AF%95%E4%BA%A4%E5%BC%BA&traffic_start_time=2021%2F01%2F28&traffic_end_time=2021%2F01%2F28&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=dsfsdffsdfa&relationship=2&license_type=2&license_number=130121199501123400&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F29&end_time=2022%2F01%2F28&car_name=dudu&plate_type=3&color=1&engine=kfmsfa&label_signal=232dsfdsf&registered_time=2021%2F01%2F14&issuance_time=2021%2F01%2F22&age=23&transfer=1&new_price=1650000&actual_price=1550000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=33&curb_quality=23&vehicle_inspection=1&reason=dfjfsaf&displacement=23&power=1&last_year_danger=2&participate_city=150000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=78&vehicle_third_discount=78&car_driver=car_driver&car_driver_money=130000&car_driver_standard=80000&car_driver_discount=78&car_driver_payable=62400.00&seat=3&car_passenger_discount=78&car_goods_discount=78&combustion_discount=78&engine_wading=engine_wading&engine_wading_money=20000&engine_wading_standard=15000&engine_wading_discount=78&engine_wading_payable=11700.00&designated_repai_discount=78&broken_glass_discount=78&benchmarking=77400&total_discount=78&total_planning=74100.00&participate_name=du&participate_license_type=1&participate_number=130121199501123400&participate_phone=18633937097&coordinated_name=%E7%9A%84%E5%A4%A7%E7%85%9E%E9%A3%8E%E6%99%AF%E5%95%8A&coordinated_license_type=1&coordinated_number=13012199501123400&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E7%8E%BB%E7%92%83%E7%BB%9F%E7%AD%B9%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E7%8E%BB%E7%92%83%E5%8D%95%E7%8B%AC%E7%A0%B4%E7%A2%8E%E7%BB%9F%E7%AD%B9%E6%8C%89%E5%9B%BD%E4%BA%A7%E7%8E%BB%E7%92%83%E5%8F%82%E7%BB%9F%EF%BC%8C%E7%90%86%E8%B5%94%E6%97%B6%E6%8C%89%E5%9B%BD%E4%BA%A7%E4%BB%B6%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A2%E3%80%81%E6%8C%96%E6%8E%98%E6%9C%BA%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%EF%BC%9A%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%9C%A8%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%2C%E9%80%A0%E6%88%90%E5%9C%B0%E4%B8%8B%E7%BA%BF%E8%B7%AF%E3%80%81%E7%AE%A1%E9%81%93%E7%AD%89%E8%AE%BE%E5%A4%87%E7%9A%84%E6%8D%9F%E5%A4%B1%E4%BB%A5%E5%8F%8A%E7%94%B1%E6%AD%A4%E5%BC%95%E8%B5%B7%E7%9A%84%E5%85%B6%E5%AE%83%E6%8D%9F%E5%A4%B1%EF%BC%9B%E6%96%BD%E5%B7%A5%E7%8E%B0%E5%9C%BA%E5%86%85%EF%BC%8C%E6%96%BD%E5%B7%A5%E6%9C%BA%E6%A2%B0%E5%9B%A0%E5%9C%B0%E5%9F%BA%E5%A1%8C%E9%99%B7%E6%88%96%E9%87%8D%E5%BF%83%E4%B8%8D%E7%A8%B3%E9%80%A0%E6%88%90%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E5%80%BE%E6%96%9C%E3%80%81%E5%80%BE%E8%A6%86%EF%BC%8C%E5%BC%95%E8%B5%B7%E7%9A%84%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E8%87%AA%E8%BA%AB%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A3%E3%80%81%E5%8F%82%E7%BB%9F%E8%BD%A6%E8%BE%86%E4%BD%BF%E7%94%A8%E8%BF%87%E7%A8%8B%E4%B8%AD%EF%BC%8C%E5%9C%A8%E6%9C%AA%E4%B8%8E%E7%AC%AC%E4%B8%89%E8%80%85%E5%8F%91%E7%94%9F%E7%A2%B0%E6%92%9E%E6%97%B6%EF%BC%8C%E4%B8%BB%E6%8C%82%E8%BD%A6%E4%BA%92%E7%A2%B0%E4%BA%A7%E7%94%9F%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%A1%A5%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=1&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=sdfasf3453&invoice_bank=%E6%94%BE%E7%82%B9%E5%8F%91%E8%BD%A6&invoice_account=13222&invoice_open_address=%E5%87%BA%E7%8E%B0%E5%9C%A8+v+%E5%95%8A+v&invoice_phone=19903211962&invoice_remarks=%E6%89%8B%E5%8A%A8%E5%BC%80%E5%8F%91%E5%8F%AF%E5%87%8F%E8%82%A5&description=%E7%96%AF%E7%8B%82%E5%87%8F%E8%82%A5%E5%81%A5%E5%BA%B7%E7%9A%84%E6%B0%B4%E7%85%8E%E6%9C%8D&overall_id=ZH2021000000003&status=3结果：成功'),
	(103,'1','2021-01-28 14:14:07:133',50,'2886795265','杜兆森','添加单证回收recycle_structure=2&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F28&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功'),
	(104,'7','2021-01-28 14:52:47:787',33,'2886795265','杜','登陆成功'),
	(105,'7','2021-01-28 15:00:20:835',33,'2886795265','杜1','登陆成功'),
	(106,'2','2021-01-28 15:01:00:926',10,'2886795265','杜兆森','修改用户id=800004&username=du1&roles=2&phone=19903211111&sex=1&identity=130121995011233333&name=%E6%9D%9C1&pinyin_name=duone&structure=17&salesman=1&manager=2&city=460100&manager_id=800002结果：成功'),
	(107,'7','2021-01-28 15:02:01:452',33,'2886795265','杜1','登陆成功'),
	(108,'7','2021-01-29 16:49:01:145',33,'2886795265','杜兆森','登陆成功'),
	(109,'3','2021-01-29 16:55:10:068',50,'2886795265','杜兆森','删除单证回收id=3结果：成功'),
	(110,'1','2021-01-29 16:55:27:863',50,'2886795265','杜兆森','添加单证回收recycle_structure=14&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功'),
	(111,'3','2021-01-29 17:11:12:430',50,'2886795265','杜兆森','删除单证回收id=4结果：成功'),
	(112,'1','2021-01-29 17:11:30:163',50,'2886795265','杜兆森','添加单证回收recycle_structure=16&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败'),
	(113,'1','2021-01-29 17:11:33:127',50,'2886795265','杜兆森','添加单证回收recycle_structure=16&recycle_user=800003&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败'),
	(114,'1','2021-01-29 17:11:51:424',50,'2886795265','杜兆森','添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败'),
	(115,'1','2021-01-29 17:11:57:318',50,'2886795265','杜兆森','添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败'),
	(116,'1','2021-01-29 17:40:23:739',50,'2886795265','杜兆森','添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：失败'),
	(117,'1','2021-01-29 17:40:43:326',50,'2886795265','杜兆森','添加单证回收recycle_structure=14&recycle_user=800001&recycle_s_num=00033&recycle_e_num=00033&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F29&recycle_type=1&add_id=0123164919&issued_id=24145906结果：成功'),
	(118,'7','2021-01-30 08:48:55:895',33,'2886795265','杜兆森','登陆成功'),
	(119,'7','2021-01-30 08:48:55:985',33,'2886795265','杜兆森','登陆成功'),
	(120,'7','2021-01-30 08:48:56:054',33,'2886795265','杜兆森','登陆成功'),
	(121,'7','2021-01-30 08:49:04:516',33,'2886795265','杜兆森','登陆成功'),
	(122,'7','2021-01-30 14:34:29:813',33,'2886795265','杜兆森','登陆成功'),
	(123,'8','2021-01-30 14:38:22:848',0,'','system','car_code cron-任务开始执行'),
	(124,'8','2021-01-30 14:38:22:899',0,'','system','car_code cron-验车码生成成功，第1次,内容P5BZFZ'),
	(125,'8','2021-01-30 14:38:22:904',0,'','system','car_code cron-任务执行完毕'),
	(126,'7','2021-01-30 14:38:33:221',33,'2886795265','杜兆森','登陆成功'),
	(127,'1','2021-01-30 14:39:25:482',49,'2886795265','杜兆森','添加单证入库s_num=00050&e_num=00060&total=11&type=1结果：成功'),
	(128,'1','2021-01-30 14:39:40:233',50,'2886795265','杜兆森','添加单证下发issued_structure=1&issued_user=800001&issued_type=1&issued_s_num=00050&issued_e_num=00055&issued_total=6&add_id=0130143925结果：成功'),
	(129,'1','2021-01-30 14:42:14:286',50,'2886795265','杜兆森','添加单证回收recycle_structure=1&recycle_user=800001&recycle_s_num=00050&recycle_e_num=00050&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F30&recycle_type=1&add_id=0130143925&issued_id=30143940结果：成功'),
	(130,'1','2021-01-30 14:44:46:568',50,'2886795265','杜兆森','添加单证回收recycle_structure=1&recycle_user=800001&recycle_s_num=00051&recycle_e_num=00051&recycle_total=1&recycle_fettle=2&recycle_create_time=2021%2F01%2F30&recycle_type=1&add_id=0130143925&issued_id=30143940结果：成功'),
	(131,'2','2021-01-30 14:46:32:912',1,'2886795265','杜兆森','打印documents_id=00052&related_id=2021010900001&issued_type=1&issued_id=30143940结果：成功'),
	(132,'4','2021-01-30 15:17:11:850',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2F3a6477a373c76a970fb94defb2cd2f26.jpg&id=48'),
	(133,'4','2021-01-30 15:17:16:202',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fb05965dd73d2f66ce2ed3f8c4828ba9e.jpg&id=49'),
	(134,'4','2021-01-30 15:17:16:287',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fc3e954c9919a51911045281521273239.jpg&id=50'),
	(135,'4','2021-01-30 15:17:16:358',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210130%2Fa44764ff7418756797d3a7fa56a7cfb8.jpg&id=51'),
	(136,'4','2021-01-30 15:17:29:924',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Fdbcd739a441d1e9c864c7df29d0575f3.jpg&id=52'),
	(137,'4','2021-01-30 15:17:30:074',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Ff8ecb45043d7a95f8ef17b66b25a7e87.jpg&id=53'),
	(138,'4','2021-01-30 15:17:30:215',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2Fa970fd4089589df7638ef64829f685c9.jpg&id=54'),
	(139,'4','2021-01-30 15:17:30:337',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210130%2F248ea5e95e851d3ee8dbcaca32b2d83e.jpg&id=55'),
	(140,'1','2021-01-30 15:17:34:804',2,'2886795265','杜兆森','添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F30&temporary_id=2021013000001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F01%2F30&traffic_end_time=2021%2F01%2F30&plate=%E5%86%80ASSSSS&frame=chejiahaodsf23dsf&relationship=3&license_type=1&license_number=130121199501123001&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F31&end_time=2022%2F01%2F30&car_name=%E5%B0%8F%E6%98%8E&plate_type=2&color=1&engine=sdfmsfd&label_signal=sdfjskjdfajfksakf&registered_time=2021%2F01%2F30&issuance_time=2021%2F01%2F31&age=3&transfer=1&new_price=1500000&actual_price=1440000&use_nature=7&species=14&car_type=2&approved_user=5&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%B5%8B%E8%AF%95%E5%93%88%E5%93%88&displacement=1&power=23&last_year_danger=2&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third=vehicle_third&vehicle_third_money=20000&vehicle_third_standard=14000&vehicle_third_discount=89&vehicle_third_payable=12460.00&car_driver=car_driver&car_driver_money=40000&car_driver_standard=35999&car_driver_discount=89&car_driver_payable=32039.11&seat=4&car_passenger_discount=89&car_goods=car_goods&car_goods_money=23000&car_goods_standard=20000&car_goods_discount=89&car_goods_payable=17800.00&combustion_discount=89&engine_wading_discount=89&designated_repai=designated_repai&designated_repai_money=1000&designated_repai_standard=999&designated_repai_discount=89&designated_repai_payable=889.11&broken_glass_discount=89&benchmarking=63298&total_discount=89&total_planning=63188.00&car_owner=1&participate_name=%E5%B0%8F%E6%98%8E&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=%E5%B0%8F%E7%BA%A2&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E5%86%B7%E8%97%8F%E8%BD%A6%E5%8E%A2%E4%BD%93%E4%B8%8D%E6%89%BF%E7%BB%9F%EF%BC%8C%E5%8E%A2%E4%BD%93%E5%8F%8A%E8%BD%A6%E4%B8%8A%E5%88%B6%E5%86%B7%E8%AE%BE%E5%A4%87%E4%B8%8D%E6%89%BF%E7%BB%9F%E3%80%82%0D%0A2%E3%80%81%E6%9C%AC%E8%BD%A6%E8%BD%A6%E6%8D%9F%E7%BB%9F%E7%AD%B9%E5%8F%8A%E5%85%B6%E9%99%84%E5%8A%A0%E7%BB%9F%E7%AD%B9%E9%AA%8C%E8%BD%A6%E5%90%8E%E4%B8%8A%E4%BC%A0%E7%B3%BB%E7%BB%9F%E7%BB%8F%E5%AE%A1%E6%A0%B8%E5%90%8E%E6%96%B9%E5%8F%AF%E7%94%9F%E6%95%88%E3%80%82%0D%0A3%E3%80%81%E8%BD%A6%E4%B8%8A%E4%BA%BA%E5%91%98%E8%B4%A3%E4%BB%BB%E9%99%A9%EF%BC%88%E4%B9%98%E5%AE%A2%EF%BC%89%E8%A1%A5%E5%81%BF%E9%99%90%E9%A2%9D%E4%B8%BA50000%E5%85%83%2A2%E4%BA%BA%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=1&invoice_name=%E5%9C%A3%E8%AF%9E%E8%8A%82%E5%8F%91&invoice_tax=fjsdjfsdsijfiafds&invoice_bank=sdfkjsfdj&invoice_account=8778778889&description=%E6%B5%8B%E8%AF%95%E5%93%87&overall_id=ZH2021000000004&status=3结果：成功'),
	(141,'6','2021-01-30 16:50:24:380',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=4&log_type=1结果：成功'),
	(142,'6','2021-01-30 16:50:37:158',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败'),
	(143,'6','2021-01-30 16:50:46:295',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败'),
	(144,'6','2021-01-30 16:51:14:491',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：失败'),
	(145,'6','2021-01-30 16:53:02:732',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：成功'),
	(146,'6','2021-01-30 16:53:16:889',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=2&log_type=2结果：成功'),
	(147,'2','2021-01-30 17:21:45:284',23,'2886795265','杜兆森','修改统筹单id=ZH2021000000004&overall_id=ZH2021000000004&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F01%2F30&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F01%2F30&temporary_id=2021013000001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F01%2F30&traffic_end_time=+2021%2F01%2F30&plate=%E5%86%80ASSSSS&frame=chejiahaodsf23dsf&relationship=1&license_type=1&license_number=130121199501123001&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F01%2F31&end_time=2022%2F01%2F30&car_name=%E5%B0%8F%E6%98%8E&plate_type=1&color=1&engine=sdfmsfd&label_signal=sdfjskjdfajfksakf&registered_time=2021%2F01%2F30&issuance_time=2021%2F01%2F30&age=3&transfer=1&new_price=1500000&actual_price=1440000&use_nature=1&species=1&car_type=1&approved_user=5&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%B5%8B%E8%AF%95%E5%93%88%E5%93%88&displacement=1&power=23&last_year_danger=1&participate_city=130000&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third=vehicle_third&vehicle_third_money=20000&vehicle_third_standard=14000&vehicle_third_discount=89&vehicle_third_payable=12460&car_driver=car_driver&car_driver_money=40000&car_driver_standard=35999&car_driver_discount=89&car_driver_payable=32039.1&seat=4&car_passenger_money=40000&car_passenger_discount=89&car_goods=car_goods&car_goods_money=23000&car_goods_standard=20000&car_goods_discount=89&car_goods_payable=17800&combustion_discount=89&engine_wading_discount=89&designated_repai=designated_repai&designated_repai_money=1000&designated_repai_standard=999&designated_repai_discount=89&designated_repai_payable=889.11&broken_glass_discount=89&benchmarking=63298&total_discount=89&total_planning=63188&car_owner=1&participate_name=%E5%B0%8F%E6%98%8E&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_name=%E5%B0%8F%E7%BA%A2&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E5%86%B7%E8%97%8F%E8%BD%A6%E5%8E%A2%E4%BD%93%E4%B8%8D%E6%89%BF%E7%BB%9F%EF%BC%8C%E5%8E%A2%E4%BD%93%E5%8F%8A%E8%BD%A6%E4%B8%8A%E5%88%B6%E5%86%B7%E8%AE%BE%E5%A4%87%E4%B8%8D%E6%89%BF%E7%BB%9F%E3%80%82%0D%0A2%E3%80%81%E6%9C%AC%E8%BD%A6%E8%BD%A6%E6%8D%9F%E7%BB%9F%E7%AD%B9%E5%8F%8A%E5%85%B6%E9%99%84%E5%8A%A0%E7%BB%9F%E7%AD%B9%E9%AA%8C%E8%BD%A6%E5%90%8E%E4%B8%8A%E4%BC%A0%E7%B3%BB%E7%BB%9F%E7%BB%8F%E5%AE%A1%E6%A0%B8%E5%90%8E%E6%96%B9%E5%8F%AF%E7%94%9F%E6%95%88%E3%80%82%0D%0A3%E3%80%81%E8%BD%A6%E4%B8%8A%E4%BA%BA%E5%91%98%E8%B4%A3%E4%BB%BB%E9%99%A9%EF%BC%88%E4%B9%98%E5%AE%A2%EF%BC%89%E8%A1%A5%E5%81%BF%E9%99%90%E9%A2%9D%E4%B8%BA50000%E5%85%83%2A2%E4%BA%BA%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=%E6%B5%8B%E8%AF%95%E5%93%87&status=3结果：成功'),
	(148,'6','2021-01-30 17:23:59:043',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=4&log_type=1结果：成功'),
	(149,'6','2021-01-30 17:24:05:631',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=5&log_type=3结果：成功'),
	(150,'6','2021-01-30 17:24:17:656',25,'2886795265','杜兆森','初级审核统筹单related_id=2021013000001&type=1&status=6&log_type=4结果：成功'),
	(151,'1','2021-01-30 17:29:32:512',6,'2886795265','杜兆森','添加菜单pid=29&name=%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功'),
	(152,'2','2021-01-30 17:29:58:619',7,'2886795265','杜兆森','修改菜单id=52&pid=29&name=%E5%AE%A1%E6%A0%B8%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功'),
	(153,'1','2021-01-30 17:30:40:395',6,'2886795265','杜兆森','添加菜单pid=31&name=%E5%AE%A1%E6%A0%B8%E9%A1%B5&folder=Endorsements&action=endorsements%2FreviewInfo&isshow=2结果：成功'),
	(154,'7','2021-01-31 14:01:02:842',33,'2886795265','杜兆森','登陆成功'),
	(155,'7','2021-02-01 08:36:28:694',33,'2886795265','杜兆森','登陆成功'),
	(156,'6','2021-02-01 09:11:02:681',25,'2886795265','杜兆森','审核统筹单related_id=2021010900002&type=1&status=2&log_type=7结果：成功'),
	(157,'6','2021-02-01 09:12:19:253',25,'2886795265','杜兆森','审核统筹单related_id=2021013000001&type=1&status=2&log_type=7结果：成功'),
	(158,'6','2021-02-01 09:18:06:871',25,'2886795265','杜兆森','审核统筹单related_id=P2021011200001&type=1&status=2&log_type=7结果：成功'),
	(159,'6','2021-02-01 09:18:54:375',25,'2886795265','杜兆森','审核统筹单related_id=P2021011200001&type=2&status=1&log_type=7结果：成功'),
	(160,'1','2021-02-01 13:42:13:157',11,'2886795265','duzhaosen','添加角色name=%E7%AE%A1%E7%90%86%E5%91%98&type=1&admin=2&powers=&salesman=1结果：成功'),
	(161,'2','2021-02-01 13:45:19:939',9,'2886795265','duzhaosen','修改组织id=1&source=1&name=%E6%80%BB%E9%83%A8结果：成功'),
	(162,'2','2021-02-01 13:49:43:756',10,'2886795265','duzhaosen','修改用户id=800001&username=duzhaosen&roles=3&phone=19903211962&sex=1&identity=130121199501123410&name=%E6%9D%9C%E5%85%86%E6%A3%AE&pinyin_name=duzhaosen&structure=1&salesman=2&manager=1&city=130000结果：成功'),
	(163,'7','2021-02-01 13:53:43:344',33,'2886795265','杜兆森','登陆成功'),
	(164,'2','2021-02-01 13:54:59:116',7,'2886795265','杜兆森','修改菜单id=41&pid=39&name=%E8%B4%A2%E5%8A%A1%E6%9F%A5%E8%AF%A2%EF%BC%88%E7%BB%9F%E7%AD%B9%E5%8D%95%EF%BC%89&folder=Financial&action=overall%2Findex&isshow=1结果：成功'),
	(165,'2','2021-02-01 13:56:23:457',7,'2886795265','杜兆森','修改菜单id=50&pid=48&name=%E4%BA%8C%E7%BA%A7%E5%AE%A1%E6%A0%B8%EF%BC%88%E7%BB%9F%E7%AD%B9%E5%8D%95%EF%BC%89&folder=Review&action=secondary%2Foverall&isshow=1结果：成功'),
	(166,'2','2021-02-01 13:57:08:385',7,'2886795265','杜兆森','修改菜单id=53&pid=52&name=%E5%8D%95%E8%AF%81%E5%85%A5%E5%BA%93&folder=Documents&action=warehousing%2Fwarehousing&isshow=1结果：成功'),
	(167,'2','2021-02-01 13:57:34:818',7,'2886795265','杜兆森','修改菜单id=54&pid=52&name=%E5%8D%95%E8%AF%81%E4%B8%8B%E5%8F%91&folder=Documents&action=issued%2Fissued&isshow=1结果：成功'),
	(168,'2','2021-02-01 13:57:46:378',7,'2886795265','杜兆森','修改菜单id=55&pid=52&name=%E5%8D%95%E8%AF%81%E5%9B%9E%E6%94%B6&folder=Documents&action=recycle%2Frecycle&isshow=1结果：成功'),
	(169,'2','2021-02-01 13:59:34:949',7,'2886795265','杜兆森','修改菜单id=57&pid=56&name=%E6%8A%A5%E6%A1%88%E4%B8%AD%E5%BF%83&folder=Overallcompensation&action=report%2Findex&isshow=1结果：成功'),
	(170,'2','2021-02-01 14:00:20:846',7,'2886795265','杜兆森','修改菜单id=58&pid=56&name=%E6%9F%A5%E5%8B%98%E4%B8%AD%E5%BF%83&folder=Overallcompensation&action=survey%2Findex&isshow=1结果：成功'),
	(171,'1','2021-02-01 14:01:38:599',6,'2886795265','杜兆森','添加菜单pid=24&name=%E5%AF%86%E7%A0%81%E4%BF%AE%E6%94%B9&folder=System&action=Pass%2Fedit&isshow=1结果：成功'),
	(172,'1','2021-02-01 14:02:05:281',6,'2886795265','杜兆森','添加菜单pid=24&name=%E6%97%A5%E5%BF%97%E7%AE%A1%E7%90%86&folder=System&action=logs%2Findex&isshow=1结果：成功'),
	(173,'1','2021-02-01 14:02:23:224',6,'2886795265','杜兆森','添加菜单pid=24&name=%E9%AA%8C%E8%BD%A6%E7%A0%81&folder=System&action=carcode%2Findex&isshow=1结果：成功'),
	(174,'1','2021-02-01 14:08:52:076',11,'2886795265','杜兆森','添加角色name=%E6%8A%A5%E4%BB%B7%E5%8D%95&type=1&powers=30%2C31%2C34%2C35%2C33&admin=1&salesman=1结果：成功'),
	(175,'1','2021-02-01 14:09:37:793',10,'2886795265','杜兆森','添加用户username=jingban&passwd=70bc419990b6bc19fc89f2ec3a470af7&roles=4&phone=19903211962&sex=1&identity=130121199501123411&name=%E7%BB%8F%E5%8A%9E&pinyin_name=jingban&structure=1&salesman=2&manager=1&city=130000结果：成功'),
	(176,'1','2021-02-01 14:10:22:868',10,'2886795265','杜兆森','添加用户username=baojia&passwd=70bc419990b6bc19fc89f2ec3a470af7&roles=4&phone=19903211962&sex=1&identity=130121199501123412&name=%E6%8A%A5%E4%BB%B7%E4%BA%BA&pinyin_name=baojia&structure=1&salesman=1&manager=2&city=130000&manager_id=800002结果：成功'),
	(177,'1','2021-02-01 14:15:54:601',18,'2886795265','杜兆森','添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=dkfj42&start_time=2021%2F02%2F02&end_time=2022%2F02%2F01&car_name=%E6%8A%A5%E4%BB%B7%E4%BA%BA&plate_type=2&color=1&engine=dflkakfja&label_signal=fjjrfe&registered_time=2020-11-01&age=10&transfer=1&new_price=230000&actual_price=223333&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=34&curb_quality=33&vehicle_inspection=1&reason=%E4%B8%9C%E6%96%B9%E5%8D%A1%E6%8B%89%E6%96%AF%E7%A7%91%E8%80%81%E5%85%AC&participate_city=130000&last_year_status=%E6%9D%9C%E5%AF%8C%E5%9B%BD&year_indemnity=2&continuous_non_risk=2&continuous_year=3&danger_total=4&discount=34&coefficient=0.34&remarks=%E4%B8%9C%E6%96%B9%E5%BD%92%E5%B1%9E%E6%84%9F&rating=2&date_time=365&short_term_coefficient=1&vehicle_loss=vehicle_loss&vehicle_loss_money=8000.44&vehicle_loss_standard=7000&vehicle_loss_discount=23&vehicle_loss_payable=1610.00&vehicle_third_discount=23&car_driver_discount=23&seat=3&car_passenger_discount=23&car_goods_discount=23&benchmarking=7000&total_discount=23&total_planning=1610结果：成功'),
	(178,'1','2021-02-01 14:22:38:876',18,'2886795265','杜兆森','添加报价单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021-02-01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&start_time=2021%2F02%2F02&end_time=2022%2F02%2F01&car_name=%E6%9D%9C&plate_type=2&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021-02-01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=3&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86%E5%9C%B0%E6%96%B9&participate_city=130000&last_year_status=2&year_indemnity=3&continuous_non_risk=23&continuous_year=3&danger_total=2&discount=23&coefficient=0.34&remarks=6074651676&rating=2&date_time=365&short_term_coefficient=1&vehicle_loss_discount=89&vehicle_third_discount=89&car_driver=car_driver&car_driver_money=130000&car_driver_standard=80000&car_driver_discount=89&car_driver_payable=71200.00&seat=2&car_passenger_discount=89&car_goods_discount=89&benchmarking=80000&total_discount=89&total_planning=71200结果：成功'),
	(179,'1','2021-02-01 14:40:00:366',6,'2886795265','杜兆森','添加菜单pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Quotation&action=quotation%2Fedit&isshow=1结果：成功'),
	(180,'2','2021-02-01 14:40:12:936',7,'2886795265','杜兆森','修改菜单id=70&pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E4%BF%AE%E6%94%B9&folder=Quotation&action=quotation%2Fedit&isshow=2结果：成功'),
	(181,'1','2021-02-01 14:41:11:650',6,'2886795265','杜兆森','添加菜单pid=33&name=%E6%8A%A5%E4%BB%B7%E5%8D%95%E5%A4%8D%E5%88%B6&folder=Quotation&action=quotation%2Fcopy&isshow=2结果：成功'),
	(182,'4','2021-02-01 16:25:19:704',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F34adced0f5789a43556d585879b5d55d.jpg&id=1'),
	(183,'4','2021-02-01 16:25:19:802',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F40a19e31e7531b3cee07f441479bb494.jpg&id=2'),
	(184,'4','2021-02-01 16:25:19:884',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2Fc762119edd0b226b6e84c594d9ef0302.jpg&id=3'),
	(185,'4','2021-02-01 16:25:36:063',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2Ffe6a5f85918c32036d9c0a6e2aadf7cc.jpg&id=4'),
	(186,'4','2021-02-01 16:25:36:193',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2Fce64330e224bda9bf6daea9292e74223.jpg&id=5'),
	(187,'4','2021-02-01 16:25:36:323',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault2%2F20210201%2F1dec47494bdb861de2eea2bce6f66b19.jpg&id=6'),
	(188,'4','2021-02-01 16:54:49:318',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2Fa0572b43d45973f67ee1a312065916b5.jpg&id=7'),
	(189,'4','2021-02-01 16:54:49:397',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F5b58cdd62a627ae0140fa469c9bad369.jpg&id=8'),
	(190,'4','2021-02-01 16:54:49:476',0,'2886795265','杜兆森','上传图片成功code=100000&msg=%E4%B8%8A%E4%BC%A0%E6%88%90%E5%8A%9F&url=%2FimagePath%2Fimage%2Fdefault1%2F20210201%2F03814496e41b4712fee32e49270155a7.jpg&id=9'),
	(191,'1','2021-02-01 16:54:52:346',2,'2886795265','杜兆森','添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&temporary_id=2021020100002&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F02%2F01&traffic_end_time=2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F02%2F01&age=2&transfer=2&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825.00&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825.00&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=2&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=324234&invoice_bank=34234&invoice_account=234&invoice_open_address=23243&invoice_phone=234&invoice_remarks=234&description=sdfasfdaf&overall_id=ZH2021000000001&status=3结果：失败'),
	(192,'1','2021-02-01 17:14:44:819',2,'2886795265','杜兆森','添加统筹单attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&temporary_id=2021020100002&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=2021%2F02%2F01&traffic_end_time=2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F02%2F01&age=2&transfer=2&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825.00&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825.00&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&invoice_type=2&invoice_name=%E6%89%8B%E5%8A%A8%E6%96%B9%E5%BC%8F%E5%88%86&invoice_tax=324234&invoice_bank=34234&invoice_account=234&invoice_open_address=23243&invoice_phone=234&invoice_remarks=234&description=sdfasfdaf&overall_id=ZH2021000000020&status=3结果：成功'),
	(193,'7','2021-02-02 09:42:14:896',33,'2886795265','杜兆森','登陆成功'),
	(194,'1','2021-02-02 09:45:25:624',6,'2886795265','杜兆森','添加菜单pid=49&name=%E5%88%9D%E7%BA%A7%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Review&action=primary%2Finfo&isshow=2结果：成功'),
	(195,'6','2021-02-02 09:45:34:576',25,'2886795265','杜兆森','审核统筹单related_id=2021020100002&type=1&status=4&log_type=1结果：成功'),
	(196,'1','2021-02-02 09:46:42:827',6,'2886795265','杜兆森','添加菜单pid=50&name=%E4%BA%8C%E7%BA%A7%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Review&action=secondary%2FoverallInfo&isshow=2结果：成功'),
	(197,'6','2021-02-02 09:49:27:925',25,'2886795265','杜兆森','审核统筹单related_id=2021020100002&type=1&status=5&log_type=3结果：成功'),
	(198,'1','2021-02-02 09:51:15:163',6,'2886795265','杜兆森','添加菜单pid=40&name=%E8%B4%A2%E5%8A%A1%E5%AE%A1%E6%A0%B8%E8%AF%A6%E6%83%85%E9%A1%B5&folder=Financial&action=overall%2FreviewInfo&isshow=2结果：成功'),
	(199,'6','2021-02-02 09:51:23:606',25,'2886795265','杜兆森','审核统筹单related_id=2021020100002&type=1&status=6&log_type=4结果：成功'),
	(200,'1','2021-02-02 09:52:23:198',49,'2886795265','杜兆森','添加单证入库s_num=00001&e_num=00010&total=10&type=1结果：成功'),
	(201,'1','2021-02-02 09:52:38:850',50,'2886795265','杜兆森','添加单证下发issued_structure=1&issued_user=800001&issued_type=1&issued_s_num=00001&issued_e_num=00006&issued_total=6&add_id=0202095223结果：成功'),
	(202,'2','2021-02-02 09:52:51:718',1,'2886795265','杜兆森','打印documents_id=00001&related_id=2021020100002&issued_type=1&issued_id=02095238结果：成功'),
	(203,'1','2021-02-02 09:54:22:387',6,'2886795265','杜兆森','添加菜单pid=46&name=%E5%85%A8%E5%8D%95%E6%89%B9%E6%94%B9%E8%AF%A6%E6%83%85&folder=Endorsements&action=fullorder%2Fendorsements&isshow=2结果：成功'),
	(204,'1','2021-02-02 10:00:21:220',15,'2886795265','杜兆森','添加批单overall_id=ZH2021000000020&temporary_id=2021020100002&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F02%2F01&financial_review_user=%E6%9D%9C%E5%85%86%E6%A3%AE&documents_id=00001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F02%2F01&traffic_end_time=+2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F01%2F01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion=combustion&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdfasfdafdfaf+&p_temporary_id=P2021020200001&endorsements_id=ZH2021000000002&status=2结果：成功'),
	(205,'7','2021-02-02 16:31:56:704',33,'2886795265','杜兆森','登陆成功'),
	(206,'1','2021-02-02 16:46:34:421',15,'2886795265','杜兆森','添加批单overall_id=ZH2021000000020&temporary_id=2021020100002&attribution_user=800003&manager=800002&create_user=duzhaosen&create_time=2021%2F02%2F01&nuclear_system_user=%E6%9D%9C%E5%85%86%E6%A3%AE&nuclear_system_time=2021%2F02%2F01&financial_review_user=%E6%9D%9C%E5%85%86%E6%A3%AE&documents_id=00001&traffic_company=%E8%BE%83%E5%BC%BA&traffic_start_time=+2021%2F02%2F01&traffic_end_time=+2021%2F02%2F01&plate=%E6%9A%82%E6%9C%AA%E4%B8%8A%E7%89%8C&frame=jdhh435ndfjge&relationship=1&license_type=1&license_number=130121199501123411&address=%E6%B2%B3%E5%8C%97%E7%9C%81%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%B8%82&start_time=2021%2F02%2F02&end_time=2021%2F11%2F01&car_name=%E6%9D%9C&plate_type=1&color=1&engine=dsfsdfdsd&label_signal=sdfdfjf&registered_time=2021%2F01%2F01&issuance_time=2021%2F01%2F01&age=2&transfer=1&new_price=1530000&actual_price=1400000&use_nature=1&species=1&car_type=1&approved_user=4&approved_load=23&curb_quality=33&vehicle_inspection=1&reason=K201911251125&displacement=23&power=2&last_year_danger=1&participate_city=130000&date_time=273&short_term_coefficient=0.75&vehicle_loss=vehicle_loss&vehicle_loss_money=3333&vehicle_loss_standard=3333.33&vehicle_loss_discount=33&vehicle_loss_payable=825&vehicle_third_discount=33&car_driver_discount=33&seat=3&car_passenger_discount=33&car_goods_discount=33&combustion=combustion&combustion_discount=33&engine_wading_discount=33&designated_repai_discount=33&broken_glass_discount=33&benchmarking=3333.33&total_discount=33&total_planning=825&car_owner=1&participate_name=duzhaosen&participate_license_type=1&participate_number=130121199501123411&participate_phone=18633937097&coordinated_same=1&coordinated_name=%E6%9D%9C&coordinated_license_type=1&coordinated_number=13012199501123411&coordinated_phone=18633937097&dispute_resolution=1&agreement=1%E3%80%81%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E7%9A%84%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E4%B8%BA%2A%2A%2A%E3%80%82%E6%9C%AA%E7%BB%8F%E5%85%B6%E4%BA%8B%E5%85%88%E4%B9%A6%E9%9D%A2%E5%90%8C%E6%84%8F%E6%9C%AC%E7%BB%9F%E7%AD%B9%E5%8D%95%E4%B8%8D%E5%BE%97%E8%A2%AB%E9%80%80%E7%BB%9F%E6%88%96%E5%87%8F%E7%BB%9F%E6%88%96%E6%89%B9%E6%94%B9%EF%BC%8C%E4%B8%8D%E5%BD%B1%E5%93%8D%E7%AC%AC%E4%B8%80%E5%8F%97%E7%9B%8A%E4%BA%BA%E6%9D%83%E7%9B%8A%E7%9A%84%E6%89%B9%E6%94%B9%E9%99%A4%E5%A4%96%E3%80%82%0D%0A2%E3%80%81%E9%AA%8C%E8%BD%A6%E9%A3%8E%E9%99%A9%E7%89%B9%E7%BA%A6%EF%BC%9A%E6%9C%AC%E7%BB%9F%E7%AD%B9%E8%BD%A6%E8%BE%86%E5%9C%A8%E5%8F%82%E7%BB%9F%E6%97%B6%2A%2A%E5%B7%B2%E6%9C%89%E6%8D%9F%E5%9D%8F%EF%BC%8C%E5%9C%A8%E8%A2%AB%E7%BB%9F%E7%AD%B9%E4%BA%BA%E6%9C%AA%E8%87%AA%E8%A1%8C%E4%BF%AE%E5%A4%8D%E5%B9%B6%E6%88%91%E5%85%AC%E5%8F%B8%E9%AA%8C%E8%BD%A6%E5%90%88%E6%A0%BC%E5%89%8D%EF%BC%8C%E5%90%8C%E4%B8%80%E9%83%A8%E4%BD%8D%E5%8F%91%E7%94%9F%E4%BA%8B%E6%95%85%E6%89%80%E9%80%A0%E6%88%90%E7%9A%84%E6%8D%9F%E5%A4%B1%EF%BC%8C%E6%88%91%E5%85%AC%E5%8F%B8%E4%B8%8D%E6%89%BF%E6%8B%85%E8%A1%A5%E5%81%BF%E8%B4%A3%E4%BB%BB%E3%80%82%0D%0A3%E3%80%81%E5%9B%A0%E4%BB%BB%E4%BD%95%E5%8E%9F%E5%9B%A0%E9%80%A0%E6%88%90%E6%B7%B7%E5%87%9D%E5%9C%9F%E5%87%9D%E5%9B%BA%E8%80%8C%E5%AF%BC%E8%87%B4%E7%9A%84%E8%AE%BE%E5%A4%87%E6%8D%9F%E5%A4%B1%2C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E4%B8%8D%E8%B4%9F%E8%B4%A3%E8%B5%94%E5%81%BF%E3%80%82%0D%0A4%E3%80%81%E5%8F%82%E7%BB%9F%E4%BA%BA%E7%9B%B4%E6%8E%A5%E6%88%96%E9%97%B4%E6%8E%A5%E7%BC%B4%E7%BA%B3%E7%BB%9F%E7%AD%B9%E8%B4%B9%EF%BC%8C%E7%BB%9F%E7%AD%B9%E4%BA%BA%E5%8D%B3%E8%A7%86%E4%B8%BA%E5%8F%82%E7%BB%9F%E4%BA%BA%E5%B7%B2%E7%9F%A5%E6%99%93%E7%BB%9F%E7%AD%B9%E5%90%88%E5%90%8C%E8%A7%84%E5%AE%9A%E7%9A%84%E5%85%8D%E9%99%A4%E7%BB%9F%E7%AD%B9%E4%BA%BA%E8%B4%A3%E4%BB%BB%E6%9D%A1%E6%AC%BE%E7%9A%84%E5%86%85%E5%AE%B9%E5%8F%8A%E6%B3%95%E5%BE%8B%E5%90%8E%E6%9E%9C%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A5%E3%80%81%E6%97%A0%E5%85%B6%E4%BB%96%E7%89%B9%E5%88%AB%E7%BA%A6%E5%AE%9A%E3%80%82%EF%BC%88%2A%E6%AD%A4%E9%A1%B9%E4%B8%BA%E5%BF%85%E9%A1%BB%EF%BC%89%0D%0A&description=sdfasfdaf&p_temporary_id=P2021020200001&endorsements_id=PZH2021000000001&status=2结果：成功');

/*!40000 ALTER TABLE `zh_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_menu`;

CREATE TABLE `zh_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '权限名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `sort` tinyint(4) NOT NULL DEFAULT '1' COMMENT '排序',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `folder` varchar(20) NOT NULL DEFAULT '' COMMENT '文件夹名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '控制器/方法',
  `param` varchar(10) NOT NULL DEFAULT '' COMMENT '参数名称',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1展示2不展示',
  `level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '层级',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单';

LOCK TABLES `zh_menu` WRITE;
/*!40000 ALTER TABLE `zh_menu` DISABLE KEYS */;

INSERT INTO `zh_menu` (`id`, `name`, `pid`, `sort`, `icon`, `folder`, `action`, `param`, `isshow`, `level`, `create_user`, `create_time`, `op_user`, `op_time`, `type`)
VALUES
	(24,'系统设置',0,3,'fa-cogs','System','','',1,0,'admin',1609294669,'duzhaosen',1609809147,1),
	(25,'菜单管理',24,1,'','System','menu/index','',1,0,'admin',1609294697,'',0,1),
	(26,'组织管理',0,2,'fa-users','User','','',1,0,'admin',1609294729,'duzhaosen',1609809131,1),
	(27,'组织结构',26,1,'','User','structure/index','',1,0,'admin',1609294753,'',0,1),
	(28,'人员管理',26,1,'','User','user/index','',1,0,'admin',1609294790,'',0,1),
	(29,'角色管理',26,1,'','User','roles/index','',1,0,'admin',1609294814,'',0,1),
	(30,'报价单管理',0,1,'fa-file-text-o','Quotation','','',1,0,'admin',1609294857,'duzhaosen',1609808912,1),
	(31,'报价单录入',30,1,'','Quotation','quotation/add','',1,0,'admin',1609294878,'',0,1),
	(32,'菜单添加',25,1,'','System','menu/add','',2,0,'admin',1609294915,'admin',1609294926,1),
	(33,'报价单查询',30,1,'','Quotation','quotation/index','',1,0,'admin',1609295156,'',0,1),
	(34,'报价单查看',33,1,'','Quotation','quotation/view','',2,0,'admin',1609312802,'',0,1),
	(35,'生成报价单',33,1,'','Quotation','quotation/quotationPdf','',2,0,'duzhaosen',1609381087,'',0,1),
	(36,'统筹单管理',0,1,'fa-map-o','Overall','','',1,0,'duzhaosen',1609386800,'duzhaosen',1609808930,1),
	(37,'统筹单录入',36,1,'','Overall','overall/add','',1,0,'duzhaosen',1609386827,'',0,1),
	(38,'统筹单查询',36,1,'','Overall','overall/index','',1,0,'duzhaosen',1609386840,'',0,1),
	(39,'财务管理',0,1,' fa-calculator','Financial','','',1,0,'duzhaosen',1609807563,'duzhaosen',1609808951,1),
	(40,'财务审核（统筹单）',39,1,'','Financial','overall/review','',1,0,'duzhaosen',1609807618,'',0,1),
	(41,'财务查询（统筹单）',39,1,'','Financial','overall/index','',1,0,'duzhaosen',1609807644,'杜兆森',1612158899,1),
	(42,'财务审核（批单）',39,1,'','Financial','endorsements/review','',1,0,'duzhaosen',1609807682,'',0,1),
	(43,'财务查询（批单）',39,1,'','Financial','endorsements/index','',1,0,'duzhaosen',1609807723,'',0,1),
	(44,'统筹单批改',0,1,' fa-edit','Endorsements','','',1,0,'duzhaosen',1609807750,'duzhaosen',1609808977,1),
	(45,'新车上牌',44,1,'','Endorsements','newcar/index','',1,0,'duzhaosen',1609807834,'',0,1),
	(46,'全单批改',44,1,'','Endorsements','fullorder/correction','',1,0,'duzhaosen',1609807869,'duzhaosen',1609810650,1),
	(47,'批单查询',44,1,'','Endorsements','endorsements/index','',1,0,'duzhaosen',1609807892,'',0,1),
	(48,'审核管理',0,1,' fa-calculator','Review','','',1,0,'duzhaosen',1609807970,'duzhaosen',1609808994,1),
	(49,'初级审核',48,1,'','Review','primary/review','',1,0,'duzhaosen',1609808000,'',0,1),
	(50,'二级审核（统筹单）',48,1,'','Review','secondary/overall','',1,0,'duzhaosen',1609808044,'杜兆森',1612158983,1),
	(51,'二级审核（批单）',48,1,'','Review','secondary/endorsements','',1,0,'duzhaosen',1609808087,'duzhaosen',1609812878,1),
	(52,'单证管理',0,1,'fa-credit-card','Documents','','',1,0,'duzhaosen',1609808104,'duzhaosen',1609809015,1),
	(53,'单证入库',52,1,'','Documents','warehousing/warehousing','',1,0,'duzhaosen',1609808172,'杜兆森',1612159028,1),
	(54,'单证下发',52,1,'','Documents','issued/issued','',1,0,'duzhaosen',1609808238,'杜兆森',1612159054,1),
	(55,'单证回收',52,1,'','Documents','recycle/recycle','',1,0,'duzhaosen',1609808283,'杜兆森',1612159066,1),
	(56,'统筹单补偿',0,1,'fa-calendar-check-o','Overallcompensation','','',1,0,'duzhaosen',1609808337,'duzhaosen',1609809045,1),
	(57,'报案中心',56,1,'','Overallcompensation','report/index','',1,0,'duzhaosen',1609808377,'杜兆森',1612159174,1),
	(58,'查勘中心',56,1,'','Overallcompensation','survey/index','',1,0,'duzhaosen',1609808409,'杜兆森',1612159220,1),
	(59,'补偿单审核',0,1,'fa-check-square-o','Makereview','','',1,0,'duzhaosen',1609808450,'duzhaosen',1609811303,1),
	(60,'车损/人伤审核',59,1,'','Makereview','carinjury/review','',1,0,'duzhaosen',1609808524,'duzhaosen',1609811239,1),
	(61,'补偿理算',59,1,'','Makereview','compensation/adjustment','',1,0,'duzhaosen',1609808564,'duzhaosen',1609811312,1),
	(62,'补偿核赔',59,1,'','Makereview','compensation/index','',1,0,'duzhaosen',1609808637,'duzhaosen',1609811321,1),
	(63,'补偿费审核',59,1,'','Makereview','compensation/review','',1,0,'duzhaosen',1609808671,'duzhaosen',1609811330,1),
	(64,'报表管理',0,1,'fa-calendar','Report','','',1,0,'duzhaosen',1609808703,'duzhaosen',1609809110,1),
	(65,'报表类型',64,1,'','Report','report/index','',1,0,'duzhaosen',1609808736,'duzhaosen',1609811436,1),
	(66,'统计分析',64,1,'','Report','statistical/analysis','',1,0,'duzhaosen',1609808777,'',0,1),
	(67,'密码修改',24,1,'','System','Pass/edit','',1,0,'杜兆森',1612159298,'',0,1),
	(68,'日志管理',24,1,'','System','logs/index','',1,0,'杜兆森',1612159325,'',0,1),
	(69,'验车码',24,1,'','System','carcode/index','',1,0,'杜兆森',1612159343,'',0,1),
	(70,'报价单修改',33,1,'','Quotation','quotation/edit','',2,0,'杜兆森',1612161600,'杜兆森',1612161612,1),
	(71,'报价单复制',33,1,'','Quotation','quotation/copy','',2,0,'杜兆森',1612161671,'',0,1),
	(72,'初级审核详情页',49,1,'','Review','primary/info','',2,0,'杜兆森',1612230325,'',0,1),
	(73,'二级审核详情页',50,1,'','Review','secondary/overallInfo','',2,0,'杜兆森',1612230402,'',0,1),
	(74,'财务审核详情页',40,1,'','Financial','overall/reviewInfo','',2,0,'杜兆森',1612230675,'',0,1),
	(75,'全单批改详情',46,1,'','Endorsements','fullorder/endorsements','',2,0,'杜兆森',1612230862,'',0,1);

/*!40000 ALTER TABLE `zh_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_overall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_overall`;

CREATE TABLE `zh_overall` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_id` char(15) NOT NULL DEFAULT '' COMMENT '统筹单号',
  `temporary_id` char(13) NOT NULL DEFAULT '' COMMENT '暂存单号',
  `attribution_user` varchar(20) NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '录入日期',
  `nuclear_system_user` varchar(20) NOT NULL DEFAULT '' COMMENT '核统人',
  `nuclear_system_time` int(11) NOT NULL DEFAULT '0' COMMENT '核统日期',
  `financial_review_user` varchar(20) NOT NULL DEFAULT '' COMMENT '财务审核人',
  `financial_review_time` int(11) NOT NULL DEFAULT '0' COMMENT '财务审核日期',
  `plate` varchar(12) NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT '0' COMMENT '生效天数',
  `short_term_coefficient` float(3,2) NOT NULL DEFAULT '0.00' COMMENT '短期系数',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `car_name` varchar(20) NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未生成新的单号2已生成新的单号',
  `dispute_resolution` tinyint(4) NOT NULL DEFAULT '1' COMMENT '争议解决方：1诉讼2仲裁',
  `agreement` text NOT NULL COMMENT '特别约定',
  `description` text NOT NULL COMMENT '参统说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1暂存2待修改3待初级审核4待二级审核5待财务审核6审核通过',
  `participate_name` varchar(20) NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `documents_id` char(7) NOT NULL DEFAULT '' COMMENT '单证号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `overall_id` (`overall_id`,`type`),
  UNIQUE KEY `documents_id` (`documents_id`),
  UNIQUE KEY `temporary_id` (`temporary_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='统筹单';

LOCK TABLES `zh_overall` WRITE;
/*!40000 ALTER TABLE `zh_overall` DISABLE KEYS */;

INSERT INTO `zh_overall` (`id`, `overall_id`, `temporary_id`, `attribution_user`, `manager`, `create_user`, `create_time`, `nuclear_system_user`, `nuclear_system_time`, `financial_review_user`, `financial_review_time`, `plate`, `frame`, `start_time`, `end_time`, `date_time`, `short_term_coefficient`, `remarks`, `op_user`, `op_time`, `car_name`, `type`, `new_id`, `dispute_resolution`, `agreement`, `description`, `status`, `participate_name`, `documents_id`)
VALUES
	(1,'ZH2021000000020','2021020100002','800003','800002','duzhaosen',1612108800,'杜兆森',1612230567,'杜兆森',1612230683,'暂未上牌','jdhh435ndfjge',1612195200,1635696000,273,0.75,'','杜兆森',1612230771,'杜',1,1,1,'1、本统筹单的第一受益人为***。未经其事先书面同意本统筹单不得被退统或减统或批改，不影响第一受益人权益的批改除外。\r\n2、验车风险特约：本统筹车辆在参统时**已有损坏，在被统筹人未自行修复并我公司验车合格前，同一部位发生事故所造成的损失，我公司不承担补偿责任。\r\n3、因任何原因造成混凝土凝固而导致的设备损失,统筹人不负责赔偿。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n','sdfasfdaf',6,'duzhaosen','00001');

/*!40000 ALTER TABLE `zh_overall` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_overall_planning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_overall_planning`;

CREATE TABLE `zh_overall_planning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联ID',
  `vehicle_loss` tinyint(4) NOT NULL DEFAULT '1' COMMENT '机动车损失统筹：1未选中2选中',
  `vehicle_loss_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车损失统筹金额',
  `vehicle_loss_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车损失统筹标准统筹费',
  `vehicle_loss_discount` int(11) NOT NULL DEFAULT '0' COMMENT '机动车损失统筹折扣',
  `vehicle_loss_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车损失统筹应缴统筹费',
  `vehicle_third` tinyint(4) NOT NULL DEFAULT '1' COMMENT '机动车第三者责任统筹：1未选中2选中',
  `vehicle_third_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车第三者责任统筹金额',
  `vehicle_third_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车第三者责任统筹标准统筹费',
  `vehicle_third_discount` int(11) NOT NULL DEFAULT '0' COMMENT '机动车第三者责任统筹折扣',
  `vehicle_third_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '机动车第三者责任统筹应缴统筹费',
  `car_driver` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车上人员责任统筹(司机):1未选中2选中',
  `car_driver_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(司机)金额',
  `car_driver_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(司机)标准统筹费',
  `car_driver_discount` int(11) NOT NULL DEFAULT '0' COMMENT '车上人员责任统筹(司机)折扣',
  `car_driver_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(司机)应缴统筹费',
  `car_passenger` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车上人员责任统筹(乘客):1未选中2选中',
  `car_passenger_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(乘客)金额',
  `yuan` int(11) NOT NULL DEFAULT '0' COMMENT '车上人员责任统筹(乘客):元',
  `seat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '车上人员责任统筹(乘客):座',
  `car_passenger_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(乘客)标准统筹费',
  `car_passenger_discount` int(11) NOT NULL DEFAULT '0' COMMENT '车上人员责任统筹(乘客)折扣',
  `car_passenger_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上人员责任统筹(乘客)应缴统筹费',
  `car_goods` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车上货物责任统筹：1未选中2选中',
  `car_goods_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上货物责任统筹金额',
  `car_goods_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上货物责任统筹标准统筹费',
  `car_goods_discount` int(11) NOT NULL DEFAULT '0' COMMENT '车上货物责任统筹折扣',
  `car_goods_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '车上货物责任统筹应缴统筹费',
  `combustion` tinyint(4) NOT NULL DEFAULT '1' COMMENT '附加项目-自燃损失统筹：1未选中2选中',
  `combustion_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '自燃损失统筹金额',
  `combustion_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '自燃损失统筹标准统筹费',
  `combustion_discount` int(1) NOT NULL DEFAULT '0' COMMENT '自燃损失统筹折扣',
  `combustion_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '自燃损失统筹应缴统筹费',
  `engine_wading` tinyint(4) NOT NULL DEFAULT '1' COMMENT '发动机涉水损失统筹：1未选中2选中',
  `engine_wading_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '发送机涉水损失统筹金额',
  `engine_wading_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '发送机涉水损失统筹标准统筹费',
  `engine_wading_discount` int(11) NOT NULL DEFAULT '0' COMMENT '发动机涉水损失统筹折扣',
  `engine_wading_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '发动机涉水损失应缴统筹费',
  `designated_repai` tinyint(4) NOT NULL DEFAULT '1' COMMENT '指定修理厂统筹：1未选中2选中',
  `designated_repai_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '指定修理厂统筹金额',
  `designated_repai_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '指定修理厂统筹标准统筹费',
  `designated_repai_discount` int(11) NOT NULL DEFAULT '0' COMMENT '指定修理厂统筹折扣',
  `designated_repai_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '指定修理厂应缴统筹费',
  `broken_glass` tinyint(4) NOT NULL DEFAULT '1' COMMENT '玻璃单独破碎统筹：1未选中2选中',
  `broken_glass_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '玻璃单独破碎统筹金额',
  `broken_glass_standard` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '玻璃单独破碎统筹标准统筹费',
  `broken_glass_discount` int(11) NOT NULL DEFAULT '0' COMMENT '玻璃单独破碎统筹折扣',
  `broken_glass_payable` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '玻璃单独破碎统筹应缴统筹费',
  `benchmarking` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '基准统筹费总计',
  `total_discount` int(20) NOT NULL DEFAULT '0' COMMENT '折扣',
  `total_planning` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '统筹总额',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='统筹信息';

LOCK TABLES `zh_overall_planning` WRITE;
/*!40000 ALTER TABLE `zh_overall_planning` DISABLE KEYS */;

INSERT INTO `zh_overall_planning` (`id`, `related_id`, `vehicle_loss`, `vehicle_loss_money`, `vehicle_loss_standard`, `vehicle_loss_discount`, `vehicle_loss_payable`, `vehicle_third`, `vehicle_third_money`, `vehicle_third_standard`, `vehicle_third_discount`, `vehicle_third_payable`, `car_driver`, `car_driver_money`, `car_driver_standard`, `car_driver_discount`, `car_driver_payable`, `car_passenger`, `car_passenger_money`, `yuan`, `seat`, `car_passenger_standard`, `car_passenger_discount`, `car_passenger_payable`, `car_goods`, `car_goods_money`, `car_goods_standard`, `car_goods_discount`, `car_goods_payable`, `combustion`, `combustion_money`, `combustion_standard`, `combustion_discount`, `combustion_payable`, `engine_wading`, `engine_wading_money`, `engine_wading_standard`, `engine_wading_discount`, `engine_wading_payable`, `designated_repai`, `designated_repai_money`, `designated_repai_standard`, `designated_repai_discount`, `designated_repai_payable`, `broken_glass`, `broken_glass_money`, `broken_glass_standard`, `broken_glass_discount`, `broken_glass_payable`, `benchmarking`, `total_discount`, `total_planning`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'BJ20210200001',1,0.00,0.00,89,0.00,1,0.00,0.00,89,0.00,2,130000.00,80000.00,89,71200.00,1,0.00,0,2,0.00,89,0.00,1,0.00,0.00,89,0.00,1,0.00,0.00,0,0.00,1,0.00,0.00,0,0.00,1,0.00,0.00,0,0.00,1,0.00,0.00,0,0.00,80000.00,89,71200.00,'duzhaosen',1612108800,'',0),
	(2,'2021020100001',1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0,2,0.00,33,0.00,2,4444.00,3333.33,33,957.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,2,2222.00,1222.22,33,350.90,1,0.00,0.00,33,0.00,4555.55,33,1307.90,'duzhaosen',1612168671,'',0),
	(3,'2021020100002',2,3333.00,3333.33,33,825.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0,3,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,1,0.00,0.00,33,0.00,3333.33,33,825.00,'duzhaosen',1612169692,'杜兆森',1612170884);

/*!40000 ALTER TABLE `zh_overall_planning` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_participate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_participate`;

CREATE TABLE `zh_participate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联单号',
  `participate_name` varchar(20) NOT NULL DEFAULT '' COMMENT '参统人姓名',
  `participate_license_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '参统人证件号：1身份证2社会统一信用代码',
  `participate_number` varchar(18) NOT NULL DEFAULT '' COMMENT '参统人证件号',
  `participate_phone` varchar(11) NOT NULL DEFAULT '' COMMENT '参统人手机号',
  `participate_email` varchar(20) NOT NULL DEFAULT '' COMMENT '参统人邮箱',
  `participate_address` varchar(50) NOT NULL DEFAULT '' COMMENT '参统人地址',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `car_owner` tinyint(4) NOT NULL DEFAULT '1' COMMENT '同车主：1是2否',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='参统人信息';

LOCK TABLES `zh_participate` WRITE;
/*!40000 ALTER TABLE `zh_participate` DISABLE KEYS */;

INSERT INTO `zh_participate` (`id`, `related_id`, `participate_name`, `participate_license_type`, `participate_number`, `participate_phone`, `participate_email`, `participate_address`, `create_user`, `create_time`, `car_owner`, `op_user`, `op_time`)
VALUES
	(1,'2021020100001','duzhaosen',1,'130121199501123411','18633937097','','','duzhaosen',1612168671,1,'',0),
	(2,'2021020100002','duzhaosen',1,'130121199501123411','18633937097','','','duzhaosen',1612169692,1,'杜兆森',1612170884);

/*!40000 ALTER TABLE `zh_participate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_pay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_pay`;

CREATE TABLE `zh_pay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `overall_type` int(11) NOT NULL COMMENT '统筹单类型：1统筹单2批单',
  `pay_money` float NOT NULL COMMENT '缴费金额',
  `pay_time` int(11) NOT NULL COMMENT '缴费时间',
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联ID',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费信息';

LOCK TABLES `zh_pay` WRITE;
/*!40000 ALTER TABLE `zh_pay` DISABLE KEYS */;

INSERT INTO `zh_pay` (`id`, `overall_type`, `pay_money`, `pay_time`, `related_id`, `create_time`, `create_user`, `op_user`, `op_time`)
VALUES
	(1,1,50600,1610380800,'2021010900001',1611802589,'duzhaosen','杜兆森',1611802589),
	(2,1,7761,1610467200,'2021010900002',1610509826,'duzhaosen','杜兆森',1610509826),
	(28,1,50600,1610208000,'P2021011000001',1610524510,'duzhaosen','杜兆森',1610524510),
	(31,1,7761,1610467200,'P2021011200001',1610524734,'duzhaosen','杜兆森',1610524734),
	(32,1,122011,1610899200,'2021011800001',1610937843,'duzhaosen','',0),
	(33,1,74100,1611763200,'2021012800001',1611814207,'duzhaosen','',0),
	(34,1,63188,1611936000,'2021013000001',1611998505,'duzhaosen','杜兆森',1611998505);

/*!40000 ALTER TABLE `zh_pay` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_quotation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_quotation`;

CREATE TABLE `zh_quotation` (
  `id` char(13) NOT NULL DEFAULT '',
  `attribution_user` varchar(20) NOT NULL DEFAULT '' COMMENT '归属人',
  `manager` varchar(20) NOT NULL DEFAULT '' COMMENT '经办人',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '录入人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '录入日期',
  `plate` varchar(5) NOT NULL DEFAULT '' COMMENT '车牌号',
  `frame` varchar(17) NOT NULL DEFAULT '' COMMENT '车架号',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹起期',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '统筹止期',
  `date_time` int(11) NOT NULL DEFAULT '0' COMMENT '生效天数',
  `short_term_coefficient` float(3,2) NOT NULL DEFAULT '0.00' COMMENT '短期系数',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `car_name` varchar(20) NOT NULL DEFAULT '' COMMENT '车主姓名',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
  `new_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未生成新的单号2已生成新的单号',
  UNIQUE KEY `id` (`id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='报价单';

LOCK TABLES `zh_quotation` WRITE;
/*!40000 ALTER TABLE `zh_quotation` DISABLE KEYS */;

INSERT INTO `zh_quotation` (`id`, `attribution_user`, `manager`, `create_user`, `create_time`, `plate`, `frame`, `start_time`, `end_time`, `date_time`, `short_term_coefficient`, `remarks`, `op_user`, `op_time`, `car_name`, `type`, `new_id`)
VALUES
	('BJ20210200001','800003','800002','duzhaosen',1612108800,'暂未上牌','jdhh435ndfjge',1612195200,1643644800,365,1.00,'6074651676','',0,'杜',1,1);

/*!40000 ALTER TABLE `zh_quotation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_report
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_report`;

CREATE TABLE `zh_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` char(12) NOT NULL DEFAULT '' COMMENT '报案单号',
  `overall_id` char(15) NOT NULL DEFAULT '' COMMENT '统筹单号',
  `plate` varchar(12) NOT NULL DEFAULT '' COMMENT '车牌',
  `frame` varchar(17) NOT NULL DEFAULT '' COMMENT '车架',
  `coordinated_name` varchar(100) NOT NULL DEFAULT '' COMMENT '被统筹人',
  `nuclear_system_time` int(11) NOT NULL COMMENT '核统日期',
  `end_time` int(11) NOT NULL COMMENT '统筹止期',
  `report_user` varchar(50) NOT NULL DEFAULT '' COMMENT '报案人',
  `report_time` int(11) NOT NULL COMMENT '报案时间',
  `out_danger_time` int(11) NOT NULL COMMENT '出险时间',
  `accident_situation` tinyint(4) NOT NULL COMMENT '事故情况：1单方2多方',
  `human_injury` tinyint(4) NOT NULL DEFAULT '2' COMMENT '人伤：1是2否',
  `driver` varchar(50) NOT NULL DEFAULT '' COMMENT '驾驶员',
  `way_type` tinyint(4) NOT NULL COMMENT '道路类型',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `risk_location` int(11) NOT NULL COMMENT '出险地点',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '具体地点',
  `description` text NOT NULL COMMENT '出险描述',
  `survey_agency` tinyint(4) NOT NULL COMMENT '查勘机构',
  `survey_user` tinyint(4) NOT NULL COMMENT '查勘人',
  `survey_phone` char(11) NOT NULL DEFAULT '' COMMENT '查勘人电话',
  `survey_remarks` text NOT NULL COMMENT '查勘备注',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `report_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '案件状态：',
  `car_damage_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '车损：1未录入',
  `human_injury_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '人伤：1未录入',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id` (`report_id`),
  UNIQUE KEY `overall_id` (`overall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报案信息';



# Dump of table zh_review_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_review_log`;

CREATE TABLE `zh_review_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` char(14) NOT NULL DEFAULT '' COMMENT '关联ID',
  `create_time` int(11) NOT NULL COMMENT '审核时间',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '审核人',
  `type` int(11) NOT NULL COMMENT '1初级通过2待修改3二级审核(统筹单)通过4财务审核(统筹单)通过5二级审核（批单）通过6财务审核（批单）通过7取消通过',
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
	(7,'P2021011200001',1610526736,'杜兆森',6),
	(8,'2021010900001',1611802606,'杜兆森',1),
	(9,'2021010900001',1611802612,'杜兆森',3),
	(10,'2021010900001',1611802623,'杜兆森',4),
	(11,'2021013000001',1611996624,'杜兆森',1),
	(12,'2021013000001',1611996782,'杜兆森',3),
	(13,'2021013000001',1611996796,'杜兆森',2),
	(14,'2021013000001',1611998639,'杜兆森',1),
	(15,'2021013000001',1611998645,'杜兆森',3),
	(16,'2021013000001',1611998657,'杜兆森',4),
	(17,'2021010900002',1612141862,'杜兆森',7),
	(18,'2021013000001',1612141939,'杜兆森',7),
	(19,'P2021011200001',1612142286,'杜兆森',7),
	(20,'P2021011200001',1612142334,'杜兆森',7),
	(21,'2021020100002',1612230334,'杜兆森',1),
	(22,'2021020100002',1612230567,'杜兆森',3),
	(23,'2021020100002',1612230683,'杜兆森',4);

/*!40000 ALTER TABLE `zh_review_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_roles`;

CREATE TABLE `zh_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '角色名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常2禁用',
  `salesman` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1不是业务归属2是业务归属',
  `isuser` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1不是出单员2是出单员',
  `admin` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1不是超管2超管',
  `group_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1未拥有2拥有同部门及下属权限',
  `powers` text NOT NULL COMMENT '权限',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色';

LOCK TABLES `zh_roles` WRITE;
/*!40000 ALTER TABLE `zh_roles` DISABLE KEYS */;

INSERT INTO `zh_roles` (`id`, `name`, `type`, `salesman`, `isuser`, `admin`, `group_power`, `powers`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(3,'管理员',1,1,1,2,1,'','duzhaosen',1612158133,'',0),
	(4,'报价单',1,1,1,1,1,'30,31,34,35,33','杜兆森',1612159732,'',0);

/*!40000 ALTER TABLE `zh_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_roles_copy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_roles_copy`;

CREATE TABLE `zh_roles_copy` (
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

LOCK TABLES `zh_roles_copy` WRITE;
/*!40000 ALTER TABLE `zh_roles_copy` DISABLE KEYS */;

INSERT INTO `zh_roles_copy` (`id`, `name`, `type`, `salesman`, `isuser`, `admin`, `group_power`, `powers`, `create_user`, `create_time`, `op_user`, `op_time`)
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

/*!40000 ALTER TABLE `zh_roles_copy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_structure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_structure`;

CREATE TABLE `zh_structure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '组织名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常2禁用',
  `source` tinyint(4) NOT NULL DEFAULT '0' COMMENT '业务来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织';

LOCK TABLES `zh_structure` WRITE;
/*!40000 ALTER TABLE `zh_structure` DISABLE KEYS */;

INSERT INTO `zh_structure` (`id`, `name`, `pid`, `create_user`, `create_time`, `op_user`, `op_time`, `type`, `source`)
VALUES
	(1,'总部',0,'',0,'duzhaosen',1612158319,1,1);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='查勘录入';



# Dump of table zh_traffic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_traffic`;

CREATE TABLE `zh_traffic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) NOT NULL DEFAULT '' COMMENT '统筹单号',
  `traffic_company` varchar(100) NOT NULL DEFAULT '' COMMENT '交强险公司',
  `traffic_start_time` int(11) NOT NULL DEFAULT '0' COMMENT '交强起期',
  `traffic_end_time` int(11) NOT NULL DEFAULT '0' COMMENT '交强止期',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交强险';

LOCK TABLES `zh_traffic` WRITE;
/*!40000 ALTER TABLE `zh_traffic` DISABLE KEYS */;

INSERT INTO `zh_traffic` (`id`, `related_id`, `traffic_company`, `traffic_start_time`, `traffic_end_time`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'2021020100001','交强险有限公司',1612108800,1612108800,'duzhaosen',1612168671,'',0),
	(2,'2021020100002','较强',1612108800,1612108800,'duzhaosen',1612169692,'杜兆森',1612170884);

/*!40000 ALTER TABLE `zh_traffic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_user`;

CREATE TABLE `zh_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `passwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `roles` int(1) NOT NULL COMMENT '角色',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1男2女',
  `identity` char(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `create_user` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `op_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `op_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `pinyin_name` varchar(20) NOT NULL DEFAULT '' COMMENT '英文姓名',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常2禁用',
  `structure` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `salesman` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1业务员2非业务员',
  `manager` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1经办人2非经办人',
  `manager_id` int(11) NOT NULL DEFAULT '0' COMMENT '经办人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户';

LOCK TABLES `zh_user` WRITE;
/*!40000 ALTER TABLE `zh_user` DISABLE KEYS */;

INSERT INTO `zh_user` (`id`, `username`, `passwd`, `roles`, `phone`, `sex`, `identity`, `city`, `create_user`, `create_time`, `op_user`, `op_time`, `name`, `pinyin_name`, `type`, `structure`, `salesman`, `manager`, `manager_id`)
VALUES
	(800001,'duzhaosen','70bc419990b6bc19fc89f2ec3a470af7',3,'19903211962',1,'130121199501123410',130000,'',0,'duzhaosen',1612158583,'杜兆森','duzhaosen',1,1,1,1,0),
	(800002,'jingban','70bc419990b6bc19fc89f2ec3a470af7',4,'19903211962',1,'130121199501123411',130000,'杜兆森',1612159777,'',0,'经办','jingban',1,1,2,1,0),
	(800003,'baojia','70bc419990b6bc19fc89f2ec3a470af7',4,'19903211962',1,'130121199501123412',130000,'杜兆森',1612159822,'',0,'报价人','baojia',1,1,1,2,800002);

/*!40000 ALTER TABLE `zh_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
