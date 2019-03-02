# Host: localhost  (Version: 5.5.53)
# Date: 2019-03-02 17:15:04
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ddsc_about"
#

DROP TABLE IF EXISTS `ddsc_about`;
CREATE TABLE `ddsc_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `marray` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_about"
#

/*!40000 ALTER TABLE `ddsc_about` DISABLE KEYS */;
INSERT INTO `ddsc_about` VALUES (1,'游戏规则介绍','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">总投资：购268元产品，回报66.5万。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">需要分享：分享2人即可，并复制2人每人再分享2人来参与。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">当你建立6层团队，66.5万即可到手。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">没了！就这么简单</p><p><br/></p>','总投资：购268元产品，回报66.5万。\r\n需要分享：分享2人即可，并复制2人每人再分享2人来参与。\r\n当你建立6层团队，66.5万即可到手。\r\n没了！就这么简单'),(2,NULL,'<h2 style=\"box-sizing: border-box; font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 100; line-height: 1.1; color: rgb(103, 106, 108); margin-top: 5px; margin-bottom: 10px; font-size: 24px; white-space: normal;\">好不好推广?</h2><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意???</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">定心，定位，定江山！激情代表业绩的行业！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">简单的二二复制模式，不需要太复杂的思维！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">每天给自己定一个小目标！升级才能赚钱</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">保持每天完成！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">6级会员就会越来越近！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">敢紧行动下一个奇迹就是你</p><p><br/></p>',NULL),(3,'268元挑战日收入过万，66.5万不是梦！ ','66,5000元',NULL);
/*!40000 ALTER TABLE `ddsc_about` ENABLE KEYS */;

#
# Structure for table "ddsc_addr"
#

DROP TABLE IF EXISTS `ddsc_addr`;
CREATE TABLE `ddsc_addr` (
  `aid` int(9) NOT NULL AUTO_INCREMENT,
  `a_time` varchar(255) DEFAULT NULL COMMENT '收货地址添加时间',
  `addr` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `uid` int(9) NOT NULL COMMENT '收货人id',
  `default` int(3) NOT NULL DEFAULT '0' COMMENT '默认收货地址:0:备用;1:默认收货地址',
  `home` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `a_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `a_phone` varchar(255) DEFAULT NULL COMMENT '收货人手机号',
  `a_gender` int(3) NOT NULL DEFAULT '0' COMMENT '性别:0:男;1:女',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_addr"
#

/*!40000 ALTER TABLE `ddsc_addr` DISABLE KEYS */;
INSERT INTO `ddsc_addr` VALUES (50,'1551248119','河南省郑州市郑东新区行署国际广场F座2708室 ',55,1,'5','liuy ','18638175209',1);
/*!40000 ALTER TABLE `ddsc_addr` ENABLE KEYS */;

#
# Structure for table "ddsc_admin"
#

DROP TABLE IF EXISTS `ddsc_admin`;
CREATE TABLE `ddsc_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `pretime` datetime DEFAULT NULL,
  `curtime` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT '登录IP',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '管理员类型 0超级管理员 1普通管理员',
  `control` text COMMENT '控制器权限',
  `way` text COMMENT '方法',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_admin"
#

/*!40000 ALTER TABLE `ddsc_admin` DISABLE KEYS */;
INSERT INTO `ddsc_admin` VALUES (1,'admin','8a30ec6807f71bc69d096d8e4d501ade','2019-03-01 11:04:57','2019-03-02 09:31:47','0.0.0.0',0,NULL,NULL),(5,'123','0985251f3d13076beec69aca778ea31f','2019-01-26 16:31:03','2019-01-27 09:29:56','127.0.0.1',1,NULL,NULL);
/*!40000 ALTER TABLE `ddsc_admin` ENABLE KEYS */;

#
# Structure for table "ddsc_apply"
#

DROP TABLE IF EXISTS `ddsc_apply`;
CREATE TABLE `ddsc_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '申请人id',
  `p_id` int(11) NOT NULL DEFAULT '0' COMMENT '向谁申请的id',
  `level` int(11) DEFAULT NULL COMMENT '当前会员等级',
  `levels` int(11) DEFAULT NULL COMMENT '会员升级后的等级',
  `money` varchar(255) DEFAULT NULL COMMENT '升级所需金额',
  `time` varchar(255) DEFAULT NULL COMMENT '申请时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0待审核 1已审核 2系统驳回',
  `q_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='升级申请表';

#
# Data for table "ddsc_apply"
#

/*!40000 ALTER TABLE `ddsc_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_apply` ENABLE KEYS */;

#
# Structure for table "ddsc_budget"
#

DROP TABLE IF EXISTS `ddsc_budget`;
CREATE TABLE `ddsc_budget` (
  `bid` int(9) NOT NULL AUTO_INCREMENT,
  `create` varchar(255) NOT NULL COMMENT '记录时间',
  `money` decimal(11,2) NOT NULL COMMENT '消费金额',
  `uid` int(9) NOT NULL,
  `type` int(3) NOT NULL COMMENT '支付方式:0微信;1:支付宝:2:余额',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_budget"
#

/*!40000 ALTER TABLE `ddsc_budget` DISABLE KEYS */;
INSERT INTO `ddsc_budget` VALUES (1,'1547465599',1.00,1,2),(2,'1547513501',325.00,1,2),(3,'1547513501',260.00,2,2),(4,'1547513501',694.00,2,2),(5,'1547513501',653.00,2,2),(6,'1547513501',495.00,3,2),(7,'1547513501',654.00,3,2),(8,'1547513501',210.00,3,2),(9,'1547513501',356.00,3,2),(10,'1547536087',12.00,2,2),(11,'1547536568',59.00,2,2),(12,'1547536628',12.00,2,2),(13,'1547537017',12.00,2,2),(14,'1547716640',6.00,2,2),(15,'1547792825',99.00,18,2),(16,'1547793709',12.00,18,2),(17,'1547793786',118.00,18,2),(18,'1547793854',9.60,18,2),(19,'1547793976',1087.20,18,2),(20,'1547859945',12.00,1,2),(21,'1547860703',6139.00,1,2),(22,'1547860721',6139.00,1,2),(23,'1547860731',6139.00,1,2),(24,'1547860945',6139.00,1,2),(25,'1547860954',6139.00,1,2),(26,'1547861057',6139.00,1,2),(27,'1547861077',6139.00,1,2),(28,'1547861091',6139.00,1,2),(29,'1547861118',6139.00,1,2),(30,'1547861147',6139.00,1,2),(31,'1547861158',6139.00,1,2),(32,'1547861178',6139.00,1,2),(33,'1547861234',6139.00,1,2),(34,'1547861273',6139.00,1,2),(35,'1547861294',6139.00,1,2),(36,'1547861304',6139.00,1,2),(37,'1547861835',460.00,1,2),(38,'1547863101',99.00,14,2),(39,'1547892982',230.00,1,2),(40,'1547892989',6.00,1,2),(41,'1547892995',12.00,1,2),(42,'1547893000',59.00,1,2),(43,'1547893134',69.00,1,2),(44,'1547893145',230.00,1,2),(45,'1548037747',12.00,1,2),(46,'1548040844',6.00,1,2),(47,'1548040852',59.00,1,2),(48,'1548227614',24.00,1,2),(49,'1548831585',690.03,1,2),(50,'1548831683',1359.00,1,2),(51,'1548831712',6.00,1,2),(52,'1548831879',1359.00,1,2);
/*!40000 ALTER TABLE `ddsc_budget` ENABLE KEYS */;

#
# Structure for table "ddsc_cart"
#

DROP TABLE IF EXISTS `ddsc_cart`;
CREATE TABLE `ddsc_cart` (
  `cid` int(9) NOT NULL AUTO_INCREMENT,
  `uid` int(9) NOT NULL COMMENT '用户id',
  `gid` int(9) NOT NULL COMMENT '商品ID',
  `num` int(8) NOT NULL COMMENT '购买数量',
  `create` varchar(255) NOT NULL COMMENT '添加时间',
  `sid` int(9) DEFAULT NULL COMMENT '规格ID',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_cart"
#

/*!40000 ALTER TABLE `ddsc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_cart` ENABLE KEYS */;

#
# Structure for table "ddsc_carte"
#

DROP TABLE IF EXISTS `ddsc_carte`;
CREATE TABLE `ddsc_carte` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `c_modul` varchar(255) DEFAULT NULL COMMENT '控制器',
  `c_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `pid` int(11) DEFAULT NULL COMMENT '上级id',
  `c_sort` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_carte"
#

/*!40000 ALTER TABLE `ddsc_carte` DISABLE KEYS */;
INSERT INTO `ddsc_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(2,'基本信息','setings','',1,50),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,2),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,3),(14,'后台模板','lister','',13,50),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(19,'会员管理','Member','fa-address-book-o',0,5),(20,'会员列表','lister','',19,50),(34,'日志管理','Log','fa-book',0,12),(36,'后台登录日志','index','',34,50),(39,'订单管理','Dd','fa-paper-plane',0,6),(40,'待付款订单','dai_dd','',39,50),(41,'待发货订单','fa_dd','',39,50),(42,'待收货订单','shou_dd','',39,50),(43,'待评价订单','ping_dd','',39,50),(44,'已完成订单','wan_dd','',39,50),(45,'商品管理','Goods','fa-map-signs',0,7),(46,'商品列表','lister','',45,50),(47,'商品分类','type','',45,50),(58,'品牌列表','brand','',45,50),(61,'评论管理','Comment','fa-desktop',0,50),(62,'评论列表','lister','fa-desktop',61,50),(65,'退货列表','withdraw','fa-picture-o',39,50),(66,'底部导航','Footer','fa-picture-o',0,50),(67,'导航列表','lister','fa-desktop',66,50);
/*!40000 ALTER TABLE `ddsc_carte` ENABLE KEYS */;

#
# Structure for table "ddsc_comment"
#

DROP TABLE IF EXISTS `ddsc_comment`;
CREATE TABLE `ddsc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `create` varchar(255) NOT NULL COMMENT '创建时间',
  `uid` int(9) NOT NULL,
  `gid` int(9) NOT NULL,
  `u_name` varchar(255) DEFAULT NULL COMMENT '评论人',
  `type` int(3) NOT NULL DEFAULT '0' COMMENT '评论状态:0未通过:1已通过',
  `level` int(3) NOT NULL DEFAULT '5' COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_comment"
#

/*!40000 ALTER TABLE `ddsc_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_comment` ENABLE KEYS */;

#
# Structure for table "ddsc_coupon"
#

