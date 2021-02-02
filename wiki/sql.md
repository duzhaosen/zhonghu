#### 车损
```
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
```

#### 验车码
```
CREATE TABLE `zh_carcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(6) NOT NULL DEFAULT '' COMMENT '验车码',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='验证码';
```

#### 补偿款信息
```
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
```

#### 车损详情
```
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
```

#### 单证入库
```
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
```

#### 单证使用log表
```
CREATE TABLE `zh_documents_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` char(10) NOT NULL DEFAULT '0' COMMENT '下发批次号/入库批次号',
  `documents_id` char(7) NOT NULL DEFAULT '0' COMMENT '单证号',
  `issued_time` int(11) NOT NULL DEFAULT '0' COMMENT '使用时间',
  `issued_user` varchar(50) NOT NULL DEFAULT '' COMMENT '使用人',
  `is_issued` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未使用2已使用3已回收',
  `related_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1入库2下发',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COMMENT='单证使用log表';
```

#### 单证下发表
```
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
```

#### 单证回收
```
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='单证回收';
```

#### 批单
```
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
  `documents_id` char(7) DEFAULT '',
  `financial_review_time` int(11) DEFAULT NULL,
  `op_user` varchar(20) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  `approval` text COMMENT '批文',
  `endorsements_time` int(11) DEFAULT NULL COMMENT '批改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='批单';
```

#### 人伤详情
```
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
```

#### 人伤
```
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
```

#### 日志
```
CREATE TABLE `zh_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) NOT NULL DEFAULT '' COMMENT '日志类型：1增加2编辑3删除4上传',
  `log_time` varchar(30) NOT NULL DEFAULT '' COMMENT '添加时间',
  `power_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `log_server_ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `login_name` varchar(30) NOT NULL DEFAULT '' COMMENT '操作人',
  `log_content` text NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='日志';
```

#### 报案信息
```
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='报案信息';
```

#### 审核日志
```
CREATE TABLE `zh_review_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1初级通过2待修改3二级审核(统筹单)通过4财务审核(统筹单)通过5二级审核（批单）通过6财务审核（批单）通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='审核日志';
```

#### 查勘录入
```
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
```
