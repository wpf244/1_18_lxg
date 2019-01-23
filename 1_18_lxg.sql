# Host: localhost  (Version: 5.5.53)
# Date: 2019-01-23 10:34:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ddsc_addr"
#

DROP TABLE IF EXISTS `ddsc_addr`;
CREATE TABLE `ddsc_addr` (
  `aid` int(9) NOT NULL AUTO_INCREMENT,
  `a_time` varchar(255) NOT NULL COMMENT '收货地址添加时间',
  `addr` varchar(255) NOT NULL COMMENT '收货地址',
  `uid` int(9) NOT NULL COMMENT '收货人id',
  `default` int(3) NOT NULL COMMENT '默认收货地址:0:备用;1:默认收货地址',
  `home` varchar(255) NOT NULL COMMENT '详细地址',
  `a_name` varchar(255) NOT NULL COMMENT '收货人姓名',
  `a_phone` varchar(255) NOT NULL COMMENT '收货人手机号',
  `a_gender` int(3) NOT NULL DEFAULT '0' COMMENT '性别:0:男;1:女',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_addr"
#

/*!40000 ALTER TABLE `ddsc_addr` DISABLE KEYS */;
INSERT INTO `ddsc_addr` VALUES (1,'1546851074','天津 天津市 河东区',1,0,'新互联大厦','娄凯','18224526679',0),(5,'1547169917','宁夏回族自治区 银川市 兴庆区',1,1,'西拐角','呵呵呵','18224526985',1),(8,'1547536612','北京 北京市 东城区',2,0,'南天门','李连杰','13263598415',1),(11,'1547708583','天津 天津市 和平区',2,0,'打死打','大厦','13223048146',1),(17,'1547708555','天津 天津市 和平区',2,0,'恒华大厦','呵呵呵','13223048146',0),(19,'1547708693','浦东新区',2,1,'3楼31号','周润发','18456239875',1),(22,'1547719199','天津 天津市 和平区',14,1,'','','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_admin"
#

/*!40000 ALTER TABLE `ddsc_admin` DISABLE KEYS */;
INSERT INTO `ddsc_admin` VALUES (1,'admin','8a30ec6807f71bc69d096d8e4d501ade','2019-01-21 09:05:26','2019-01-22 08:58:34','0.0.0.0',0,NULL,NULL);
/*!40000 ALTER TABLE `ddsc_admin` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_budget"
#

/*!40000 ALTER TABLE `ddsc_budget` DISABLE KEYS */;
INSERT INTO `ddsc_budget` VALUES (1,'1547465599',18488.00,1,2),(2,'1547513501',325.00,1,2),(3,'1547513501',260.00,2,2),(4,'1547513501',694.00,2,2),(5,'1547513501',653.00,2,2),(6,'1547513501',495.00,3,2),(7,'1547513501',654.00,3,2),(8,'1547513501',210.00,3,2),(9,'1547513501',356.00,3,2),(10,'1547536087',12.00,2,2),(11,'1547536568',59.00,2,2),(12,'1547536628',12.00,2,2),(13,'1547537017',12.00,2,2),(14,'1547716640',6.00,2,2);
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
  `sid` int(9) NOT NULL COMMENT '规格ID',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_carte"
#

/*!40000 ALTER TABLE `ddsc_carte` DISABLE KEYS */;
INSERT INTO `ddsc_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(2,'基本信息','seting','',1,50),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,2),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,3),(14,'后台模板','lister','',13,50),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(19,'会员管理','Member','fa-address-book-o',0,5),(20,'会员列表','lister','',19,50),(34,'日志管理','Log','fa-book',0,12),(36,'后台登录日志','index','',34,50),(39,'订单管理','Dd','fa-paper-plane',0,6),(40,'待付款订单','dai_dd','',39,50),(41,'待发货订单','fa_dd','',39,50),(42,'待收货订单','shou_dd','',39,50),(43,'待评价订单','ping_dd','',39,50),(44,'已完成订单','wan_dd','',39,50),(45,'商品管理','Goods','fa-map-signs',0,7),(46,'商品列表','lister','',45,50),(47,'商品分类','type','',45,50),(49,'会员折扣','Agio','fa-heart',0,8),(50,'会员折扣','lister','',49,50),(51,'合伙人分红','index','',49,50),(52,'公益金','fund','',49,50),(53,'合伙人等级','level','',49,50),(54,'股份兑换商城','Mall','fa-bullhorn',0,9),(55,'商品列表','lister','',54,50),(56,'待发货订单','f_dd','',54,50),(57,'已完成订单','w_dd','',54,50),(58,'品牌列表','brand','',45,50),(61,'评论管理','Comment','fa-desktop',0,50),(62,'评论列表','lister','fa-desktop',61,50),(65,'退货列表','withdraw','fa-picture-o',39,50);
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
  `u_name` varchar(255) NOT NULL COMMENT '评论人',
  `type` int(3) NOT NULL DEFAULT '0' COMMENT '评论状态:0未通过:1已通过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_comment"
#

/*!40000 ALTER TABLE `ddsc_comment` DISABLE KEYS */;
INSERT INTO `ddsc_comment` VALUES (1,'超级棒','1547429165',1,11,'24K纯帅',1),(2,'以后还来卖','1547433070',1,13,'24K纯帅',1),(4,'味道不错,就是有点少','1547433115',1,8,'24K纯帅',1),(5,'很好看,家里人都很喜欢','1547433136',1,12,'24K纯帅',1),(6,'很好吃,味道很香=','1547433155',1,9,'24K纯帅',1),(7,'还不错','1547433322',1,9,'24K纯帅',1),(8,'你好','1547433437',1,9,'24K纯帅',1),(9,'你好','1547433456',1,9,'24K纯帅',1),(10,'很好啊','1547433549',1,9,'24K纯帅',0);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站内信';

#
# Data for table "ddsc_email"
#

/*!40000 ALTER TABLE `ddsc_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_email` ENABLE KEYS */;

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
  `g_content` text COMMENT '商品详情',
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
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_goods"
#

/*!40000 ALTER TABLE `ddsc_goods` DISABLE KEYS */;
INSERT INTO `ddsc_goods` VALUES (1,'测试1',123.00,111,11,'',1,1,50,'/public/uploads/20190103/65efc29ec5ce161d982f308e70f1ae8f.jpg',1,NULL,NULL,'测试','商品广告词','uploads/thumb/5c2db4cee64987.69641819.jpg',NULL,1,1,1,0.00),(6,'卫生纸',69.00,0,1,'',1,0,46,'/public/uploads/20190104/40444516aab003447dd67152bfb400c1.jpg',2,11,NULL,'卫生纸','天然木浆合成','uploads/thumb/5c2f24ba09d830.26176350.jpg','郑州',1,1,1,0.00),(7,'湿巾',230.00,0,11,'',1,0,5,'/public/uploads/20190104/ae20d6c93c6388a4382446f214eb232e.jpg',2,7,NULL,'','超强保湿','uploads/thumb/5c2f26be4934b1.95245315.jpg','',1,1,1,0.00),(8,'芳达',6.00,33,22,'',1,1,50,'/public/uploads/20190105/6dec6aae2c579b41d839aa086b3b9936.jpg',2,7,NULL,'契税','清凉一夏','uploads/thumb/5c30107a4a68d0.84917980.jpg','深圳',0,1,1,0.00),(9,'方隆平',99.67,22,12,'',1,1,50,'/public/uploads/20190105/b0d357897d5bca9af5f83617abee1fd0.jpg',4,14,NULL,'89','吃饱饱','uploads/thumb/5c3048dac89da9.85288660.jpg','美洲',0,0,1,0.00),(10,'测试5',69.00,1,10,'',1,1,2,'/public/uploads/20190105/2b277fc24f791f9ace492b699ac43251.jpg',4,14,NULL,'测试','这是一个测试商品呢','uploads/thumb/5c30490a1aa3f7.56273430.jpg','正则',0,0,1,0.00),(11,'水杯',59.00,12,22,'',1,1,50,'/public/uploads/20190108/17fbe7e45f54b79628c6648bda12dfc5.jpg',2,7,NULL,'水杯','超大容积','uploads/thumb/5c3450643ff559.74740371.jpg','广州',0,0,1,0.00),(12,'贴画',12.00,33,31,'',1,1,50,'/public/uploads/20190108/5f863f8c5eab599756f9ce5096b65d2c.jpg',3,12,NULL,'精美贴画','精美贴画','uploads/thumb/5c3450a551f4f6.69125568.jpg','郑州',0,0,0,0.00),(13,'玻璃',99.00,31,23,'',1,1,50,'/public/uploads/20190108/5c68ae733cb35455cf05c75ed7782b13.jpg',3,7,NULL,'玻璃','超透明,耐碰','uploads/thumb/5c3450e7af69c3.64752974.jpg','撒哈拉',0,0,0,0.00);
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='品牌列表';

#
# Data for table "ddsc_goods_brand"
#

/*!40000 ALTER TABLE `ddsc_goods_brand` DISABLE KEYS */;
INSERT INTO `ddsc_goods_brand` VALUES (7,'雷碧','响彻云霄','/public/uploads/20190104/9dbfa2d64fb15ae613d770c146257979.jpg',11,0,'/public/uploads/thumb/5c2f3e3579b0b6.51144678.jpg',3),(11,'品牌名称1','大牌精选1','/public/uploads/20190103/5284caaaacbd8235cb1ea5edd7423e4a.jpg',52,1,'/public/uploads/thumb/5c2deac94482c5.16419419.jpg',3),(12,'品牌名称21','大牌精选2','/public/uploads/20190116/54366cdedb4b1acb80e4faa2c0e8b82c.png',1,1,'/public/uploads/thumb/5c3ea036a64002.90599617.jpg',2),(13,'农夫三拳','天然水,更安全','/public/uploads/20190104/3ff37d07f7b3516b56f34f0c961956a6.jpg',33,1,'/public/uploads/thumb/5c2f3efc5e7039.83544239.jpg',4),(14,'三全食品','安全食品','/public/uploads/20190104/f75623f8be421329ba06efe9a2f743cc.jpg',4,1,'/public/uploads/thumb/5c2f3eef5a9829.83084655.jpg',4),(15,'耐课','超级舒适','/public/uploads/20190104/404fab9f7446b797710806cfec705624.jpg',64,0,'/public/uploads/thumb/5c2f3f4516f1a7.17689727.jpg',4),(16,'哇嘻嘻','更安全','/public/uploads/20190116/d0829d225fca006a7670ed6f2dc5585e.jpg',50,1,'/public/uploads/thumb/5c3ea022225f14.67340372.jpg',2);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品多图';

#
# Data for table "ddsc_goods_img"
#

/*!40000 ALTER TABLE `ddsc_goods_img` DISABLE KEYS */;
INSERT INTO `ddsc_goods_img` VALUES (1,'/public/uploads/20190103/de389b33e01c0393d9ec9399ddd8655b.jpg',1,NULL,1,'uploads/thumb/5c2db4e1da5841.19715063.jpg');
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
INSERT INTO `ddsc_goods_spec` VALUES (1,2,'规格1',100.00,NULL,'/public/uploads/20190103/10672d608a650a01c70aeb1d938e258e.jpg',1),(4,10,'白色',200.00,NULL,'/public/uploads/20190114/bc2af4d0f6c0c7cb2f1878f6f9481a5d.jpg',1),(5,10,'大的',200.00,NULL,'/public/uploads/20190114/601e0648303cb68e350cc81ccb46ec48.png',1),(6,7,'黑色',312.00,NULL,'/public/uploads/20190114/4f41884cd8b52f368999adee42b58931.png',1),(7,7,'白色',542.00,NULL,'/public/uploads/20190114/fab12b81129988b69d77401f43d35ef6.png',1),(8,6,'绿色',200.00,NULL,'/public/uploads/20190114/baf95591ce20a60e7a6a348e910d82a1.png',1),(9,6,'紫色',512.00,NULL,'/public/uploads/20190114/27070b27de00de0b1abb5c3b34bd3d9e.png',1),(10,13,'中号',122.00,NULL,'/public/uploads/20190114/5103df70488b4d67369a4f8d7e4eb9c4.jpg',1),(11,8,'打死打',12312.00,NULL,'/public/uploads/20190114/a1f7f5864b69ff72689a9c9c2b36838f.png',1),(12,8,'就回房间',654.00,NULL,'/public/uploads/20190114/5a418bca61246cfba50473373d503edd.png',1),(13,9,'打死打',432.00,NULL,'/public/uploads/20190114/68b946de029b9e2640cc903b56778552.png',1),(14,6,'紫色',350.00,NULL,'/public/uploads/20190114/f32cd94d2544781659627113c7d8b604.png',1);
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
  `desc` text COMMENT '简介',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告列表';

#
# Data for table "ddsc_lb"
#

/*!40000 ALTER TABLE `ddsc_lb` DISABLE KEYS */;
INSERT INTO `ddsc_lb` VALUES (1,1,'banner',50,1,'','','/public/uploads/20190103/33f8a1d871b0b647cab571d3fe22176c.jpg','/public/uploads/thumb/5c2da9e0cf9276.73403274.jpg'),(2,1,'banner',50,1,'','','/public/uploads/20190103/71448a426271c81a5cadfb4964a79fa8.jpg','/public/uploads/thumb/5c2da9ef19e2e0.46318687.jpg'),(3,2,'公告名称',50,1,'','<p>商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告商城公告</p>',NULL,NULL),(4,2,'公告名称2',50,1,'','<p>公告名称2公告名称2公告名称2公告名称2公告名称2公告名称2公告名称2公告名称2</p>',NULL,NULL),(5,3,'新品图标',50,1,'','','/public/uploads/20190103/5d8f284c1df0be1b0e4142a449fa617b.png','uploads/thumb/5c2dae9857788.jpg'),(6,4,'促销图标',50,1,'','','/public/uploads/20190103/0f1b7da983e790f5f096869988daa935.png','uploads/thumb/5c2daebfde8b6.jpg'),(7,5,'订单图标',50,1,'','','/public/uploads/20190103/c25436950ffe47586f0bed205babeb57.png','uploads/thumb/5c2daed144fa8.jpg'),(8,6,'全部图标',50,1,'','','/public/uploads/20190103/e25eedf3cb437a46528618b187a6c1ba.png','uploads/thumb/5c2daee028ddb.jpg');
/*!40000 ALTER TABLE `ddsc_lb` ENABLE KEYS */;

#
# Structure for table "ddsc_lb_place"
#

DROP TABLE IF EXISTS `ddsc_lb_place`;
CREATE TABLE `ddsc_lb_place` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `pl_name` varchar(255) DEFAULT NULL COMMENT '位置名称',
  PRIMARY KEY (`pl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告位';

#
# Data for table "ddsc_lb_place"
#

/*!40000 ALTER TABLE `ddsc_lb_place` DISABLE KEYS */;
INSERT INTO `ddsc_lb_place` VALUES (1,'手机端首页轮播'),(2,'商城公告'),(3,'新品图标'),(4,'促销图标'),(5,'订单图标'),(6,'全部图标');
/*!40000 ALTER TABLE `ddsc_lb_place` ENABLE KEYS */;

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
# Structure for table "ddsc_order"
#

DROP TABLE IF EXISTS `ddsc_order`;
CREATE TABLE `ddsc_order` (
  `oid` int(9) NOT NULL AUTO_INCREMENT,
  `o_num` int(9) NOT NULL COMMENT '购买数量',
  `uid` int(9) NOT NULL,
  `gid` int(9) NOT NULL,
  `o_create` varchar(255) NOT NULL COMMENT '订单添加时间',
  `type` int(9) NOT NULL DEFAULT '0' COMMENT '订单状态值:0:代付款;1:代发货;2:待收货;3:已收货;4:退货:5:退货审核中:6:驳回申请:7申请通过',
  `o_code` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `comment` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品评论:0:未评价;1:已评价',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `a_id` int(9) DEFAULT NULL COMMENT '默认收货地ID',
  `f_time` varchar(255) DEFAULT NULL COMMENT '发货时间',
  `o_urge` int(3) NOT NULL DEFAULT '0' COMMENT '买家催发货;0:正常;1催发货',
  `s_id` int(3) NOT NULL COMMENT '规格ID',
  `t_create` varchar(255) DEFAULT NULL COMMENT '申请退货时间',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_order"
#

/*!40000 ALTER TABLE `ddsc_order` DISABLE KEYS */;
INSERT INTO `ddsc_order` VALUES (84,3,1,11,'1547706996',0,'2019011714330746715',0,177.00,8,NULL,0,0,NULL),(85,2,1,8,'1547706916',1,'2019011714330760399',0,12.00,8,NULL,0,0,NULL),(86,3,1,7,'1547706996',0,'2019011714330716863',0,690.00,8,NULL,0,0,NULL),(87,3,1,6,'1547706996',0,'2019011714330796811',0,207.00,8,NULL,0,0,NULL),(88,1,1,8,'1547706996',0,'2019011714363671298',0,6.00,8,NULL,0,0,NULL),(90,1,2,6,'1547713546',4,'2019011716254693102',0,69.00,19,NULL,0,0,NULL),(91,1,2,7,'1547713552',5,'2019011716255215721',0,230.00,19,NULL,0,0,NULL),(92,1,2,8,'1547713556',6,'2019011716255682585',0,6.00,19,NULL,0,0,NULL),(93,1,2,11,'1547713561',3,'2019011716260148532',0,59.00,19,NULL,0,0,NULL),(94,1,2,12,'1547713569',3,'2019011716260992812',0,12.00,19,NULL,0,0,NULL),(95,1,2,13,'1547713577',4,'2019011716261774357',0,99.00,19,NULL,1,0,NULL),(97,1,2,10,'1547713588',7,'2019011716262867634',0,69.00,19,NULL,0,0,NULL),(98,1,2,8,'1547716635',4,'2019011717171509064',0,6.00,19,NULL,0,0,'1547716668');
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
INSERT INTO `ddsc_seo` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='手机验证码';

#
# Data for table "ddsc_sms_code"
#

/*!40000 ALTER TABLE `ddsc_sms_code` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站基本信息';

#
# Data for table "ddsc_sys"
#

/*!40000 ALTER TABLE `ddsc_sys` DISABLE KEYS */;
INSERT INTO `ddsc_sys` VALUES (1,'刘现国','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志';

#
# Data for table "ddsc_sys_log"
#

/*!40000 ALTER TABLE `ddsc_sys_log` DISABLE KEYS */;
INSERT INTO `ddsc_sys_log` VALUES (1,'后台登录','2019-01-02 15:01:50','admin','0.0.0.0'),(2,'后台登录','2019-01-03 09:06:41','admin','0.0.0.0'),(3,'后台登录','2019-01-04 09:00:17','admin','0.0.0.0'),(4,'后台登录','2019-01-04 11:28:21','admin','127.0.0.1'),(5,'后台登录','2019-01-05 09:03:30','admin','127.0.0.1'),(6,'后台登录','2019-01-05 16:28:48','admin','127.0.0.1'),(7,'后台登录','2019-01-07 08:56:17','admin','127.0.0.1'),(8,'后台登录','2019-01-08 08:55:45','admin','127.0.0.1'),(9,'后台登录','2019-01-09 08:54:20','admin','127.0.0.1'),(10,'后台登录','2019-01-10 08:37:34','admin','127.0.0.1'),(11,'后台登录','2019-01-15 09:04:27','admin','127.0.0.1'),(12,'后台登录','2019-01-16 09:16:41','admin','127.0.0.1'),(13,'后台登录','2019-01-17 08:52:00','admin','127.0.0.1'),(14,'后台登录','2019-01-18 09:03:18','admin','127.0.0.1'),(15,'后台登录','2019-01-18 10:12:25','admin','0.0.0.0'),(16,'后台登录','2019-01-19 08:56:37','admin','0.0.0.0'),(17,'后台登录','2019-01-21 09:05:26','admin','0.0.0.0'),(18,'后台登录','2019-01-22 08:58:34','admin','0.0.0.0');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品分类';

#
# Data for table "ddsc_type"
#

/*!40000 ALTER TABLE `ddsc_type` DISABLE KEYS */;
INSERT INTO `ddsc_type` VALUES (2,'百货','/public/uploads/20190104/12153e6e514f4c53de7d2f771771bd58.jpg',54,'/public/uploads/20190104/a51314d2d403acc8f770450e99a7dbce.jpg',1),(3,'熟食','/public/uploads/20190104/64ba6cf8614b2714249df0275beb3098.jpg',12,'/public/uploads/20190104/e871988110a08d9b27db9191d5b8574b.jpg',1),(4,'大米','/public/uploads/20190104/4b3f8d1920e057298d770537fae75de8.jpg',2,'/public/uploads/20190104/dff6423634529aa18bcc69eb0ab8c5b1.jpg',0);
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
  `level` varchar(255) DEFAULT NULL COMMENT '级别',
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
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "ddsc_user"
#

/*!40000 ALTER TABLE `ddsc_user` DISABLE KEYS */;
INSERT INTO `ddsc_user` VALUES (1,'15939590207','e10adc3949ba59abbe56e057f20f883e','1548051039',141,0,'M051025',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,0,'','王鹏飞',1,1,1048.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',48000.00,0),(2,'15939590201','e10adc3949ba59abbe56e057f20f883e','1548051065',61,0,'Z051051',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,1,NULL,'张三',1,1,499.20,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',43000.00,0),(3,'15939590202','e10adc3949ba59abbe56e057f20f883e','1548051094',61,0,'T051079',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,2,NULL,'李四',1,1,497.60,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',42000.00,0),(4,'15939590203','e10adc3949ba59abbe56e057f20f883e','1548051181',61,0,'F051166',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,3,NULL,'王二',1,1,496.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',41000.00,0),(5,'15939590204','e10adc3949ba59abbe56e057f20f883e','1548051228',61,0,'J051209',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,4,NULL,'小五',1,1,494.40,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',40000.00,0),(6,'15939590205','e10adc3949ba59abbe56e057f20f883e','1548051282',85,0,'I051259',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,5,NULL,'小六',1,1,684.80,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',39000.00,0),(7,'15939590206','e10adc3949ba59abbe56e057f20f883e','1548051332',117,0,'B051316',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,6,NULL,'小七',1,1,936.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',38000.00,0),(8,'15939590209','e10adc3949ba59abbe56e057f20f883e','1548051377',178,0,'O051360',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,7,NULL,'小八',1,1,1424.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',37000.00,0),(9,'15939590210','e10adc3949ba59abbe56e057f20f883e','1548051444',652,0,'I051423',NULL,'1',NULL,NULL,NULL,NULL,NULL,'96e79218965eb72c92a549dd5a330112',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,8,NULL,'小九',1,1,1416.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',36000.00,0),(10,'15939590211','e10adc3949ba59abbe56e057f20f883e','1548051481',288,0,'A051455',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,9,NULL,'小十',1,1,1384.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',35000.00,0),(11,'15939590213','e10adc3949ba59abbe56e057f20f883e','1548051523',628,0,'U051500',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,10,NULL,'小1',1,1,1224.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203912','河南','郑州市','市辖区',34000.00,0),(12,'15939590214','e10adc3949ba59abbe56e057f20f883e','1548051604',60,0,'B051589',NULL,'5',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,11,NULL,'小2',1,1,480.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',3000.00,0),(13,'15939590215','e10adc3949ba59abbe56e057f20f883e','1548051651',0,0,'R051637',NULL,'2',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,12,NULL,'小3',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',3000.00,'412824199303203918','河南','郑州市','市辖区',0.00,0),(15,'15939590222','e10adc3949ba59abbe56e057f20f883e','1548051959',0,0,'C051676',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,0,13,NULL,'小4',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,1),(16,'15939590321','e10adc3949ba59abbe56e057f20f883e','1548052138',0,0,'O052121',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,0,15,NULL,'小5',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,1),(17,'15939591234','e10adc3949ba59abbe56e057f20f883e','1548052318',0,0,'P052298',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,0,16,NULL,'小11',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,1),(18,'15939590218','e10adc3949ba59abbe56e057f20f883e','1548058073',0,0,'P058057',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,1,NULL,'请问',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,0),(19,'15236363636','e10adc3949ba59abbe56e057f20f883e','1548058121',0,0,'I058101',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,1,NULL,'是的范德萨',1,0,0.00,'新疆乌鲁木齐市市辖区是打发',1000.00,'412824199303203918','新疆','乌鲁木齐市','市辖区',0.00,0),(20,'15939591256','e10adc3949ba59abbe56e057f20f883e','1548058159',0,0,'H058141',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,1,NULL,'梵蒂冈',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,0),(21,'15939599875','e10adc3949ba59abbe56e057f20f883e','1548058182',0,0,'W058166',NULL,'1',NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,0.00,0,NULL,0.00,0,0.00,0.00,1,1000,1,NULL,'离开了',1,0,0.00,'河南郑州市市辖区花园路国基路北200米恒华大厦',1000.00,'412824199303203918','河南','郑州市','市辖区',0.00,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户奖金日志';

#
# Data for table "ddsc_zx_bonus_log"
#

/*!40000 ALTER TABLE `ddsc_zx_bonus_log` DISABLE KEYS */;
INSERT INTO `ddsc_zx_bonus_log` VALUES (1,1,'推荐津贴',160.00,'1548051064',1),(2,2,'推荐津贴',160.00,'1548051094',1),(3,1,'推荐津贴',64.00,'1548051094',1),(4,3,'推荐津贴',160.00,'1548051181',1),(5,2,'推荐津贴',64.00,'1548051181',1),(6,1,'推荐津贴',160.00,'1548051181',1),(7,4,'推荐津贴',160.00,'1548051228',1),(8,3,'推荐津贴',64.00,'1548051228',1),(9,2,'推荐津贴',160.00,'1548051228',1),(10,1,'推荐津贴',32.00,'1548051228',1),(11,5,'推荐津贴',160.00,'1548051282',1),(12,4,'推荐津贴',64.00,'1548051282',1),(13,3,'推荐津贴',160.00,'1548051282',1),(14,2,'推荐津贴',32.00,'1548051282',1),(15,1,'推荐津贴',16.00,'1548051282',1),(16,6,'推荐津贴',160.00,'1548051332',1),(17,5,'推荐津贴',64.00,'1548051332',1),(18,4,'推荐津贴',160.00,'1548051332',1),(19,3,'推荐津贴',32.00,'1548051332',1),(20,2,'推荐津贴',16.00,'1548051332',1),(21,1,'推荐津贴',8.00,'1548051332',1),(22,7,'推荐津贴',160.00,'1548051377',1),(23,6,'推荐津贴',64.00,'1548051377',1),(24,5,'推荐津贴',160.00,'1548051377',1),(25,4,'推荐津贴',32.00,'1548051377',1),(26,3,'推荐津贴',16.00,'1548051377',1),(27,2,'推荐津贴',8.00,'1548051377',1),(28,1,'推荐津贴',1.60,'1548051377',1),(29,8,'推荐津贴',160.00,'1548051444',1),(30,7,'推荐津贴',64.00,'1548051444',1),(31,6,'推荐津贴',160.00,'1548051444',1),(32,5,'推荐津贴',32.00,'1548051444',1),(33,4,'推荐津贴',16.00,'1548051444',1),(34,3,'推荐津贴',8.00,'1548051444',1),(35,2,'推荐津贴',1.60,'1548051444',1),(36,1,'推荐津贴',1.60,'1548051444',1),(37,9,'推荐津贴',160.00,'1548051481',1),(38,8,'推荐津贴',64.00,'1548051481',1),(39,7,'推荐津贴',160.00,'1548051481',1),(40,6,'推荐津贴',32.00,'1548051481',1),(41,5,'推荐津贴',16.00,'1548051481',1),(42,4,'推荐津贴',8.00,'1548051481',1),(43,3,'推荐津贴',1.60,'1548051481',1),(44,2,'推荐津贴',1.60,'1548051481',1),(45,1,'推荐津贴',1.60,'1548051481',1),(46,10,'推荐津贴',160.00,'1548051522',1),(47,9,'推荐津贴',64.00,'1548051522',1),(48,8,'推荐津贴',160.00,'1548051522',1),(49,7,'推荐津贴',32.00,'1548051522',1),(50,6,'推荐津贴',16.00,'1548051522',1),(51,5,'推荐津贴',8.00,'1548051522',1),(52,4,'推荐津贴',1.60,'1548051522',1),(53,3,'推荐津贴',1.60,'1548051522',1),(54,2,'推荐津贴',1.60,'1548051522',1),(55,1,'推荐津贴',1.60,'1548051523',1),(56,11,'推荐津贴',160.00,'1548051603',1),(57,10,'推荐津贴',64.00,'1548051603',1),(58,9,'推荐津贴',160.00,'1548051603',1),(59,8,'推荐津贴',32.00,'1548051603',1),(60,7,'推荐津贴',16.00,'1548051603',1),(61,6,'推荐津贴',8.00,'1548051603',1),(62,5,'推荐津贴',1.60,'1548051603',1),(63,4,'推荐津贴',1.60,'1548051603',1),(64,3,'推荐津贴',1.60,'1548051603',1),(65,2,'推荐津贴',1.60,'1548051603',1),(66,1,'推荐津贴',1.60,'1548051603',1),(67,12,'推荐津贴',160.00,'1548051651',1),(68,11,'推荐津贴',64.00,'1548051651',1),(69,10,'推荐津贴',160.00,'1548051651',1),(70,9,'推荐津贴',32.00,'1548051651',1),(71,8,'推荐津贴',16.00,'1548051651',1),(72,7,'推荐津贴',8.00,'1548051651',1),(73,6,'推荐津贴',1.60,'1548051651',1),(74,5,'推荐津贴',1.60,'1548051651',1),(75,4,'推荐津贴',1.60,'1548051651',1),(76,3,'推荐津贴',1.60,'1548051651',1),(77,2,'推荐津贴',1.60,'1548051651',1),(78,1,'推荐津贴',160.00,'1548058073',1),(79,1,'推荐津贴',160.00,'1548058121',1),(80,1,'推荐津贴',160.00,'1548058159',1),(81,1,'推荐津贴',72.00,'1548058182',1),(82,11,'推荐津贴',1000.00,'1548119991',1),(83,10,'推荐津贴',1000.00,'1548119991',1),(84,9,'推荐津贴',1000.00,'1548119991',1),(85,8,'推荐津贴',960.00,'1548119991',1),(86,7,'推荐津贴',480.00,'1548119991',1),(87,6,'推荐津贴',240.00,'1548119991',1),(88,5,'推荐津贴',48.00,'1548119991',1),(89,4,'推荐津贴',48.00,'1548119991',1),(90,3,'推荐津贴',48.00,'1548119991',1),(91,2,'推荐津贴',48.00,'1548119991',1),(92,1,'推荐津贴',48.00,'1548119991',1),(93,12,'推荐津贴',320.00,'1548123517',1),(94,8,'推荐津贴',32.00,'1548123518',1),(95,7,'推荐津贴',16.00,'1548123518',1),(96,6,'推荐津贴',3.20,'1548123518',1),(97,5,'推荐津贴',3.20,'1548123518',1),(98,4,'推荐津贴',3.20,'1548123518',1),(99,3,'推荐津贴',3.20,'1548123518',1),(100,2,'推荐津贴',3.20,'1548123518',1);
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
INSERT INTO `ddsc_zx_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(2,'基本信息','seting','',1,50),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,2),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,3),(14,'后台模板','lister','',13,50),(15,'数据库管理','Sql','fa-file-text-o',0,13),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(18,'备份列表','lister','',15,50),(19,'会员管理','Member','fa-address-book-o',0,5),(20,'会员列表','lister','',19,50),(21,'联盟公告','News','fa-bullhorn',0,6),(22,'公告列表','lister','',21,50),(23,'游戏规则','Game','fa-rocket',0,7),(24,'游戏规则','lister','',23,50),(25,'问题解答','Problem','fa-question-circle',0,8),(26,'问题解答','lister','',25,50),(27,'站内通信','Email','fa-envelope-o',0,9),(28,'邮件列表','lister','',27,50),(29,'级别管理','Level','fa-line-chart',0,10),(30,'级别列表','lister','',29,50),(31,'级别简介','index','',29,50),(32,'申请记录','Apply','fa-level-up',0,11),(33,'申请列表','lister','',32,50),(34,'日志管理','Log','fa-book',0,12),(36,'后台登录日志','index','',34,50),(37,'加盟等级','league','',19,50);
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
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='重复消费日志';

#
# Data for table "ddsc_zx_coupon_log"
#

/*!40000 ALTER TABLE `ddsc_zx_coupon_log` DISABLE KEYS */;
INSERT INTO `ddsc_zx_coupon_log` VALUES (1,1,'重复消费',20.00,'1548051064',1),(2,2,'重复消费',20.00,'1548051094',1),(3,1,'重复消费',8.00,'1548051094',1),(4,3,'重复消费',20.00,'1548051181',1),(5,2,'重复消费',8.00,'1548051181',1),(6,1,'重复消费',20.00,'1548051181',1),(7,4,'重复消费',20.00,'1548051228',1),(8,3,'重复消费',8.00,'1548051228',1),(9,2,'重复消费',20.00,'1548051228',1),(10,1,'重复消费',4.00,'1548051228',1),(11,5,'重复消费',20.00,'1548051282',1),(12,4,'重复消费',8.00,'1548051282',1),(13,3,'重复消费',20.00,'1548051282',1),(14,2,'重复消费',4.00,'1548051282',1),(15,1,'重复消费',2.00,'1548051282',1),(16,6,'重复消费',20.00,'1548051332',1),(17,5,'重复消费',8.00,'1548051332',1),(18,4,'重复消费',20.00,'1548051332',1),(19,3,'重复消费',4.00,'1548051332',1),(20,2,'重复消费',2.00,'1548051332',1),(21,1,'重复消费',1.00,'1548051332',1),(22,7,'重复消费',20.00,'1548051377',1),(23,6,'重复消费',8.00,'1548051377',1),(24,5,'重复消费',20.00,'1548051377',1),(25,4,'重复消费',4.00,'1548051377',1),(26,3,'重复消费',2.00,'1548051377',1),(27,2,'重复消费',1.00,'1548051377',1),(28,1,'重复消费',0.20,'1548051377',1),(29,8,'重复消费',20.00,'1548051444',1),(30,7,'重复消费',8.00,'1548051444',1),(31,6,'重复消费',20.00,'1548051444',1),(32,5,'重复消费',4.00,'1548051444',1),(33,4,'重复消费',2.00,'1548051444',1),(34,3,'重复消费',1.00,'1548051444',1),(35,2,'重复消费',0.20,'1548051444',1),(36,1,'重复消费',0.20,'1548051444',1),(37,9,'重复消费',20.00,'1548051481',1),(38,8,'重复消费',8.00,'1548051481',1),(39,7,'重复消费',20.00,'1548051481',1),(40,6,'重复消费',4.00,'1548051481',1),(41,5,'重复消费',2.00,'1548051481',1),(42,4,'重复消费',1.00,'1548051481',1),(43,3,'重复消费',0.20,'1548051481',1),(44,2,'重复消费',0.20,'1548051481',1),(45,1,'重复消费',0.20,'1548051481',1),(46,10,'重复消费',20.00,'1548051522',1),(47,9,'重复消费',8.00,'1548051522',1),(48,8,'重复消费',20.00,'1548051522',1),(49,7,'重复消费',4.00,'1548051522',1),(50,6,'重复消费',2.00,'1548051522',1),(51,5,'重复消费',1.00,'1548051522',1),(52,4,'重复消费',0.20,'1548051522',1),(53,3,'重复消费',0.20,'1548051522',1),(54,2,'重复消费',0.20,'1548051523',1),(55,1,'重复消费',0.20,'1548051523',1),(56,11,'重复消费',20.00,'1548051603',1),(57,10,'重复消费',8.00,'1548051603',1),(58,9,'重复消费',20.00,'1548051603',1),(59,8,'重复消费',4.00,'1548051603',1),(60,7,'重复消费',2.00,'1548051603',1),(61,6,'重复消费',1.00,'1548051603',1),(62,5,'重复消费',0.20,'1548051603',1),(63,4,'重复消费',0.20,'1548051603',1),(64,3,'重复消费',0.20,'1548051603',1),(65,2,'重复消费',0.20,'1548051603',1),(66,1,'重复消费',0.20,'1548051603',1),(67,12,'重复消费',20.00,'1548051651',1),(68,11,'重复消费',8.00,'1548051651',1),(69,10,'重复消费',20.00,'1548051651',1),(70,9,'重复消费',4.00,'1548051651',1),(71,8,'重复消费',2.00,'1548051651',1),(72,7,'重复消费',1.00,'1548051651',1),(73,6,'重复消费',0.20,'1548051651',1),(74,5,'重复消费',0.20,'1548051651',1),(75,4,'重复消费',0.20,'1548051651',1),(76,3,'重复消费',0.20,'1548051651',1),(77,2,'重复消费',0.20,'1548051651',1),(78,1,'重复消费',20.00,'1548058073',1),(79,1,'重复消费',20.00,'1548058121',1),(80,1,'重复消费',20.00,'1548058159',1),(81,1,'重复消费',20.00,'1548058182',1),(82,11,'重复消费',600.00,'1548119991',1),(83,10,'重复消费',240.00,'1548119991',1),(84,9,'重复消费',600.00,'1548119991',1),(85,8,'重复消费',120.00,'1548119991',1),(86,7,'重复消费',60.00,'1548119991',1),(87,6,'重复消费',30.00,'1548119991',1),(88,5,'重复消费',6.00,'1548119991',1),(89,4,'重复消费',6.00,'1548119991',1),(90,3,'重复消费',6.00,'1548119991',1),(91,2,'重复消费',6.00,'1548119991',1),(92,1,'重复消费',6.00,'1548119991',1),(93,12,'重复消费',40.00,'1548123518',1),(94,8,'重复消费',4.00,'1548123518',1),(95,7,'重复消费',2.00,'1548123518',1),(96,6,'重复消费',0.40,'1548123518',1),(97,5,'重复消费',0.40,'1548123518',1),(98,4,'重复消费',0.40,'1548123518',1),(99,3,'重复消费',0.40,'1548123518',1),(100,2,'重复消费',0.40,'1548123518',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='注册币记录';

#
# Data for table "ddsc_zx_gold_log"
#

/*!40000 ALTER TABLE `ddsc_zx_gold_log` DISABLE KEYS */;
INSERT INTO `ddsc_zx_gold_log` VALUES (1,1,'注册所得',1000,'1548051039',1),(2,2,'注册所得',1000,'1548051065',1),(3,3,'注册所得',1000,'1548051094',1),(4,4,'注册所得',1000,'1548051181',1),(5,5,'注册所得',1000,'1548051228',1),(6,6,'注册所得',1000,'1548051282',1),(7,7,'注册所得',1000,'1548051332',1),(8,8,'注册所得',1000,'1548051377',1),(9,9,'注册所得',1000,'1548051444',1),(10,10,'注册所得',1000,'1548051481',1),(11,11,'注册所得',1000,'1548051523',1),(12,12,'注册所得',1000,'1548051604',1),(13,13,'注册所得',1000,'1548051651',1),(14,15,'注册所得',0,'1548051959',1),(15,16,'注册所得',0,'1548052138',1),(16,18,'注册所得',1000,'1548058073',1),(17,19,'注册所得',1000,'1548058121',1),(18,20,'注册所得',1000,'1548058159',1),(19,21,'注册所得',1000,'1548058182',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='加盟等级';

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='每期奖金日志';

#
# Data for table "ddsc_zx_money_log"
#

/*!40000 ALTER TABLE `ddsc_zx_money_log` DISABLE KEYS */;
INSERT INTO `ddsc_zx_money_log` VALUES (1,1,1360.00,136.00,136.00,0.00,0.00,1000.00,20190121,'1548051065'),(2,2,560.00,56.00,56.00,0.00,0.00,448.00,20190121,'1548051094'),(3,3,558.00,55.80,55.80,0.00,0.00,446.40,20190121,'1548051181'),(4,4,556.00,55.60,55.60,0.00,0.00,444.80,20190121,'1548051228'),(5,5,554.00,55.40,55.40,0.00,0.00,443.20,20190121,'1548051282'),(6,6,552.00,55.20,55.20,0.00,0.00,441.60,20190121,'1548051332'),(7,7,550.00,55.00,55.00,0.00,0.00,440.00,20190121,'1548051377'),(8,8,540.00,54.00,54.00,0.00,0.00,432.00,20190121,'1548051444'),(9,9,520.00,52.00,52.00,0.00,0.00,416.00,20190121,'1548051481'),(10,10,480.00,48.00,48.00,0.00,0.00,384.00,20190121,'1548051522'),(11,11,280.00,28.00,28.00,0.00,0.00,224.00,20190121,'1548051603'),(12,12,200.00,20.00,20.00,0.00,0.00,160.00,20190121,'1548051651'),(13,11,6000.00,600.00,600.00,0.00,0.00,1000.00,20190122,'1548119991'),(14,10,2400.00,240.00,240.00,0.00,0.00,1000.00,20190122,'1548119991'),(15,9,6000.00,600.00,600.00,0.00,0.00,1000.00,20190122,'1548119991'),(16,8,1240.00,124.00,124.00,0.00,0.00,992.00,20190122,'1548119991'),(17,7,620.00,62.00,62.00,0.00,0.00,496.00,20190122,'1548119991'),(18,6,304.00,30.40,30.40,0.00,0.00,243.20,20190122,'1548119991'),(19,5,64.00,6.40,6.40,0.00,0.00,51.20,20190122,'1548119991'),(20,4,64.00,6.40,6.40,0.00,0.00,51.20,20190122,'1548119991'),(21,3,64.00,6.40,6.40,0.00,0.00,51.20,20190122,'1548119991'),(22,2,64.00,6.40,6.40,0.00,0.00,51.20,20190122,'1548119991'),(23,1,60.00,6.00,6.00,0.00,0.00,48.00,20190122,'1548119991'),(24,12,400.00,40.00,40.00,0.00,0.00,320.00,20190122,'1548123518');
/*!40000 ALTER TABLE `ddsc_zx_money_log` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='管理税日志';

#
# Data for table "ddsc_zx_tax_log"
#

/*!40000 ALTER TABLE `ddsc_zx_tax_log` DISABLE KEYS */;
INSERT INTO `ddsc_zx_tax_log` VALUES (1,1,'管理费及个税',20.00,'1548051064'),(2,2,'管理费及个税',20.00,'1548051094'),(3,1,'管理费及个税',8.00,'1548051094'),(4,3,'管理费及个税',20.00,'1548051181'),(5,2,'管理费及个税',8.00,'1548051181'),(6,1,'管理费及个税',20.00,'1548051181'),(7,4,'管理费及个税',20.00,'1548051228'),(8,3,'管理费及个税',8.00,'1548051228'),(9,2,'管理费及个税',20.00,'1548051228'),(10,1,'管理费及个税',4.00,'1548051228'),(11,5,'管理费及个税',20.00,'1548051282'),(12,4,'管理费及个税',8.00,'1548051282'),(13,3,'管理费及个税',20.00,'1548051282'),(14,2,'管理费及个税',4.00,'1548051282'),(15,1,'管理费及个税',2.00,'1548051282'),(16,6,'管理费及个税',20.00,'1548051332'),(17,5,'管理费及个税',8.00,'1548051332'),(18,4,'管理费及个税',20.00,'1548051332'),(19,3,'管理费及个税',4.00,'1548051332'),(20,2,'管理费及个税',2.00,'1548051332'),(21,1,'管理费及个税',1.00,'1548051332'),(22,7,'管理费及个税',20.00,'1548051377'),(23,6,'管理费及个税',8.00,'1548051377'),(24,5,'管理费及个税',20.00,'1548051377'),(25,4,'管理费及个税',4.00,'1548051377'),(26,3,'管理费及个税',2.00,'1548051377'),(27,2,'管理费及个税',1.00,'1548051377'),(28,1,'管理费及个税',0.20,'1548051377'),(29,8,'管理费及个税',20.00,'1548051444'),(30,7,'管理费及个税',8.00,'1548051444'),(31,6,'管理费及个税',20.00,'1548051444'),(32,5,'管理费及个税',4.00,'1548051444'),(33,4,'管理费及个税',2.00,'1548051444'),(34,3,'管理费及个税',1.00,'1548051444'),(35,2,'管理费及个税',0.20,'1548051444'),(36,1,'管理费及个税',0.20,'1548051444'),(37,9,'管理费及个税',20.00,'1548051481'),(38,8,'管理费及个税',8.00,'1548051481'),(39,7,'管理费及个税',20.00,'1548051481'),(40,6,'管理费及个税',4.00,'1548051481'),(41,5,'管理费及个税',2.00,'1548051481'),(42,4,'管理费及个税',1.00,'1548051481'),(43,3,'管理费及个税',0.20,'1548051481'),(44,2,'管理费及个税',0.20,'1548051481'),(45,1,'管理费及个税',0.20,'1548051481'),(46,10,'管理费及个税',20.00,'1548051522'),(47,9,'管理费及个税',8.00,'1548051522'),(48,8,'管理费及个税',20.00,'1548051522'),(49,7,'管理费及个税',4.00,'1548051522'),(50,6,'管理费及个税',2.00,'1548051522'),(51,5,'管理费及个税',1.00,'1548051522'),(52,4,'管理费及个税',0.20,'1548051522'),(53,3,'管理费及个税',0.20,'1548051522'),(54,2,'管理费及个税',0.20,'1548051523'),(55,1,'管理费及个税',0.20,'1548051523'),(56,11,'管理费及个税',20.00,'1548051603'),(57,10,'管理费及个税',8.00,'1548051603'),(58,9,'管理费及个税',20.00,'1548051603'),(59,8,'管理费及个税',4.00,'1548051603'),(60,7,'管理费及个税',2.00,'1548051603'),(61,6,'管理费及个税',1.00,'1548051603'),(62,5,'管理费及个税',0.20,'1548051603'),(63,4,'管理费及个税',0.20,'1548051603'),(64,3,'管理费及个税',0.20,'1548051603'),(65,2,'管理费及个税',0.20,'1548051603'),(66,1,'管理费及个税',0.20,'1548051603'),(67,12,'管理费及个税',20.00,'1548051651'),(68,11,'管理费及个税',8.00,'1548051651'),(69,10,'管理费及个税',20.00,'1548051651'),(70,9,'管理费及个税',4.00,'1548051651'),(71,8,'管理费及个税',2.00,'1548051651'),(72,7,'管理费及个税',1.00,'1548051651'),(73,6,'管理费及个税',0.20,'1548051651'),(74,5,'管理费及个税',0.20,'1548051651'),(75,4,'管理费及个税',0.20,'1548051651'),(76,3,'管理费及个税',0.20,'1548051651'),(77,2,'管理费及个税',0.20,'1548051651'),(78,1,'管理费及个税',20.00,'1548058073'),(79,1,'管理费及个税',20.00,'1548058121'),(80,1,'管理费及个税',20.00,'1548058159'),(81,1,'管理费及个税',20.00,'1548058182'),(82,11,'管理费及个税',600.00,'1548119991'),(83,10,'管理费及个税',240.00,'1548119991'),(84,9,'管理费及个税',600.00,'1548119991'),(85,8,'管理费及个税',120.00,'1548119991'),(86,7,'管理费及个税',60.00,'1548119991'),(87,6,'管理费及个税',30.00,'1548119991'),(88,5,'管理费及个税',6.00,'1548119991'),(89,4,'管理费及个税',6.00,'1548119991'),(90,3,'管理费及个税',6.00,'1548119991'),(91,2,'管理费及个税',6.00,'1548119991'),(92,1,'管理费及个税',6.00,'1548119991'),(93,12,'管理费及个税',40.00,'1548123518'),(94,8,'管理费及个税',4.00,'1548123518'),(95,7,'管理费及个税',2.00,'1548123518'),(96,6,'管理费及个税',0.40,'1548123518'),(97,5,'管理费及个税',0.40,'1548123518'),(98,4,'管理费及个税',0.40,'1548123518'),(99,3,'管理费及个税',0.40,'1548123518'),(100,2,'管理费及个税',0.40,'1548123518');
/*!40000 ALTER TABLE `ddsc_zx_tax_log` ENABLE KEYS */;
