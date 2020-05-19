/*
Navicat MySQL Data Transfer

Source Server         : 泰一新
Source Server Version : 50727
Source Host           : 39.98.54.210:3306
Source Database       : beijing.target-gd.com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-05-13 18:01:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eb_article
-- ----------------------------
DROP TABLE IF EXISTS `eb_article`;
CREATE TABLE `eb_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',
  `cid` varchar(255) DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '文章简介',
  `share_title` varchar(255) DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '原文链接',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '产品关联id',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否轮播图(小程序)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章管理表';

-- ----------------------------
-- Records of eb_article
-- ----------------------------

-- ----------------------------
-- Table structure for eb_article_category
-- ----------------------------
DROP TABLE IF EXISTS `eb_article_category`;
CREATE TABLE `eb_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章分类id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '文章分类标题',
  `intr` varchar(255) DEFAULT NULL COMMENT '文章分类简介',
  `image` varchar(255) NOT NULL COMMENT '文章分类图片',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除0未删除',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of eb_article_category
-- ----------------------------
INSERT INTO `eb_article_category` VALUES ('1', '0', '11', '112', 'http://wst.com/uploads/attach/2020/05/20200502/aaac6e25778b48ac9b913123f89ceefb.jpg', '1', '1', '0', '1588600865', '0');

-- ----------------------------
-- Table structure for eb_article_content
-- ----------------------------
DROP TABLE IF EXISTS `eb_article_content`;
CREATE TABLE `eb_article_content` (
  `nid` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '文章内容',
  UNIQUE KEY `nid` (`nid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- ----------------------------
-- Records of eb_article_content
-- ----------------------------

-- ----------------------------
-- Table structure for eb_cache
-- ----------------------------
DROP TABLE IF EXISTS `eb_cache`;
CREATE TABLE `eb_cache` (
  `key` varchar(32) NOT NULL,
  `result` text COMMENT '缓存数据',
  `expire_time` int(10) NOT NULL DEFAULT '0' COMMENT '失效时间0=永久',
  `add_time` int(10) DEFAULT NULL COMMENT '缓存时间',
  PRIMARY KEY (`key`) USING BTREE,
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信缓存表';

-- ----------------------------
-- Records of eb_cache
-- ----------------------------

-- ----------------------------
-- Table structure for eb_express
-- ----------------------------
DROP TABLE IF EXISTS `eb_express`;
CREATE TABLE `eb_express` (
  `id` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司简称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司全称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

-- ----------------------------
-- Records of eb_express
-- ----------------------------
INSERT INTO `eb_express` VALUES ('1', 'LIMINWL', '利民物流', '1', '0');
INSERT INTO `eb_express` VALUES ('2', 'XINTIAN', '鑫天顺物流', '1', '0');
INSERT INTO `eb_express` VALUES ('3', 'henglu', '恒路物流', '1', '0');
INSERT INTO `eb_express` VALUES ('4', 'klwl', '康力物流', '1', '0');
INSERT INTO `eb_express` VALUES ('5', 'meiguo', '美国快递', '1', '0');
INSERT INTO `eb_express` VALUES ('6', 'a2u', 'A2U速递', '1', '0');
INSERT INTO `eb_express` VALUES ('7', 'benteng', '奔腾物流', '1', '0');
INSERT INTO `eb_express` VALUES ('8', 'ahdf', '德方物流', '1', '0');
INSERT INTO `eb_express` VALUES ('9', 'timedg', '万家通', '1', '0');
INSERT INTO `eb_express` VALUES ('10', 'ztong', '智通物流', '1', '0');
INSERT INTO `eb_express` VALUES ('11', 'xindan', '新蛋物流', '1', '0');
INSERT INTO `eb_express` VALUES ('12', 'bgpyghx', '挂号信', '1', '0');
INSERT INTO `eb_express` VALUES ('13', 'XFHONG', '鑫飞鸿物流快递', '1', '0');
INSERT INTO `eb_express` VALUES ('14', 'ALP', '阿里物流', '1', '0');
INSERT INTO `eb_express` VALUES ('15', 'BFWL', '滨发物流', '1', '0');
INSERT INTO `eb_express` VALUES ('16', 'SJWL', '宋军物流', '1', '0');
INSERT INTO `eb_express` VALUES ('17', 'SHUNFAWL', '顺发物流', '1', '0');
INSERT INTO `eb_express` VALUES ('18', 'TIANHEWL', '天河物流', '1', '0');
INSERT INTO `eb_express` VALUES ('19', 'YBWL', '邮联物流', '1', '0');
INSERT INTO `eb_express` VALUES ('20', 'SWHY', '盛旺货运', '1', '0');
INSERT INTO `eb_express` VALUES ('21', 'TSWL', '汤氏物流', '1', '0');
INSERT INTO `eb_express` VALUES ('22', 'YUANYUANWL', '圆圆物流', '1', '0');
INSERT INTO `eb_express` VALUES ('23', 'BALIANGWL', '八梁物流', '1', '0');
INSERT INTO `eb_express` VALUES ('24', 'ZGWL', '振刚物流', '1', '0');
INSERT INTO `eb_express` VALUES ('25', 'JIAYU', '佳宇物流', '1', '0');
INSERT INTO `eb_express` VALUES ('26', 'SHHX', '昊昕物流', '1', '0');
INSERT INTO `eb_express` VALUES ('27', 'ande', '安得物流', '1', '0');
INSERT INTO `eb_express` VALUES ('28', 'ppbyb', '贝邮宝', '1', '0');
INSERT INTO `eb_express` VALUES ('29', 'dida', '递达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('30', 'jppost', '日本邮政', '1', '0');
INSERT INTO `eb_express` VALUES ('31', 'intmail', '中国邮政', '96', '0');
INSERT INTO `eb_express` VALUES ('32', 'HENGCHENGWL', '恒诚物流', '1', '0');
INSERT INTO `eb_express` VALUES ('33', 'HENGFENGWL', '恒丰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('34', 'gdems', '广东ems快递', '1', '0');
INSERT INTO `eb_express` VALUES ('35', 'xlyt', '祥龙运通', '1', '0');
INSERT INTO `eb_express` VALUES ('36', 'gjbg', '国际包裹', '1', '0');
INSERT INTO `eb_express` VALUES ('37', 'uex', 'UEX', '1', '0');
INSERT INTO `eb_express` VALUES ('38', 'singpost', '新加坡邮政', '1', '0');
INSERT INTO `eb_express` VALUES ('39', 'guangdongyouzhengwuliu', '广东邮政', '1', '0');
INSERT INTO `eb_express` VALUES ('40', 'bht', 'BHT', '1', '0');
INSERT INTO `eb_express` VALUES ('41', 'cces', 'CCES快递', '1', '0');
INSERT INTO `eb_express` VALUES ('42', 'cloudexpress', 'CE易欧通国际速递', '1', '0');
INSERT INTO `eb_express` VALUES ('43', 'dasu', '达速物流', '1', '0');
INSERT INTO `eb_express` VALUES ('44', 'pfcexpress', '皇家物流', '1', '0');
INSERT INTO `eb_express` VALUES ('45', 'hjs', '猴急送', '1', '0');
INSERT INTO `eb_express` VALUES ('46', 'huilian', '辉联物流', '1', '0');
INSERT INTO `eb_express` VALUES ('47', 'huanqiu', '环球速运', '1', '0');
INSERT INTO `eb_express` VALUES ('48', 'huada', '华达快运', '1', '0');
INSERT INTO `eb_express` VALUES ('49', 'htwd', '华通务达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('50', 'hipito', '海派通', '1', '0');
INSERT INTO `eb_express` VALUES ('51', 'hqtd', '环球通达', '1', '0');
INSERT INTO `eb_express` VALUES ('52', 'airgtc', '航空快递', '1', '0');
INSERT INTO `eb_express` VALUES ('53', 'haoyoukuai', '好又快物流', '1', '0');
INSERT INTO `eb_express` VALUES ('54', 'hanrun', '韩润物流', '1', '0');
INSERT INTO `eb_express` VALUES ('55', 'ccd', '河南次晨达', '1', '0');
INSERT INTO `eb_express` VALUES ('56', 'hfwuxi', '和丰同城', '1', '0');
INSERT INTO `eb_express` VALUES ('57', 'Sky', '荷兰', '1', '0');
INSERT INTO `eb_express` VALUES ('58', 'hongxun', '鸿讯物流', '1', '0');
INSERT INTO `eb_express` VALUES ('59', 'hongjie', '宏捷国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('60', 'httx56', '汇通天下物流', '1', '0');
INSERT INTO `eb_express` VALUES ('61', 'lqht', '恒通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('62', 'jinguangsudikuaijian', '京广速递快件', '1', '0');
INSERT INTO `eb_express` VALUES ('63', 'junfengguoji', '骏丰国际速递', '1', '0');
INSERT INTO `eb_express` VALUES ('64', 'jiajiatong56', '佳家通', '1', '0');
INSERT INTO `eb_express` VALUES ('65', 'jrypex', '吉日优派', '1', '0');
INSERT INTO `eb_express` VALUES ('66', 'jinchengwuliu', '锦程国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('67', 'jgwl', '景光物流', '1', '0');
INSERT INTO `eb_express` VALUES ('68', 'pzhjst', '急顺通', '1', '0');
INSERT INTO `eb_express` VALUES ('69', 'ruexp', '捷网俄全通', '1', '0');
INSERT INTO `eb_express` VALUES ('70', 'jmjss', '金马甲', '1', '0');
INSERT INTO `eb_express` VALUES ('71', 'lanhu', '蓝弧快递', '1', '0');
INSERT INTO `eb_express` VALUES ('72', 'ltexp', '乐天速递', '1', '0');
INSERT INTO `eb_express` VALUES ('73', 'lutong', '鲁通快运', '1', '0');
INSERT INTO `eb_express` VALUES ('74', 'ledii', '乐递供应链', '1', '0');
INSERT INTO `eb_express` VALUES ('75', 'lundao', '论道国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('76', 'mailikuaidi', '麦力快递', '1', '0');
INSERT INTO `eb_express` VALUES ('77', 'mchy', '木春货运', '1', '0');
INSERT INTO `eb_express` VALUES ('78', 'meiquick', '美快国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('79', 'valueway', '美通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('80', 'nuoyaao', '偌亚奥国际', '1', '0');
INSERT INTO `eb_express` VALUES ('81', 'euasia', '欧亚专线', '1', '0');
INSERT INTO `eb_express` VALUES ('82', 'pca', '澳大利亚PCA快递', '1', '0');
INSERT INTO `eb_express` VALUES ('83', 'pingandatengfei', '平安达腾飞', '1', '0');
INSERT INTO `eb_express` VALUES ('84', 'pjbest', '品骏快递', '1', '0');
INSERT INTO `eb_express` VALUES ('85', 'qbexpress', '秦邦快运', '1', '0');
INSERT INTO `eb_express` VALUES ('86', 'quanxintong', '全信通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('87', 'quansutong', '全速通国际快递', '1', '0');
INSERT INTO `eb_express` VALUES ('88', 'qinyuan', '秦远物流', '1', '0');
INSERT INTO `eb_express` VALUES ('89', 'qichen', '启辰国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('90', 'quansu', '全速快运', '1', '0');
INSERT INTO `eb_express` VALUES ('91', 'qzx56', '全之鑫物流', '1', '0');
INSERT INTO `eb_express` VALUES ('92', 'qskdyxgs', '千顺快递', '1', '0');
INSERT INTO `eb_express` VALUES ('93', 'runhengfeng', '全时速运', '1', '0');
INSERT INTO `eb_express` VALUES ('94', 'rytsd', '日益通速递', '1', '0');
INSERT INTO `eb_express` VALUES ('95', 'ruidaex', '瑞达国际速递', '1', '0');
INSERT INTO `eb_express` VALUES ('96', 'shiyun', '世运快递', '1', '0');
INSERT INTO `eb_express` VALUES ('97', 'sfift', '十方通物流', '1', '0');
INSERT INTO `eb_express` VALUES ('98', 'stkd', '顺通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('99', 'bgn', '布谷鸟快递', '1', '0');
INSERT INTO `eb_express` VALUES ('100', 'jiahuier', '佳惠尔快递', '1', '0');
INSERT INTO `eb_express` VALUES ('101', 'pingyou', '小包', '1', '0');
INSERT INTO `eb_express` VALUES ('102', 'yumeijie', '誉美捷快递', '1', '0');
INSERT INTO `eb_express` VALUES ('103', 'meilong', '美龙快递', '1', '0');
INSERT INTO `eb_express` VALUES ('104', 'guangtong', '广通速递', '1', '0');
INSERT INTO `eb_express` VALUES ('105', 'STARS', '星晨急便', '1', '0');
INSERT INTO `eb_express` VALUES ('106', 'NANHANG', '中国南方航空股份有限公司', '1', '0');
INSERT INTO `eb_express` VALUES ('107', 'lanbiao', '蓝镖快递', '1', '0');
INSERT INTO `eb_express` VALUES ('109', 'baotongda', '宝通达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('110', 'dashun', '大顺物流', '1', '0');
INSERT INTO `eb_express` VALUES ('111', 'dada', '大达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('112', 'fangfangda', '方方达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('113', 'hebeijianhua', '河北建华物流', '1', '0');
INSERT INTO `eb_express` VALUES ('114', 'haolaiyun', '好来运快递', '1', '0');
INSERT INTO `eb_express` VALUES ('115', 'jinyue', '晋越快递', '1', '0');
INSERT INTO `eb_express` VALUES ('116', 'kuaitao', '快淘快递', '1', '0');
INSERT INTO `eb_express` VALUES ('117', 'peixing', '陪行物流', '1', '0');
INSERT INTO `eb_express` VALUES ('118', 'hkpost', '香港邮政', '1', '0');
INSERT INTO `eb_express` VALUES ('119', 'ytfh', '一统飞鸿快递', '1', '0');
INSERT INTO `eb_express` VALUES ('120', 'zhongxinda', '中信达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('121', 'zhongtian', '中天快运', '1', '0');
INSERT INTO `eb_express` VALUES ('122', 'zuochuan', '佐川急便', '1', '0');
INSERT INTO `eb_express` VALUES ('123', 'chengguang', '程光快递', '1', '0');
INSERT INTO `eb_express` VALUES ('124', 'cszx', '城市之星', '1', '0');
INSERT INTO `eb_express` VALUES ('125', 'chuanzhi', '传志快递', '1', '0');
INSERT INTO `eb_express` VALUES ('126', 'feibao', '飞豹快递', '1', '0');
INSERT INTO `eb_express` VALUES ('127', 'huiqiang', '汇强快递', '1', '0');
INSERT INTO `eb_express` VALUES ('128', 'lejiedi', '乐捷递', '1', '0');
INSERT INTO `eb_express` VALUES ('129', 'lijisong', '成都立即送快递', '1', '0');
INSERT INTO `eb_express` VALUES ('130', 'minbang', '民邦速递', '1', '0');
INSERT INTO `eb_express` VALUES ('131', 'ocs', 'OCS国际快递', '1', '0');
INSERT INTO `eb_express` VALUES ('132', 'santai', '三态速递', '1', '0');
INSERT INTO `eb_express` VALUES ('133', 'saiaodi', '赛澳递', '1', '0');
INSERT INTO `eb_express` VALUES ('134', 'jd', '京东快递', '1', '0');
INSERT INTO `eb_express` VALUES ('135', 'zengyi', '增益快递', '1', '0');
INSERT INTO `eb_express` VALUES ('136', 'fanyu', '凡宇速递', '1', '0');
INSERT INTO `eb_express` VALUES ('137', 'fengda', '丰达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('138', 'coe', '东方快递', '1', '0');
INSERT INTO `eb_express` VALUES ('139', 'ees', '百福东方快递', '1', '0');
INSERT INTO `eb_express` VALUES ('140', 'disifang', '递四方速递', '1', '0');
INSERT INTO `eb_express` VALUES ('141', 'rufeng', '如风达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('142', 'changtong', '长通物流', '1', '0');
INSERT INTO `eb_express` VALUES ('143', 'chengshi100', '城市100快递', '1', '0');
INSERT INTO `eb_express` VALUES ('144', 'feibang', '飞邦物流', '1', '0');
INSERT INTO `eb_express` VALUES ('145', 'haosheng', '昊盛物流', '1', '0');
INSERT INTO `eb_express` VALUES ('146', 'yinsu', '音速速运', '1', '0');
INSERT INTO `eb_express` VALUES ('147', 'kuanrong', '宽容物流', '1', '0');
INSERT INTO `eb_express` VALUES ('148', 'tongcheng', '通成物流', '1', '0');
INSERT INTO `eb_express` VALUES ('149', 'tonghe', '通和天下物流', '1', '0');
INSERT INTO `eb_express` VALUES ('150', 'zhima', '芝麻开门', '1', '0');
INSERT INTO `eb_express` VALUES ('151', 'ririshun', '日日顺物流', '1', '0');
INSERT INTO `eb_express` VALUES ('152', 'anxun', '安迅物流', '1', '0');
INSERT INTO `eb_express` VALUES ('153', 'baiqian', '百千诚国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('154', 'chukouyi', '出口易', '1', '0');
INSERT INTO `eb_express` VALUES ('155', 'diantong', '店通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('156', 'dajin', '大金物流', '1', '0');
INSERT INTO `eb_express` VALUES ('157', 'feite', '飞特物流', '1', '0');
INSERT INTO `eb_express` VALUES ('159', 'gnxb', '国内小包', '1', '0');
INSERT INTO `eb_express` VALUES ('160', 'huacheng', '华诚物流', '1', '0');
INSERT INTO `eb_express` VALUES ('161', 'huahan', '华翰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('162', 'hengyu', '恒宇运通', '1', '0');
INSERT INTO `eb_express` VALUES ('163', 'huahang', '华航快递', '1', '0');
INSERT INTO `eb_express` VALUES ('164', 'jiuyi', '久易快递', '1', '0');
INSERT INTO `eb_express` VALUES ('165', 'jiete', '捷特快递', '1', '0');
INSERT INTO `eb_express` VALUES ('166', 'jingshi', '京世物流', '1', '0');
INSERT INTO `eb_express` VALUES ('167', 'kuayue', '跨越快递', '1', '0');
INSERT INTO `eb_express` VALUES ('168', 'mengsu', '蒙速快递', '1', '0');
INSERT INTO `eb_express` VALUES ('169', 'nanbei', '南北快递', '1', '0');
INSERT INTO `eb_express` VALUES ('171', 'pinganda', '平安达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('172', 'ruifeng', '瑞丰速递', '1', '0');
INSERT INTO `eb_express` VALUES ('173', 'rongqing', '荣庆物流', '1', '0');
INSERT INTO `eb_express` VALUES ('174', 'suijia', '穗佳物流', '1', '0');
INSERT INTO `eb_express` VALUES ('175', 'simai', '思迈快递', '1', '0');
INSERT INTO `eb_express` VALUES ('176', 'suteng', '速腾快递', '1', '0');
INSERT INTO `eb_express` VALUES ('177', 'shengbang', '晟邦物流', '1', '0');
INSERT INTO `eb_express` VALUES ('178', 'suchengzhaipei', '速呈宅配', '1', '0');
INSERT INTO `eb_express` VALUES ('179', 'wuhuan', '五环速递', '1', '0');
INSERT INTO `eb_express` VALUES ('180', 'xingchengzhaipei', '星程宅配', '1', '0');
INSERT INTO `eb_express` VALUES ('181', 'yinjie', '顺捷丰达', '1', '0');
INSERT INTO `eb_express` VALUES ('183', 'yanwen', '燕文物流', '1', '0');
INSERT INTO `eb_express` VALUES ('184', 'zongxing', '纵行物流', '1', '0');
INSERT INTO `eb_express` VALUES ('185', 'aae', 'AAE快递', '1', '0');
INSERT INTO `eb_express` VALUES ('186', 'dhl', 'DHL快递', '1', '0');
INSERT INTO `eb_express` VALUES ('187', 'feihu', '飞狐快递', '1', '0');
INSERT INTO `eb_express` VALUES ('188', 'shunfeng', '顺丰速运', '92', '1');
INSERT INTO `eb_express` VALUES ('189', 'spring', '春风物流', '1', '0');
INSERT INTO `eb_express` VALUES ('190', 'yidatong', '易达通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('191', 'PEWKEE', '彪记快递', '1', '0');
INSERT INTO `eb_express` VALUES ('192', 'PHOENIXEXP', '凤凰快递', '1', '0');
INSERT INTO `eb_express` VALUES ('193', 'CNGLS', 'GLS快递', '1', '0');
INSERT INTO `eb_express` VALUES ('194', 'BHTEXP', '华慧快递', '1', '0');
INSERT INTO `eb_express` VALUES ('195', 'B2B', '卡行天下', '1', '0');
INSERT INTO `eb_express` VALUES ('196', 'PEISI', '配思货运', '1', '0');
INSERT INTO `eb_express` VALUES ('197', 'SUNDAPOST', '上大物流', '1', '0');
INSERT INTO `eb_express` VALUES ('198', 'SUYUE', '苏粤货运', '1', '0');
INSERT INTO `eb_express` VALUES ('199', 'F5XM', '伍圆速递', '1', '0');
INSERT INTO `eb_express` VALUES ('200', 'GZWENJIE', '文捷航空速递', '1', '0');
INSERT INTO `eb_express` VALUES ('201', 'yuancheng', '远成物流', '1', '0');
INSERT INTO `eb_express` VALUES ('202', 'dpex', 'DPEX快递', '1', '0');
INSERT INTO `eb_express` VALUES ('203', 'anjie', '安捷快递', '1', '0');
INSERT INTO `eb_express` VALUES ('204', 'jldt', '嘉里大通', '1', '0');
INSERT INTO `eb_express` VALUES ('205', 'yousu', '优速快递', '1', '0');
INSERT INTO `eb_express` VALUES ('206', 'wanbo', '万博快递', '1', '0');
INSERT INTO `eb_express` VALUES ('207', 'sure', '速尔物流', '1', '0');
INSERT INTO `eb_express` VALUES ('208', 'sutong', '速通物流', '1', '0');
INSERT INTO `eb_express` VALUES ('209', 'JUNCHUANWL', '骏川物流', '1', '0');
INSERT INTO `eb_express` VALUES ('210', 'guada', '冠达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('211', 'dsu', 'D速快递', '1', '0');
INSERT INTO `eb_express` VALUES ('212', 'LONGSHENWL', '龙胜物流', '1', '0');
INSERT INTO `eb_express` VALUES ('213', 'abc', '爱彼西快递', '1', '0');
INSERT INTO `eb_express` VALUES ('214', 'eyoubao', 'E邮宝', '1', '0');
INSERT INTO `eb_express` VALUES ('215', 'aol', 'AOL快递', '1', '0');
INSERT INTO `eb_express` VALUES ('216', 'jixianda', '急先达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('217', 'haihong', '山东海红快递', '1', '0');
INSERT INTO `eb_express` VALUES ('218', 'feiyang', '飞洋快递', '1', '0');
INSERT INTO `eb_express` VALUES ('219', 'rpx', 'RPX保时达', '1', '0');
INSERT INTO `eb_express` VALUES ('220', 'zhaijisong', '宅急送', '1', '0');
INSERT INTO `eb_express` VALUES ('221', 'tiantian', '天天快递', '99', '0');
INSERT INTO `eb_express` VALUES ('222', 'yunwuliu', '云物流', '1', '0');
INSERT INTO `eb_express` VALUES ('223', 'jiuye', '九曳供应链', '1', '0');
INSERT INTO `eb_express` VALUES ('224', 'bsky', '百世快运', '1', '0');
INSERT INTO `eb_express` VALUES ('225', 'higo', '黑狗物流', '1', '0');
INSERT INTO `eb_express` VALUES ('226', 'arke', '方舟速递', '1', '0');
INSERT INTO `eb_express` VALUES ('227', 'zwsy', '中外速运', '1', '0');
INSERT INTO `eb_express` VALUES ('228', 'jxy', '吉祥邮', '1', '0');
INSERT INTO `eb_express` VALUES ('229', 'aramex', 'Aramex', '1', '0');
INSERT INTO `eb_express` VALUES ('230', 'guotong', '国通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('231', 'jiayi', '佳怡物流', '1', '0');
INSERT INTO `eb_express` VALUES ('232', 'longbang', '龙邦快运', '1', '0');
INSERT INTO `eb_express` VALUES ('233', 'minhang', '民航快递', '1', '0');
INSERT INTO `eb_express` VALUES ('234', 'quanyi', '全一快递', '1', '0');
INSERT INTO `eb_express` VALUES ('235', 'quanchen', '全晨快递', '1', '0');
INSERT INTO `eb_express` VALUES ('236', 'usps', 'USPS快递', '1', '0');
INSERT INTO `eb_express` VALUES ('237', 'xinbang', '新邦物流', '1', '0');
INSERT INTO `eb_express` VALUES ('238', 'yuanzhi', '元智捷诚快递', '1', '0');
INSERT INTO `eb_express` VALUES ('239', 'zhongyou', '中邮物流', '1', '0');
INSERT INTO `eb_express` VALUES ('240', 'yuxin', '宇鑫物流', '1', '0');
INSERT INTO `eb_express` VALUES ('241', 'cnpex', '中环快递', '1', '0');
INSERT INTO `eb_express` VALUES ('242', 'shengfeng', '盛丰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('243', 'yuantong', '圆通速递', '97', '1');
INSERT INTO `eb_express` VALUES ('244', 'jiayunmei', '加运美物流', '1', '0');
INSERT INTO `eb_express` VALUES ('245', 'ywfex', '源伟丰快递', '1', '0');
INSERT INTO `eb_express` VALUES ('246', 'xinfeng', '信丰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('247', 'wanxiang', '万象物流', '1', '0');
INSERT INTO `eb_express` VALUES ('248', 'menduimen', '门对门', '1', '0');
INSERT INTO `eb_express` VALUES ('249', 'mingliang', '明亮物流', '1', '0');
INSERT INTO `eb_express` VALUES ('250', 'fengxingtianxia', '风行天下', '1', '0');
INSERT INTO `eb_express` VALUES ('251', 'gongsuda', '共速达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('252', 'zhongtong', '中通快递', '100', '1');
INSERT INTO `eb_express` VALUES ('253', 'quanritong', '全日通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('254', 'ems', 'EMS', '1', '1');
INSERT INTO `eb_express` VALUES ('255', 'wanjia', '万家物流', '1', '0');
INSERT INTO `eb_express` VALUES ('256', 'yuntong', '运通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('257', 'feikuaida', '飞快达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('258', 'haimeng', '海盟速递', '1', '0');
INSERT INTO `eb_express` VALUES ('259', 'zhongsukuaidi', '中速快件', '1', '0');
INSERT INTO `eb_express` VALUES ('260', 'yuefeng', '越丰快递', '1', '0');
INSERT INTO `eb_express` VALUES ('261', 'shenghui', '盛辉物流', '1', '0');
INSERT INTO `eb_express` VALUES ('262', 'datian', '大田物流', '1', '0');
INSERT INTO `eb_express` VALUES ('263', 'quanjitong', '全际通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('264', 'longlangkuaidi', '隆浪快递', '1', '0');
INSERT INTO `eb_express` VALUES ('265', 'neweggozzo', '新蛋奥硕物流', '1', '0');
INSERT INTO `eb_express` VALUES ('266', 'shentong', '申通快递', '95', '1');
INSERT INTO `eb_express` VALUES ('267', 'haiwaihuanqiu', '海外环球', '1', '0');
INSERT INTO `eb_express` VALUES ('268', 'yad', '源安达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('269', 'jindawuliu', '金大物流', '1', '0');
INSERT INTO `eb_express` VALUES ('270', 'sevendays', '七天连锁', '1', '0');
INSERT INTO `eb_express` VALUES ('271', 'tnt', 'TNT快递', '1', '0');
INSERT INTO `eb_express` VALUES ('272', 'huayu', '天地华宇物流', '1', '0');
INSERT INTO `eb_express` VALUES ('273', 'lianhaotong', '联昊通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('274', 'nengda', '港中能达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('275', 'LBWL', '联邦物流', '1', '0');
INSERT INTO `eb_express` VALUES ('276', 'ontrac', 'onTrac', '1', '0');
INSERT INTO `eb_express` VALUES ('277', 'feihang', '原飞航快递', '1', '0');
INSERT INTO `eb_express` VALUES ('278', 'bangsongwuliu', '邦送物流', '1', '0');
INSERT INTO `eb_express` VALUES ('279', 'huaxialong', '华夏龙物流', '1', '0');
INSERT INTO `eb_express` VALUES ('280', 'ztwy', '中天万运快递', '1', '0');
INSERT INTO `eb_express` VALUES ('281', 'fkd', '飞康达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('282', 'anxinda', '安信达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('283', 'quanfeng', '全峰快递', '1', '0');
INSERT INTO `eb_express` VALUES ('284', 'shengan', '圣安物流', '1', '0');
INSERT INTO `eb_express` VALUES ('285', 'jiaji', '佳吉物流', '1', '0');
INSERT INTO `eb_express` VALUES ('286', 'yunda', '韵达快运', '94', '0');
INSERT INTO `eb_express` VALUES ('287', 'ups', 'UPS快递', '1', '0');
INSERT INTO `eb_express` VALUES ('288', 'debang', '德邦物流', '1', '0');
INSERT INTO `eb_express` VALUES ('289', 'yafeng', '亚风速递', '1', '0');
INSERT INTO `eb_express` VALUES ('290', 'kuaijie', '快捷速递', '98', '0');
INSERT INTO `eb_express` VALUES ('291', 'huitong', '百世快递', '93', '0');
INSERT INTO `eb_express` VALUES ('293', 'aolau', 'AOL澳通速递', '1', '0');
INSERT INTO `eb_express` VALUES ('294', 'anneng', '安能物流', '1', '0');
INSERT INTO `eb_express` VALUES ('295', 'auexpress', '澳邮中国快运', '1', '0');
INSERT INTO `eb_express` VALUES ('296', 'exfresh', '安鲜达', '1', '0');
INSERT INTO `eb_express` VALUES ('297', 'bcwelt', 'BCWELT', '1', '0');
INSERT INTO `eb_express` VALUES ('298', 'youzhengguonei', '挂号信', '1', '0');
INSERT INTO `eb_express` VALUES ('299', 'xiaohongmao', '北青小红帽', '1', '0');
INSERT INTO `eb_express` VALUES ('300', 'lbbk', '宝凯物流', '1', '0');
INSERT INTO `eb_express` VALUES ('301', 'byht', '博源恒通', '1', '0');
INSERT INTO `eb_express` VALUES ('302', 'idada', '百成大达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('303', 'baitengwuliu', '百腾物流', '1', '0');
INSERT INTO `eb_express` VALUES ('304', 'birdex', '笨鸟海淘', '1', '0');
INSERT INTO `eb_express` VALUES ('305', 'bsht', '百事亨通', '1', '0');
INSERT INTO `eb_express` VALUES ('306', 'dayang', '大洋物流快递', '1', '0');
INSERT INTO `eb_express` VALUES ('307', 'dechuangwuliu', '德创物流', '1', '0');
INSERT INTO `eb_express` VALUES ('308', 'donghanwl', '东瀚物流', '1', '0');
INSERT INTO `eb_express` VALUES ('309', 'dfpost', '达方物流', '1', '0');
INSERT INTO `eb_express` VALUES ('310', 'dongjun', '东骏快捷物流', '1', '0');
INSERT INTO `eb_express` VALUES ('311', 'dindon', '叮咚澳洲转运', '1', '0');
INSERT INTO `eb_express` VALUES ('312', 'dazhong', '大众佐川急便', '1', '0');
INSERT INTO `eb_express` VALUES ('313', 'decnlh', '德中快递', '1', '0');
INSERT INTO `eb_express` VALUES ('314', 'dekuncn', '德坤供应链', '1', '0');
INSERT INTO `eb_express` VALUES ('315', 'eshunda', '俄顺达', '1', '0');
INSERT INTO `eb_express` VALUES ('316', 'ewe', 'EWE全球快递', '1', '0');
INSERT INTO `eb_express` VALUES ('317', 'fedexuk', 'FedEx英国', '1', '0');
INSERT INTO `eb_express` VALUES ('318', 'fox', 'FOX国际速递', '1', '0');
INSERT INTO `eb_express` VALUES ('319', 'rufengda', '凡客如风达', '1', '0');
INSERT INTO `eb_express` VALUES ('320', 'fandaguoji', '颿达国际快递', '1', '0');
INSERT INTO `eb_express` VALUES ('321', 'hnfy', '飞鹰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('322', 'flysman', '飞力士物流', '1', '0');
INSERT INTO `eb_express` VALUES ('323', 'sccod', '丰程物流', '1', '0');
INSERT INTO `eb_express` VALUES ('324', 'farlogistis', '泛远国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('325', 'gsm', 'GSM', '1', '0');
INSERT INTO `eb_express` VALUES ('326', 'gaticn', 'GATI快递', '1', '0');
INSERT INTO `eb_express` VALUES ('327', 'gts', 'GTS快递', '1', '0');
INSERT INTO `eb_express` VALUES ('328', 'gangkuai', '港快速递', '1', '0');
INSERT INTO `eb_express` VALUES ('329', 'gtsd', '高铁速递', '1', '0');
INSERT INTO `eb_express` VALUES ('330', 'tiandihuayu', '华宇物流', '1', '0');
INSERT INTO `eb_express` VALUES ('331', 'huangmajia', '黄马甲快递', '1', '0');
INSERT INTO `eb_express` VALUES ('332', 'ucs', '合众速递', '1', '0');
INSERT INTO `eb_express` VALUES ('333', 'huoban', '伙伴物流', '1', '0');
INSERT INTO `eb_express` VALUES ('334', 'nedahm', '红马速递', '1', '0');
INSERT INTO `eb_express` VALUES ('335', 'huiwen', '汇文配送', '1', '0');
INSERT INTO `eb_express` VALUES ('336', 'nmhuahe', '华赫物流', '1', '0');
INSERT INTO `eb_express` VALUES ('337', 'hangyu', '航宇快递', '1', '0');
INSERT INTO `eb_express` VALUES ('338', 'minsheng', '闽盛物流', '1', '0');
INSERT INTO `eb_express` VALUES ('339', 'riyu', '日昱物流', '1', '0');
INSERT INTO `eb_express` VALUES ('340', 'sxhongmajia', '山西红马甲', '1', '0');
INSERT INTO `eb_express` VALUES ('341', 'syjiahuier', '沈阳佳惠尔', '1', '0');
INSERT INTO `eb_express` VALUES ('342', 'shlindao', '上海林道货运', '1', '0');
INSERT INTO `eb_express` VALUES ('343', 'shunjiefengda', '顺捷丰达', '1', '0');
INSERT INTO `eb_express` VALUES ('344', 'subida', '速必达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('345', 'bphchina', '速方国际物流', '1', '0');
INSERT INTO `eb_express` VALUES ('346', 'sendtochina', '速递中国', '1', '0');
INSERT INTO `eb_express` VALUES ('347', 'suning', '苏宁快递', '1', '0');
INSERT INTO `eb_express` VALUES ('348', 'sihaiet', '四海快递', '1', '0');
INSERT INTO `eb_express` VALUES ('349', 'tianzong', '天纵物流', '1', '0');
INSERT INTO `eb_express` VALUES ('350', 'chinatzx', '同舟行物流', '1', '0');
INSERT INTO `eb_express` VALUES ('351', 'nntengda', '腾达速递', '1', '0');
INSERT INTO `eb_express` VALUES ('352', 'sd138', '泰国138', '1', '0');
INSERT INTO `eb_express` VALUES ('353', 'tongdaxing', '通达兴物流', '1', '0');
INSERT INTO `eb_express` VALUES ('354', 'tlky', '天联快运', '1', '0');
INSERT INTO `eb_express` VALUES ('355', 'youshuwuliu', 'UC优速快递', '1', '0');
INSERT INTO `eb_express` VALUES ('356', 'ueq', 'UEQ快递', '1', '0');
INSERT INTO `eb_express` VALUES ('357', 'weitepai', '微特派快递', '1', '0');
INSERT INTO `eb_express` VALUES ('358', 'wtdchina', '威时沛运', '1', '0');
INSERT INTO `eb_express` VALUES ('359', 'wzhaunyun', '微转运', '1', '0');
INSERT INTO `eb_express` VALUES ('360', 'gswtkd', '万通快递', '1', '0');
INSERT INTO `eb_express` VALUES ('361', 'wotu', '渥途国际速运', '1', '0');
INSERT INTO `eb_express` VALUES ('362', 'xiyoute', '希优特快递', '1', '0');
INSERT INTO `eb_express` VALUES ('363', 'xilaikd', '喜来快递', '1', '0');
INSERT INTO `eb_express` VALUES ('364', 'xsrd', '鑫世锐达', '1', '0');
INSERT INTO `eb_express` VALUES ('365', 'xtb', '鑫通宝物流', '1', '0');
INSERT INTO `eb_express` VALUES ('366', 'xintianjie', '信天捷快递', '1', '0');
INSERT INTO `eb_express` VALUES ('367', 'xaetc', '西安胜峰', '1', '0');
INSERT INTO `eb_express` VALUES ('368', 'xianfeng', '先锋快递', '1', '0');
INSERT INTO `eb_express` VALUES ('369', 'sunspeedy', '新速航', '1', '0');
INSERT INTO `eb_express` VALUES ('370', 'xipost', '西邮寄', '1', '0');
INSERT INTO `eb_express` VALUES ('371', 'sinatone', '信联通', '1', '0');
INSERT INTO `eb_express` VALUES ('372', 'sunjex', '新杰物流', '1', '0');
INSERT INTO `eb_express` VALUES ('373', 'yundaexus', '韵达美国件', '1', '0');
INSERT INTO `eb_express` VALUES ('374', 'yxwl', '宇鑫物流', '1', '0');
INSERT INTO `eb_express` VALUES ('375', 'yitongda', '易通达', '1', '0');
INSERT INTO `eb_express` VALUES ('376', 'yiqiguojiwuliu', '一柒物流', '1', '0');
INSERT INTO `eb_express` VALUES ('377', 'yilingsuyun', '亿领速运', '1', '0');
INSERT INTO `eb_express` VALUES ('378', 'yujiawuliu', '煜嘉物流', '1', '0');
INSERT INTO `eb_express` VALUES ('379', 'gml', '英脉物流', '1', '0');
INSERT INTO `eb_express` VALUES ('380', 'leopard', '云豹国际货运', '1', '0');
INSERT INTO `eb_express` VALUES ('381', 'czwlyn', '云南中诚', '1', '0');
INSERT INTO `eb_express` VALUES ('382', 'sdyoupei', '优配速运', '1', '0');
INSERT INTO `eb_express` VALUES ('383', 'yongchang', '永昌物流', '1', '0');
INSERT INTO `eb_express` VALUES ('384', 'yufeng', '御风速运', '1', '0');
INSERT INTO `eb_express` VALUES ('385', 'yamaxunwuliu', '亚马逊物流', '1', '0');
INSERT INTO `eb_express` VALUES ('386', 'yousutongda', '优速通达', '1', '0');
INSERT INTO `eb_express` VALUES ('387', 'yishunhang', '亿顺航', '1', '0');
INSERT INTO `eb_express` VALUES ('388', 'yongwangda', '永旺达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('389', 'ecmscn', '易满客', '1', '0');
INSERT INTO `eb_express` VALUES ('390', 'yingchao', '英超物流', '1', '0');
INSERT INTO `eb_express` VALUES ('391', 'edlogistics', '益递物流', '1', '0');
INSERT INTO `eb_express` VALUES ('392', 'yyexpress', '远洋国际', '1', '0');
INSERT INTO `eb_express` VALUES ('393', 'onehcang', '一号仓', '1', '0');
INSERT INTO `eb_express` VALUES ('394', 'ycgky', '远成快运', '1', '0');
INSERT INTO `eb_express` VALUES ('395', 'lineone', '一号线', '1', '0');
INSERT INTO `eb_express` VALUES ('396', 'ypsd', '壹品速递', '1', '0');
INSERT INTO `eb_express` VALUES ('397', 'vipexpress', '鹰运国际速递', '1', '0');
INSERT INTO `eb_express` VALUES ('398', 'el56', '易联通达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('399', 'yyqc56', '一运全成物流', '1', '0');
INSERT INTO `eb_express` VALUES ('400', 'zhongtie', '中铁快运', '1', '0');
INSERT INTO `eb_express` VALUES ('401', 'ZTKY', '中铁物流', '1', '0');
INSERT INTO `eb_express` VALUES ('402', 'zzjh', '郑州建华快递', '1', '0');
INSERT INTO `eb_express` VALUES ('403', 'zhongruisudi', '中睿速递', '1', '0');
INSERT INTO `eb_express` VALUES ('404', 'zhongwaiyun', '中外运速递', '1', '0');
INSERT INTO `eb_express` VALUES ('405', 'zengyisudi', '增益速递', '1', '0');
INSERT INTO `eb_express` VALUES ('406', 'sujievip', '郑州速捷', '1', '0');
INSERT INTO `eb_express` VALUES ('407', 'zhichengtongda', '至诚通达快递', '1', '0');
INSERT INTO `eb_express` VALUES ('408', 'zhdwl', '众辉达物流', '1', '0');
INSERT INTO `eb_express` VALUES ('409', 'kuachangwuliu', '直邮易', '1', '0');
INSERT INTO `eb_express` VALUES ('410', 'topspeedex', '中运全速', '1', '0');
INSERT INTO `eb_express` VALUES ('411', 'otobv', '中欧快运', '1', '0');
INSERT INTO `eb_express` VALUES ('412', 'zsky123', '准实快运', '1', '0');
INSERT INTO `eb_express` VALUES ('413', 'donghong', '东红物流', '1', '0');
INSERT INTO `eb_express` VALUES ('414', 'kuaiyouda', '快优达速递', '1', '0');

-- ----------------------------
-- Table structure for eb_routine_access_token
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_access_token`;
CREATE TABLE `eb_routine_access_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '小程序access_token表ID',
  `access_token` varchar(256) NOT NULL COMMENT 'openid',
  `stop_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小程序access_token表';

-- ----------------------------
-- Records of eb_routine_access_token
-- ----------------------------
INSERT INTO `eb_routine_access_token` VALUES ('1', '20_z3MAutcbznCSyQPqMVOQVRUktcvLYUXAAICpCMXkpu5rLoVnBB0u88rnJr1sWDJlwj-S6aVhmswmLdW86e9Bg2ugd3BOayE6ntY6FfckSXWgvW2y5N0bLkBxHpCjJH2bQpuvnmMIZr08G32hWSQfACAZVT', '1554809658');

-- ----------------------------
-- Table structure for eb_routine_form_id
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_form_id`;
CREATE TABLE `eb_routine_form_id` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单ID表ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户uid',
  `form_id` varchar(36) NOT NULL COMMENT '表单ID',
  `stop_time` int(11) unsigned DEFAULT NULL COMMENT '表单ID失效时间',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态1 未使用 2不能使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单id表记录表';

-- ----------------------------
-- Records of eb_routine_form_id
-- ----------------------------

-- ----------------------------
-- Table structure for eb_routine_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_qrcode`;
CREATE TABLE `eb_routine_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型 spread(用户推广) product_spread(产品推广)',
  `third_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态 0不可用 1可用',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `page` varchar(255) DEFAULT NULL COMMENT '小程序页面路径带参数',
  `qrcode_url` varchar(255) DEFAULT NULL COMMENT '小程序二维码路径',
  `url_time` int(11) unsigned DEFAULT NULL COMMENT '二维码添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小程序二维码管理表';

-- ----------------------------
-- Records of eb_routine_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for eb_routine_template
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_template`;
CREATE TABLE `eb_routine_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='微信模板';

-- ----------------------------
-- Records of eb_routine_template
-- ----------------------------
INSERT INTO `eb_routine_template` VALUES ('1', '1128', '订单配送通知', '商品信息{{thing8.DATA}}\n订单编号{{character_string1.DATA}}\n配送人{{name4.DATA}}\n配送员电话{{phone_number10.DATA}}', '4wN7p3nF1IPiPNIPZnoOY3nZlrVP3dzM-Km0OLcpW48', '1575364233', '1');
INSERT INTO `eb_routine_template` VALUES ('2', '1470', '提现结果通知', '提现状态{{thing1.DATA}}\n提现金额{{amount2.DATA}}\n提现账号{{thing3.DATA}}\n提现时间{{date4.DATA}}', 'xtBEkHdxyFSIQfiNe_CRga2mrmQizfArgSk7zC3hnbs', '1575364292', '1');
INSERT INTO `eb_routine_template` VALUES ('3', '1481', '收货结果通知', '订单类型{{thing1.DATA}}\n订单商品{{thing2.DATA}}\n收货时间{{date5.DATA}}', 'AVmUHvKandN9a9ms_-5QsP9_PAzDoJ_VBB0vqQI1Eo0', '1575364327', '1');
INSERT INTO `eb_routine_template` VALUES ('4', '1134', '订单取消通知', '取消原因{{thing1.DATA}}\n订单号{{number7.DATA}}\n取消时间{{date2.DATA}}\n订单类型{{thing5.DATA}}', 'xBilsNHAH527HBqrMgNoIA_biTfQ7A_bCbMxMx1uMM0', '1575364399', '1');
INSERT INTO `eb_routine_template` VALUES ('5', '1458', '发货通知', '快递单号{{character_string2.DATA}}\n快递公司{{thing1.DATA}}\n发货时间{{time3.DATA}}\n订单商品{{thing5.DATA}}', 'vBrJgvoj4CgBOUIVQcRfsUkYun4orcllCfQ11SSs4wk', '1575364437', '1');
INSERT INTO `eb_routine_template` VALUES ('6', '3098', '拼团成功通知', '活动名称{{thing1.DATA}}\n团长{{name3.DATA}}\n开团时间{{date5.DATA}}\n成团人数{{number2.DATA}}', 'V9fd7ssFZr5_twdgf--RfAExR4N08zU9Hk9auWDAI8g', '1575364508', '1');
INSERT INTO `eb_routine_template` VALUES ('7', '2727', '砍价成功通知', '商品名称{{thing1.DATA}}\n底价{{amount2.DATA}}\n备注{{thing3.DATA}}', 'ehNGy-NRBJIENTdlwT8nBddGW2B4dPo6eKv3x1H6fOg', '1575364579', '1');
INSERT INTO `eb_routine_template` VALUES ('8', '3116', ' 核销成功通知', '商品名称{{thing2.DATA}}\n订单号{{character_string3.DATA}}\n核销时间{{time4.DATA}}', '5wiR0TK43wguWdGzexocKvn9-nhELiJtoBKeqptsf84', '1575364738', '1');
INSERT INTO `eb_routine_template` VALUES ('9', '1476', ' 新订单提醒', '订单商品{{thing2.DATA}}\n订单金额{{amount3.DATA}}\n订单编号{{character_string4.DATA}}\n订单时间{{date6.DATA}}\n订单类型{{thing1.DATA}}', 'F7ju2FdKqFQ8rXXzkB34HSYKa5_kOzJrpF9EZQc1pJ8', '1575364792', '1');
INSERT INTO `eb_routine_template` VALUES ('10', '1451', ' 退款通知', '退款状态{{thing1.DATA}}\n退款商品{{thing2.DATA}}\n退款金额{{amount3.DATA}}\n退款单号{{character_string6.DATA}}', 'aqp6PzdU9vCUOUCHsuGFWvkZgp_cGQ_RKW7XCe9118I', '1575364895', '1');
INSERT INTO `eb_routine_template` VALUES ('11', '755', ' 充值成功通知', '交易单号{{character_string1.DATA}}\n充值金额{{amount3.DATA}}\n账户余额{{amount4.DATA}}\n充值时间{{date5.DATA}}', '_0KAysps9Yj0SM3nacaF_9xw77w1NQYjOpnl4TQAp7k', '1575365017', '1');
INSERT INTO `eb_routine_template` VALUES ('12', '1927', '付款成功通知', '付款单号{{character_string1.DATA}}\n付款金额{{amount2.DATA}}\n付款时间{{date3.DATA}}', 'jY2vT0Fge2srW9Izc-3wEE6WII-FQBvEi2J_duiAAck', '1575365111', '1');
INSERT INTO `eb_routine_template` VALUES ('13', '1468', '申请退款通知', '订单编号{{character_string4.DATA}}\n申请时间{{date5.DATA}}\n订单金额{{amount2.DATA}}\n退款状态{{phrase7.DATA}}\n备注{{thing8.DATA}}', 'NOfT3qoOS3hkSzwt2LJg_LnU0NBzwSHXkSwKdx6QDwc', '1575440940', '1');
INSERT INTO `eb_routine_template` VALUES ('14', '335', '积分到账提醒', '订单编号{{character_string2.DATA}}\n商品名称{{thing3.DATA}}\n支付金额{{amount4.DATA}}\n获得积分{{number5.DATA}}\n累计积分{{number6.DATA}}', 'TtdbifwMN-6D3hNld8jTc97A8Ohlqg4FtgmIgB28JPc', '1575516565', '1');
INSERT INTO `eb_routine_template` VALUES ('15', '3353', '拼团状态通知', '商品名称{{thing2.DATA}}\n拼团人数{{thing1.DATA}}\n备注{{thing3.DATA}}', 'LkYDDYO-HQKT7NydGjrN7AJ1OUCf3mgZf3otVruhxOo', '1575516605', '1');
INSERT INTO `eb_routine_template` VALUES ('18', '1', '验证码', '【文思特】您的验证码是：{$code}，有效期为1分钟。如非本人操作，可不用理会。', '518076', '1588735817', '0');

-- ----------------------------
-- Table structure for eb_store_bargain
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain`;
CREATE TABLE `eb_store_bargain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',
  `product_id` int(11) unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `stock` int(11) unsigned DEFAULT NULL COMMENT '库存',
  `sales` int(11) unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(2000) NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int(11) unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int(11) unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费',
  `rule` text COMMENT '砍价规则',
  `look` int(11) unsigned DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int(11) unsigned DEFAULT '0' COMMENT '砍价产品分享量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价表';

-- ----------------------------
-- Records of eb_store_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_bargain_user
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain_user`;
CREATE TABLE `eb_store_bargain_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '参与时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否取消',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户参与砍价表';

-- ----------------------------
-- Records of eb_store_bargain_user
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_bargain_user_help
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain_user_help`;
CREATE TABLE `eb_store_bargain_user_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int(11) unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价用户帮助表';

-- ----------------------------
-- Records of eb_store_bargain_user_help
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_cart
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_cart`;
CREATE TABLE `eb_store_cart` (
  `id` bigint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(16) NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int(11) unsigned DEFAULT '0' COMMENT '拼团id',
  `seckill_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '砍价id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`uid`) USING BTREE,
  KEY `goods_id` (`product_id`) USING BTREE,
  KEY `uid` (`uid`,`is_pay`) USING BTREE,
  KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of eb_store_cart
-- ----------------------------
INSERT INTO `eb_store_cart` VALUES ('4', '3', 'product', '2', '', '1', '1588714783', '0', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('6', '3', 'product', '2', '', '1', '1588714885', '1', '0', '0', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('7', '3', 'product', '1', '', '1', '1588717796', '1', '0', '0', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('9', '1', 'product', '2', '', '1', '1588718481', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('10', '5', 'product', '1', '', '1', '1588748738', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('11', '1', 'product', '2', '', '1', '1588785419', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('12', '1', 'product', '2', '', '1', '1588818065', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('13', '1', 'product', '2', '', '1', '1588819898', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('14', '1', 'product', '2', '', '1', '1588849905', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('15', '1', 'product', '2', '', '1', '1588883204', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('16', '21', 'product', '1', '', '1', '1588909490', '0', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('17', '20', 'product', '2', '', '1', '1588909957', '1', '0', '1', '0', '0', '0');
INSERT INTO `eb_store_cart` VALUES ('18', '1', 'product', '2', '', '1', '1588928745', '0', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for eb_store_category
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_category`;
CREATE TABLE `eb_store_category` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',
  `pid` mediumint(11) NOT NULL COMMENT '父id',
  `cate_name` varchar(100) NOT NULL COMMENT '分类名称',
  `sort` mediumint(11) NOT NULL COMMENT '排序',
  `pic` varchar(128) NOT NULL DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_base` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of eb_store_category
-- ----------------------------
INSERT INTO `eb_store_category` VALUES ('1', '0', '热门推荐', '2', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg', '1', '1547205038');
INSERT INTO `eb_store_category` VALUES ('2', '1', '热门促销', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg', '1', '1547205055');
INSERT INTO `eb_store_category` VALUES ('3', '1', '折扣专区', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg', '1', '1547550363');
INSERT INTO `eb_store_category` VALUES ('4', '1', '新品上线', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc6a38fab.jpg', '1', '1553783295');
INSERT INTO `eb_store_category` VALUES ('6', '0', '居家生活', '1', 'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg', '1', '1553783609');
INSERT INTO `eb_store_category` VALUES ('7', '6', '床垫', '1', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9de8b7c5cc5.png', '1', '1553784473');
INSERT INTO `eb_store_category` VALUES ('8', '6', '灯具', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9def00c2882.png', '1', '1553784490');
INSERT INTO `eb_store_category` VALUES ('19', '6', '家具', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9def5fa968c.png', '1', '1553854308');
INSERT INTO `eb_store_category` VALUES ('20', '6', '床品件套', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df11e13742.png', '1', '1553854755');
INSERT INTO `eb_store_category` VALUES ('21', '6', '家饰花卉', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df170010cb.png', '1', '1553854835');
INSERT INTO `eb_store_category` VALUES ('22', '6', '布艺软装', '0', 'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df1b8f0a7a.png', '1', '1553854908');

-- ----------------------------
-- Table structure for eb_store_combination
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination`;
CREATE TABLE `eb_store_combination` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(2000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `attr` varchar(255) DEFAULT NULL COMMENT '活动属性',
  `people` int(2) unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `is_host` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `combination` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint(1) unsigned DEFAULT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint(1) unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text NOT NULL COMMENT '拼团内容',
  `start_time` int(11) unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '拼团结束时间',
  `effective_time` int(11) NOT NULL DEFAULT '0' COMMENT '拼团订单有效时间',
  `cost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '拼图产品成本',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  `unit_name` varchar(32) NOT NULL DEFAULT '' COMMENT '单位名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团产品表';

-- ----------------------------
-- Records of eb_store_combination
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_combination_attr
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr`;
CREATE TABLE `eb_store_combination_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of eb_store_combination_attr
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_combination_attr_result
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr_result`;
CREATE TABLE `eb_store_combination_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

-- ----------------------------
-- Records of eb_store_combination_attr_result
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_combination_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr_value`;
CREATE TABLE `eb_store_combination_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
-- Records of eb_store_combination_attr_value
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_coupon
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon`;
CREATE TABLE `eb_store_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) NOT NULL COMMENT '优惠券名称',
  `integral` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int(11) unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `state` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `coupon_time` (`coupon_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of eb_store_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_coupon_issue
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_issue`;
CREATE TABLE `eb_store_coupon_issue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int(10) DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int(10) DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int(10) DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int(10) DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) DEFAULT NULL COMMENT '优惠券添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  KEY `remain_count` (`remain_count`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券前台领取表';

-- ----------------------------
-- Records of eb_store_coupon_issue
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_coupon_issue_user
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_issue_user`;
CREATE TABLE `eb_store_coupon_issue_user` (
  `uid` int(10) DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int(10) DEFAULT NULL COMMENT '领取时间',
  UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券前台用户领取记录表';

-- ----------------------------
-- Records of eb_store_coupon_issue_user
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_user`;
CREATE TABLE `eb_store_coupon_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int(11) unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(11) unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `end_time` (`end_time`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_fail` (`is_fail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券发放记录表';

-- ----------------------------
-- Records of eb_store_coupon_user
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_order
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order`;
CREATE TABLE `eb_store_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `freight_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `total_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int(11) unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) NOT NULL COMMENT '支付方式 ',
  `add_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款;9：继售）',
  `refund_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(11) unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_name` varchar(64) DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `combination_id` int(11) unsigned DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned DEFAULT '0' COMMENT '砍价id',
  `verify_code` varchar(12) NOT NULL DEFAULT '' COMMENT '核销码',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店id',
  `shipping_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配送方式 1=快递 ，2=门店自提',
  `is_channel` tinyint(1) unsigned DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)',
  `is_remind` tinyint(1) unsigned DEFAULT '0' COMMENT '消息提醒',
  `is_system_del` tinyint(1) DEFAULT '0' COMMENT '后台是否删除',
  `is_sale` tinyint(1) DEFAULT '0' COMMENT '是否继售 0否1是 继售比例',
  `is_sale_valid` tinyint(1) DEFAULT '0' COMMENT '用户发起继售审核  0未提交 1已提交 未审核 2通过 3拒绝',
  `is_pay_valid` tinyint(1) DEFAULT '0' COMMENT '用户已经付款审核 0未提交 1已提交 未审核 2通过 3拒绝',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  UNIQUE KEY `unique` (`unique`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pay_price` (`pay_price`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `pay_time` (`pay_time`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of eb_store_order
-- ----------------------------
INSERT INTO `eb_store_order` VALUES ('7', 'wx158881990419869316', '1', '123', '13631200958', '广东 珠海市 金湾区 唐家湾镇华发人才公寓2栋1202', '[13]', '0.00', '1', '7888.00', '0.00', '7888.00', '0.00', '0.00', '0', '0.00', '1', '1588819948', 'payh5code', '1588819904', '3', '0', '[\"http:\\/\\/wst.com\\/uploads\\/store\\/comment\\/20200507\\/e00f692b12c1744f86e8ae1cef100d16.png\"]', '666', '1588820009', '收货地址填错了', null, '0.00', null, null, null, '20.00', '0.00', null, '', '0', '990d8083ebbdcbe7c9f061d265483168', null, '0', '0', '0', '0', '6900.00', '0', '0', '', '0', '1', '2', '0', '0', '0', '3', '2');
INSERT INTO `eb_store_order` VALUES ('9', 'wx158888320849913740', '1', '123', '13631200958', '广东 珠海市 金湾区 唐家湾镇华发人才公寓2栋1202', '[15]', '0.00', '1', '7888.00', '0.00', '7888.00', '0.00', '0.00', '0', '0.00', '1', '1588819948', 'payh5code', '1588883208', '3', '0', null, null, null, null, null, '0.00', null, null, null, '20.00', '0.00', null, '', '0', '59bfaadc0a18e8d70f06d663f9df057f', null, '0', '0', '0', '0', '6900.00', '0', '0', '', '0', '1', '2', '1', '0', '10', '2', '2');
INSERT INTO `eb_store_order` VALUES ('10', 'wx158890999189333564', '20', '1363125125', '13631200958', '上海 闸北区 城区 111', '[17]', '0.00', '1', '10498.93', '0.00', '10498.93', '0.00', '0.00', '0', '0.00', '1', '1588910515', 'payh5code', '1588909991', '0', '0', null, null, null, null, null, '0.00', null, null, null, '20.00', '0.00', null, '', '0', 'ab321fd247cae0006733b5cdc25cbb86', null, '0', '0', '0', '0', '9183.90', '0', '0', '', '0', '1', '2', '1', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for eb_store_order_cart_info
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order_cart_info`;
CREATE TABLE `eb_store_order_cart_info` (
  `oid` int(11) unsigned NOT NULL COMMENT '订单id',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text NOT NULL COMMENT '购买东西的详细信息',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  KEY `cart_id` (`cart_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单购物详情表';

-- ----------------------------
-- Records of eb_store_order_cart_info
-- ----------------------------
INSERT INTO `eb_store_order_cart_info` VALUES ('4', '10', '1', '{\"id\":10,\"type\":\"product\",\"product_id\":1,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":1,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/d3453e47e22d113bb9d0c72524e136ab.png\",\"price\":\"2892.00\",\"ot_price\":\"3100.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"15.00\",\"sales\":2,\"stock\":886,\"store_name\":\"\\u534e\\u4e3a4G\\u624b\\u673a\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"2500.00\"},\"truePrice\":2892,\"vip_truePrice\":0,\"trueStock\":886,\"costPrice\":\"2500.00\"}', 'c9e1074f5b3f9fc8ea15d152add07294');
INSERT INTO `eb_store_order_cart_info` VALUES ('5', '11', '2', '{\"id\":11,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"7888.00\",\"ot_price\":\"8150.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":2,\"stock\":2553,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"6900.00\"},\"truePrice\":7888,\"vip_truePrice\":0,\"trueStock\":2553,\"costPrice\":\"6900.00\"}', '2b44928ae11fb9384c4cf38708677c48');
INSERT INTO `eb_store_order_cart_info` VALUES ('6', '12', '2', '{\"id\":12,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"7888.00\",\"ot_price\":\"8150.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":2,\"stock\":2553,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"6900.00\"},\"truePrice\":7888,\"vip_truePrice\":0,\"trueStock\":2553,\"costPrice\":\"6900.00\"}', '069059b7ef840f0c74a814ec9237b6ec');
INSERT INTO `eb_store_order_cart_info` VALUES ('7', '13', '2', '{\"id\":13,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"7888.00\",\"ot_price\":\"8150.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":3,\"stock\":2552,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"6900.00\"},\"truePrice\":7888,\"vip_truePrice\":0,\"trueStock\":2552,\"costPrice\":\"6900.00\"}', '3988c7f88ebcb58c6ce932b957b6f332');
INSERT INTO `eb_store_order_cart_info` VALUES ('8', '14', '2', '{\"id\":14,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"7888.00\",\"ot_price\":\"8150.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":4,\"stock\":2551,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"6900.00\"},\"truePrice\":7888,\"vip_truePrice\":0,\"trueStock\":2551,\"costPrice\":\"6900.00\"}', '47d1e990583c9c67424d369f3414728e');
INSERT INTO `eb_store_order_cart_info` VALUES ('9', '15', '2', '{\"id\":15,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"7888.00\",\"ot_price\":\"8150.00\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":5,\"stock\":2550,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"6900.00\"},\"truePrice\":7888,\"vip_truePrice\":0,\"trueStock\":2550,\"costPrice\":\"6900.00\"}', '140f6969d5213fd0ece03148e62e461e');
INSERT INTO `eb_store_order_cart_info` VALUES ('10', '17', '2', '{\"id\":17,\"type\":\"product\",\"product_id\":2,\"product_attr_unique\":\"\",\"cart_num\":1,\"combination_id\":0,\"seckill_id\":0,\"bargain_id\":0,\"productInfo\":{\"id\":2,\"image\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\",\"price\":\"10498.93\",\"ot_price\":\"10847.65\",\"vip_price\":\"0.00\",\"postage\":\"0.00\",\"give_integral\":\"20.00\",\"sales\":6,\"stock\":2552,\"store_name\":\"\\u5916\\u661f\\u4eba\\u7b14\\u8bb0\\u672c\",\"unit_name\":\"\\u4ef6\",\"is_postage\":1,\"cost\":\"9183.90\"},\"truePrice\":10498.93,\"vip_truePrice\":0,\"trueStock\":2552,\"costPrice\":\"9183.90\"}', '5a142a55461d5fef016acfb927fee0bd');

-- ----------------------------
-- Table structure for eb_store_order_sale_pic
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order_sale_pic`;
CREATE TABLE `eb_store_order_sale_pic` (
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `type` tinyint(1) NOT NULL COMMENT '操作类型  1确认付款 2确认继售',
  `message` varchar(256) NOT NULL COMMENT '备注',
  `pics` text COMMENT '图片集合',
  `time` int(10) unsigned NOT NULL COMMENT '操作时间',
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单继售记录表\r\n';

-- ----------------------------
-- Records of eb_store_order_sale_pic
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_order_status
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order_status`;
CREATE TABLE `eb_store_order_status` (
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) NOT NULL COMMENT '操作备注',
  `change_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`change_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

-- ----------------------------
-- Records of eb_store_order_status
-- ----------------------------
INSERT INTO `eb_store_order_status` VALUES ('4', 'cache_key_create_order', '订单生成', '1588748795');
INSERT INTO `eb_store_order_status` VALUES ('5', 'cache_key_create_order', '订单生成', '1588785548');
INSERT INTO `eb_store_order_status` VALUES ('5', 'user_take_delivery', '用户已收货', '1588785877');
INSERT INTO `eb_store_order_status` VALUES ('5', 'check_order_over', '用户评价', '1588786013');
INSERT INTO `eb_store_order_status` VALUES ('5', 'offline', '线下付款', '1588816016');
INSERT INTO `eb_store_order_status` VALUES ('6', 'cache_key_create_order', '订单生成', '1588818072');
INSERT INTO `eb_store_order_status` VALUES ('6', 'payh5code', '拒绝确实收款', '1588819068');
INSERT INTO `eb_store_order_status` VALUES ('6', 'payh5code', '拒绝确实收款', '1588819238');
INSERT INTO `eb_store_order_status` VALUES ('7', 'cache_key_create_order', '订单生成', '1588819904');
INSERT INTO `eb_store_order_status` VALUES ('7', 'payh5code', '线下确认付款', '1588819948');
INSERT INTO `eb_store_order_status` VALUES ('7', 'apply_refund', '用户申请退款，原因：收货地址填错了', '1588820009');
INSERT INTO `eb_store_order_status` VALUES ('8', 'cache_key_create_order', '订单生成', '1588849911');
INSERT INTO `eb_store_order_status` VALUES ('8', 'payh5code', '线下确认付款', '1588849947');
INSERT INTO `eb_store_order_status` VALUES ('9', 'cache_key_create_order', '订单生成', '1588883208');
INSERT INTO `eb_store_order_status` VALUES ('9', 'payh5code', '拒绝确实收款', '1588883272');
INSERT INTO `eb_store_order_status` VALUES ('9', 'is_sale', '拒绝确定收款', '1588892697');
INSERT INTO `eb_store_order_status` VALUES ('9', 'is_sale', '继售订单', '1588892916');
INSERT INTO `eb_store_order_status` VALUES ('10', 'cache_key_create_order', '订单生成', '1588909991');
INSERT INTO `eb_store_order_status` VALUES ('10', 'payh5code', '线下确认付款', '1588910020');
INSERT INTO `eb_store_order_status` VALUES ('10', 'payh5code', '线下确认付款', '1588910349');
INSERT INTO `eb_store_order_status` VALUES ('10', 'payh5code', '线下确认付款', '1588910515');

-- ----------------------------
-- Table structure for eb_store_pink
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_pink`;
CREATE TABLE `eb_store_pink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) NOT NULL COMMENT '订单id 生成',
  `order_id_key` int(10) unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int(10) unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int(10) unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int(10) unsigned NOT NULL COMMENT '产品id',
  `people` int(10) unsigned NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) NOT NULL,
  `k_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团表';

-- ----------------------------
-- Records of eb_store_pink
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_product
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product`;
CREATE TABLE `eb_store_product` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(256) NOT NULL COMMENT '商品图片',
  `slider_image` varchar(2000) NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) NOT NULL COMMENT '关键字',
  `bar_code` varchar(15) NOT NULL DEFAULT '' COMMENT '产品条码（一维码）',
  `cate_id` varchar(64) NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) NOT NULL COMMENT '单位名',
  `sort` smallint(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sales` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `description` text NOT NULL COMMENT '产品描述',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned NOT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `is_seckill` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint(1) unsigned DEFAULT NULL COMMENT '砍价状态 0未开启 1开启',
  `is_good` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优品推荐',
  `ficti` mediumint(11) DEFAULT '100' COMMENT '虚拟销量',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  `code_path` varchar(64) NOT NULL DEFAULT '' COMMENT '产品二维码地址(用户小程序海报)',
  `soure_link` varchar(255) DEFAULT '' COMMENT '淘宝京东1688类型',
  `uuid` int(11) DEFAULT '0' COMMENT '继售用户id',
  `order_id` int(11) DEFAULT '0' COMMENT '订单号 记录继售的订单源',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cate_id` (`cate_id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_benefit` (`is_benefit`) USING BTREE,
  KEY `is_best` (`is_best`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE,
  KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  KEY `price` (`price`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `sales` (`sales`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of eb_store_product
-- ----------------------------
INSERT INTO `eb_store_product` VALUES ('1', '0', 'http://wensiting.target-gd.com/uploads/attach/2020/05/20200506/4c437ab920793af21385bb95a3163ee9.png', '[\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/56cce98a806200b8712aad6e0975208f.png\"]', '华为4G手机', '华为4G超大屏手机', '4G', '123123456852', '', '2892.00', '0.00', '3100.00', '0.00', '件', '1', '2', '886', '1', '1', '1', '1', '1', '', '1588708764', '1', '0', '0', '15.00', '2500.00', '0', null, '1', '56', '0', '', '', '0', '0');
INSERT INTO `eb_store_product` VALUES ('2', '0', 'http://wensiting.target-gd.com/uploads/attach/2020/05/20200506/ac49fff90ed514e721204b8e003ce99c.png', '[\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/949fef853c821ab92acd508f325b2c89.png\"]', '外星人笔记本', '外星人笔记本64G8核17.5寸大屏笔记本', '笔记本', '8670265', '', '10498.93', '0.00', '10847.65', '0.00', '件', '1', '7', '2551', '1', '1', '1', '1', '1', '', '1588709144', '1', '0', '0', '20.00', '9183.90', '0', null, '1', '255', '0', '', '', '0', '0');

-- ----------------------------
-- Table structure for eb_store_product_attr
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr`;
CREATE TABLE `eb_store_product_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of eb_store_product_attr
-- ----------------------------
INSERT INTO `eb_store_product_attr` VALUES ('3', '容量', '3L,4L');
INSERT INTO `eb_store_product_attr` VALUES ('3', '颜色', '白色,黑色');
INSERT INTO `eb_store_product_attr` VALUES ('15', '颜色', '黑色,白色,紫色');
INSERT INTO `eb_store_product_attr` VALUES ('15', '规则', '大,小');
INSERT INTO `eb_store_product_attr` VALUES ('7', '1', '2,3');
INSERT INTO `eb_store_product_attr` VALUES ('7', '3', '1');
INSERT INTO `eb_store_product_attr` VALUES ('8', '1', '1,3');
INSERT INTO `eb_store_product_attr` VALUES ('8', '2', '2');

-- ----------------------------
-- Table structure for eb_store_product_attr_result
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr_result`;
CREATE TABLE `eb_store_product_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

-- ----------------------------
-- Records of eb_store_product_attr_result
-- ----------------------------
INSERT INTO `eb_store_product_attr_result` VALUES ('3', '{\"attr\":[{\"value\":\"\\u5bb9\\u91cf\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"3L\",\"4L\"]},{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u767d\\u8272\",\"\\u9ed1\\u8272\"]}],\"value\":[{\"detail\":{\"\\u5bb9\\u91cf\":\"3L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":249,\"sales\":20,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false},{\"detail\":{\"\\u5bb9\\u91cf\":\"4L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":299,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false}]}', '1559378824');
INSERT INTO `eb_store_product_attr_result` VALUES ('7', '{\"attr\":[{\"value\":\"1\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"2\",\"3\"]},{\"value\":\"3\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"1\"]}],\"value\":[{\"detail\":{\"1\":\"2\",\"3\":\"1\"},\"cost\":\"1000.00\",\"price\":\"100.00\",\"sales\":76,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2a1ece45e307f274e3384410a3bd3a.jpg\",\"check\":false},{\"detail\":{\"1\":\"3\",\"3\":\"1\"},\"cost\":\"1000.00\",\"price\":\"100.00\",\"sales\":76,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2a1ece45e307f274e3384410a3bd3a.jpg\",\"check\":false}]}', '1565665933');
INSERT INTO `eb_store_product_attr_result` VALUES ('8', '{\"attr\":[{\"value\":\"1\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"1\",\"3\"]},{\"value\":\"2\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"2\"]}],\"value\":[{\"detail\":{\"1\":\"1\",\"2\":\"2\"},\"cost\":\"1000.00\",\"price\":\"0.00\",\"sales\":982,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/71e85589cb7d3398d08f0d55bdb9031d.jpg\",\"check\":false},{\"detail\":{\"1\":\"3\",\"2\":\"2\"},\"cost\":\"1000.00\",\"price\":\"0.00\",\"sales\":982,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/71e85589cb7d3398d08f0d55bdb9031d.jpg\",\"check\":false}]}', '1565680773');
INSERT INTO `eb_store_product_attr_result` VALUES ('9', '{\"attr\":[{\"value\":\"\\u914d\\u7f6e\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"i7-9750H 512GSSD RGB\\u952e\\u76d8 GTX1650\",\"i7-9750H 8G 512GSSD GTX1050\",\"i5-9300H 8G 512GSSD GTX1050)\"]}],\"value\":[{\"detail\":{\"\\u914d\\u7f6e\":\"i7-9750H 512GSSD RGB\\u952e\\u76d8 GTX1650\"},\"cost\":\"1000.00\",\"price\":\"1000.00\",\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false},{\"detail\":{\"\\u914d\\u7f6e\":\"i7-9750H 8G 512GSSD GTX1050\"},\"cost\":\"1000.00\",\"price\":900,\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false},{\"detail\":{\"\\u914d\\u7f6e\":\"i5-9300H 8G 512GSSD GTX1050)\"},\"cost\":\"1000.00\",\"price\":800,\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false}]}', '1565172349');
INSERT INTO `eb_store_product_attr_result` VALUES ('15', '{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u9ed1\\u8272\",\"\\u767d\\u8272\",\"\\u7d2b\\u8272\"]},{\"value\":\"\\u89c4\\u5219\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u5927\",\"\\u5c0f\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"price\":70,\"cost\":\"5.00\",\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":60,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"cost\":\"5.00\",\"price\":50,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":40,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u7d2b\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"cost\":\"5.00\",\"price\":10,\"sales\":202,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u7d2b\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":20,\"sales\":200,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false}]}', '1563346586');

-- ----------------------------
-- Table structure for eb_store_product_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr_value`;
CREATE TABLE `eb_store_product_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `bar_code` varchar(50) NOT NULL DEFAULT '' COMMENT '产品条码',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
-- Records of eb_store_product_attr_value
-- ----------------------------
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '小,白色', '997', '1', '40.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '08af4c92', '5.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '大,黑色', '993', '5', '70.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '1bf9fad8', '5.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('8', '1,2', '980', '2', '0.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '304d1fc7', '1000.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('8', '2,3', '982', '0', '0.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '5fe3af25', '1000.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('7', '1,2', '75', '1', '100.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '76862ff5', '1000.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '大,紫色', '202', '0', '10.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', '7a06e7f9', '5.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('3', '4L,黑色', '957', '42', '299.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'aa5915e8', '10.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('3', '3L,黑色', '0', '20', '249.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'c1fd48a6', '10.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '小,紫色', '195', '5', '20.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'd630e29a', '5.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('7', '1,3', '76', '0', '100.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'd7b47f88', '1000.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '小,黑色', '997', '1', '60.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'e4d9a758', '5.00', '');
INSERT INTO `eb_store_product_attr_value` VALUES ('15', '大,白色', '997', '1', '50.00', 'http://wst.com/uploads/attach/2020/05/20200502/849a983f81e8d907e7a51f67c68275f3.png', 'f208c727', '5.00', '');

-- ----------------------------
-- Table structure for eb_store_product_cate
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_cate`;
CREATE TABLE `eb_store_product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT '产品id',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品分类辅助表';

-- ----------------------------
-- Records of eb_store_product_cate
-- ----------------------------
INSERT INTO `eb_store_product_cate` VALUES ('1', '20', '0', '1588614018');
INSERT INTO `eb_store_product_cate` VALUES ('4', '2', '0', '1588920742');
INSERT INTO `eb_store_product_cate` VALUES ('5', '1', '0', '1588920808');

-- ----------------------------
-- Table structure for eb_store_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_relation`;
CREATE TABLE `eb_store_product_relation` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  UNIQUE KEY `uid` (`uid`,`product_id`,`type`,`category`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品点赞和收藏表';

-- ----------------------------
-- Records of eb_store_product_relation
-- ----------------------------
INSERT INTO `eb_store_product_relation` VALUES ('1', '2', 'collect', 'product', '1588709630');
INSERT INTO `eb_store_product_relation` VALUES ('1', '3', 'collect', 'product', '1588641598');

-- ----------------------------
-- Table structure for eb_store_product_reply
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_reply`;
CREATE TABLE `eb_store_product_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `oid` int(11) NOT NULL COMMENT '订单ID',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `pics` text NOT NULL COMMENT '评论图片',
  `add_time` int(11) NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) DEFAULT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int(11) DEFAULT NULL COMMENT '管理员回复时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `parent_id` (`reply_type`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `product_score` (`product_score`) USING BTREE,
  KEY `service_score` (`service_score`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of eb_store_product_reply
-- ----------------------------
INSERT INTO `eb_store_product_reply` VALUES ('1', '1', '5', '2b44928ae11fb9384c4cf38708677c48', '2', 'product', '5', '5', '555555', '[\"http:\\/\\/wst.com\\/uploads\\/store\\/comment\\/20200507\\/91c168e6d5b45db5529ddb8b7ad915ef.png\"]', '1588786012', null, null, '0', '0');

-- ----------------------------
-- Table structure for eb_store_seckill
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill`;
CREATE TABLE `eb_store_seckill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(2000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text COMMENT '内容',
  `start_time` varchar(128) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(128) NOT NULL COMMENT '结束时间',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int(11) unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `start_time` (`start_time`,`stop_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_show` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品秒杀产品表';

-- ----------------------------
-- Records of eb_store_seckill
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_seckill_attr
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr`;
CREATE TABLE `eb_store_seckill_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性表';

-- ----------------------------
-- Records of eb_store_seckill_attr
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_seckill_attr_result
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr_result`;
CREATE TABLE `eb_store_seckill_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性详情表';

-- ----------------------------
-- Records of eb_store_seckill_attr_result
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_seckill_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr_value`;
CREATE TABLE `eb_store_seckill_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性值表';

-- ----------------------------
-- Records of eb_store_seckill_attr_value
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_service
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_service`;
CREATE TABLE `eb_store_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `uid` int(11) NOT NULL COMMENT '客服uid',
  `avatar` varchar(250) NOT NULL COMMENT '客服头像',
  `nickname` varchar(50) NOT NULL COMMENT '代理名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0隐藏1显示',
  `notify` int(2) DEFAULT '0' COMMENT '订单通知1开启0关闭',
  `customer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示统计管理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服表';

-- ----------------------------
-- Records of eb_store_service
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_service_log
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_service_log`;
CREATE TABLE `eb_store_service_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服用户对话记录表ID',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `msn` text NOT NULL COMMENT '消息内容',
  `uid` int(11) NOT NULL COMMENT '发送人uid',
  `to_uid` int(11) NOT NULL COMMENT '接收人uid',
  `add_time` int(11) NOT NULL COMMENT '发送时间',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读（0：否；1：是；）',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否提醒过',
  `msn_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '消息类型 1=文字 2=表情 3=图片 4=语音',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服用户对话记录表';

-- ----------------------------
-- Records of eb_store_service_log
-- ----------------------------

-- ----------------------------
-- Table structure for eb_store_visit
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_visit`;
CREATE TABLE `eb_store_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) DEFAULT NULL COMMENT '产品类型',
  `cate_id` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) DEFAULT NULL COMMENT '产品类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `count` int(11) DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品浏览分析表';

-- ----------------------------
-- Records of eb_store_visit
-- ----------------------------
INSERT INTO `eb_store_visit` VALUES ('1', '2', null, '0', 'viwe', '1', '24', '', '1588928733');
INSERT INTO `eb_store_visit` VALUES ('2', '1', null, '0', 'viwe', '1', '3', '', '1588718490');
INSERT INTO `eb_store_visit` VALUES ('3', '2', null, '0', 'viwe', '3', '24', '', '1588717468');
INSERT INTO `eb_store_visit` VALUES ('4', '1', null, '0', 'viwe', '3', '8', '', '1588717794');
INSERT INTO `eb_store_visit` VALUES ('5', '2', null, '0', 'viwe', '0', '20', '', '1588928416');
INSERT INTO `eb_store_visit` VALUES ('6', '1', null, '0', 'viwe', '5', '1', '', '1588748728');
INSERT INTO `eb_store_visit` VALUES ('7', '2', null, '0', 'viwe', '7', '2', '', '1588906484');
INSERT INTO `eb_store_visit` VALUES ('8', '2', null, '0', 'viwe', '16', '2', '', '1588907393');
INSERT INTO `eb_store_visit` VALUES ('9', '2', null, '0', 'viwe', '21', '1', '', '1588909480');
INSERT INTO `eb_store_visit` VALUES ('10', '1', null, '0', 'viwe', '21', '2', '', '1588909581');
INSERT INTO `eb_store_visit` VALUES ('11', '2', null, '0', 'viwe', '20', '1', '', '1588909955');
INSERT INTO `eb_store_visit` VALUES ('12', '1', null, '0', 'viwe', '0', '3', '', '1589297508');
INSERT INTO `eb_store_visit` VALUES ('13', '2', null, '0', 'viwe', '24', '1', '', '1588928442');

-- ----------------------------
-- Table structure for eb_system_admin
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_admin`;
CREATE TABLE `eb_system_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) unsigned DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '后台管理员添加时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

-- ----------------------------
-- Records of eb_system_admin
-- ----------------------------
INSERT INTO `eb_system_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '1', '10.0.83.12', '1589359815', '1586576163', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for eb_system_attachment
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_attachment`;
CREATE TABLE `eb_system_attachment` (
  `att_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '附件名称',
  `att_dir` varchar(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `satt_dir` varchar(200) DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) NOT NULL DEFAULT '' COMMENT '附件大小',
  `att_type` char(30) NOT NULL DEFAULT '' COMMENT '附件类型',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '上传时间',
  `image_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '图片上传类型 1本地 2七牛云 3OSS 4COS ',
  `module_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '图片上传模块类型 1 后台上传 2 用户生成',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='附件管理表';

-- ----------------------------
-- Records of eb_system_attachment
-- ----------------------------
INSERT INTO `eb_system_attachment` VALUES ('1', 'a20e7c4dbf0107bb327b0a448c5cb68c.png', '/uploads/attach/2020/05/20200506/a20e7c4dbf0107bb327b0a448c5cb68c.png', '/uploads/attach/2020/05/20200506/s_a20e7c4dbf0107bb327b0a448c5cb68c.png', '11135', 'image/png', '0', '1588707618', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('2', 'aef7d51b869f7ba77d8d6f1a2be3fac6.png', '/uploads/attach/2020/05/20200506/aef7d51b869f7ba77d8d6f1a2be3fac6.png', '/uploads/attach/2020/05/20200506/s_aef7d51b869f7ba77d8d6f1a2be3fac6.png', '42283', 'image/png', '0', '1588707959', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('3', 'eca7ce2890cede44d200c510c2d0c488.png', '/uploads/attach/2020/05/20200506/eca7ce2890cede44d200c510c2d0c488.png', '/uploads/attach/2020/05/20200506/s_eca7ce2890cede44d200c510c2d0c488.png', '574545', 'image/png', '0', '1588707993', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('4', '7e0f0fbc36ea165bd3b64fd131b0de6e.png', '/uploads/attach/2020/05/20200506/7e0f0fbc36ea165bd3b64fd131b0de6e.png', '/uploads/attach/2020/05/20200506/s_7e0f0fbc36ea165bd3b64fd131b0de6e.png', '302798', 'image/png', '0', '1588708047', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('5', '7634ea95c37ae8a52fe4cce528fbb228.png', '/uploads/attach/2020/05/20200506/7634ea95c37ae8a52fe4cce528fbb228.png', '/uploads/attach/2020/05/20200506/s_7634ea95c37ae8a52fe4cce528fbb228.png', '615424', 'image/png', '0', '1588708116', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('6', '94c4d3af2c5ec6534ddaafca47af322a.png', '/uploads/attach/2020/05/20200506/94c4d3af2c5ec6534ddaafca47af322a.png', '/uploads/attach/2020/05/20200506/s_94c4d3af2c5ec6534ddaafca47af322a.png', '343722', 'image/png', '0', '1588708158', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('7', '911cb3d5b27df3f8231e59d393cde989.png', '/uploads/attach/2020/05/20200506/911cb3d5b27df3f8231e59d393cde989.png', '/uploads/attach/2020/05/20200506/s_911cb3d5b27df3f8231e59d393cde989.png', '286828', 'image/png', '0', '1588708203', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('8', '1f355eb2583ad1369446e38dbc5cad32.png', '/uploads/attach/2020/05/20200506/1f355eb2583ad1369446e38dbc5cad32.png', '/uploads/attach/2020/05/20200506/s_1f355eb2583ad1369446e38dbc5cad32.png', '315078', 'image/png', '0', '1588708252', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('9', '56cce98a806200b8712aad6e0975208f.png', '/uploads/attach/2020/05/20200506/56cce98a806200b8712aad6e0975208f.png', '/uploads/attach/2020/05/20200506/s_56cce98a806200b8712aad6e0975208f.png', '253831', 'image/png', '0', '1588708291', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('10', '4f0c0484de1c995b8aa39bdcfb85ce58.jpg', '/uploads/attach/2020/05/20200506/4f0c0484de1c995b8aa39bdcfb85ce58.jpg', '/uploads/attach/2020/05/20200506/s_4f0c0484de1c995b8aa39bdcfb85ce58.jpg', '97039', 'image/jpeg', '0', '1588708356', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('11', '318cb30befbf025a053bfbcecc4c8f38.jpg', '/uploads/attach/2020/05/20200506/318cb30befbf025a053bfbcecc4c8f38.jpg', '/uploads/attach/2020/05/20200506/s_318cb30befbf025a053bfbcecc4c8f38.jpg', '165730', 'image/jpeg', '0', '1588708384', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('12', 'd2dace0ea662eea727a7c0fb6ba78a7a.jpg', '/uploads/attach/2020/05/20200506/d2dace0ea662eea727a7c0fb6ba78a7a.jpg', '/uploads/attach/2020/05/20200506/s_d2dace0ea662eea727a7c0fb6ba78a7a.jpg', '154063', 'image/jpeg', '0', '1588708512', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('13', 'd3453e47e22d113bb9d0c72524e136ab.png', '/uploads/attach/2020/05/20200506/d3453e47e22d113bb9d0c72524e136ab.png', '/uploads/attach/2020/05/20200506/s_d3453e47e22d113bb9d0c72524e136ab.png', '255485', 'image/png', '0', '1588708648', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('14', '4c437ab920793af21385bb95a3163ee9.png', '/uploads/attach/2020/05/20200506/4c437ab920793af21385bb95a3163ee9.png', '/uploads/attach/2020/05/20200506/s_4c437ab920793af21385bb95a3163ee9.png', '266481', 'image/png', '0', '1588708670', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('15', '5a0aca8a5b52b24e47aa29314b23ba26.png', '/uploads/attach/2020/05/20200506/5a0aca8a5b52b24e47aa29314b23ba26.png', '/uploads/attach/2020/05/20200506/s_5a0aca8a5b52b24e47aa29314b23ba26.png', '45611', 'image/png', '0', '1588708687', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('16', '77b9164407fa1c499ca8961860038ef4.png', '/uploads/attach/2020/05/20200506/77b9164407fa1c499ca8961860038ef4.png', '/uploads/attach/2020/05/20200506/s_77b9164407fa1c499ca8961860038ef4.png', '315078', 'image/png', '0', '1588708703', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('17', '85491321b6d8fcb94e32df615f0eea71.png', '/uploads/attach/2020/05/20200506/85491321b6d8fcb94e32df615f0eea71.png', '/uploads/attach/2020/05/20200506/s_85491321b6d8fcb94e32df615f0eea71.png', '343722', 'image/png', '0', '1588708891', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('18', '1322bd50bd20dce5bf886b4d348d211f.png', '/uploads/attach/2020/05/20200506/1322bd50bd20dce5bf886b4d348d211f.png', '/uploads/attach/2020/05/20200506/s_1322bd50bd20dce5bf886b4d348d211f.png', '209482', 'image/png', '0', '1588708935', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('19', '72c341aefdf8e369e8c4a70abff0df1a.png', '/uploads/attach/2020/05/20200506/72c341aefdf8e369e8c4a70abff0df1a.png', '/uploads/attach/2020/05/20200506/s_72c341aefdf8e369e8c4a70abff0df1a.png', '343722', 'image/png', '0', '1588708961', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('20', '949fef853c821ab92acd508f325b2c89.png', '/uploads/attach/2020/05/20200506/949fef853c821ab92acd508f325b2c89.png', '/uploads/attach/2020/05/20200506/s_949fef853c821ab92acd508f325b2c89.png', '217265', 'image/png', '0', '1588709076', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('21', 'ac49fff90ed514e721204b8e003ce99c.png', '/uploads/attach/2020/05/20200506/ac49fff90ed514e721204b8e003ce99c.png', '/uploads/attach/2020/05/20200506/s_ac49fff90ed514e721204b8e003ce99c.png', '159552', 'image/png', '0', '1588709091', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('22', '0ee4ffe5ddb72bb30dd7b0bf6a314e67.png', '/uploads/attach/2020/05/20200506/0ee4ffe5ddb72bb30dd7b0bf6a314e67.png', '/uploads/attach/2020/05/20200506/s_0ee4ffe5ddb72bb30dd7b0bf6a314e67.png', '61559', 'image/png', '0', '1588709105', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('23', '2_product_detail_wap.jpg', '/uploads/qrcode/2_product_detail_wap.jpg', '/uploads/qrcode/2_product_detail_wap.jpg', '0', 'image/jpeg', '1', '1588709604', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('24', '2_product_detail_1_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_1_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_1_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588709610', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('25', '1_product_detail_wap.jpg', '/uploads/qrcode/1_product_detail_wap.jpg', '/uploads/qrcode/1_product_detail_wap.jpg', '0', 'image/jpeg', '1', '1588709644', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('26', '1_product_detail_1_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_1_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_1_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588709650', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('27', '2_product_detail_3_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_3_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_3_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588710939', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('28', '1_product_detail_3_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_3_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_3_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588711543', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('29', '5_0_user_wap.jpg', '/uploads/qrcode/5_0_user_wap.jpg', '/uploads/qrcode/5_0_user_wap.jpg', '0', 'image/jpeg', '1', '1588738753', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('30', '1_0_user_wap.jpg', '/uploads/qrcode/1_0_user_wap.jpg', '/uploads/qrcode/1_0_user_wap.jpg', '0', 'image/jpeg', '1', '1588738977', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('31', '1_product_detail_5_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_5_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_5_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588748735', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('32', '91c168e6d5b45db5529ddb8b7ad915ef.png', '/uploads/store/comment/20200507/91c168e6d5b45db5529ddb8b7ad915ef.png', '/uploads/store/comment/20200507/s_91c168e6d5b45db5529ddb8b7ad915ef.png', '184894', 'image/png', '1', '1588786004', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('33', 'e00f692b12c1744f86e8ae1cef100d16.png', '/uploads/store/comment/20200507/e00f692b12c1744f86e8ae1cef100d16.png', '/uploads/store/comment/20200507/s_e00f692b12c1744f86e8ae1cef100d16.png', '249964', 'image/png', '1', '1588820008', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('34', '2_product_detail_7_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_7_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_7_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588906075', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('35', '2_product_detail_16_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_16_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_16_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588907177', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('36', '2_product_detail_21_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_21_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_21_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588909481', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('37', '1_product_detail_21_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_21_is_promoter_0_wap.jpg', '/uploads/qrcode/1_product_detail_21_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588909488', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('38', '220_product_detail_wap.jpg', '/uploads/qrcode/220_product_detail_wap.jpg', '/uploads/qrcode/220_product_detail_wap.jpg', '0', 'image/jpeg', '1', '1588909955', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('39', '2_product_detail_20_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_20_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_20_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588909956', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('40', '648d92bcb810def7ba9a63eac14e9dbe.jpg', '/uploads/attach/2020/05/20200508/648d92bcb810def7ba9a63eac14e9dbe.jpg', '/uploads/attach/2020/05/20200508/s_648d92bcb810def7ba9a63eac14e9dbe.jpg', '30211', 'image/jpeg', '0', '1588920016', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('41', 'd8880d7209083675415ffedb82085378.jpg', '/uploads/attach/2020/05/20200508/d8880d7209083675415ffedb82085378.jpg', '/uploads/attach/2020/05/20200508/s_d8880d7209083675415ffedb82085378.jpg', '30211', 'image/jpeg', '0', '1588920073', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('42', '595099abf35b683166be21fde1fff29a.jpg', '/uploads/attach/2020/05/20200508/595099abf35b683166be21fde1fff29a.jpg', '/uploads/attach/2020/05/20200508/s_595099abf35b683166be21fde1fff29a.jpg', '30211', 'image/jpeg', '0', '1588920336', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('43', '930ecb5bbd57b2166738b38deb2cdc31.jpg', '/uploads/attach/2020/05/20200508/930ecb5bbd57b2166738b38deb2cdc31.jpg', '/uploads/attach/2020/05/20200508/s_930ecb5bbd57b2166738b38deb2cdc31.jpg', '21245', 'image/jpeg', '0', '1588920561', '1', '1');
INSERT INTO `eb_system_attachment` VALUES ('44', '224_product_detail_wap.jpg', '/uploads/qrcode/224_product_detail_wap.jpg', '/uploads/qrcode/224_product_detail_wap.jpg', '0', 'image/jpeg', '1', '1588928442', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('45', '2_product_detail_24_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_24_is_promoter_0_wap.jpg', '/uploads/qrcode/2_product_detail_24_is_promoter_0_wap.jpg', '0', 'image/jpeg', '1', '1588928443', '1', '2');
INSERT INTO `eb_system_attachment` VALUES ('46', '21_product_detail_wap.jpg', '/uploads/qrcode/21_product_detail_wap.jpg', '/uploads/qrcode/21_product_detail_wap.jpg', '0', 'image/jpeg', '1', '1588928733', '1', '2');

-- ----------------------------
-- Table structure for eb_system_attachment_category
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_attachment_category`;
CREATE TABLE `eb_system_attachment_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `enname` varchar(50) DEFAULT NULL COMMENT '分类目录',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件分类表';

-- ----------------------------
-- Records of eb_system_attachment_category
-- ----------------------------

-- ----------------------------
-- Table structure for eb_system_config
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_config`;
CREATE TABLE `eb_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `menu_name` varchar(255) NOT NULL COMMENT '字段名称',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '类型(文本框,单选按钮...)',
  `input_type` varchar(20) DEFAULT 'input' COMMENT '表单类型',
  `config_tab_id` int(10) unsigned NOT NULL COMMENT '配置分类id',
  `parameter` varchar(255) DEFAULT NULL COMMENT '规则 单选框和多选框',
  `upload_type` tinyint(1) unsigned DEFAULT NULL COMMENT '上传文件格式1单图2多图3文件',
  `required` varchar(255) DEFAULT NULL COMMENT '规则',
  `width` int(10) unsigned DEFAULT NULL COMMENT '多行文本框的宽度',
  `high` int(10) unsigned DEFAULT NULL COMMENT '多行文框的高度',
  `value` varchar(5000) DEFAULT NULL COMMENT '默认值',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '配置名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '配置简介',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
-- Records of eb_system_config
-- ----------------------------
INSERT INTO `eb_system_config` VALUES ('1', 'site_name', 'text', 'input', '1', '', '0', 'required:true', '100', '0', '\"\\u6587\\u601d\\u5ead\"', '网站名称', '网站名称', '0', '1');
INSERT INTO `eb_system_config` VALUES ('2', 'site_url', 'text', 'input', '1', '', '0', 'required:true,url:true', '100', '0', '\"http:\\/\\/wensiting.target-gd.com\"', '网站地址', '网站地址', '0', '1');
INSERT INTO `eb_system_config` VALUES ('3', 'site_logo', 'upload', null, '1', null, '1', null, '0', '0', '\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/a20e7c4dbf0107bb327b0a448c5cb68c.png\"', '后台LOGO', '左上角logo,建议尺寸[170*50]', '0', '1');
INSERT INTO `eb_system_config` VALUES ('4', 'site_phone', 'text', 'input', '1', '', '0', '', '100', '0', '\"\"', '联系电话', '联系电话', '0', '1');
INSERT INTO `eb_system_config` VALUES ('5', 'seo_title', 'text', 'input', '1', '', '0', 'required:true', '100', '0', '\"\"', 'SEO标题', 'SEO标题', '0', '1');
INSERT INTO `eb_system_config` VALUES ('6', 'site_email', 'text', 'input', '1', '', '0', 'email:true', '100', '0', '\"\"', '联系邮箱', '联系邮箱', '0', '1');
INSERT INTO `eb_system_config` VALUES ('7', 'site_qq', 'text', 'input', '1', '', '0', 'qq:true', '100', '0', '\"\"', '联系QQ', '联系QQ', '0', '1');
INSERT INTO `eb_system_config` VALUES ('8', 'site_close', 'radio', 'input', '1', '0=>开启\n1=>PC端关闭\n2=>WAP端关闭(含微信)\n3=>全部关闭', '0', '', '0', '0', '\"0\"', '网站关闭', '网站后台、商家中心不受影响。关闭网站也可访问', '0', '2');
INSERT INTO `eb_system_config` VALUES ('9', 'close_system', 'radio', 'input', '1', '0=>开启\n1=>关闭', '0', '', '0', '0', '\"0\"', '关闭后台', '关闭后台', '0', '2');
INSERT INTO `eb_system_config` VALUES ('13', 'wechat_appid', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\"\"', 'AppID', 'AppID', '0', '1');
INSERT INTO `eb_system_config` VALUES ('14', 'wechat_appsecret', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\"\"', 'AppSecret', 'AppSecret', '0', '1');
INSERT INTO `eb_system_config` VALUES ('15', 'wechat_token', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\"\"', '微信验证TOKEN', '微信验证TOKEN', '0', '1');
INSERT INTO `eb_system_config` VALUES ('16', 'wechat_encode', 'radio', 'input', '2', '0=>明文模式\n1=>兼容模式\n2=>安全模式', '0', '', '0', '0', '\"0\"', '消息加解密方式', '如需使用安全模式请在管理中心修改，仅限服务号和认证订阅号', '0', '1');
INSERT INTO `eb_system_config` VALUES ('17', 'wechat_encodingaeskey', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\"\"', 'EncodingAESKey', '公众号消息加解密Key,在使用安全模式情况下要填写该值，请先在管理中心修改，然后填写该值，仅限服务号和认证订阅号', '0', '1');
INSERT INTO `eb_system_config` VALUES ('18', 'wechat_share_img', 'upload', null, '2', null, '1', null, '0', '0', '\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200502\\/aaac6e25778b48ac9b913123f89ceefb.jpg\"', '微信分享图片', '若填写此图片地址，则分享网页出去时会分享此图片。可有效防止分享图片变形', '0', '1');
INSERT INTO `eb_system_config` VALUES ('19', 'wechat_qrcode', 'upload', 'input', '2', '', '1', '', '0', '0', '\"\"', '公众号二维码', '您的公众号二维码', '0', '1');
INSERT INTO `eb_system_config` VALUES ('20', 'wechat_type', 'radio', 'input', '2', '0=>服务号\n1=>订阅号', '0', '', '0', '0', '\"0\"', '公众号类型', '公众号的类型', '0', '1');
INSERT INTO `eb_system_config` VALUES ('21', 'wechat_share_title', 'text', 'input', '2', null, null, 'required:true', '100', '0', '\"CRMEB\"', '微信分享标题', '微信分享标题', '0', '1');
INSERT INTO `eb_system_config` VALUES ('22', 'wechat_share_synopsis', 'textarea', null, '2', null, null, null, '100', '5', '\"CRMEB\"', '微信分享简介', '微信分享简介', '0', '1');
INSERT INTO `eb_system_config` VALUES ('23', 'pay_weixin_appid', 'text', 'input', '4', '', '0', '', '100', '0', '\"\"', 'Appid', '微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看。', '0', '1');
INSERT INTO `eb_system_config` VALUES ('24', 'pay_weixin_appsecret', 'text', 'input', '4', '', '0', '', '100', '0', '\"\"', 'Appsecret', 'JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看。', '0', '1');
INSERT INTO `eb_system_config` VALUES ('25', 'pay_weixin_mchid', 'text', 'input', '4', '', '0', '', '100', '0', '\"\"', 'Mchid', '受理商ID，身份标识', '0', '1');
INSERT INTO `eb_system_config` VALUES ('26', 'pay_weixin_client_cert', 'upload', 'input', '4', '', '3', '', '0', '0', '\"\"', '微信支付证书', '微信支付证书，在微信商家平台中可以下载！文件名一般为apiclient_cert.pem', '0', '1');
INSERT INTO `eb_system_config` VALUES ('27', 'pay_weixin_client_key', 'upload', 'input', '4', '', '3', '', '0', '0', '\"\"', '微信支付证书密钥', '微信支付证书密钥，在微信商家平台中可以下载！文件名一般为apiclient_key.pem', '0', '1');
INSERT INTO `eb_system_config` VALUES ('28', 'pay_weixin_key', 'text', 'input', '4', '', '0', '', '100', '0', '\"\"', 'Key', '商户支付密钥Key。审核通过后，在微信发送的邮件中查看。', '0', '1');
INSERT INTO `eb_system_config` VALUES ('29', 'pay_weixin_open', 'radio', 'input', '4', '1=>开启\n0=>关闭', '0', '', '0', '0', '\"1\"', '开启', '是否启用微信支付', '0', '1');
INSERT INTO `eb_system_config` VALUES ('31', 'store_postage', 'text', 'input', '10', '', '0', 'number:true,min:0', '100', '0', '\"0\"', '邮费基础价', '商品邮费基础价格,最终金额为(基础价 + 商品1邮费 + 商品2邮费)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('32', 'store_free_postage', 'text', 'input', '5', '', '0', 'number:true,min:-1', '100', '0', '\"1000\"', '满额包邮', '商城商品满多少金额即可包邮', '0', '1');
INSERT INTO `eb_system_config` VALUES ('33', 'offline_postage', 'radio', 'input', '10', '0=>不包邮\n1=>包邮', '0', '', '0', '0', '\"0\"', '线下支付是否包邮', '用户选择线下支付时是否包邮', '0', '1');
INSERT INTO `eb_system_config` VALUES ('34', 'integral_ratio', 'text', 'input', '11', '', '0', 'number:true', '100', '0', '\"1\"', '积分抵用比例', '积分抵用比例(1积分抵多少金额)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('35', 'site_service_phone', 'text', 'input', '1', '', '0', '', '100', '0', '\"\"', '客服电话', '客服联系电话', '0', '1');
INSERT INTO `eb_system_config` VALUES ('44', 'store_user_min_recharge', 'text', 'input', '5', '', '0', 'required:true,number:true,min:0', '100', '0', '\"0.01\"', '用户最低充值金额', '用户单次最低充值金额', '0', '0');
INSERT INTO `eb_system_config` VALUES ('45', 'site_store_admin_uids', 'text', 'input', '5', '', '0', '', '100', '0', '\"4\"', '管理员用户ID', '管理员用户ID,用于接收商城订单提醒，到微信用户中查找编号，多个英文‘,’隔开', '0', '2');
INSERT INTO `eb_system_config` VALUES ('46', 'system_express_app_code', 'text', 'input', '10', '', '0', '', '100', '0', '\"\"', '快递查询密钥', '阿里云快递查询接口密钥购买地址：https://market.aliyun.com/products/56928004/cmapi021863.html', '0', '1');
INSERT INTO `eb_system_config` VALUES ('47', 'main_business', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\" IT\\u79d1\\u6280 \\u4e92\\u8054\\u7f51|\\u7535\\u5b50\\u5546\\u52a1\"', '微信模板消息_主营行业', '微信公众号模板消息中选择开通的主营行业', '0', '0');
INSERT INTO `eb_system_config` VALUES ('48', 'vice_business', 'text', 'input', '2', '', '0', 'required:true', '100', '0', '\"IT\\u79d1\\u6280 IT\\u8f6f\\u4ef6\\u4e0e\\u670d\\u52a1 \"', '微信模板消息_副营行业', '微信公众号模板消息中选择开通的副营行业', '0', '0');
INSERT INTO `eb_system_config` VALUES ('49', 'store_brokerage_ratio', 'text', 'input', '9', '', '0', 'required:true,min:0,max:100,number:true', '100', '0', '\"80\"', '一级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', '5', '1');
INSERT INTO `eb_system_config` VALUES ('50', 'wechat_first_sub_give_coupon', 'text', 'input', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"\"', '首次关注赠送优惠券ID', '首次关注赠送优惠券ID,0为不赠送', '0', '1');
INSERT INTO `eb_system_config` VALUES ('51', 'store_give_con_min_price', 'text', 'input', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"0.01\"', '消费满多少赠送优惠券', '消费满多少赠送优惠券,0为不赠送', '0', '1');
INSERT INTO `eb_system_config` VALUES ('52', 'store_order_give_coupon', 'text', 'input', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"\"', '消费赠送优惠劵ID', '消费赠送优惠劵ID,0为不赠送', '0', '1');
INSERT INTO `eb_system_config` VALUES ('53', 'user_extract_min_price', 'text', 'input', '9', '', '0', 'required:true,number:true,min:0', '100', '0', '\"0\"', '提现最低金额', '用户提现最低金额', '0', '1');
INSERT INTO `eb_system_config` VALUES ('54', 'sx_sign_min_int', 'text', 'input', '11', '', '0', 'required:true,number:true,min:0', '100', '0', '\"1\"', '签到奖励最低积分', '签到奖励最低积分', '0', '2');
INSERT INTO `eb_system_config` VALUES ('55', 'sx_sign_max_int', 'text', 'input', '11', '', '0', 'required:true,number:true,min:0', '100', '0', '\"5\"', '签到奖励最高积分', '签到奖励最高积分', '0', '2');
INSERT INTO `eb_system_config` VALUES ('56', 'store_home_pink', 'upload', 'input', '5', '', '1', '', '0', '0', '\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190801\\/af69ee46c79ec68b578afea61b5a37e4.jpg\"', '首页拼团广告图', '首页拼团广告图', '0', '1');
INSERT INTO `eb_system_config` VALUES ('57', 'about_us', 'upload', null, '1', null, '1', null, '0', '0', '\"\"', '关于我们', '系统的标识', '0', '2');
INSERT INTO `eb_system_config` VALUES ('58', 'replenishment_num', 'text', 'input', '5', '', '0', 'required:true,number:true,min:0', '100', '0', '\"20\"', '待补货数量', '产品待补货数量低于多少时，提示补货', '0', '1');
INSERT INTO `eb_system_config` VALUES ('59', 'routine_appId', 'text', 'input', '7', '', '0', '', '100', '0', '\"\"', 'appId', '小程序appID', '0', '1');
INSERT INTO `eb_system_config` VALUES ('60', 'routine_appsecret', 'text', 'input', '7', '', '0', '', '100', '0', '\"\"', 'AppSecret', '小程序AppSecret', '0', '1');
INSERT INTO `eb_system_config` VALUES ('61', 'api', 'text', 'input', '2', '', '0', '', '100', '0', '\"\\/api\\/wechat\\/serve\"', '接口地址', '微信接口例如：http://www.abc.com/api/wechat/serve', '0', '1');
INSERT INTO `eb_system_config` VALUES ('62', 'paydir', 'textarea', 'input', '4', '', '0', '', '100', '5', '\"\"', '配置目录', '支付目录配置系统不调用提示作用', '0', '1');
INSERT INTO `eb_system_config` VALUES ('73', 'routine_logo', 'upload', null, '7', null, '1', null, '0', '0', '\"\"', '小程序logo', '小程序logo', '0', '1');
INSERT INTO `eb_system_config` VALUES ('74', 'routine_name', 'text', 'input', '7', '', '0', '', '100', '0', '\"CRMEB\"', '小程序名称', '小程序名称', '0', '1');
INSERT INTO `eb_system_config` VALUES ('76', 'routine_style', 'text', 'color', '7', null, null, null, '100', '0', '\"#F02D5A\"', '小程序风格', '小程序颜色', '0', '2');
INSERT INTO `eb_system_config` VALUES ('77', 'store_stock', 'text', 'input', '5', '', '0', '', '100', '0', '\"2\"', '警戒库存', '警戒库存提醒值', '0', '1');
INSERT INTO `eb_system_config` VALUES ('85', 'stor_reason', 'textarea', 'input', '5', '', '0', '', '100', '8', '\"\\u6536\\u8d27\\u5730\\u5740\\u586b\\u9519\\u4e86\\r\\n\\u4e0e\\u63cf\\u8ff0\\u4e0d\\u7b26\\r\\n\\u4fe1\\u606f\\u586b\\u9519\\u4e86\\uff0c\\u91cd\\u65b0\\u62cd\\r\\n\\u6536\\u5230\\u5546\\u54c1\\u635f\\u574f\\u4e86\\r\\n\\u672a\\u6309\\u9884\\u5b9a\\u65f6\\u95f4\\u53d1\\u8d27\\r\\n\\u5176\\u5b83\\u539f\\u56e0\"', '退货理由', '配置退货理由，一行一个理由', '0', '1');
INSERT INTO `eb_system_config` VALUES ('87', 'store_brokerage_two', 'text', 'input', '9000', '', '0', 'required:true,min:0,max:100,number:true', '100', '0', '\"0\"', '二级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', '4', '1');
INSERT INTO `eb_system_config` VALUES ('88', 'store_brokerage_statu', 'radio', 'input', '9', '2=>人人分销', '0', '', '0', '0', '\"2\"', '分销模式', '人人分销默认每个人都可以分销，指定人分销后台指定人开启分销', '10', '1');
INSERT INTO `eb_system_config` VALUES ('89', 'pay_routine_appid', 'text', 'input', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Appid', '小程序Appid', '0', '1');
INSERT INTO `eb_system_config` VALUES ('90', 'pay_routine_appsecret', 'text', 'input', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Appsecret', '小程序Appsecret', '0', '1');
INSERT INTO `eb_system_config` VALUES ('91', 'pay_routine_mchid', 'text', 'input', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Mchid', '商户号', '0', '1');
INSERT INTO `eb_system_config` VALUES ('92', 'pay_routine_key', 'text', 'input', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Key', '商户key', '0', '1');
INSERT INTO `eb_system_config` VALUES ('93', 'pay_routine_client_cert', 'upload', 'input', '14', '', '3', '', '0', '0', '\"\"', '小程序支付证书', '小程序支付证书', '0', '1');
INSERT INTO `eb_system_config` VALUES ('94', 'pay_routine_client_key', 'upload', 'input', '14', '', '3', '', '0', '0', '\"\"', '小程序支付证书密钥', '小程序支付证书密钥', '0', '1');
INSERT INTO `eb_system_config` VALUES ('98', 'wechat_avatar', 'upload', 'input', '2', '', '1', '', '0', '0', '\"\"', '公众号logo', '公众号logo', '0', '1');
INSERT INTO `eb_system_config` VALUES ('99', 'user_extract_bank', 'textarea', 'input', '9', '', '0', '', '100', '5', '\"\\u4e2d\\u56fd\\u519c\\u884c\\r\\n\\u4e2d\\u56fd\\u5efa\\u8bbe\\u94f6\\u884c\\r\\n\\u5de5\\u5546\\u94f6\\u884c\"', '提现银行卡', '提现银行卡，每个银行换行', '0', '1');
INSERT INTO `eb_system_config` VALUES ('100', 'fast_info', 'text', 'input', '16', null, null, '', '100', null, '\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"', '快速选择简介', '首页配置快速选择简介', '0', '1');
INSERT INTO `eb_system_config` VALUES ('101', 'bast_info', 'text', 'input', '16', null, null, '', '100', null, '\"\\u8001\\u674e\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"', '精品推荐简介', '首页配置精品推荐简介', '0', '1');
INSERT INTO `eb_system_config` VALUES ('102', 'first_info', 'text', 'input', '16', null, null, '', '100', null, '\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"', '首发新品简介', '首页配置首发新品简介', '0', '1');
INSERT INTO `eb_system_config` VALUES ('103', 'sales_info', 'text', 'input', '16', null, null, '', '100', null, '\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"', '促销单品简介', '首页配置促销单品简介', '0', '1');
INSERT INTO `eb_system_config` VALUES ('104', 'fast_number', 'text', 'input', '16', null, null, 'required:true,digits:true,min:1', '100', null, '\"10\"', '快速选择分类个数', '首页配置快速选择分类个数', '0', '1');
INSERT INTO `eb_system_config` VALUES ('105', 'bast_number', 'text', 'input', '16', null, null, 'required:true,digits:true,min:1', '100', null, '\"10\"', '精品推荐个数', '首页配置精品推荐个数', '0', '1');
INSERT INTO `eb_system_config` VALUES ('106', 'first_number', 'text', 'input', '16', null, null, 'required:true,digits:true,min:1', '100', null, '\"10\"', '首发新品个数', '首页配置首发新品个数', '0', '1');
INSERT INTO `eb_system_config` VALUES ('107', 'routine_index_logo', 'upload', null, '5', null, '1', null, null, null, '\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/a20e7c4dbf0107bb327b0a448c5cb68c.png\"', '主页logo图标', '主页logo图标尺寸(127*45)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('108', 'upload_type', 'radio', 'input', '17', '1=>本地存储\n2=>七牛云存储\n3=>阿里云OSS\n4=>腾讯COS', null, null, null, null, '\"1\"', '上传类型', '文件上传的类型', '0', '1');
INSERT INTO `eb_system_config` VALUES ('109', 'uploadUrl', 'text', 'input', '17', null, null, 'url:true', '100', null, '\"\"', '空间域名 Domain', '空间域名 Domain', '0', '1');
INSERT INTO `eb_system_config` VALUES ('110', 'accessKey', 'text', 'input', '17', null, null, '', '100', null, '\"\"', 'accessKey', 'accessKey', '0', '1');
INSERT INTO `eb_system_config` VALUES ('111', 'secretKey', 'text', 'input', '17', null, null, '', '100', null, '\"\"', 'secretKey', 'secretKey', '0', '1');
INSERT INTO `eb_system_config` VALUES ('112', 'storage_name', 'text', 'input', '17', null, null, '', '100', null, '\"2\"', '存储空间名称', '存储空间名称', '0', '1');
INSERT INTO `eb_system_config` VALUES ('113', 'order_cancel_time', 'text', 'input', '5', null, null, '', '100', null, '\"2\"', '普通商品未支付取消订单时间', '普通商品未支付取消订单时间，单位（小时）', '0', '1');
INSERT INTO `eb_system_config` VALUES ('114', 'order_activity_time', 'text', 'input', '5', null, null, '', '100', null, '\"2\"', '活动商品未支付取消订单时间', '活动商品未支付取消订单时间，单位（小时）', '0', '1');
INSERT INTO `eb_system_config` VALUES ('115', 'order_bargain_time', 'text', 'input', '5', null, null, null, '100', null, '\"2\"', '砍价未支付取消订单时间', '砍价未支付默认取消订单时间，单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置', '0', '1');
INSERT INTO `eb_system_config` VALUES ('116', 'order_seckill_time', 'text', 'input', '5', null, null, null, '100', null, '\"2\"', '秒杀未支付订单取消时间', '秒杀未支付订单取消时间，单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置', '0', '1');
INSERT INTO `eb_system_config` VALUES ('117', 'order_pink_time', 'text', 'input', '5', null, null, null, '100', null, '\"2\"', '拼团未支付取消订单时间', '拼团未支付取消订单时间,单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置', '0', '1');
INSERT INTO `eb_system_config` VALUES ('118', 'storage_region', 'text', 'input', '17', null, null, '', '100', null, '\"\"', '所属地域', '所属地域(腾讯COS时填写)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('119', 'vip_open', 'radio', 'input', '5', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '会员功能是否开启', '会员功能是否开启', '0', '1');
INSERT INTO `eb_system_config` VALUES ('120', 'new_order_audio_link', 'upload', 'input', '5', null, '3', null, null, null, '\"\\/public\\/uploads\\/config\\/file\\/5cedd83eedba2.mp3\"', '新订单语音提示', '新订单语音提示', '0', '1');
INSERT INTO `eb_system_config` VALUES ('121', 'seckill_header_banner', 'upload', 'input', '5', null, '1', null, null, null, '\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190805\\/887db984b5f1138e08e1d9b069af766e.jpg\"', '秒杀头部banner', '秒杀头部banner', '0', '1');
INSERT INTO `eb_system_config` VALUES ('122', 'system_delivery_time', 'text', 'input', '5', null, null, 'required:true,digits:true,min:0', '100', null, '\"1\"', '自动收货时间', '系统自动收货时间(0为不设置自动收货)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('123', 'sms_account', 'text', 'input', '18', null, null, '', '100', null, '\"13631200958\"', '账号', '短信后台的登录账号', '0', '1');
INSERT INTO `eb_system_config` VALUES ('137', 'sms_token', 'text', 'input', '18', null, null, '', '100', null, '\"kuang1987\"', 'token/密码', 'token(注册时候的密码)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('138', 'h5_avatar', 'upload', null, '1', null, '1', null, '0', '0', '\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190807\\/723adbdd4e49a0f9394dfc700ab5dba3.png\"', '用户H5默认头像', '用户H5默认头像尺寸(80*80)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('139', 'offline_pay_status', 'radio', null, '5', '1=>开启\n2=>关闭', null, null, null, null, '\"1\"', '线下支付状态', '线下支付状态', '0', '1');
INSERT INTO `eb_system_config` VALUES ('140', 'news_slides_limit', 'text', 'number', '1', null, null, 'required:true,digits:true,min:1', '100', null, '\"5\"', '新闻幻灯片限制数量', '新闻幻灯片限制数量', '0', '1');
INSERT INTO `eb_system_config` VALUES ('141', 'recharge_switch', 'radio', 'input', '5', '1=>开启\n0=>关闭', null, null, null, null, '\"0\"', '充值开关', '充值开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('142', 'tengxun_map_key', 'text', 'input', '10', null, null, '', '100', null, '', '腾讯地图KEY', '腾讯地图KEY', '0', '1');
INSERT INTO `eb_system_config` VALUES ('143', 'store_self_mention', 'radio', null, '10', '0=>关闭\n1=>开启', null, null, null, null, '\"1\"', '是否开启门店自提', '是否开启门店自提', '0', '1');
INSERT INTO `eb_system_config` VALUES ('144', 'cache_config', 'text', 'input', '19', null, null, '', '100', null, '\"86400\"', '网站缓存时间', '配置全局缓存时间（秒），默认留空为永久缓存', '0', '1');
INSERT INTO `eb_system_config` VALUES ('145', 'pay_success_printing_switch', 'radio', null, '21', '0=>关\n1=>开', null, null, null, null, '\"1\"', '支付成功订单打印开关', '支付成功订单打印开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('146', 'develop_id', 'text', 'input', '21', null, null, '', '100', null, '\"\"', '开发者ID', '易联云开发者ID', '0', '1');
INSERT INTO `eb_system_config` VALUES ('147', 'printing_api_key', 'text', 'input', '21', null, null, '', '100', null, '\"\"', '应用密钥', '易联应用密钥', '0', '1');
INSERT INTO `eb_system_config` VALUES ('148', 'printing_client_id', 'text', 'input', '21', null, null, '', '100', null, '\"\"', '应用ID', '易联应用ID', '0', '1');
INSERT INTO `eb_system_config` VALUES ('149', 'terminal_number', 'text', 'input', '21', null, null, '', '100', null, '\"\"', '终端号', '易联云打印机终端号', '0', '1');
INSERT INTO `eb_system_config` VALUES ('150', 'lower_order_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '支付成功提醒开关', '支付成功提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('151', 'deliver_goods_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '发货提醒开关', '发货提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('152', 'confirm_take_over_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '确认收货提醒开关', '确认收货提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('153', 'admin_lower_order_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '用户下单管理员提醒开关', '用户下单管理员提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('154', 'admin_pay_success_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '用户支付成功管理员提醒开关', '用户支付成功管理员提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('155', 'admin_refund_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '用户退款管理员提醒开关', '用户退款管理员提醒开关', '0', '1');
INSERT INTO `eb_system_config` VALUES ('156', 'admin_confirm_take_over_switch', 'radio', null, '20', '0=>关闭\n1=>开启', null, null, null, null, '\"0\"', '用户确认收货管理员短信提醒', '用户确认收货管理员短信提醒', '0', '1');
INSERT INTO `eb_system_config` VALUES ('158', 'h5_pay_code', 'upload', '', '1', '', '1', '', '0', '0', '\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/aef7d51b869f7ba77d8d6f1a2be3fac6.png\"', '系统收款码', '系统收款码订单收款(80*80)', '0', '1');
INSERT INTO `eb_system_config` VALUES ('159', 'is_sale_rate', 'text', '', '1', '', '1', '', '0', '0', '\"10\"', '继售比例', '继续销售的比例百分比 填10为订单价格的10%', '0', '1');
INSERT INTO `eb_system_config` VALUES ('160', 'is_sale_point', 'text', '', '1', '', '1', '', '0', '0', '\"10\"', '继售比例分成', '继续销售的比例百分比的分成 填10为订单价格的10%的10%', '0', '1');
INSERT INTO `eb_system_config` VALUES ('161', 'is_sale_pid_rate', 'text', '', '1', '', '1', '', '0', '0', '\"3\"', '用户推广比例', '用户推广比例 通过分享图片的新用户获得n%分佣比例 单位千分之一', '0', '1');

-- ----------------------------
-- Table structure for eb_system_config_tab
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_config_tab`;
CREATE TABLE `eb_system_config_tab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置分类名称',
  `eng_title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置分类英文名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配置分类状态',
  `info` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类是否显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `pid` int(10) DEFAULT '0' COMMENT '父级ID',
  `type` int(2) DEFAULT '0' COMMENT '配置类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='配置分类表';

-- ----------------------------
-- Records of eb_system_config_tab
-- ----------------------------
INSERT INTO `eb_system_config_tab` VALUES ('1', '基础配置', 'basics', '1', '0', 'cog', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('2', '公众号配置', 'wechat', '0', '0', 'weixin', '0', '1');
INSERT INTO `eb_system_config_tab` VALUES ('4', '公众号支付配置', 'pay', '0', '0', 'jpy', '0', '2');
INSERT INTO `eb_system_config_tab` VALUES ('5', '商城配置', 'store', '1', '0', 'shopping-cart', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('7', '小程序配置', 'routine', '0', '0', 'weixin', '0', '1');
INSERT INTO `eb_system_config_tab` VALUES ('9', '分销配置', 'fenxiao', '1', '0', 'sitemap', '0', '3');
INSERT INTO `eb_system_config_tab` VALUES ('10', '物流配置', 'express', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('11', '积分配置', 'point', '0', '0', 'powerpoint-o', '0', '3');
INSERT INTO `eb_system_config_tab` VALUES ('12', '优惠券配置', 'coupon', '0', '0', 'heartbeat', '0', '3');
INSERT INTO `eb_system_config_tab` VALUES ('14', '小程序支付配置', 'routine_pay', '0', '0', 'jpy', '0', '2');
INSERT INTO `eb_system_config_tab` VALUES ('16', '首页配置', 'routine_index_page', '1', '1', 'home', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('17', '文件上传配置', 'upload_set', '1', '0', 'cloud-upload', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('18', '短信配置', 'system_sms', '1', '0', 'send', '0', '3');
INSERT INTO `eb_system_config_tab` VALUES ('19', '缓存配置', 'cache_config', '1', '0', 'cube', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('20', '短信提醒开关', 'short_letter_switch', '1', '0', 'rss', '0', '0');
INSERT INTO `eb_system_config_tab` VALUES ('21', '小票打印配置', 'printing_deploy', '0', '0', 'plug', '0', '0');

-- ----------------------------
-- Table structure for eb_system_file
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_file`;
CREATE TABLE `eb_system_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件对比ID',
  `cthash` char(32) NOT NULL DEFAULT '' COMMENT '文件内容',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '文价名称',
  `atime` char(12) NOT NULL DEFAULT '' COMMENT '上次访问时间',
  `mtime` char(12) NOT NULL DEFAULT '' COMMENT '上次修改时间',
  `ctime` char(12) NOT NULL DEFAULT '' COMMENT '上次改变时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件对比表';

-- ----------------------------
-- Records of eb_system_file
-- ----------------------------

-- ----------------------------
-- Table structure for eb_system_group
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_group`;
CREATE TABLE `eb_system_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据组名称',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '数据提示',
  `config_name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据字段',
  `fields` text COMMENT '数据组字段以及类型（json数据）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `config_name` (`config_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='组合数据表';

-- ----------------------------
-- Records of eb_system_group
-- ----------------------------
INSERT INTO `eb_system_group` VALUES ('37', '拼团、秒杀、砍价顶部banner图', '拼团、秒杀、砍价顶部banner图', 'routine_lovely', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('38', '砍价列表页左上小图标', '砍价列表页左上小图标', 'bargain_banner', '[{\"name\":\"banner\",\"title\":\"banner\",\"type\":\"upload\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('47', '首页分类图标', '首页分类图标', 'routine_home_menus', '[{\"name\":\"\\u5206\\u7c7b\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5206\\u7c7b\\u56fe\\u6807(90*90)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/index\\/index=>\\u5546\\u57ce\\u9996\\u9875\\n\\/pages\\/user_spread_user\\/index=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/pages\\/user_sgin\\/index=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/pages\\/user_get_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/user\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/goods_cate\\/goods_cate=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u5217\\u8868\\n\\/pages\\/user_cash\\/index=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/pages\\/promoter-list\\/index=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/pages\\/user_money\\/index=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/promotion-card\\/promotion-card=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/pages\\/order_addcart\\/order_addcart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/pages\\/order_list\\/index=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/pages\\/news_list\\/index=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"1=>\\u662f\\n2=>\\u5426\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/=>\\u5546\\u57ce\\u9996\\u9875\\n\\/user\\/user_promotion=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/user\\/sign=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/user\\/get_coupon=>\\u4f18\\u60e0\\u5238\\n\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/category=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/user\\/add_manage=>\\u5730\\u5740\\u5217\\u8868\\n\\/user\\/user_cash=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/user\\/promoter_list=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/user\\/account=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/poster=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/cart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/order\\/list\\/=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/news_list=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"}]');
INSERT INTO `eb_system_group` VALUES ('48', '首页banner滚动图', '首页banner滚动图', 'routine_home_banner', '[{\"name\":\"\\u6807\\u9898\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247(750*375)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u94fe\\u63a5\",\"title\":\"wap_url\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('49', '秒杀时间段', '秒杀时间段', 'routine_seckill_time', '[{\"name\":\"\\u5f00\\u542f\\u65f6\\u95f4(\\u6574\\u6570\\u5c0f\\u65f6)\",\"title\":\"time\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u6301\\u7eed\\u65f6\\u95f4(\\u6574\\u6570\\u5c0f\\u65f6)\",\"title\":\"continued\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('50', '首页滚动新闻', '首页滚动新闻', 'routine_home_roll_news', '[{\"name\":\"\\u6eda\\u52a8\\u6587\\u5b57\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/index\\/index=>\\u5546\\u57ce\\u9996\\u9875\\n\\/pages\\/user_spread_user\\/index=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/pages\\/user_sgin\\/index=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/pages\\/user_get_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/user\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/goods_cate\\/goods_cate=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u5217\\u8868\\n\\/pages\\/user_cash\\/index=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/pages\\/promoter-list\\/index=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/pages\\/user_money\\/index=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/promotion-card\\/promotion-card=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/pages\\/order_addcart\\/order_addcart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/pages\\/order_list\\/index=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/pages\\/news_list\\/index=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"1=>\\u662f\\n2=>\\u5426\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/=>\\u5546\\u57ce\\u9996\\u9875\\n\\/user\\/user_promotion=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/user\\/sign=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/user\\/get_coupon=>\\u4f18\\u60e0\\u5238\\n\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/category=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/user\\/add_manage=>\\u5730\\u5740\\u5217\\u8868\\n\\/user\\/user_cash=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/user\\/promoter_list=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/user\\/account=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/poster=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/cart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/order\\/list\\/=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/news_list=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"}]');
INSERT INTO `eb_system_group` VALUES ('51', '首页活动区域图片', '首页活动区域图片', 'routine_home_activity', '[{\"name\":\"\\u56fe\\u7247(260*260\\/416*214)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u6807\\u9898\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u7b80\\u4ecb\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"select\",\"param\":\"\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"select\",\"param\":\"\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\"}]');
INSERT INTO `eb_system_group` VALUES ('52', '首页精品推荐benner图', '首页精品推荐benner图', 'routine_home_bast_banner', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('53', '订单详情状态图', '订单详情状态图', 'order_details_images', '[{\"name\":\"\\u8ba2\\u5355\\u72b6\\u6001\",\"title\":\"order_status\",\"type\":\"select\",\"param\":\"0=>\\u672a\\u652f\\u4ed8\\n1=>\\u5f85\\u53d1\\u8d27\\n2=>\\u5f85\\u6536\\u8d27\\n3=>\\u5f85\\u8bc4\\u4ef7\\n4=>\\u5df2\\u5b8c\\u6210\\n9=>\\u7ebf\\u4e0b\\u4ed8\\u6b3e\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('54', '个人中心菜单', '个人中心菜单', 'routine_my_menus', '[{\"name\":\"\\u83dc\\u5355\\u540d\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807(52*52)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u7ba1\\u7406\\n\\/pages\\/user_vip\\/index=>\\u4f1a\\u5458\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/user_goods_bargain_list\\/index=>\\u780d\\u4ef7\\u8bb0\\u5f55\\n\\/pages\\/user_spread_user\\/index=>\\u63a8\\u5e7f\\u4e2d\\u5fc3\\n\\/pages\\/user_money\\/index=>\\u6211\\u7684\\u4f59\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/user_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/admin\\/index=>\\u540e\\u53f0\\u8ba2\\u5355\\u7ba1\\u7406\\n\\/pages\\/service\\/index=>\\u8054\\u7cfb\\u5ba2\\u670d\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/user\\/add_manage=>\\u5730\\u5740\\u7ba1\\u7406\\n\\/user\\/vip=>\\u4f1a\\u5458\\u4e2d\\u5fc3\\n\\/activity\\/bargain\\/record=>\\u780d\\u4ef7\\u8bb0\\u5f55\\n\\/user\\/user_promotion=>\\u63a8\\u5e7f\\u4e2d\\u5fc3\\n\\/user\\/account=>\\u6211\\u7684\\u4f59\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/user_coupon=>\\u4f18\\u60e0\\u5238\\n\\/customer\\/list=>\\u5ba2\\u670d\\u5217\\u8868\\n\\/customer\\/index=>\\u540e\\u53f0\\u8ba2\\u5355\\u7ba1\\u7406\\n\\/order\\/order_cancellation=>\\u8ba2\\u5355\\u6838\\u9500\"}]');
INSERT INTO `eb_system_group` VALUES ('55', '签到天数配置', '签到天数配置', 'sign_day_num', '[{\"name\":\"\\u7b2c\\u51e0\\u5929\",\"title\":\"day\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u83b7\\u53d6\\u79ef\\u5206\",\"title\":\"sign_num\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('56', '热门搜索', '热门搜索', 'routine_hot_search', '[{\"name\":\"\\u6807\\u7b7e\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('57', '热门榜单推荐图片', '热门榜单推荐图片', 'routine_home_hot_banner', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('58', '首发新品推荐图片', '首发新品推荐图片', 'routine_home_new_banner', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('59', '促销单品推荐图片', '促销单品推荐图片', 'routine_home_benefit_banner', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('60', '分享海报', '分享海报', 'routine_spread_banner', '[{\"name\":\"\\u540d\\u79f0\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u80cc\\u666f\\u56fe\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]');
INSERT INTO `eb_system_group` VALUES ('61', '首页文字配置', '首页文字配置', 'routine_index_page', '[{\"name\":\"\\u5feb\\u901f\\u9009\\u62e9\\u7b80\\u4ecb\",\"title\":\"fast_info\",\"type\":\"input\",\"param\":\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"},{\"name\":\"\\u7cbe\\u54c1\\u63a8\\u8350\\u7b80\\u4ecb\",\"title\":\"bast_info\",\"type\":\"input\",\"param\":\"\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"},{\"name\":\"\\u9996\\u53d1\\u65b0\\u54c1\\u7b80\\u4ecb\",\"title\":\"first_info\",\"type\":\"input\",\"param\":\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"},{\"name\":\"\\u4fc3\\u9500\\u5355\\u54c1\\u7b80\\u4ecb\",\"title\":\"sales_info\",\"type\":\"input\",\"param\":\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"},{\"name\":\"\\u5feb\\u901f\\u9009\\u62e9\\u5206\\u7c7b\\u4e2a\\u6570\",\"title\":\"fast_number\",\"type\":\"input\",\"param\":\"10\"},{\"name\":\"\\u7cbe\\u54c1\\u63a8\\u8350\\u4e2a\\u6570\",\"title\":\"bast_number\",\"type\":\"input\",\"param\":\"10\"},{\"name\":\"\\u9996\\u53d1\\u65b0\\u54c1\\u4e2a\\u6570\",\"title\":\"first_number\",\"type\":\"input\",\"param\":\"10\"}]');

-- ----------------------------
-- Table structure for eb_system_group_data
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_group_data`;
CREATE TABLE `eb_system_group_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '对应的数据组id',
  `value` text NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '添加数据时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COMMENT='组合数据详情表';

-- ----------------------------
-- Records of eb_system_group_data
-- ----------------------------
INSERT INTO `eb_system_group_data` VALUES ('89', '38', '{\"banner\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc730dead2.png\"}}', '1527153599', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('91', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u5217\\u8868\\u9876\\u90e8baaner\"}}', '1528688012', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('99', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5546\\u54c1\\u5206\\u7c7b\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9ddc9f34bfd.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/goods_cate\\/goods_cate\"},\"show\":{\"type\":\"radio\",\"value\":\"1\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/category\"}}', '1533721963', '8', '2');
INSERT INTO `eb_system_group_data` VALUES ('100', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u9886\\u4f18\\u60e0\\u5238\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9ddccecb7f3.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_get_coupon\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/get_coupon\"}}', '1533722009', '7', '2');
INSERT INTO `eb_system_group_data` VALUES ('101', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u884c\\u4e1a\\u8d44\\u8baf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9ddcec57a80.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/news_list\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/news_list\"}}', '1533722037', '6', '2');
INSERT INTO `eb_system_group_data` VALUES ('102', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u8981\\u7b7e\\u5230\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9ddd570b8b3.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_sgin\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/sign\"}}', '1533722063', '5', '2');
INSERT INTO `eb_system_group_data` VALUES ('104', '48', '{\"name\":{\"type\":\"input\",\"value\":\"banenr2\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/72c341aefdf8e369e8c4a70abff0df1a.png\"},\"wap_url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"}}', '1533722286', '10', '1');
INSERT INTO `eb_system_group_data` VALUES ('105', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u6536\\u85cf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9dddce0eac9.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_goods_collection\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/collection\"}}', '1533797064', '5', '2');
INSERT INTO `eb_system_group_data` VALUES ('113', '49', '{\"time\":{\"type\":\"input\",\"value\":\"5\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552443280', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('114', '49', '{\"time\":{\"type\":\"input\",\"value\":\"7\"},\"continued\":{\"type\":\"input\",\"value\":\"3\"}}', '1552443293', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('115', '49', '{\"time\":{\"type\":\"input\",\"value\":\"10\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552443304', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('116', '49', '{\"time\":{\"type\":\"input\",\"value\":\"12\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552481140', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('117', '49', '{\"time\":{\"type\":\"input\",\"value\":\"14\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552481146', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('118', '49', '{\"time\":{\"type\":\"input\",\"value\":\"16\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552481151', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('119', '49', '{\"time\":{\"type\":\"input\",\"value\":\"18\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}', '1552481157', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('120', '49', '{\"time\":{\"type\":\"input\",\"value\":\"20\"},\"continued\":{\"type\":\"input\",\"value\":\"9\"}}', '1552481163', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('121', '50', '{\"info\":{\"type\":\"input\",\"value\":\"\\u6587\\u601d\\u5ead \\u5373\\u5c06\\u4e0a\\u7ebf\\uff01\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/news_list\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/news_list\"}}', '1552611989', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('122', '50', '{\"info\":{\"type\":\"input\",\"value\":\"\\u6587\\u601d\\u5ead\\u5546\\u57ce\\u5373\\u5c06\\u4e0a\\u7ebf\\uff01\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/news_list\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/news_list\"}}', '1552612003', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('124', '51', '{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccf7e9f4d0.jpg\"},\"title\":{\"type\":\"input\",\"value\":\"\\u4e00\\u8d77\\u6765\\u62fc\\u56e2\"},\"info\":{\"type\":\"input\",\"value\":\"\\u4f18\\u60e0\\u591a\\u591a\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_combination\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/group\"}}', '1552620002', '3', '2');
INSERT INTO `eb_system_group_data` VALUES ('125', '51', '{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccf7e97660.jpg\"},\"title\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u4e13\\u533a\"},\"info\":{\"type\":\"input\",\"value\":\"\\u65b0\\u80fd\\u6e90\\u6c7d\\u8f66\\u706b\\u70ed\\u9500\\u552e\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_seckill\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/goods_seckill\"}}', '1552620022', '2', '2');
INSERT INTO `eb_system_group_data` VALUES ('126', '51', '{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccfc86a6c1.jpg\"},\"title\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u6d3b\\u52a8\"},\"info\":{\"type\":\"input\",\"value\":\"\\u547c\\u670b\\u5524\\u53cb\\u6765\\u780d\\u4ef7~~~\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_bargain\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\"}}', '1552620041', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('135', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u4f1a\\u5458\\u4e2d\\u5fc3\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9934a7c.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_vip\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/vip\"}}', '1553779918', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('136', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u8bb0\\u5f55\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9918091.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/user_goods_bargain_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\\/record\"}}', '1553779935', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('137', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u63a8\\u5e7f\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9943575.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_spread_user\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/user_promotion\"}}', '1553779950', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('138', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u4f59\\u989d\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc992db31.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_money\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/account\"}}', '1553779973', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('139', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5730\\u5740\\u4fe1\\u606f\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc99101a8.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_address_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/add_manage\"}}', '1553779988', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('140', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u6536\\u85cf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc99269d1.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_goods_collection\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/collection\"}}', '1553780003', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('141', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u4f18\\u60e0\\u5238\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc991f394.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_coupon\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/user_coupon\"}}', '1553780017', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('142', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"0\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca151e99.gif\"}}', '1553780202', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('143', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"1\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca12638a.gif\"}}', '1553780210', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('144', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca1c78cd.gif\"}}', '1553780221', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('145', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"3\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca178a67.gif\"}}', '1553780230', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('146', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"4\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca1a01b6.gif\"}}', '1553780237', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('147', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e00\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"10\"}}', '1553780276', '100', '1');
INSERT INTO `eb_system_group_data` VALUES ('148', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e8c\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"20\"}}', '1553780292', '99', '1');
INSERT INTO `eb_system_group_data` VALUES ('149', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e09\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"30\"}}', '1553780303', '90', '1');
INSERT INTO `eb_system_group_data` VALUES ('150', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u56db\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"40\"}}', '1553780334', '60', '1');
INSERT INTO `eb_system_group_data` VALUES ('151', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e94\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"50\"}}', '1553780351', '50', '1');
INSERT INTO `eb_system_group_data` VALUES ('152', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u516d\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"60\"}}', '1553780364', '40', '1');
INSERT INTO `eb_system_group_data` VALUES ('153', '55', '{\"day\":{\"type\":\"input\",\"value\":\"\\u5956\\u52b1\"},\"sign_num\":{\"type\":\"input\",\"value\":\"110\"}}', '1553780389', '10', '1');
INSERT INTO `eb_system_group_data` VALUES ('155', '58', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/911cb3d5b27df3f8231e59d393cde989.png\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"},\"link\":{\"type\":\"input\",\"value\":\"#\"},\"wap_link\":{\"type\":\"input\",\"value\":\"#\"}}', '1553780869', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('156', '59', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/1f355eb2583ad1369446e38dbc5cad32.png\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"},\"link\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"},\"wap_link\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"}}', '1553780883', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('157', '56', '{\"title\":{\"type\":\"input\",\"value\":\"\\u5438\\u5c18\\u5668\"}}', '1553782153', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('158', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9dde013f63c.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_combination\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/group\"}}', '1553849878', '3', '2');
INSERT INTO `eb_system_group_data` VALUES ('159', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9dde246ad96.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_seckill\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/goods_seckill\"}}', '1553849905', '2', '2');
INSERT INTO `eb_system_group_data` VALUES ('160', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/29\\/5c9ddedbed782.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_bargain\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\"}}', '1553850093', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('161', '60', '{\"title\":{\"type\":\"input\",\"value\":\"\\u5206\\u4eab\\u6d77\\u62a5\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/4f0c0484de1c995b8aa39bdcfb85ce58.jpg\"}}', '1553866489', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('162', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u8bb0\\u5f55\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9918091.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/user_goods_bargain_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\\/record\"}}', '1553866805', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('163', '56', '{\"title\":{\"type\":\"input\",\"value\":\"\\u52a0\\u6e7f\\u5668\"}}', '1553869694', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('164', '56', '{\"title\":{\"type\":\"input\",\"value\":\"\\u9a6c\\u6876\"}}', '1553869701', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('165', '56', '{\"title\":{\"type\":\"input\",\"value\":\"\\u70ed\\u6c34\\u5668\"}}', '1553869710', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('167', '60', '{\"title\":{\"type\":\"input\",\"value\":\"1\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/318cb30befbf025a053bfbcecc4c8f38.jpg\"}}', '1555063900', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('168', '60', '{\"title\":{\"type\":\"input\",\"value\":\"2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wst.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/d2dace0ea662eea727a7c0fb6ba78a7a.jpg\"}}', '1555067377', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('170', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u5217\\u8868\\u9876\\u90e8baaner\"}}', '1562900433', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('171', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u5217\\u8868\\u9876\\u90e8baaner\"}}', '1562900852', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('172', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u8054\\u7cfb\\u5ba2\\u670d\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/07\\/20190730\\/0ded3d3f72d654fb33c8c9f30a268c97.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/service\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/customer\\/list\"}}', '1564482010', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('173', '61', '{\"fast_info\":{\"type\":\"input\",\"value\":\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"},\"bast_info\":{\"type\":\"input\",\"value\":\"\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"},\"first_info\":{\"type\":\"input\",\"value\":\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"},\"sales_info\":{\"type\":\"input\",\"value\":\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"},\"fast_number\":{\"type\":\"input\",\"value\":\"10\"},\"bast_number\":{\"type\":\"input\",\"value\":\"10\"},\"first_number\":{\"type\":\"input\",\"value\":\"10\"}}', '1565146071', '1', '2');
INSERT INTO `eb_system_group_data` VALUES ('174', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u7edf\\u8ba1\\u7ba1\\u7406\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190808\\/87a240841283cb614f3ba308fd299866.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/customer\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/customer\\/index\"}}', '1565259184', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('175', '53', '{\"order_status\":{\"type\":\"select\",\"value\":\"9\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190809\\/7ba5e7e9bcd1ed480fdd432b49a3161a.gif\"}}', '1565317740', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('176', '54', '{\"name\":{\"type\":\"input\",\"value\":\"\\u8ba2\\u5355\\u6838\\u9500\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/10\\/20191011\\/e5eab1a735b58f171cfd507cb849e96b.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/service\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/order\\/order_cancellation\"}}', '1569382895', '1', '1');
INSERT INTO `eb_system_group_data` VALUES ('177', '48', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5e7b\\u706f\\u7247\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/wensiting.target-gd.com\\/uploads\\/attach\\/2020\\/05\\/20200506\\/7634ea95c37ae8a52fe4cce528fbb228.png\"},\"wap_url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index?id=2\"}}', '1588708163', '1', '1');

-- ----------------------------
-- Table structure for eb_system_log
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_log`;
CREATE TABLE `eb_system_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL DEFAULT '' COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL DEFAULT '' COMMENT '链接',
  `page` varchar(64) NOT NULL DEFAULT '' COMMENT '行为',
  `method` varchar(12) NOT NULL DEFAULT '' COMMENT '访问类型',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT '登录IP',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `merchant_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1899 DEFAULT CHARSET=utf8 COMMENT='管理员操作记录表';

-- ----------------------------
-- Records of eb_system_log
-- ----------------------------
INSERT INTO `eb_system_log` VALUES ('1', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707538', '0');
INSERT INTO `eb_system_log` VALUES ('2', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588707539', '0');
INSERT INTO `eb_system_log` VALUES ('3', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707599', '0');
INSERT INTO `eb_system_log` VALUES ('4', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707606', '0');
INSERT INTO `eb_system_log` VALUES ('5', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588707607', '0');
INSERT INTO `eb_system_log` VALUES ('6', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707607', '0');
INSERT INTO `eb_system_log` VALUES ('7', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588707618', '0');
INSERT INTO `eb_system_log` VALUES ('8', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707619', '0');
INSERT INTO `eb_system_log` VALUES ('9', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707945', '0');
INSERT INTO `eb_system_log` VALUES ('10', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707946', '0');
INSERT INTO `eb_system_log` VALUES ('11', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588707946', '0');
INSERT INTO `eb_system_log` VALUES ('12', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588707959', '0');
INSERT INTO `eb_system_log` VALUES ('13', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707959', '0');
INSERT INTO `eb_system_log` VALUES ('14', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '192.168.115.1', 'system', '1588707971', '0');
INSERT INTO `eb_system_log` VALUES ('15', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707972', '0');
INSERT INTO `eb_system_log` VALUES ('16', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707975', '0');
INSERT INTO `eb_system_log` VALUES ('17', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588707987', '0');
INSERT INTO `eb_system_log` VALUES ('18', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588707988', '0');
INSERT INTO `eb_system_log` VALUES ('19', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707988', '0');
INSERT INTO `eb_system_log` VALUES ('20', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588707992', '0');
INSERT INTO `eb_system_log` VALUES ('21', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588707993', '0');
INSERT INTO `eb_system_log` VALUES ('22', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708006', '0');
INSERT INTO `eb_system_log` VALUES ('23', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708007', '0');
INSERT INTO `eb_system_log` VALUES ('24', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708007', '0');
INSERT INTO `eb_system_log` VALUES ('25', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708025', '0');
INSERT INTO `eb_system_log` VALUES ('26', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708026', '0');
INSERT INTO `eb_system_log` VALUES ('27', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708026', '0');
INSERT INTO `eb_system_log` VALUES ('28', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708047', '0');
INSERT INTO `eb_system_log` VALUES ('29', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708048', '0');
INSERT INTO `eb_system_log` VALUES ('30', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708054', '0');
INSERT INTO `eb_system_log` VALUES ('31', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708057', '0');
INSERT INTO `eb_system_log` VALUES ('32', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708063', '0');
INSERT INTO `eb_system_log` VALUES ('33', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708065', '0');
INSERT INTO `eb_system_log` VALUES ('34', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '192.168.115.1', 'system', '1588708069', '0');
INSERT INTO `eb_system_log` VALUES ('35', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708070', '0');
INSERT INTO `eb_system_log` VALUES ('36', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708085', '0');
INSERT INTO `eb_system_log` VALUES ('37', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708096', '0');
INSERT INTO `eb_system_log` VALUES ('38', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708107', '0');
INSERT INTO `eb_system_log` VALUES ('39', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708108', '0');
INSERT INTO `eb_system_log` VALUES ('40', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708108', '0');
INSERT INTO `eb_system_log` VALUES ('41', '1', 'admin', 'admin/widget.images/addcate/id/0', '未知', 'admin', '192.168.115.1', 'system', '1588708109', '0');
INSERT INTO `eb_system_log` VALUES ('42', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708115', '0');
INSERT INTO `eb_system_log` VALUES ('43', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708116', '0');
INSERT INTO `eb_system_log` VALUES ('44', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708122', '0');
INSERT INTO `eb_system_log` VALUES ('45', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708123', '0');
INSERT INTO `eb_system_log` VALUES ('46', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708128', '0');
INSERT INTO `eb_system_log` VALUES ('47', '1', 'admin', 'admin/setting.systemgroupdata/create/', '未知', 'admin', '192.168.115.1', 'system', '1588708132', '0');
INSERT INTO `eb_system_log` VALUES ('48', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708144', '0');
INSERT INTO `eb_system_log` VALUES ('49', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708145', '0');
INSERT INTO `eb_system_log` VALUES ('50', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708145', '0');
INSERT INTO `eb_system_log` VALUES ('51', '1', 'admin', 'admin/widget.images/addcate/id/0', '未知', 'admin', '192.168.115.1', 'system', '1588708147', '0');
INSERT INTO `eb_system_log` VALUES ('52', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708158', '0');
INSERT INTO `eb_system_log` VALUES ('53', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708158', '0');
INSERT INTO `eb_system_log` VALUES ('54', '1', 'admin', 'admin/setting.systemgroupdata/save/', '未知', 'admin', '192.168.115.1', 'system', '1588708163', '0');
INSERT INTO `eb_system_log` VALUES ('55', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708163', '0');
INSERT INTO `eb_system_log` VALUES ('56', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708170', '0');
INSERT INTO `eb_system_log` VALUES ('57', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708173', '0');
INSERT INTO `eb_system_log` VALUES ('58', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708176', '0');
INSERT INTO `eb_system_log` VALUES ('59', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708184', '0');
INSERT INTO `eb_system_log` VALUES ('60', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708186', '0');
INSERT INTO `eb_system_log` VALUES ('61', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708191', '0');
INSERT INTO `eb_system_log` VALUES ('62', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708195', '0');
INSERT INTO `eb_system_log` VALUES ('63', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708196', '0');
INSERT INTO `eb_system_log` VALUES ('64', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708196', '0');
INSERT INTO `eb_system_log` VALUES ('65', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708203', '0');
INSERT INTO `eb_system_log` VALUES ('66', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708204', '0');
INSERT INTO `eb_system_log` VALUES ('67', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708208', '0');
INSERT INTO `eb_system_log` VALUES ('68', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708209', '0');
INSERT INTO `eb_system_log` VALUES ('69', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708227', '0');
INSERT INTO `eb_system_log` VALUES ('70', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708233', '0');
INSERT INTO `eb_system_log` VALUES ('71', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708237', '0');
INSERT INTO `eb_system_log` VALUES ('72', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708238', '0');
INSERT INTO `eb_system_log` VALUES ('73', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708238', '0');
INSERT INTO `eb_system_log` VALUES ('74', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708252', '0');
INSERT INTO `eb_system_log` VALUES ('75', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708253', '0');
INSERT INTO `eb_system_log` VALUES ('76', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708256', '0');
INSERT INTO `eb_system_log` VALUES ('77', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708263', '0');
INSERT INTO `eb_system_log` VALUES ('78', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708264', '0');
INSERT INTO `eb_system_log` VALUES ('79', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708269', '0');
INSERT INTO `eb_system_log` VALUES ('80', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708274', '0');
INSERT INTO `eb_system_log` VALUES ('81', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708277', '0');
INSERT INTO `eb_system_log` VALUES ('82', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708278', '0');
INSERT INTO `eb_system_log` VALUES ('83', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708278', '0');
INSERT INTO `eb_system_log` VALUES ('84', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708291', '0');
INSERT INTO `eb_system_log` VALUES ('85', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708292', '0');
INSERT INTO `eb_system_log` VALUES ('86', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708297', '0');
INSERT INTO `eb_system_log` VALUES ('87', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708297', '0');
INSERT INTO `eb_system_log` VALUES ('88', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708346', '0');
INSERT INTO `eb_system_log` VALUES ('89', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708350', '0');
INSERT INTO `eb_system_log` VALUES ('90', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708351', '0');
INSERT INTO `eb_system_log` VALUES ('91', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708351', '0');
INSERT INTO `eb_system_log` VALUES ('92', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708355', '0');
INSERT INTO `eb_system_log` VALUES ('93', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708356', '0');
INSERT INTO `eb_system_log` VALUES ('94', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708364', '0');
INSERT INTO `eb_system_log` VALUES ('95', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708364', '0');
INSERT INTO `eb_system_log` VALUES ('96', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708368', '0');
INSERT INTO `eb_system_log` VALUES ('97', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708375', '0');
INSERT INTO `eb_system_log` VALUES ('98', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708376', '0');
INSERT INTO `eb_system_log` VALUES ('99', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708376', '0');
INSERT INTO `eb_system_log` VALUES ('100', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708384', '0');
INSERT INTO `eb_system_log` VALUES ('101', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708384', '0');
INSERT INTO `eb_system_log` VALUES ('102', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708390', '0');
INSERT INTO `eb_system_log` VALUES ('103', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708390', '0');
INSERT INTO `eb_system_log` VALUES ('104', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708396', '0');
INSERT INTO `eb_system_log` VALUES ('105', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708399', '0');
INSERT INTO `eb_system_log` VALUES ('106', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708400', '0');
INSERT INTO `eb_system_log` VALUES ('107', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708400', '0');
INSERT INTO `eb_system_log` VALUES ('108', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708512', '0');
INSERT INTO `eb_system_log` VALUES ('109', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708513', '0');
INSERT INTO `eb_system_log` VALUES ('110', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '192.168.115.1', 'system', '1588708517', '0');
INSERT INTO `eb_system_log` VALUES ('111', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708517', '0');
INSERT INTO `eb_system_log` VALUES ('112', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708527', '0');
INSERT INTO `eb_system_log` VALUES ('113', '1', 'admin', 'admin/system.express/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708528', '0');
INSERT INTO `eb_system_log` VALUES ('114', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708531', '0');
INSERT INTO `eb_system_log` VALUES ('115', '1', 'admin', 'admin/system.clear/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708531', '0');
INSERT INTO `eb_system_log` VALUES ('116', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708535', '0');
INSERT INTO `eb_system_log` VALUES ('117', '1', 'admin', 'admin/setting.systemconfigtab/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708537', '0');
INSERT INTO `eb_system_log` VALUES ('118', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708539', '0');
INSERT INTO `eb_system_log` VALUES ('119', '1', 'admin', 'admin/system.systemlog/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708542', '0');
INSERT INTO `eb_system_log` VALUES ('120', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708543', '0');
INSERT INTO `eb_system_log` VALUES ('121', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708546', '0');
INSERT INTO `eb_system_log` VALUES ('122', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708550', '0');
INSERT INTO `eb_system_log` VALUES ('123', '1', 'admin', 'admin/system.clear/refresh_cache/', '未知', 'admin', '192.168.115.1', 'system', '1588708554', '0');
INSERT INTO `eb_system_log` VALUES ('124', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708554', '0');
INSERT INTO `eb_system_log` VALUES ('125', '1', 'admin', 'admin/system.clear/delete_log/', '未知', 'admin', '192.168.115.1', 'system', '1588708556', '0');
INSERT INTO `eb_system_log` VALUES ('126', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708558', '0');
INSERT INTO `eb_system_log` VALUES ('127', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708560', '0');
INSERT INTO `eb_system_log` VALUES ('128', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588708561', '0');
INSERT INTO `eb_system_log` VALUES ('129', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708561', '0');
INSERT INTO `eb_system_log` VALUES ('130', '1', 'admin', 'admin/store.storeproduct/create/', '未知', 'admin', '192.168.115.1', 'system', '1588708563', '0');
INSERT INTO `eb_system_log` VALUES ('131', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708565', '0');
INSERT INTO `eb_system_log` VALUES ('132', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708569', '0');
INSERT INTO `eb_system_log` VALUES ('133', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708573', '0');
INSERT INTO `eb_system_log` VALUES ('134', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708576', '0');
INSERT INTO `eb_system_log` VALUES ('135', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708580', '0');
INSERT INTO `eb_system_log` VALUES ('136', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708584', '0');
INSERT INTO `eb_system_log` VALUES ('137', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708587', '0');
INSERT INTO `eb_system_log` VALUES ('138', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708591', '0');
INSERT INTO `eb_system_log` VALUES ('139', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708595', '0');
INSERT INTO `eb_system_log` VALUES ('140', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708599', '0');
INSERT INTO `eb_system_log` VALUES ('141', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708602', '0');
INSERT INTO `eb_system_log` VALUES ('142', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708606', '0');
INSERT INTO `eb_system_log` VALUES ('143', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708610', '0');
INSERT INTO `eb_system_log` VALUES ('144', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708614', '0');
INSERT INTO `eb_system_log` VALUES ('145', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708618', '0');
INSERT INTO `eb_system_log` VALUES ('146', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708622', '0');
INSERT INTO `eb_system_log` VALUES ('147', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708625', '0');
INSERT INTO `eb_system_log` VALUES ('148', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708629', '0');
INSERT INTO `eb_system_log` VALUES ('149', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708633', '0');
INSERT INTO `eb_system_log` VALUES ('150', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708637', '0');
INSERT INTO `eb_system_log` VALUES ('151', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708639', '0');
INSERT INTO `eb_system_log` VALUES ('152', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708640', '0');
INSERT INTO `eb_system_log` VALUES ('153', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708640', '0');
INSERT INTO `eb_system_log` VALUES ('154', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708640', '0');
INSERT INTO `eb_system_log` VALUES ('155', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708644', '0');
INSERT INTO `eb_system_log` VALUES ('156', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708648', '0');
INSERT INTO `eb_system_log` VALUES ('157', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708648', '0');
INSERT INTO `eb_system_log` VALUES ('158', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708649', '0');
INSERT INTO `eb_system_log` VALUES ('159', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708652', '0');
INSERT INTO `eb_system_log` VALUES ('160', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708656', '0');
INSERT INTO `eb_system_log` VALUES ('161', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708656', '0');
INSERT INTO `eb_system_log` VALUES ('162', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708657', '0');
INSERT INTO `eb_system_log` VALUES ('163', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708657', '0');
INSERT INTO `eb_system_log` VALUES ('164', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708660', '0');
INSERT INTO `eb_system_log` VALUES ('165', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708664', '0');
INSERT INTO `eb_system_log` VALUES ('166', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708668', '0');
INSERT INTO `eb_system_log` VALUES ('167', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708670', '0');
INSERT INTO `eb_system_log` VALUES ('168', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708670', '0');
INSERT INTO `eb_system_log` VALUES ('169', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708671', '0');
INSERT INTO `eb_system_log` VALUES ('170', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708675', '0');
INSERT INTO `eb_system_log` VALUES ('171', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708677', '0');
INSERT INTO `eb_system_log` VALUES ('172', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708678', '0');
INSERT INTO `eb_system_log` VALUES ('173', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708678', '0');
INSERT INTO `eb_system_log` VALUES ('174', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708679', '0');
INSERT INTO `eb_system_log` VALUES ('175', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708684', '0');
INSERT INTO `eb_system_log` VALUES ('176', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708686', '0');
INSERT INTO `eb_system_log` VALUES ('177', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708688', '0');
INSERT INTO `eb_system_log` VALUES ('178', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708688', '0');
INSERT INTO `eb_system_log` VALUES ('179', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708692', '0');
INSERT INTO `eb_system_log` VALUES ('180', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708695', '0');
INSERT INTO `eb_system_log` VALUES ('181', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708699', '0');
INSERT INTO `eb_system_log` VALUES ('182', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708703', '0');
INSERT INTO `eb_system_log` VALUES ('183', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708703', '0');
INSERT INTO `eb_system_log` VALUES ('184', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708704', '0');
INSERT INTO `eb_system_log` VALUES ('185', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708707', '0');
INSERT INTO `eb_system_log` VALUES ('186', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708710', '0');
INSERT INTO `eb_system_log` VALUES ('187', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708711', '0');
INSERT INTO `eb_system_log` VALUES ('188', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708711', '0');
INSERT INTO `eb_system_log` VALUES ('189', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708711', '0');
INSERT INTO `eb_system_log` VALUES ('190', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708715', '0');
INSERT INTO `eb_system_log` VALUES ('191', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708719', '0');
INSERT INTO `eb_system_log` VALUES ('192', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708723', '0');
INSERT INTO `eb_system_log` VALUES ('193', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708726', '0');
INSERT INTO `eb_system_log` VALUES ('194', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708730', '0');
INSERT INTO `eb_system_log` VALUES ('195', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708734', '0');
INSERT INTO `eb_system_log` VALUES ('196', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708738', '0');
INSERT INTO `eb_system_log` VALUES ('197', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708741', '0');
INSERT INTO `eb_system_log` VALUES ('198', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708745', '0');
INSERT INTO `eb_system_log` VALUES ('199', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708749', '0');
INSERT INTO `eb_system_log` VALUES ('200', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708753', '0');
INSERT INTO `eb_system_log` VALUES ('201', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708756', '0');
INSERT INTO `eb_system_log` VALUES ('202', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708760', '0');
INSERT INTO `eb_system_log` VALUES ('203', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708764', '0');
INSERT INTO `eb_system_log` VALUES ('204', '1', 'admin', 'admin/store.storeproduct/save/', '未知', 'admin', '192.168.115.1', 'system', '1588708764', '0');
INSERT INTO `eb_system_log` VALUES ('205', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708765', '0');
INSERT INTO `eb_system_log` VALUES ('206', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588708766', '0');
INSERT INTO `eb_system_log` VALUES ('207', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708768', '0');
INSERT INTO `eb_system_log` VALUES ('208', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708771', '0');
INSERT INTO `eb_system_log` VALUES ('209', '1', 'admin', 'admin/store.storeproductreply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708775', '0');
INSERT INTO `eb_system_log` VALUES ('210', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708775', '0');
INSERT INTO `eb_system_log` VALUES ('211', '1', 'admin', 'admin/store.storeproductreply/get_product_imaes_list/', '未知', 'admin', '192.168.115.1', 'system', '1588708776', '0');
INSERT INTO `eb_system_log` VALUES ('212', '1', 'admin', 'admin/store.storeproductreply/get_product_reply_list/', '未知', 'admin', '192.168.115.1', 'system', '1588708776', '0');
INSERT INTO `eb_system_log` VALUES ('213', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708779', '0');
INSERT INTO `eb_system_log` VALUES ('214', '1', 'admin', 'admin/store.storeproduct/attr/', '未知', 'admin', '192.168.115.1', 'system', '1588708781', '0');
INSERT INTO `eb_system_log` VALUES ('215', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708783', '0');
INSERT INTO `eb_system_log` VALUES ('216', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708787', '0');
INSERT INTO `eb_system_log` VALUES ('217', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588708788', '0');
INSERT INTO `eb_system_log` VALUES ('218', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708790', '0');
INSERT INTO `eb_system_log` VALUES ('219', '1', 'admin', 'admin/store.storeproduct/create/', '未知', 'admin', '192.168.115.1', 'system', '1588708793', '0');
INSERT INTO `eb_system_log` VALUES ('220', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708794', '0');
INSERT INTO `eb_system_log` VALUES ('221', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708798', '0');
INSERT INTO `eb_system_log` VALUES ('222', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708802', '0');
INSERT INTO `eb_system_log` VALUES ('223', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708805', '0');
INSERT INTO `eb_system_log` VALUES ('224', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708809', '0');
INSERT INTO `eb_system_log` VALUES ('225', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708813', '0');
INSERT INTO `eb_system_log` VALUES ('226', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708817', '0');
INSERT INTO `eb_system_log` VALUES ('227', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708820', '0');
INSERT INTO `eb_system_log` VALUES ('228', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708824', '0');
INSERT INTO `eb_system_log` VALUES ('229', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708828', '0');
INSERT INTO `eb_system_log` VALUES ('230', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708832', '0');
INSERT INTO `eb_system_log` VALUES ('231', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708835', '0');
INSERT INTO `eb_system_log` VALUES ('232', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708839', '0');
INSERT INTO `eb_system_log` VALUES ('233', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708843', '0');
INSERT INTO `eb_system_log` VALUES ('234', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708847', '0');
INSERT INTO `eb_system_log` VALUES ('235', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708851', '0');
INSERT INTO `eb_system_log` VALUES ('236', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708854', '0');
INSERT INTO `eb_system_log` VALUES ('237', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708858', '0');
INSERT INTO `eb_system_log` VALUES ('238', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708862', '0');
INSERT INTO `eb_system_log` VALUES ('239', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708866', '0');
INSERT INTO `eb_system_log` VALUES ('240', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708866', '0');
INSERT INTO `eb_system_log` VALUES ('241', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708867', '0');
INSERT INTO `eb_system_log` VALUES ('242', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708867', '0');
INSERT INTO `eb_system_log` VALUES ('243', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708869', '0');
INSERT INTO `eb_system_log` VALUES ('244', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708873', '0');
INSERT INTO `eb_system_log` VALUES ('245', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708877', '0');
INSERT INTO `eb_system_log` VALUES ('246', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708881', '0');
INSERT INTO `eb_system_log` VALUES ('247', '1', 'admin', 'admin/widget.images/addcate/id/0', '未知', 'admin', '192.168.115.1', 'system', '1588708882', '0');
INSERT INTO `eb_system_log` VALUES ('248', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708884', '0');
INSERT INTO `eb_system_log` VALUES ('249', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708888', '0');
INSERT INTO `eb_system_log` VALUES ('250', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708891', '0');
INSERT INTO `eb_system_log` VALUES ('251', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708892', '0');
INSERT INTO `eb_system_log` VALUES ('252', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708892', '0');
INSERT INTO `eb_system_log` VALUES ('253', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708896', '0');
INSERT INTO `eb_system_log` VALUES ('254', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708899', '0');
INSERT INTO `eb_system_log` VALUES ('255', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708905', '0');
INSERT INTO `eb_system_log` VALUES ('256', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708910', '0');
INSERT INTO `eb_system_log` VALUES ('257', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708915', '0');
INSERT INTO `eb_system_log` VALUES ('258', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708919', '0');
INSERT INTO `eb_system_log` VALUES ('259', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708920', '0');
INSERT INTO `eb_system_log` VALUES ('260', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708921', '0');
INSERT INTO `eb_system_log` VALUES ('261', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708921', '0');
INSERT INTO `eb_system_log` VALUES ('262', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708923', '0');
INSERT INTO `eb_system_log` VALUES ('263', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708926', '0');
INSERT INTO `eb_system_log` VALUES ('264', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708930', '0');
INSERT INTO `eb_system_log` VALUES ('265', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708934', '0');
INSERT INTO `eb_system_log` VALUES ('266', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708935', '0');
INSERT INTO `eb_system_log` VALUES ('267', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708936', '0');
INSERT INTO `eb_system_log` VALUES ('268', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708937', '0');
INSERT INTO `eb_system_log` VALUES ('269', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708941', '0');
INSERT INTO `eb_system_log` VALUES ('270', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708941', '0');
INSERT INTO `eb_system_log` VALUES ('271', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708942', '0');
INSERT INTO `eb_system_log` VALUES ('272', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588708942', '0');
INSERT INTO `eb_system_log` VALUES ('273', '1', 'admin', 'admin/widget.images/addcate/id/0', '未知', 'admin', '192.168.115.1', 'system', '1588708944', '0');
INSERT INTO `eb_system_log` VALUES ('274', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708945', '0');
INSERT INTO `eb_system_log` VALUES ('275', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708949', '0');
INSERT INTO `eb_system_log` VALUES ('276', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708953', '0');
INSERT INTO `eb_system_log` VALUES ('277', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708957', '0');
INSERT INTO `eb_system_log` VALUES ('278', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708961', '0');
INSERT INTO `eb_system_log` VALUES ('279', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588708961', '0');
INSERT INTO `eb_system_log` VALUES ('280', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588708962', '0');
INSERT INTO `eb_system_log` VALUES ('281', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708964', '0');
INSERT INTO `eb_system_log` VALUES ('282', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708968', '0');
INSERT INTO `eb_system_log` VALUES ('283', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '192.168.115.1', 'system', '1588708969', '0');
INSERT INTO `eb_system_log` VALUES ('284', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708972', '0');
INSERT INTO `eb_system_log` VALUES ('285', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '192.168.115.1', 'system', '1588708974', '0');
INSERT INTO `eb_system_log` VALUES ('286', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '192.168.115.1', 'system', '1588708974', '0');
INSERT INTO `eb_system_log` VALUES ('287', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708975', '0');
INSERT INTO `eb_system_log` VALUES ('288', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708979', '0');
INSERT INTO `eb_system_log` VALUES ('289', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708983', '0');
INSERT INTO `eb_system_log` VALUES ('290', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708987', '0');
INSERT INTO `eb_system_log` VALUES ('291', '1', 'admin', 'admin/store.storeproduct/create/', '未知', 'admin', '192.168.115.1', 'system', '1588708989', '0');
INSERT INTO `eb_system_log` VALUES ('292', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708991', '0');
INSERT INTO `eb_system_log` VALUES ('293', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708994', '0');
INSERT INTO `eb_system_log` VALUES ('294', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588708999', '0');
INSERT INTO `eb_system_log` VALUES ('295', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709003', '0');
INSERT INTO `eb_system_log` VALUES ('296', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709007', '0');
INSERT INTO `eb_system_log` VALUES ('297', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709012', '0');
INSERT INTO `eb_system_log` VALUES ('298', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709015', '0');
INSERT INTO `eb_system_log` VALUES ('299', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709019', '0');
INSERT INTO `eb_system_log` VALUES ('300', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709023', '0');
INSERT INTO `eb_system_log` VALUES ('301', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709027', '0');
INSERT INTO `eb_system_log` VALUES ('302', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709031', '0');
INSERT INTO `eb_system_log` VALUES ('303', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709035', '0');
INSERT INTO `eb_system_log` VALUES ('304', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709039', '0');
INSERT INTO `eb_system_log` VALUES ('305', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709043', '0');
INSERT INTO `eb_system_log` VALUES ('306', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709047', '0');
INSERT INTO `eb_system_log` VALUES ('307', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709051', '0');
INSERT INTO `eb_system_log` VALUES ('308', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709055', '0');
INSERT INTO `eb_system_log` VALUES ('309', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709058', '0');
INSERT INTO `eb_system_log` VALUES ('310', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709062', '0');
INSERT INTO `eb_system_log` VALUES ('311', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709066', '0');
INSERT INTO `eb_system_log` VALUES ('312', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709069', '0');
INSERT INTO `eb_system_log` VALUES ('313', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588709070', '0');
INSERT INTO `eb_system_log` VALUES ('314', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709070', '0');
INSERT INTO `eb_system_log` VALUES ('315', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709070', '0');
INSERT INTO `eb_system_log` VALUES ('316', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709074', '0');
INSERT INTO `eb_system_log` VALUES ('317', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588709076', '0');
INSERT INTO `eb_system_log` VALUES ('318', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709076', '0');
INSERT INTO `eb_system_log` VALUES ('319', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709077', '0');
INSERT INTO `eb_system_log` VALUES ('320', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709081', '0');
INSERT INTO `eb_system_log` VALUES ('321', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709081', '0');
INSERT INTO `eb_system_log` VALUES ('322', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709082', '0');
INSERT INTO `eb_system_log` VALUES ('323', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588709082', '0');
INSERT INTO `eb_system_log` VALUES ('324', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709085', '0');
INSERT INTO `eb_system_log` VALUES ('325', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709089', '0');
INSERT INTO `eb_system_log` VALUES ('326', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588709091', '0');
INSERT INTO `eb_system_log` VALUES ('327', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709092', '0');
INSERT INTO `eb_system_log` VALUES ('328', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709093', '0');
INSERT INTO `eb_system_log` VALUES ('329', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709096', '0');
INSERT INTO `eb_system_log` VALUES ('330', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709097', '0');
INSERT INTO `eb_system_log` VALUES ('331', '1', 'admin', 'admin/widget.images/get_image_cate/name/index.php', '未知', 'admin', '192.168.115.1', 'system', '1588709097', '0');
INSERT INTO `eb_system_log` VALUES ('332', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709097', '0');
INSERT INTO `eb_system_log` VALUES ('333', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709101', '0');
INSERT INTO `eb_system_log` VALUES ('334', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709105', '0');
INSERT INTO `eb_system_log` VALUES ('335', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '192.168.115.1', 'system', '1588709105', '0');
INSERT INTO `eb_system_log` VALUES ('336', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '192.168.115.1', 'system', '1588709106', '0');
INSERT INTO `eb_system_log` VALUES ('337', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709109', '0');
INSERT INTO `eb_system_log` VALUES ('338', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709112', '0');
INSERT INTO `eb_system_log` VALUES ('339', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709116', '0');
INSERT INTO `eb_system_log` VALUES ('340', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709120', '0');
INSERT INTO `eb_system_log` VALUES ('341', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709123', '0');
INSERT INTO `eb_system_log` VALUES ('342', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709127', '0');
INSERT INTO `eb_system_log` VALUES ('343', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709131', '0');
INSERT INTO `eb_system_log` VALUES ('344', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709135', '0');
INSERT INTO `eb_system_log` VALUES ('345', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709138', '0');
INSERT INTO `eb_system_log` VALUES ('346', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709142', '0');
INSERT INTO `eb_system_log` VALUES ('347', '1', 'admin', 'admin/store.storeproduct/save/', '未知', 'admin', '192.168.115.1', 'system', '1588709144', '0');
INSERT INTO `eb_system_log` VALUES ('348', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709144', '0');
INSERT INTO `eb_system_log` VALUES ('349', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588709145', '0');
INSERT INTO `eb_system_log` VALUES ('350', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709146', '0');
INSERT INTO `eb_system_log` VALUES ('351', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709150', '0');
INSERT INTO `eb_system_log` VALUES ('352', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709154', '0');
INSERT INTO `eb_system_log` VALUES ('353', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709158', '0');
INSERT INTO `eb_system_log` VALUES ('354', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709163', '0');
INSERT INTO `eb_system_log` VALUES ('355', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709167', '0');
INSERT INTO `eb_system_log` VALUES ('356', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709171', '0');
INSERT INTO `eb_system_log` VALUES ('357', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709175', '0');
INSERT INTO `eb_system_log` VALUES ('358', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709179', '0');
INSERT INTO `eb_system_log` VALUES ('359', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709183', '0');
INSERT INTO `eb_system_log` VALUES ('360', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709188', '0');
INSERT INTO `eb_system_log` VALUES ('361', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709192', '0');
INSERT INTO `eb_system_log` VALUES ('362', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709196', '0');
INSERT INTO `eb_system_log` VALUES ('363', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709200', '0');
INSERT INTO `eb_system_log` VALUES ('364', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709204', '0');
INSERT INTO `eb_system_log` VALUES ('365', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709208', '0');
INSERT INTO `eb_system_log` VALUES ('366', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709212', '0');
INSERT INTO `eb_system_log` VALUES ('367', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709216', '0');
INSERT INTO `eb_system_log` VALUES ('368', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709220', '0');
INSERT INTO `eb_system_log` VALUES ('369', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709224', '0');
INSERT INTO `eb_system_log` VALUES ('370', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709228', '0');
INSERT INTO `eb_system_log` VALUES ('371', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709232', '0');
INSERT INTO `eb_system_log` VALUES ('372', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709236', '0');
INSERT INTO `eb_system_log` VALUES ('373', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709240', '0');
INSERT INTO `eb_system_log` VALUES ('374', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709244', '0');
INSERT INTO `eb_system_log` VALUES ('375', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709248', '0');
INSERT INTO `eb_system_log` VALUES ('376', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709252', '0');
INSERT INTO `eb_system_log` VALUES ('377', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709256', '0');
INSERT INTO `eb_system_log` VALUES ('378', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709260', '0');
INSERT INTO `eb_system_log` VALUES ('379', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709264', '0');
INSERT INTO `eb_system_log` VALUES ('380', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709268', '0');
INSERT INTO `eb_system_log` VALUES ('381', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709272', '0');
INSERT INTO `eb_system_log` VALUES ('382', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709277', '0');
INSERT INTO `eb_system_log` VALUES ('383', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709281', '0');
INSERT INTO `eb_system_log` VALUES ('384', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709285', '0');
INSERT INTO `eb_system_log` VALUES ('385', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709289', '0');
INSERT INTO `eb_system_log` VALUES ('386', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709293', '0');
INSERT INTO `eb_system_log` VALUES ('387', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709297', '0');
INSERT INTO `eb_system_log` VALUES ('388', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709301', '0');
INSERT INTO `eb_system_log` VALUES ('389', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709305', '0');
INSERT INTO `eb_system_log` VALUES ('390', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709309', '0');
INSERT INTO `eb_system_log` VALUES ('391', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709313', '0');
INSERT INTO `eb_system_log` VALUES ('392', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709317', '0');
INSERT INTO `eb_system_log` VALUES ('393', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709321', '0');
INSERT INTO `eb_system_log` VALUES ('394', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709325', '0');
INSERT INTO `eb_system_log` VALUES ('395', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709329', '0');
INSERT INTO `eb_system_log` VALUES ('396', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709333', '0');
INSERT INTO `eb_system_log` VALUES ('397', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709337', '0');
INSERT INTO `eb_system_log` VALUES ('398', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709341', '0');
INSERT INTO `eb_system_log` VALUES ('399', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709345', '0');
INSERT INTO `eb_system_log` VALUES ('400', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709349', '0');
INSERT INTO `eb_system_log` VALUES ('401', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709353', '0');
INSERT INTO `eb_system_log` VALUES ('402', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709357', '0');
INSERT INTO `eb_system_log` VALUES ('403', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709361', '0');
INSERT INTO `eb_system_log` VALUES ('404', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709365', '0');
INSERT INTO `eb_system_log` VALUES ('405', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709369', '0');
INSERT INTO `eb_system_log` VALUES ('406', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709373', '0');
INSERT INTO `eb_system_log` VALUES ('407', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709377', '0');
INSERT INTO `eb_system_log` VALUES ('408', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709381', '0');
INSERT INTO `eb_system_log` VALUES ('409', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709385', '0');
INSERT INTO `eb_system_log` VALUES ('410', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709389', '0');
INSERT INTO `eb_system_log` VALUES ('411', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709393', '0');
INSERT INTO `eb_system_log` VALUES ('412', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709397', '0');
INSERT INTO `eb_system_log` VALUES ('413', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709401', '0');
INSERT INTO `eb_system_log` VALUES ('414', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709405', '0');
INSERT INTO `eb_system_log` VALUES ('415', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709409', '0');
INSERT INTO `eb_system_log` VALUES ('416', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709413', '0');
INSERT INTO `eb_system_log` VALUES ('417', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709417', '0');
INSERT INTO `eb_system_log` VALUES ('418', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709421', '0');
INSERT INTO `eb_system_log` VALUES ('419', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709425', '0');
INSERT INTO `eb_system_log` VALUES ('420', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709429', '0');
INSERT INTO `eb_system_log` VALUES ('421', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709433', '0');
INSERT INTO `eb_system_log` VALUES ('422', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709437', '0');
INSERT INTO `eb_system_log` VALUES ('423', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709441', '0');
INSERT INTO `eb_system_log` VALUES ('424', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709445', '0');
INSERT INTO `eb_system_log` VALUES ('425', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709449', '0');
INSERT INTO `eb_system_log` VALUES ('426', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709453', '0');
INSERT INTO `eb_system_log` VALUES ('427', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709457', '0');
INSERT INTO `eb_system_log` VALUES ('428', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709461', '0');
INSERT INTO `eb_system_log` VALUES ('429', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709465', '0');
INSERT INTO `eb_system_log` VALUES ('430', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709469', '0');
INSERT INTO `eb_system_log` VALUES ('431', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709473', '0');
INSERT INTO `eb_system_log` VALUES ('432', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709477', '0');
INSERT INTO `eb_system_log` VALUES ('433', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709481', '0');
INSERT INTO `eb_system_log` VALUES ('434', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709485', '0');
INSERT INTO `eb_system_log` VALUES ('435', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709489', '0');
INSERT INTO `eb_system_log` VALUES ('436', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709493', '0');
INSERT INTO `eb_system_log` VALUES ('437', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709497', '0');
INSERT INTO `eb_system_log` VALUES ('438', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709501', '0');
INSERT INTO `eb_system_log` VALUES ('439', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709505', '0');
INSERT INTO `eb_system_log` VALUES ('440', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709509', '0');
INSERT INTO `eb_system_log` VALUES ('441', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709513', '0');
INSERT INTO `eb_system_log` VALUES ('442', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709517', '0');
INSERT INTO `eb_system_log` VALUES ('443', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709521', '0');
INSERT INTO `eb_system_log` VALUES ('444', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709525', '0');
INSERT INTO `eb_system_log` VALUES ('445', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709529', '0');
INSERT INTO `eb_system_log` VALUES ('446', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709533', '0');
INSERT INTO `eb_system_log` VALUES ('447', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709537', '0');
INSERT INTO `eb_system_log` VALUES ('448', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709541', '0');
INSERT INTO `eb_system_log` VALUES ('449', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709545', '0');
INSERT INTO `eb_system_log` VALUES ('450', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709549', '0');
INSERT INTO `eb_system_log` VALUES ('451', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709553', '0');
INSERT INTO `eb_system_log` VALUES ('452', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709557', '0');
INSERT INTO `eb_system_log` VALUES ('453', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709561', '0');
INSERT INTO `eb_system_log` VALUES ('454', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709565', '0');
INSERT INTO `eb_system_log` VALUES ('455', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709570', '0');
INSERT INTO `eb_system_log` VALUES ('456', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709574', '0');
INSERT INTO `eb_system_log` VALUES ('457', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709578', '0');
INSERT INTO `eb_system_log` VALUES ('458', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709582', '0');
INSERT INTO `eb_system_log` VALUES ('459', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709587', '0');
INSERT INTO `eb_system_log` VALUES ('460', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709591', '0');
INSERT INTO `eb_system_log` VALUES ('461', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709595', '0');
INSERT INTO `eb_system_log` VALUES ('462', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709599', '0');
INSERT INTO `eb_system_log` VALUES ('463', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709604', '0');
INSERT INTO `eb_system_log` VALUES ('464', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709608', '0');
INSERT INTO `eb_system_log` VALUES ('465', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709612', '0');
INSERT INTO `eb_system_log` VALUES ('466', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709616', '0');
INSERT INTO `eb_system_log` VALUES ('467', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709620', '0');
INSERT INTO `eb_system_log` VALUES ('468', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709624', '0');
INSERT INTO `eb_system_log` VALUES ('469', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709628', '0');
INSERT INTO `eb_system_log` VALUES ('470', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709632', '0');
INSERT INTO `eb_system_log` VALUES ('471', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709636', '0');
INSERT INTO `eb_system_log` VALUES ('472', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709641', '0');
INSERT INTO `eb_system_log` VALUES ('473', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709645', '0');
INSERT INTO `eb_system_log` VALUES ('474', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709650', '0');
INSERT INTO `eb_system_log` VALUES ('475', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709655', '0');
INSERT INTO `eb_system_log` VALUES ('476', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709660', '0');
INSERT INTO `eb_system_log` VALUES ('477', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709665', '0');
INSERT INTO `eb_system_log` VALUES ('478', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709669', '0');
INSERT INTO `eb_system_log` VALUES ('479', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709673', '0');
INSERT INTO `eb_system_log` VALUES ('480', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709679', '0');
INSERT INTO `eb_system_log` VALUES ('481', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709683', '0');
INSERT INTO `eb_system_log` VALUES ('482', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709687', '0');
INSERT INTO `eb_system_log` VALUES ('483', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709691', '0');
INSERT INTO `eb_system_log` VALUES ('484', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709695', '0');
INSERT INTO `eb_system_log` VALUES ('485', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709699', '0');
INSERT INTO `eb_system_log` VALUES ('486', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709703', '0');
INSERT INTO `eb_system_log` VALUES ('487', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709707', '0');
INSERT INTO `eb_system_log` VALUES ('488', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709711', '0');
INSERT INTO `eb_system_log` VALUES ('489', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709715', '0');
INSERT INTO `eb_system_log` VALUES ('490', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709719', '0');
INSERT INTO `eb_system_log` VALUES ('491', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709723', '0');
INSERT INTO `eb_system_log` VALUES ('492', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709728', '0');
INSERT INTO `eb_system_log` VALUES ('493', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709732', '0');
INSERT INTO `eb_system_log` VALUES ('494', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709736', '0');
INSERT INTO `eb_system_log` VALUES ('495', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709740', '0');
INSERT INTO `eb_system_log` VALUES ('496', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709744', '0');
INSERT INTO `eb_system_log` VALUES ('497', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709748', '0');
INSERT INTO `eb_system_log` VALUES ('498', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709752', '0');
INSERT INTO `eb_system_log` VALUES ('499', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709756', '0');
INSERT INTO `eb_system_log` VALUES ('500', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709760', '0');
INSERT INTO `eb_system_log` VALUES ('501', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709764', '0');
INSERT INTO `eb_system_log` VALUES ('502', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709768', '0');
INSERT INTO `eb_system_log` VALUES ('503', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709772', '0');
INSERT INTO `eb_system_log` VALUES ('504', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709776', '0');
INSERT INTO `eb_system_log` VALUES ('505', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709780', '0');
INSERT INTO `eb_system_log` VALUES ('506', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709784', '0');
INSERT INTO `eb_system_log` VALUES ('507', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709788', '0');
INSERT INTO `eb_system_log` VALUES ('508', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709792', '0');
INSERT INTO `eb_system_log` VALUES ('509', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709796', '0');
INSERT INTO `eb_system_log` VALUES ('510', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709800', '0');
INSERT INTO `eb_system_log` VALUES ('511', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709804', '0');
INSERT INTO `eb_system_log` VALUES ('512', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709808', '0');
INSERT INTO `eb_system_log` VALUES ('513', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709812', '0');
INSERT INTO `eb_system_log` VALUES ('514', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709815', '0');
INSERT INTO `eb_system_log` VALUES ('515', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709816', '0');
INSERT INTO `eb_system_log` VALUES ('516', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709820', '0');
INSERT INTO `eb_system_log` VALUES ('517', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709823', '0');
INSERT INTO `eb_system_log` VALUES ('518', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709824', '0');
INSERT INTO `eb_system_log` VALUES ('519', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709825', '0');
INSERT INTO `eb_system_log` VALUES ('520', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709828', '0');
INSERT INTO `eb_system_log` VALUES ('521', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709828', '0');
INSERT INTO `eb_system_log` VALUES ('522', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709831', '0');
INSERT INTO `eb_system_log` VALUES ('523', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709835', '0');
INSERT INTO `eb_system_log` VALUES ('524', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709839', '0');
INSERT INTO `eb_system_log` VALUES ('525', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709843', '0');
INSERT INTO `eb_system_log` VALUES ('526', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709847', '0');
INSERT INTO `eb_system_log` VALUES ('527', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709850', '0');
INSERT INTO `eb_system_log` VALUES ('528', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709854', '0');
INSERT INTO `eb_system_log` VALUES ('529', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709858', '0');
INSERT INTO `eb_system_log` VALUES ('530', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709862', '0');
INSERT INTO `eb_system_log` VALUES ('531', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709866', '0');
INSERT INTO `eb_system_log` VALUES ('532', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709869', '0');
INSERT INTO `eb_system_log` VALUES ('533', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709873', '0');
INSERT INTO `eb_system_log` VALUES ('534', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709877', '0');
INSERT INTO `eb_system_log` VALUES ('535', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709881', '0');
INSERT INTO `eb_system_log` VALUES ('536', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709884', '0');
INSERT INTO `eb_system_log` VALUES ('537', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709888', '0');
INSERT INTO `eb_system_log` VALUES ('538', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709892', '0');
INSERT INTO `eb_system_log` VALUES ('539', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709896', '0');
INSERT INTO `eb_system_log` VALUES ('540', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709900', '0');
INSERT INTO `eb_system_log` VALUES ('541', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709904', '0');
INSERT INTO `eb_system_log` VALUES ('542', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709908', '0');
INSERT INTO `eb_system_log` VALUES ('543', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709912', '0');
INSERT INTO `eb_system_log` VALUES ('544', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709916', '0');
INSERT INTO `eb_system_log` VALUES ('545', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709921', '0');
INSERT INTO `eb_system_log` VALUES ('546', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709925', '0');
INSERT INTO `eb_system_log` VALUES ('547', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709929', '0');
INSERT INTO `eb_system_log` VALUES ('548', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709933', '0');
INSERT INTO `eb_system_log` VALUES ('549', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709937', '0');
INSERT INTO `eb_system_log` VALUES ('550', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709941', '0');
INSERT INTO `eb_system_log` VALUES ('551', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709945', '0');
INSERT INTO `eb_system_log` VALUES ('552', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709949', '0');
INSERT INTO `eb_system_log` VALUES ('553', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709953', '0');
INSERT INTO `eb_system_log` VALUES ('554', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709957', '0');
INSERT INTO `eb_system_log` VALUES ('555', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709961', '0');
INSERT INTO `eb_system_log` VALUES ('556', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709965', '0');
INSERT INTO `eb_system_log` VALUES ('557', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709969', '0');
INSERT INTO `eb_system_log` VALUES ('558', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709973', '0');
INSERT INTO `eb_system_log` VALUES ('559', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709977', '0');
INSERT INTO `eb_system_log` VALUES ('560', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709981', '0');
INSERT INTO `eb_system_log` VALUES ('561', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709985', '0');
INSERT INTO `eb_system_log` VALUES ('562', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709989', '0');
INSERT INTO `eb_system_log` VALUES ('563', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709993', '0');
INSERT INTO `eb_system_log` VALUES ('564', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588709997', '0');
INSERT INTO `eb_system_log` VALUES ('565', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710001', '0');
INSERT INTO `eb_system_log` VALUES ('566', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710005', '0');
INSERT INTO `eb_system_log` VALUES ('567', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710009', '0');
INSERT INTO `eb_system_log` VALUES ('568', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710013', '0');
INSERT INTO `eb_system_log` VALUES ('569', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710017', '0');
INSERT INTO `eb_system_log` VALUES ('570', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710021', '0');
INSERT INTO `eb_system_log` VALUES ('571', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710025', '0');
INSERT INTO `eb_system_log` VALUES ('572', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710029', '0');
INSERT INTO `eb_system_log` VALUES ('573', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710033', '0');
INSERT INTO `eb_system_log` VALUES ('574', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710037', '0');
INSERT INTO `eb_system_log` VALUES ('575', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710042', '0');
INSERT INTO `eb_system_log` VALUES ('576', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710046', '0');
INSERT INTO `eb_system_log` VALUES ('577', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710050', '0');
INSERT INTO `eb_system_log` VALUES ('578', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710054', '0');
INSERT INTO `eb_system_log` VALUES ('579', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710058', '0');
INSERT INTO `eb_system_log` VALUES ('580', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710062', '0');
INSERT INTO `eb_system_log` VALUES ('581', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710066', '0');
INSERT INTO `eb_system_log` VALUES ('582', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710070', '0');
INSERT INTO `eb_system_log` VALUES ('583', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710074', '0');
INSERT INTO `eb_system_log` VALUES ('584', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710078', '0');
INSERT INTO `eb_system_log` VALUES ('585', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710082', '0');
INSERT INTO `eb_system_log` VALUES ('586', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710086', '0');
INSERT INTO `eb_system_log` VALUES ('587', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710090', '0');
INSERT INTO `eb_system_log` VALUES ('588', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710094', '0');
INSERT INTO `eb_system_log` VALUES ('589', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710099', '0');
INSERT INTO `eb_system_log` VALUES ('590', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710103', '0');
INSERT INTO `eb_system_log` VALUES ('591', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710107', '0');
INSERT INTO `eb_system_log` VALUES ('592', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710111', '0');
INSERT INTO `eb_system_log` VALUES ('593', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710115', '0');
INSERT INTO `eb_system_log` VALUES ('594', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710119', '0');
INSERT INTO `eb_system_log` VALUES ('595', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710123', '0');
INSERT INTO `eb_system_log` VALUES ('596', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710127', '0');
INSERT INTO `eb_system_log` VALUES ('597', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710131', '0');
INSERT INTO `eb_system_log` VALUES ('598', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710135', '0');
INSERT INTO `eb_system_log` VALUES ('599', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710139', '0');
INSERT INTO `eb_system_log` VALUES ('600', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710143', '0');
INSERT INTO `eb_system_log` VALUES ('601', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710147', '0');
INSERT INTO `eb_system_log` VALUES ('602', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710151', '0');
INSERT INTO `eb_system_log` VALUES ('603', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710155', '0');
INSERT INTO `eb_system_log` VALUES ('604', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710159', '0');
INSERT INTO `eb_system_log` VALUES ('605', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710163', '0');
INSERT INTO `eb_system_log` VALUES ('606', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710167', '0');
INSERT INTO `eb_system_log` VALUES ('607', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710171', '0');
INSERT INTO `eb_system_log` VALUES ('608', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710175', '0');
INSERT INTO `eb_system_log` VALUES ('609', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710179', '0');
INSERT INTO `eb_system_log` VALUES ('610', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710183', '0');
INSERT INTO `eb_system_log` VALUES ('611', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710187', '0');
INSERT INTO `eb_system_log` VALUES ('612', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710191', '0');
INSERT INTO `eb_system_log` VALUES ('613', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710195', '0');
INSERT INTO `eb_system_log` VALUES ('614', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710199', '0');
INSERT INTO `eb_system_log` VALUES ('615', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710203', '0');
INSERT INTO `eb_system_log` VALUES ('616', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710207', '0');
INSERT INTO `eb_system_log` VALUES ('617', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710211', '0');
INSERT INTO `eb_system_log` VALUES ('618', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710215', '0');
INSERT INTO `eb_system_log` VALUES ('619', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710219', '0');
INSERT INTO `eb_system_log` VALUES ('620', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710223', '0');
INSERT INTO `eb_system_log` VALUES ('621', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710227', '0');
INSERT INTO `eb_system_log` VALUES ('622', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710231', '0');
INSERT INTO `eb_system_log` VALUES ('623', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710235', '0');
INSERT INTO `eb_system_log` VALUES ('624', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710239', '0');
INSERT INTO `eb_system_log` VALUES ('625', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710243', '0');
INSERT INTO `eb_system_log` VALUES ('626', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710248', '0');
INSERT INTO `eb_system_log` VALUES ('627', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710253', '0');
INSERT INTO `eb_system_log` VALUES ('628', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710257', '0');
INSERT INTO `eb_system_log` VALUES ('629', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710261', '0');
INSERT INTO `eb_system_log` VALUES ('630', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710265', '0');
INSERT INTO `eb_system_log` VALUES ('631', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710270', '0');
INSERT INTO `eb_system_log` VALUES ('632', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710274', '0');
INSERT INTO `eb_system_log` VALUES ('633', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710278', '0');
INSERT INTO `eb_system_log` VALUES ('634', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710283', '0');
INSERT INTO `eb_system_log` VALUES ('635', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710287', '0');
INSERT INTO `eb_system_log` VALUES ('636', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710291', '0');
INSERT INTO `eb_system_log` VALUES ('637', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710295', '0');
INSERT INTO `eb_system_log` VALUES ('638', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710299', '0');
INSERT INTO `eb_system_log` VALUES ('639', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710303', '0');
INSERT INTO `eb_system_log` VALUES ('640', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710307', '0');
INSERT INTO `eb_system_log` VALUES ('641', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710311', '0');
INSERT INTO `eb_system_log` VALUES ('642', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710315', '0');
INSERT INTO `eb_system_log` VALUES ('643', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710319', '0');
INSERT INTO `eb_system_log` VALUES ('644', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710323', '0');
INSERT INTO `eb_system_log` VALUES ('645', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710327', '0');
INSERT INTO `eb_system_log` VALUES ('646', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710331', '0');
INSERT INTO `eb_system_log` VALUES ('647', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710335', '0');
INSERT INTO `eb_system_log` VALUES ('648', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710339', '0');
INSERT INTO `eb_system_log` VALUES ('649', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710343', '0');
INSERT INTO `eb_system_log` VALUES ('650', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710347', '0');
INSERT INTO `eb_system_log` VALUES ('651', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710351', '0');
INSERT INTO `eb_system_log` VALUES ('652', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710355', '0');
INSERT INTO `eb_system_log` VALUES ('653', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710359', '0');
INSERT INTO `eb_system_log` VALUES ('654', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710363', '0');
INSERT INTO `eb_system_log` VALUES ('655', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710368', '0');
INSERT INTO `eb_system_log` VALUES ('656', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710372', '0');
INSERT INTO `eb_system_log` VALUES ('657', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710376', '0');
INSERT INTO `eb_system_log` VALUES ('658', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710380', '0');
INSERT INTO `eb_system_log` VALUES ('659', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710384', '0');
INSERT INTO `eb_system_log` VALUES ('660', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710388', '0');
INSERT INTO `eb_system_log` VALUES ('661', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710392', '0');
INSERT INTO `eb_system_log` VALUES ('662', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710396', '0');
INSERT INTO `eb_system_log` VALUES ('663', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710400', '0');
INSERT INTO `eb_system_log` VALUES ('664', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710404', '0');
INSERT INTO `eb_system_log` VALUES ('665', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710408', '0');
INSERT INTO `eb_system_log` VALUES ('666', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710412', '0');
INSERT INTO `eb_system_log` VALUES ('667', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710416', '0');
INSERT INTO `eb_system_log` VALUES ('668', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710420', '0');
INSERT INTO `eb_system_log` VALUES ('669', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710424', '0');
INSERT INTO `eb_system_log` VALUES ('670', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710428', '0');
INSERT INTO `eb_system_log` VALUES ('671', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710432', '0');
INSERT INTO `eb_system_log` VALUES ('672', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710436', '0');
INSERT INTO `eb_system_log` VALUES ('673', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710440', '0');
INSERT INTO `eb_system_log` VALUES ('674', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710444', '0');
INSERT INTO `eb_system_log` VALUES ('675', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710448', '0');
INSERT INTO `eb_system_log` VALUES ('676', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710452', '0');
INSERT INTO `eb_system_log` VALUES ('677', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710456', '0');
INSERT INTO `eb_system_log` VALUES ('678', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710460', '0');
INSERT INTO `eb_system_log` VALUES ('679', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710464', '0');
INSERT INTO `eb_system_log` VALUES ('680', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710468', '0');
INSERT INTO `eb_system_log` VALUES ('681', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710472', '0');
INSERT INTO `eb_system_log` VALUES ('682', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710476', '0');
INSERT INTO `eb_system_log` VALUES ('683', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710480', '0');
INSERT INTO `eb_system_log` VALUES ('684', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710484', '0');
INSERT INTO `eb_system_log` VALUES ('685', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710488', '0');
INSERT INTO `eb_system_log` VALUES ('686', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710492', '0');
INSERT INTO `eb_system_log` VALUES ('687', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710496', '0');
INSERT INTO `eb_system_log` VALUES ('688', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710500', '0');
INSERT INTO `eb_system_log` VALUES ('689', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710504', '0');
INSERT INTO `eb_system_log` VALUES ('690', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710508', '0');
INSERT INTO `eb_system_log` VALUES ('691', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710512', '0');
INSERT INTO `eb_system_log` VALUES ('692', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710516', '0');
INSERT INTO `eb_system_log` VALUES ('693', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710521', '0');
INSERT INTO `eb_system_log` VALUES ('694', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710525', '0');
INSERT INTO `eb_system_log` VALUES ('695', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710530', '0');
INSERT INTO `eb_system_log` VALUES ('696', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710534', '0');
INSERT INTO `eb_system_log` VALUES ('697', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710538', '0');
INSERT INTO `eb_system_log` VALUES ('698', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710542', '0');
INSERT INTO `eb_system_log` VALUES ('699', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710546', '0');
INSERT INTO `eb_system_log` VALUES ('700', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710550', '0');
INSERT INTO `eb_system_log` VALUES ('701', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710554', '0');
INSERT INTO `eb_system_log` VALUES ('702', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710558', '0');
INSERT INTO `eb_system_log` VALUES ('703', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710562', '0');
INSERT INTO `eb_system_log` VALUES ('704', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710566', '0');
INSERT INTO `eb_system_log` VALUES ('705', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710570', '0');
INSERT INTO `eb_system_log` VALUES ('706', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710574', '0');
INSERT INTO `eb_system_log` VALUES ('707', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710578', '0');
INSERT INTO `eb_system_log` VALUES ('708', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710582', '0');
INSERT INTO `eb_system_log` VALUES ('709', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710586', '0');
INSERT INTO `eb_system_log` VALUES ('710', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710590', '0');
INSERT INTO `eb_system_log` VALUES ('711', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710594', '0');
INSERT INTO `eb_system_log` VALUES ('712', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710598', '0');
INSERT INTO `eb_system_log` VALUES ('713', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710602', '0');
INSERT INTO `eb_system_log` VALUES ('714', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710606', '0');
INSERT INTO `eb_system_log` VALUES ('715', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710610', '0');
INSERT INTO `eb_system_log` VALUES ('716', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710614', '0');
INSERT INTO `eb_system_log` VALUES ('717', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710618', '0');
INSERT INTO `eb_system_log` VALUES ('718', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710622', '0');
INSERT INTO `eb_system_log` VALUES ('719', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710626', '0');
INSERT INTO `eb_system_log` VALUES ('720', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710630', '0');
INSERT INTO `eb_system_log` VALUES ('721', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710634', '0');
INSERT INTO `eb_system_log` VALUES ('722', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710638', '0');
INSERT INTO `eb_system_log` VALUES ('723', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710642', '0');
INSERT INTO `eb_system_log` VALUES ('724', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710646', '0');
INSERT INTO `eb_system_log` VALUES ('725', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710650', '0');
INSERT INTO `eb_system_log` VALUES ('726', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710654', '0');
INSERT INTO `eb_system_log` VALUES ('727', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710658', '0');
INSERT INTO `eb_system_log` VALUES ('728', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710663', '0');
INSERT INTO `eb_system_log` VALUES ('729', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710667', '0');
INSERT INTO `eb_system_log` VALUES ('730', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710671', '0');
INSERT INTO `eb_system_log` VALUES ('731', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710675', '0');
INSERT INTO `eb_system_log` VALUES ('732', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710679', '0');
INSERT INTO `eb_system_log` VALUES ('733', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710683', '0');
INSERT INTO `eb_system_log` VALUES ('734', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710687', '0');
INSERT INTO `eb_system_log` VALUES ('735', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710691', '0');
INSERT INTO `eb_system_log` VALUES ('736', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710695', '0');
INSERT INTO `eb_system_log` VALUES ('737', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710699', '0');
INSERT INTO `eb_system_log` VALUES ('738', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710703', '0');
INSERT INTO `eb_system_log` VALUES ('739', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710707', '0');
INSERT INTO `eb_system_log` VALUES ('740', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710711', '0');
INSERT INTO `eb_system_log` VALUES ('741', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710715', '0');
INSERT INTO `eb_system_log` VALUES ('742', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710719', '0');
INSERT INTO `eb_system_log` VALUES ('743', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710723', '0');
INSERT INTO `eb_system_log` VALUES ('744', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710727', '0');
INSERT INTO `eb_system_log` VALUES ('745', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710732', '0');
INSERT INTO `eb_system_log` VALUES ('746', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710736', '0');
INSERT INTO `eb_system_log` VALUES ('747', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710740', '0');
INSERT INTO `eb_system_log` VALUES ('748', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710744', '0');
INSERT INTO `eb_system_log` VALUES ('749', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710748', '0');
INSERT INTO `eb_system_log` VALUES ('750', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710752', '0');
INSERT INTO `eb_system_log` VALUES ('751', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710756', '0');
INSERT INTO `eb_system_log` VALUES ('752', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710760', '0');
INSERT INTO `eb_system_log` VALUES ('753', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710764', '0');
INSERT INTO `eb_system_log` VALUES ('754', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710768', '0');
INSERT INTO `eb_system_log` VALUES ('755', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710772', '0');
INSERT INTO `eb_system_log` VALUES ('756', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710776', '0');
INSERT INTO `eb_system_log` VALUES ('757', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710780', '0');
INSERT INTO `eb_system_log` VALUES ('758', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710784', '0');
INSERT INTO `eb_system_log` VALUES ('759', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710788', '0');
INSERT INTO `eb_system_log` VALUES ('760', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710792', '0');
INSERT INTO `eb_system_log` VALUES ('761', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710796', '0');
INSERT INTO `eb_system_log` VALUES ('762', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710800', '0');
INSERT INTO `eb_system_log` VALUES ('763', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710804', '0');
INSERT INTO `eb_system_log` VALUES ('764', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710808', '0');
INSERT INTO `eb_system_log` VALUES ('765', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710812', '0');
INSERT INTO `eb_system_log` VALUES ('766', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710816', '0');
INSERT INTO `eb_system_log` VALUES ('767', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710820', '0');
INSERT INTO `eb_system_log` VALUES ('768', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710824', '0');
INSERT INTO `eb_system_log` VALUES ('769', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710828', '0');
INSERT INTO `eb_system_log` VALUES ('770', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710832', '0');
INSERT INTO `eb_system_log` VALUES ('771', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710836', '0');
INSERT INTO `eb_system_log` VALUES ('772', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710840', '0');
INSERT INTO `eb_system_log` VALUES ('773', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710844', '0');
INSERT INTO `eb_system_log` VALUES ('774', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710848', '0');
INSERT INTO `eb_system_log` VALUES ('775', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710852', '0');
INSERT INTO `eb_system_log` VALUES ('776', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710856', '0');
INSERT INTO `eb_system_log` VALUES ('777', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710860', '0');
INSERT INTO `eb_system_log` VALUES ('778', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710864', '0');
INSERT INTO `eb_system_log` VALUES ('779', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710868', '0');
INSERT INTO `eb_system_log` VALUES ('780', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710872', '0');
INSERT INTO `eb_system_log` VALUES ('781', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710876', '0');
INSERT INTO `eb_system_log` VALUES ('782', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710880', '0');
INSERT INTO `eb_system_log` VALUES ('783', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710884', '0');
INSERT INTO `eb_system_log` VALUES ('784', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710888', '0');
INSERT INTO `eb_system_log` VALUES ('785', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710892', '0');
INSERT INTO `eb_system_log` VALUES ('786', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710896', '0');
INSERT INTO `eb_system_log` VALUES ('787', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710900', '0');
INSERT INTO `eb_system_log` VALUES ('788', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710905', '0');
INSERT INTO `eb_system_log` VALUES ('789', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710909', '0');
INSERT INTO `eb_system_log` VALUES ('790', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710913', '0');
INSERT INTO `eb_system_log` VALUES ('791', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710917', '0');
INSERT INTO `eb_system_log` VALUES ('792', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710921', '0');
INSERT INTO `eb_system_log` VALUES ('793', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710925', '0');
INSERT INTO `eb_system_log` VALUES ('794', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710929', '0');
INSERT INTO `eb_system_log` VALUES ('795', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710933', '0');
INSERT INTO `eb_system_log` VALUES ('796', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710938', '0');
INSERT INTO `eb_system_log` VALUES ('797', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710942', '0');
INSERT INTO `eb_system_log` VALUES ('798', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710946', '0');
INSERT INTO `eb_system_log` VALUES ('799', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710950', '0');
INSERT INTO `eb_system_log` VALUES ('800', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710954', '0');
INSERT INTO `eb_system_log` VALUES ('801', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710958', '0');
INSERT INTO `eb_system_log` VALUES ('802', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710962', '0');
INSERT INTO `eb_system_log` VALUES ('803', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710966', '0');
INSERT INTO `eb_system_log` VALUES ('804', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710970', '0');
INSERT INTO `eb_system_log` VALUES ('805', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710974', '0');
INSERT INTO `eb_system_log` VALUES ('806', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710978', '0');
INSERT INTO `eb_system_log` VALUES ('807', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710982', '0');
INSERT INTO `eb_system_log` VALUES ('808', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710986', '0');
INSERT INTO `eb_system_log` VALUES ('809', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710990', '0');
INSERT INTO `eb_system_log` VALUES ('810', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710994', '0');
INSERT INTO `eb_system_log` VALUES ('811', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588710998', '0');
INSERT INTO `eb_system_log` VALUES ('812', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711002', '0');
INSERT INTO `eb_system_log` VALUES ('813', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711006', '0');
INSERT INTO `eb_system_log` VALUES ('814', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711010', '0');
INSERT INTO `eb_system_log` VALUES ('815', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711014', '0');
INSERT INTO `eb_system_log` VALUES ('816', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711018', '0');
INSERT INTO `eb_system_log` VALUES ('817', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711022', '0');
INSERT INTO `eb_system_log` VALUES ('818', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711026', '0');
INSERT INTO `eb_system_log` VALUES ('819', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711030', '0');
INSERT INTO `eb_system_log` VALUES ('820', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711034', '0');
INSERT INTO `eb_system_log` VALUES ('821', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711038', '0');
INSERT INTO `eb_system_log` VALUES ('822', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711042', '0');
INSERT INTO `eb_system_log` VALUES ('823', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711046', '0');
INSERT INTO `eb_system_log` VALUES ('824', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711050', '0');
INSERT INTO `eb_system_log` VALUES ('825', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711054', '0');
INSERT INTO `eb_system_log` VALUES ('826', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711058', '0');
INSERT INTO `eb_system_log` VALUES ('827', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711062', '0');
INSERT INTO `eb_system_log` VALUES ('828', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711066', '0');
INSERT INTO `eb_system_log` VALUES ('829', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711070', '0');
INSERT INTO `eb_system_log` VALUES ('830', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711074', '0');
INSERT INTO `eb_system_log` VALUES ('831', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711078', '0');
INSERT INTO `eb_system_log` VALUES ('832', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711082', '0');
INSERT INTO `eb_system_log` VALUES ('833', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711086', '0');
INSERT INTO `eb_system_log` VALUES ('834', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711090', '0');
INSERT INTO `eb_system_log` VALUES ('835', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711094', '0');
INSERT INTO `eb_system_log` VALUES ('836', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711098', '0');
INSERT INTO `eb_system_log` VALUES ('837', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711103', '0');
INSERT INTO `eb_system_log` VALUES ('838', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711107', '0');
INSERT INTO `eb_system_log` VALUES ('839', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711111', '0');
INSERT INTO `eb_system_log` VALUES ('840', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711116', '0');
INSERT INTO `eb_system_log` VALUES ('841', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711121', '0');
INSERT INTO `eb_system_log` VALUES ('842', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711125', '0');
INSERT INTO `eb_system_log` VALUES ('843', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711129', '0');
INSERT INTO `eb_system_log` VALUES ('844', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711133', '0');
INSERT INTO `eb_system_log` VALUES ('845', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711137', '0');
INSERT INTO `eb_system_log` VALUES ('846', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711141', '0');
INSERT INTO `eb_system_log` VALUES ('847', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711145', '0');
INSERT INTO `eb_system_log` VALUES ('848', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711150', '0');
INSERT INTO `eb_system_log` VALUES ('849', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711154', '0');
INSERT INTO `eb_system_log` VALUES ('850', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711158', '0');
INSERT INTO `eb_system_log` VALUES ('851', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711162', '0');
INSERT INTO `eb_system_log` VALUES ('852', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711166', '0');
INSERT INTO `eb_system_log` VALUES ('853', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711171', '0');
INSERT INTO `eb_system_log` VALUES ('854', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711175', '0');
INSERT INTO `eb_system_log` VALUES ('855', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711179', '0');
INSERT INTO `eb_system_log` VALUES ('856', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711183', '0');
INSERT INTO `eb_system_log` VALUES ('857', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711187', '0');
INSERT INTO `eb_system_log` VALUES ('858', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711191', '0');
INSERT INTO `eb_system_log` VALUES ('859', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711195', '0');
INSERT INTO `eb_system_log` VALUES ('860', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711199', '0');
INSERT INTO `eb_system_log` VALUES ('861', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711204', '0');
INSERT INTO `eb_system_log` VALUES ('862', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711208', '0');
INSERT INTO `eb_system_log` VALUES ('863', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711212', '0');
INSERT INTO `eb_system_log` VALUES ('864', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711216', '0');
INSERT INTO `eb_system_log` VALUES ('865', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711220', '0');
INSERT INTO `eb_system_log` VALUES ('866', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711224', '0');
INSERT INTO `eb_system_log` VALUES ('867', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711228', '0');
INSERT INTO `eb_system_log` VALUES ('868', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711232', '0');
INSERT INTO `eb_system_log` VALUES ('869', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711236', '0');
INSERT INTO `eb_system_log` VALUES ('870', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711240', '0');
INSERT INTO `eb_system_log` VALUES ('871', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711244', '0');
INSERT INTO `eb_system_log` VALUES ('872', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711248', '0');
INSERT INTO `eb_system_log` VALUES ('873', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711252', '0');
INSERT INTO `eb_system_log` VALUES ('874', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711256', '0');
INSERT INTO `eb_system_log` VALUES ('875', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711260', '0');
INSERT INTO `eb_system_log` VALUES ('876', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711265', '0');
INSERT INTO `eb_system_log` VALUES ('877', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711269', '0');
INSERT INTO `eb_system_log` VALUES ('878', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711273', '0');
INSERT INTO `eb_system_log` VALUES ('879', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711277', '0');
INSERT INTO `eb_system_log` VALUES ('880', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711281', '0');
INSERT INTO `eb_system_log` VALUES ('881', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711285', '0');
INSERT INTO `eb_system_log` VALUES ('882', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711289', '0');
INSERT INTO `eb_system_log` VALUES ('883', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711293', '0');
INSERT INTO `eb_system_log` VALUES ('884', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711297', '0');
INSERT INTO `eb_system_log` VALUES ('885', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711301', '0');
INSERT INTO `eb_system_log` VALUES ('886', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711305', '0');
INSERT INTO `eb_system_log` VALUES ('887', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711309', '0');
INSERT INTO `eb_system_log` VALUES ('888', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711314', '0');
INSERT INTO `eb_system_log` VALUES ('889', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711318', '0');
INSERT INTO `eb_system_log` VALUES ('890', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711322', '0');
INSERT INTO `eb_system_log` VALUES ('891', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711326', '0');
INSERT INTO `eb_system_log` VALUES ('892', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711330', '0');
INSERT INTO `eb_system_log` VALUES ('893', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711334', '0');
INSERT INTO `eb_system_log` VALUES ('894', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711338', '0');
INSERT INTO `eb_system_log` VALUES ('895', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711342', '0');
INSERT INTO `eb_system_log` VALUES ('896', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711346', '0');
INSERT INTO `eb_system_log` VALUES ('897', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711350', '0');
INSERT INTO `eb_system_log` VALUES ('898', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711354', '0');
INSERT INTO `eb_system_log` VALUES ('899', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711358', '0');
INSERT INTO `eb_system_log` VALUES ('900', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711362', '0');
INSERT INTO `eb_system_log` VALUES ('901', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711366', '0');
INSERT INTO `eb_system_log` VALUES ('902', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711370', '0');
INSERT INTO `eb_system_log` VALUES ('903', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711374', '0');
INSERT INTO `eb_system_log` VALUES ('904', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711378', '0');
INSERT INTO `eb_system_log` VALUES ('905', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711382', '0');
INSERT INTO `eb_system_log` VALUES ('906', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711386', '0');
INSERT INTO `eb_system_log` VALUES ('907', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711390', '0');
INSERT INTO `eb_system_log` VALUES ('908', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711394', '0');
INSERT INTO `eb_system_log` VALUES ('909', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711398', '0');
INSERT INTO `eb_system_log` VALUES ('910', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711402', '0');
INSERT INTO `eb_system_log` VALUES ('911', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711406', '0');
INSERT INTO `eb_system_log` VALUES ('912', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711410', '0');
INSERT INTO `eb_system_log` VALUES ('913', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711414', '0');
INSERT INTO `eb_system_log` VALUES ('914', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711418', '0');
INSERT INTO `eb_system_log` VALUES ('915', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711422', '0');
INSERT INTO `eb_system_log` VALUES ('916', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711426', '0');
INSERT INTO `eb_system_log` VALUES ('917', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711430', '0');
INSERT INTO `eb_system_log` VALUES ('918', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711434', '0');
INSERT INTO `eb_system_log` VALUES ('919', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711438', '0');
INSERT INTO `eb_system_log` VALUES ('920', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711442', '0');
INSERT INTO `eb_system_log` VALUES ('921', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711446', '0');
INSERT INTO `eb_system_log` VALUES ('922', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711450', '0');
INSERT INTO `eb_system_log` VALUES ('923', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711454', '0');
INSERT INTO `eb_system_log` VALUES ('924', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711458', '0');
INSERT INTO `eb_system_log` VALUES ('925', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711463', '0');
INSERT INTO `eb_system_log` VALUES ('926', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711467', '0');
INSERT INTO `eb_system_log` VALUES ('927', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711471', '0');
INSERT INTO `eb_system_log` VALUES ('928', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711475', '0');
INSERT INTO `eb_system_log` VALUES ('929', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711478', '0');
INSERT INTO `eb_system_log` VALUES ('930', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711482', '0');
INSERT INTO `eb_system_log` VALUES ('931', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711487', '0');
INSERT INTO `eb_system_log` VALUES ('932', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711491', '0');
INSERT INTO `eb_system_log` VALUES ('933', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711495', '0');
INSERT INTO `eb_system_log` VALUES ('934', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711500', '0');
INSERT INTO `eb_system_log` VALUES ('935', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711504', '0');
INSERT INTO `eb_system_log` VALUES ('936', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711508', '0');
INSERT INTO `eb_system_log` VALUES ('937', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711512', '0');
INSERT INTO `eb_system_log` VALUES ('938', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711516', '0');
INSERT INTO `eb_system_log` VALUES ('939', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711520', '0');
INSERT INTO `eb_system_log` VALUES ('940', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711524', '0');
INSERT INTO `eb_system_log` VALUES ('941', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711528', '0');
INSERT INTO `eb_system_log` VALUES ('942', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711532', '0');
INSERT INTO `eb_system_log` VALUES ('943', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711537', '0');
INSERT INTO `eb_system_log` VALUES ('944', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711542', '0');
INSERT INTO `eb_system_log` VALUES ('945', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711546', '0');
INSERT INTO `eb_system_log` VALUES ('946', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711550', '0');
INSERT INTO `eb_system_log` VALUES ('947', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711554', '0');
INSERT INTO `eb_system_log` VALUES ('948', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711558', '0');
INSERT INTO `eb_system_log` VALUES ('949', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711562', '0');
INSERT INTO `eb_system_log` VALUES ('950', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711566', '0');
INSERT INTO `eb_system_log` VALUES ('951', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711570', '0');
INSERT INTO `eb_system_log` VALUES ('952', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711574', '0');
INSERT INTO `eb_system_log` VALUES ('953', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711578', '0');
INSERT INTO `eb_system_log` VALUES ('954', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711582', '0');
INSERT INTO `eb_system_log` VALUES ('955', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711586', '0');
INSERT INTO `eb_system_log` VALUES ('956', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711590', '0');
INSERT INTO `eb_system_log` VALUES ('957', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711594', '0');
INSERT INTO `eb_system_log` VALUES ('958', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711599', '0');
INSERT INTO `eb_system_log` VALUES ('959', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711603', '0');
INSERT INTO `eb_system_log` VALUES ('960', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711607', '0');
INSERT INTO `eb_system_log` VALUES ('961', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711612', '0');
INSERT INTO `eb_system_log` VALUES ('962', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711617', '0');
INSERT INTO `eb_system_log` VALUES ('963', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711621', '0');
INSERT INTO `eb_system_log` VALUES ('964', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711625', '0');
INSERT INTO `eb_system_log` VALUES ('965', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711629', '0');
INSERT INTO `eb_system_log` VALUES ('966', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711633', '0');
INSERT INTO `eb_system_log` VALUES ('967', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711637', '0');
INSERT INTO `eb_system_log` VALUES ('968', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711641', '0');
INSERT INTO `eb_system_log` VALUES ('969', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711645', '0');
INSERT INTO `eb_system_log` VALUES ('970', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711649', '0');
INSERT INTO `eb_system_log` VALUES ('971', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711653', '0');
INSERT INTO `eb_system_log` VALUES ('972', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711657', '0');
INSERT INTO `eb_system_log` VALUES ('973', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711661', '0');
INSERT INTO `eb_system_log` VALUES ('974', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711665', '0');
INSERT INTO `eb_system_log` VALUES ('975', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711669', '0');
INSERT INTO `eb_system_log` VALUES ('976', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711674', '0');
INSERT INTO `eb_system_log` VALUES ('977', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711678', '0');
INSERT INTO `eb_system_log` VALUES ('978', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711682', '0');
INSERT INTO `eb_system_log` VALUES ('979', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711686', '0');
INSERT INTO `eb_system_log` VALUES ('980', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711690', '0');
INSERT INTO `eb_system_log` VALUES ('981', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711694', '0');
INSERT INTO `eb_system_log` VALUES ('982', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711699', '0');
INSERT INTO `eb_system_log` VALUES ('983', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711703', '0');
INSERT INTO `eb_system_log` VALUES ('984', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711707', '0');
INSERT INTO `eb_system_log` VALUES ('985', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711711', '0');
INSERT INTO `eb_system_log` VALUES ('986', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711715', '0');
INSERT INTO `eb_system_log` VALUES ('987', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711720', '0');
INSERT INTO `eb_system_log` VALUES ('988', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711724', '0');
INSERT INTO `eb_system_log` VALUES ('989', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711728', '0');
INSERT INTO `eb_system_log` VALUES ('990', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711733', '0');
INSERT INTO `eb_system_log` VALUES ('991', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711737', '0');
INSERT INTO `eb_system_log` VALUES ('992', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711742', '0');
INSERT INTO `eb_system_log` VALUES ('993', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711746', '0');
INSERT INTO `eb_system_log` VALUES ('994', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711750', '0');
INSERT INTO `eb_system_log` VALUES ('995', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711755', '0');
INSERT INTO `eb_system_log` VALUES ('996', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711759', '0');
INSERT INTO `eb_system_log` VALUES ('997', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711764', '0');
INSERT INTO `eb_system_log` VALUES ('998', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711768', '0');
INSERT INTO `eb_system_log` VALUES ('999', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711772', '0');
INSERT INTO `eb_system_log` VALUES ('1000', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711776', '0');
INSERT INTO `eb_system_log` VALUES ('1001', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711780', '0');
INSERT INTO `eb_system_log` VALUES ('1002', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711784', '0');
INSERT INTO `eb_system_log` VALUES ('1003', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711788', '0');
INSERT INTO `eb_system_log` VALUES ('1004', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711792', '0');
INSERT INTO `eb_system_log` VALUES ('1005', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711796', '0');
INSERT INTO `eb_system_log` VALUES ('1006', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711800', '0');
INSERT INTO `eb_system_log` VALUES ('1007', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711804', '0');
INSERT INTO `eb_system_log` VALUES ('1008', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711808', '0');
INSERT INTO `eb_system_log` VALUES ('1009', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711813', '0');
INSERT INTO `eb_system_log` VALUES ('1010', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711817', '0');
INSERT INTO `eb_system_log` VALUES ('1011', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711821', '0');
INSERT INTO `eb_system_log` VALUES ('1012', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711825', '0');
INSERT INTO `eb_system_log` VALUES ('1013', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711829', '0');
INSERT INTO `eb_system_log` VALUES ('1014', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711833', '0');
INSERT INTO `eb_system_log` VALUES ('1015', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711837', '0');
INSERT INTO `eb_system_log` VALUES ('1016', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711841', '0');
INSERT INTO `eb_system_log` VALUES ('1017', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711845', '0');
INSERT INTO `eb_system_log` VALUES ('1018', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711849', '0');
INSERT INTO `eb_system_log` VALUES ('1019', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711853', '0');
INSERT INTO `eb_system_log` VALUES ('1020', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711857', '0');
INSERT INTO `eb_system_log` VALUES ('1021', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711861', '0');
INSERT INTO `eb_system_log` VALUES ('1022', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711865', '0');
INSERT INTO `eb_system_log` VALUES ('1023', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711869', '0');
INSERT INTO `eb_system_log` VALUES ('1024', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711873', '0');
INSERT INTO `eb_system_log` VALUES ('1025', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711877', '0');
INSERT INTO `eb_system_log` VALUES ('1026', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711881', '0');
INSERT INTO `eb_system_log` VALUES ('1027', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711885', '0');
INSERT INTO `eb_system_log` VALUES ('1028', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711889', '0');
INSERT INTO `eb_system_log` VALUES ('1029', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711893', '0');
INSERT INTO `eb_system_log` VALUES ('1030', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711897', '0');
INSERT INTO `eb_system_log` VALUES ('1031', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711901', '0');
INSERT INTO `eb_system_log` VALUES ('1032', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711905', '0');
INSERT INTO `eb_system_log` VALUES ('1033', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711909', '0');
INSERT INTO `eb_system_log` VALUES ('1034', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711913', '0');
INSERT INTO `eb_system_log` VALUES ('1035', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711917', '0');
INSERT INTO `eb_system_log` VALUES ('1036', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711921', '0');
INSERT INTO `eb_system_log` VALUES ('1037', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711925', '0');
INSERT INTO `eb_system_log` VALUES ('1038', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711929', '0');
INSERT INTO `eb_system_log` VALUES ('1039', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711933', '0');
INSERT INTO `eb_system_log` VALUES ('1040', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711937', '0');
INSERT INTO `eb_system_log` VALUES ('1041', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711941', '0');
INSERT INTO `eb_system_log` VALUES ('1042', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711945', '0');
INSERT INTO `eb_system_log` VALUES ('1043', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711949', '0');
INSERT INTO `eb_system_log` VALUES ('1044', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711953', '0');
INSERT INTO `eb_system_log` VALUES ('1045', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711957', '0');
INSERT INTO `eb_system_log` VALUES ('1046', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711961', '0');
INSERT INTO `eb_system_log` VALUES ('1047', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711965', '0');
INSERT INTO `eb_system_log` VALUES ('1048', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711969', '0');
INSERT INTO `eb_system_log` VALUES ('1049', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711973', '0');
INSERT INTO `eb_system_log` VALUES ('1050', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711977', '0');
INSERT INTO `eb_system_log` VALUES ('1051', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711981', '0');
INSERT INTO `eb_system_log` VALUES ('1052', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711985', '0');
INSERT INTO `eb_system_log` VALUES ('1053', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711989', '0');
INSERT INTO `eb_system_log` VALUES ('1054', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711993', '0');
INSERT INTO `eb_system_log` VALUES ('1055', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588711997', '0');
INSERT INTO `eb_system_log` VALUES ('1056', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712001', '0');
INSERT INTO `eb_system_log` VALUES ('1057', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712005', '0');
INSERT INTO `eb_system_log` VALUES ('1058', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712009', '0');
INSERT INTO `eb_system_log` VALUES ('1059', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712013', '0');
INSERT INTO `eb_system_log` VALUES ('1060', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712017', '0');
INSERT INTO `eb_system_log` VALUES ('1061', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712021', '0');
INSERT INTO `eb_system_log` VALUES ('1062', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712025', '0');
INSERT INTO `eb_system_log` VALUES ('1063', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712029', '0');
INSERT INTO `eb_system_log` VALUES ('1064', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712033', '0');
INSERT INTO `eb_system_log` VALUES ('1065', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712037', '0');
INSERT INTO `eb_system_log` VALUES ('1066', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712041', '0');
INSERT INTO `eb_system_log` VALUES ('1067', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712045', '0');
INSERT INTO `eb_system_log` VALUES ('1068', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712049', '0');
INSERT INTO `eb_system_log` VALUES ('1069', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712053', '0');
INSERT INTO `eb_system_log` VALUES ('1070', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712057', '0');
INSERT INTO `eb_system_log` VALUES ('1071', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712061', '0');
INSERT INTO `eb_system_log` VALUES ('1072', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712065', '0');
INSERT INTO `eb_system_log` VALUES ('1073', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712069', '0');
INSERT INTO `eb_system_log` VALUES ('1074', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712073', '0');
INSERT INTO `eb_system_log` VALUES ('1075', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712077', '0');
INSERT INTO `eb_system_log` VALUES ('1076', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712081', '0');
INSERT INTO `eb_system_log` VALUES ('1077', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712085', '0');
INSERT INTO `eb_system_log` VALUES ('1078', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712089', '0');
INSERT INTO `eb_system_log` VALUES ('1079', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712093', '0');
INSERT INTO `eb_system_log` VALUES ('1080', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712097', '0');
INSERT INTO `eb_system_log` VALUES ('1081', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712101', '0');
INSERT INTO `eb_system_log` VALUES ('1082', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712106', '0');
INSERT INTO `eb_system_log` VALUES ('1083', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712110', '0');
INSERT INTO `eb_system_log` VALUES ('1084', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712114', '0');
INSERT INTO `eb_system_log` VALUES ('1085', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712118', '0');
INSERT INTO `eb_system_log` VALUES ('1086', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712122', '0');
INSERT INTO `eb_system_log` VALUES ('1087', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712126', '0');
INSERT INTO `eb_system_log` VALUES ('1088', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712130', '0');
INSERT INTO `eb_system_log` VALUES ('1089', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712134', '0');
INSERT INTO `eb_system_log` VALUES ('1090', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712138', '0');
INSERT INTO `eb_system_log` VALUES ('1091', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712142', '0');
INSERT INTO `eb_system_log` VALUES ('1092', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712146', '0');
INSERT INTO `eb_system_log` VALUES ('1093', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712150', '0');
INSERT INTO `eb_system_log` VALUES ('1094', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712155', '0');
INSERT INTO `eb_system_log` VALUES ('1095', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712159', '0');
INSERT INTO `eb_system_log` VALUES ('1096', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712163', '0');
INSERT INTO `eb_system_log` VALUES ('1097', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712167', '0');
INSERT INTO `eb_system_log` VALUES ('1098', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712171', '0');
INSERT INTO `eb_system_log` VALUES ('1099', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712175', '0');
INSERT INTO `eb_system_log` VALUES ('1100', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712179', '0');
INSERT INTO `eb_system_log` VALUES ('1101', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712183', '0');
INSERT INTO `eb_system_log` VALUES ('1102', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712187', '0');
INSERT INTO `eb_system_log` VALUES ('1103', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712191', '0');
INSERT INTO `eb_system_log` VALUES ('1104', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712195', '0');
INSERT INTO `eb_system_log` VALUES ('1105', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712199', '0');
INSERT INTO `eb_system_log` VALUES ('1106', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712203', '0');
INSERT INTO `eb_system_log` VALUES ('1107', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712207', '0');
INSERT INTO `eb_system_log` VALUES ('1108', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712211', '0');
INSERT INTO `eb_system_log` VALUES ('1109', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712215', '0');
INSERT INTO `eb_system_log` VALUES ('1110', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712219', '0');
INSERT INTO `eb_system_log` VALUES ('1111', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712223', '0');
INSERT INTO `eb_system_log` VALUES ('1112', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712227', '0');
INSERT INTO `eb_system_log` VALUES ('1113', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712231', '0');
INSERT INTO `eb_system_log` VALUES ('1114', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712235', '0');
INSERT INTO `eb_system_log` VALUES ('1115', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712239', '0');
INSERT INTO `eb_system_log` VALUES ('1116', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712243', '0');
INSERT INTO `eb_system_log` VALUES ('1117', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712247', '0');
INSERT INTO `eb_system_log` VALUES ('1118', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712251', '0');
INSERT INTO `eb_system_log` VALUES ('1119', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712255', '0');
INSERT INTO `eb_system_log` VALUES ('1120', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712259', '0');
INSERT INTO `eb_system_log` VALUES ('1121', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712263', '0');
INSERT INTO `eb_system_log` VALUES ('1122', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712267', '0');
INSERT INTO `eb_system_log` VALUES ('1123', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712271', '0');
INSERT INTO `eb_system_log` VALUES ('1124', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712275', '0');
INSERT INTO `eb_system_log` VALUES ('1125', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712279', '0');
INSERT INTO `eb_system_log` VALUES ('1126', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712283', '0');
INSERT INTO `eb_system_log` VALUES ('1127', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712287', '0');
INSERT INTO `eb_system_log` VALUES ('1128', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712291', '0');
INSERT INTO `eb_system_log` VALUES ('1129', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712295', '0');
INSERT INTO `eb_system_log` VALUES ('1130', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712299', '0');
INSERT INTO `eb_system_log` VALUES ('1131', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712303', '0');
INSERT INTO `eb_system_log` VALUES ('1132', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712307', '0');
INSERT INTO `eb_system_log` VALUES ('1133', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712311', '0');
INSERT INTO `eb_system_log` VALUES ('1134', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712315', '0');
INSERT INTO `eb_system_log` VALUES ('1135', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712319', '0');
INSERT INTO `eb_system_log` VALUES ('1136', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712323', '0');
INSERT INTO `eb_system_log` VALUES ('1137', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712327', '0');
INSERT INTO `eb_system_log` VALUES ('1138', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712331', '0');
INSERT INTO `eb_system_log` VALUES ('1139', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712335', '0');
INSERT INTO `eb_system_log` VALUES ('1140', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712339', '0');
INSERT INTO `eb_system_log` VALUES ('1141', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712343', '0');
INSERT INTO `eb_system_log` VALUES ('1142', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712347', '0');
INSERT INTO `eb_system_log` VALUES ('1143', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712351', '0');
INSERT INTO `eb_system_log` VALUES ('1144', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712355', '0');
INSERT INTO `eb_system_log` VALUES ('1145', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712359', '0');
INSERT INTO `eb_system_log` VALUES ('1146', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712363', '0');
INSERT INTO `eb_system_log` VALUES ('1147', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712367', '0');
INSERT INTO `eb_system_log` VALUES ('1148', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712371', '0');
INSERT INTO `eb_system_log` VALUES ('1149', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712375', '0');
INSERT INTO `eb_system_log` VALUES ('1150', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712379', '0');
INSERT INTO `eb_system_log` VALUES ('1151', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712383', '0');
INSERT INTO `eb_system_log` VALUES ('1152', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712387', '0');
INSERT INTO `eb_system_log` VALUES ('1153', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712391', '0');
INSERT INTO `eb_system_log` VALUES ('1154', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712395', '0');
INSERT INTO `eb_system_log` VALUES ('1155', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712399', '0');
INSERT INTO `eb_system_log` VALUES ('1156', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712403', '0');
INSERT INTO `eb_system_log` VALUES ('1157', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712409', '0');
INSERT INTO `eb_system_log` VALUES ('1158', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712413', '0');
INSERT INTO `eb_system_log` VALUES ('1159', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712417', '0');
INSERT INTO `eb_system_log` VALUES ('1160', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712422', '0');
INSERT INTO `eb_system_log` VALUES ('1161', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712426', '0');
INSERT INTO `eb_system_log` VALUES ('1162', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712430', '0');
INSERT INTO `eb_system_log` VALUES ('1163', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712434', '0');
INSERT INTO `eb_system_log` VALUES ('1164', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712438', '0');
INSERT INTO `eb_system_log` VALUES ('1165', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712442', '0');
INSERT INTO `eb_system_log` VALUES ('1166', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712446', '0');
INSERT INTO `eb_system_log` VALUES ('1167', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712450', '0');
INSERT INTO `eb_system_log` VALUES ('1168', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712454', '0');
INSERT INTO `eb_system_log` VALUES ('1169', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712458', '0');
INSERT INTO `eb_system_log` VALUES ('1170', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712462', '0');
INSERT INTO `eb_system_log` VALUES ('1171', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712466', '0');
INSERT INTO `eb_system_log` VALUES ('1172', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712470', '0');
INSERT INTO `eb_system_log` VALUES ('1173', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712474', '0');
INSERT INTO `eb_system_log` VALUES ('1174', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712478', '0');
INSERT INTO `eb_system_log` VALUES ('1175', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712482', '0');
INSERT INTO `eb_system_log` VALUES ('1176', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712486', '0');
INSERT INTO `eb_system_log` VALUES ('1177', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712490', '0');
INSERT INTO `eb_system_log` VALUES ('1178', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712494', '0');
INSERT INTO `eb_system_log` VALUES ('1179', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712498', '0');
INSERT INTO `eb_system_log` VALUES ('1180', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712502', '0');
INSERT INTO `eb_system_log` VALUES ('1181', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712506', '0');
INSERT INTO `eb_system_log` VALUES ('1182', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712510', '0');
INSERT INTO `eb_system_log` VALUES ('1183', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712514', '0');
INSERT INTO `eb_system_log` VALUES ('1184', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712518', '0');
INSERT INTO `eb_system_log` VALUES ('1185', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712522', '0');
INSERT INTO `eb_system_log` VALUES ('1186', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712526', '0');
INSERT INTO `eb_system_log` VALUES ('1187', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712530', '0');
INSERT INTO `eb_system_log` VALUES ('1188', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712534', '0');
INSERT INTO `eb_system_log` VALUES ('1189', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712538', '0');
INSERT INTO `eb_system_log` VALUES ('1190', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712542', '0');
INSERT INTO `eb_system_log` VALUES ('1191', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712548', '0');
INSERT INTO `eb_system_log` VALUES ('1192', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712553', '0');
INSERT INTO `eb_system_log` VALUES ('1193', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712557', '0');
INSERT INTO `eb_system_log` VALUES ('1194', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712562', '0');
INSERT INTO `eb_system_log` VALUES ('1195', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712566', '0');
INSERT INTO `eb_system_log` VALUES ('1196', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712570', '0');
INSERT INTO `eb_system_log` VALUES ('1197', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712574', '0');
INSERT INTO `eb_system_log` VALUES ('1198', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712578', '0');
INSERT INTO `eb_system_log` VALUES ('1199', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712582', '0');
INSERT INTO `eb_system_log` VALUES ('1200', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712586', '0');
INSERT INTO `eb_system_log` VALUES ('1201', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712590', '0');
INSERT INTO `eb_system_log` VALUES ('1202', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712594', '0');
INSERT INTO `eb_system_log` VALUES ('1203', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712598', '0');
INSERT INTO `eb_system_log` VALUES ('1204', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712602', '0');
INSERT INTO `eb_system_log` VALUES ('1205', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712606', '0');
INSERT INTO `eb_system_log` VALUES ('1206', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712611', '0');
INSERT INTO `eb_system_log` VALUES ('1207', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712615', '0');
INSERT INTO `eb_system_log` VALUES ('1208', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712619', '0');
INSERT INTO `eb_system_log` VALUES ('1209', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712624', '0');
INSERT INTO `eb_system_log` VALUES ('1210', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712628', '0');
INSERT INTO `eb_system_log` VALUES ('1211', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712632', '0');
INSERT INTO `eb_system_log` VALUES ('1212', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712636', '0');
INSERT INTO `eb_system_log` VALUES ('1213', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712641', '0');
INSERT INTO `eb_system_log` VALUES ('1214', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712645', '0');
INSERT INTO `eb_system_log` VALUES ('1215', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712649', '0');
INSERT INTO `eb_system_log` VALUES ('1216', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712653', '0');
INSERT INTO `eb_system_log` VALUES ('1217', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588712660', '0');
INSERT INTO `eb_system_log` VALUES ('1218', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588712661', '0');
INSERT INTO `eb_system_log` VALUES ('1219', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588712664', '0');
INSERT INTO `eb_system_log` VALUES ('1220', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588713071', '0');
INSERT INTO `eb_system_log` VALUES ('1221', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713108', '0');
INSERT INTO `eb_system_log` VALUES ('1222', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '192.168.115.1', 'system', '1588713109', '0');
INSERT INTO `eb_system_log` VALUES ('1223', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '192.168.115.1', 'system', '1588713110', '0');
INSERT INTO `eb_system_log` VALUES ('1224', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '192.168.115.1', 'system', '1588713110', '0');
INSERT INTO `eb_system_log` VALUES ('1225', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713162', '0');
INSERT INTO `eb_system_log` VALUES ('1226', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713168', '0');
INSERT INTO `eb_system_log` VALUES ('1227', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '192.168.115.1', 'system', '1588713183', '0');
INSERT INTO `eb_system_log` VALUES ('1228', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713184', '0');
INSERT INTO `eb_system_log` VALUES ('1229', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713438', '0');
INSERT INTO `eb_system_log` VALUES ('1230', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '192.168.115.1', 'system', '1588713439', '0');
INSERT INTO `eb_system_log` VALUES ('1231', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '192.168.115.1', 'system', '1588713439', '0');
INSERT INTO `eb_system_log` VALUES ('1232', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713440', '0');
INSERT INTO `eb_system_log` VALUES ('1233', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713506', '0');
INSERT INTO `eb_system_log` VALUES ('1234', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588713507', '0');
INSERT INTO `eb_system_log` VALUES ('1235', '1', 'admin', 'admin/store.storeproduct/attr/', '未知', 'admin', '192.168.115.1', 'system', '1588713519', '0');
INSERT INTO `eb_system_log` VALUES ('1236', '1', 'admin', 'admin/store.storeproduct/clear_attr/', '未知', 'admin', '192.168.115.1', 'system', '1588713531', '0');
INSERT INTO `eb_system_log` VALUES ('1237', '1', 'admin', 'admin/store.storeproduct/attr/', '未知', 'admin', '192.168.115.1', 'system', '1588713532', '0');
INSERT INTO `eb_system_log` VALUES ('1238', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713974', '0');
INSERT INTO `eb_system_log` VALUES ('1239', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713978', '0');
INSERT INTO `eb_system_log` VALUES ('1240', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713981', '0');
INSERT INTO `eb_system_log` VALUES ('1241', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713981', '0');
INSERT INTO `eb_system_log` VALUES ('1242', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713984', '0');
INSERT INTO `eb_system_log` VALUES ('1243', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713984', '0');
INSERT INTO `eb_system_log` VALUES ('1244', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713985', '0');
INSERT INTO `eb_system_log` VALUES ('1245', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713988', '0');
INSERT INTO `eb_system_log` VALUES ('1246', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713989', '0');
INSERT INTO `eb_system_log` VALUES ('1247', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713989', '0');
INSERT INTO `eb_system_log` VALUES ('1248', '1', 'admin', 'admin/sms.smsadmin/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713989', '0');
INSERT INTO `eb_system_log` VALUES ('1249', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713992', '0');
INSERT INTO `eb_system_log` VALUES ('1250', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713993', '0');
INSERT INTO `eb_system_log` VALUES ('1251', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713993', '0');
INSERT INTO `eb_system_log` VALUES ('1252', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713997', '0');
INSERT INTO `eb_system_log` VALUES ('1253', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713997', '0');
INSERT INTO `eb_system_log` VALUES ('1254', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588713997', '0');
INSERT INTO `eb_system_log` VALUES ('1255', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714001', '0');
INSERT INTO `eb_system_log` VALUES ('1256', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714001', '0');
INSERT INTO `eb_system_log` VALUES ('1257', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714001', '0');
INSERT INTO `eb_system_log` VALUES ('1258', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714005', '0');
INSERT INTO `eb_system_log` VALUES ('1259', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714005', '0');
INSERT INTO `eb_system_log` VALUES ('1260', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714005', '0');
INSERT INTO `eb_system_log` VALUES ('1261', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714010', '0');
INSERT INTO `eb_system_log` VALUES ('1262', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714010', '0');
INSERT INTO `eb_system_log` VALUES ('1263', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714010', '0');
INSERT INTO `eb_system_log` VALUES ('1264', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714016', '0');
INSERT INTO `eb_system_log` VALUES ('1265', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714016', '0');
INSERT INTO `eb_system_log` VALUES ('1266', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714016', '0');
INSERT INTO `eb_system_log` VALUES ('1267', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714021', '0');
INSERT INTO `eb_system_log` VALUES ('1268', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714021', '0');
INSERT INTO `eb_system_log` VALUES ('1269', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714021', '0');
INSERT INTO `eb_system_log` VALUES ('1270', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714027', '0');
INSERT INTO `eb_system_log` VALUES ('1271', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714027', '0');
INSERT INTO `eb_system_log` VALUES ('1272', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714027', '0');
INSERT INTO `eb_system_log` VALUES ('1273', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714032', '0');
INSERT INTO `eb_system_log` VALUES ('1274', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714032', '0');
INSERT INTO `eb_system_log` VALUES ('1275', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714032', '0');
INSERT INTO `eb_system_log` VALUES ('1276', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714037', '0');
INSERT INTO `eb_system_log` VALUES ('1277', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714037', '0');
INSERT INTO `eb_system_log` VALUES ('1278', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714037', '0');
INSERT INTO `eb_system_log` VALUES ('1279', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714042', '0');
INSERT INTO `eb_system_log` VALUES ('1280', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714042', '0');
INSERT INTO `eb_system_log` VALUES ('1281', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714042', '0');
INSERT INTO `eb_system_log` VALUES ('1282', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714046', '0');
INSERT INTO `eb_system_log` VALUES ('1283', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714046', '0');
INSERT INTO `eb_system_log` VALUES ('1284', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714046', '0');
INSERT INTO `eb_system_log` VALUES ('1285', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714051', '0');
INSERT INTO `eb_system_log` VALUES ('1286', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714051', '0');
INSERT INTO `eb_system_log` VALUES ('1287', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714051', '0');
INSERT INTO `eb_system_log` VALUES ('1288', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714057', '0');
INSERT INTO `eb_system_log` VALUES ('1289', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714057', '0');
INSERT INTO `eb_system_log` VALUES ('1290', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714057', '0');
INSERT INTO `eb_system_log` VALUES ('1291', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714061', '0');
INSERT INTO `eb_system_log` VALUES ('1292', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714061', '0');
INSERT INTO `eb_system_log` VALUES ('1293', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714061', '0');
INSERT INTO `eb_system_log` VALUES ('1294', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714066', '0');
INSERT INTO `eb_system_log` VALUES ('1295', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714066', '0');
INSERT INTO `eb_system_log` VALUES ('1296', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714066', '0');
INSERT INTO `eb_system_log` VALUES ('1297', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714071', '0');
INSERT INTO `eb_system_log` VALUES ('1298', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714071', '0');
INSERT INTO `eb_system_log` VALUES ('1299', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714071', '0');
INSERT INTO `eb_system_log` VALUES ('1300', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714076', '0');
INSERT INTO `eb_system_log` VALUES ('1301', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714076', '0');
INSERT INTO `eb_system_log` VALUES ('1302', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714076', '0');
INSERT INTO `eb_system_log` VALUES ('1303', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714081', '0');
INSERT INTO `eb_system_log` VALUES ('1304', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714081', '0');
INSERT INTO `eb_system_log` VALUES ('1305', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714081', '0');
INSERT INTO `eb_system_log` VALUES ('1306', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714086', '0');
INSERT INTO `eb_system_log` VALUES ('1307', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714086', '0');
INSERT INTO `eb_system_log` VALUES ('1308', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714086', '0');
INSERT INTO `eb_system_log` VALUES ('1309', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714091', '0');
INSERT INTO `eb_system_log` VALUES ('1310', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714091', '0');
INSERT INTO `eb_system_log` VALUES ('1311', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714091', '0');
INSERT INTO `eb_system_log` VALUES ('1312', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714096', '0');
INSERT INTO `eb_system_log` VALUES ('1313', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714096', '0');
INSERT INTO `eb_system_log` VALUES ('1314', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714096', '0');
INSERT INTO `eb_system_log` VALUES ('1315', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714101', '0');
INSERT INTO `eb_system_log` VALUES ('1316', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714102', '0');
INSERT INTO `eb_system_log` VALUES ('1317', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714102', '0');
INSERT INTO `eb_system_log` VALUES ('1318', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714106', '0');
INSERT INTO `eb_system_log` VALUES ('1319', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714107', '0');
INSERT INTO `eb_system_log` VALUES ('1320', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714107', '0');
INSERT INTO `eb_system_log` VALUES ('1321', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714112', '0');
INSERT INTO `eb_system_log` VALUES ('1322', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714112', '0');
INSERT INTO `eb_system_log` VALUES ('1323', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714112', '0');
INSERT INTO `eb_system_log` VALUES ('1324', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714116', '0');
INSERT INTO `eb_system_log` VALUES ('1325', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714116', '0');
INSERT INTO `eb_system_log` VALUES ('1326', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714116', '0');
INSERT INTO `eb_system_log` VALUES ('1327', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714121', '0');
INSERT INTO `eb_system_log` VALUES ('1328', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714121', '0');
INSERT INTO `eb_system_log` VALUES ('1329', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714121', '0');
INSERT INTO `eb_system_log` VALUES ('1330', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714127', '0');
INSERT INTO `eb_system_log` VALUES ('1331', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714127', '0');
INSERT INTO `eb_system_log` VALUES ('1332', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714127', '0');
INSERT INTO `eb_system_log` VALUES ('1333', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714131', '0');
INSERT INTO `eb_system_log` VALUES ('1334', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714131', '0');
INSERT INTO `eb_system_log` VALUES ('1335', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714131', '0');
INSERT INTO `eb_system_log` VALUES ('1336', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714137', '0');
INSERT INTO `eb_system_log` VALUES ('1337', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714137', '0');
INSERT INTO `eb_system_log` VALUES ('1338', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714137', '0');
INSERT INTO `eb_system_log` VALUES ('1339', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714141', '0');
INSERT INTO `eb_system_log` VALUES ('1340', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714141', '0');
INSERT INTO `eb_system_log` VALUES ('1341', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714141', '0');
INSERT INTO `eb_system_log` VALUES ('1342', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714147', '0');
INSERT INTO `eb_system_log` VALUES ('1343', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714147', '0');
INSERT INTO `eb_system_log` VALUES ('1344', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714147', '0');
INSERT INTO `eb_system_log` VALUES ('1345', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714151', '0');
INSERT INTO `eb_system_log` VALUES ('1346', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714151', '0');
INSERT INTO `eb_system_log` VALUES ('1347', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714151', '0');
INSERT INTO `eb_system_log` VALUES ('1348', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714156', '0');
INSERT INTO `eb_system_log` VALUES ('1349', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714156', '0');
INSERT INTO `eb_system_log` VALUES ('1350', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714156', '0');
INSERT INTO `eb_system_log` VALUES ('1351', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714161', '0');
INSERT INTO `eb_system_log` VALUES ('1352', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714161', '0');
INSERT INTO `eb_system_log` VALUES ('1353', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714161', '0');
INSERT INTO `eb_system_log` VALUES ('1354', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714166', '0');
INSERT INTO `eb_system_log` VALUES ('1355', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714166', '0');
INSERT INTO `eb_system_log` VALUES ('1356', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714166', '0');
INSERT INTO `eb_system_log` VALUES ('1357', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714171', '0');
INSERT INTO `eb_system_log` VALUES ('1358', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714171', '0');
INSERT INTO `eb_system_log` VALUES ('1359', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714171', '0');
INSERT INTO `eb_system_log` VALUES ('1360', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714176', '0');
INSERT INTO `eb_system_log` VALUES ('1361', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714176', '0');
INSERT INTO `eb_system_log` VALUES ('1362', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714176', '0');
INSERT INTO `eb_system_log` VALUES ('1363', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714181', '0');
INSERT INTO `eb_system_log` VALUES ('1364', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714181', '0');
INSERT INTO `eb_system_log` VALUES ('1365', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714181', '0');
INSERT INTO `eb_system_log` VALUES ('1366', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714186', '0');
INSERT INTO `eb_system_log` VALUES ('1367', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714186', '0');
INSERT INTO `eb_system_log` VALUES ('1368', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714186', '0');
INSERT INTO `eb_system_log` VALUES ('1369', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714192', '0');
INSERT INTO `eb_system_log` VALUES ('1370', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714192', '0');
INSERT INTO `eb_system_log` VALUES ('1371', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714192', '0');
INSERT INTO `eb_system_log` VALUES ('1372', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714196', '0');
INSERT INTO `eb_system_log` VALUES ('1373', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714196', '0');
INSERT INTO `eb_system_log` VALUES ('1374', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714196', '0');
INSERT INTO `eb_system_log` VALUES ('1375', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714200', '0');
INSERT INTO `eb_system_log` VALUES ('1376', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714200', '0');
INSERT INTO `eb_system_log` VALUES ('1377', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714200', '0');
INSERT INTO `eb_system_log` VALUES ('1378', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714204', '0');
INSERT INTO `eb_system_log` VALUES ('1379', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714204', '0');
INSERT INTO `eb_system_log` VALUES ('1380', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714204', '0');
INSERT INTO `eb_system_log` VALUES ('1381', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714209', '0');
INSERT INTO `eb_system_log` VALUES ('1382', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714209', '0');
INSERT INTO `eb_system_log` VALUES ('1383', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714209', '0');
INSERT INTO `eb_system_log` VALUES ('1384', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714213', '0');
INSERT INTO `eb_system_log` VALUES ('1385', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714213', '0');
INSERT INTO `eb_system_log` VALUES ('1386', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714213', '0');
INSERT INTO `eb_system_log` VALUES ('1387', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714218', '0');
INSERT INTO `eb_system_log` VALUES ('1388', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714218', '0');
INSERT INTO `eb_system_log` VALUES ('1389', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714218', '0');
INSERT INTO `eb_system_log` VALUES ('1390', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714222', '0');
INSERT INTO `eb_system_log` VALUES ('1391', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714222', '0');
INSERT INTO `eb_system_log` VALUES ('1392', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714222', '0');
INSERT INTO `eb_system_log` VALUES ('1393', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714226', '0');
INSERT INTO `eb_system_log` VALUES ('1394', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714226', '0');
INSERT INTO `eb_system_log` VALUES ('1395', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714226', '0');
INSERT INTO `eb_system_log` VALUES ('1396', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588714230', '0');
INSERT INTO `eb_system_log` VALUES ('1397', '1', 'admin', 'admin/store.storeproduct/attr/', '未知', 'admin', '192.168.115.1', 'system', '1588717986', '0');
INSERT INTO `eb_system_log` VALUES ('1398', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '192.168.115.1', 'system', '1588717990', '0');
INSERT INTO `eb_system_log` VALUES ('1399', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588718028', '0');
INSERT INTO `eb_system_log` VALUES ('1400', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588718029', '0');
INSERT INTO `eb_system_log` VALUES ('1401', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588718047', '0');
INSERT INTO `eb_system_log` VALUES ('1402', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588718048', '0');
INSERT INTO `eb_system_log` VALUES ('1403', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588718058', '0');
INSERT INTO `eb_system_log` VALUES ('1404', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588718058', '0');
INSERT INTO `eb_system_log` VALUES ('1405', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '192.168.115.1', 'system', '1588718129', '0');
INSERT INTO `eb_system_log` VALUES ('1406', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '192.168.115.1', 'system', '1588718129', '0');
INSERT INTO `eb_system_log` VALUES ('1407', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588734832', '0');
INSERT INTO `eb_system_log` VALUES ('1408', '1', 'admin', 'admin/sms.smsconfig/save_basics/', '未知', 'admin', '192.168.115.1', 'system', '1588734845', '0');
INSERT INTO `eb_system_log` VALUES ('1409', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588734848', '0');
INSERT INTO `eb_system_log` VALUES ('1410', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588734853', '0');
INSERT INTO `eb_system_log` VALUES ('1411', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588734854', '0');
INSERT INTO `eb_system_log` VALUES ('1412', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588735003', '0');
INSERT INTO `eb_system_log` VALUES ('1413', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588735036', '0');
INSERT INTO `eb_system_log` VALUES ('1414', '1', 'admin', 'admin/sms.smspay/number/', '未知', 'admin', '192.168.115.1', 'system', '1588735038', '0');
INSERT INTO `eb_system_log` VALUES ('1415', '1', 'admin', 'admin/sms.smspay/price/', '未知', 'admin', '192.168.115.1', 'system', '1588735038', '0');
INSERT INTO `eb_system_log` VALUES ('1416', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588735046', '0');
INSERT INTO `eb_system_log` VALUES ('1417', '1', 'admin', 'admin/sms.smspublictemp/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588735047', '0');
INSERT INTO `eb_system_log` VALUES ('1418', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588735108', '0');
INSERT INTO `eb_system_log` VALUES ('1419', '1', 'admin', 'admin/sms.smstemplateapply/save/', '未知', 'admin', '192.168.115.1', 'system', '1588735141', '0');
INSERT INTO `eb_system_log` VALUES ('1420', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588735141', '0');
INSERT INTO `eb_system_log` VALUES ('1421', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588735143', '0');
INSERT INTO `eb_system_log` VALUES ('1422', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588735295', '0');
INSERT INTO `eb_system_log` VALUES ('1423', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588735709', '0');
INSERT INTO `eb_system_log` VALUES ('1424', '1', 'admin', 'admin/sms.smstemplateapply/save/', '未知', 'admin', '192.168.115.1', 'system', '1588735760', '0');
INSERT INTO `eb_system_log` VALUES ('1425', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588735761', '0');
INSERT INTO `eb_system_log` VALUES ('1426', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588735762', '0');
INSERT INTO `eb_system_log` VALUES ('1427', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588735783', '0');
INSERT INTO `eb_system_log` VALUES ('1428', '1', 'admin', 'admin/sms.smstemplateapply/save/', '未知', 'admin', '192.168.115.1', 'system', '1588735817', '0');
INSERT INTO `eb_system_log` VALUES ('1429', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588735818', '0');
INSERT INTO `eb_system_log` VALUES ('1430', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588735820', '0');
INSERT INTO `eb_system_log` VALUES ('1431', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588736752', '0');
INSERT INTO `eb_system_log` VALUES ('1432', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588736757', '0');
INSERT INTO `eb_system_log` VALUES ('1433', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588736760', '0');
INSERT INTO `eb_system_log` VALUES ('1434', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588736841', '0');
INSERT INTO `eb_system_log` VALUES ('1435', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588736844', '0');
INSERT INTO `eb_system_log` VALUES ('1436', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588736846', '0');
INSERT INTO `eb_system_log` VALUES ('1437', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '192.168.115.1', 'system', '1588736869', '0');
INSERT INTO `eb_system_log` VALUES ('1438', '1', 'admin', 'admin/sms.smspay/number/', '未知', 'admin', '192.168.115.1', 'system', '1588736870', '0');
INSERT INTO `eb_system_log` VALUES ('1439', '1', 'admin', 'admin/sms.smspay/price/', '未知', 'admin', '192.168.115.1', 'system', '1588736870', '0');
INSERT INTO `eb_system_log` VALUES ('1440', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '192.168.115.1', 'system', '1588736876', '0');
INSERT INTO `eb_system_log` VALUES ('1441', '1', 'admin', 'admin/sms.smspublictemp/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588736877', '0');
INSERT INTO `eb_system_log` VALUES ('1442', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588739729', '0');
INSERT INTO `eb_system_log` VALUES ('1443', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '192.168.115.1', 'system', '1588739731', '0');
INSERT INTO `eb_system_log` VALUES ('1444', '1', 'admin', 'admin/sms.smstemplateapply/create/', '未知', 'admin', '192.168.115.1', 'system', '1588739732', '0');
INSERT INTO `eb_system_log` VALUES ('1445', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '192.168.115.1', 'system', '1588739744', '0');
INSERT INTO `eb_system_log` VALUES ('1446', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588782505', '0');
INSERT INTO `eb_system_log` VALUES ('1447', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588782506', '0');
INSERT INTO `eb_system_log` VALUES ('1448', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588782506', '0');
INSERT INTO `eb_system_log` VALUES ('1449', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '192.168.115.1', 'system', '1588782509', '0');
INSERT INTO `eb_system_log` VALUES ('1450', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '192.168.115.1', 'system', '1588782510', '0');
INSERT INTO `eb_system_log` VALUES ('1451', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '192.168.115.1', 'system', '1588782511', '0');
INSERT INTO `eb_system_log` VALUES ('1452', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '192.168.115.1', 'system', '1588782511', '0');
INSERT INTO `eb_system_log` VALUES ('1453', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588815771', '0');
INSERT INTO `eb_system_log` VALUES ('1454', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588815773', '0');
INSERT INTO `eb_system_log` VALUES ('1455', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588815773', '0');
INSERT INTO `eb_system_log` VALUES ('1456', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588815988', '0');
INSERT INTO `eb_system_log` VALUES ('1457', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588815990', '0');
INSERT INTO `eb_system_log` VALUES ('1458', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588815990', '0');
INSERT INTO `eb_system_log` VALUES ('1459', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588816000', '0');
INSERT INTO `eb_system_log` VALUES ('1460', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588816002', '0');
INSERT INTO `eb_system_log` VALUES ('1461', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588816002', '0');
INSERT INTO `eb_system_log` VALUES ('1462', '1', 'admin', 'admin/order.storeorder/offline/id/5', '未知', 'admin', '192.168.115.1', 'system', '1588816016', '0');
INSERT INTO `eb_system_log` VALUES ('1463', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588816030', '0');
INSERT INTO `eb_system_log` VALUES ('1464', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588816030', '0');
INSERT INTO `eb_system_log` VALUES ('1465', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588816240', '0');
INSERT INTO `eb_system_log` VALUES ('1466', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588816243', '0');
INSERT INTO `eb_system_log` VALUES ('1467', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588816243', '0');
INSERT INTO `eb_system_log` VALUES ('1468', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588816323', '0');
INSERT INTO `eb_system_log` VALUES ('1469', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588816325', '0');
INSERT INTO `eb_system_log` VALUES ('1470', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588816325', '0');
INSERT INTO `eb_system_log` VALUES ('1471', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588816416', '0');
INSERT INTO `eb_system_log` VALUES ('1472', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588816418', '0');
INSERT INTO `eb_system_log` VALUES ('1473', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588816418', '0');
INSERT INTO `eb_system_log` VALUES ('1474', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588819059', '0');
INSERT INTO `eb_system_log` VALUES ('1475', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588819062', '0');
INSERT INTO `eb_system_log` VALUES ('1476', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588819062', '0');
INSERT INTO `eb_system_log` VALUES ('1477', '1', 'admin', 'admin/order.storeorder/order_paid_cancle/id/6', '未知', 'admin', '192.168.115.1', 'system', '1588819067', '0');
INSERT INTO `eb_system_log` VALUES ('1478', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588819133', '0');
INSERT INTO `eb_system_log` VALUES ('1479', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588819136', '0');
INSERT INTO `eb_system_log` VALUES ('1480', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588819136', '0');
INSERT INTO `eb_system_log` VALUES ('1481', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588819196', '0');
INSERT INTO `eb_system_log` VALUES ('1482', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588819198', '0');
INSERT INTO `eb_system_log` VALUES ('1483', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588819198', '0');
INSERT INTO `eb_system_log` VALUES ('1484', '1', 'admin', 'admin/order.storeorder/order_paid_cancle/id/6', '未知', 'admin', '192.168.115.1', 'system', '1588819238', '0');
INSERT INTO `eb_system_log` VALUES ('1485', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588819270', '0');
INSERT INTO `eb_system_log` VALUES ('1486', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588819274', '0');
INSERT INTO `eb_system_log` VALUES ('1487', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588819274', '0');
INSERT INTO `eb_system_log` VALUES ('1488', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588819938', '0');
INSERT INTO `eb_system_log` VALUES ('1489', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588819943', '0');
INSERT INTO `eb_system_log` VALUES ('1490', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588819943', '0');
INSERT INTO `eb_system_log` VALUES ('1491', '1', 'admin', 'admin/order.storeorder/payh5code/id/7', '未知', 'admin', '192.168.115.1', 'system', '1588819948', '0');
INSERT INTO `eb_system_log` VALUES ('1492', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588820025', '0');
INSERT INTO `eb_system_log` VALUES ('1493', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588820029', '0');
INSERT INTO `eb_system_log` VALUES ('1494', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588820029', '0');
INSERT INTO `eb_system_log` VALUES ('1495', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588820130', '0');
INSERT INTO `eb_system_log` VALUES ('1496', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588820133', '0');
INSERT INTO `eb_system_log` VALUES ('1497', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588820133', '0');
INSERT INTO `eb_system_log` VALUES ('1498', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588820144', '0');
INSERT INTO `eb_system_log` VALUES ('1499', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588820144', '0');
INSERT INTO `eb_system_log` VALUES ('1500', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588820153', '0');
INSERT INTO `eb_system_log` VALUES ('1501', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588820153', '0');
INSERT INTO `eb_system_log` VALUES ('1502', '1', 'admin', 'admin/order.storeorder/del_order/', '未知', 'admin', '192.168.115.1', 'system', '1588820158', '0');
INSERT INTO `eb_system_log` VALUES ('1503', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588820379', '0');
INSERT INTO `eb_system_log` VALUES ('1504', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588820383', '0');
INSERT INTO `eb_system_log` VALUES ('1505', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588820383', '0');
INSERT INTO `eb_system_log` VALUES ('1506', '1', 'admin', 'admin/store.storeproductreply/index/', '未知', 'admin', '192.168.115.1', 'system', '1588849828', '0');
INSERT INTO `eb_system_log` VALUES ('1507', '1', 'admin', 'admin/store.storeproductreply/get_product_reply_list/', '未知', 'admin', '192.168.115.1', 'system', '1588849830', '0');
INSERT INTO `eb_system_log` VALUES ('1508', '1', 'admin', 'admin/store.storeproductreply/get_product_imaes_list/', '未知', 'admin', '192.168.115.1', 'system', '1588849830', '0');
INSERT INTO `eb_system_log` VALUES ('1509', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588849840', '0');
INSERT INTO `eb_system_log` VALUES ('1510', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588849842', '0');
INSERT INTO `eb_system_log` VALUES ('1511', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588849842', '0');
INSERT INTO `eb_system_log` VALUES ('1512', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588849941', '0');
INSERT INTO `eb_system_log` VALUES ('1513', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588849942', '0');
INSERT INTO `eb_system_log` VALUES ('1514', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588849942', '0');
INSERT INTO `eb_system_log` VALUES ('1515', '1', 'admin', 'admin/order.storeorder/payh5code/id/8', '未知', 'admin', '192.168.115.1', 'system', '1588849947', '0');
INSERT INTO `eb_system_log` VALUES ('1516', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588849962', '0');
INSERT INTO `eb_system_log` VALUES ('1517', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588849963', '0');
INSERT INTO `eb_system_log` VALUES ('1518', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588849964', '0');
INSERT INTO `eb_system_log` VALUES ('1519', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588883222', '0');
INSERT INTO `eb_system_log` VALUES ('1520', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588883223', '0');
INSERT INTO `eb_system_log` VALUES ('1521', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588883223', '0');
INSERT INTO `eb_system_log` VALUES ('1522', '1', 'admin', 'admin/order.storeorder/order_paid_cancle/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588883271', '0');
INSERT INTO `eb_system_log` VALUES ('1523', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588883306', '0');
INSERT INTO `eb_system_log` VALUES ('1524', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588883307', '0');
INSERT INTO `eb_system_log` VALUES ('1525', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588883307', '0');
INSERT INTO `eb_system_log` VALUES ('1526', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588890769', '0');
INSERT INTO `eb_system_log` VALUES ('1527', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588890770', '0');
INSERT INTO `eb_system_log` VALUES ('1528', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588890770', '0');
INSERT INTO `eb_system_log` VALUES ('1529', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588890812', '0');
INSERT INTO `eb_system_log` VALUES ('1530', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588890814', '0');
INSERT INTO `eb_system_log` VALUES ('1531', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588890814', '0');
INSERT INTO `eb_system_log` VALUES ('1532', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588891109', '0');
INSERT INTO `eb_system_log` VALUES ('1533', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588891111', '0');
INSERT INTO `eb_system_log` VALUES ('1534', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588891111', '0');
INSERT INTO `eb_system_log` VALUES ('1535', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588891780', '0');
INSERT INTO `eb_system_log` VALUES ('1536', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588891781', '0');
INSERT INTO `eb_system_log` VALUES ('1537', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588891781', '0');
INSERT INTO `eb_system_log` VALUES ('1538', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588891845', '0');
INSERT INTO `eb_system_log` VALUES ('1539', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588891846', '0');
INSERT INTO `eb_system_log` VALUES ('1540', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588891846', '0');
INSERT INTO `eb_system_log` VALUES ('1541', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588892082', '0');
INSERT INTO `eb_system_log` VALUES ('1542', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588892083', '0');
INSERT INTO `eb_system_log` VALUES ('1543', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588892083', '0');
INSERT INTO `eb_system_log` VALUES ('1544', '1', 'admin', 'admin/order.storeorder/order_sale_cancle/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588892090', '0');
INSERT INTO `eb_system_log` VALUES ('1545', '1', 'admin', 'admin/order.storeorder/order_sale_cancle/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588892697', '0');
INSERT INTO `eb_system_log` VALUES ('1546', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588892705', '0');
INSERT INTO `eb_system_log` VALUES ('1547', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588892706', '0');
INSERT INTO `eb_system_log` VALUES ('1548', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588892706', '0');
INSERT INTO `eb_system_log` VALUES ('1549', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588892726', '0');
INSERT INTO `eb_system_log` VALUES ('1550', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588892727', '0');
INSERT INTO `eb_system_log` VALUES ('1551', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588892727', '0');
INSERT INTO `eb_system_log` VALUES ('1552', '1', 'admin', 'admin/order.storeorder/order_sale/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588892731', '0');
INSERT INTO `eb_system_log` VALUES ('1553', '1', 'admin', 'admin/order.storeorder/order_sale/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588892837', '0');
INSERT INTO `eb_system_log` VALUES ('1554', '1', 'admin', 'admin/order.storeorder/order_sale/id/9', '未知', 'admin', '192.168.115.1', 'system', '1588892916', '0');
INSERT INTO `eb_system_log` VALUES ('1555', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '192.168.115.1', 'system', '1588892925', '0');
INSERT INTO `eb_system_log` VALUES ('1556', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588892926', '0');
INSERT INTO `eb_system_log` VALUES ('1557', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588892926', '0');
INSERT INTO `eb_system_log` VALUES ('1558', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '192.168.115.1', 'system', '1588892934', '0');
INSERT INTO `eb_system_log` VALUES ('1559', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '192.168.115.1', 'system', '1588892934', '0');
INSERT INTO `eb_system_log` VALUES ('1560', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909348', '0');
INSERT INTO `eb_system_log` VALUES ('1561', '1', 'admin', 'admin/finance.finance/get_commission_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909348', '0');
INSERT INTO `eb_system_log` VALUES ('1562', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909353', '0');
INSERT INTO `eb_system_log` VALUES ('1563', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909357', '0');
INSERT INTO `eb_system_log` VALUES ('1564', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909358', '0');
INSERT INTO `eb_system_log` VALUES ('1565', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909358', '0');
INSERT INTO `eb_system_log` VALUES ('1566', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '127.0.0.1', 'system', '1588909358', '0');
INSERT INTO `eb_system_log` VALUES ('1567', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909361', '0');
INSERT INTO `eb_system_log` VALUES ('1568', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909361', '0');
INSERT INTO `eb_system_log` VALUES ('1569', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '127.0.0.1', 'system', '1588909361', '0');
INSERT INTO `eb_system_log` VALUES ('1570', '1', 'admin', 'admin/store.storecategory/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909363', '0');
INSERT INTO `eb_system_log` VALUES ('1571', '1', 'admin', 'admin/store.storecategory/category_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909363', '0');
INSERT INTO `eb_system_log` VALUES ('1572', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909363', '0');
INSERT INTO `eb_system_log` VALUES ('1573', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '127.0.0.1', 'system', '1588909364', '0');
INSERT INTO `eb_system_log` VALUES ('1574', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909365', '0');
INSERT INTO `eb_system_log` VALUES ('1575', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '127.0.0.1', 'system', '1588909365', '0');
INSERT INTO `eb_system_log` VALUES ('1576', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '127.0.0.1', 'system', '1588909365', '0');
INSERT INTO `eb_system_log` VALUES ('1577', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '127.0.0.1', 'system', '1588909365', '0');
INSERT INTO `eb_system_log` VALUES ('1578', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '127.0.0.1', 'system', '1588909366', '0');
INSERT INTO `eb_system_log` VALUES ('1579', '1', 'admin', 'admin/article.articlecategory/index/', '未知', 'admin', '127.0.0.1', 'system', '1588909368', '0');
INSERT INTO `eb_system_log` VALUES ('1580', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910013', '0');
INSERT INTO `eb_system_log` VALUES ('1581', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910013', '0');
INSERT INTO `eb_system_log` VALUES ('1582', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '127.0.0.1', 'system', '1588910013', '0');
INSERT INTO `eb_system_log` VALUES ('1583', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910020', '0');
INSERT INTO `eb_system_log` VALUES ('1584', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910027', '0');
INSERT INTO `eb_system_log` VALUES ('1585', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910028', '0');
INSERT INTO `eb_system_log` VALUES ('1586', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '127.0.0.1', 'system', '1588910028', '0');
INSERT INTO `eb_system_log` VALUES ('1587', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910327', '0');
INSERT INTO `eb_system_log` VALUES ('1588', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910327', '0');
INSERT INTO `eb_system_log` VALUES ('1589', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '127.0.0.1', 'system', '1588910327', '0');
INSERT INTO `eb_system_log` VALUES ('1590', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910349', '0');
INSERT INTO `eb_system_log` VALUES ('1591', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910365', '0');
INSERT INTO `eb_system_log` VALUES ('1592', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910381', '0');
INSERT INTO `eb_system_log` VALUES ('1593', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910434', '0');
INSERT INTO `eb_system_log` VALUES ('1594', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910480', '0');
INSERT INTO `eb_system_log` VALUES ('1595', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910487', '0');
INSERT INTO `eb_system_log` VALUES ('1596', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910496', '0');
INSERT INTO `eb_system_log` VALUES ('1597', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910503', '0');
INSERT INTO `eb_system_log` VALUES ('1598', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910511', '0');
INSERT INTO `eb_system_log` VALUES ('1599', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910515', '0');
INSERT INTO `eb_system_log` VALUES ('1600', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910541', '0');
INSERT INTO `eb_system_log` VALUES ('1601', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910603', '0');
INSERT INTO `eb_system_log` VALUES ('1602', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910605', '0');
INSERT INTO `eb_system_log` VALUES ('1603', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910627', '0');
INSERT INTO `eb_system_log` VALUES ('1604', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '127.0.0.1', 'system', '1588910632', '0');
INSERT INTO `eb_system_log` VALUES ('1605', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910633', '0');
INSERT INTO `eb_system_log` VALUES ('1606', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '127.0.0.1', 'system', '1588910635', '0');
INSERT INTO `eb_system_log` VALUES ('1607', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910636', '0');
INSERT INTO `eb_system_log` VALUES ('1608', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '127.0.0.1', 'system', '1588910638', '0');
INSERT INTO `eb_system_log` VALUES ('1609', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910638', '0');
INSERT INTO `eb_system_log` VALUES ('1610', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '127.0.0.1', 'system', '1588910643', '0');
INSERT INTO `eb_system_log` VALUES ('1611', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910643', '0');
INSERT INTO `eb_system_log` VALUES ('1612', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910651', '0');
INSERT INTO `eb_system_log` VALUES ('1613', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '127.0.0.1', 'system', '1588910654', '0');
INSERT INTO `eb_system_log` VALUES ('1614', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910654', '0');
INSERT INTO `eb_system_log` VALUES ('1615', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910660', '0');
INSERT INTO `eb_system_log` VALUES ('1616', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910677', '0');
INSERT INTO `eb_system_log` VALUES ('1617', '1', 'admin', 'admin/order.storeorder/payh5code/id/10', '未知', 'admin', '127.0.0.1', 'system', '1588910686', '0');
INSERT INTO `eb_system_log` VALUES ('1618', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910734', '0');
INSERT INTO `eb_system_log` VALUES ('1619', '1', 'admin', 'admin/finance.finance/get_commission_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910734', '0');
INSERT INTO `eb_system_log` VALUES ('1620', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910736', '0');
INSERT INTO `eb_system_log` VALUES ('1621', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910738', '0');
INSERT INTO `eb_system_log` VALUES ('1622', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '127.0.0.1', 'system', '1588910739', '0');
INSERT INTO `eb_system_log` VALUES ('1623', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '127.0.0.1', 'system', '1588910739', '0');
INSERT INTO `eb_system_log` VALUES ('1624', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '127.0.0.1', 'system', '1588910740', '0');
INSERT INTO `eb_system_log` VALUES ('1625', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588916456', '0');
INSERT INTO `eb_system_log` VALUES ('1626', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588916457', '0');
INSERT INTO `eb_system_log` VALUES ('1627', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1588916460', '0');
INSERT INTO `eb_system_log` VALUES ('1628', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1588916460', '0');
INSERT INTO `eb_system_log` VALUES ('1629', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1588916460', '0');
INSERT INTO `eb_system_log` VALUES ('1630', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '10.0.83.12', 'system', '1588916481', '0');
INSERT INTO `eb_system_log` VALUES ('1631', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1588916481', '0');
INSERT INTO `eb_system_log` VALUES ('1632', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1588916482', '0');
INSERT INTO `eb_system_log` VALUES ('1633', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1588916556', '0');
INSERT INTO `eb_system_log` VALUES ('1634', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1588916556', '0');
INSERT INTO `eb_system_log` VALUES ('1635', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1588916556', '0');
INSERT INTO `eb_system_log` VALUES ('1636', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917067', '0');
INSERT INTO `eb_system_log` VALUES ('1637', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1588917067', '0');
INSERT INTO `eb_system_log` VALUES ('1638', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1588917067', '0');
INSERT INTO `eb_system_log` VALUES ('1639', '1', 'admin', 'admin/order.storeorder/order_info/', '未知', 'admin', '10.0.83.12', 'system', '1588917079', '0');
INSERT INTO `eb_system_log` VALUES ('1640', '1', 'admin', 'admin/order.storeorder/refund_y/', '未知', 'admin', '10.0.83.12', 'system', '1588917093', '0');
INSERT INTO `eb_system_log` VALUES ('1641', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917414', '0');
INSERT INTO `eb_system_log` VALUES ('1642', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917418', '0');
INSERT INTO `eb_system_log` VALUES ('1643', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '10.0.83.12', 'system', '1588917418', '0');
INSERT INTO `eb_system_log` VALUES ('1644', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '10.0.83.12', 'system', '1588917418', '0');
INSERT INTO `eb_system_log` VALUES ('1645', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917707', '0');
INSERT INTO `eb_system_log` VALUES ('1646', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917764', '0');
INSERT INTO `eb_system_log` VALUES ('1647', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917795', '0');
INSERT INTO `eb_system_log` VALUES ('1648', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '10.0.83.12', 'system', '1588917795', '0');
INSERT INTO `eb_system_log` VALUES ('1649', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '10.0.83.12', 'system', '1588917795', '0');
INSERT INTO `eb_system_log` VALUES ('1650', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588917808', '0');
INSERT INTO `eb_system_log` VALUES ('1651', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918062', '0');
INSERT INTO `eb_system_log` VALUES ('1652', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918102', '0');
INSERT INTO `eb_system_log` VALUES ('1653', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918463', '0');
INSERT INTO `eb_system_log` VALUES ('1654', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918485', '0');
INSERT INTO `eb_system_log` VALUES ('1655', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918489', '0');
INSERT INTO `eb_system_log` VALUES ('1656', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '10.0.83.12', 'system', '1588918490', '0');
INSERT INTO `eb_system_log` VALUES ('1657', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '10.0.83.12', 'system', '1588918490', '0');
INSERT INTO `eb_system_log` VALUES ('1658', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918506', '0');
INSERT INTO `eb_system_log` VALUES ('1659', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918575', '0');
INSERT INTO `eb_system_log` VALUES ('1660', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918625', '0');
INSERT INTO `eb_system_log` VALUES ('1661', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918653', '0');
INSERT INTO `eb_system_log` VALUES ('1662', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588918653', '0');
INSERT INTO `eb_system_log` VALUES ('1663', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1588918691', '0');
INSERT INTO `eb_system_log` VALUES ('1664', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1588918692', '0');
INSERT INTO `eb_system_log` VALUES ('1665', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1588918692', '0');
INSERT INTO `eb_system_log` VALUES ('1666', '1', 'admin', 'admin/store.storecategory/index/', '未知', 'admin', '10.0.83.12', 'system', '1588919076', '0');
INSERT INTO `eb_system_log` VALUES ('1667', '1', 'admin', 'admin/store.storecategory/category_list/', '未知', 'admin', '10.0.83.12', 'system', '1588919076', '0');
INSERT INTO `eb_system_log` VALUES ('1668', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588919136', '0');
INSERT INTO `eb_system_log` VALUES ('1669', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588919139', '0');
INSERT INTO `eb_system_log` VALUES ('1670', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588919144', '0');
INSERT INTO `eb_system_log` VALUES ('1671', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588919375', '0');
INSERT INTO `eb_system_log` VALUES ('1672', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588919379', '0');
INSERT INTO `eb_system_log` VALUES ('1673', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588919379', '0');
INSERT INTO `eb_system_log` VALUES ('1674', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588919379', '0');
INSERT INTO `eb_system_log` VALUES ('1675', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588919394', '0');
INSERT INTO `eb_system_log` VALUES ('1676', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588919394', '0');
INSERT INTO `eb_system_log` VALUES ('1677', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588919403', '0');
INSERT INTO `eb_system_log` VALUES ('1678', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588919403', '0');
INSERT INTO `eb_system_log` VALUES ('1679', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588919919', '0');
INSERT INTO `eb_system_log` VALUES ('1680', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588919919', '0');
INSERT INTO `eb_system_log` VALUES ('1681', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588919927', '0');
INSERT INTO `eb_system_log` VALUES ('1682', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588919927', '0');
INSERT INTO `eb_system_log` VALUES ('1683', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588920016', '0');
INSERT INTO `eb_system_log` VALUES ('1684', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920016', '0');
INSERT INTO `eb_system_log` VALUES ('1685', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920029', '0');
INSERT INTO `eb_system_log` VALUES ('1686', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920036', '0');
INSERT INTO `eb_system_log` VALUES ('1687', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920042', '0');
INSERT INTO `eb_system_log` VALUES ('1688', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920046', '0');
INSERT INTO `eb_system_log` VALUES ('1689', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920055', '0');
INSERT INTO `eb_system_log` VALUES ('1690', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920056', '0');
INSERT INTO `eb_system_log` VALUES ('1691', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920056', '0');
INSERT INTO `eb_system_log` VALUES ('1692', '1', 'admin', 'admin/widget.images/addcate/id/0', '未知', 'admin', '10.0.83.12', 'system', '1588920066', '0');
INSERT INTO `eb_system_log` VALUES ('1693', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588920073', '0');
INSERT INTO `eb_system_log` VALUES ('1694', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920073', '0');
INSERT INTO `eb_system_log` VALUES ('1695', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920085', '0');
INSERT INTO `eb_system_log` VALUES ('1696', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920086', '0');
INSERT INTO `eb_system_log` VALUES ('1697', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920109', '0');
INSERT INTO `eb_system_log` VALUES ('1698', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920207', '0');
INSERT INTO `eb_system_log` VALUES ('1699', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588920216', '0');
INSERT INTO `eb_system_log` VALUES ('1700', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588920223', '0');
INSERT INTO `eb_system_log` VALUES ('1701', '1', 'admin', 'admin/widget.images/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588920247', '0');
INSERT INTO `eb_system_log` VALUES ('1702', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588920336', '0');
INSERT INTO `eb_system_log` VALUES ('1703', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920336', '0');
INSERT INTO `eb_system_log` VALUES ('1704', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920375', '0');
INSERT INTO `eb_system_log` VALUES ('1705', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920397', '0');
INSERT INTO `eb_system_log` VALUES ('1706', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920398', '0');
INSERT INTO `eb_system_log` VALUES ('1707', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920398', '0');
INSERT INTO `eb_system_log` VALUES ('1708', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '10.0.83.12', 'system', '1588920403', '0');
INSERT INTO `eb_system_log` VALUES ('1709', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920403', '0');
INSERT INTO `eb_system_log` VALUES ('1710', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '10.0.83.12', 'system', '1588920408', '0');
INSERT INTO `eb_system_log` VALUES ('1711', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920409', '0');
INSERT INTO `eb_system_log` VALUES ('1712', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920412', '0');
INSERT INTO `eb_system_log` VALUES ('1713', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920412', '0');
INSERT INTO `eb_system_log` VALUES ('1714', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920412', '0');
INSERT INTO `eb_system_log` VALUES ('1715', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920419', '0');
INSERT INTO `eb_system_log` VALUES ('1716', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920434', '0');
INSERT INTO `eb_system_log` VALUES ('1717', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920434', '0');
INSERT INTO `eb_system_log` VALUES ('1718', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920434', '0');
INSERT INTO `eb_system_log` VALUES ('1719', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920437', '0');
INSERT INTO `eb_system_log` VALUES ('1720', '1', 'admin', 'admin/setting.systemconfig/save_basics/', '未知', 'admin', '10.0.83.12', 'system', '1588920442', '0');
INSERT INTO `eb_system_log` VALUES ('1721', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920442', '0');
INSERT INTO `eb_system_log` VALUES ('1722', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920447', '0');
INSERT INTO `eb_system_log` VALUES ('1723', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920460', '0');
INSERT INTO `eb_system_log` VALUES ('1724', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920463', '0');
INSERT INTO `eb_system_log` VALUES ('1725', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920470', '0');
INSERT INTO `eb_system_log` VALUES ('1726', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920472', '0');
INSERT INTO `eb_system_log` VALUES ('1727', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920492', '0');
INSERT INTO `eb_system_log` VALUES ('1728', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920495', '0');
INSERT INTO `eb_system_log` VALUES ('1729', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920495', '0');
INSERT INTO `eb_system_log` VALUES ('1730', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920495', '0');
INSERT INTO `eb_system_log` VALUES ('1731', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '10.0.83.12', 'system', '1588920501', '0');
INSERT INTO `eb_system_log` VALUES ('1732', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920501', '0');
INSERT INTO `eb_system_log` VALUES ('1733', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920508', '0');
INSERT INTO `eb_system_log` VALUES ('1734', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920511', '0');
INSERT INTO `eb_system_log` VALUES ('1735', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920511', '0');
INSERT INTO `eb_system_log` VALUES ('1736', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920511', '0');
INSERT INTO `eb_system_log` VALUES ('1737', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920550', '0');
INSERT INTO `eb_system_log` VALUES ('1738', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920553', '0');
INSERT INTO `eb_system_log` VALUES ('1739', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920553', '0');
INSERT INTO `eb_system_log` VALUES ('1740', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920553', '0');
INSERT INTO `eb_system_log` VALUES ('1741', '1', 'admin', 'admin/widget.images/upload/', '未知', 'admin', '10.0.83.12', 'system', '1588920561', '0');
INSERT INTO `eb_system_log` VALUES ('1742', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920561', '0');
INSERT INTO `eb_system_log` VALUES ('1743', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '10.0.83.12', 'system', '1588920566', '0');
INSERT INTO `eb_system_log` VALUES ('1744', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920566', '0');
INSERT INTO `eb_system_log` VALUES ('1745', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920695', '0');
INSERT INTO `eb_system_log` VALUES ('1746', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920713', '0');
INSERT INTO `eb_system_log` VALUES ('1747', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920713', '0');
INSERT INTO `eb_system_log` VALUES ('1748', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920713', '0');
INSERT INTO `eb_system_log` VALUES ('1749', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920730', '0');
INSERT INTO `eb_system_log` VALUES ('1750', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920730', '0');
INSERT INTO `eb_system_log` VALUES ('1751', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920730', '0');
INSERT INTO `eb_system_log` VALUES ('1752', '1', 'admin', 'admin/store.storeproduct/update/', '未知', 'admin', '10.0.83.12', 'system', '1588920742', '0');
INSERT INTO `eb_system_log` VALUES ('1753', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920742', '0');
INSERT INTO `eb_system_log` VALUES ('1754', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588920743', '0');
INSERT INTO `eb_system_log` VALUES ('1755', '1', 'admin', 'admin/store.storeproduct/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588920764', '0');
INSERT INTO `eb_system_log` VALUES ('1756', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920768', '0');
INSERT INTO `eb_system_log` VALUES ('1757', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920768', '0');
INSERT INTO `eb_system_log` VALUES ('1758', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920768', '0');
INSERT INTO `eb_system_log` VALUES ('1759', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920789', '0');
INSERT INTO `eb_system_log` VALUES ('1760', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920789', '0');
INSERT INTO `eb_system_log` VALUES ('1761', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920789', '0');
INSERT INTO `eb_system_log` VALUES ('1762', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920802', '0');
INSERT INTO `eb_system_log` VALUES ('1763', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588920802', '0');
INSERT INTO `eb_system_log` VALUES ('1764', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588920802', '0');
INSERT INTO `eb_system_log` VALUES ('1765', '1', 'admin', 'admin/store.storeproduct/update/', '未知', 'admin', '10.0.83.12', 'system', '1588920808', '0');
INSERT INTO `eb_system_log` VALUES ('1766', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920808', '0');
INSERT INTO `eb_system_log` VALUES ('1767', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588920808', '0');
INSERT INTO `eb_system_log` VALUES ('1768', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920891', '0');
INSERT INTO `eb_system_log` VALUES ('1769', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920906', '0');
INSERT INTO `eb_system_log` VALUES ('1770', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920914', '0');
INSERT INTO `eb_system_log` VALUES ('1771', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588920938', '0');
INSERT INTO `eb_system_log` VALUES ('1772', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921017', '0');
INSERT INTO `eb_system_log` VALUES ('1773', '1', 'admin', 'admin/sms.smspublictemp/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921065', '0');
INSERT INTO `eb_system_log` VALUES ('1774', '1', 'admin', 'admin/sms.smspublictemp/lst/', '未知', 'admin', '10.0.83.12', 'system', '1588921066', '0');
INSERT INTO `eb_system_log` VALUES ('1775', '1', 'admin', 'admin/sms.smsconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921071', '0');
INSERT INTO `eb_system_log` VALUES ('1776', '1', 'admin', 'admin/sms.smstemplateapply/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921091', '0');
INSERT INTO `eb_system_log` VALUES ('1777', '1', 'admin', 'admin/sms.smstemplateapply/lst/', '未知', 'admin', '10.0.83.12', 'system', '1588921092', '0');
INSERT INTO `eb_system_log` VALUES ('1778', '1', 'admin', 'admin/sms.smspay/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921093', '0');
INSERT INTO `eb_system_log` VALUES ('1779', '1', 'admin', 'admin/sms.smspay/number/', '未知', 'admin', '10.0.83.12', 'system', '1588921095', '0');
INSERT INTO `eb_system_log` VALUES ('1780', '1', 'admin', 'admin/sms.smspay/price/', '未知', 'admin', '10.0.83.12', 'system', '1588921095', '0');
INSERT INTO `eb_system_log` VALUES ('1781', '1', 'admin', 'admin/sms.smspay/pay/', '未知', 'admin', '10.0.83.12', 'system', '1588921095', '0');
INSERT INTO `eb_system_log` VALUES ('1782', '1', 'admin', 'admin/system.express/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921158', '0');
INSERT INTO `eb_system_log` VALUES ('1783', '1', 'admin', 'admin/system.systemstore/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921159', '0');
INSERT INTO `eb_system_log` VALUES ('1784', '1', 'admin', 'admin/system.express/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921192', '0');
INSERT INTO `eb_system_log` VALUES ('1785', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921199', '0');
INSERT INTO `eb_system_log` VALUES ('1786', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921203', '0');
INSERT INTO `eb_system_log` VALUES ('1787', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921207', '0');
INSERT INTO `eb_system_log` VALUES ('1788', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921211', '0');
INSERT INTO `eb_system_log` VALUES ('1789', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921214', '0');
INSERT INTO `eb_system_log` VALUES ('1790', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921224', '0');
INSERT INTO `eb_system_log` VALUES ('1791', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921228', '0');
INSERT INTO `eb_system_log` VALUES ('1792', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921231', '0');
INSERT INTO `eb_system_log` VALUES ('1793', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921235', '0');
INSERT INTO `eb_system_log` VALUES ('1794', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921240', '0');
INSERT INTO `eb_system_log` VALUES ('1795', '1', 'admin', 'admin/system.express/delete/', '未知', 'admin', '10.0.83.12', 'system', '1588921243', '0');
INSERT INTO `eb_system_log` VALUES ('1796', '1', 'admin', 'admin/system.express/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921248', '0');
INSERT INTO `eb_system_log` VALUES ('1797', '1', 'admin', 'admin/system.express/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921441', '0');
INSERT INTO `eb_system_log` VALUES ('1798', '1', 'admin', 'admin/system.express/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921460', '0');
INSERT INTO `eb_system_log` VALUES ('1799', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921472', '0');
INSERT INTO `eb_system_log` VALUES ('1800', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1588921476', '0');
INSERT INTO `eb_system_log` VALUES ('1801', '1', 'admin', 'admin/finance.finance/get_commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1588921476', '0');
INSERT INTO `eb_system_log` VALUES ('1802', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921480', '0');
INSERT INTO `eb_system_log` VALUES ('1803', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921483', '0');
INSERT INTO `eb_system_log` VALUES ('1804', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '10.0.83.12', 'system', '1588921483', '0');
INSERT INTO `eb_system_log` VALUES ('1805', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '10.0.83.12', 'system', '1588921484', '0');
INSERT INTO `eb_system_log` VALUES ('1806', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921879', '0');
INSERT INTO `eb_system_log` VALUES ('1807', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921881', '0');
INSERT INTO `eb_system_log` VALUES ('1808', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921885', '0');
INSERT INTO `eb_system_log` VALUES ('1809', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921888', '0');
INSERT INTO `eb_system_log` VALUES ('1810', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921902', '0');
INSERT INTO `eb_system_log` VALUES ('1811', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921959', '0');
INSERT INTO `eb_system_log` VALUES ('1812', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921964', '0');
INSERT INTO `eb_system_log` VALUES ('1813', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588921964', '0');
INSERT INTO `eb_system_log` VALUES ('1814', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588921964', '0');
INSERT INTO `eb_system_log` VALUES ('1815', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '10.0.83.12', 'system', '1588921974', '0');
INSERT INTO `eb_system_log` VALUES ('1816', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921974', '0');
INSERT INTO `eb_system_log` VALUES ('1817', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921984', '0');
INSERT INTO `eb_system_log` VALUES ('1818', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588921987', '0');
INSERT INTO `eb_system_log` VALUES ('1819', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588921990', '0');
INSERT INTO `eb_system_log` VALUES ('1820', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588921990', '0');
INSERT INTO `eb_system_log` VALUES ('1821', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588921990', '0');
INSERT INTO `eb_system_log` VALUES ('1822', '1', 'admin', 'admin/setting.systemgroupdata/edit/', '未知', 'admin', '10.0.83.12', 'system', '1588922007', '0');
INSERT INTO `eb_system_log` VALUES ('1823', '1', 'admin', 'admin/widget.images/index/', '未知', 'admin', '10.0.83.12', 'system', '1588922010', '0');
INSERT INTO `eb_system_log` VALUES ('1824', '1', 'admin', 'admin/widget.images/get_image_cate/', '未知', 'admin', '10.0.83.12', 'system', '1588922010', '0');
INSERT INTO `eb_system_log` VALUES ('1825', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/1/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588922010', '0');
INSERT INTO `eb_system_log` VALUES ('1826', '1', 'admin', 'admin/widget.images/get_image_list/pid/0/page/2/limit/18', '未知', 'admin', '10.0.83.12', 'system', '1588922015', '0');
INSERT INTO `eb_system_log` VALUES ('1827', '1', 'admin', 'admin/setting.systemgroupdata/update/', '未知', 'admin', '10.0.83.12', 'system', '1588922021', '0');
INSERT INTO `eb_system_log` VALUES ('1828', '1', 'admin', 'admin/setting.systemgroupdata/index/', '未知', 'admin', '10.0.83.12', 'system', '1588922022', '0');
INSERT INTO `eb_system_log` VALUES ('1829', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588927801', '0');
INSERT INTO `eb_system_log` VALUES ('1830', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588927802', '0');
INSERT INTO `eb_system_log` VALUES ('1831', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '10.0.83.12', 'system', '1588927853', '0');
INSERT INTO `eb_system_log` VALUES ('1832', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1588927853', '0');
INSERT INTO `eb_system_log` VALUES ('1833', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1588927853', '0');
INSERT INTO `eb_system_log` VALUES ('1834', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '10.0.83.12', 'system', '1588927853', '0');
INSERT INTO `eb_system_log` VALUES ('1835', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '10.0.83.12', 'system', '1588927853', '0');
INSERT INTO `eb_system_log` VALUES ('1836', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1588928353', '0');
INSERT INTO `eb_system_log` VALUES ('1837', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1588928354', '0');
INSERT INTO `eb_system_log` VALUES ('1838', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '10.0.83.12', 'system', '1588928354', '0');
INSERT INTO `eb_system_log` VALUES ('1839', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '10.0.83.12', 'system', '1588928354', '0');
INSERT INTO `eb_system_log` VALUES ('1840', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588928625', '0');
INSERT INTO `eb_system_log` VALUES ('1841', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1588928625', '0');
INSERT INTO `eb_system_log` VALUES ('1842', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929637', '0');
INSERT INTO `eb_system_log` VALUES ('1843', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1588929644', '0');
INSERT INTO `eb_system_log` VALUES ('1844', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929648', '0');
INSERT INTO `eb_system_log` VALUES ('1845', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929653', '0');
INSERT INTO `eb_system_log` VALUES ('1846', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929656', '0');
INSERT INTO `eb_system_log` VALUES ('1847', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929666', '0');
INSERT INTO `eb_system_log` VALUES ('1848', '1', 'admin', 'admin/store.storecategory/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929672', '0');
INSERT INTO `eb_system_log` VALUES ('1849', '1', 'admin', 'admin/system.clear/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929683', '0');
INSERT INTO `eb_system_log` VALUES ('1850', '1', 'admin', 'admin/setting.systemadmin/admin_info/', '未知', 'admin', '10.0.83.12', 'system', '1588929693', '0');
INSERT INTO `eb_system_log` VALUES ('1851', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1588929700', '0');
INSERT INTO `eb_system_log` VALUES ('1852', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1589287001', '0');
INSERT INTO `eb_system_log` VALUES ('1853', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1589287001', '0');
INSERT INTO `eb_system_log` VALUES ('1854', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1589287001', '0');
INSERT INTO `eb_system_log` VALUES ('1855', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '10.0.83.12', 'system', '1589287082', '0');
INSERT INTO `eb_system_log` VALUES ('1856', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1589287083', '0');
INSERT INTO `eb_system_log` VALUES ('1857', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1589287084', '0');
INSERT INTO `eb_system_log` VALUES ('1858', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '10.0.83.12', 'system', '1589287084', '0');
INSERT INTO `eb_system_log` VALUES ('1859', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '10.0.83.12', 'system', '1589287084', '0');
INSERT INTO `eb_system_log` VALUES ('1860', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589287093', '0');
INSERT INTO `eb_system_log` VALUES ('1861', '1', 'admin', 'admin/agent.agentmanage/index/', '未知', 'admin', '10.0.83.12', 'system', '1589287097', '0');
INSERT INTO `eb_system_log` VALUES ('1862', '1', 'admin', 'admin/agent.agentmanage/get_spread_list/', '未知', 'admin', '10.0.83.12', 'system', '1589287098', '0');
INSERT INTO `eb_system_log` VALUES ('1863', '1', 'admin', 'admin/agent.agentmanage/get_badge/', '未知', 'admin', '10.0.83.12', 'system', '1589287098', '0');
INSERT INTO `eb_system_log` VALUES ('1864', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '10.0.83.12', 'system', '1589287101', '0');
INSERT INTO `eb_system_log` VALUES ('1865', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1589287178', '0');
INSERT INTO `eb_system_log` VALUES ('1866', '1', 'admin', 'admin/finance.finance/get_commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1589287179', '0');
INSERT INTO `eb_system_log` VALUES ('1867', '1', 'admin', 'admin/user.user/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359819', '0');
INSERT INTO `eb_system_log` VALUES ('1868', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359820', '0');
INSERT INTO `eb_system_log` VALUES ('1869', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '10.0.83.12', 'system', '1589359820', '0');
INSERT INTO `eb_system_log` VALUES ('1870', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1589359820', '0');
INSERT INTO `eb_system_log` VALUES ('1871', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '10.0.83.12', 'system', '1589359820', '0');
INSERT INTO `eb_system_log` VALUES ('1872', '1', 'admin', 'admin/user.user/get_user_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359827', '0');
INSERT INTO `eb_system_log` VALUES ('1873', '1', 'admin', 'admin/user.user/{{d.avatar}}/', '未知', 'admin', '10.0.83.12', 'system', '1589359828', '0');
INSERT INTO `eb_system_log` VALUES ('1874', '1', 'admin', 'admin/user.user/11/', '未知', 'admin', '10.0.83.12', 'system', '1589359828', '0');
INSERT INTO `eb_system_log` VALUES ('1875', '1', 'admin', 'admin/user.user/{{d.h5_pay_code}}/', '未知', 'admin', '10.0.83.12', 'system', '1589359828', '0');
INSERT INTO `eb_system_log` VALUES ('1876', '1', 'admin', 'admin/store.storeproduct/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359857', '0');
INSERT INTO `eb_system_log` VALUES ('1877', '1', 'admin', 'admin/store.storeproduct/product_ist/', '未知', 'admin', '10.0.83.12', 'system', '1589359857', '0');
INSERT INTO `eb_system_log` VALUES ('1878', '1', 'admin', 'admin/store.storecategory/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359861', '0');
INSERT INTO `eb_system_log` VALUES ('1879', '1', 'admin', 'admin/store.storecategory/category_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359861', '0');
INSERT INTO `eb_system_log` VALUES ('1880', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359866', '0');
INSERT INTO `eb_system_log` VALUES ('1881', '1', 'admin', 'admin/finance.userextract/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359876', '0');
INSERT INTO `eb_system_log` VALUES ('1882', '1', 'admin', 'admin/finance.finance/commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359883', '0');
INSERT INTO `eb_system_log` VALUES ('1883', '1', 'admin', 'admin/finance.finance/get_commission_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359884', '0');
INSERT INTO `eb_system_log` VALUES ('1884', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359889', '0');
INSERT INTO `eb_system_log` VALUES ('1885', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359891', '0');
INSERT INTO `eb_system_log` VALUES ('1886', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359892', '0');
INSERT INTO `eb_system_log` VALUES ('1887', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359893', '0');
INSERT INTO `eb_system_log` VALUES ('1888', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359894', '0');
INSERT INTO `eb_system_log` VALUES ('1889', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359895', '0');
INSERT INTO `eb_system_log` VALUES ('1890', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359897', '0');
INSERT INTO `eb_system_log` VALUES ('1891', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359898', '0');
INSERT INTO `eb_system_log` VALUES ('1892', '1', 'admin', 'admin/setting.systemconfig/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359899', '0');
INSERT INTO `eb_system_log` VALUES ('1893', '1', 'admin', 'admin/system.clear/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359903', '0');
INSERT INTO `eb_system_log` VALUES ('1894', '1', 'admin', 'admin/setting.systemconfigtab/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359905', '0');
INSERT INTO `eb_system_log` VALUES ('1895', '1', 'admin', 'admin/setting.systemconfigtab/edit/', '未知', 'admin', '10.0.83.12', 'system', '1589359916', '0');
INSERT INTO `eb_system_log` VALUES ('1896', '1', 'admin', 'admin/order.storeorder/index/', '未知', 'admin', '10.0.83.12', 'system', '1589359930', '0');
INSERT INTO `eb_system_log` VALUES ('1897', '1', 'admin', 'admin/order.storeorder/getbadge/', '未知', 'admin', '10.0.83.12', 'system', '1589359930', '0');
INSERT INTO `eb_system_log` VALUES ('1898', '1', 'admin', 'admin/order.storeorder/order_list/', '未知', 'admin', '10.0.83.12', 'system', '1589359930', '0');

-- ----------------------------
-- Table structure for eb_system_menus
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_menus`;
CREATE TABLE `eb_system_menus` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `icon` varchar(16) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '子管理员是否可用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `access` (`access`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of eb_system_menus
-- ----------------------------
INSERT INTO `eb_system_menus` VALUES ('1', '289', '', '系统设置', 'admin', 'setting.systemConfig', 'index', '[]', '127', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('2', '153', '', '权限规则', 'admin', 'setting.systemMenus', 'index', '[]', '7', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('4', '153', '', '管理员列表', 'admin', 'setting.systemAdmin', 'index', '[]', '9', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('7', '467', '', '配置分类', 'admin', 'setting.systemConfigTab', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('8', '153', '', '身份管理', 'admin', 'setting.systemRole', 'index', '[]', '10', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('9', '467', '', '组合数据', 'admin', 'setting.systemGroup', 'index', '[]', '1', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('11', '0', 'wechat', '公众号', 'admin', 'wechat', 'index', '[]', '91', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('12', '354', '', '微信关注回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"subscribe\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u914d\\u7f6e\\u9ed8\\u8ba4\\u56de\\u590d\"}', '86', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('17', '360', '', '微信菜单', 'admin', 'wechat.menus', 'index', '[]', '95', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('19', '11', '', '图文管理', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', '60', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('21', '0', 'magic', '维护', 'admin', 'system', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('23', '0', 'laptop', '商品', 'admin', 'store', 'index', '[]', '110', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('24', '23', '', '商品管理', 'admin', 'store.storeProduct', 'index', '{\"type\":\"1\"}', '100', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('25', '23', '', '商品分类', 'admin', 'store.storeCategory', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('26', '285', '', '订单管理', 'admin', 'order.storeOrder', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('30', '354', '', '关键字回复', 'admin', 'wechat.reply', 'keyword', '[]', '85', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('31', '354', '', '无效关键词回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"default\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u6548\\u5173\\u952e\\u5b57\\u9ed8\\u8ba4\\u56de\\u590d\"}', '84', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('33', '284', '', '附加权限', 'admin', 'article.articleCategory', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('34', '33', '', '添加文章分类', 'admin', 'article.articleCategory', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('35', '33', '', '编辑文章分类', 'admin', 'article.articleCategory', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('36', '33', '', '删除文章分类', 'admin', 'article.articleCategory', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('37', '31', '', '附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('38', '283', '', '附加权限', 'admin', 'article.article', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('39', '38', '', '添加文章', 'admin', 'article. article', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('40', '38', '', '编辑文章', 'admin', 'article. article', 'add_new', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('41', '38', '', '删除文章', 'admin', 'article. article', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('42', '19', '', '附加权限', 'admin', 'wechat.wechatNewsCategory', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('43', '42', '', '添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('44', '42', '', '编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('45', '42', '', '删除图文消息', 'admin', 'wechat.wechatNewsCategory', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('46', '7', '', '配置分类附加权限', 'admin', 'setting.systemConfigTab', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('47', '46', '', '添加配置分类', 'admin', 'setting.systemConfigTab', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('48', '117', '', '添加配置', 'admin', 'setting.systemConfig', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('49', '46', '', '编辑配置分类', 'admin', 'setting.systemConfigTab', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('50', '46', '', '删除配置分类', 'admin', 'setting.systemConfigTab', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('51', '46', '', '查看子字段', 'admin', 'system.systemConfigTab', 'sonConfigTab', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('52', '9', '', '组合数据附加权限', 'admin', 'setting.systemGroup', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('53', '468', '', '添加数据', 'admin', 'setting.system_droup_data', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('54', '468', '', '编辑数据', 'admin', 'setting.system_droup_data', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('55', '468', '', '删除数据', 'admin', 'setting.system_droup_data', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('56', '468', '', '数据列表', 'admin', 'setting.system_droup_data', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('57', '52', '', '添加数据组', 'admin', 'setting.systemGroup', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('58', '52', '', '删除数据组', 'admin', 'setting.systemGroup', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('59', '4', '', '管理员列表附加权限', 'admin', 'setting.systemAdmin', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('60', '59', '', '添加管理员', 'admin', 'setting.systemAdmin', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('61', '59', '', '编辑管理员', 'admin', 'setting.systemAdmin', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('62', '59', '', '删除管理员', 'admin', 'setting.systemAdmin', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('63', '8', '', '身份管理附加权限', 'admin', 'setting.systemRole', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('64', '63', '', '添加身份', 'admin', 'setting.systemRole', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('65', '63', '', '修改身份', 'admin', 'setting.systemRole', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('66', '63', '', '删除身份', 'admin', 'setting.systemRole', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('67', '8', '', '身份管理展示页', 'admin', 'setting.systemRole', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('68', '4', '', '管理员列表展示页', 'admin', 'setting.systemAdmin', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('69', '7', '', '配置分类展示页', 'admin', 'setting.systemConfigTab', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('70', '9', '', '组合数据展示页', 'admin', 'setting.systemGroup', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('71', '284', '', '文章分类管理展示页', 'admin', 'article.articleCategory', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('72', '283', '', '文章管理展示页', 'admin', 'article.article', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('73', '19', '', '图文消息展示页', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('74', '2', '', '菜单管理附加权限', 'admin', 'setting.systemMenus', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('75', '74', '', '添加菜单', 'admin', 'setting.systemMenus', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('76', '74', '', '编辑菜单', 'admin', 'setting.systemMenus', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('77', '74', '', '删除菜单', 'admin', 'setting.systemMenus', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('78', '2', '', '菜单管理展示页', 'admin', 'setting.systemMenus', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('80', '0', 'leanpub', '内容', 'admin', 'article', 'index', '[]', '90', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('82', '11', '', '微信用户管理', 'admin', 'user', 'list', '[]', '5', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('84', '82', '', '用户标签', 'admin', 'wechat.wechatUser', 'tag', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('89', '30', '', '关键字回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('90', '89', '', '添加关键字', 'admin', 'wechat.reply', 'add_keyword', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('91', '89', '', '修改关键字', 'admin', 'wechat.reply', 'info_keyword', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('92', '89', '', '删除关键字', 'admin', 'wechat.reply', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('93', '30', '', '关键字回复展示页', 'admin', 'wechat.reply', 'keyword', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('94', '31', '', '无效关键词回复展示页', 'admin', 'wechat.reply', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('95', '31', '', '无效关键词回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('96', '95', '', '无效关键词回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"default\",\"title\":\"编辑无效关键字默认回复\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('97', '12', '', '微信关注回复展示页', 'admin', 'wechat.reply', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('98', '12', '', '微信关注回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('99', '98', '', '微信关注回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"subscribe\",\"title\":\"编辑无配置默认回复\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('100', '74', '', '添加提交菜单', 'admin', 'setting.systemMenus', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('101', '74', '', '编辑提交菜单', 'admin', 'setting.systemMenus', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('102', '59', '', '提交添加管理员', 'admin', 'setting.systemAdmin', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('103', '59', '', '提交修改管理员', 'admin', 'setting.systemAdmin', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('104', '63', '', '提交添加身份', 'admin', 'setting.systemRole', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('105', '63', '', '提交修改身份', 'admin', 'setting.systemRole', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('106', '46', '', '提交添加配置分类', 'admin', 'setting.systemConfigTab', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('107', '46', '', '提交修改配置分类', 'admin', 'setting.systemConfigTab', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('108', '117', '', '提交添加配置列表', 'admin', 'setting.systemConfig', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('109', '52', '', '提交添加数据组', 'admin', 'setting.systemGroup', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('110', '52', '', '提交修改数据组', 'admin', 'setting.systemGroup', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('111', '468', '', '提交添加数据', 'admin', 'setting.system_droup_data', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('112', '468', '', '提交修改数据', 'admin', 'setting.system_droup_data', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('113', '33', '', '提交添加文章分类', 'admin', 'article.articleCategory', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('114', '33', '', '提交添加文章分类', 'admin', 'article.articleCategory', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('115', '42', '', '提交添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('116', '42', '', '提交编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('117', '1', '', '配置列表附加权限', 'admin', 'setting.systemConfig', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('118', '1', '', '配置列表展示页', 'admin', 'setting.systemConfig', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('119', '117', '', '提交保存配置列表', 'admin', 'setting.systemConfig', 'save_basics', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('123', '89', '', '提交添加关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"1\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('124', '89', '', '提交修改关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"2\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('126', '17', '', '微信菜单展示页', 'admin', 'wechat.menus', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('127', '17', '', '微信菜单附加权限', 'admin', 'wechat.menus', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('128', '127', '', '提交微信菜单按钮', 'admin', 'wechat.menus', 'save', '{\"dis\":\"1\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('129', '82', '', '用户行为纪录', 'admin', 'wechat.wechatMessage', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('130', '469', '', '系统日志', 'admin', 'system.systemLog', 'index', '[]', '5', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('131', '130', '', '管理员操作记录展示页', 'admin', 'system.systemLog', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('132', '129', '', '微信用户行为纪录展示页', 'admin', 'wechat.wechatMessage', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('133', '82', '', '微信用户', 'admin', 'wechat.wechatUser', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('134', '133', '', '微信用户展示页', 'admin', 'wechat.wechatUser', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('137', '135', '', '添加通知模板', 'admin', 'system.systemNotice', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('138', '135', '', '编辑通知模板', 'admin', 'system.systemNotice', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('139', '135', '', '删除辑通知模板', 'admin', 'system.systemNotice', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('140', '135', '', '提交编辑辑通知模板', 'admin', 'system.systemNotice', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('141', '135', '', '提交添加辑通知模板', 'admin', 'system.systemNotice', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('142', '25', '', '产品分类展示页', 'admin', 'store.storeCategory', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('143', '25', '', '产品分类附加权限', 'admin', 'store.storeCategory', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('144', '117', '', '获取配置列表上传文件的名称', 'admin', 'setting.systemConfig', 'getimagename', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('145', '117', '', '配置列表上传文件', 'admin', 'setting.systemConfig', 'view_upload', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('146', '24', '', '产品管理展示页', 'admin', 'store.storeProduct', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('147', '24', '', '产品管理附加权限', 'admin', 'store.storeProduct', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('148', '286', '', '优惠券', '', '', '', '[]', '10', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('149', '148', '', '优惠券制作', 'admin', 'ump.storeCoupon', 'index', '[]', '5', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('150', '148', '', '会员领取记录', 'admin', 'ump.storeCouponUser', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('151', '0', 'user', '会员', 'admin', 'user', 'index', '[]', '107', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('153', '289', '', '管理权限', 'admin', 'setting.systemAdmin', '', '[]', '50', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('155', '154', '', '商户产品展示页', 'admin', 'store.storeMerchant', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('156', '154', '', '商户产品附加权限', 'admin', 'store.storeMerchant', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('158', '157', '', '商户文章管理展示页', 'admin', 'wechat.wechatNews', 'merchantIndex', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('159', '157', '', '商户文章管理附加权限', 'admin', 'wechat.wechatNews', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('170', '290', '', '评论管理', 'admin', 'store.store_product_reply', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('173', '469', '', '文件校验', 'admin', 'system.systemFile', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('174', '360', '', '微信模板消息', 'admin', 'wechat.wechatTemplate', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('175', '289', '', '客服管理', 'admin', 'wechat.storeService', 'index', '[]', '70', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('177', '151', '', '会员管理', 'admin', 'user.user', 'index', '[]', '10', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('179', '307', '', '充值记录', 'admin', 'finance.userRecharge', 'index', '[]', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('190', '26', '', '订单管理展示页', 'admin', 'order.storeOrder', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('191', '26', '', '订单管理附加权限', 'admin', 'order.storeOrder', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('192', '191', '', '订单管理去发货', 'admin', 'order.storeOrder', 'deliver_goods', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('193', '191', '', '订单管理备注', 'admin', 'order.storeOrder', 'remark', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('194', '191', '', '订单管理去送货', 'admin', 'order.storeOrder', 'delivery', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('195', '191', '', '订单管理已收货', 'admin', 'order.storeOrder', 'take_delivery', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('196', '191', '', '订单管理退款', 'admin', 'order.storeOrder', 'refund_y', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('197', '191', '', '订单管理修改订单', 'admin', 'order.storeOrder', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('198', '191', '', '订单管理修改订单提交', 'admin', 'order.storeOrder', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('199', '191', '', '订单管理退积分', 'admin', 'order.storeOrder', 'integral_back', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('200', '191', '', '订单管理退积分提交', 'admin', 'order.storeOrder', 'updateIntegralBack', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('201', '191', '', '订单管理立即支付', 'admin', 'order.storeOrder', 'offline', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('202', '191', '', '订单管理退款原因', 'admin', 'order.storeOrder', 'refund_n', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('203', '191', '', '订单管理退款原因提交', 'admin', 'order.storeOrder', 'updateRefundN', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('204', '191', '', '订单管理修改配送信息', 'admin', 'order.storeOrder', 'distribution', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('205', '191', '', '订单管理修改配送信息提交', 'admin', 'order.storeOrder', 'updateDistribution', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('206', '191', '', '订单管理退款提交', 'admin', 'order.storeOrder', 'updateRefundY', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('207', '191', '', '订单管理去发货提交', 'admin', 'order.storeOrder', 'updateDeliveryGoods', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('208', '191', '', '订单管理去送货提交', 'admin', 'order.storeOrder', 'updateDelivery', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('209', '175', '', '客服管理展示页', 'admin', 'store.storeService', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('210', '175', '', '客服管理附加权限', 'admin', 'store.storeService', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('211', '210', '', '客服管理添加', 'admin', 'store.storeService', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('212', '210', '', '客服管理添加提交', 'admin', 'store.storeService', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('213', '210', '', '客服管理编辑', 'admin', 'store.storeService', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('214', '210', '', '客服管理编辑提交', 'admin', 'store.storeService', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('215', '210', '', '客服管理删除', 'admin', 'store.storeService', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('216', '179', '', '用户充值记录展示页', 'admin', 'user.userRecharge', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('217', '179', '', '用户充值记录附加权限', 'admin', 'user.userRecharge', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('218', '217', '', '用户充值记录退款', 'admin', 'user.userRecharge', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('219', '217', '', '用户充值记录退款提交', 'admin', 'user.userRecharge', 'updaterefundy', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('220', '180', '', '预售卡管理批量修改预售卡金额', 'admin', 'presell.presellCard', 'batch_price', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('221', '180', '', '预售卡管理批量修改预售卡金额提交', 'admin', 'presell.presellCard', 'savebatch', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('222', '210', '', '客服管理聊天记录查询', 'admin', 'store.storeService', 'chat_user', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('223', '210', '', '客服管理聊天记录查询详情', 'admin', 'store.storeService', 'chat_list', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('224', '170', '', '评论管理展示页', 'admin', 'store.storeProductReply', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('225', '170', '', '评论管理附加权限', 'admin', 'store.storeProductReply', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('226', '225', '', '评论管理回复评论', 'admin', 'store.storeProductReply', 'set_reply', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('227', '225', '', '评论管理修改回复评论', 'admin', 'store.storeProductReply', 'edit_reply', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('228', '225', '', '评论管理删除评论', 'admin', 'store.storeProductReply', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('229', '149', '', '优惠券管理展示页', 'admin', 'store.storeCoupon', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('230', '149', '', '优惠券管理附加权限', 'admin', 'store.storeCoupon', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('231', '230', '', '优惠券管理添加', 'admin', 'store.storeCoupon', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('232', '230', '', '优惠券管理添加提交', 'admin', 'store.storeCoupon', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('233', '230', '', '优惠券管理删除', 'admin', 'store.storeCoupon', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('234', '230', '', '优惠券管理立即失效', 'admin', 'store.storeCoupon', 'status', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('235', '148', '', '已发布管理', 'admin', 'ump.storeCouponIssue', 'index', '[]', '3', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('236', '82', '', '用户分组', 'admin', 'wechat.wechatUser', 'group', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('237', '21', '', '刷新缓存', 'admin', 'system.clear', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('238', '272', '', '拼团产品', 'admin', 'ump.storeCombination', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('239', '306', '', '提现申请', 'admin', 'finance.user_extract', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('241', '273', '', '秒杀产品', 'admin', 'ump.storeSeckill', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('244', '294', '', '财务报表', 'admin', 'record.storeStatistics', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('246', '295', '', '用户统计', 'admin', 'user.user', 'user_analysis', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('247', '153', '', '个人资料', 'admin', 'setting.systemAdmin', 'admininfo', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('248', '247', '', '个人资料附加权限', 'admin', 'setting.systemAdmin', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('249', '248', '', '个人资料提交保存', 'admin', 'system.systemAdmin', 'setAdminInfo', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('250', '247', '', '个人资料展示页', 'admin', 'setting.systemAdmin', 'admininfo', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('252', '21', '', '在线更新', 'admin', 'system.systemUpgradeclient', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('254', '271', '', '砍价产品', 'admin', 'ump.storeBargain', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('255', '289', '', '后台通知', 'admin', 'setting.systemNotice', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('261', '147', '', '编辑产品', 'admin', 'store.storeproduct', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('262', '147', '', '添加产品', 'admin', 'store.storeproduct', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('263', '147', '', '编辑产品详情', 'admin', 'store.storeproduct', 'edit_content', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('264', '147', '', '开启秒杀', 'admin', 'store.storeproduct', 'seckill', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('265', '147', '', '开启秒杀', 'admin', 'store.store_product', 'bargain', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('266', '147', '', '产品编辑属性', 'admin', 'store.storeproduct', 'attr', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('269', '0', 'cubes', '小程序', 'admin', 'routine', 'index', '[]', '92', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('270', '289', '', '支付配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"2\",\"tab_id\":\"4\"}', '120', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('271', '286', '', '砍价管理', 'admin', '', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('272', '286', '', '拼团管理', 'admin', '', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('273', '286', '', '秒杀管理', 'admin', '', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('276', '469', '', '附件管理', 'admin', 'widget.images', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('278', '469', '', '清除数据', 'admin', 'system.systemCleardata', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('283', '80', '', '文章管理', 'admin', 'article.article', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('284', '80', '', '文章分类', 'admin', 'article.article_category', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('285', '0', 'building-o', '订单', 'admin', 'order', 'index', '[]', '109', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('286', '0', 'paper-plane', '营销', 'admin', 'ump', 'index', '[]', '105', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('287', '0', 'money', '财务', 'admin', 'finance', 'index', '[]', '103', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('288', '0', 'line-chart', '数据', 'admin', 'record', 'index', '[]', '100', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('289', '0', 'gear', '设置', 'admin', 'setting', 'index', '[]', '90', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('290', '285', '', '售后服务', 'admin', '', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('293', '288', '', '交易数据', 'admin', '', '', '[]', '100', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('294', '288', '', '财务数据', 'admin', '', '', '[]', '80', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('295', '288', '', '会员数据', 'admin', '', '', '[]', '70', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('296', '288', '', '营销数据', 'admin', '', '', '[]', '90', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('297', '288', '', '排行榜', 'admin', '', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('300', '294', '', '提现统计', 'admin', 'record.record', 'chart_cash', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('301', '294', '', '充值统计', 'admin', 'record.record', 'chart_recharge', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('302', '294', '', '返佣统计', 'admin', 'record.record', 'chart_rebate', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('303', '295', '', '会员增长', 'admin', 'record.record', 'user_chart', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('304', '295', '', '会员业务', 'admin', 'record.record', 'user_business_chart', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('305', '295', '', '会员属性', 'admin', 'record.record', 'user_attr', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('306', '287', '', '财务操作', 'admin', '', '', '[]', '100', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('307', '287', '', '财务记录', 'admin', '', '', '[]', '50', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('308', '287', '', '佣金记录', 'admin', '', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('312', '307', '', '资金监控', 'admin', 'finance.finance', 'bill', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('313', '308', '', '佣金记录', 'admin', 'finance.finance', 'commission_list', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('314', '296', '', '积分统计', 'admin', 'record.record', 'chart_score', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('315', '296', '', '优惠券统计', 'admin', 'record.record', 'chart_coupon', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('316', '296', '', '拼团统计', 'admin', 'record.record', 'chart_combination', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('317', '296', '', '秒杀统计', 'admin', 'record.record', 'chart_seckill', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('318', '296', '', '砍价统计', 'admin', 'record.record', 'chart_bargain', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('319', '297', '', '产品销售排行', 'admin', 'record.record', 'ranking_saleslists', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('320', '297', '', '返佣排行', 'admin', 'record.record', 'ranking_commission', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('321', '297', '', '积分排行', 'admin', 'record.record', 'ranking_point', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('329', '285', '', '营销订单', 'admin', 'user', 'user', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('333', '272', '', '拼团列表', 'admin', 'ump.storeCombination', 'combina_list', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('334', '329', '', '秒杀订单', 'admin', 'user', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('335', '329', '', '积分兑换', 'admin', 'user', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('337', '0', 'users', '分销', 'admin', 'agent', 'index', '[]', '106', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('340', '293', '', '订单统计', 'admin', 'record.record', 'chart_order', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('341', '293', '', '产品统计', 'admin', 'record.record', 'chart_product', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('349', '286', '', '积分', 'admin', 'userPoint', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('350', '349', '', '积分配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"11\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('351', '349', '', '积分日志', 'admin', 'ump.userPoint', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('352', '148', '', '优惠券配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"12\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('353', '337', '', '分销配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"9\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('354', '11', '', '自动回复', '', '', '', '[]', '80', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('360', '11', '', '公众号配置', '', '', '', '[]', '100', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('361', '289', '', '应用配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"2\"}', '127', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('362', '276', '', '附加权限', 'admin', 'widget.images', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('363', '362', '', '上传图片', 'admin', 'widget.images', 'upload', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('364', '362', '', '删除图片', 'admin', 'widget.images', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('365', '362', '', '附件管理', 'admin', 'widget.images', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('366', '254', '', '其它权限管理', '', '', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('367', '366', '', '编辑砍价', 'admin', 'ump.storeBargain', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('368', '366', '', '砍价产品更新', 'admin', 'ump.storeBargain', 'update', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('369', '143', '', '添加产品分类', 'admin', 'store.storeCategory', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('370', '143', '', '编辑产品分类', 'admin', 'store.storeCategory', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('371', '337', '', '分销员管理', 'admin', 'agent.agentManage', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('372', '462', '', '首页幻灯片', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"48\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('373', '462', '', '首页导航按钮', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"47\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('374', '295', '', '分销会员业务', 'admin', 'record.record', 'user_distribution_chart', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('376', '269', '', '小程序模板消息', 'admin', 'routine.routineTemplate', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('377', '469', '', '数据备份', 'admin', 'system.systemDatabackup', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('378', '289', '', '物流公司', 'admin', 'system.express', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('379', '469', '', '文件管理', 'admin', 'system.systemFile', 'opendir', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('380', '379', '', '权限规则', 'admin', 'system.systemFile', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('381', '380', '', '打开文件', 'admin', 'system.systemFile', 'openfile', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('382', '380', '', '编辑文件', 'admin', 'system.systemFile', 'savefile', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('386', '362', '', '移动图片分类展示', 'admin', 'widget.images', 'moveimg', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('387', '362', '', '编辑分类', 'admin', 'widget.images', 'updatecate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('388', '362', '', '添加分类', 'admin', 'widget.images', 'savecate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('389', '362', '', '移动图片分类', 'admin', 'widget.images', 'moveimgcecate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('390', '362', '', '编辑分类展示', 'admin', 'widget.images', 'editcate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('392', '362', '', '删除分类', 'admin', 'widget.images', 'deletecate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('393', '362', '', '添加分类展示', 'admin', 'widget.images', 'addcate', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('394', '191', '', '订单获取列表', 'admin', 'order.storeOrder', 'order_list', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('395', '82', '', '微信用户附加权限', 'admin', 'wechat.wechatUser', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('396', '395', '', '推送消息', 'admin', 'wechat.wechat_news_category', 'push', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('397', '395', '', '推送优惠券', 'admin', 'ump.storeCouponUser', 'grant', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('398', '177', '', '会员列表页', 'admin', 'user.user', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('399', '177', '', '会员附加权限', '', 'user.user', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('400', '399', '', '修改用户状态', '', 'user.user', 'set_status', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('401', '399', '', '编辑用户', 'admin', 'user.user', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('402', '399', '', '更新用户', 'admin', 'user.user', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('403', '399', '', '查看用户', 'admin', 'user.user', 'see', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('405', '399', '', '发优惠券', 'admin', 'ump.storeCouponUser', 'grant', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('406', '399', '', '推送图文', 'admin', 'wechat.wechatNewsCategory', 'push', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('407', '399', '', '发站内信', 'admin', 'user.userNotice', 'notice', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('415', '371', '', '分销管理附加权限', 'admin', 'agent.agentManage', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('416', '174', '', '微信模版消息附加权限', 'admin', 'wechat.wechatTemplate', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('417', '416', '', '添加模版消息', 'admin', 'wechat.wechatTemplate', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('418', '416', '', '添加模版消息展示', 'admin', 'wechat.wechatTemplate', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('419', '416', '', '编辑模版消息展示', 'admin', 'wechat.wechatTemplate', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('420', '416', '', '更新模版消息展示', 'admin', 'wechat.wechatTemplate', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('421', '416', '', '删除模版消息展示', 'admin', 'wechat.wechatTemplate', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('422', '376', '', '小程序模版消息附加权限', 'admin', 'routine.routineTemplate', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('423', '422', '', '添加模版消息展示', 'admin', 'routine.routineTemplate', 'create', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('424', '422', '', '添加模版消息', 'admin', 'routine.routineTemplate', 'save', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('425', '422', '', '编辑模版消息展示', 'admin', 'routine.routineTemplate', 'edit', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('426', '422', '', '编辑模版消息', 'admin', 'routine.routineTemplate', 'update', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('427', '422', '', '删除模版消息', 'admin', 'routine.routineTemplate', 'delete', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('439', '377', '', '数据库备份附加权限', 'admin', 'system.systemDatabackup', '', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('440', '439', '', '查看表结构', 'admin', 'system.systemDatabackup', 'seetable', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('441', '439', '', '优化表', 'admin', 'system.systemDatabackup', 'optimize', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('442', '439', '', '修复表', 'admin', 'system.systemDatabackup', 'repair', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('443', '439', '', '备份表', 'admin', 'system.systemDatabackup', 'backup', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('444', '439', '', '删除备份', 'admin', 'system.systemDatabackup', 'delFile', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('445', '439', '', '恢复备份', 'admin', 'system.systemDatabackup', 'import', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('446', '439', '', '下载备份', 'admin', 'system.systemDatabackup', 'downloadFile', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('447', '377', '', '数据备份展示页', 'admin', 'system.systemDatabackup', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('448', '379', '', '文件管理展示页', 'admin', 'system.systemFile', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('450', '371', '', '分销管理列表页', 'admin', 'agent.agentManage', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('451', '376', '', '小程序模版消息列表页', 'admin', 'routine.routineTemplate', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('452', '174', '', '微信模版消息列表页', 'admin', 'wechat.wechatTemplate', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('453', '276', '', '附件管理展示页', 'admin', 'widget.images', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('456', '151', '', '会员等级', 'admin', 'user.user_level', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('458', '462', '', '签到天数配置', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"55\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('459', '462', '', '订单详情动态图', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"53\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('460', '462', '', '个人中心菜单', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"54\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('461', '462', '', 'H5商城首页滚动新闻', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"50\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('462', '289', '', '数据配置', 'admin', '', '', '[]', '100', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('463', '462', '', '热门榜单推荐banner', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"57\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('464', '462', '', '首发新品推荐banner', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"58\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('465', '462', '', '促销单品推荐banner', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"59\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('466', '462', '', '个人中心分销海报', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"60\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('467', '21', '', '开发配置', 'admin', 'system', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('468', '1', '', '配置组合数据附加权限', 'admin', 'setting.system_droup_data', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('469', '21', '', '安全维护', 'admin', 'system', '', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('470', '1', '', '配置组合数据展示页', 'admin', 'setting.systemGroup', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('471', '462', '', '小程序精品推荐', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"52\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('472', '462', '', '首页活动区域图片', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"51\"}', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('473', '273', '', '秒杀配置', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"49\"}', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('474', '289', '', '短信设置', 'admin', 'sms', 'index', '[]', '1', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('475', '474', '', '短信模板', 'admin', 'sms.smsTemplateApply', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('477', '474', '', '短信购买', 'admin', 'sms.smsPay', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('478', '474', '', '短信配置', 'admin', 'sms.smsConfig', 'index', '{\"type\":\"4\",\"tab_id\":\"18\"}', '1', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('479', '474', '', '公共短信模板', 'admin', 'sms.smsPublicTemp', 'index', '[]', '0', '1', '1');
INSERT INTO `eb_system_menus` VALUES ('480', '289', '', '门店设置', 'admin', 'system.system_store', 'index', '[]', '0', '0', '1');
INSERT INTO `eb_system_menus` VALUES ('481', '462', '', '首页配置', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"61\"}', '0', '1', '1');

-- ----------------------------
-- Table structure for eb_system_notice
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_notice`;
CREATE TABLE `eb_system_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知模板id',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '通知标题',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '通知类型',
  `icon` varchar(16) NOT NULL DEFAULT '' COMMENT '图标',
  `url` varchar(64) NOT NULL DEFAULT '' COMMENT '链接',
  `table_title` varchar(256) NOT NULL DEFAULT '' COMMENT '通知数据',
  `template` varchar(64) NOT NULL DEFAULT '' COMMENT '通知模板',
  `push_admin` varchar(128) NOT NULL DEFAULT '' COMMENT '通知管理员id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知模板表';

-- ----------------------------
-- Records of eb_system_notice
-- ----------------------------

-- ----------------------------
-- Table structure for eb_system_notice_admin
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_notice_admin`;
CREATE TABLE `eb_system_notice_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录ID',
  `notice_type` varchar(64) NOT NULL COMMENT '通知类型',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '通知的管理员',
  `link_id` int(10) unsigned NOT NULL COMMENT '关联ID',
  `table_data` text NOT NULL COMMENT '通知的数据',
  `is_click` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_visit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visit_time` int(11) NOT NULL COMMENT '访问时间',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`,`notice_type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_visit` (`is_visit`) USING BTREE,
  KEY `is_click` (`is_click`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录表';

-- ----------------------------
-- Records of eb_system_notice_admin
-- ----------------------------

-- ----------------------------
-- Table structure for eb_system_role
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_role`;
CREATE TABLE `eb_system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='身份管理表';

-- ----------------------------
-- Records of eb_system_role
-- ----------------------------
INSERT INTO `eb_system_role` VALUES ('1', '超级管理员', '23,24,146,147,264,265,266,263,261,262,25,142,143,369,370,285,26,190,191,394,208,207,206,198,199,200,201,202,203,204,205,197,196,192,193,194,195,329,334,335,290,170,224,225,226,227,228,151,177,398,399,407,406,400,401,402,403,405,176,449,408,409,410,411,412,413,456,337,353,371,450,415,286,148,149,229,230,231,232,233,234,235,150,352,271,254,366,368,367,272,333,238,273,473,241,349,351,350,287,306,239,307,179,217,219,218,216,312,308,313,288,293,341,340,296,318,317,316,315,314,294,300,301,302,244,295,305,304,303,374,246,297,319,321,320,269,376,451,422,423,424,425,426,427,11,360,17,127,128,126,174,452,416,421,420,417,418,419,355,356,357,358,359,354,12,97,98,99,30,93,89,124,92,91,90,123,31,94,95,96,37,19,73,42,115,116,43,44,45,82,133,134,395,396,397,84,236,129,132,289,1,470,468,112,111,53,54,55,56,117,119,108,48,144,145,118,361,270,462,471,472,466,458,459,460,461,463,464,465,372,373,153,8,63,104,105,64,65,66,67,4,68,59,102,103,62,61,60,2,74,100,75,76,77,101,78,247,248,249,250,474,478,475,476,477,479,378,255,80,283,72,38,41,39,40,284,71,33,113,114,34,35,36,175,209,210,222,223,211,212,213,214,215,21,469,130,131,173,276,362,365,364,363,386,387,388,389,390,392,393,453,278,377,447,439,444,445,446,443,442,441,440,379,448,380,382,381,467,9,52,109,110,57,58,70,7,46,106,107,47,49,50,51,69,252,237,0', '0', '1');

-- ----------------------------
-- Table structure for eb_system_store
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_store`;
CREATE TABLE `eb_system_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '门店名称',
  `introduction` varchar(1000) NOT NULL DEFAULT '' COMMENT '简介',
  `phone` char(25) NOT NULL DEFAULT '' COMMENT '手机号码',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '省市区',
  `detailed_address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '门店logo',
  `latitude` char(25) NOT NULL DEFAULT '' COMMENT '纬度',
  `longitude` char(25) NOT NULL DEFAULT '' COMMENT '经度',
  `valid_time` varchar(100) NOT NULL DEFAULT '' COMMENT '核销有效日期',
  `day_time` varchar(100) NOT NULL DEFAULT '' COMMENT '每日营业开关时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门店自提';

-- ----------------------------
-- Records of eb_system_store
-- ----------------------------

-- ----------------------------
-- Table structure for eb_system_user_level
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_user_level`;
CREATE TABLE `eb_system_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员名称',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额',
  `valid_date` int(11) NOT NULL DEFAULT '0' COMMENT '有效时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为永久会员',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否购买,1=购买,0=不购买',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1=显示,0=隐藏',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '享受折扣',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '会员卡背景',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '会员图标',
  `explain` text NOT NULL COMMENT '说明',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='设置用户等级表';

-- ----------------------------
-- Records of eb_system_user_level
-- ----------------------------
INSERT INTO `eb_system_user_level` VALUES ('1', '0', '普通会员1', '20.00', '0', '1', '0', '1', '1', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8cd632.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8bc1e0.png', '普通会员', '1553824559', '0');
INSERT INTO `eb_system_user_level` VALUES ('2', '0', '青铜会员', '0.00', '0', '1', '0', '1', '2', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca904016.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8f0a30.png', '青铜会员', '1553824639', '0');
INSERT INTO `eb_system_user_level` VALUES ('3', '0', '黄铜会员', '0.00', '0', '1', '0', '1', '3', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8c3bff.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8e9365.png', '黄铜会员', '1553824742', '0');
INSERT INTO `eb_system_user_level` VALUES ('4', '0', '白银会员', '0.00', '0', '1', '0', '1', '4', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8d6ae1.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8a27f0.png', '白银会员', '1553824797', '0');
INSERT INTO `eb_system_user_level` VALUES ('5', '0', '黄金会员', '0.00', '0', '1', '0', '1', '5', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8b27f1.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8aa5b9.png', '黄金会员', '1553824837', '0');
INSERT INTO `eb_system_user_level` VALUES ('6', '0', '钻石会员', '0.00', '0', '1', '0', '1', '6', '0.00', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8dfe16.jpg', 'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca90d2d3.png', '钻石会员', '1553824871', '1');

-- ----------------------------
-- Table structure for eb_system_user_task
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_user_task`;
CREATE TABLE `eb_system_user_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '任务名称',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '配置原名',
  `task_type` varchar(50) NOT NULL DEFAULT '' COMMENT '任务类型',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '限定数',
  `level_id` int(11) NOT NULL DEFAULT '0' COMMENT '等级id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_must` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否务必达成任务,1务必达成,0=满足其一',
  `illustrate` varchar(255) NOT NULL DEFAULT '' COMMENT '任务说明',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='等级任务设置';

-- ----------------------------
-- Records of eb_system_user_task
-- ----------------------------
INSERT INTO `eb_system_user_task` VALUES ('1', '满足积分100分', '积分数', 'SatisfactionIntegral', '100', '1', '0', '1', '1', '', '1553827616');
INSERT INTO `eb_system_user_task` VALUES ('2', '消费满100元', '消费金额', 'ConsumptionAmount', '100', '1', '0', '1', '1', '', '1553827625');
INSERT INTO `eb_system_user_task` VALUES ('3', '满足积分200分', '积分数', 'SatisfactionIntegral', '200', '2', '0', '1', '1', '', '1553827638');
INSERT INTO `eb_system_user_task` VALUES ('4', '累计签到20天', '累计签到', 'CumulativeAttendance', '20', '2', '0', '1', '1', '', '1553827681');
INSERT INTO `eb_system_user_task` VALUES ('5', '满足积分500分', '积分数', 'SatisfactionIntegral', '500', '3', '0', '1', '1', '', '1553827695');
INSERT INTO `eb_system_user_task` VALUES ('6', '累计签到30天', '累计签到', 'CumulativeAttendance', '30', '3', '0', '1', '1', '', '1553827703');
INSERT INTO `eb_system_user_task` VALUES ('7', '满足积分1000分', '积分数', 'SatisfactionIntegral', '1000', '4', '0', '1', '1', '', '1553827731');
INSERT INTO `eb_system_user_task` VALUES ('8', '分享给朋友10次', '分享给朋友', 'SharingTimes', '10', '4', '0', '1', '1', '', '1553827740');
INSERT INTO `eb_system_user_task` VALUES ('9', '满足积分1200分', '积分数', 'SatisfactionIntegral', '1200', '5', '0', '1', '1', '', '1553827759');
INSERT INTO `eb_system_user_task` VALUES ('10', '累计签到60天', '累计签到', 'CumulativeAttendance', '60', '5', '0', '1', '1', '', '1553827768');
INSERT INTO `eb_system_user_task` VALUES ('11', '消费5次', '消费次数', 'ConsumptionFrequency', '5', '5', '0', '1', '1', '', '1553827776');
INSERT INTO `eb_system_user_task` VALUES ('12', '满足积分2000分', '积分数', 'SatisfactionIntegral', '2000', '6', '0', '1', '1', '', '1553827791');
INSERT INTO `eb_system_user_task` VALUES ('13', '消费满10000元', '消费次数', 'ConsumptionAmount', '10000', '6', '0', '1', '1', '', '1553827803');
INSERT INTO `eb_system_user_task` VALUES ('14', '累计签到100天', '累计签到', 'CumulativeAttendance', '100', '6', '0', '1', '1', '', '1553827814');

-- ----------------------------
-- Table structure for eb_user
-- ----------------------------
DROP TABLE IF EXISTS `eb_user`;
CREATE TABLE `eb_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `real_name` varchar(25) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `card_id` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '用户备注',
  `partner_id` int(11) NOT NULL DEFAULT '0' COMMENT '合伙人id',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户分组id',
  `nickname` varchar(16) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(256) NOT NULL COMMENT '用户头像',
  `phone` char(15) DEFAULT NULL COMMENT '手机号码',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '添加ip',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `brokerage_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `sign_num` int(11) NOT NULL DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `spread_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推广员关联时间',
  `user_type` varchar(32) NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int(11) unsigned DEFAULT '0' COMMENT '用户购买次数',
  `spread_count` int(11) DEFAULT '0' COMMENT '下级人数',
  `clean_time` int(11) DEFAULT '0' COMMENT '清理会员时间',
  `addres` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `adminid` int(11) unsigned DEFAULT '0' COMMENT '管理员编号 ',
  `login_type` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  `h5_pay_code` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '上级id',
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `spreaduid` (`spread_uid`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_promoter` (`is_promoter`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of eb_user
-- ----------------------------
INSERT INTO `eb_user` VALUES ('1', '13631200958', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '1456456', 'http://wst.com/uploads/store/comment/20200503/ca082392285c587399280f61677ac749.png', '13631200958', '1588409824', '192.168.115.1', '1588409824', '192.168.115.1', '0.00', '0.00', '20.00', '0', '1', '0', '0', '0', 'h5', '0', '2', '0', '0', '', '0', '', '11', '0');
INSERT INTO `eb_user` VALUES ('2', '13812345678', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '77879b2e967d', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13812345678', '1588710734', '192.168.115.1', '1588710734', '192.168.115.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', '11', '0');
INSERT INTO `eb_user` VALUES ('3', '18812345678', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '9a3289e98507', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '18812345678', '1588710883', '192.168.115.1', '1588710883', '192.168.115.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', '11', '0');
INSERT INTO `eb_user` VALUES ('4', '13631200095', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '44a2b65cdcd5', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200095', '1588738540', '192.168.115.1', '1588738540', '192.168.115.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', '11', '0');
INSERT INTO `eb_user` VALUES ('5', '13631200988', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '596a7a356b5f', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200988', '1588738644', '192.168.115.1', '1588738644', '192.168.115.1', '0.00', '0.00', '10.00', '1', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', '11', '0');
INSERT INTO `eb_user` VALUES ('6', '13632123212', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '8663e6d4fa3c', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13632123212', '1588905733', '127.0.0.1', '1588905733', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('7', '13631200957', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'e8aea6f5332b', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200957', '1588905955', '127.0.0.1', '1588905955', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('8', '13631200912', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'f80fd64a8a0a', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200912', '1588906064', '127.0.0.1', '1588906064', '127.0.0.1', '31.50', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('9', '13631200934', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'c3b003428e37', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200934', '1588906089', '127.0.0.1', '1588906089', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('10', '13631200943', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'cf842316e621', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200943', '1588906166', '127.0.0.1', '1588906166', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('11', '13631200234', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '576da2e4d532', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200234', '1588906241', '127.0.0.1', '1588906241', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('12', '13631200223', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'bf35be1c7779', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200223', '1588906352', '127.0.0.1', '1588906352', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('13', '13631200100', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'ad362d50f5b5', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200100', '1588906383', '127.0.0.1', '1588906383', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('14', '13631200102', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '7e5373dd359f', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200102', '1588906411', '127.0.0.1', '1588906411', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('15', '13631200135', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '2be5a9164d89', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200135', '1588906425', '127.0.0.1', '1588906425', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '3');
INSERT INTO `eb_user` VALUES ('16', '13636562658', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'b495210d0417', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13636562658', '1588906713', '127.0.0.1', '1588906713', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('17', '13631980123', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'ec2aec0912cd', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631980123', '1588907610', '127.0.0.1', '1588907610', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('18', '13631159456', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '60a93a5047b1', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631159456', '1588907647', '127.0.0.1', '1588907647', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('19', '13631159123', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '33b8173a07ce', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631159123', '1588907697', '127.0.0.1', '1588907697', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('20', '13631159177', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'c259bbd92074', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631159177', '1588907866', '127.0.0.1', '1588907866', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '1', '0', '0', '', '0', '', null, '8');
INSERT INTO `eb_user` VALUES ('21', '13631200051', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '3e87253219e0', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13631200051', '1588907911', '127.0.0.1', '1588907911', '127.0.0.1', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '9');
INSERT INTO `eb_user` VALUES ('22', '13710332006', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '7712162bf4b7', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '13710332006', '1588921533', '10.0.83.12', '1588921533', '10.0.83.12', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('23', '15901022070', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', 'bd8ba8df8a1d', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '15901022070', '1588928051', '10.0.83.12', '1588928051', '10.0.83.12', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');
INSERT INTO `eb_user` VALUES ('24', '17692439359', '4297f44b13955235245b2497399d7a93', '', '0', '', '', '0', '0', '4f041796fe03', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '17692439359', '1588928442', '10.0.83.12', '1588928442', '10.0.83.12', '0.00', '0.00', '0.00', '0', '1', '0', '0', '0', 'h5', '0', '0', '0', '0', '', '0', '', null, '0');

-- ----------------------------
-- Table structure for eb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_address`;
CREATE TABLE `eb_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) NOT NULL DEFAULT '' COMMENT '收货人电话',
  `province` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `city` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在市',
  `district` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在区',
  `detail` varchar(256) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `post_code` int(10) unsigned NOT NULL COMMENT '邮编',
  `longitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `is_default` (`is_default`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户地址表';

-- ----------------------------
-- Records of eb_user_address
-- ----------------------------
INSERT INTO `eb_user_address` VALUES ('1', '1', '123', '13631200958', '广东', '珠海市', '金湾区', '唐家湾镇华发人才公寓2栋1202', '0', '0', '0', '1', '0', '1588410009');
INSERT INTO `eb_user_address` VALUES ('2', '3', '112233', '13631200958', '重庆', '江北区', '铁山坪镇', '唐家湾镇华发人才公寓2栋1202', '0', '0', '0', '1', '0', '1588711592');
INSERT INTO `eb_user_address` VALUES ('3', '5', '123123', '13631200958', '上海', '虹口区', '城区', '唐家湾镇华发人才公寓2栋1202', '0', '0', '0', '1', '0', '1588748784');
INSERT INTO `eb_user_address` VALUES ('4', '20', '1363125125', '13631200958', '上海', '闸北区', '城区', '111', '0', '0', '0', '1', '0', '1588909977');

-- ----------------------------
-- Table structure for eb_user_bill
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_bill`;
CREATE TABLE `eb_user_bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '账单标题',
  `category` varchar(64) NOT NULL DEFAULT '' COMMENT '明细种类',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pm` (`pm`) USING BTREE,
  KEY `type` (`category`,`type`,`link_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户账单表';

-- ----------------------------
-- Records of eb_user_bill
-- ----------------------------
INSERT INTO `eb_user_bill` VALUES ('1', '5', '0', '1', '签到奖励', 'integral', 'sign', '10.00', '0.00', '签到奖励', '1588739090', '1');
INSERT INTO `eb_user_bill` VALUES ('2', '1', '5', '1', '购买商品赠送积分', 'integral', 'gain', '20.00', '0.00', '购买商品赠送20积分', '1588785877', '1');
INSERT INTO `eb_user_bill` VALUES ('3', '8', '0', '1', '分销推广奖励', '1', '1', '31.50', '31.50', '分销推广奖励', '1588910686', '1');

-- ----------------------------
-- Table structure for eb_user_enter
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_enter`;
CREATE TABLE `eb_user_enter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `province` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在省',
  `city` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在市',
  `district` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在区',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '商户详细地址',
  `merchant_name` varchar(256) NOT NULL DEFAULT '' COMMENT '商户名称',
  `link_user` varchar(32) NOT NULL DEFAULT '',
  `link_tel` varchar(16) NOT NULL DEFAULT '' COMMENT '商户电话',
  `charter` varchar(512) NOT NULL DEFAULT '' COMMENT '商户证书',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `apply_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `success_time` int(11) NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) NOT NULL DEFAULT '' COMMENT '未通过原因',
  `fail_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  KEY `province` (`province`,`city`,`district`) USING BTREE,
  KEY `is_lock` (`is_lock`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户申请表';

-- ----------------------------
-- Records of eb_user_enter
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_extract
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_extract`;
CREATE TABLE `eb_user_extract` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) DEFAULT NULL COMMENT '无效原因',
  `fail_time` int(10) unsigned DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `extract_type` (`extract_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `fail_time` (`fail_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户提现表';

-- ----------------------------
-- Records of eb_user_extract
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_group
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_group`;
CREATE TABLE `eb_user_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) DEFAULT NULL COMMENT '用户分组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户分组表';

-- ----------------------------
-- Records of eb_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_level
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_level`;
CREATE TABLE `eb_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户uid',
  `level_id` int(11) NOT NULL DEFAULT '0' COMMENT '等级vip',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `valid_time` int(11) NOT NULL DEFAULT '0' COMMENT '过期时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否永久',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:禁止,1:正常',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已通知',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除,1=删除',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `discount` int(11) NOT NULL DEFAULT '0' COMMENT '享受折扣',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户等级记录表';

-- ----------------------------
-- Records of eb_user_level
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_notice
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_notice`;
CREATE TABLE `eb_user_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL COMMENT '接收消息的用户id（类型：json数据）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息通知类型（1：系统消息；2：用户通知）',
  `user` varchar(20) NOT NULL DEFAULT '' COMMENT '发送人',
  `title` varchar(20) NOT NULL COMMENT '通知消息的标题信息',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '通知消息的内容',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '通知消息发送的时间',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送（0：未发送；1：已发送）',
  `send_time` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知表';

-- ----------------------------
-- Records of eb_user_notice
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_notice_see
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_notice_see`;
CREATE TABLE `eb_user_notice_see` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL DEFAULT '0' COMMENT '查看的通知id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '查看通知的用户id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '查看通知的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知发送记录表';

-- ----------------------------
-- Records of eb_user_notice_see
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_recharge
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_recharge`;
CREATE TABLE `eb_user_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '充值用户UID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_type` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int(10) DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int(12) DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `recharge_type` (`recharge_type`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值表';

-- ----------------------------
-- Records of eb_user_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_sign`;
CREATE TABLE `eb_user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户uid',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '签到说明',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '获得积分',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='签到记录表';

-- ----------------------------
-- Records of eb_user_sign
-- ----------------------------
INSERT INTO `eb_user_sign` VALUES ('1', '5', '签到奖励', '10', '0', '1588739090');

-- ----------------------------
-- Table structure for eb_user_task_finish
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_task_finish`;
CREATE TABLE `eb_user_task_finish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户任务完成记录表';

-- ----------------------------
-- Records of eb_user_task_finish
-- ----------------------------

-- ----------------------------
-- Table structure for eb_user_token
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_token`;
CREATE TABLE `eb_user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户 id',
  `token` varchar(500) NOT NULL COMMENT 'token',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `expires_time` datetime NOT NULL COMMENT '到期事件',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_user_token
-- ----------------------------
INSERT INTO `eb_user_token` VALUES ('7', '4', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODczODU0MCwibmJmIjoxNTg4NzM4NTQwLCJleHAiOjE1ODg3NDkzNDAsImp0aSI6eyJpZCI6NCwidHlwZSI6InVzZXIifX0.y7ly5vTGotei8xB3ajz5Q4ulvhdshpoZWpLzrWUQeL4', '2020-05-06 12:15:41', '2020-05-06 15:15:40', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('13', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODgxOTg5MCwibmJmIjoxNTg4ODE5ODkwLCJleHAiOjE1ODg4MzA2OTAsImp0aSI6eyJpZCI6MSwidHlwZSI6InVzZXIifX0.xF0CDrJmxOTlIqvIAJJBiTJvJez44dw0U6Aiv3RNJHw', '2020-05-07 10:51:30', '2020-05-07 13:51:30', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('14', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODg0OTg5NiwibmJmIjoxNTg4ODQ5ODk2LCJleHAiOjE1ODg4NjA2OTYsImp0aSI6eyJpZCI6MSwidHlwZSI6InVzZXIifX0.r-L6baXYZOeJfCr1RlC-sTwmr4QY-qxgyQpkyDrTvXc', '2020-05-07 19:11:37', '2020-05-07 22:11:36', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('15', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODg4MzA5NSwibmJmIjoxNTg4ODgzMDk1LCJleHAiOjE1ODg4OTM4OTUsImp0aSI6eyJpZCI6MSwidHlwZSI6InVzZXIifX0.6iTzMw0iFqUJcm1izTzKfX8yG3s_aTJhpSgek0GW-30', '2020-05-08 04:24:56', '2020-05-08 07:24:55', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('16', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODg4MzE4OSwibmJmIjoxNTg4ODgzMTg5LCJleHAiOjE1ODg4OTM5ODksImp0aSI6eyJpZCI6MSwidHlwZSI6InVzZXIifX0.nXsJ8DHu-TWL2NIoLzKVrCg4X5cKK9-xZ6kgLQ8ABDQ', '2020-05-08 04:26:29', '2020-05-08 07:26:29', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('17', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODg5Mzc5OSwibmJmIjoxNTg4ODkzNzk5LCJleHAiOjE1ODg5MDQ1OTksImp0aSI6eyJpZCI6MSwidHlwZSI6InVzZXIifX0.MmEfYxF8U74JpxcuXN5f5IWPPSseIfWZ1urUKLCPod4', '2020-05-08 07:23:20', '2020-05-08 10:23:19', '192.168.115.1');
INSERT INTO `eb_user_token` VALUES ('34', '21', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNzkxMSwibmJmIjoxNTg4OTA3OTExLCJleHAiOjE1ODg5MTg3MTEsImp0aSI6eyJpZCI6MjEsInR5cGUiOiJ1c2VyIn19.m__K3DYUg7TY5aVAGABtiwVrlAYwkPIFSwpI1HBr1tY', '2020-05-08 11:18:32', '2020-05-08 14:18:31', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('21', '7', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNTk5NywibmJmIjoxNTg4OTA1OTk3LCJleHAiOjE1ODg5MTY3OTcsImp0aSI6eyJpZCI6NywidHlwZSI6InVzZXIifX0.VxxTZQ631EIRhJxR29tAPHdzcxeAG0P5LEuzltIMIps', '2020-05-08 10:46:37', '2020-05-08 13:46:37', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('22', '7', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjA1MywibmJmIjoxNTg4OTA2MDUzLCJleHAiOjE1ODg5MTY4NTMsImp0aSI6eyJpZCI6NywidHlwZSI6InVzZXIifX0.f7DXVFqHE0JIDL2phWUToa4znTPsIureor3Jn5lrlgA', '2020-05-08 10:47:33', '2020-05-08 13:47:33', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('23', '9', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjA5MCwibmJmIjoxNTg4OTA2MDkwLCJleHAiOjE1ODg5MTY4OTAsImp0aSI6eyJpZCI6OSwidHlwZSI6InVzZXIifX0.nacyML59UL-sjAoY3f1R-MwfjQ6R5oNkGGwPky9U17w', '2020-05-08 10:48:11', '2020-05-08 13:48:10', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('24', '10', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjIyOSwibmJmIjoxNTg4OTA2MjI5LCJleHAiOjE1ODg5MTcwMjksImp0aSI6eyJpZCI6MTAsInR5cGUiOiJ1c2VyIn19.TnXDRly4Zj3XBhyIRoYe9OvArqvU0rpcChVC8eRCHz4', '2020-05-08 10:50:30', '2020-05-08 13:50:29', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('25', '11', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjM0MywibmJmIjoxNTg4OTA2MzQzLCJleHAiOjE1ODg5MTcxNDMsImp0aSI6eyJpZCI6MTEsInR5cGUiOiJ1c2VyIn19.zwqKEjTxbXi6_VywaLLsyph4uUQixQhS0pg5MmHEV8k', '2020-05-08 10:52:23', '2020-05-08 13:52:23', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('26', '12', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjM3MiwibmJmIjoxNTg4OTA2MzcyLCJleHAiOjE1ODg5MTcxNzIsImp0aSI6eyJpZCI6MTIsInR5cGUiOiJ1c2VyIn19.k36WUiT1BgODj3EAF2ygIqkw98l4ED4nB7GsYIaG8-o', '2020-05-08 10:52:53', '2020-05-08 13:52:52', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('27', '11', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjM3NywibmJmIjoxNTg4OTA2Mzc3LCJleHAiOjE1ODg5MTcxNzcsImp0aSI6eyJpZCI6MTEsInR5cGUiOiJ1c2VyIn19.kJIF3s5XrqjitXbXxBsVJYr6I7sfECtKYczBOmleNuA', '2020-05-08 10:52:57', '2020-05-08 13:52:57', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('28', '14', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjQxNywibmJmIjoxNTg4OTA2NDE3LCJleHAiOjE1ODg5MTcyMTcsImp0aSI6eyJpZCI6MTQsInR5cGUiOiJ1c2VyIn19.1akRm7j6ocd4dMOroDr_Aky-ebaLPOkJ75LgAknoDbs', '2020-05-08 10:53:38', '2020-05-08 13:53:37', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('29', '15', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNjQyNSwibmJmIjoxNTg4OTA2NDI1LCJleHAiOjE1ODg5MTcyMjUsImp0aSI6eyJpZCI6MTUsInR5cGUiOiJ1c2VyIn19.OZ6owcyiH74KjB2s_48S1_RYLNrwP3LcjMklN2aGPh8', '2020-05-08 10:53:45', '2020-05-08 13:53:45', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('32', '17', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNzYxMCwibmJmIjoxNTg4OTA3NjEwLCJleHAiOjE1ODg5MTg0MTAsImp0aSI6eyJpZCI6MTcsInR5cGUiOiJ1c2VyIn19.iV1nuG5PILwdMUUypHRgvK9CIQ-SR7oT5V61akpCLOY', '2020-05-08 11:13:30', '2020-05-08 14:13:30', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('33', '20', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwNzg2NiwibmJmIjoxNTg4OTA3ODY2LCJleHAiOjE1ODg5MTg2NjYsImp0aSI6eyJpZCI6MjAsInR5cGUiOiJ1c2VyIn19.kn8tYFTWKEmQfkYCohn81wqHMxw1JbDJQsXmrPumma0', '2020-05-08 11:17:46', '2020-05-08 14:17:46', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('35', '20', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3c3QuY29tIiwiYXVkIjoid3N0LmNvbSIsImlhdCI6MTU4ODkwOTk1MCwibmJmIjoxNTg4OTA5OTUwLCJleHAiOjE1ODg5MjA3NTAsImp0aSI6eyJpZCI6MjAsInR5cGUiOiJ1c2VyIn19.L6AuBU0PAa9doaD9dRhm6enzZtv1NPxOzM8yCfk_GcA', '2020-05-08 11:52:31', '2020-05-08 14:52:30', '127.0.0.1');
INSERT INTO `eb_user_token` VALUES ('36', '22', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg4OTIxNTMzLCJuYmYiOjE1ODg5MjE1MzMsImV4cCI6MTU4ODkzMjMzMywianRpIjp7ImlkIjoyMiwidHlwZSI6InVzZXIifX0.f9UoJGwGBuJgLA1LtnrPXYm7rZ84t7KhU8Ofb4Kyfms', '2020-05-08 15:05:34', '2020-05-08 18:05:33', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('37', '22', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg4OTIyMTU2LCJuYmYiOjE1ODg5MjIxNTYsImV4cCI6MTU4ODkzMjk1NiwianRpIjp7ImlkIjoyMiwidHlwZSI6InVzZXIifX0.8bN2qSbufv-8MlwV8r9VLIUzDGfN2_UlMRNOD2GnJvY', '2020-05-08 15:15:56', '2020-05-08 18:15:56', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('38', '23', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg4OTI4MDUxLCJuYmYiOjE1ODg5MjgwNTEsImV4cCI6MTU4ODkzODg1MSwianRpIjp7ImlkIjoyMywidHlwZSI6InVzZXIifX0.zSc_QFV4EnT-UuwzF3MiPAQkwfX8VXDxBK7ez9MhUow', '2020-05-08 16:54:12', '2020-05-08 19:54:11', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('39', '24', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg4OTI4NDQyLCJuYmYiOjE1ODg5Mjg0NDIsImV4cCI6MTU4ODkzOTI0MiwianRpIjp7ImlkIjoyNCwidHlwZSI6InVzZXIifX0.LIzbVD9_vqrljImYAawncZg07FlWQkLIlIsFd4eYr8E', '2020-05-08 17:00:43', '2020-05-08 20:00:42', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('40', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg4OTI4NzI4LCJuYmYiOjE1ODg5Mjg3MjgsImV4cCI6MTU4ODkzOTUyOCwianRpIjp7ImlkIjoxLCJ0eXBlIjoidXNlciJ9fQ.Kg3loc2gHVb_Ycws8-AaF7vHt8MiZf4EuWMF6dPJSSA', '2020-05-08 17:05:28', '2020-05-08 20:05:28', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('41', '22', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg5Mjk3NzgwLCJuYmYiOjE1ODkyOTc3ODAsImV4cCI6MTU4OTMwODU4MCwianRpIjp7ImlkIjoyMiwidHlwZSI6InVzZXIifX0.o9kH4DIkCAMK8yGmqS2_Kde2BUfW5Ap6-xb7t38iQJE', '2020-05-12 23:36:21', '2020-05-13 02:36:20', '10.0.83.12');
INSERT INTO `eb_user_token` VALUES ('42', '22', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3ZW5zaXRpbmcudGFyZ2V0LWdkLmNvbSIsImF1ZCI6IndlbnNpdGluZy50YXJnZXQtZ2QuY29tIiwiaWF0IjoxNTg5Mjk3NzgzLCJuYmYiOjE1ODkyOTc3ODMsImV4cCI6MTU4OTMwODU4MywianRpIjp7ImlkIjoyMiwidHlwZSI6InVzZXIifX0.C91RzsQteWT5OT0OMJHLDNWjrWCtwk4mlQt1sIUlv2E', '2020-05-12 23:36:23', '2020-05-13 02:36:23', '10.0.83.12');

-- ----------------------------
-- Table structure for eb_wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_media`;
CREATE TABLE `eb_wechat_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '回复类型',
  `path` varchar(128) NOT NULL DEFAULT '' COMMENT '文件路径',
  `media_id` varchar(64) NOT NULL DEFAULT '' COMMENT '微信服务器返回的id',
  `url` varchar(256) NOT NULL DEFAULT '' COMMENT '地址',
  `temporary` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  KEY `type_2` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信回复表';

-- ----------------------------
-- Records of eb_wechat_media
-- ----------------------------

-- ----------------------------
-- Table structure for eb_wechat_message
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_message`;
CREATE TABLE `eb_wechat_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户行为记录id',
  `openid` varchar(32) NOT NULL DEFAULT '' COMMENT '用户openid',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '操作类型',
  `result` varchar(512) NOT NULL DEFAULT '' COMMENT '操作详细记录',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户行为记录表';

-- ----------------------------
-- Records of eb_wechat_message
-- ----------------------------

-- ----------------------------
-- Table structure for eb_wechat_news_category
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_news_category`;
CREATE TABLE `eb_wechat_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息管理ID',
  `cate_name` varchar(255) NOT NULL COMMENT '图文名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `new_id` varchar(255) NOT NULL DEFAULT '' COMMENT '文章id',
  `add_time` varchar(255) NOT NULL DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='图文消息管理表';

-- ----------------------------
-- Records of eb_wechat_news_category
-- ----------------------------
INSERT INTO `eb_wechat_news_category` VALUES ('21', '小程序商城前景分析', '0', '1', '51,52,58,59,60', '1565520433');

-- ----------------------------
-- Table structure for eb_wechat_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_qrcode`;
CREATE TABLE `eb_wechat_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL DEFAULT '' COMMENT '二维码类型',
  `third_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ticket` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码参数',
  `expire_seconds` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` varchar(255) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '微信访问url',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '微信二维码url',
  `scan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被扫的次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `third_type` (`third_type`,`third_id`) USING BTREE,
  KEY `ticket` (`ticket`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信二维码管理表';

-- ----------------------------
-- Records of eb_wechat_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for eb_wechat_reply
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_reply`;
CREATE TABLE `eb_wechat_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',
  `key` varchar(64) NOT NULL DEFAULT '' COMMENT '关键字',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '回复类型',
  `data` text NOT NULL COMMENT '回复数据',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `hide` (`hide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信关键字回复表';

-- ----------------------------
-- Records of eb_wechat_reply
-- ----------------------------

-- ----------------------------
-- Table structure for eb_wechat_template
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_template`;
CREATE TABLE `eb_wechat_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '模板名',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='微信模板';

-- ----------------------------
-- Records of eb_wechat_template
-- ----------------------------
INSERT INTO `eb_wechat_template` VALUES ('3', 'OPENTM200565259', '订单发货提醒', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM', '1515052638', '1');
INSERT INTO `eb_wechat_template` VALUES ('4', 'OPENTM413386489', '订单收货通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单状态：{{keyword2.DATA}}\n收货时间：{{keyword3.DATA}}\n商品详情：{{keyword4.DATA}}\n{{remark.DATA}}', 'UNyz81kgsn1WZHSqmwPiF9fUkcdZghfTZvN6qtDuu54', '1515052765', '1');
INSERT INTO `eb_wechat_template` VALUES ('5', 'OPENTM410119152', '退款进度通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单金额：{{keyword2.DATA}}\n下单时间：{{keyword3.DATA}}\n{{remark.DATA}}', 'xrXtApBFv0L3-YXKkl9WYB89hJxFGfQo3jSsk2WpAwI', '1515053049', '1');
INSERT INTO `eb_wechat_template` VALUES ('6', 'OPENTM405847076', '帐户资金变动提醒', '{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'Bk3XLd1Nwk9aNF1NIPBlyTDhrgNbzJW4H23OwVQdE-s', '1515053127', '1');
INSERT INTO `eb_wechat_template` VALUES ('7', 'OPENTM207707249', '订单发货提醒', '\n{{first.DATA}}\n商品明细：{{keyword1.DATA}}\n下单时间：{{keyword2.DATA}}\n配送地址：{{keyword3.DATA}}\n配送人：{{keyword4.DATA}}\n联系电话：{{keyword5.DATA}}\n{{remark.DATA}}', 'KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM', '1515053313', '1');
INSERT INTO `eb_wechat_template` VALUES ('8', 'OPENTM408237350', '服务进度提醒', '{{first.DATA}}\n服务类型：{{keyword1.DATA}}\n服务状态：{{keyword2.DATA}}\n服务时间：{{keyword3.DATA}}\n{{remark.DATA}}', 'ul2g_y0oxqEhtWoSJBbLzmnPrUwtLnIAe30MTBRL7rw', '1515483915', '1');
INSERT INTO `eb_wechat_template` VALUES ('9', 'OPENTM204431262', '客服通知提醒', '{{first.DATA}}\n客户名称：{{keyword1.DATA}}\n客服类型：{{keyword2.DATA}}\n提醒内容：{{keyword3.DATA}}\n通知时间：{{keyword4.DATA}}\n{{remark.DATA}}', 'j51mawxEmTuCCtMrXwSTnRfXH93qutoOebs5RG4MyHY', '1515484354', '1');
INSERT INTO `eb_wechat_template` VALUES ('10', 'OPENTM407456411', '拼团成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n团购商品：{{keyword2.DATA}}\n{{remark.DATA}}', 'CNvCAz9GIoQri-ogSCODVRANCBUQjZIxWzWvizbHVoQ', '1520063823', '1');
INSERT INTO `eb_wechat_template` VALUES ('11', 'OPENTM401113750', '拼团失败通知', '{{first.DATA}}\n拼团商品：{{keyword1.DATA}}\n商品金额：{{keyword2.DATA}}\n退款金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'mSg4ZexW1qaQH3FCrFLe746EYMlTFsZhfTB6VI_ElYg', '1520064059', '1');
INSERT INTO `eb_wechat_template` VALUES ('12', 'OPENTM205213550', '订单生成通知', '{{first.DATA}}\n时间：{{keyword1.DATA}}\n商品名称：{{keyword2.DATA}}\n订单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'HYD99ERso6_PcA3hAT6pzH1RmO88H6IIe8crAVaXPRE', '1528966701', '1');
INSERT INTO `eb_wechat_template` VALUES ('13', 'OPENTM207791277', '订单支付成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}', 'hJV1d1OwWB_lbPrSaRHi9RGr5CFAF4PJcZdYeg73Mtg', '1528966759', '1');
INSERT INTO `eb_wechat_template` VALUES ('14', 'OPENTM410292733', '砍价成功提醒', '{{first.DATA}}\n商品名称：{{keyword1.DATA}}\n底价：{{keyword2.DATA}}\n{{remark.DATA}}', 'SxBvid65JxK6PWOhlC2sgCG_mlopY1uKekEnEvAALp4', '1564566678', '1');
INSERT INTO `eb_wechat_template` VALUES ('15', 'OPENTM414349441', '开团成功通知', '{{first.DATA}}\n拼团名称：{{keyword1.DATA}}\n团购价格：{{keyword2.DATA}}\n拼团人数：{{keyword3.DATA}}\n{{remark.DATA}}', 'VDTU6X1UiK438tu-qcHKc_I76CtsEWVx-_Pbf1voiws', '1564567037', '1');

-- ----------------------------
-- Table structure for eb_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_user`;
CREATE TABLE `eb_wechat_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',
  `unionid` varchar(30) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) NOT NULL COMMENT '用户头像',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint(5) unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint(3) unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int(10) unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int(11) unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int(11) DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` decimal(8,2) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) DEFAULT 'wechat' COMMENT '用户类型',
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `subscribe` (`subscribe`) USING BTREE,
  KEY `unionid` (`unionid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='微信用户表';

-- ----------------------------
-- Records of eb_wechat_user
-- ----------------------------
INSERT INTO `eb_wechat_user` VALUES ('1', null, null, null, '61a9463fa17a', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588409824', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('2', null, null, null, '77879b2e967d', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588710734', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('3', null, null, null, '9a3289e98507', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588710883', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('4', null, null, null, '44a2b65cdcd5', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588738540', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('5', null, null, null, '596a7a356b5f', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588738644', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('6', null, null, null, '8663e6d4fa3c', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588905733', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('7', null, null, null, 'e8aea6f5332b', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588905955', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('8', null, null, null, 'f80fd64a8a0a', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906064', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('9', null, null, null, 'c3b003428e37', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906089', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('10', null, null, null, 'cf842316e621', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906166', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('11', null, null, null, '576da2e4d532', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906241', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('12', null, null, null, 'bf35be1c7779', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906352', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('13', null, null, null, 'ad362d50f5b5', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906383', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('14', null, null, null, '7e5373dd359f', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906411', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('15', null, null, null, '2be5a9164d89', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906425', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('16', null, null, null, 'b495210d0417', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588906713', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('17', null, null, null, 'ec2aec0912cd', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588907610', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('18', null, null, null, '60a93a5047b1', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588907647', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('19', null, null, null, '33b8173a07ce', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588907697', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('20', null, null, null, 'c259bbd92074', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588907866', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('21', null, null, null, '3e87253219e0', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588907911', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('22', null, null, null, '7712162bf4b7', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588921533', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('23', null, null, null, 'bd8ba8df8a1d', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588928051', null, null, null, null, null, null, 'h5');
INSERT INTO `eb_wechat_user` VALUES ('24', null, null, null, '4f041796fe03', 'http://kaifa.crmeb.net/uploads/attach/2019/08/20190807/723adbdd4e49a0f9394dfc700ab5dba3.png', '0', '', '', '', '', null, '0', null, '1', null, '1588928442', null, null, null, null, null, null, 'h5');