DROP TABLE IF EXISTS `ddsc_coupon`;
CREATE TABLE `ddsc_coupon` (
  `cid` int(9) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `c_money` int(9) NOT NULL COMMENT '优惠券金额',
  `c_limit` int(3) NOT NULL DEFAULT '0' COMMENT '优惠券使用限制:0:无限制;1:有限制',
  `c_arrive` int(9) DEFAULT NULL COMMENT '消费金额达到此限制可用此优惠券',
  `c_reduc` int(9) DEFAULT NULL COMMENT '消费时,可用此优惠券抵扣固定金额',
  `c_type` int(3) DEFAULT NULL COMMENT '优惠券类型:0:满减;1:抵扣',
  `c_create` varchar(255) NOT NULL COMMENT '创建时间',
  `c_over` varchar(255) NOT NULL COMMENT '过期时间',
  `c_num` int(9) NOT NULL DEFAULT '0' COMMENT '优惠券数量',
  `c_jmoney` int(9) DEFAULT NULL COMMENT '达到使用标准使用此金额抵扣',
  `c_sort` int(11) DEFAULT NULL COMMENT '排序',
  `c_start` varchar(255) NOT NULL COMMENT '优惠券可用起始时间',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_coupon"
#

/*!40000 ALTER TABLE `ddsc_coupon` DISABLE KEYS */;
INSERT INTO `ddsc_coupon` VALUES (4,411,0,211,NULL,0,'1547117128','1547827200',32,11,50,'1547654400'),(5,3123,0,312,NULL,0,'1547117512','1547740800',32,3,50,'1547136000'),(6,3123,0,312,NULL,0,'1547117242','1548432000',333,324,50,'1548432000'),(7,34534,0,NULL,2423,1,'1547117103','1547827200',34,NULL,NULL,'1547827200'),(8,343,0,NULL,234,1,'1547117094','1548345600',243,NULL,NULL,'1548172800'),(9,2342,0,243,NULL,0,'1547117079','1548432000',23,23,NULL,'1548345600'),(10,4234,0,NULL,234,1,'1547117254','1548864000',23,NULL,NULL,'1548345600'),(11,231,0,12,NULL,0,'1547117263','1548259200',23,32,NULL,'1547654400'),(12,2323,0,2323,NULL,0,'1547117273','1548345600',23,123,NULL,'1547568000'),(13,4234,0,21,NULL,0,'1547116449','1548172800',43,21,NULL,'2019-01-18');
/*!40000 ALTER TABLE `ddsc_coupon` ENABLE KEYS */;

#
# Structure for table "ddsc_email"
#

DROP TABLE IF EXISTS `ddsc_email`;
CREATE TABLE `ddsc_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '发送人id',
  `pid` int(11) DEFAULT NULL COMMENT '收件人id',
  `p_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  `look` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 未读 1已读',
  `content` text,
  `u_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '发件人是否删除 0否 1是',
  `p_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收件人是否删除 0否 1是',
  `u_name` varchar(255) DEFAULT NULL COMMENT '发送人姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站内信';

#
# Data for table "ddsc_email"
#

/*!40000 ALTER TABLE `ddsc_email` DISABLE KEYS */;
INSERT INTO `ddsc_email` VALUES (2,36,35,'18224526679','测试','1551066031',1,'测试测试测试',0,0,'六月');
/*!40000 ALTER TABLE `ddsc_email` ENABLE KEYS */;

#
# Structure for table "ddsc_footer"
#

DROP TABLE IF EXISTS `ddsc_footer`;
CREATE TABLE `ddsc_footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题名称',
  `pid` int(11) NOT NULL DEFAULT '0',
  `f_content` mediumtext COMMENT '内容',
  `f_image` varchar(255) DEFAULT NULL,
  `f_status` int(3) NOT NULL DEFAULT '0' COMMENT '是否显示:0:否;1:是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_footer"
#

/*!40000 ALTER TABLE `ddsc_footer` DISABLE KEYS */;
INSERT INTO `ddsc_footer` VALUES (1,'关于我',0,'<p>哈哈哈哈哈</p>','/uploads/20190201/4217724a3a66ca065a98e65d69f6d75e.jpg',1),(3,'常见问题',0,'<p>测试测试测试</p>','/uploads/20190211/eba0696b1b3615a0b34cc39993d2f9ce.jpg',1),(4,'配送说明',0,'','/uploads/20190122/7b675ae3d501e928b21c91c3693606df.jpg',1),(5,'公司介绍',0,'<p>我们不生产水,我们只是为了钱</p>','/uploads/20190122/30c6e849bf582928e396d1a43ad5c314.jpg',1),(7,'售后服务',0,'<p>和规范的华国锋</p>','',1),(10,'商家入驻',0,'','/uploads/20190122/261076a77de547b7fe67ed46c44540f9.jpg',1),(11,'入驻标准',10,'<p>必须花钱</p>','',1),(12,'公司介绍',1,'<p>我们不生产水,我们只是为了钱</p>','',1),(13,'关于你们',0,'<p>阿萨德发士大夫</p>','/uploads/20190201/8d7b230980f561dbe24853fc7872bd08.jpg',1),(14,'第一个问题',3,'<p>测试测试测试</p>','/uploads/20190214/4fe05e10996ae6867dfaa4572159076f.jpg',1),(15,'第一个说明',4,'<p>我是第一个说明</p>',NULL,1),(16,'员工风采',0,'<p>我们员工都超级</p>','/uploads/20190213/b74efe6aa0fbca66458433ae0172e977.jpg',1),(17,'退货说明',0,'<p>操作简单移动</p>','/uploads/20190213/f5c66571db6f60ed3d51204aca747ee2.jpg',1),(18,'第二条信息',1,'','/uploads/20190213/637644ad347e1613216a45bad5b1c203.jpg',1),(21,'发票说明',3,'<p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">1</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）如何获得发票</span><span style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">?</span></span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;background: rgb(255, 255, 255);text-indent: 24px;vertical-align: baseline\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: rgb(247, 247, 247);padding: 0px\">自营商品，请在提交订单时备注发票抬头，发票将随商品一起送到。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">   说明：</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px;line-height: 1.5\">由平台提供的发票为酒类专用发票，此发票可用作单位报销使用；配送费金额包含在订单发票金额中。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px;line-height: 1.5\"><span style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px;color: rgb(229, 51, 51)\">三方商家商品，发票开具和邮寄事项请联系商家确认。</span></span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span></strong><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\">2</strong></span><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）是否提供增值税发票？</span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  本平台可以开具增值税发票。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  普通发票请提供发票抬头（个人或公司名称</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">+</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">税号）；</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  增值税发票专用发票需提供：</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"> 公司全称、税号（若属于三证合一请提供统一社会信用代码）、地址、电话、开户银行及账号、营执照的复印件或者电子稿件（用于核实是否具有酒类行业的经营范围） ，以上资料可以全部提供电子文档。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span></strong><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\">3</strong></span><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）开发票的注意事项：</span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\">  <span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">1</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">、发票内容及金额只能根据实际订单开具；</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\">  <span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">2</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">、发票抬头内容不能为空，您可写个人或公司名称；</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\">  <span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">3</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">、使用优惠券、使用</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">1919</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">储值卡，</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">1919</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">电子钱包等预付卡支付的，已经在销售卡（券）的时候开过发票，无法再次开票。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  （</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">4</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）收到商品为何没有发票？</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  建议您先在包裹里仔细查找，若发现无发票，请您联系客服为您查询处理发票事宜。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span></strong><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\">5</strong></span><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）怎么换发票？</span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  您在收到发票后如果发现因商家原因所致票据抬头、内容或金额错误，请在收货日起</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">7</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">天内内联系客服人员为您安排办理换发票事宜，往返快递费用由责任方承担。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span></strong><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\">6</strong></span><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）普通卷式发票如何更换为增值税普通发票？</span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">   卷式发票与增值税普通发票具有同等的法律效力，无需更换。特殊情况确需更换的，且您的发票还在可以换开的周期以内（发票开具的</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">15</span><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">天之内可以进行修改），请联系客服为您专门处理，祝您购物愉快。</span></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">（</span></strong><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\"><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\">7</strong></span><strong style=\"border: 0px;outline: 0px;vertical-align: baseline;background: transparent;padding: 0px\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">）需要更换发票时运费由谁承担？</span></strong></p><p style=\"font-size: 12px;margin-left: 30px;line-height: 40px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, tahoma, arial, &#39;Hiragino Sans GB&#39;, &#39;\\\\5b8b体&#39;, sans-serif;white-space: normal;vertical-align: baseline;background: rgb(247, 247, 247)\"><span style=\"border: 0px;outline: 0px;font-size: 16px;vertical-align: baseline;background: transparent;padding: 0px\">  收到发票后，如因平台原因，票据抬头、内容或金额错误，请您与客服联系，由客服人员为您办理换发票事宜，往返快递费用由商家承担；如个人原因，往返快递费用个人承担。</span></p><p><br/></p>','/uploads/20190226/a551b95cac3b36fcf3d4757ddb1fb6b8.jpg',1);
/*!40000 ALTER TABLE `ddsc_footer` ENABLE KEYS */;

#
# Structure for table "ddsc_gold"
#

DROP TABLE IF EXISTS `ddsc_gold`;
CREATE TABLE `ddsc_gold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `money` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='注册币转赠记录';

#
# Data for table "ddsc_gold"
#


#
# Structure for table "ddsc_goods"
#

DROP TABLE IF EXISTS `ddsc_goods`;
CREATE TABLE `ddsc_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `g_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `g_xprice` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '商品现价',
  `g_sales` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `g_kc` int(11) DEFAULT NULL COMMENT '库存',
  `g_content` mediumtext COMMENT '商品详情',
  `g_up` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商品状态 0下架 1上架',
  `g_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '首页显示 0否 1是',
  `g_sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `g_image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `fid` int(11) DEFAULT NULL COMMENT '所属分类id',
  `bid` int(11) DEFAULT NULL COMMENT '所属品牌id',
  `spec` text COMMENT '商品规格',
  `key` varchar(255) DEFAULT NULL COMMENT '关键词',
  `advert` varchar(255) DEFAULT NULL COMMENT '广告词',
  `g_images` varchar(255) DEFAULT NULL COMMENT '首页推荐图',
  `g_addr` varchar(255) DEFAULT NULL COMMENT '发货地',
  `promotion` int(3) DEFAULT '0' COMMENT '促销:0不促销;1促销',
  `g_kill` int(3) DEFAULT '0' COMMENT '开启秒杀:0未开启;1开启',
  `g_balance` int(3) NOT NULL DEFAULT '0' COMMENT '可用积分兑换:0:关闭;1:开启',
  `g_b_price` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '兑换商品所需积分',
  `g_yprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `g_to` int(11) DEFAULT '0',
  `search` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_goods"
#

/*!40000 ALTER TABLE `ddsc_goods` DISABLE KEYS */;
INSERT INTO `ddsc_goods` VALUES (28,'个户彩妆.雷碧.1',123.00,0,12,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190220/c1ff5f2936faa3d5030363ffb78d57ec.png',2,7,NULL,'关键词','广告词','/uploads/thumb/5c6d2f48e301e0.78913309.jpg','漯河',0,0,0,0.00,321.00,0,0),(29,NULL,0.00,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0.00,0.00,0,0),(30,'雷碧',457.00,0,123123,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190220/8cbb157751437d661750360198da7fc7.png',2,7,NULL,'关键词','广告词','/uploads/thumb/5c6d3330d21535.02270178.jpg','发货地',0,0,0,0.00,654.00,0,0),(31,'彩妆',456.00,23,12,'<p>测试测试测试测试测试</p>',1,1,50,'/uploads/20190222/7fffc4cad6eb5c0fdb880513e8992cf4.jpg',2,13,NULL,'关键词','广告词','/uploads/thumb/5c6f9cf94ab472.78178229.jpg','发货地',0,0,0,0.00,654.00,0,1),(32,'个户彩妆',8.00,0,123,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190226/9d171eb4a678ad377966a8b222ecfcbf.jpg',2,13,NULL,'关键词','广告词','/uploads/thumb/5c74a242dcee94.78634769.jpg','发货地',0,0,0,0.00,11.00,0,0),(33,'营养保健',123.00,0,123,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190220/74ee81759d69f95bfea49a42515227a0.jpg',3,17,NULL,'关键词','广告词','/uploads/thumb/5c6d3510e098c0.38437325.jpg','发货地',0,0,0,0.00,312.00,0,0),(34,'视频酒茶',123.00,12,32,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190220/41803355846a6d13dbcbd8d622491c69.jpg',5,19,NULL,'关键词','广告词','/uploads/thumb/5c6d3548bd9991.90951439.jpg','发货地',0,0,0,0.00,423.00,0,1),(35,'汽车用品',789.00,21,21,'<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\">　　</p><p><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190220/148620a0092e171c2d7e58826e023bea.jpg',8,12,NULL,'关键词','超强保湿','/uploads/thumb/5c6d35e4ca9336.10398505.jpg','郑州',0,0,0,0.00,987.00,0,0),(36,'公牛插座',123.00,0,0,'<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\"><strong>【编者按】</strong>2019年2月20日，习近平总书记在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表。他强调，太空探索永无止境。我国广大科技工作者、航天工作者要为实现探月工程总目标乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　党的十八大以来，习近平总书记多次就航空航天事业的发展作出指示。今天，新时代学习工作室带您一起梳理和学习这些重要论述。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　<strong>谈航天梦想</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　<strong>1、伟大事业都始于梦想。梦想是激发活力的源泉。</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　实践告诉我们，伟大事业都始于梦想。梦想是激发活力的源泉。中华民族是勇于追梦的民族。党中央决策实施探月工程，圆的就是中华民族自强不息的飞天揽月之梦。月球探测的每一个大胆设想、每一次成功实施，都是人类认识和利用星球能力的充分展示。在建成社会主义现代化强国、实现中华民族伟大复兴的征途上，每一个行业、每一个人都要心怀梦想、奋勇拼搏，一步一个脚印，一棒接着一棒，在奋力奔跑和接续奋斗中成就梦想。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　——2019年2月20日，在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表时强调</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　<strong>2、探索浩瀚宇宙，发展航天事业，建设航天强国，是我们不懈追求的航天梦。</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　探索浩瀚宇宙，发展航天事业，建设航天强国，是我们不懈追求的航天梦。经过几代航天人的接续奋斗，我国航天事业创造了以“两弹一星”、载人航天、月球探测为代表的辉煌成就，走出了一条自力更生、自主创新的发展道路，积淀了深厚博大的航天精神。设立“中国航天日”，就是要铭记历史、传承精神，激发全民尤其是青少年崇尚科学、探索未知、敢于创新的热情，为实现中华民族伟大复兴的中国梦凝聚强大力量。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　——2016年4月24日，在首个“中国航天日”之际作出重要指示强调</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　3、航天梦是强国梦的重要组成部分。随着中国航天事业快速发展，中国人探索太空的脚步会迈得更大、更远。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; white-space: normal; background-color: rgb(238, 242, 246);\">　　——2013年6月24日，在北京航天飞行控制中心同正在天宫一号执行任务的神舟十号航天员聂海胜、张晓光、王亚平亲切通话时指出</p><p><br/></p>',1,1,50,'/uploads/20190222/d8bafb04f4d77aaaf7e6e28c41fb4d36.jpg',6,23,NULL,'关键词','广告词','/uploads/thumb/5c6f5330152128.09749390.jpg','河南',0,1,0,0.00,321.00,0,0),(37,'营养保健',123.00,0,50,'<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\"><img alt=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" src=\"/ueditor/php/upload/image/20190222/1550799778408603.jpg\" title=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" style=\"border: 0px; max-width: 580px;\"/></p><p>当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\">　　<strong>第七轮中美经贸高级别磋商在华盛顿开幕</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; white-space: normal; background-color: rgb(238, 242, 246);\">　　新华社华盛顿2月21日电(记者韩洁 朱东阳)当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。本轮高级别磋商定于21-22日在华盛顿举行，双方团队已于19日开始工作层磋商。</p><p><br/></p><p>当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p><br/></p>',0,1,50,'/uploads/20190222/bb7066d59273ee812d258aac48a857b4.jpg',3,17,NULL,'关键词','广告词','/uploads/thumb/5c6f53a7e502b1.76369225.jpg','湖北',0,1,0,0.00,321.00,0,0),(38,'汽车.品牌',123.00,11,11,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\"><img alt=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" src=\"http://lxg.dd371.com/ueditor/php/upload/image/20190222/1550799778408603.jpg\" title=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" style=\"border: 0px; max-width: 580px;\"/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　<strong>第七轮中美经贸高级别磋商在华盛顿开幕</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　新华社华盛顿2月21日电(记者韩洁 朱东阳)当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。本轮高级别磋商定于21-22日在华盛顿举行，双方团队已于19日开始工作层磋商。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p><br/></p>',0,1,50,'/uploads/20190222/57da7b104642dd58341b8147ab5f8ecf.png',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6f9e6aae16d1.88867736.jpg','发货地',0,1,0,0.00,321.00,0,1),(39,'各户彩妆',123.00,12,21,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\"><img alt=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" src=\"http://lxg.dd371.com/ueditor/php/upload/image/20190222/1550799778408603.jpg\" title=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" style=\"border: 0px; max-width: 580px;\"/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　<strong>第七轮中美经贸高级别磋商在华盛顿开幕</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　新华社华盛顿2月21日电(记者韩洁 朱东阳)当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。本轮高级别磋商定于21-22日在华盛顿举行，双方团队已于19日开始工作层磋商。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p><br/></p>',1,1,50,'/uploads/20190222/3afe1c10d51a89dc14bf15d11053cfa9.jpg',2,21,NULL,'关键词','广告词','/uploads/thumb/5c6fa9ac634905.03897142.jpg','陕西',0,1,0,0.00,321.00,0,0),(40,'美宝莲',123.00,12,32,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\"><img alt=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" src=\"http://lxg.dd371.com/ueditor/php/upload/image/20190222/1550799778408603.jpg\" title=\"当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄\" style=\"border: 0px; max-width: 580px;\"/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽(右)、财政部长姆努钦(左)，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　<strong>第七轮中美经贸高级别磋商在华盛顿开幕</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　新华社华盛顿2月21日电(记者韩洁 朱东阳)当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。本轮高级别磋商定于21-22日在华盛顿举行，双方团队已于19日开始工作层磋商。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">当地时间2月21日上午，习近平主席特使、中共中央政治局委员、国务院副总理、中美全面经济对话中方牵头人刘鹤与美国贸易代表莱特希泽、财政部长姆努钦，在美国白宫艾森豪威尔行政办公楼共同主持第七轮中美经贸高级别磋商开幕式。新华社记者 刘杰 摄</p><p><br/></p>',1,1,50,'/uploads/20190222/2cc7a2d4ade34a4c011aede07d5ce194.png',2,22,NULL,'关键词','广告词','/uploads/thumb/5c6faa0a44bd01.31083611.jpg','发货地',1,0,0,0.00,321.00,0,0),(41,'汽车用品',123.00,0,32,'',0,1,50,'/uploads/20190222/a44f4253dc88aa428168101fde23f710.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc4a558c477.00601971.jpg','发货地',1,0,0,0.00,321.00,0,0),(42,'农副产品',123.00,0,21,'',1,1,50,'/uploads/20190222/ee9f998550fb95c28ee596d3ce78441e.jpg',9,11,NULL,'关键词','广告词','/uploads/thumb/5c6fc4d40f2e29.99718988.jpg','发货地',1,0,0,0.00,321.00,0,0),(43,'公牛',123.00,0,21,'',1,1,50,'/uploads/20190222/9781abc321ced455d643cf99e83bba9d.jpg',6,23,NULL,'关键词','广告','/uploads/thumb/5c6fc5269e7c23.56126985.jpg','发货地',1,0,0,0.00,321.00,0,0),(44,'汽车用品',123.00,0,21,'',1,1,50,'/uploads/20190222/0cef23c9d3d844197a663a7009a62ddd.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc735468642.04671176.jpg','湖北',0,0,0,0.00,321.00,0,0),(45,'汽车用品',456.00,0,21,'',1,1,50,'/uploads/20190222/2fb31a6d8b9f84baf4521fa159186afe.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc7591a3c19.55758290.jpg','发货地',0,0,0,0.00,654.00,0,0),(46,'品牌名称',789.00,0,32,'',1,1,50,'/uploads/20190222/f8fa0426a16324eb5be5317fc58997e0.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc7973ee5d3.36365227.jpg','山西',0,0,0,0.00,987.00,0,0),(47,'品牌名称',456.00,0,63,'<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">中共中央总书记、国家主席、中央军委主席习近平20日下午在北京人民大会堂会见探月工程嫦娥四号任务参研参试人员代表并发表重要讲话。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“你们在攀登科技高峰、探索宇宙奥秘上建立的卓越功勋，对激励全党全军全国各族人民奋斗新时代、开启新征程具有重要示范意义。祖国和人民感谢你们！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　习近平说：“太空探索永无止境。希望广大科技工作者、航天工作者为实现探月工程总目标，乘胜前进，为推动世界航天事业发展继续努力，为人类和平利用太空、推动构建人类命运共同体贡献更多中国智慧、中国方案、中国力量！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; line-height: 30px; font-family: 微软雅黑; background-color: rgb(238, 242, 246);\">　　2018年12月8日，嫦娥四号探测器在西昌卫星发射中心由长征三号乙运载火箭成功发射。嫦娥四号任务是我国探月工程四期的首次任务，在人类历史上首次实现了航天器在月球背面软着陆和巡视勘察，首次实现了月球背面同地球的中继通信， 是我国由航天大国向航天强国迈进的重要标志之一</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见指出，畅通都市圈公路网。增加城市间公路通道，密切城际公路联系，加快构建高速公路、国省干线、县乡公路等都市圈多层次公路网。鼓励地方对高频次通行车辆实施高速公路收费优惠政策，加快推广ETC应用，推动取消高速公路省界收费站，提升都市圈内高速公路通勤效率。实施“断头路”畅通工程和“瓶颈路”拓宽工程，全面摸排都市圈内各类“断头路”和“瓶颈路”，加快打通“断头路”，提升都市圈路网联通程度，推进“瓶颈路”改造扩容，畅通交界地区公路联系，全面取缔跨行政区道路非法设置限高、限宽等路障设施。打造一体化公路客运网络，完善充电桩、加气站、公交站场等布局，支持毗邻城市(镇)开行城际公交，加快推动近郊班线公交化。优化交界地区公交线网，促进与市域公交网络快速接驳。加快推进都市圈内城市间公交一卡互通、票制资费标准一致，健全运营补偿和结算机制，推动信息共享和监管协同。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见提出，统筹市政和信息网络建设。强化都市圈内市政基础设施协调布局，统筹垃圾处理厂、污水及污泥处理处置设施、变电站、危险品仓库等市政基础设施规划建设。推动供水、供电、供气、供热、排水等各类市政管网合理衔接，鼓励兼并重组、规模化市场化运营。完善都市圈信息网络一体化布局，推进第五代移动通信和新一代信息基础设施布局。探索取消都市圈内固定电话长途费，推动都市圈内通信业务异地办理和资费统一，持续推进网络提速降费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　</p><p style=\"white-space: normal;\"><img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg\" class=\"op-img-others c-img c-img6\" style=\"height: 82px; width: auto;\"/><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">意见称，加快人力资源市场一体化。放开放宽除个别超大城市外的城市落户限制，在具备条件的都市圈率先实现户籍准入年限同城化累积互认，加快消除城乡区域间户籍壁垒，统筹推进本地人口和外来人口市民化，促进人口有序流动、合理分布和社会融合。推动人力资源信息共享、公共就业服务平台共建。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　同时，意见表示，促进优质公共服务资源共享。鼓励都市圈内开展多层次多模式合作办学办医，支持有条件的中小学和三级医院推进集团化办学办医，开展远程教学医疗和教师、医护人员异地交流，支持中心城市三级医院异地设置分支机构。在都市圈内率先实现与产业链相配套的中高职学校紧缺专业贯通招生。推动病历跨地区、跨机构互通共享，推动医学检验检查结果跨地区、跨机构互认。推动公共服务从按行政等级配置向按常住人口规模配置转变。允许镇区人口10万以上的特大镇按同等城市标准配置教育医疗资源，鼓励有条件的小城镇布局三级医院，降低与大中城市公共服务落差。增加健康、养老、家政等服务多元化供给，鼓励都市圈城市联建共建养老机构，加快城市设施适老化和无障碍改造。推动博物馆、剧院、体育场馆等共建共享。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 5px 10px; color: rgb(51, 51, 51); letter-spacing: 1px; font-family: 微软雅黑; font-size: 15px; background-color: rgb(238, 242, 246);\">　　意见还指出，加快社会保障接轨衔接。建设涵盖各类社会保障信息的统一平台，加强都市圈异地居住退休人员养老保险信息交换，推广通过公安信息比对进行社会保险待遇资格认证模式，加快实现养老补贴跟着老人走。扩大异地就医直接结算联网定点医疗机构数量。鼓励有条件的中心城市与毗邻城市开展基本医疗保险异地门诊即时结算合作。加快推动都市圈医保目录和报销政策统筹衔接。推动工伤认定政策统一、结果互认。推动公共租赁住房保障范围常住人口全覆盖，提高住房公积金统筹层次，建立住房公积金异地信息交换和核查机制，推行住房公积金转移接续和异地贷款。</p><p><br/></p>',1,1,50,'/uploads/20190222/2ac7b2599a456daee1726c2f5a80631f.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc7bf1ea692.32793846.jpg','发货地',0,0,0,0.00,654.00,0,0),(48,'品牌名称',369.00,0,21,'',1,1,50,'/uploads/20190222/e81c46835c55ef04fbe167101965e3c7.jpg',8,12,NULL,'关键词','广告词','/uploads/thumb/5c6fc7f520bb61.90939529.jpg','发货地',0,0,0,0.00,963.00,0,0),(49,'食品烟酒',123.00,0,12,'',1,1,50,'/uploads/20190222/281bd6dcc6a69c6a1ec12c5b1fd5cddb.jpg',5,19,NULL,'关键词','广告词','/uploads/thumb/5c6fc941232324.26662081.jpg','发货地',0,0,0,0.00,321.00,1,0);
/*!40000 ALTER TABLE `ddsc_goods` ENABLE KEYS */;

#
# Structure for table "ddsc_goods_brand"
#

DROP TABLE IF EXISTS `ddsc_goods_brand`;
CREATE TABLE `ddsc_goods_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `bad` varchar(255) DEFAULT NULL COMMENT '品牌广告词',
  `bimage` varchar(255) DEFAULT NULL COMMENT '品牌图标',
  `bsort` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  `bstatus` tinyint(3) NOT NULL DEFAULT '0' COMMENT '推荐状态',
  `bthumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `t_id` int(9) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='品牌列表';

#
# Data for table "ddsc_goods_brand"
#

/*!40000 ALTER TABLE `ddsc_goods_brand` DISABLE KEYS */;
INSERT INTO `ddsc_goods_brand` VALUES (7,'韩后','响彻','/uploads/20190222/0e0bf8686a70e124cf3a88a2faf93b4f.jpg',11,1,'/public/uploads/thumb/5c2f3e3579b0b6.51144678.jpg',2),(11,'品牌名称1','大牌精选1','/uploads/20190118/cde2a0f0df55bfacb2e575273888055f.jpg',52,0,'/public/uploads/thumb/5c2deac94482c5.16419419.jpg',9),(12,'大品牌','大牌精选','/uploads/20190222/16e39d8be46fbe69505575336fbf3ee4.jpg',1,1,'/public/uploads/thumb/5c3ea036a64002.90599617.jpg',8),(13,'佰草集','广告','/uploads/20190222/97b27dbfa100248620e7d038d2ae5dc7.jpg',33,1,'/public/uploads/thumb/5c2f3efc5e7039.83544239.jpg',2),(17,'三只小猪','烤炉猪','/uploads/20190121/a24fd96dd7f94858a9a31501cd9a3a32.jpg',50,0,NULL,3),(19,'测试','大牌精选2','/uploads/20190130/99855d3bb5cc209371a001100d04be37.jpg',50,0,NULL,5),(21,'面包机','很好','/uploads/20190222/45c88169d782591488fda707189f77ac.jpg',50,1,NULL,2),(22,'美宝莲','广告','/uploads/20190222/0fe4b335174cb6173efa75fabba04e89.jpg',50,1,NULL,2),(23,'公牛','防水插座','/uploads/20190222/9ef7145165d2f00abf7e51898a5e9ccd.jpg',50,1,NULL,6),(24,'收割机','超大功率','/uploads/20190226/9a3f8bd3a3c1c39ead46a9b1733d8f9e.jpg',50,1,NULL,9),(25,'大品牌','广告','',50,1,NULL,2),(26,'大品牌','广告','',50,1,NULL,2);
/*!40000 ALTER TABLE `ddsc_goods_brand` ENABLE KEYS */;

#
# Structure for table "ddsc_goods_img"
#

DROP TABLE IF EXISTS `ddsc_goods_img`;
CREATE TABLE `ddsc_goods_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `g_id` int(11) DEFAULT NULL COMMENT '商品id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `i_status` tinyint(3) NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品多图';

#
# Data for table "ddsc_goods_img"
#

/*!40000 ALTER TABLE `ddsc_goods_img` DISABLE KEYS */;
INSERT INTO `ddsc_goods_img` VALUES (16,'/uploads/5c6f98a7e3eb42.07949995.jpg',37,NULL,1,'/uploads/thumb/5c6f98a7e32028.46881958.jpg'),(17,'/uploads/5c6f98af3f7232.32046304.jpg',37,NULL,1,'/uploads/thumb/5c6f98af3e39d9.97661810.jpg'),(18,'/uploads/5c6f98c1ed6515.39926222.jpg',32,NULL,1,'/uploads/thumb/5c6f98c1ebf947.59288325.jpg'),(19,'/uploads/5c6f98caa6c645.43581610.jpg',32,NULL,1,'/uploads/thumb/5c6f98caa57d56.53161763.jpg'),(20,'/uploads/5c6fac3b644325.13901161.jpg',35,NULL,1,'/uploads/thumb/5c6fac3b62d8c9.85709541.jpg'),(21,'/uploads/5c6fac41f01a74.52033097.jpg',35,NULL,1,'/uploads/thumb/5c6fac41eece17.03469308.jpg'),(22,'/uploads/5c6fac5dec5536.72151273.jpg',40,NULL,1,'/uploads/thumb/5c6fac5deae954.02407312.jpg'),(23,'/uploads/5c6fac636ba613.94036838.jpg',40,NULL,1,'/uploads/thumb/5c6fac6369bcc1.75546304.jpg'),(24,'/uploads/5c6fac6fa61b18.48956594.jpg',39,NULL,1,'/uploads/thumb/5c6fac6fa4cf17.41870176.jpg'),(25,'/uploads/5c6fac74ceeb97.69028232.jpg',39,NULL,1,'/uploads/thumb/5c6fac74cce495.38697524.jpg'),(26,'/uploads/5c6fac7e4ce058.56989847.jpg',38,NULL,1,'/uploads/thumb/5c6fac7e4baa07.53698374.jpg'),(27,'/uploads/5c6fac83b6b1e7.99273003.jpg',38,NULL,1,'/uploads/thumb/5c6fac83b5dbd0.30959601.jpg'),(28,'/uploads/5c6fac9ddba745.54969498.jpg',36,NULL,1,'/uploads/thumb/5c6fac9dda6094.26049883.jpg'),(29,'/uploads/5c6faca39cb271.42386515.jpg',36,NULL,1,'/uploads/thumb/5c6faca39b4213.69832883.jpg'),(30,'/uploads/5c6facb29f0d62.72968424.jpg',34,NULL,1,'/uploads/thumb/5c6facb29d1480.71360516.jpg'),(31,'/uploads/5c6facc3037266.21596645.jpg',34,NULL,1,'/uploads/thumb/5c6facc2f27051.32547249.jpg'),(32,'/uploads/5c6facce5926b1.86009157.jpg',33,NULL,1,'/uploads/thumb/5c6facce57e049.26193519.jpg'),(33,'/uploads/5c6facd9562b10.16425541.jpg',33,NULL,1,'/uploads/thumb/5c6facd952a8b1.36377934.jpg'),(34,'/uploads/5c6facef0d1dd2.76457794.jpg',31,NULL,1,'/uploads/thumb/5c6facef05b579.64188536.jpg'),(35,'/uploads/5c6facfae21034.40183073.jpg',31,NULL,1,'/uploads/thumb/5c6facfae12316.55074614.jpg'),(36,'/uploads/5c6fad0806bdd1.76240187.jpg',30,NULL,1,'/uploads/thumb/5c6fad08052463.78186578.jpg'),(37,'/uploads/5c6fad0f2b39e4.09591922.jpg',30,NULL,1,'/uploads/thumb/5c6fad0f2a4fe0.23007997.jpg'),(38,'/uploads/5c6fad1c2acb90.05221862.jpg',28,NULL,1,'/uploads/thumb/5c6fad1c2a5cc9.97272865.jpg'),(39,'/uploads/5c6fad23745528.05180186.jpg',28,NULL,1,'/uploads/thumb/5c6fad23733000.23764877.jpg');
/*!40000 ALTER TABLE `ddsc_goods_img` ENABLE KEYS */;

#
# Structure for table "ddsc_goods_spec"
#

DROP TABLE IF EXISTS `ddsc_goods_spec`;
CREATE TABLE `ddsc_goods_spec` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) DEFAULT NULL COMMENT '商品id',
  `s_name` varchar(255) DEFAULT NULL COMMENT '规格名称',
  `s_xprice` float(16,2) DEFAULT NULL COMMENT '价格',
  `s_sort` int(11) DEFAULT NULL COMMENT '排序',
  `s_image` varchar(255) DEFAULT NULL COMMENT '图片',
  `s_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '规格状态 0禁用 1启用',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品规格';

#
# Data for table "ddsc_goods_spec"
#

/*!40000 ALTER TABLE `ddsc_goods_spec` DISABLE KEYS */;
INSERT INTO `ddsc_goods_spec` VALUES (1,2,'规格1',100.00,NULL,'/uploads/20190103/10672d608a650a01c70aeb1d938e258e.jpg',1),(4,10,'白色',200.00,NULL,'/uploads/20190114/bc2af4d0f6c0c7cb2f1878f6f9481a5d.jpg',1),(5,10,'大的',200.00,NULL,'/uploads/20190114/601e0648303cb68e350cc81ccb46ec48.png',1),(6,7,'黑色',312.00,NULL,'/uploads/20190114/4f41884cd8b52f368999adee42b58931.png',1),(7,7,'白色',542.00,NULL,'/uploads/20190114/fab12b81129988b69d77401f43d35ef6.png',1),(8,6,'绿色',200.00,NULL,'/uploads/20190114/baf95591ce20a60e7a6a348e910d82a1.png',1),(9,6,'紫色',512.00,NULL,'/uploads/20190114/27070b27de00de0b1abb5c3b34bd3d9e.png',1),(10,13,'中号',122.00,NULL,'/uploads/20190114/5103df70488b4d67369a4f8d7e4eb9c4.jpg',1),(11,8,'打死打',12312.00,NULL,'/uploads/20190114/a1f7f5864b69ff72689a9c9c2b36838f.png',1),(12,8,'就回房间',654.00,NULL,'/uploads/20190114/5a418bca61246cfba50473373d503edd.png',1),(13,9,'打死打',432.00,NULL,'/uploads/20190114/68b946de029b9e2640cc903b56778552.png',1),(14,6,'紫色',350.00,NULL,'/uploads/20190114/f32cd94d2544781659627113c7d8b604.png',1);
/*!40000 ALTER TABLE `ddsc_goods_spec` ENABLE KEYS */;

#
# Structure for table "ddsc_lb"
#

DROP TABLE IF EXISTS `ddsc_lb`;
CREATE TABLE `ddsc_lb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL COMMENT '父类id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态0关闭 1开启',
  `url` varchar(255) DEFAULT NULL,
  `desc` mediumtext COMMENT '简介',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告列表';

#
# Data for table "ddsc_lb"
#

/*!40000 ALTER TABLE `ddsc_lb` DISABLE KEYS */;
INSERT INTO `ddsc_lb` VALUES (1,1,'banner',50,1,'','','/uploads/20190213/13d9ab918dc9ff15c7248f8e33f95d9a.jpg','/uploads/thumb/5c6378761ef7d8.68353952.jpg'),(2,1,'banner',50,1,'','','/uploads/20190213/8171142a2d6dba860bfa66b1e8391904.jpg','/uploads/thumb/5c63783bdbead8.21835160.jpg'),(3,2,'公告名称',50,1,'','<p>商城公告商城公告商城公告....</p>','/uploads/20190118/fc5ad94cc04cd28909b343bfea46b188.png','/uploads/thumb/5c413bc323a285.22552102.jpg'),(4,2,'公告名称2',50,1,'','<p>测试测试测试测试测试测试测试测试测试测试测试测试测试</p>','/uploads/20190118/4525fbf7b868aed72fb6fd313fc48d72.png','/uploads/thumb/5c413bb6d7e230.30972875.jpg'),(5,3,'新品图标',50,1,'','','/uploads/20190216/8c0c5b10ef7e336bae91d25e76145d4f.png','/uploads/thumb/5c67717e5836a8.89759523.jpg'),(6,4,'促销图标',50,1,'','','/uploads/20190216/e7a29a2b0a75c65389891b93bb979537.png','/uploads/thumb/5c67717484d376.21698416.jpg'),(7,5,'订单图标',50,1,'','','/uploads/20190216/c4f60da546d078af0125785bdc94c889.png','/uploads/thumb/5c67716767e654.56877820.jpg'),(8,6,'全部图标',50,1,'','','/uploads/20190216/25aed09f27b0272b1d3633e8c8180087.png','/uploads/thumb/5c67718ad13655.88054043.jpg'),(21,15,'pc首页轮播',50,1,'','','/uploads/20190214/c6f5c90f67becc4176965c14cda0cfdb.jpg','/uploads/thumb/5c652df29051e2.10973493.jpg'),(22,2,'哈哈',50,1,'','<p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">1</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）如何获得发票</span><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">?</span></span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; background: rgb(255, 255, 255); text-indent: 24px; vertical-align: baseline;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: rgb(247, 247, 247); padding: 0px;\">自营商品，请在提交订单时备注发票抬头，发票将随商品一起送到。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">   说明：</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px; line-height: 1.5;\">由平台提供的发票为酒类专用发票，此发票可用作单位报销使用；配送费金额包含在订单发票金额中。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px; line-height: 1.5;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px; color: rgb(229, 51, 51);\">三方商家商品，发票开具和邮寄事项请联系商家确认。</span></span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span></strong><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\">2</strong></span><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）是否提供增值税发票？</span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  本平台可以开具增值税发票。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  普通发票请提供发票抬头（个人或公司名称</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">+</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">税号）；</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  增值税发票专用发票需提供：</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"> 公司全称、税号（若属于三证合一请提供统一社会信用代码）、地址、电话、开户银行及账号、营执照的复印件或者电子稿件（用于核实是否具有酒类行业的经营范围） ，以上资料可以全部提供电子文档。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span></strong><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\">3</strong></span><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）开发票的注意事项：</span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\">  <span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">1</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">、发票内容及金额只能根据实际订单开具；</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\">  <span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">2</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">、发票抬头内容不能为空，您可写个人或公司名称；</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\">  <span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">3</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">、使用优惠券、使用</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">1919</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">储值卡，</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">1919</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">电子钱包等预付卡支付的，已经在销售卡（券）的时候开过发票，无法再次开票。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  （</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">4</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）收到商品为何没有发票？</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  建议您先在包裹里仔细查找，若发现无发票，请您联系客服为您查询处理发票事宜。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span></strong><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\">5</strong></span><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）怎么换发票？</span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  您在收到发票后如果发现因商家原因所致票据抬头、内容或金额错误，请在收货日起</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">7</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">天内内联系客服人员为您安排办理换发票事宜，往返快递费用由责任方承担。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span></strong><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\">6</strong></span><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）普通卷式发票如何更换为增值税普通发票？</span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">   卷式发票与增值税普通发票具有同等的法律效力，无需更换。特殊情况确需更换的，且您的发票还在可以换开的周期以内（发票开具的</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">15</span><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">天之内可以进行修改），请联系客服为您专门处理，祝您购物愉快。</span></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">（</span></strong><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\">7</strong></span><strong style=\"border: 0px; outline: 0px; vertical-align: baseline; background: transparent; padding: 0px;\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">）需要更换发票时运费由谁承担？</span></strong></p><p style=\"margin-left: 30px; white-space: normal; font-size: 12px; line-height: 40px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, tahoma, arial, &quot;Hiragino Sans GB&quot;, &quot;\\\\5b8b体&quot;, sans-serif; vertical-align: baseline; background: rgb(247, 247, 247);\"><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\">  收到发票后，如因平台原因，票据抬头、内容或金额错误，请您与客服联系，由客服人员为您办理换发票事宜，往返快递费用由商家承担；如个人原因，往返快递费用个人承担。</span></p><p><span style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; padding: 0px;\"><br/></span></p><p><br/></p>','/uploads/20190213/dd750d387590229399a0d39559da14a7.jpg','/uploads/thumb/5c637930c8a282.92706437.jpg'),(23,16,'秒杀专区图',50,1,'','','/uploads/20190213/c6a106a2329d059d9689d08894fa771a.jpg','/uploads/thumb/5c6395ca94afc3.03133689.jpg'),(24,17,'促销专区图',50,1,'','','/uploads/20190213/fb84e132ae95f0b66fc443865f2a5005.jpg','/uploads/thumb/5c6395dc97b021.96024277.jpg'),(25,15,'banner',50,1,'','','/uploads/20190216/4dbd9047391a426fe147de304cdb9dae.png','/uploads/thumb/5c6782d2318ae9.86332374.jpg'),(26,18,'我是友情链接1',50,1,'http://www.baidu.com','','/uploads/20190221/bf1e7181a3091964fdf482bc2a09bd90.jpg','/uploads/thumb/5c6e73724e8743.96031051.jpg'),(27,18,'我是友情链接2',50,1,'http://www.baidu.com','','/uploads/20190221/4fb24be89e673ea4f943d22cfb7ec3f4.jpg','/uploads/thumb/5c6e735e6a9ae2.16046742.jpg'),(28,18,'我是友情链接3',50,1,'http://www.baidu.com','','/uploads/20190221/64af82a4d384c0c695150970cc593e28.jpg','/uploads/thumb/5c6e7447282414.09000697.jpg'),(29,15,'轮播图',50,1,'','','/uploads/20190222/a446870a6c376b7b561ada0b9791b454.jpg','/uploads/thumb/5c6f96d170f8b8.96799095.jpg'),(30,19,'注册协议',50,1,'','<p>测试注册协议</p>',NULL,NULL);
/*!40000 ALTER TABLE `ddsc_lb` ENABLE KEYS */;

#
# Structure for table "ddsc_lb_place"
#

DROP TABLE IF EXISTS `ddsc_lb_place`;
CREATE TABLE `ddsc_lb_place` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `pl_name` varchar(255) DEFAULT NULL COMMENT '位置名称',
  PRIMARY KEY (`pl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告位';

#
# Data for table "ddsc_lb_place"
#

/*!40000 ALTER TABLE `ddsc_lb_place` DISABLE KEYS */;
INSERT INTO `ddsc_lb_place` VALUES (1,'手机端首页轮播'),(2,'商城公告'),(3,'新品图标'),(4,'促销图标'),(5,'订单图标'),(6,'全部图标'),(15,'PC端首页轮播'),(16,'秒杀专区图'),(17,'促销专区图'),(18,'友情链接'),(19,'注册协议');
/*!40000 ALTER TABLE `ddsc_lb_place` ENABLE KEYS */;

#
# Structure for table "ddsc_level"
#

DROP TABLE IF EXISTS `ddsc_level`;
CREATE TABLE `ddsc_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '级别',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `content` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='级别详情';

#
# Data for table "ddsc_level"
#

/*!40000 ALTER TABLE `ddsc_level` DISABLE KEYS */;
INSERT INTO `ddsc_level` VALUES (1,1,'200','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">2人,合格0至1级:200X2人=400元</span></p>'),(2,2,'400','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">4人,合格1至2级:400X4人=1600元</span></p>'),(3,3,'800','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">8人,合格2至3级:800X8人=6400元</span></p>'),(4,4,'2000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">16人,合格3至4级:2000X16人=32000元</span></p>'),(5,5,'4000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">32人,合格4至5级:4000X32人=128000元</span></p>'),(6,6,'8000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">64人,合格5至6级:8000X64人=512000元</span></p>');
/*!40000 ALTER TABLE `ddsc_level` ENABLE KEYS */;

#
# Structure for table "ddsc_me_coupon"
#

DROP TABLE IF EXISTS `ddsc_me_coupon`;
CREATE TABLE `ddsc_me_coupon` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `state` int(3) NOT NULL DEFAULT '0' COMMENT '优惠券状态:0:正常可使用;1:过期;2:已使用',
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_me_coupon"
#

/*!40000 ALTER TABLE `ddsc_me_coupon` DISABLE KEYS */;
INSERT INTO `ddsc_me_coupon` VALUES (1,1,0,4),(2,1,0,5),(3,1,0,6),(4,1,1,7),(5,1,1,8),(6,1,1,7),(7,1,2,10),(8,1,2,11),(9,1,2,12);
/*!40000 ALTER TABLE `ddsc_me_coupon` ENABLE KEYS */;

#
# Structure for table "ddsc_news"
#

DROP TABLE IF EXISTS `ddsc_news`;
CREATE TABLE `ddsc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `writer` varchar(255) DEFAULT NULL COMMENT '作者',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `time` char(20) DEFAULT NULL COMMENT '发表时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `content` text COMMENT '新闻内容',
  `browse` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `groom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐',
  `marray` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_news"
#

/*!40000 ALTER TABLE `ddsc_news` DISABLE KEYS */;
INSERT INTO `ddsc_news` VALUES (3,'测试测试',NULL,'九尊仙艾',50,1,'1551079323','/uploads/20190225/aa82ee4eacd1479b99ff4e498a0ca14d.jpg','<p>测试测试测试测试测试测试</p>',0,0,'测试测试测试测试测试测试v'),(5,'九尊仙艾',NULL,'市场部',50,1,'1551405000',NULL,'',0,0,'卡U型不打款人告诉你个公司今日版次');
/*!40000 ALTER TABLE `ddsc_news` ENABLE KEYS */;

#
# Structure for table "ddsc_order"
#

DROP TABLE IF EXISTS `ddsc_order`;
CREATE TABLE `ddsc_order` (
  `oid` int(9) NOT NULL AUTO_INCREMENT,
  `o_num` int(9) DEFAULT NULL COMMENT '购买数量',
  `uid` int(9) NOT NULL,
  `gid` int(9) DEFAULT NULL,
  `o_create` varchar(255) NOT NULL COMMENT '订单添加时间',
  `type` int(9) NOT NULL DEFAULT '0' COMMENT '订单状态值:0:代付款;1:代发货;2:待收货;3:已收货;4:退货:5:退货审核中:6:驳回申请:7申请通过',
  `o_code` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `comment` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品评论:0:未评价;1:已评价',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `a_id` int(9) DEFAULT NULL COMMENT '默认收货地ID',
  `f_time` varchar(255) DEFAULT NULL COMMENT '发货时间',
  `o_urge` int(3) NOT NULL DEFAULT '0' COMMENT '买家催发货;0:正常;1催发货',
  `s_id` int(3) DEFAULT NULL COMMENT '规格ID',
  `t_create` varchar(255) DEFAULT NULL COMMENT '申请退货时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '退货原因',
  `explain` varchar(255) DEFAULT NULL COMMENT '退货说明',
  `pid` int(11) DEFAULT NULL COMMENT '总订单号,用于多订单支付',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_order"
#

/*!40000 ALTER TABLE `ddsc_order` DISABLE KEYS */;
INSERT INTO `ddsc_order` VALUES (195,2,55,48,'1551233205',2,'2019022710062507653',0,738.00,NULL,'1551235203',0,NULL,NULL,NULL,NULL,NULL),(196,1,55,46,'1551233218',2,'2019022710065860885',0,789.00,NULL,'1551235562',0,NULL,NULL,NULL,NULL,NULL),(197,1,55,47,'1551235061',2,'2019022710374187045',0,456.00,NULL,'1551235175',0,NULL,NULL,NULL,NULL,NULL),(198,1,55,48,'1551248092',0,'2019022714145235800',0,369.00,50,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ddsc_order` ENABLE KEYS */;

#
# Structure for table "ddsc_seo"
#

DROP TABLE IF EXISTS `ddsc_seo`;
CREATE TABLE `ddsc_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '首页标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'seo关键词',
  `description` text COMMENT 'seo描述',
  `copy` text COMMENT '版权信息',
  `code` text COMMENT '统计代码',
  `support` varchar(255) DEFAULT NULL COMMENT '技术支持',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站优化';

#
# Data for table "ddsc_seo"
#

/*!40000 ALTER TABLE `ddsc_seo` DISABLE KEYS */;
INSERT INTO `ddsc_seo` VALUES (1,'河南九尊仙艾生物科技有限公司','这里是Seo关键词','','','','');
/*!40000 ALTER TABLE `ddsc_seo` ENABLE KEYS */;

#
# Structure for table "ddsc_sms_code"
#

DROP TABLE IF EXISTS `ddsc_sms_code`;
CREATE TABLE `ddsc_sms_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='手机验证码';

#
# Data for table "ddsc_sms_code"
#

/*!40000 ALTER TABLE `ddsc_sms_code` DISABLE KEYS */;
INSERT INTO `ddsc_sms_code` VALUES (9,'18224526679','393292','1550821162');
/*!40000 ALTER TABLE `ddsc_sms_code` ENABLE KEYS */;

#
# Structure for table "ddsc_sys"
#

DROP TABLE IF EXISTS `ddsc_sys`;
CREATE TABLE `ddsc_sys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `username` varchar(255) DEFAULT NULL COMMENT '负责人',
  `url` varchar(255) DEFAULT NULL COMMENT '网站域名',
  `qq` char(20) DEFAULT NULL COMMENT '客服QQ',
  `icp` varchar(255) DEFAULT NULL COMMENT 'icp备案号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `longs` varchar(255) DEFAULT NULL COMMENT '经度',
  `lats` varchar(255) DEFAULT NULL COMMENT '纬度',
  `addr` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `content` text COMMENT '公司简介',
  `pclogo` varchar(255) DEFAULT NULL COMMENT '电脑端logo',
  `waplogo` varchar(255) DEFAULT NULL COMMENT '手机端logo',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `wx` varchar(255) DEFAULT NULL COMMENT '微信公众号',
  `fax` varchar(255) DEFAULT NULL COMMENT '公司传真',
  `telphone` varchar(255) DEFAULT NULL COMMENT '400电话',
  `working` varchar(255) DEFAULT NULL COMMENT '工作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站基本信息';

#
# Data for table "ddsc_sys"
#

/*!40000 ALTER TABLE `ddsc_sys` DISABLE KEYS */;
INSERT INTO `ddsc_sys` VALUES (1,'河南九尊仙艾生物科技有限公司','刘现国','','1275930011','','','','','','','','<p>刘现国商城,这里是刘现国商城</p>','/uploads/20190228/ff72c30e1b8fd514ae519c305ebd1de0.png',NULL,'/uploads/20190222/4e76ae85180e5c095e929b4a6b328a51.jpg',NULL,'','400-857-800','周一至周五--9:00-18:30');
/*!40000 ALTER TABLE `ddsc_sys` ENABLE KEYS */;

#
# Structure for table "ddsc_sys_log"
#

DROP TABLE IF EXISTS `ddsc_sys_log`;
CREATE TABLE `ddsc_sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `time` datetime DEFAULT NULL COMMENT '操作时间',
  `admin` varchar(255) DEFAULT NULL COMMENT '操作账号',
  `ip` varchar(255) DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志';

#
# Data for table "ddsc_sys_log"
#

/*!40000 ALTER TABLE `ddsc_sys_log` DISABLE KEYS */;
INSERT INTO `ddsc_sys_log` VALUES (1,'后台登录','2019-01-02 15:01:50','admin','0.0.0.0'),(2,'后台登录','2019-01-03 09:06:41','admin','0.0.0.0'),(3,'后台登录','2019-01-04 09:00:17','admin','0.0.0.0'),(4,'后台登录','2019-01-04 11:28:21','admin','127.0.0.1'),(5,'后台登录','2019-01-05 09:03:30','admin','127.0.0.1'),(6,'后台登录','2019-01-05 16:28:48','admin','127.0.0.1'),(7,'后台登录','2019-01-07 08:56:17','admin','127.0.0.1'),(8,'后台登录','2019-01-08 08:55:45','admin','127.0.0.1'),(9,'后台登录','2019-01-09 08:54:20','admin','127.0.0.1'),(10,'后台登录','2019-01-10 08:37:34','admin','127.0.0.1'),(11,'后台登录','2019-01-15 09:04:27','admin','127.0.0.1'),(12,'后台登录','2019-01-16 09:16:41','admin','127.0.0.1'),(13,'后台登录','2019-01-17 08:52:00','admin','127.0.0.1'),(14,'后台登录','2019-01-18 09:03:18','admin','127.0.0.1'),(15,'后台登录','2019-01-19 09:04:59','admin','127.0.0.1'),(16,'后台登录','2019-01-21 08:26:03','admin','127.0.0.1'),(17,'后台登录','2019-01-22 08:27:08','admin','127.0.0.1'),(18,'后台登录','2019-01-23 11:22:37','admin','127.0.0.1'),(19,'后台登录','2019-01-24 08:50:45','admin','127.0.0.1'),(20,'后台登录','2019-01-26 16:31:03','admin','127.0.0.1'),(21,'后台登录','2019-01-27 09:29:56','admin','127.0.0.1'),(22,'后台登录','2019-01-27 14:47:44','123','127.0.0.1'),(23,'后台登录','2019-01-27 14:48:09','admin','127.0.0.1'),(24,'后台登录','2019-01-28 08:27:00','admin','127.0.0.1'),(25,'后台登录','2019-01-31 09:57:10','admin','127.0.0.1'),(26,'后台登录','2019-01-31 09:59:48','admin','127.0.0.1'),(27,'后台登录','2019-01-31 10:00:31','123','127.0.0.1'),(28,'后台登录','2019-01-31 10:00:59','admin','127.0.0.1'),(29,'后台登录','2019-02-01 10:34:19','admin','1.192.37.40'),(30,'后台登录','2019-02-01 10:35:19','admin','1.192.37.40'),(31,'后台登录','2019-02-01 11:12:30','admin','1.192.37.40'),(32,'后台登录','2019-02-11 13:58:31','admin','123.161.219.196'),(33,'后台登录','2019-02-11 17:03:11','admin','123.161.219.196'),(34,'后台登录','2019-02-11 18:35:10','admin','123.161.219.196'),(35,'后台登录','2019-02-12 10:07:29','admin','123.161.219.196'),(36,'后台登录','2019-02-12 17:46:26','admin','123.161.219.196'),(37,'后台登录','2019-02-12 17:56:07','admin','123.161.219.196'),(38,'后台登录','2019-02-13 08:30:27','admin','123.161.219.196'),(39,'后台登录','2019-02-13 12:58:13','admin','123.161.219.196'),(40,'后台登录','2019-02-13 16:20:59','admin','123.161.219.196'),(41,'后台登录','2019-02-14 09:18:47','admin','123.161.217.177'),(42,'后台登录','2019-02-14 14:44:33','admin','123.161.217.177'),(43,'后台登录','2019-02-14 15:30:14','admin','123.161.217.177'),(44,'后台登录','2019-02-15 08:54:22','admin','123.161.217.177'),(45,'后台登录','2019-02-15 08:56:38','admin','123.161.217.177'),(46,'后台登录','2019-02-15 11:54:30','admin','123.161.217.177'),(47,'后台登录','2019-02-16 09:45:15','admin','123.161.217.177'),(48,'后台登录','2019-02-16 10:09:34','admin','123.161.217.177'),(49,'后台登录','2019-02-18 15:35:46','admin','1.192.39.105'),(50,'后台登录','2019-02-18 19:18:56','admin','1.192.39.105'),(51,'后台登录','2019-02-19 11:36:46','admin','1.192.39.105'),(52,'后台登录','2019-02-19 15:24:05','admin','1.192.39.105'),(53,'后台登录','2019-02-19 15:25:14','admin','1.192.39.105'),(54,'后台登录','2019-02-20 14:09:21','admin','1.192.37.130'),(55,'后台登录','2019-02-20 16:58:00','admin','1.192.37.130'),(56,'后台登录','2019-02-21 09:16:45','admin','1.192.37.130'),(57,'后台登录','2019-02-21 09:19:16','admin','1.192.37.130'),(58,'后台登录','2019-02-21 15:45:23','admin','1.192.37.130'),(59,'后台登录','2019-02-21 15:52:17','admin','1.192.37.130'),(60,'后台登录','2019-02-22 09:06:47','admin','1.192.37.130'),(61,'后台登录','2019-02-22 09:08:16','admin','1.192.37.130'),(62,'后台登录','2019-02-22 09:12:57','admin','1.192.37.130'),(63,'后台登录','2019-02-22 09:16:21','admin','1.192.37.130'),(64,'后台登录','2019-02-22 11:24:30','admin','1.192.37.130'),(65,'后台登录','2019-02-22 14:17:52','admin','1.192.37.130'),(66,'后台登录','2019-02-22 14:28:04','admin','1.192.37.130'),(67,'后台登录','2019-02-22 14:29:25','admin','1.192.37.130'),(68,'后台登录','2019-02-22 15:52:19','admin','1.192.37.130'),(69,'后台登录','2019-02-22 17:21:16','admin','1.192.37.130'),(70,'后台登录','2019-02-25 09:50:58','admin','1.192.36.118'),(71,'后台登录','2019-02-25 11:13:54','admin','1.192.36.118'),(72,'后台登录','2019-02-25 11:24:48','admin','1.192.36.118'),(73,'后台登录','2019-02-25 11:35:44','admin','1.192.36.118'),(74,'后台登录','2019-02-25 15:00:26','admin','1.192.36.118'),(75,'后台登录','2019-02-25 15:37:20','admin','1.192.36.118'),(76,'后台登录','2019-02-25 16:25:35','admin','1.192.36.118'),(77,'后台登录','2019-02-26 08:56:04','admin','1.192.36.66'),(78,'后台登录','2019-02-26 09:30:21','admin','1.192.36.66'),(79,'后台登录','2019-02-26 09:54:48','admin','1.192.36.66'),(80,'后台登录','2019-02-26 10:12:43','admin','1.192.36.66'),(81,'后台登录','2019-02-26 16:42:33','admin','1.192.36.66'),(82,'后台登录','2019-02-26 17:59:27','admin','1.192.36.66'),(83,'后台登录','2019-02-27 09:11:21','admin','1.192.36.66'),(84,'后台登录','2019-02-27 09:13:26','admin','1.192.36.66'),(85,'后台登录','2019-02-27 09:32:06','admin','1.192.36.66'),(86,'后台登录','2019-02-27 10:11:25','admin','1.192.36.66'),(87,'后台登录','2019-02-27 10:18:18','admin','1.192.36.66'),(88,'后台登录','2019-02-27 10:19:47','admin','1.192.36.66'),(89,'后台登录','2019-02-27 11:42:09','admin','1.192.36.66'),(90,'后台登录','2019-02-27 11:48:54','admin','1.192.36.66'),(91,'后台登录','2019-02-28 09:17:29','admin','1.192.36.66'),(92,'后台登录','2019-02-28 09:47:32','admin','120.194.56.246'),(93,'后台登录','2019-02-28 09:59:45','admin','1.192.36.66'),(94,'后台登录','2019-02-28 10:02:35','admin','1.192.36.66'),(95,'后台登录','2019-02-28 10:02:38','admin','120.194.56.246'),(96,'后台登录','2019-02-28 10:08:35','admin','1.192.36.66'),(97,'后台登录','2019-02-28 10:10:35','admin','120.194.56.246'),(98,'后台登录','2019-02-28 10:14:18','admin','1.192.36.66'),(99,'后台登录','2019-02-28 10:14:47','admin','1.192.36.66'),(100,'后台登录','2019-02-28 10:23:15','admin','223.104.106.189'),(101,'后台登录','2019-02-28 10:45:41','admin','120.194.56.246'),(102,'后台登录','2019-02-28 10:55:02','admin','1.192.36.66'),(103,'后台登录','2019-02-28 17:08:07','admin','1.192.36.66'),(104,'后台登录','2019-02-28 17:09:31','admin','1.192.36.66'),(105,'后台登录','2019-02-28 17:10:44','admin','1.192.36.66'),(106,'后台登录','2019-02-28 17:35:11','admin','1.192.36.66'),(107,'后台登录','2019-02-28 17:39:42','admin','223.104.106.189'),(108,'后台登录','2019-02-28 17:44:48','admin','120.194.56.246'),(109,'后台登录','2019-02-28 21:23:31','admin','113.200.204.73'),(110,'后台登录','2019-03-01 09:42:59','admin','120.194.56.246'),(111,'后台登录','2019-03-01 09:55:19','admin','120.194.56.246'),(112,'后台登录','2019-03-01 10:04:40','admin','1.192.37.215'),(113,'后台登录','2019-03-01 10:36:02','admin','120.194.56.246'),(114,'后台登录','2019-03-01 11:04:57','admin','120.194.56.246'),(115,'后台登录','2019-03-02 09:31:47','admin','0.0.0.0');
/*!40000 ALTER TABLE `ddsc_sys_log` ENABLE KEYS */;

#
# Structure for table "ddsc_type"
#

DROP TABLE IF EXISTS `ddsc_type`;
CREATE TABLE `ddsc_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `type_image` varchar(255) DEFAULT NULL COMMENT '分类图标',
  `type_sort` int(11) NOT NULL DEFAULT '50',
  `type_adimage` varchar(255) DEFAULT NULL COMMENT '分类广告图',
  `type_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '推荐 0否 1是',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品分类';

#
# Data for table "ddsc_type"
#

/*!40000 ALTER TABLE `ddsc_type` DISABLE KEYS */;
INSERT INTO `ddsc_type` VALUES (2,'个户彩妆','/uploads/20190222/82f45921ab394f8d11d14b5ee98f6040.jpg',54,'/uploads/20190222/566c16bf42d6e9a2c58e3851e8d5d2f3.jpg',1),(3,'营养保健','/uploads/20190222/c2773bffe037b3a6b84dab1e83c57f44.jpg',12,'/uploads/20190215/490cea004f13b0c39edc248bf4550c13.jpg',1),(5,'食品酒茶','/uploads/20190222/495d162a5eb62aa3389c3ad10e5e9a95.jpg',50,'/uploads/20190222/3c241221955ec9d112e6bb024fc68940.jpg',1),(6,'家用电器','/uploads/20190222/d6f6faa8746835546e608fe0307ddc7c.jpg',50,'/uploads/20190222/7cb4c9b49dcb7b6d203b40c796f750cd.jpg',0),(8,'汽车用品','/uploads/20190222/25440dbd33fea4f50b51079547e5efff.jpg',50,'/uploads/20190222/f209662b1a9941f081f4bc240658dbab.jpg',1),(9,'农副产品','/uploads/20190222/bf986e284d73b30a4d31088a8c0e6000.jpg',50,'/uploads/20190222/7be9d3d3f75c3b27a2131cade402b1ae.jpg',0);
/*!40000 ALTER TABLE `ddsc_type` ENABLE KEYS */;

#
# Structure for table "ddsc_user"
#

DROP TABLE IF EXISTS `ddsc_user`;
CREATE TABLE `ddsc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `u_phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `u_pwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `u_ztime` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `coupon` int(11) NOT NULL DEFAULT '0' COMMENT '购物券',
  `u_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否激活 0否 1是',
  `u_code` varchar(255) DEFAULT NULL COMMENT '会员编号',
  `u_name` varchar(255) DEFAULT NULL COMMENT '会员名',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '级别',
  `p_name` varchar(255) DEFAULT NULL COMMENT '父类用户名',
  `pid` int(9) DEFAULT NULL COMMENT '推荐人ID',
  `u_wx` varchar(255) DEFAULT NULL COMMENT '微信号',
  `u_alipay` varchar(255) DEFAULT NULL COMMENT '支付宝号',
  `u_jtime` varchar(255) DEFAULT NULL COMMENT '激活时间',
  `u_pwds` varchar(255) DEFAULT NULL COMMENT '二级密码',
  `u_thumb` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `u_gender` int(3) NOT NULL DEFAULT '0' COMMENT '性别:0保密;1:男;2:女',
  `u_balance` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `u_integral` int(9) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `u_coupon` varchar(255) DEFAULT NULL COMMENT '用户拥有的优惠券',
  `c_balance` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券余额',
  `c_type` int(3) NOT NULL DEFAULT '0' COMMENT '领取优惠券:0:未领取;1:领取',
  `u_profit` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '用户收益',
  `all_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '用户总消费额',
  `is_dell` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否是直销账号 0否 1是',
  `gold` int(11) NOT NULL DEFAULT '0' COMMENT '注册币',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `f_name` varchar(255) DEFAULT NULL COMMENT '上级会员名',
  `realname` varchar(255) DEFAULT NULL COMMENT '直销后台用户名',
  `is_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '直销账号是否激活 0否 1是',
  `register` tinyint(3) NOT NULL DEFAULT '0' COMMENT '注册中心 0未开通 1开通',
  `money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '奖金余额',
  `addr` text COMMENT '收货地址',
  `most_money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '每天最多得奖金数量',
  `u_idcode` char(18) DEFAULT NULL COMMENT '身份证号码',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `area` varchar(255) DEFAULT NULL COMMENT '县区',
  `ach_money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '用户总业绩',
  `null_bit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '空点位 0否 1是',
  `collection` varchar(255) DEFAULT NULL COMMENT '收藏商品',
  `z_id` int(11) DEFAULT NULL,
  `u_sort` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "ddsc_user"
#

/*!40000 ALTER TABLE `ddsc_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_user` ENABLE KEYS */;

#
# Structure for table "ddsc_user_log"
#

DROP TABLE IF EXISTS `ddsc_user_log`;
CREATE TABLE `ddsc_user_log` (
  `lid` int(9) NOT NULL AUTO_INCREMENT,
  `u_id` int(9) NOT NULL,
  `p_id` int(9) NOT NULL,
  `time` varchar(255) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_user_log"
#

/*!40000 ALTER TABLE `ddsc_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_user_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_bonus_log"
#

DROP TABLE IF EXISTS `ddsc_zx_bonus_log`;
CREATE TABLE `ddsc_zx_bonus_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '类型',
  `bonus` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0减少 1增加',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户奖金日志';

#
# Data for table "ddsc_zx_bonus_log"
#

/*!40000 ALTER TABLE `ddsc_zx_bonus_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_bonus_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_carte"
#

DROP TABLE IF EXISTS `ddsc_zx_carte`;
CREATE TABLE `ddsc_zx_carte` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `c_modul` varchar(255) DEFAULT NULL COMMENT '控制器',
  `c_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `pid` int(11) DEFAULT NULL COMMENT '上级id',
  `c_sort` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_zx_carte"
#

/*!40000 ALTER TABLE `ddsc_zx_carte` DISABLE KEYS */;
INSERT INTO `ddsc_zx_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,2),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,3),(14,'后台模板','lister','',13,50),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(19,'会员管理','Member','fa-address-book-o',0,5),(20,'会员列表','lister','',19,50),(21,'联盟公告','News','fa-bullhorn',0,6),(22,'公告列表','lister','',21,50),(25,'问题解答','Problem','fa-question-circle',0,8),(26,'问题解答','lister','',25,50),(27,'站内通信','Email','fa-envelope-o',0,9),(28,'邮件列表','lister','',27,50),(32,'升级申请记录','Apply','fa-level-up',0,11),(33,'申请列表','lister','',32,50),(34,'日志管理','Log','fa-book',0,12),(36,'后台登录日志','index','',34,50),(37,'加盟等级','league','',19,50),(38,'提现管理','Ti','fa-money',0,50),(39,'提现费率','rate','',38,50),(40,'申请列表','lister','',38,50),(41,'已打款列表','index','',38,50),(42,'已驳回列表','rebut','',38,50);
/*!40000 ALTER TABLE `ddsc_zx_carte` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_coupon_log"
#

DROP TABLE IF EXISTS `ddsc_zx_coupon_log`;
CREATE TABLE `ddsc_zx_coupon_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '类型',
  `coupon` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0减少 1增加',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='重复消费日志';

#
# Data for table "ddsc_zx_coupon_log"
#

/*!40000 ALTER TABLE `ddsc_zx_coupon_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_coupon_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_gold_log"
#

DROP TABLE IF EXISTS `ddsc_zx_gold_log`;
CREATE TABLE `ddsc_zx_gold_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `gold` int(11) NOT NULL DEFAULT '0' COMMENT '注册币',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0减少 1增加',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='注册币记录';

#
# Data for table "ddsc_zx_gold_log"
#

/*!40000 ALTER TABLE `ddsc_zx_gold_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_gold_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_league"
#

DROP TABLE IF EXISTS `ddsc_zx_league`;
CREATE TABLE `ddsc_zx_league` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) DEFAULT NULL COMMENT '名称',
  `lprice` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `lstatus` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否开启 0否 1是',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='加盟等级';

#
# Data for table "ddsc_zx_league"
#

/*!40000 ALTER TABLE `ddsc_zx_league` DISABLE KEYS */;
INSERT INTO `ddsc_zx_league` VALUES (1,'消费者',1000.00,1),(2,'会员',3000.00,1),(3,'VIP',10000.00,1),(4,'社区店',20000.00,1),(5,'县级店',50000.00,1),(6,'市级店',100000.00,1);
/*!40000 ALTER TABLE `ddsc_zx_league` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_money_log"
#

DROP TABLE IF EXISTS `ddsc_zx_money_log`;
CREATE TABLE `ddsc_zx_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `tui_money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '推荐津贴',
  `coupon` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '复消',
  `tax` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '管理及个税',
  `guan_money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '管理津贴',
  `fu_money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '服务津贴',
  `money` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '实发金额',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '期数',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='每期奖金日志';

#
# Data for table "ddsc_zx_money_log"
#

/*!40000 ALTER TABLE `ddsc_zx_money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_money_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_rate"
#

DROP TABLE IF EXISTS `ddsc_zx_rate`;
CREATE TABLE `ddsc_zx_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) NOT NULL DEFAULT '0' COMMENT '费率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现费率';

#
# Data for table "ddsc_zx_rate"
#

/*!40000 ALTER TABLE `ddsc_zx_rate` DISABLE KEYS */;
INSERT INTO `ddsc_zx_rate` VALUES (1,5);
/*!40000 ALTER TABLE `ddsc_zx_rate` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_tax_log"
#

DROP TABLE IF EXISTS `ddsc_zx_tax_log`;
CREATE TABLE `ddsc_zx_tax_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '类型',
  `tax` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理税日志';

#
# Data for table "ddsc_zx_tax_log"
#

/*!40000 ALTER TABLE `ddsc_zx_tax_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_tax_log` ENABLE KEYS */;

#
# Structure for table "ddsc_zx_ti_dd"
#

DROP TABLE IF EXISTS `ddsc_zx_ti_dd`;
CREATE TABLE `ddsc_zx_ti_dd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `t_money` int(11) NOT NULL DEFAULT '0' COMMENT '提现金额',
  `t_time` varchar(255) DEFAULT NULL COMMENT '申请时间',
  `t_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现状态 0已提交 1已通过 2已驳回',
  `t_rate` int(11) NOT NULL DEFAULT '0' COMMENT '手续费',
  `t_moneys` int(11) NOT NULL DEFAULT '0' COMMENT '应打金额',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现方式 0银行卡 1支付宝 2微信',
  `card` text COMMENT '账号信息',
  `b_time` varchar(255) DEFAULT NULL COMMENT '通过/驳回时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='提现订单';

#
# Data for table "ddsc_zx_ti_dd"
#

/*!40000 ALTER TABLE `ddsc_zx_ti_dd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_zx_ti_dd` ENABLE KEYS */;
