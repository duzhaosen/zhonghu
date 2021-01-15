# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: zhonghujiaotong
# Generation Time: 2021-01-15 16:59:09 +0000
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
	(28,'BA2021010001','20210115/6052e39dd1f526417b18c9fe71596478.jpg','default1','参统资料','杜兆森',1610717319,1,NULL,NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_car` WRITE;
/*!40000 ALTER TABLE `zh_car` DISABLE KEYS */;

INSERT INTO `zh_car` (`id`, `plate`, `plate_type`, `color`, `car_name`, `relationship`, `license_type`, `license_number`, `address`, `frame`, `engine`, `label_signal`, `registered_time`, `issuance_time`, `age`, `transfer`, `new_price`, `actual_price`, `species`, `approved_user`, `car_type`, `approved_load`, `curb_quality`, `displacement`, `use_nature`, `power`, `vehicle_inspection`, `reason`, `last_year_danger`, `participate_city`, `create_user`, `create_time`, `related_id`, `op_user`, `year_indemnity`, `op_time`, `name`, `last_year_status`, `danger_total`, `rating`, `remarks`, `continuous_non_risk`, `coefficient`, `discount`, `continuous_year`)
VALUES
	(1,'冀A12345',1,1,'杜',1,1,'130121199501123411','河北省石家庄市','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1608134400,1608134400,2,1,1530000,1400000,1,3,1,45,55,12,1,2,1,'手动方式分地方',1,'130000',NULL,1610439148,'2021010900001','杜兆森',NULL,1610439148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'冀A12340',1,1,'测试哇',1,1,'130121','河北省','chejiahao','fasongjihao','changpaixinghao',1609430400,1609430400,3,1,140000,130000,1,4,1,23,22,2,1,3,1,'reason',1,'130000',NULL,1610509826,'2021010900002','杜兆森',NULL,1610509826,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'冀A12345',1,1,'杜',1,1,'130121199501123411','河北省石家庄市','jdhh435ndfjge','dsfsdfdsd','sdfdfjf',1608134400,1608134400,2,1,1530000,1400000,1,3,1,45,55,12,1,2,1,'手动方式分地方',1,'130000',NULL,1610524510,'P2021011000001','杜兆森',NULL,1610524510,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'冀A11111',1,1,'独照',NULL,NULL,NULL,NULL,'sdffdsa','sdfjsdfsdf','sdfsdf',1609776000,NULL,2,1,2333333,2222222,4,3,4,23,33,NULL,3,NULL,2,'2',NULL,'130000',NULL,NULL,'BJ20210100001',NULL,3,NULL,NULL,2,2,2,'23234',23,23,23,22),
	(9,'冀A12340',1,1,'测试哇',1,1,'130121','河北省','chejiahao','fasongjihao','changpaixinghao',1609430400,1609430400,3,1,140000,130000,1,4,1,23,22,2,1,3,1,'reason',1,'130000',NULL,1610524734,'P2021011200001','杜兆森',NULL,1610524734,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `zh_car` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zh_car_damage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zh_car_damage`;

CREATE TABLE `zh_car_damage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) NOT NULL DEFAULT '' COMMENT '关联ID',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_coordinator` WRITE;
/*!40000 ALTER TABLE `zh_coordinator` DISABLE KEYS */;

INSERT INTO `zh_coordinator` (`id`, `coordinated_same`, `coordinated_name`, `coordinated_license_type`, `coordinated_number`, `coordinated_phone`, `coordinated_email`, `coordinated_address`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,NULL,'杜',1,'13012199501123411',NULL,NULL,NULL,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,NULL,'杜兆森',1,'130',NULL,NULL,NULL,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(3,NULL,'杜',1,'13012199501123411',NULL,NULL,NULL,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(6,NULL,'杜兆森',1,'130',NULL,NULL,NULL,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734);

/*!40000 ALTER TABLE `zh_coordinator` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_endorsements` WRITE;
/*!40000 ALTER TABLE `zh_endorsements` DISABLE KEYS */;

INSERT INTO `zh_endorsements` (`id`, `overall_id`, `endorsements_id`, `p_temporary_id`, `start_time`, `end_time`, `car_name`, `date_time`, `short_term_coefficient`, `participate_name`, `dispute_resolution`, `agreement`, `description`, `be_unified_name`, `create_user`, `create_time`, `frame`, `plate`, `type`, `attribution_user`, `manager`, `status`, `new_id`, `financial_review_user`, `documents_id`, `financial_review_time`, `op_user`, `op_time`, `approval`, `endorsements_time`)
VALUES
	(3,'ZH2021000000001','PZH2021000000001','P2021011000001',1610208000,1641657600,'杜',365,1,'杜',1,'1、玻璃统筹特别约定：参统玻璃单独破碎统筹按国产玻璃参统，理赔时按国产件补偿。\r\n2、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n3、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n','测试电话费舒服的沙发圣诞节飞机上看风景看就是地方即使分开就分开就是看的风景看大煞风景的手机费世杰地方大煞风景说',NULL,'duzhaosen',1610208000,'jdhh435ndfjge','冀A12345',1,'800004','800002',1,NULL,NULL,NULL,NULL,'杜兆森',1610524510,NULL,NULL),
	(6,'ZH2021000000002','ZH4','P2021011200001',1610208000,1640966400,'测试哇',357,1,'duzhaosen',1,'1、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n2、车上货物责任统筹特别约定：易燃、易碎、易腐蚀、易污染物品及鲜活产品不在统筹责任范围内。单独运输玻璃（玻璃不得与其他货物混装）且仅在发生道路交通事故的情况下，统筹人负责补偿。2吨以下车辆单次责任限额**万，年累计责任限额**万。\r\n3、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n4、无其他特别约定。（*此项为必须）\r\n','测试参统寿',NULL,'duzhaosen',1610467200,'chejiahao','冀A12340',1,'800004','800002',4,NULL,'杜兆森',NULL,1610526736,'杜兆森',1610526736,NULL,1610442752);

/*!40000 ALTER TABLE `zh_endorsements` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_invoice` WRITE;
/*!40000 ALTER TABLE `zh_invoice` DISABLE KEYS */;

INSERT INTO `zh_invoice` (`id`, `invoice_type`, `invoice_name`, `invoice_tax`, `invoice_bank`, `invoice_account`, `invoice_open_address`, `invoice_phone`, `invoice_remarks`, `create_user`, `create_time`, `related_id`, `op_user`, `op_time`)
VALUES
	(1,'1','发票',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1610171073,'2021010900001',NULL,NULL),
	(2,'1','jdjs','shuihao','3242342',NULL,NULL,NULL,NULL,NULL,1610172657,'2021010900002',NULL,NULL);

/*!40000 ALTER TABLE `zh_invoice` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `zh_menu` WRITE;
/*!40000 ALTER TABLE `zh_menu` DISABLE KEYS */;

INSERT INTO `zh_menu` (`id`, `folder`, `action`, `param`, `url`, `isshow`, `op_time`, `create_time`, `type`, `sort`, `name`, `pid`, `create_user`, `level`, `icon`, `op_user`)
VALUES
	(1,'Overall',NULL,NULL,NULL,1,1610356384,1610065672,1,2,'统筹单管理',NULL,NULL,NULL,NULL,'杜兆森'),
	(2,'Overall','overall/add',NULL,NULL,1,NULL,1610065890,1,1,'统筹单添加',1,NULL,1,NULL,NULL),
	(3,'Overall','overall/index',NULL,NULL,1,NULL,1610065907,1,1,'统筹单查询',1,NULL,1,NULL,NULL),
	(4,'System',NULL,NULL,NULL,1,1610585572,1610329936,1,8,'系统设置',NULL,'duzhaosen',1,NULL,'杜兆森'),
	(5,'System','menu/index',NULL,NULL,1,NULL,1610329964,1,1,'菜单管理',4,'duzhaosen',1,NULL,NULL),
	(6,'System','menu/add',NULL,NULL,2,1610330320,1610330281,1,1,'菜单添加',5,'duzhaosen',1,NULL,'duzhaosen'),
	(7,'System','menu/edit',NULL,NULL,2,1610330332,1610330305,1,1,'菜单修改',5,'duzhaosen',1,NULL,'duzhaosen'),
	(8,'User',NULL,NULL,NULL,1,1610585564,1610331030,1,7,'组织管理',NULL,'duzhaosen',1,NULL,'杜兆森'),
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
	(33,'Index','index/index',NULL,NULL,2,NULL,1610501189,1,1,'首页',NULL,'杜兆森',1,NULL,NULL),
	(34,'Overallcompensation',NULL,NULL,NULL,1,1610585555,1610585459,1,6,'统筹单补偿',NULL,'杜兆森',1,NULL,'杜兆森'),
	(35,'Overallcompensation','report/center',NULL,NULL,1,NULL,1610585488,1,1,'报案中心',34,'杜兆森',1,NULL,NULL),
	(36,'Overallcompensation','survey/center',NULL,NULL,1,NULL,1610585518,1,1,'查勘中心',34,'杜兆森',1,NULL,NULL),
	(37,'Overallcompensation','report/add',NULL,NULL,2,NULL,1610594430,1,1,'报案添加',35,'杜兆森',1,NULL,NULL);

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
  `documents_id` int(11) DEFAULT NULL,
  `financial_review_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `continuation` int(11) DEFAULT '2' COMMENT '是否续统：1是2否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_overall` WRITE;
/*!40000 ALTER TABLE `zh_overall` DISABLE KEYS */;

INSERT INTO `zh_overall` (`id`, `overall_id`, `temporary_id`, `start_time`, `end_time`, `car_name`, `date_time`, `short_term_coefficient`, `participate_name`, `dispute_resolution`, `agreement`, `description`, `be_unified_name`, `create_user`, `create_time`, `frame`, `plate`, `type`, `attribution_user`, `manager`, `status`, `new_id`, `financial_review_user`, `documents_id`, `financial_review_time`, `op_user`, `op_time`, `continuation`)
VALUES
	(1,'ZH2021000000001','2021010900001',1610208000,1641657600,'杜',365,1,'杜',1,'1、玻璃统筹特别约定：参统玻璃单独破碎统筹按国产玻璃参统，理赔时按国产件补偿。\r\n2、挖掘机特别约定：参统车辆在使用过程中,造成地下线路、管道等设备的损失以及由此引起的其它损失；施工现场内，施工机械因地基塌陷或重心不稳造成参统车辆倾斜、倾覆，引起的参统车辆自身损失，本公司不负责补偿。\r\n3、混凝土泵车特别约定：在施工过程中由于地基不牢发生路面塌陷造成本车的一切损失，或因违反操作规范致使水泥输送臂架系统及其造成的第三者人员伤亡及财产损失，统筹人不承担补偿责任。\r\n4、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n5、无其他特别约定。（*此项为必须）\r\n','测试电话费舒服的沙发圣诞节飞机上看风景看就是地方即使分开就分开就是看的风景看大煞风景的手机费世杰地方大煞风景',NULL,'duzhaosen',1610380800,'jdhh435ndfjge','冀A12345',1,'800003','800002',1,NULL,NULL,NULL,NULL,'杜兆森',1610439148,2),
	(2,'ZH2021000000002','2021010900002',1610208000,1640966400,'测试哇',357,1,'duzhaosen',1,'1、起重机特别约定：施工机械在作业过程中，车体失去重心造成参统车辆倾覆、倾斜，引起参统车辆的自身损失；施工机械在吊升、举升、装载货物过程中，由于吊臂断裂、货物掉落原因造成参统车辆的本身损失，以及造成架空管道、线路或其他物体的损失；施工人员违反操作规则，导致机械臂或车身触及高压线所造成的一切损失；车辆在行驶中，由于超过限制高度所引起的车辆本身和第三者的损失，统筹人不承担补偿责任。\r\n2、车上货物责任统筹特别约定：易燃、易碎、易腐蚀、易污染物品及鲜活产品不在统筹责任范围内。单独运输玻璃（玻璃不得与其他货物混装）且仅在发生道路交通事故的情况下，统筹人负责补偿。2吨以下车辆单次责任限额**万，年累计责任限额**万。\r\n3、参统人直接或间接缴纳统筹费，统筹人即视为参统人已知晓统筹合同规定的免除统筹人责任条款的内容及法律后果。（*此项为必须）\r\n4、无其他特别约定。（*此项为必须）\r\n','测试参统寿命',NULL,'duzhaosen',1610467200,'chejiahao','冀A12340',1,'800004','800002',6,NULL,NULL,NULL,NULL,'杜兆森',1610526428,2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_overall_planning` WRITE;
/*!40000 ALTER TABLE `zh_overall_planning` DISABLE KEYS */;

INSERT INTO `zh_overall_planning` (`id`, `vehicle_loss`, `vehicle_loss_money`, `vehicle_loss_standard`, `vehicle_loss_payable`, `vehicle_third`, `vehicle_third_money`, `vehicle_third_standard`, `vehicle_third_payable`, `car_driver`, `car_driver_money`, `car_driver_standard`, `car_driver_payable`, `car_passenger`, `car_passenger_money`, `yuan`, `seat`, `car_passenger_standard`, `car_passenger_payable`, `car_goods`, `car_goods_money`, `car_goods_standard`, `car_goods_payable`, `benchmarking`, `total_discount`, `total_planning`, `vehicle_loss_discount`, `vehicle_third_discount`, `car_driver_discount`, `car_passenger_discount`, `car_goods_discount`, `create_user`, `create_time`, `related_id`, `combustion`, `combustion_money`, `combustion_standard`, `combustion_discount`, `combustion_payable`, `engine_wading`, `engine_wading_money`, `engine_wading_standard`, `engine_wading_discount`, `engine_wading_payable`, `designated_repai`, `designated_repai_money`, `designated_repai_standard`, `designated_repai_discount`, `designated_repai_payable`, `broken_glass`, `broken_glass_money`, `broken_glass_standard`, `broken_glass_discount`, `broken_glass_payable`, `op_user`, `op_time`)
VALUES
	(1,2,200000,180000,39600,2,30000,29000,6380,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,59960,22,50600,22,22,22,22,22,'duzhaosen',1610439148,'2021010900001',NULL,NULL,NULL,22,NULL,2,10000,9000,22,1980,2,20000,12000,22,2640,NULL,NULL,NULL,22,NULL,'杜兆森',1610439148),
	(2,2,10000,9000,7056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,7956,80,7761,80,80,80,80,80,'duzhaosen',1610509826,'2021010900002',NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,2,1000,900,80,705.6,'杜兆森',1610509826),
	(5,2,200000,180000,39600,2,30000,29000,6380,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,59960,22,50600,50600,50600,50600,50600,50600,'duzhaosen',1610524510,'P2021011000001',NULL,NULL,NULL,22,NULL,2,10000,9000,22,1980,2,20000,12000,22,2640,NULL,NULL,NULL,22,NULL,'杜兆森',1610524510),
	(6,2,2300000,2000000,440000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,2000000,22,440000,22,22,22,22,22,'duzhaosen',1610380800,'BJ20210100001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,2,10000,9000,7056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,7956,80,7761,7761,7761,7761,7761,7761,'duzhaosen',1610524734,'P2021011200001',NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,80,NULL,2,1000,900,80,705.6,'杜兆森',1610524734);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_participate` WRITE;
/*!40000 ALTER TABLE `zh_participate` DISABLE KEYS */;

INSERT INTO `zh_participate` (`id`, `participate_name`, `car_owner`, `participate_license_type`, `participate_number`, `participate_phone`, `participate_email`, `participate_address`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'杜',1,1,'130121199501123411',NULL,NULL,NULL,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,'duzhaosen',NULL,1,'13012',NULL,NULL,NULL,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(28,'杜',1,1,'130121199501123411',NULL,NULL,NULL,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(31,'duzhaosen',NULL,1,'13012',NULL,NULL,NULL,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_pay` WRITE;
/*!40000 ALTER TABLE `zh_pay` DISABLE KEYS */;

INSERT INTO `zh_pay` (`id`, `overall_type`, `pay_money`, `pay_time`, `related_id`, `create_time`, `create_user`, `op_user`, `op_time`)
VALUES
	(1,1,50600,1610380800,'2021010900001',1610439148,'duzhaosen','杜兆森',1610439148),
	(2,1,7761,1610467200,'2021010900002',1610509826,'duzhaosen','杜兆森',1610509826),
	(28,1,50600,1610208000,'P2021011000001',1610524510,'duzhaosen','杜兆森',1610524510),
	(31,1,7761,1610467200,'P2021011200001',1610524734,'duzhaosen','杜兆森',1610524734);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_report` WRITE;
/*!40000 ALTER TABLE `zh_report` DISABLE KEYS */;

INSERT INTO `zh_report` (`id`, `report_id`, `overall_id`, `plate`, `frame`, `coordinated_name`, `nuclear_system_time`, `end_time`, `report_user`, `report_time`, `out_danger_time`, `accident_situation`, `human_injury`, `driver`, `way_type`, `phone`, `risk_location`, `address`, `description`, `survey_agency`, `survey_user`, `survey_phone`, `survey_remarks`, `create_user`, `create_time`, `report_type`, `car_damage_type`, `human_injury_type`, `op_user`, `op_time`)
VALUES
	(1,'BA2021010001','ZH2021000000001','冀A12345','jdhh435ndfjge','杜',NULL,1610640000,'杜兆森',1610640000,1610640000,1,2,'杜杜',2,'19903211962',110101,'成都方式分','第三方水电费',1,101,'13613313101','第三方水电费地方','杜兆森',1610636237,1,1,1,'杜兆森',1610674809);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_roles` WRITE;
/*!40000 ALTER TABLE `zh_roles` DISABLE KEYS */;

INSERT INTO `zh_roles` (`id`, `name`, `type`, `salesman`, `isuser`, `admin`, `group_power`, `powers`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'中互',1,2,NULL,2,NULL,'',NULL,1610265846,NULL,NULL),
	(2,'普通出单员',1,1,NULL,1,NULL,'1,2,3,4,5,6,7,12,8,9,10,11','duzhaosen',1610331156,'杜兆森',1610350409);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zh_traffic` WRITE;
/*!40000 ALTER TABLE `zh_traffic` DISABLE KEYS */;

INSERT INTO `zh_traffic` (`id`, `traffic_company`, `traffic_start_time`, `traffic_end_time`, `related_id`, `create_user`, `create_time`, `op_user`, `op_time`)
VALUES
	(1,'交强险有限公司',1609344000,1611936000,'2021010900001','duzhaosen',1610439148,'杜兆森',1610439148),
	(2,'测试交强险公司',1610121600,1610121600,'2021010900002','duzhaosen',1610509826,'杜兆森',1610509826),
	(3,'交强险有限公司',1609344000,1611936000,'P2021011000001','duzhaosen',1610524510,'杜兆森',1610524510),
	(6,'测试交强险公司',1610121600,1610121600,'P2021011200001','duzhaosen',1610524734,'杜兆森',1610524734);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `zh_user` WRITE;
/*!40000 ALTER TABLE `zh_user` DISABLE KEYS */;

INSERT INTO `zh_user` (`id`, `username`, `passwd`, `identity`, `salesman`, `type`, `manager`, `structure`, `roles`, `sex`, `city`, `create_user`, `create_time`, `op_user`, `op_time`, `phone`, `name`, `pinyin_name`, `manager_id`)
VALUES
	(800001,'duzhaosen','70bc419990b6bc19fc89f2ec3a470af7','130121199501123410','1',1,'1',1,1,1,130000,NULL,1610328579,'duzhaosen',1610332584,'19903211962','杜兆森','duzhaosen',NULL),
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
