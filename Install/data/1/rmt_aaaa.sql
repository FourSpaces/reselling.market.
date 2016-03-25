/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : zzzz

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-03-24 11:11:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rmt_ads`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_ads`;
CREATE TABLE `rmt_ads` (
`adId`  int(11) NOT NULL AUTO_INCREMENT ,
`adPositionId`  int(11) NULL DEFAULT NULL ,
`areaId1`  int(11) NOT NULL ,
`areaId2`  int(11) NOT NULL ,
`adType`  tinyint(4) NOT NULL DEFAULT 0 ,
`adFile`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`adName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`adURL`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`adStartDate`  date NOT NULL ,
`adEndDate`  date NOT NULL ,
`adSort`  int(11) NOT NULL DEFAULT 0 ,
`adClickNum`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`adId`),
INDEX `adPositionId` (`adPositionId`, `areaId1`, `areaId2`, `adStartDate`, `adEndDate`) USING BTREE ,
INDEX `adPositionId_2` (`adPositionId`, `areaId1`, `areaId2`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=21

;

-- ----------------------------
-- Records of rmt_ads
-- ----------------------------
BEGIN;
INSERT INTO `rmt_ads` VALUES ('11', '54', '0', '0', '0', 'Upload/ads/2016-03/56d70073988e0.png', '2f', '', '2015-05-08', '2016-09-02', '2', '0'), ('12', '334', '0', '0', '0', 'Upload/ads/2016-03/56d700c5b2d15.png', '1f', '', '2015-05-08', '2016-11-16', '0', '0'), ('13', '55', '0', '0', '0', 'Upload/ads/2016-03/56d6ffad1da6e.png', '3f', '', '2015-05-08', '2016-10-12', '0', '0'), ('14', '50', '0', '0', '0', 'Upload/ads/2016-03/56d6fec517903.png', '4f', '', '2015-05-08', '2016-09-08', '0', '5'), ('15', '362', '0', '0', '0', 'Upload/ads/2016-03/56d700e33810e.png', '5f', '', '2015-05-08', '2016-10-31', '0', '0'), ('16', '56', '0', '0', '0', 'Upload/ads/2016-03/56d6fd3ce2412.png', '6f', '', '2015-05-08', '2016-11-10', '6', '0'), ('17', '-1', '0', '0', '0', 'Upload/ads/2016-01/56ab79643ec7d.jpg', '1', '', '2016-01-01', '2017-01-01', '1', '1'), ('18', '-1', '0', '0', '0', 'Upload/ads/2016-01/56ab794d1fc14.jpg', '2', '', '2016-01-01', '2016-07-01', '2', '0'), ('19', '-1', '0', '0', '0', 'Upload/ads/2016-01/56ab7929eccb7.png', '3', '', '2016-01-01', '2017-01-01', '3', '8'), ('20', '-1', '0', '0', '0', 'Upload/ads/2016-01/56ab78eda4f40.png', '4', '', '2016-01-01', '2017-01-01', '4', '0');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_areas`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_areas`;
CREATE TABLE `rmt_areas` (
`areaId`  int(11) NOT NULL AUTO_INCREMENT COMMENT '区域ID' ,
`parentId`  int(11) NOT NULL COMMENT '上级ID' ,
`areaName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区名字' ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否显示' ,
`areaSort`  int(11) NOT NULL DEFAULT 0 COMMENT '地区排序' ,
`areaKey`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区关键字' ,
`areaType`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '地区类型' ,
`areaFlag`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '地区状态' ,
PRIMARY KEY (`areaId`),
INDEX `isShow` (`isShow`, `areaFlag`) USING BTREE ,
INDEX `areaType` (`areaType`) USING BTREE ,
INDEX `parentId` (`parentId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=130021

;

-- ----------------------------
-- Records of rmt_areas
-- ----------------------------
BEGIN;
INSERT INTO `rmt_areas` VALUES ('110000', '0', '北京', '0', '1', 'B', '0', '-1'), ('120000', '0', '天津', '1', '2', 'T', '0', '1'), ('130000', '0', '河北', '0', '3', 'H', '0', '-1'), ('130006', '120000', '天津科技大学', '1', '2', 'K', '1', '1'), ('130005', '120000', '天津大学', '1', '1', 'T', '1', '1'), ('130007', '120000', '天津工业大学', '1', '3', 'G', '1', '1'), ('130008', '120000', '天津理工大学', '1', '4', 'L', '1', '1'), ('130009', '120000', '天津农学院', '1', '5', 'N', '1', '1'), ('130010', '120000', '天津医科大学', '1', '6', 'Y', '1', '1'), ('130011', '120000', '天津中医药大学', '1', '7', 'Z', '1', '1'), ('130012', '120000', '天津师范大学', '1', '8', 'S', '1', '1'), ('130013', '120000', '天津职业技术师范大学', '1', '9', 'Z', '1', '1'), ('130014', '120000', '天津外国语大学', '1', '10', 'W', '1', '1'), ('130015', '120000', '天津商业大学', '1', '11', 'S', '1', '1'), ('130016', '120000', '天津财经大学', '1', '12', 'C', '1', '1'), ('130017', '120000', '天津体育学院', '1', '13', 'T', '1', '1'), ('130018', '120000', '天津音乐学院', '1', '14', 'Y', '1', '1'), ('130019', '120000', '天津美术学院', '1', '15', 'M', '1', '1'), ('130020', '120000', '天津城市建设学院', '1', '16', 'C', '1', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_article_cats`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_article_cats`;
CREATE TABLE `rmt_article_cats` (
`catId`  int(11) NOT NULL AUTO_INCREMENT ,
`parentId`  int(11) NOT NULL ,
`catType`  tinyint(4) NOT NULL DEFAULT 0 ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 ,
`catName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`catSort`  int(11) NOT NULL DEFAULT 0 ,
`catFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`catId`),
INDEX `isShow` (`catType`, `catFlag`, `isShow`) USING BTREE ,
INDEX `parentId` (`catFlag`, `parentId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of rmt_article_cats
-- ----------------------------
BEGIN;
INSERT INTO `rmt_article_cats` VALUES ('1', '0', '1', '1', '网站快讯', '0', '1'), ('2', '0', '1', '1', '常见问题', '0', '1'), ('3', '0', '1', '1', '网站内容', '0', '1'), ('4', '0', '1', '1', '帮助中心', '0', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_articles`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_articles`;
CREATE TABLE `rmt_articles` (
`articleId`  int(11) NOT NULL AUTO_INCREMENT ,
`catId`  int(11) NOT NULL ,
`articleTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`articleImg`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 ,
`articleContent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`articleKey`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`staffId`  int(11) NOT NULL ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`articleId`),
INDEX `catId` (`catId`, `isShow`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10

;

-- ----------------------------
-- Records of rmt_articles
-- ----------------------------
BEGIN;
INSERT INTO `rmt_articles` VALUES ('1', '3', '关于我们', '', '1', '&lt;p&gt;\n	&lt;span style=&quot;color:#404040;font-family:tahoma, arial, 宋体;background-color:#F6F6F6;&quot;&gt;&lt;strong&gt; &lt;/strong&gt;&lt;/span&gt;\n&lt;/p&gt;\n&lt;h2 style=&quot;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	&lt;strong&gt;关于我们:&lt;/strong&gt;\n&lt;/h2&gt;\n&lt;p&gt;\n	大学生物尽其用网 成立于2016年3月1日，是国内第一家大学生闲置商品信息网站。&lt;br /&gt;\n&lt;span&gt;大学生物尽其用网&lt;/span&gt;致力于提供连接个人和个人生活需求的本地信息平台,帮助用户免费查找和发布二手物品交易、生活服务等本地生活信息。\n&lt;/p&gt;\n&lt;br /&gt;', '关于我们', '1', '2015-03-14 16:48:58'), ('2', '2', '诚聘英才', '', '1', '这里管理&amp;nbsp;诚聘英才', '诚聘英才', '1', '2015-04-09 21:37:30'), ('3', '3', '法律声明', '', '1', '法律声明。', '法律声明', '1', '2015-04-09 21:37:56'), ('9', '3', '网站地图', '', '1', '网站地图', '网站地图', '1', '2016-03-02 19:41:29'), ('4', '4', '网站说明', '', '1', '运费说明 这里是运费说明', '运费说明', '1', '2015-04-09 21:38:12'), ('5', '5', '退换货原则和流程', '', '1', '&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 退换货原则和流程 &amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;退换货原则和流程\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 退换货原则和流程\n&lt;/p&gt;', '退换货原则和流程', '1', '2015-04-09 21:38:45'), ('6', '6', '帐号&amp;密码问题', '', '1', '&lt;u&gt;111111111111111&amp;nbsp;&lt;/u&gt;', '帐号&amp;密码问题', '1', '2015-04-09 21:39:06'), ('7', '3', '成为服务商', '', '1', '&lt;h2 style=&quot;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	成为服务商:\n&lt;/h2&gt;\n&lt;p style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	如果你身处大学周边，如果你不甘平凡。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	那么机会来了，成为一个服务商，看到你人生路上的一个希望。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;如果你做了决定，请联系我们，并提交相应的资质内容，我们审核通过后，\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	你就可以实现自己的梦想，走上人生巅峰，迎娶白富美。那么你还要等着么！\n&lt;/p&gt;', '服务商', '1', '2016-03-02 19:04:03'), ('8', '3', '联系我们', '', '1', '&lt;h2 style=&quot;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	联系我们：\n&lt;/h2&gt;\n&lt;p&gt;\n	&lt;ul style=&quot;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;font-size:16px;background-color:#FFFFFF;&quot;&gt;\n		&lt;li&gt;\n			联系电话：&lt;span style=&quot;font-family:\'sans serif\', tahoma, verdana, helvetica;font-size:12px;line-height:1.5;&quot;&gt;13920826591&lt;/span&gt;\n		&lt;/li&gt;\n	&lt;/ul&gt;\n&lt;/p&gt;\n&lt;p class=&quot;company&quot; style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	&lt;ul style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n		&lt;li&gt;\n			联系邮箱：cheng@163.com\n		&lt;/li&gt;\n	&lt;/ul&gt;\n&lt;a href=&quot;mailto:ka@baixing.com&quot;&gt;&lt;/a&gt;\n&lt;/p&gt;\n&lt;ul style=&quot;font-size:16px;color:#333333;font-family:\'Hiragino Sans GB\', \'Microsoft YaHei\', 黑体, sans-serif;background-color:#FFFFFF;&quot;&gt;\n	&lt;li&gt;\n		联系地址：xxxxxxxxxxxxxxxx\n	&lt;/li&gt;\n&lt;/ul&gt;', '联系我们', '1', '2016-03-02 19:29:13');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_attribute_cats`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_attribute_cats`;
CREATE TABLE `rmt_attribute_cats` (
`catId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`catName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`catFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`catId`),
INDEX `shopId` (`shopId`, `catFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of rmt_attribute_cats
-- ----------------------------
BEGIN;
INSERT INTO `rmt_attribute_cats` VALUES ('1', '4', '水果', '1', '2015-10-12 13:54:29'), ('2', '4', '海产', '1', '2015-10-12 13:54:38');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_attributes`;
CREATE TABLE `rmt_attributes` (
`attrId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`catId`  int(11) NOT NULL ,
`attrName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`attrType`  tinyint(4) NOT NULL DEFAULT 0 ,
`isPriceAttr`  tinyint(4) NULL DEFAULT 0 ,
`attrContent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`attrFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`attrSort`  int(11) NULL DEFAULT 0 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`attrId`),
INDEX `shopId` (`shopId`, `catId`, `attrFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of rmt_attributes
-- ----------------------------
BEGIN;
INSERT INTO `rmt_attributes` VALUES ('1', '4', '1', '等级', '0', '1', null, '1', '1', '2015-10-12 13:56:13'), ('2', '4', '1', '产地', '2', '0', '国外,山东,四川,云南,广西,广东', '1', '2', '2015-10-12 13:56:13'), ('3', '4', '1', '营养价值', '0', '0', null, '1', '3', '2015-10-12 13:56:13'), ('4', '4', '2', '等级', '0', '1', null, '1', '1', '2015-10-12 13:57:49'), ('5', '4', '2', '产地', '2', '0', '美国,英国,法国,澳大利亚,中国,台湾', '1', '2', '2015-10-12 13:57:49'), ('6', '4', '2', '烹饪方式', '1', '0', '生食,蒸煮,烧烤,爆炒', '1', '3', '2015-10-12 13:57:49'), ('7', '4', '2', '营养价值', '0', '0', null, '1', '4', '2015-10-12 13:57:49');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_banks`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_banks`;
CREATE TABLE `rmt_banks` (
`bankId`  int(11) NOT NULL AUTO_INCREMENT ,
`bankName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`bankFlag`  tinyint(4) NULL DEFAULT 1 ,
PRIMARY KEY (`bankId`),
INDEX `bankFlag` (`bankFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=25

;

-- ----------------------------
-- Records of rmt_banks
-- ----------------------------
BEGIN;
INSERT INTO `rmt_banks` VALUES ('17', '中国工商银行', '1'), ('18', '中国农业银行', '1'), ('19', '中国人民银行', '1'), ('20', '招商银行', '1'), ('21', '中兴银行', '1'), ('22', '交通银行', '1'), ('23', '深圳发展银行', '1'), ('24', '中国光大银行', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_brands`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_brands`;
CREATE TABLE `rmt_brands` (
`brandId`  int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id' ,
`brandName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌名字' ,
`brandIco`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌图标' ,
`brandDesc`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '品牌说明' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`brandFlag`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '品牌信号' ,
PRIMARY KEY (`brandId`),
INDEX `brandFlag` (`brandFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='商品品牌'
AUTO_INCREMENT=60

;

-- ----------------------------
-- Records of rmt_brands
-- ----------------------------
BEGIN;
INSERT INTO `rmt_brands` VALUES ('7', '大大', 'Upload/brands/2015-05/554c248588e1a_thumb.gif', '大大', '2015-05-08 10:50:51', '1'), ('8', '德芙', 'Upload/brands/2015-05/554c24a0efdb9_thumb.jpg', '德芙', '2015-05-08 10:51:18', '1'), ('9', '金帝', 'Upload/brands/2015-05/554c24beef656_thumb.jpg', '金帝', '2015-05-08 10:51:47', '1'), ('10', '乐天', 'Upload/brands/2015-05/554c24cfc96fa_thumb.gif', '乐天', '2015-05-08 10:52:07', '1'), ('11', '好丽友', 'Upload/brands/2015-05/554c24e361a8e_thumb.gif', '好丽友', '2015-05-08 10:52:27', '1'), ('12', '金莎', 'Upload/brands/2015-05/554c24fc5e3f8_thumb.jpg', '金莎', '2015-05-08 10:52:48', '1'), ('13', '苏果', 'Upload/brands/2015-05/554c25d2b3b6b_thumb.jpg', '苏果', '2015-05-08 10:56:21', '1'), ('14', '城市果篮', 'Upload/brands/2015-05/554c25eb1c3ac_thumb.jpg', '城市果篮', '2015-05-08 10:56:45', '1'), ('15', '花果子', 'Upload/brands/2015-05/554c25ff28841_thumb.jpg', '&lt;b&gt;花果子&lt;/b&gt;', '2015-05-08 10:57:09', '1'), ('16', '福果园', 'Upload/brands/2015-05/554c261f575b7_thumb.jpg', '福果园', '2015-05-08 10:57:46', '1'), ('17', '香芒山', 'Upload/brands/2015-05/554c266dcce62_thumb.jpg', '香芒山', '2015-05-08 10:58:56', '1'), ('18', 'berry', 'Upload/brands/2015-05/554c267f44c8a_thumb.jpg', 'berry', '2015-05-08 10:59:18', '1'), ('19', '吉农沃尔特', 'Upload/brands/2015-05/556ad93feae62_thumb.png', '&lt;span style=&quot;color:#637160;font-family:宋体;font-size:16px;line-height:22px;background-color:#E53333;&quot;&gt;田间超市不错，很吸引人的眼球。&lt;/span&gt;', '2015-05-31 17:51:28', '1'), ('20', '鑫明有机', 'Upload/brands/2015-05/556adab7189d1_thumb.png', '鑫明有机食物', '2015-05-31 17:56:24', '1'), ('21', '一号农场', 'Upload/brands/2015-05/556adcacbfb6b_thumb.png', '一号农场一号农场一号农场', '2015-05-31 18:04:32', '1'), ('22', '万家鲜', 'Upload/brands/2015-05/556adf780f49d_thumb.png', '万家鲜万家鲜万家鲜', '2015-05-31 18:16:28', '1'), ('23', '新雅食品', 'Upload/brands/2015-05/556b08187ff38_thumb.png', '新雅食品新雅食品新雅食品新雅食品', '2015-05-31 21:09:46', '1'), ('24', '乐多菜园', 'Upload/brands/2015-05/556b099de97fe_thumb.png', '乐多菜园乐多乐多菜园', '2015-05-31 21:16:18', '1'), ('25', '乐宜美', 'Upload/brands/2015-06/556bb2e72aae5_thumb.png', '乐宜美乐宜美乐宜美', '2015-06-01 09:18:35', '1'), ('26', '好雅', 'Upload/brands/2015-06/556bb59a21690_thumb.png', '&lt;h1 style=&quot;font-size:16px;font-family:\'microsoft yahei\';background-color:#FFFFFF;&quot;&gt;\n	好雅 专做真空收纳袋压缩袋整理密封袋\n&lt;/h1&gt;', '2015-06-01 09:30:04', '1'), ('27', '厨之选', 'Upload/brands/2015-06/556bcffbb51c6_thumb.png', '厨之选厨之选厨之选厨之选', '2015-06-01 11:22:40', '1'), ('28', '新天力', 'Upload/brands/2015-06/556bd070c5596_thumb.png', '新天力厨房品牌', '2015-06-01 11:24:41', '1'), ('29', '雀巢咖啡', 'Upload/brands/2015-06/556be76dc0ded_thumb.jpg', '雀巢咖啡雀巢咖啡雀巢咖啡', '2015-06-01 13:02:46', '1'), ('30', '伊利奶粉', 'Upload/brands/2015-06/556c13f105821_thumb.jpg', '&lt;p&gt;\n	伊利奶粉。。。\n&lt;/p&gt;', '2015-06-01 16:12:42', '1'), ('31', '红牛', 'Upload/brands/2015-06/556c16e6cb44a_thumb.jpg', '红牛功能饮料', '2015-06-01 16:25:16', '1'), ('32', '佳得乐', 'Upload/brands/2015-06/556c176b0e6b7_thumb.jpg', '佳得乐饮料品牌', '2015-06-01 16:27:30', '1'), ('33', '美年达', 'Upload/brands/2015-06/556c1839c8fd5_thumb.jpg', '美年达碳酸饮料', '2015-06-01 16:30:59', '1'), ('34', '芬达', 'Upload/brands/2015-06/556c18a77133d_thumb.jpg', '芬达碳酸饮料', '2015-06-01 16:32:49', '1'), ('35', '康师傅', 'Upload/brands/2015-06/556c19392c43e_thumb.jpg', '康师傅康师傅康师傅康师傅', '2015-06-01 16:35:09', '1'), ('36', '美汁源', 'Upload/brands/2015-06/556c1aa14e0a8_thumb.jpg', '&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;美汁源&lt;span style=&quot;color:#333333;line-height:28px;font-family:Tahoma, &amp;quot;microsoft yahei&amp;quot;;font-size:20px;font-style:normal;background-color:#FFFFFF;&quot;&gt;美汁源&lt;span style=&quot;color:#333333;line-height:28px;font-family:Tahoma, &amp;quot;microsoft yahei&amp;quot;;font-size:20px;font-style:normal;background-color:#FFFFFF;&quot;&gt;美汁源&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;美汁源&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;', '2015-06-01 16:41:09', '1'), ('37', '太古方糖', 'Upload/brands/2015-06/556c1cfe9f650_thumb.jpg', '&lt;p&gt;\n	太古方糖。。。\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n&lt;/p&gt;', '2015-06-01 16:51:19', '1'), ('38', '麦斯威尔咖啡', 'Upload/brands/2015-06/556c1ded1236d_thumb.jpg', '&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;麦斯威尔咖啡品牌&lt;/span&gt;', '2015-06-01 16:55:15', '1'), ('39', '可比可拿铁咖啡', 'Upload/brands/2015-06/556c1e8a688dd_thumb.jpg', '&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;可比可拿铁咖啡&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;可比可拿铁咖啡&lt;/span&gt;&lt;/span&gt;', '2015-06-01 16:57:51', '1'), ('40', '摩卡咖啡', 'Upload/brands/2015-06/556c2089222b5_thumb.jpg', '摩卡咖啡摩卡咖啡', '2015-06-01 17:06:19', '1'), ('41', '福临门', 'Upload/brands/2015-06/556c261fe8586_thumb.jpg', '福临门', '2015-06-01 17:30:10', '1'), ('42', '鲁花花生油', 'Upload/brands/2015-06/556c278226813_thumb.jpg', '鲁花花生油鲁花花生油鲁花花生油鲁花花生油', '2015-06-01 17:36:03', '1'), ('43', '多力5珍宝', 'Upload/brands/2015-06/556c281dc1f4f_thumb.jpg', '&lt;p&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;p&gt;\n	多力5珍宝多力5珍宝\n&lt;/p&gt;', '2015-06-01 17:38:44', '1'), ('44', '金龙鱼', 'Upload/brands/2015-06/556c29f537cab_thumb.jpg', '金龙鱼金龙鱼金龙鱼', '2015-06-01 17:46:31', '1'), ('45', '真真老老粽子', 'Upload/brands/2015-06/556c2ce99cb6d_thumb.jpg', '真真老老粽子真真老老粽子真真老老粽子', '2015-06-01 17:59:12', '1'), ('46', '五芳斋', 'Upload/brands/2015-06/556c2d94bb27c_thumb.jpg', '五芳斋 粽子', '2015-06-01 18:02:04', '1'), ('47', '银鹭', 'Upload/brands/2015-06/556c2e693b534_thumb.png', '&lt;span style=&quot;color:#333333;background-color:#FFFFFF;&quot;&gt;银鹭 椰果 八宝粥 &lt;/span&gt;', '2015-06-01 18:05:36', '1'), ('48', 'Walch/威露士', 'Upload/brands/2015-06/556c51eb10b5f_thumb.png', 'Walch/威露士Walch/威露士Walch/威露士', '2015-06-01 20:37:02', '1'), ('49', '妍妍', 'Upload/brands/2015-06/556c52f9d84f3_thumb.png', '妍妍女性用品', '2015-06-01 20:41:31', '1'), ('50', '巴黎小站', 'Upload/brands/2015-06/556c541eca2cb_thumb.png', '&lt;p&gt;\n	巴黎小站\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n&lt;/p&gt;', '2015-06-01 20:46:51', '1'), ('51', '施巴', 'Upload/brands/2015-06/556c5611a70a8_thumb.png', '施巴施巴', '2015-06-01 20:54:46', '1'), ('52', 'Free', 'Upload/brands/2015-06/556c56c98fe30_thumb.png', '&amp;nbsp;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Free&amp;nbsp;\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Free\n&lt;/h1&gt;', '2015-06-01 20:57:53', '1'), ('53', '西尼', 'Upload/brands/2015-06/556c586531e87_thumb.png', '西尼西尼', '2015-06-01 21:04:50', '1'), ('54', 'beely', 'Upload/brands/2015-06/556c5ce375bad_thumb.png', 'beely&amp;nbsp; beely', '2015-06-01 21:23:53', '1'), ('55', 'Veet/薇婷', 'Upload/brands/2015-06/556c5d7ac1a74_thumb.png', '&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Veet/薇婷\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Veet/薇婷\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Veet/薇婷\n&lt;/h1&gt;', '2015-06-01 21:26:24', '1'), ('56', '番茄派', 'Upload/brands/2015-06/556c5f1996e13_thumb.png', '&lt;p&gt;\n	番茄派\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n&lt;/p&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	番茄派\n&lt;/h1&gt;', '2015-06-01 21:33:22', '1'), ('57', '欧丽丝', 'Upload/brands/2015-06/556c5fdce2461_thumb.png', '&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	欧丽丝\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	欧丽丝\n&lt;/h1&gt;', '2015-06-01 21:36:30', '1'), ('58', 'STENDERS施丹兰', 'Upload/brands/2015-06/556c6040c9bd0_thumb.png', '&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	STENDERS施丹兰\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	STENDERS施丹兰\n&lt;/h1&gt;', '2015-06-01 21:38:12', '1'), ('59', 'Rewiwax蕾沃斯', 'Upload/brands/2015-06/556c60d90746b_thumb.png', '&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Rewiwax蕾沃斯\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Rewiwax蕾沃斯\n&lt;/h1&gt;\n&lt;h1 style=&quot;color:#000000;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\n	Rewiwax蕾沃斯\n&lt;/h1&gt;', '2015-06-01 21:40:44', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_communitys`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_communitys`;
CREATE TABLE `rmt_communitys` (
`communityId`  int(11) NOT NULL AUTO_INCREMENT ,
`areaId1`  int(11) NOT NULL ,
`areaId2`  int(11) NULL DEFAULT NULL ,
`areaId3`  int(11) NULL DEFAULT NULL ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 ,
`isService`  tinyint(4) NOT NULL DEFAULT 0 ,
`communityName`  varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`communitySort`  int(11) NOT NULL DEFAULT 0 ,
`communityKey`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`communityFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`communityId`),
INDEX `isShow` (`isShow`, `communityFlag`) USING BTREE ,
INDEX `areaId1` (`areaId1`) USING BTREE ,
INDEX `areaId2` (`areaId2`) USING BTREE ,
INDEX `areaId3` (`areaId3`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='社区列表'
AUTO_INCREMENT=24

;

-- ----------------------------
-- Records of rmt_communitys
-- ----------------------------
BEGIN;
INSERT INTO `rmt_communitys` VALUES ('15', '440000', '440100', '440106', '0', '1', '五山岑村社区', '1', '', '1'), ('16', '440000', '440100', '440106', '0', '1', '华南农业大学社区', '2', '', '1'), ('17', '440000', '440100', '440106', '0', '1', '华南理工大学社区', '3', '', '1'), ('18', '440000', '440100', '440106', '0', '1', '暨南大学社区', '4', '', '1'), ('19', '440000', '440100', '440106', '0', '1', '华南师范大学社区', '5', '', '1'), ('20', '440000', '440100', '440106', '0', '1', '石牌桥社区', '8', '', '1'), ('21', '440000', '440100', '440106', '0', '1', '岗顶社区', '6', '', '1'), ('22', '440000', '440100', '440106', '0', '1', '五羊新村', '6', '', '1'), ('23', '440000', '440100', '440106', '0', '1', '天河体育中心', '7', '', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_favorites`;
CREATE TABLE `rmt_favorites` (
`favoriteId`  int(11) NOT NULL AUTO_INCREMENT ,
`userId`  int(11) NULL DEFAULT NULL ,
`favoriteType`  tinyint(4) NOT NULL DEFAULT 0 ,
`targetId`  int(11) NOT NULL ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`favoriteId`),
UNIQUE INDEX `favoriteId` (`userId`, `favoriteType`, `targetId`) USING BTREE ,
INDEX `userId` (`userId`, `favoriteType`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of rmt_favorites
-- ----------------------------
BEGIN;
INSERT INTO `rmt_favorites` VALUES ('3', '41', '0', '60', '2016-02-13 21:21:19');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_feedbacks`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_feedbacks`;
CREATE TABLE `rmt_feedbacks` (
`feedbackId`  int(11) NOT NULL AUTO_INCREMENT ,
`feedbackType`  tinyint(4) NOT NULL DEFAULT 0 ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`userId`  int(11) NULL DEFAULT NULL ,
`userName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userPhone`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`createTime`  datetime NOT NULL ,
`adminId`  int(11) NULL DEFAULT NULL ,
`adminReply`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`replyTime`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`feedbackId`),
INDEX `feedbackType` (`feedbackType`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_feedbacks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_friendlinks`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_friendlinks`;
CREATE TABLE `rmt_friendlinks` (
`friendlinkId`  int(11) NOT NULL AUTO_INCREMENT ,
`friendlinkIco`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`friendlinkName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`friendlinkUrl`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`friendlinkSort`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`friendlinkId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of rmt_friendlinks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods`;
CREATE TABLE `rmt_goods` (
`goodsId`  int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID' ,
`goodsSn`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号' ,
`goodsName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名字' ,
`goodsImg`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片' ,
`goodsThums`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品缩略图' ,
`brandId`  int(11) NULL DEFAULT 0 COMMENT '品牌标识' ,
`shopId`  int(11) NOT NULL COMMENT '店铺标识' ,
`marketPrice`  float(11,1) NOT NULL DEFAULT 0.0 COMMENT '市场价<原价>' ,
`shopPrice`  float(11,1) NOT NULL DEFAULT 0.0 COMMENT '店铺价<转让价>' ,
`goodsStock`  int(11) NOT NULL DEFAULT 1 COMMENT '商品库存' ,
`saleCount`  int(11) NULL DEFAULT 0 COMMENT '销售数量' ,
`isBook`  tinyint(4) NULL DEFAULT 0 COMMENT '是书？ ' ,
`bookQuantity`  int(11) NULL DEFAULT 0 COMMENT '图书数量' ,
`warnStock`  int(11) NULL DEFAULT 0 COMMENT '库存提醒' ,
`goodsUnit`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品计量单位' ,
`goodsSpec`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品规格' ,
`isSale`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '是上架' ,
`isBest`  tinyint(4) NULL DEFAULT 1 COMMENT '是精品' ,
`isHot`  tinyint(4) NULL DEFAULT 1 COMMENT '是热销的' ,
`isRecomm`  tinyint(4) NULL DEFAULT 1 COMMENT '推荐' ,
`isNew`  tinyint(4) NULL DEFAULT 1 COMMENT '是新品' ,
`isAdminBest`  tinyint(4) NULL DEFAULT 0 COMMENT '是管理员认可的精品' ,
`isAdminRecom`  tinyint(4) NULL DEFAULT 0 COMMENT '是管理员推荐的' ,
`recommDesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐说明' ,
`goodsCatId1`  int(11) NOT NULL COMMENT '商品猫标识？1' ,
`goodsCatId2`  int(11) NOT NULL COMMENT '商品猫标识？2' ,
`goodsCatId3`  int(11) NOT NULL COMMENT '商品猫标识？3' ,
`shopCatId1`  int(11) NULL DEFAULT 0 COMMENT '店铺猫标识？1' ,
`shopCatId2`  int(11) NULL DEFAULT 0 COMMENT '店铺猫标识？2' ,
`goodsDesc`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品说明' ,
`isShopRecomm`  tinyint(4) NULL DEFAULT 0 COMMENT '是店铺推荐' ,
`isIndexRecomm`  tinyint(4) NULL DEFAULT 0 COMMENT '是主页推荐' ,
`isActivityRecomm`  tinyint(4) NULL DEFAULT 0 COMMENT '是活动推荐' ,
`isInnerRecomm`  tinyint(4) NULL DEFAULT 0 COMMENT '是内部推荐' ,
`goodsStatus`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '商品状态' ,
`saleTime`  datetime NULL DEFAULT NULL COMMENT '发售时间' ,
`attrCatId`  int(11) NULL DEFAULT 0 COMMENT 'attr 标识id' ,
`goodsKeywords`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的关键字' ,
`goodsFlag`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '商品标志' ,
`statusRemarks`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注状态' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`oldAndNew`  int(1) NOT NULL COMMENT '新旧：0->非全新   1->全新' ,
`bargain`  int(11) NOT NULL COMMENT '讲价：0->拒绝   1->接受' ,
`phone`  varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式' ,
`sellerName`  varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卖家姓名' ,
`userId`  int(11) NOT NULL COMMENT '用户id' ,
`popularity`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '人气' ,
PRIMARY KEY (`goodsId`),
INDEX `shopId` (`shopId`) USING BTREE ,
INDEX `goodsStatus` (`goodsStatus`, `goodsFlag`, `isSale`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='商品列表'
AUTO_INCREMENT=471

;

-- ----------------------------
-- Records of rmt_goods
-- ----------------------------
BEGIN;
INSERT INTO `rmt_goods` VALUES ('272', '0FCEC0FC57', '宝贝1', 'Upload/goods/2016-02/56c472de0aab6.jpg', 'Upload/goods/2016-02/56c472de0aab6_thumb.jpg', '0', '1', '66.0', '66.0', '1', '0', '0', '0', '0', '件', '', '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '224', '0', '0', '1. 使用时长：&lt;br /&gt;\n2. 新旧程度描述：&lt;br /&gt;\n3. 存在的问题：&lt;br /&gt;\n4. 到手时间/有效期/适用条件：&lt;br /&gt;', '0', '0', '0', '0', '1', null, '0', '66', '1', null, '2016-02-17 21:17:51', '0', '0', '13920826502', '先生', '44', '12'), ('273', 'F4557DB6D8', '话费白冲', 'Upload/goods/2016-02/56c4740e539b2.jpg', 'Upload/goods/2016-02/56c4740e539b2_thumb.jpg', '0', '34', '0.0', '0.0', '1', '0', '0', '0', '0', '件', '', '0', '1', '1', '1', '1', '0', '0', null, '56', '84', '100', '0', '0', '1. 使用时长：&lt;br /&gt;\n2. 新旧程度描述：&lt;br /&gt;\n3. 存在的问题：&lt;br /&gt;\n4. 到手时间/有效期/适用条件：&lt;br /&gt;', '0', '0', '0', '0', '1', null, '0', '白充值', '1', null, '2016-02-17 21:23:25', '0', '0', '13920826591', '女生', '40', '1'), ('275', '5C72D8EE1A', '手机壳', 'Upload/goods/2016-02/56c5dac9497e3.jpg', 'Upload/goods/2016-02/56c5dac9497e3_thumb.jpg', '0', '1', '22.0', '6.0', '1', '0', '0', '0', '0', '件', '', '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '1. 使用时长：&lt;br /&gt;\n2. 新旧程度描述：&lt;br /&gt;\n3. 存在的问题：&lt;br /&gt;\n4. 到手时间/有效期/适用条件：&lt;br /&gt;', '0', '0', '0', '0', '1', null, '0', '手机壳', '1', null, '2016-02-18 22:53:33', '0', '0', '13920826591', 's先生', '49', '280'), ('276', 'D605D07C7A', '电脑', 'Upload/goods/2016-03/56d807029bcba.png', 'Upload/goods/2016-03/56d807029bcba_thumb.png', '0', '38', '335.0', '235.0', '1', '0', '0', '0', '0', '件', '', '1', '1', '1', '1', '1', '0', '0', null, '56', '85', '97', '0', '0', '1. 使用时长：&lt;br/&gt;\n						2. 新旧程度描述：&lt;br/&gt;\n						3. 存在的问题：&lt;br/&gt;\n						4. 到手时间/有效期/适用条件：&lt;br/&gt;', '0', '0', '0', '0', '1', null, '0', '电脑', '1', null, '2016-03-03 17:43:11', '0', '0', '13920826590', '民先生', '50', '1'), ('277', 'AA20799667', 'iphone6 4.7寸手机壳 磨砂材质 凯美瑞定制版', 'Upload/goods/2016-03/56f163436c3d2.jpg', 'Upload/goods/2016-03/56f163436c3d2_thumb.jpg', '0', '1', '40.0', '20.0', '1', '0', '0', '0', '0', '件', '', '1', '1', '1', '1', '1', '0', '0', '', '334', '338', '340', '0', '0', '1. 使用时长：&lt;br/&gt;', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('278', 'AA20799667', '磨砂材质 凯美 ', 'Upload/goods/2016-03/TB1lF.rLVXXXXaOXFXXI0Cg7VXX_120x120.jpg', 'Upload/goods/2016-03/TB1lF.rLVXXXXaOXFXXI0Cg7VXX_120x120.jpg', '0', '1', '40.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '1. 使用时长：&lt;br/&gt;', '0', '0', '0', '0', '1', null, '0', 'ddddd', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826599', 'xxxxx', '150', '1'), ('274', '6C4769BB48', '白送礼品', 'Upload/goods/2016-02/56c476c485524.jpg', 'Upload/goods/2016-02/56c476c485524_thumb.jpg', '0', '34', '0.0', '0.0', '1', '0', '0', '0', '0', '件', '', '1', '1', '1', '1', '1', '0', '0', null, '56', '85', '97', '0', '0', '1. 使用时长：&lt;br/&gt;\n						2. 新旧程度描述：&lt;br/&gt;\n						3. 存在的问题：&lt;br/&gt;\n						4. 到手时间/有效期/适用条件：&lt;br/&gt;', '0', '0', '0', '0', '1', null, '0', 'zz', '1', null, '2016-02-17 21:34:22', '0', '0', '13920826591', '先生', '40', '0'), ('279', 'AA20799667', 'iphone6 4.7寸手机壳 磨砂材质 凯美瑞定制版', 'Upload/goods/2016-03/56f163436c3d2.jpg', 'Upload/goods/2016-03/56f163436c3d2_thumb.jpg', null, '1', '40.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '1. 使用时长：&lt;br/&gt;', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('280', 'AA20799667', '出售超薄NEC N-04c智能机', 'Upload/goods/2016-03/TB1uY1KLXXXXXXGXpXXFDfR9VXX_120x120.jpg', 'Upload/goods/2016-03/TB1uY1KLXXXXXXGXpXXFDfR9VXX_120x120.jpg', '0', '1', '100.0', '100.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '朋友 出国带回来的小日本的NEC号称全球最薄智能机!自己用了1年没有网络锁插卡就有信号只是让我不小心回...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('281', 'AA20799667', '卖iPhone5s国行土豪金', 'Upload/goods/2016-03/TB1CRpFMXXXXXXGXFXX5z_KFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1CRpFMXXXXXXGXFXX5z_KFXXX_120x120.jpg', '0', '1', '1350.0', '1350.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '国行16G，A1528。自用一手机,因换6搁置了。手机平时很爱惜都用保护套使用,有九五成新。原装配件都在,发票...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('282', 'AA20799667', '米2正版转让', 'Upload/goods/2016-03/TB1h2iuLXXXXXcRaXXXxU2F.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1h2iuLXXXXXcRaXXXxU2F.pXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '米2，16g用了两年，转让，一切正常，发票都在，给钱就卖', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('283', 'AA20799667', '三星 gear fit R350 购于京东', 'Upload/goods/2016-03/TB1YLBhMXXXXXXpaXXXGoLcFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1YLBhMXXXXXXpaXXXGoLcFFXX_120x120.jpg', '0', '1', '500.0', '500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '都是朋友购于京东送的。请在购买前自行做好功课哦，因为是个人的闲置，所以不接受无理由的退换货。一共两...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('284', 'AA20799667', '#大杂烩#', 'Upload/goods/2016-03/TB1gZ_wLVXXXXXYaXXXt9N68pXX_120x120.jpg', 'Upload/goods/2016-03/TB1gZ_wLVXXXXXYaXXXt9N68pXX_120x120.jpg', '0', '1', '6000.0', '6000.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '苹果6s128鸡有人要没有一元夺宝中的全新没拆的中了两个出一个', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('285', 'AA20799667', '小米手环，全新未拆封', 'Upload/goods/2016-03/TB1Ngc3LFXXXXc4XVXXspLU.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1Ngc3LFXXXXc4XVXXspLU.FXX_120x120.jpg', '0', '1', '56.0', '56.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '做活动赠送的小米手环，全新。还有一个乐乘盒子，需要的一起出', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('286', 'AA20799667', '收一个没有屏幕的4s无ld的', 'Upload/goods/2016-03/TB1Kl3GLVXXXXbLaXXXh9mgFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1Kl3GLVXXXXbLaXXXh9mgFXXX_120x120.jpg', '0', '1', '222.0', '222.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('287', 'AA20799667', '[转卖]vivoxplay5手机壳 vivoxplay5手机', 'Upload/goods/2016-03/TB1WDpLMXXXXXcDXXXX8nPJFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1WDpLMXXXXXcDXXXX8nPJFXXX_120x120.jpg', '0', '1', '22.0', '22.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('288', 'AA20799667', '又是资格', 'Upload/goods/2016-03/TB1pPNOMXXXXXaLXXXXrzLJFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1pPNOMXXXXXaLXXXXrzLJFXXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '红米购买资格', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('289', 'AA20799667', 'HTC 328D 329D 327主板 触摸屏 显示屏  主排线 电池后盖机壳', 'Upload/goods/2016-03/TB1s0iBLFXXXXXhaXXXn.n6.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1s0iBLFXXXXXhaXXXn.n6.XXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '329d328d主板完好无修无进水显示屏完好触摸屏单独出售，全新触摸屏30元，主板无修无进水完好主板80元，其...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('290', 'AA20799667', '低价转三星原装充电宝9000毫安', 'Upload/goods/2016-03/TB1GAUTKVXXXXaXapXXfS3C9VXX_120x120.jpg', 'Upload/goods/2016-03/TB1GAUTKVXXXXaXapXXfS3C9VXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '原使用三星手机时购入。购入时将近400。现闲置，转让给有徐之人。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('291', 'AA20799667', '诺基亚手机配套黑色原装大头，白色小头耳机，保证绝对原', 'Upload/goods/2016-03/TB1z7XMLpXXXXb0XpXX_n0a.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1z7XMLpXXXXb0XpXX_n0a.FXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '黑色成色很新很新，不爱听音乐一直收藏。12元一个不包邮，二手商品不接受任何理由的退换货要求，拍前请咨询...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('292', 'AA20799667', 'Meizu/魅族 MX4移动版 4G 8核手机 银翼白16G', 'Upload/goods/2016-03/TB1faFmMXXXXXcBXFXXCw1E9FXX_120x120.jpg', 'Upload/goods/2016-03/TB1faFmMXXXXXcBXFXXCw1E9FXX_120x120.jpg', '0', '1', '600.0', '600.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '感兴趣的话给我留言吧！flyme5系统流畅，很多ios没有的功能，比如，语音拍照，壁纸切换智能，闹钟跳过法定假...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '2'), ('293', 'AA20799667', '华为p8max手机的原装耳机 充电器  用不到转让', 'Upload/goods/2016-03/TB1bDZ8LVXXXXXPaXXX46aq.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1bDZ8LVXXXXXPaXXX46aq.VXX_120x120.jpg', '0', '1', '45.0', '45.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '刚刚换了华为p8max耳机充电器数据线家里之前手机剩的有一堆。这套新的转让。耳机45元，充电器5v2a的...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('294', 'AA20799667', '【转卖】狐狸獭兔毛 note3手机壳', 'Upload/goods/2016-03/TB1xrBPMXXXXXaAXXXX_YvJFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1xrBPMXXXXXaAXXXX_YvJFXXX_120x120.jpg', '0', '1', '40.0', '40.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '基本属于全新，买来就没用过，满100包邮', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('295', 'AA20799667', '小米2原装可以小刀', 'Upload/goods/2016-03/TB1rLELLVXXXXa4XVXXr8eM9pXX_120x120.jpg', 'Upload/goods/2016-03/TB1rLELLVXXXXa4XVXXr8eM9pXX_120x120.jpg', '0', '1', '333.0', '333.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('296', 'AA20799667', '红米xxxxx', 'Upload/goods/2016-03/TB1vb8sMXXXXXbxaXXXunrIFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1vb8sMXXXXXbxaXXXunrIFXXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('297', 'AA20799667', 'huawei华为4C钢化膜 @+软套', 'Upload/goods/2016-03/TB10Ug3LVXXXXb_XpXXT.c77pXX_120x120.jpg', 'Upload/goods/2016-03/TB10Ug3LVXXXXb_XpXXT.c77pXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '华为4c钢化膜加软套。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('298', 'AA20799667', 'Z1I R800I索尼PSP游戏掌机', 'Upload/goods/2016-03/TB1SA0AMXXXXXafXpXXEmnO_VXX_120x120.jpg', 'Upload/goods/2016-03/TB1SA0AMXXXXXafXpXXEmnO_VXX_120x120.jpg', '0', '1', '170.0', '170.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '电信写号机，功能正常，成色如图，为避免交易纠纷定义为垃圾，单机无配件，闲置出售，售出不退。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '2'), ('299', 'AA20799667', '【全新】ipad mini4保护壳+钢化膜', 'Upload/goods/2016-03/TB1ydPULpXXXXcBXpXXOWch9VXX_120x120.jpg', 'Upload/goods/2016-03/TB1ydPULpXXXXcBXpXXOWch9VXX_120x120.jpg', '0', '1', '120.0', '120.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '全新未使用过，120包邮出。个人闲置不退不换。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('300', 'AA20799667', '法拉利跑车充电宝移动电源', 'Upload/goods/2016-03/TB1lnuqLpXXXXb1XVXX7cVwFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1lnuqLpXXXXb1XVXX7cVwFFXX_120x120.jpg', '0', '1', '55.0', '55.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '340', '0', '0', '爱车一族的最佳选择，超酷炫，超逼真，配件齐全，多色可选～', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('301', 'AA20799667', '闲置华为机顶盒', 'Upload/goods/2016-03/TB18HpCMXXXXXb2XFXXhzmbFpXX_120x120.jpg', 'Upload/goods/2016-03/TB18HpCMXXXXXb2XFXXhzmbFpXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '全新包装一次都没有用过，转给需要的朋友150包邮', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('302', 'AA20799667', 'ASPIRE3830TG', 'Upload/goods/2016-03/TB1zlgbLVXXXXctXpXXxn5l.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1zlgbLVXXXXctXpXXxn5l.XXX_120x120.jpg', '0', '1', '1500.0', '1500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '11年购买，现在使用没任何问题，因为更换mac了，所以出掉。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('303', 'AA20799667', '[转卖]TP-LINK TL-WN821N 300M USB', 'Upload/goods/2016-03/TB1ve0xMXXXXXaQXVXXmWKaFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1ve0xMXXXXXaQXVXXmWKaFpXX_120x120.jpg', '0', '1', '55.0', '55.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('304', 'AA20799667', '迪兰恒进R9 290性能与R9 390-GTX970一样要的来', 'Upload/goods/2016-03/TB1IhXrMXXXXXbQaXXXsx8.FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1IhXrMXXXXXbQaXXXsx8.FpXX_120x120.jpg', '0', '1', '1600.0', '1600.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('305', 'AA20799667', '全新白色Asus/华硕 m81CWIFI 32GB平板电脑8寸Intel四核WIN8 2G', 'Upload/goods/2016-03/TB1TAJiMXXXXXcKXXXXeD_K8VXX_120x120.jpg', 'Upload/goods/2016-03/TB1TAJiMXXXXXcKXXXXeD_K8VXX_120x120.jpg', '0', '1', '999.0', '999.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '全新，全新，全新，产品只开机一次都未激活，对自己来说屏幕小了所以才转让，windows系统，华硕真品。已配置...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('306', 'AA20799667', '苹果 hdmi 转dvi 线 （dvi为母头）', 'Upload/goods/2016-03/TB1UWaTLVXXXXXSXXXXzzUc.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1UWaTLVXXXXXSXXXXzzUc.XXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '这个线是长线版本的大概30公分长度，苹果原装线，成色见图。我是从别人那里买的，结果没多久买来显示器换...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('307', 'AA20799667', '联想Z500 I3 3110M 4G 60G固态硬盘 GT740M', 'Upload/goods/2016-03/TB1JKVxMXXXXXaNXVXXsx8.FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1JKVxMXXXXXaNXVXXsx8.FpXX_120x120.jpg', '0', '1', '1550.0', '1550.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '没怎么用成色爆新看电池损耗就知道已经升级固态硬盘LOLCF这类游戏随便玩无压力', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('308', 'AA20799667', '惠普鼠标15元', 'Upload/goods/2016-03/TB1H0qwHpXXXXaTXXXXxA329VXX_120x120.jpg', 'Upload/goods/2016-03/TB1H0qwHpXXXXaTXXXXxA329VXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '惠普鼠标15元转让', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('309', 'AA20799667', 'NETGEAR 美国网件 WPN824N 无线路由器 华为 MT660a 宽带猫', 'Upload/goods/2016-03/TB1MIJFMXXXXXXjXFXXOJ0.FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1MIJFMXXXXXXjXFXXOJ0.FpXX_120x120.jpg', '0', '1', '120.0', '120.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '～～白菜价格两件总共125元，美国网件内置7天线的wpn824n无线路由和华为拨号猫，家里原12m升级光纤，换了华...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('310', 'AA20799667', '微星gt240 d5暴雪显卡', 'Upload/goods/2016-03/TB1_a8CJFXXXXadXpXXIL8TFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1_a8CJFXXXXadXpXXIL8TFXXX_120x120.jpg', '0', '1', '45.0', '45.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '坏显卡，开机风扇狂转，不显示！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('311', 'AA20799667', '办公家具 办公工位', 'Upload/goods/2016-03/TB1h126LVXXXXbRaXXXuFHh_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1h126LVXXXXbRaXXXuFHh_FXX_120x120.jpg', '0', '1', '200.0', '200.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '有哪位亲需要做这种工位哒嘛规格是120*60哒有2*2连体的有3*2连体的去年7月才购入哒喔都是标准大工位...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('312', 'AA20799667', 'Thinkpad  笔记本 原装DDR2代 单条1G内存', 'Upload/goods/2016-03/TB1.O.WKVXXXXXGXpXX6JYN8FXX_120x120.jpg', 'Upload/goods/2016-03/TB1.O.WKVXXXXXGXpXX6JYN8FXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '升级换下来的，两条同样型号规格，保证原装好用，一起出，处理给有需要的人。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('313', 'AA20799667', '电脑包', 'Upload/goods/2016-03/TB1Xv6MLVXXXXb_XpXXPb318VXX_120x120.jpg', 'Upload/goods/2016-03/TB1Xv6MLVXXXXb_XpXXPb318VXX_120x120.jpg', '0', '1', '45.0', '45.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '九成新，拍摄光线不好，感兴趣的给我留言吧。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('314', 'AA20799667', '先马额定450w电源 非航嘉长城tt酷冷海盗船', 'Upload/goods/2016-03/TB1cc0rMXXXXXcfaXXXxVt_FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1cc0rMXXXXXcfaXXXxVt_FpXX_120x120.jpg', '0', '1', '120.0', '120.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '主动pfc，全蛇皮，铭牌有点花，外壳却挺新的，内部干净，风扇清灰加油，声音静。做工，比现在的刺客要好。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('315', 'AA20799667', '新到货金丝楠木茶盘，价格美丽', 'Upload/goods/2016-03/TB1WCttMXXXXXbaaXXXxVt_FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1WCttMXXXXXbaaXXXxVt_FpXX_120x120.jpg', '0', '1', '800.0', '800.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '晚上又新到一批货，缅甸金丝楠木茶盘，尺寸99到80啊！欢迎询价。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('316', 'AA20799667', '苹果平板尔2  原装蓝牙键盘', 'Upload/goods/2016-03/TB1EHnTLVXXXXXXXVXXnGMvFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1EHnTLVXXXXXXXVXXnGMvFpXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '买回来100%全新，没用过，送一个笔，闲置低价处理', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('317', 'AA20799667', '[转卖]*适用 联想 A360E触摸屏 显示屏 A360E外', 'Upload/goods/2016-03/TB1K1doMXXXXXabapXXUll9FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1K1doMXXXXXabapXXUll9FpXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('318', 'AA20799667', '台式电脑配置在图片里，一直自己使用！', 'Upload/goods/2016-03/TB1ltJ0JpXXXXb4XpXXmR9aFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1ltJ0JpXXXXb4XpXXmR9aFFXX_120x120.jpg', '0', '1', '1000.0', '1000.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '334', '338', '339', '0', '0', '低价卖了！一直很棒！最好北京交易！价格可以商量！外地在商量！货真价实！不要显示器600！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('319', 'AA20799667', '#生活大件#开米智能体温计', 'Upload/goods/2016-03/TB13bSSKVXXXXX0apXXaEtl.FXX_120x120.jpg', 'Upload/goods/2016-03/TB13bSSKVXXXXX0apXXaEtl.FXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('320', 'AA20799667', '杯子，全新真空杯，包邮，有收藏纪念价值得清仓处理代购新品', 'Upload/goods/2016-03/TB1GPk8LVXXXXbjaXXXomMX.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1GPk8LVXXXXbjaXXXomMX.XXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('321', 'AA20799667', '谜尚line合作款气垫（保湿款#21）', 'Upload/goods/2016-03/TB1cZ4tMXXXXXa4aXXXmSO8FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1cZ4tMXXXXXa4aXXXmSO8FpXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '韩国代购人肉带回，出两个替换装，一个30不包邮，2个60包邮。同城自取可适当便宜一点～～壳子不出！不交换！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('322', 'AA20799667', '#大杂烩#膳魔师保冷壶', 'Upload/goods/2016-03/TB1emaDLpXXXXbDXFXXKKRU_pXX_120x120.jpg', 'Upload/goods/2016-03/TB1emaDLpXXXXbDXFXXKKRU_pXX_120x120.jpg', '0', '1', '58.0', '58.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '全新，膳魔师保冷壶，家用方便。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('323', 'AA20799667', '泉立方洗衣片', 'Upload/goods/2016-03/TB1GXJyMXXXXXcRXFXXpqu8FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1GXJyMXXXXXcRXFXXpqu8FpXX_120x120.jpg', '0', '1', '55.0', '55.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '泉立方洗衣片萃取天然植物精华，温和无刺激，清洁更彻底', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('324', 'AA20799667', '景德镇官窑购买的，瓷质很好，清仓包邮100元', 'Upload/goods/2016-03/TB1k9tXLXXXXXa4XFXX8Q457FXX_120x120.jpg', 'Upload/goods/2016-03/TB1k9tXLXXXXXa4XFXX8Q457FXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '品质很好，作为礼品买多了，现在要搬家就低价处理啦', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('325', 'AA20799667', '印象0.2升不锈钢真空杯', 'Upload/goods/2016-03/TB1LfwdLVXXXXaUXpXXLL6B.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1LfwdLVXXXXaUXpXXLL6B.XXX_120x120.jpg', '0', '1', '278.0', '278.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '全新的，粉色。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('326', 'AA20799667', '全新正品ABC超吸棉柔护垫', 'Upload/goods/2016-03/TB1F.toMXXXXXcEXpXX4cJq7FXX_120x120.jpg', 'Upload/goods/2016-03/TB1F.toMXXXXXcEXpXX4cJq7FXX_120x120.jpg', '0', '1', '8.0', '8.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', 'ABC天猫旗舰店入的，共有九包。可单出，一包8元。全部打包带走72元包邮，再送网面夜用3片装一包。不议价！日...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('327', 'AA20799667', '三格白瓷多肉花盆', 'Upload/goods/2016-03/TB1a9IBLVXXXXaPXFXX6ey8FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1a9IBLVXXXXaPXFXX6ey8FpXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '全新，没几套了，所见即所得，低价处理。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('328', 'AA20799667', '【转卖】沪仁堂脚跟龟裂后跟干裂手足皲裂膏防裂膏', 'Upload/goods/2016-03/TB14Lp.LVXXXXa3XpXX5m8u.VXX_120x120.jpg', 'Upload/goods/2016-03/TB14Lp.LVXXXXa3XpXX5m8u.VXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '15元转卖', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('329', 'AA20799667', '【转卖】芭格美生物酶奶瓶清洗剂婴儿果蔬清洁剂', 'Upload/goods/2016-03/TB1XlEtLFXXXXadXpXXObG1FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1XlEtLFXXXXadXpXXObG1FpXX_120x120.jpg', '0', '1', '40.0', '40.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '335', '335', '0', '0', '用过一次挺好用的放心', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('330', 'AA20799667', '28包邮记忆棉U型枕', 'Upload/goods/2016-03/TB1sHOKLVXXXXXvXpXXcDkZ.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1sHOKLVXXXXXvXpXXcDkZ.XXX_120x120.jpg', '0', '1', '28.0', '28.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '本来是上班坐车用的，后来不用坐车了。。。放着也是放着，识货的来', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('331', 'AA20799667', '2016最新长绒棉6件套', 'Upload/goods/2016-03/TB1Ii53LFXXXXaIXVXX8tNz.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1Ii53LFXXXXaIXVXX8tNz.FXX_120x120.jpg', '0', '1', '359.0', '359.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '以最柔软、最细腻著称的60长绒棉（百分之百全棉）全新来袭～～充满春天的气息，带给你全新的生活感受～这，...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('332', 'AA20799667', '天丝四件套', 'Upload/goods/2016-03/TB1FMw7LFXXXXbJXpXXq0Zm.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1FMw7LFXXXXbJXpXXq0Zm.FXX_120x120.jpg', '0', '1', '299.0', '299.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '实拍．【玫瑰有红、黄、白、蓝和粉红色的，这些颜色我都喜欢。因为红玫瑰是代表爱恋;黄玫瑰代表高贵;白玫...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('333', 'AA20799667', '【转卖】加厚短毛绒珊瑚绒秋冬保暖四件套法兰绒婚庆大红', 'Upload/goods/2016-03/TB10Vh7JFXXXXc6XpXXxnlq.pXX_120x120.jpg', 'Upload/goods/2016-03/TB10Vh7JFXXXXc6XpXXxnlq.pXX_120x120.jpg', '0', '1', '110.0', '110.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('334', 'AA20799667', '床上用品四件套', 'Upload/goods/2016-03/TB1aOO1KFXXXXaPXpXXhdkM.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1aOO1KFXXXXaPXpXXhdkM.pXX_120x120.jpg', '0', '1', '500.0', '500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '全新的结婚朋友送的，双人，纯棉床单一件45，没用放家了，占地方，便宜处理，两套都要送称，有意者联系，不...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('335', 'AA20799667', '[转卖]南极人枕头枕芯 舒适颈椎枕学生单人枕五星级酒店枕一对', 'Upload/goods/2016-03/TB1JDlHMXXXXXarXpXXLD11FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1JDlHMXXXXXarXpXXLD11FpXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('336', 'AA20799667', '出口日本防水高档精美印花提花桌布', 'Upload/goods/2016-03/TB12K3oLVXXXXb4XVXX5M81FFXX_120x120.jpg', 'Upload/goods/2016-03/TB12K3oLVXXXXb4XVXX5M81FFXX_120x120.jpg', '0', '1', '43.0', '43.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '尺寸140x140cm43140×180cm53140×230cm63都为江浙沪包邮价面料为高档...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('337', 'AA20799667', '凯盛家纺专柜100%桑蚕丝被（长丝）现货', 'Upload/goods/2016-03/TB1rC6CLVXXXXcNXpXX66nT.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1rC6CLVXXXXcNXpXX66nT.XXX_120x120.jpg', '0', '1', '950.0', '950.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '现货，就两条了！专柜正品。工厂零利润活动。2m*2.3m:1500g桑蚕丝（长丝）填充950米江浙沪包邮！开口很...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('338', 'AA20799667', '上等鹅绒被订做', 'Upload/goods/2016-03/TB1mOCWLFXXXXaGXFXX8ase8pXX_120x120.jpg', 'Upload/goods/2016-03/TB1mOCWLFXXXXaGXFXX8ase8pXX_120x120.jpg', '0', '1', '1800.0', '1800.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '上等鹅绒被，专业定做，现做现卖，2米2乘2米4，1.8公斤重哦，详细可私信', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('339', 'AA20799667', '全棉斜纹印花四件套特价处理了', 'Upload/goods/2016-03/TB1Dud6LVXXXXXVXXXXcfcM_VXX_120x120.jpg', 'Upload/goods/2016-03/TB1Dud6LVXXXXXVXXXXcfcM_VXX_120x120.jpg', '0', '1', '149.0', '149.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '全棉斜纹印花四件套特价处理了，28个花色面料:128*68全棉斜纹印花四件套，尺寸:标准被套200*230cm，床...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('340', 'AA20799667', '[转卖]三角靠垫 榻榻米靠枕床靠垫床头软包 床上大靠背无床头', 'Upload/goods/2016-03/TB1A7UNLVXXXXbQaXXXDsxN9XXX_120x120.jpg', 'Upload/goods/2016-03/TB1A7UNLVXXXXbQaXXXDsxN9XXX_120x120.jpg', '0', '1', '155.0', '155.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('341', 'AA20799667', '[转卖]倍喜多浴室拖鞋防滑韩国男女家居家拖鞋塑料镂空漏水晶凉', 'Upload/goods/2016-03/TB1NRpDMXXXXXa6XFXXxDaZFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1NRpDMXXXXXa6XFXXxDaZFpXX_120x120.jpg', '0', '1', '8.0', '8.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('342', 'AA20799667', '珊瑚绒床上学生宿舍床单三件套', 'Upload/goods/2016-03/TB1KMtpMXXXXXXWapXXbbi0FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1KMtpMXXXXXXWapXXbbi0FpXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '全新，但是吊牌拆了，料子很舒服，宿舍经常开空调觉得太热用不到，款式也很好看不然也不会买。低价出售！！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('343', 'AA20799667', '大版印花四件套', 'Upload/goods/2016-03/TB1uQ7uLFXXXXb3XpXXUXzfFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1uQ7uLFXXXXb3XpXXUXzfFFXX_120x120.jpg', '0', '1', '190.0', '190.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '隆重推出【2016春夏款】大版印花（潮萌系列）惊爆登场面料材质：AB版全棉活性13070产品尺寸：被套200*2...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('344', 'AA20799667', '宜家 高枕 原价549 几乎全新', 'Upload/goods/2016-03/TB1GDFuLVXXXXclXFXXsBrz8pXX_120x120.jpg', 'Upload/goods/2016-03/TB1GDFuLVXXXXclXFXXsBrz8pXX_120x120.jpg', '0', '1', '399.0', '399.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '只打开试用过一下，几乎全新，有意可拍，不退换。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('345', 'AA20799667', '2016新春款13372面料', 'Upload/goods/2016-03/TB19v_kLFXXXXaIXpXXoEEs.FXX_120x120.jpg', 'Upload/goods/2016-03/TB19v_kLFXXXXaIXpXXoEEs.FXX_120x120.jpg', '0', '1', '250.0', '250.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '【潮牌】！2016新春新款面料13372活性面料！给大家带来更多的精彩[害羞][害羞][害羞]想必稍微对韩国文...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('346', 'AA20799667', '床品奢侈品罗卡芙床上四件套，床上用品中的爱马仕，非罗莱。', 'Upload/goods/2016-03/TB1P9c0LVXXXXcZXXXXaCjo9XXX_120x120.jpg', 'Upload/goods/2016-03/TB1P9c0LVXXXXcZXXXXaCjo9XXX_120x120.jpg', '0', '1', '4121.6', '4121.6', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '全新床上用品四件套，尺寸2.4*2.4，适用于1米8的床，皇家花纹，彰显贵族气息，适合欧式美式中式装修风格...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('347', 'AA20799667', '活性全棉磨毛植绒刺绣', 'Upload/goods/2016-03/TB1uWHELFXXXXboXpXXie_O_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1uWHELFXXXXboXpXXie_O_FXX_120x120.jpg', '0', '1', '380.0', '380.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '活性全棉磨毛植绒刺绣全新面料21支全棉13360；标准：200*230cm，加大：220*240cm价格：380/40...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('348', 'AA20799667', '满四百即送灯塔，黑色银色两款，单买50包邮。', 'Upload/goods/2016-03/TB1Vtq1LFXXXXboXpXXSaH5.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1Vtq1LFXXXXboXpXXSaH5.pXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('349', 'AA20799667', '全棉活性四件套', 'Upload/goods/2016-03/TB1iGR.LVXXXXaGXpXXyd5w_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1iGR.LVXXXXaGXpXXyd5w_FXX_120x120.jpg', '0', '1', '259.0', '259.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '54', '356', '356', '0', '0', '【2016年新款专版花型】。小号229元[闪电]标准259元[闪电]加大269元。全棉活性套件...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('350', 'AA20799667', '全新鲁宾逊漂流记书籍', 'Upload/goods/2016-03/TB1ErI5KVXXXXbQaXXX6404.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1ErI5KVXXXXbQaXXX6404.FXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '没拆封，完整版，需要带走～', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('351', 'AA20799667', '[转卖]梦的解析(全译本)（奥）弗洛伊德 包邮 正版 书籍', 'Upload/goods/2016-03/TB1gh0SMXXXXXXaXXXXL7LaFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1gh0SMXXXXXXaXXXXL7LaFpXX_120x120.jpg', '0', '1', '10.0', '10.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('352', 'AA20799667', '正版书籍 千秋望断家国梦 芈月传 乔小主/著', 'Upload/goods/2016-03/TB1a_JvMXXXXXbFXVXXg354FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1a_JvMXXXXXbFXVXXg354FpXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('353', 'AA20799667', '我的第一本科学漫画书绝境生存系列书籍全套32册深海大作战无人岛', 'Upload/goods/2016-03/TB1umUOLVXXXXXYXFXXoSjD.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1umUOLVXXXXXYXFXXoSjD.VXX_120x120.jpg', '0', '1', '248.0', '248.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '基本信息出版时间：以实物为准书丛名:我的第一本科学漫画书1-32册平装:全32册定价：800.00元目录...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('354', 'AA20799667', '正版图书 中国百年史 连环画） 河北少年儿童出版社', 'Upload/goods/2016-03/TB1QB5JLVXXXXbYXXXXcKMe.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1QB5JLVXXXXbYXXXXcKMe.FXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '正版图书中国百年史连环画）河北少年儿童出版社', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('355', 'AA20799667', '秘密花园各种绘图书奇幻梦境', 'Upload/goods/2016-03/TB1tblrLpXXXXb1XXXXXN_Y8FXX_120x120.jpg', 'Upload/goods/2016-03/TB1tblrLpXXXXb1XXXXXN_Y8FXX_120x120.jpg', '0', '1', '25.0', '25.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '秘密花园散页版，涂了一页，20出。其余四本全新，25出。不包邮不交换。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('356', 'AA20799667', '卖旧书 一些名著 必读书籍 需要的找我喔 价格可议 邮费自理', 'Upload/goods/2016-03/TB1pNy0JXXXXXa9apXXbvTm_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1pNy0JXXXXXa9apXXbvTm_FXX_120x120.jpg', '0', '1', '100000000.0', '100000000.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '价格可议具体价格按书籍的价格来定', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('357', 'AA20799667', '毛泽东颂歌精选老书中华大家唱92年出版老读物书籍红书12元包邮', 'Upload/goods/2016-03/TB13p0HMXXXXXcuXpXXBWByFpXX_120x120.jpg', 'Upload/goods/2016-03/TB13p0HMXXXXXcuXpXXBWByFpXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '92年老书，四川人民出版社！特价出', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('358', 'AA20799667', '【转卖】文学图书/最美星光守护你/提拉诺/湖南人民出版社', 'Upload/goods/2016-03/TB1P5caLpXXXXcgXVXXE9ix9FXX_120x120.jpg', 'Upload/goods/2016-03/TB1P5caLpXXXXcgXVXXE9ix9FXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '东西很好看哦', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('359', 'AA20799667', '#闲置书籍#清代五大重臣成就一生的方略，原价30元，六成新', 'Upload/goods/2016-03/TB11kpCMXXXXXb2XFXX7xxvFpXX_120x120.jpg', 'Upload/goods/2016-03/TB11kpCMXXXXXb2XFXX7xxvFpXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('360', 'AA20799667', '[转卖]【正版书籍】 别跟自己过不去 心灵励志畅销书籍心灵鸡', 'Upload/goods/2016-03/TB13xSOLFXXXXcXXVXXxbyz.FXX_120x120.jpg', 'Upload/goods/2016-03/TB13xSOLFXXXXcXXVXXxbyz.FXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '全场包邮便宜卖。不退不换！品质保证！喜欢直拍！闪电发货，默认天天快递，不到请留言告知～', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('361', 'AA20799667', '儿童图书正版艾特熊和赛娜鼠(共21册)全新未拆封', 'Upload/goods/2016-03/TB19iznLVXXXXc_XXXXixI3_VXX_120x120.jpg', 'Upload/goods/2016-03/TB19iznLVXXXXc_XXXXixI3_VXX_120x120.jpg', '0', '1', '95.0', '95.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '艾特熊和赛娜鼠(共21册）作者：(比利时)嘉贝丽·文生著，梅思繁译当当网买的，还没拆封，识...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('362', 'AA20799667', '各式书籍甩卖 基本都是九成新', 'Upload/goods/2016-03/TB1AhajLpXXXXXfXFXXDVpXFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1AhajLpXXXXXfXFXXDVpXFXXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '15元:去你家玩好吗七夜雪人生若只如初见浮生物语2悟空传25元:千王2本不单卖赠两张海报。30元:乱...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('363', 'AA20799667', '各式书籍甩卖 基本都是9成新', 'Upload/goods/2016-03/TB10Vx8LpXXXXckXVXXv5kf.VXX_120x120.jpg', 'Upload/goods/2016-03/TB10Vx8LpXXXXckXVXXv5kf.VXX_120x120.jpg', '0', '1', '12.0', '12.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '“男朋友”5元一本。12元的有：山有木兮墓有龙寒武再临1、2调教成神爱过当时只道是寻常...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('364', 'AA20799667', '正版书籍 高效能人士的七个习惯(25周年纪念版)', 'Upload/goods/2016-03/TB1JNFQMXXXXXXoXXXXbJB_FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1JNFQMXXXXXXoXXXXbJB_FpXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('365', 'AA20799667', '[转卖]象王泪 沈石溪  儿童读物  新华书店正版畅销图书籍', 'Upload/goods/2016-03/TB1UxRDMXXXXXahXFXXEcHiFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1UxRDMXXXXXahXFXXEcHiFXXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('366', 'AA20799667', '包邮 各类书籍 言情', 'Upload/goods/2016-03/TB1OmhtMXXXXXaPaXXX9mS6FXXX_120x120.jpg', 'Upload/goods/2016-03/TB1OmhtMXXXXXaPaXXX9mS6FXXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '搬家清书看中留言一本一价自购正版不退不换欢迎同好', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('367', 'AA20799667', '《种子在雪下的憧憬》好书书籍', 'Upload/goods/2016-03/TB1N00TKFXXXXXuXpXX2oxCFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1N00TKFXXXXXuXpXX2oxCFpXX_120x120.jpg', '0', '1', '15.0', '15.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '《种子在雪下的憧憬》', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('368', 'AA20799667', '《励志小说》第一籍包邮好书书籍', 'Upload/goods/2016-03/TB1UxhxKFXXXXaEXVXXphF0FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1UxhxKFXXXXaEXVXXphF0FpXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '包邮哦，《谁拐走了外公》《请为我骄傲》《秘密楼阁》《西奥，加油！》《爱的手势》《早安，丽娜》', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('369', 'AA20799667', '《夏洛的网》好书书籍', 'Upload/goods/2016-03/TB14hV.KFXXXXcrXpXXfTQJFFXX_120x120.jpg', 'Upload/goods/2016-03/TB14hV.KFXXXXcrXpXXfTQJFFXX_120x120.jpg', '0', '1', '13.0', '13.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '108', '108', '0', '0', '便宜卖啦，夏洛的网，9新，未写任何东西', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('370', 'AA20799667', '【转卖】Kanon乐器全沙比利卡农民谣吉他41寸木吉它电箱琴吉他', 'Upload/goods/2016-03/TB1GeyOLVXXXXbzXXXXWh9ZFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1GeyOLVXXXXbzXXXXWh9ZFFXX_120x120.jpg', '0', '1', '800.0', '800.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('371', 'AA20799667', '[转卖]竹笛专业精制乐器演奏紫竹横笛子正雅双节白铜儿童成人初', 'Upload/goods/2016-03/TB1qQhRMXXXXXXvXXXX_fGwFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1qQhRMXXXXXXvXXXX_fGwFpXX_120x120.jpg', '0', '1', '67.0', '67.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1');
INSERT INTO `rmt_goods` VALUES ('372', 'AA20799667', '[转卖]乐器吉它初学者入门民谣吉他41寸男女学生云杉木', 'Upload/goods/2016-03/TB1Q78gMXXXXXcVXpXXxLjXFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1Q78gMXXXXXcVXpXXxLjXFFXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '买来一个多月，奈何三分钟热度，实在学不来这东西，诚心转给有缘人，这款吉他作为入门新手琴真的不错，老师...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('373', 'AA20799667', '[转卖]乐器尤克里里21寸彩色初学者夏威夷四弦琴小吉他uku', 'Upload/goods/2016-03/TB1biMZLVXXXXXJXVXXaNYO9VXX_120x120.jpg', 'Upload/goods/2016-03/TB1biMZLVXXXXXJXVXXaNYO9VXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！23寸原木色同城可自取地铁北宫门', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('374', 'AA20799667', '乐器 号', 'Upload/goods/2016-03/TB1.SGmKFXXXXc9XpXX3luB.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1.SGmKFXXXXc9XpXX3luB.pXX_120x120.jpg', '0', '1', '480.0', '480.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '去年9月打算参加婚乐队买的学了几天感觉自己不是学这个的料就闲置了当时花900在实体店买的9成新诚心出...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('375', 'AA20799667', '老乐器，老铜响。一对完整。', 'Upload/goods/2016-03/TB1IP6ULVXXXXaZXXXX4g0.9pXX_120x120.jpg', 'Upload/goods/2016-03/TB1IP6ULVXXXXaZXXXX4g0.9pXX_120x120.jpg', '0', '1', '180.0', '180.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '厚重，老包浆，重2.3斤以上，尺寸18公分左右，参考打火机。具体如图。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('376', 'AA20799667', '[转卖]新年礼盒版升级 民族乐器/上海品牌吴越二胡/送松香弦', 'Upload/goods/2016-03/TB1EFRwMXXXXXcAXVXXxe5MFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1EFRwMXXXXXcAXVXXxe5MFXXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('377', 'AA20799667', '[转卖]迪海 笛子乐器/初学学生笛/专业苦竹横笛/黑白色单白', 'Upload/goods/2016-03/TB1YESkLVXXXXXraXXXBPL28FXX_120x120.jpg', 'Upload/goods/2016-03/TB1YESkLVXXXXXraXXXBPL28FXX_120x120.jpg', '0', '1', '49.0', '49.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '全新的哟，感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('378', 'AA20799667', '[转卖]葫芦丝乐器专卖初学专业演奏景泰蓝全红木管降B调C调G', 'Upload/goods/2016-03/TB16ZBRMXXXXXXyXXXXcu1iFXXX_120x120.jpg', 'Upload/goods/2016-03/TB16ZBRMXXXXXXyXXXXcu1iFXXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('379', 'AA20799667', '[转卖]正品乐器尤克里里ukulele单板四弦小吉他23寸夏', 'Upload/goods/2016-03/TB1UvNGMXXXXXcQXpXXKAKwFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1UvNGMXXXXXcQXpXXKAKwFXXX_120x120.jpg', '0', '1', '200.0', '200.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '音质很好。没弹几次，两种颜色可选感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('380', 'AA20799667', '【转卖】正品乐器 初学入门38寸民谣吉他新手练习', 'Upload/goods/2016-03/TB1zRA3LVXXXXcnXXXXU_rc.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1zRA3LVXXXXcnXXXXU_rc.VXX_120x120.jpg', '0', '1', '99.0', '99.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '完全没弹过买来好玩的想学的请领走它', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('381', 'AA20799667', '[转卖]酷臣乐器 正品玛蒂尔达Matilda38寸练习琴初学', 'Upload/goods/2016-03/TB1rAbPLVXXXXaHXpXXBq1u_XXX_120x120.jpg', 'Upload/goods/2016-03/TB1rAbPLVXXXXaHXpXXBq1u_XXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '紫色和粉色两把吉他，孩子练手还是不错的，附赠自己买的背包', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('382', 'AA20799667', '高端定制：全新吉他模型 乐器礼物 青岛纯生出品', 'Upload/goods/2016-03/TB1Ny2uLXXXXXaiXpXXfmTpFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1Ny2uLXXXXXaiXpXXfmTpFpXX_120x120.jpg', '0', '1', '40.0', '40.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '民谣吉他模型，美国星条旗图案，实物如图。送给爱音乐的她/他,一定会惊喜吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('383', 'AA20799667', '[转卖]初学者入门练习精制苦竹笛子 成人演奏乐器竹笛学生专业', 'Upload/goods/2016-03/TB1XcJyMXXXXXauXVXX_4LC.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1XcJyMXXXXXauXVXX_4LC.VXX_120x120.jpg', '0', '1', '59.0', '59.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('384', 'AA20799667', '民谣吉他初学者入门乐器吉它40寸男女学生木吉他新手练', 'Upload/goods/2016-03/TB1567ULVXXXXbVXFXX2MrLFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1567ULVXXXXbVXFXX2MrLFXXX_120x120.jpg', '0', '1', '220.0', '220.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('385', 'AA20799667', '[转卖]卡摩迩38寸初学入门练习新手乐器 民谣木吉他 男女j', 'Upload/goods/2016-03/TB1O5xOMXXXXXXVXXXXSeRa.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1O5xOMXXXXXXVXXXXSeRa.VXX_120x120.jpg', '0', '1', '81.0', '81.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('386', 'AA20799667', '[转卖]特价包邮陶笛6孔中音C调黑陶陶笛AC初学陶笛批发民族乐器', 'Upload/goods/2016-03/TB1OPINLVXXXXbBXpXXG_j8.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1OPINLVXXXXbBXpXXG_j8.FXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '便宜卖了六孔陶笛，自己学了几天不会玩，便宜卖了！感兴趣的朋友可以给我留言！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('387', 'AA20799667', '【转卖】铁心迪乐器/笛子/二节双插', 'Upload/goods/2016-03/TB1O4sALVXXXXXkaXXXP8HP7VXX_120x120.jpg', 'Upload/goods/2016-03/TB1O4sALVXXXXXkaXXXP8HP7VXX_120x120.jpg', '0', '1', '120.0', '120.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '55', '109', '109', '0', '0', '不怎么会吹了', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('388', 'AA20799667', '【转卖】OSA欧莎夏季新品女装镂空蕾丝拼接宽松圆领雪纺衫4', 'Upload/goods/2016-03/TB1.EIiLFXXXXXPXXXXC8oz8VXX_120x120.jpg', 'Upload/goods/2016-03/TB1.EIiLFXXXXXPXXXXC8oz8VXX_120x120.jpg', '0', '1', '129.0', '129.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '全新，一次没穿。买来小了点就放着。XL码百搭经典款式，料子爽滑蓝色清新可爱，花纹淑女，osa的衣服质量很...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('389', 'AA20799667', 'cosplay lolita 女装 蝴蝶结 收腰 lo娘天马', 'Upload/goods/2016-03/TB1Qh_pLFXXXXagXpXXzSpq.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1Qh_pLFXXXXagXpXXzSpq.FXX_120x120.jpg', '0', '1', '288.0', '288.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '仅试穿只有衣服没有衬衫身陷L因为买不起裙撑和衬衫发现没裙撑不好看还是让他出去好了', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('390', 'AA20799667', '转卖 唐狮 女装浅水绿小翻领前胸印花t恤', 'Upload/goods/2016-03/TB1SyLRLVXXXXbpaXXXYg2w8XXX_120x120.jpg', 'Upload/goods/2016-03/TB1SyLRLVXXXXbpaXXXYg2w8XXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '九新哦，很小清新，可爱的一款,衣服料子很舒服~超适合夏天的~', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('391', 'AA20799667', '【转卖】夏季新款女装新品复古百褶气质短袖甜美修身', 'Upload/goods/2016-03/TB1WoxlKFXXXXbZXpXXDmG_FFXX_120x120.jpg', 'Upload/goods/2016-03/TB1WoxlKFXXXXbZXpXXDmG_FFXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '很仙很漂亮的转给喜欢的亲们', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('392', 'AA20799667', '【转卖】梦幻假日OSA夏装新款女装夏季裙子镂空蕾丝连衣裙', 'Upload/goods/2016-03/TB1Hr0kMXXXXXcUXXXX_NXz9FXX_120x120.jpg', 'Upload/goods/2016-03/TB1Hr0kMXXXXXcUXXXX_NXz9FXX_120x120.jpg', '0', '1', '199.0', '199.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '全新，试穿了一次。买来小了点就放着。L码很仙显白显瘦短袖连衣裙，蕾丝镂空设计非常好看淑女气质。osa的衣...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('393', 'AA20799667', '韩国购入女装S码', 'Upload/goods/2016-03/TB1_qz4LVXXXXXzXpXXZXWX.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1_qz4LVXXXXXzXpXXZXWX.pXX_120x120.jpg', '0', '1', '200.0', '200.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '质量好，购入价800多。手工亮片时尚精致，超美。就是我穿小了呜呜，有缘人收了她', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('394', 'AA20799667', '[转卖]心灵百合2013新款女装大码夏装连衣裙修身蛋糕裙子夏', 'Upload/goods/2016-03/TB1t6XHMXXXXXbWXpXXeQAfFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1t6XHMXXXXXbWXpXXeQAfFpXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('395', 'AA20799667', '【转卖】CS专柜正品女装春秋圆领长袖套头休闲上衣', 'Upload/goods/2016-03/TB1csbFLXXXXXcUXXXXLAuN.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1csbFLXXXXXcUXXXXLAuN.VXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '尘色剪标很有个性的设计上班穿不了尺码165/88A', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('396', 'AA20799667', '[转卖]韩都衣舍韩版2015夏装新款女装翻领收腰修身短袖连衣', 'Upload/goods/2016-03/TB1ok4AMXXXXXc7XFXXYckfFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1ok4AMXXXXXc7XFXXYckfFpXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('397', 'AA20799667', '[转卖]MC欧美女装 秋冬新款字母A贴布绣拼色拼接背心罩衫针', 'Upload/goods/2016-03/TB1DlNXMXXXXXcwXFXXAJPr_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1DlNXMXXXXXcwXFXXAJPr_FXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('398', 'AA20799667', '[转卖]加肥加大码女装打底裤女裤外穿春夏款显瘦胖mm小脚铅笔长', 'Upload/goods/2016-03/TB1Px4wMXXXXXbRXVXXYckfFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1Px4wMXXXXXbRXVXXYckfFpXX_120x120.jpg', '0', '1', '10.0', '10.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('399', 'AA20799667', '[转卖]特价2013ALU韩版加厚长款连帽貂绒大衣毛衣开衫 秋冬女装', 'Upload/goods/2016-03/TB1hDiBJpXXXXabXVXXV.EVFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1hDiBJpXXXXabXVXXV.EVFFXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '穿过一次九成新小号', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('400', 'AA20799667', '【转卖】OSA欧莎夏季新款女装 假两件短裙蕾丝中腰女连衣裙SL51', 'Upload/goods/2016-03/TB1h9AfLFXXXXbFXXXXgBxv9XXX_120x120.jpg', 'Upload/goods/2016-03/TB1h9AfLFXXXXbFXXXXgBxv9XXX_120x120.jpg', '0', '1', '208.0', '208.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '95%新，穿过一次，XL码百搭经典款式，显瘦，气质连衣裙，osa的衣服质量很好价格也不便宜', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('401', 'AA20799667', '女装连衣裙T恤短裙短裤吊带打包清仓批发服饰150件打包批发', 'Upload/goods/2016-03/TB1SA6eLFXXXXXsapXXTWjs8pXX_120x120.jpg', 'Upload/goods/2016-03/TB1SA6eLFXXXXXsapXXTWjs8pXX_120x120.jpg', '0', '1', '1888.0', '1888.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '女装服饰一次性打包！这些都是我以前开服装店留下来的货，有150件左右吧，做服装的店主可以考虑，绝对超值！...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('402', 'AA20799667', '[转卖]MSSHE加大码女装2015新款春装钉珠七分袖烧花小', 'Upload/goods/2016-03/TB1S_1kKVXXXXXuXFXXrQTv.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1S_1kKVXXXXXuXFXXrQTv.pXX_120x120.jpg', '0', '1', '100.0', '100.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '219', '219', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('403', 'AA20799667', '[转卖]热风浅口女鞋春季新款金丝布面女士尖头中跟鞋婚鞋单鞋6', 'Upload/goods/2016-03/TB1jY0oMXXXXXXSapXXNm7FFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1jY0oMXXXXXXSapXXNm7FFpXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '220', '220', '0', '0', '感兴趣的话给我留言吧！只穿过一次！本人不会穿高跟鞋，转给需要的美女！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('404', 'AA20799667', '索菲亚正品牛皮女鞋', 'Upload/goods/2016-03/TB12qLhKVXXXXbWXVXXSC0mFXXX_120x120.jpg', 'Upload/goods/2016-03/TB12qLhKVXXXXbWXVXXSC0mFXXX_120x120.jpg', '0', '1', '120.0', '120.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '220', '220', '0', '0', '只有买的当天穿过一次，36码，具体买的多少钱忘记了，但是好像不是很便宜，鞋盒也不知道放到哪里去了，搬家...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('405', 'AA20799667', '[转卖]【天天特价】春季新品英伦松糕女鞋小圆头系带雕花布洛克', 'Upload/goods/2016-03/TB1aKdmMXXXXXchapXXcWoEFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1aKdmMXXXXXchapXXcWoEFpXX_120x120.jpg', '0', '1', '58.0', '58.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '220', '220', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('406', 'AA20799667', '摩登女鞋 欧美女鞋', 'Upload/goods/2016-03/TB1pg.WLFXXXXXmXpXXODU99VXX_120x120.jpg', 'Upload/goods/2016-03/TB1pg.WLFXXXXXmXpXXODU99VXX_120x120.jpg', '0', '1', '40.0', '40.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '220', '220', '0', '0', '37码仅穿过一次，为了搭配欧美风的衣服', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('407', 'AA20799667', 'cloverleaf 日本买 全新皮鞋 黑漆皮女鞋', 'Upload/goods/2016-03/TB1I2UMKFXXXXXwaXXXAX2f8XXX_120x120.jpg', 'Upload/goods/2016-03/TB1I2UMKFXXXXXwaXXXAX2f8XXX_120x120.jpg', '0', '1', '49.0', '49.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '220', '220', '0', '0', '漆皮。跟高7cm。36码。邮费可商量。因个别买家需求要看试穿图，最后两张试穿效果。注意这是全新的！看第4张...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('408', 'AA20799667', '高端男装羊毛衫外套', 'Upload/goods/2016-03/TB1avBsMXXXXXbAaXXXFS.0FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1avBsMXXXXXbAaXXXFS.0FpXX_120x120.jpg', '0', '1', '650.0', '650.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '高档羊毛衫闲置处理贱卖（送老爸老公超值）全新都有吊牌，100%羊毛衫外套带内胆，扣子都是天然牛角的，绝...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('409', 'AA20799667', '[转卖]春秋冬季大码男装连帽夹克男士潮韩版修身纯色休闲外套男', 'Upload/goods/2016-03/TB1L3xyMXXXXXasXVXX8qoZFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1L3xyMXXXXXasXVXX8qoZFpXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('410', 'AA20799667', '[转卖]简木男装2015夏装新款男士休闲长裤 男裤小脚哈伦裤', 'Upload/goods/2016-03/TB10ZVSMXXXXXXqXXXXN5cYFpXX_120x120.jpg', 'Upload/goods/2016-03/TB10ZVSMXXXXXXqXXXXN5cYFpXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('411', 'AA20799667', 'ZARA 男装', 'Upload/goods/2016-03/TB1Y18QKpXXXXXiXVXX7DNoFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1Y18QKpXXXXXiXVXX7DNoFXXX_120x120.jpg', '0', '1', '140.0', '140.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', 'ZARA，衣服厚实，70%羊毛，实际测量，衣长71（从肩膀和衣领衔接处到下摆的距离），肩宽46，胸围57', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('412', 'AA20799667', '[转卖]2014日韩系 男女款情侣外套男士迷彩冲锋衣 男装风', 'Upload/goods/2016-03/TB14SpKMXXXXXXyXpXXZOAOFpXX_120x120.jpg', 'Upload/goods/2016-03/TB14SpKMXXXXXXyXpXXZOAOFpXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('413', 'AA20799667', '【转卖】新款ZARA正品连帽修身时尚夹克男装皮衣黑色卡其外套29', 'Upload/goods/2016-03/TB1fllKMXXXXXXlXpXXH07NFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1fllKMXXXXXXlXpXXH07NFpXX_120x120.jpg', '0', '1', '289.0', '289.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '没怎么穿，现转卖', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('414', 'AA20799667', '【一等品羊毛衫】飞尼克斯品牌男装羊毛毛衣显年轻', 'Upload/goods/2016-03/TB1hs5SKVXXXXaxXFXXfhXf9FXX_120x120.jpg', 'Upload/goods/2016-03/TB1hs5SKVXXXXaxXFXXfhXf9FXX_120x120.jpg', '0', '1', '128.0', '128.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '父亲的衣橱，绝对显年轻显白的一等品………羊毛衫的暖度纯棉的舒适度，申请专利的...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('415', 'AA20799667', '[转卖]男装新款水洗牛仔哈伦裤日系复古潮流灯笼裤男士宽松小脚', 'Upload/goods/2016-03/TB19qNhLFXXXXX_XFXXwzWuFXXX_120x120.jpg', 'Upload/goods/2016-03/TB19qNhLFXXXXX_XFXXwzWuFXXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！新的新的新的', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('416', 'AA20799667', '正品AMANI阿玛尼毛衣，欧码S码，可换小码男装', 'Upload/goods/2016-03/TB1BM47LXXXXXbSXVXXoXoG7pXX_120x120.jpg', 'Upload/goods/2016-03/TB1BM47LXXXXXbSXVXXoXoG7pXX_120x120.jpg', '0', '1', '599.0', '599.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '保真，因袖子太长没怎么穿过，适合170-175的朋友，可换国内S或M码男装。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('417', 'AA20799667', '[转卖]日系复古男士外套春秋装薄款修身夹克韩版男装棒球服潮男', 'Upload/goods/2016-03/TB1VcYaKVXXXXa9XVXXPX4pFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1VcYaKVXXXXa9XVXXPX4pFFXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('418', 'AA20799667', '泰芝郎新品春装V领套头毛衫 时尚针织衫潮男装修身韩版', 'Upload/goods/2016-03/TB11m0oMXXXXXaJapXXSv7yFpXX_120x120.jpg', 'Upload/goods/2016-03/TB11m0oMXXXXXaJapXXSv7yFpXX_120x120.jpg', '0', '1', '60.0', '60.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '泰芝郎新品春装V领套头毛衫时尚针织衫潮男装修身韩版9成新，不换哦！黑色3XL黑色代表神秘黑暗，具有...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('419', 'AA20799667', '【转卖】杰珂波菲春季新品男士长袖衬衫 男 长袖衬衣男装英伦修', 'Upload/goods/2016-03/TB1leJhMXXXXXa4XFXXJP6gFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1leJhMXXXXXa4XFXXJP6gFXXX_120x120.jpg', '0', '1', '25.0', '25.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '全新，尺码是175／92，个人闲置，不退不换', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('420', 'AA20799667', '[转卖]AK男装2013秋装新款户外军款防水帆布战地夹克男秋季薄休闲', 'Upload/goods/2016-03/TB1CN1LLpXXXXbMXpXXOFJq_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1CN1LLpXXXXbMXpXXOFJq_FXX_120x120.jpg', '0', '1', '200.0', '200.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '宝贝尺码：S码165/84A。AK买的，本人穿还是大一点，出给喜欢的朋友，感兴趣请留言或者旺旺联系吧。二手商...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('421', 'AA20799667', '[转卖]【38女王节精选】Hodo/红豆男装2016春装时尚', 'Upload/goods/2016-03/TB1suFvMXXXXXXBaXXX1sMqFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1suFvMXXXXXXBaXXX1sMqFpXX_120x120.jpg', '0', '1', '259.0', '259.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('422', 'AA20799667', '韩国代购正品男装冬装纯棉厚款条纹圆领长袖T恤', 'Upload/goods/2016-03/TB1eo1zKVXXXXbRXXXX7g55.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1eo1zKVXXXXbRXXXX7g55.pXX_120x120.jpg', '0', '1', '90.0', '90.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！这个价格很划算', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('423', 'AA20799667', '[转卖]【1111购物狂欢节】千纸鹤男装2013秋冬新款男士', 'Upload/goods/2016-03/TB1bTMxLFXXXXXfXpXXvq95.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1bTMxLFXXXXXfXpXXvq95.VXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('424', 'AA20799667', '卡宾男装短袖T恤+短裤套装', 'Upload/goods/2016-03/TB15jqzLXXXXXcdXFXXb_Q7.VXX_120x120.jpg', 'Upload/goods/2016-03/TB15jqzLXXXXXcdXFXXb_Q7.VXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '185全新，商场正品。当时试的时候有点紧老公买来想减肥穿的，结果越来越肥穿不了了，裤子吊牌还在衣服的不见...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('425', 'AA20799667', '[转卖]2013摩名帝凡斯秋牛仔夹克 男装短款修身牛仔外套 201003', 'Upload/goods/2016-03/TB1cBANLVXXXXbNXpXX2R1JFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1cBANLVXXXXbNXpXX2R1JFXXX_120x120.jpg', '0', '1', '160.0', '160.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '尺码：170/M。出给喜欢的朋友，感兴趣请留言或者旺旺联系吧。二手商品，一概售出，恕不退还，介意的朋友慎...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('426', 'AA20799667', '[转卖]纪梵希卡玛 fred 2014新款夏男装perry专', 'Upload/goods/2016-03/TB1kN6wLFXXXXX5XpXXg.IM.FXX_120x120.jpg', 'Upload/goods/2016-03/TB1kN6wLFXXXXX5XpXXg.IM.FXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('427', 'AA20799667', '清衣柜 韩国代购男装时尚纯色修身男士长袖衬衫', 'Upload/goods/2016-03/TB1nll2LXXXXXcpXFXX9iFY.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1nll2LXXXXXcpXFXX9iFY.VXX_120x120.jpg', '0', '1', '130.0', '130.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '221', '221', '0', '0', '衣服全部新的，男装店面已转1）第一件韩国CNC牌子黑色和白色，）第二件韩国geart牌子就只有白色', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('428', 'AA20799667', 'coach商务休闲男鞋', 'Upload/goods/2016-03/TB1FhAsLVXXXXc1XFXXnqW0.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1FhAsLVXXXXc1XFXXnqW0.pXX_120x120.jpg', '0', '1', '529.0', '529.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '全新米国买滴。全皮，标准的商务休闲STYLE但是老公不喜欢41码适合瘦脚，颜色是近似于黑的深蓝，以第一张...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('429', 'AA20799667', 'free 4.0 flyknit 男子赤足黑白跑鞋', 'Upload/goods/2016-03/TB1uyBFMXXXXXctXpXXR0JoFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1uyBFMXXXXXctXpXXR0JoFFXX_120x120.jpg', '0', '1', '350.0', '350.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('430', 'AA20799667', '衫仟尺中国风男鞋复古官靴中筒靴 42码', 'Upload/goods/2016-03/TB1y8dLMXXXXXcyXXXXGMBlFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1y8dLMXXXXXcyXXXXGMBlFFXX_120x120.jpg', '0', '1', '280.0', '280.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '买了穿了不到五次，没钱撩妹了，低价出售！好人一生平安！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('431', 'AA20799667', 'KNNIC凯恩尼客 男子户外休闲鞋 运动鞋 跑鞋', 'Upload/goods/2016-03/TB1Ag2bIFXXXXbMaXXXAnmK.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1Ag2bIFXXXXbMaXXXAnmK.VXX_120x120.jpg', '0', '1', '70.0', '70.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('432', 'AA20799667', '新百伦女鞋新百伦男鞋新百伦情侣装新百伦574新百伦999', 'Upload/goods/2016-03/TB1odlpLVXXXXaBaXXXhSEkFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1odlpLVXXXXaBaXXXhSEkFpXX_120x120.jpg', '0', '1', '98.0', '98.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '价格98邮费10原价599。工厂出去专柜刷下来的，图片都是实拍，价格真实。断码处理，多数有微小瑕疵，类似胶水...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('433', 'AA20799667', '阿迪达斯NEO深灰桔红，男鞋', 'Upload/goods/2016-03/TB1KYkiLVXXXXbNXFXXAXpw.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1KYkiLVXXXXbNXFXXAXpw.pXX_120x120.jpg', '0', '1', '158.0', '158.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '【Adidas。阿迪达斯NEO深灰桔红。好品质可以放大！品质自观！品相很好。图片都是实拍，价格真实。断码处理...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('434', 'AA20799667', '轻便工装休闲鞋 增高鞋 厚底鞋 男鞋', 'Upload/goods/2016-03/TB11.xcHXXXXXbHXVXX8eMy.FXX_120x120.jpg', 'Upload/goods/2016-03/TB11.xcHXXXXXbHXVXX8eMy.FXX_120x120.jpg', '0', '1', '170.0', '170.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '42码全新', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('435', 'AA20799667', '[转卖]巨航情侣中高帮透气男女士帆布鞋子潮英伦风米字全黑个性', 'Upload/goods/2016-03/TB1MKhEMXXXXXcQXpXXJlVeFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1MKhEMXXXXXcQXpXXJlVeFFXX_120x120.jpg', '0', '1', '30.0', '30.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('436', 'AA20799667', 'ZARA 男鞋 高帮休闲鞋 专柜正品', 'Upload/goods/2016-03/TB1ut.qKFXXXXXHXXXX5ULJ.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1ut.qKFXXXXXHXXXX5ULJ.VXX_120x120.jpg', '0', '1', '199.0', '199.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', 'ZARA男鞋高帮休闲鞋42码九成新', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('437', 'AA20799667', '男鞋 加绒棉鞋 冬', 'Upload/goods/2016-03/TB1rAf2KVXXXXbMXVXX.xi7FFXX_120x120.jpg', 'Upload/goods/2016-03/TB1rAf2KVXXXXbMXVXX.xi7FFXX_120x120.jpg', '0', '1', '70.0', '70.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '八九成新鞋码250应该是40或41的脚穿', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('438', 'AA20799667', 'quicksilver 男鞋 高帮休闲薄棉鞋 香港专柜购入', 'Upload/goods/2016-03/TB1TGsqKFXXXXXLXXXXcp.f.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1TGsqKFXXXXXLXXXXcp.f.VXX_120x120.jpg', '0', '1', '199.0', '199.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', 'quicksilver男鞋高帮休闲薄棉鞋九成新', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('439', 'AA20799667', '[转卖]全新正品 代购 Clarks 其乐 男鞋 Weymouth Free凉鞋', 'Upload/goods/2016-03/TB1wLtgHXXXXXXcXFXXsnaF.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1wLtgHXXXXXXcXFXXsnaF.pXX_120x120.jpg', '0', '1', '500.0', '500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '42码全新凉鞋', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('440', 'AA20799667', '彪马男鞋', 'Upload/goods/2016-03/TB1tEpGMXXXXXc3XpXXhkhaFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1tEpGMXXXXXc3XpXXhkhaFFXX_120x120.jpg', '0', '1', '80.0', '80.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '9.5成新，基本没穿过，正品，现白菜价80包邮，不退换。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('441', 'AA20799667', '[转卖]秋冬季韩版棉鞋潮流休闲加棉保暖男鞋英伦情侣女豆豆鞋加', 'Upload/goods/2016-03/TB1xL0mMXXXXXbNapXXDwXaFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1xL0mMXXXXXbNapXXDwXaFFXX_120x120.jpg', '0', '1', '20.0', '20.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('442', 'AA20799667', '法国鰐鱼男鞋', 'Upload/goods/2016-03/TB1gJFJKVXXXXakapXXLCE.FFXX_120x120.jpg', 'Upload/goods/2016-03/TB1gJFJKVXXXXakapXXLCE.FFXX_120x120.jpg', '0', '1', '168.0', '168.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '正品法国鳄鱼男款真皮休闲鞋，39－40能驾驭，8成新可接受小刀，二手闲置，售出不退不换，介意慎拍，', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('443', 'AA20799667', 'ugg男鞋', 'Upload/goods/2016-03/TB1uXRCMXXXXXa_XFXXmeZ0FpXX_120x120.jpg', 'Upload/goods/2016-03/TB1uXRCMXXXXXa_XFXXmeZ0FpXX_120x120.jpg', '0', '1', '400.0', '400.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '专柜1500购入，反毛牛皮，85新，这款现在专柜还有销售，喷点鹿皮水跟新的一样，生胶底，超耐磨，有细节图，...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('444', 'AA20799667', 'rockport男鞋 进口 43码', 'Upload/goods/2016-03/TB1rIXnMXXXXXc_XXXXAU30.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1rIXnMXXXXXc_XXXXAU30.VXX_120x120.jpg', '0', '1', '799.0', '799.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '原价1799只穿过一次', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('445', 'AA20799667', '43码数男鞋全新', 'Upload/goods/2016-03/TB1yuFEMXXXXXaHXFXXoQgSFpXX_120x120.jpg', 'Upload/goods/2016-03/TB1yuFEMXXXXXaHXFXXoQgSFpXX_120x120.jpg', '0', '1', '70.0', '70.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '全新加绒男鞋', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('446', 'AA20799667', '[转卖]正品阿迪达斯男鞋2015秋冬反毛皮三叶草跑步鞋ZX1', 'Upload/goods/2016-03/TB19.xoMXXXXXcBaXXXNPQRFpXX_120x120.jpg', 'Upload/goods/2016-03/TB19.xoMXXXXXcBaXXXNPQRFpXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('447', 'AA20799667', 'jasonwood男鞋高帮鞋 pu鞋 高帮鞋 潮鞋', 'Upload/goods/2016-03/TB15uXYHXXXXXXUXVXXBT3J_pXX_120x120.jpg', 'Upload/goods/2016-03/TB15uXYHXXXXXXUXVXXBT3J_pXX_120x120.jpg', '0', '1', '85.0', '85.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '50', '372', '372', '0', '0', '黑色42码穿过1次', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('448', 'AA20799667', 'folli 经典款手表 泰国曼谷免税店购入', 'Upload/goods/2016-03/TB1oLCDJVXXXXaFXpXXeZES.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1oLCDJVXXXXaFXpXXeZES.XXX_120x120.jpg', '0', '1', '1000.0', '1000.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '买了后觉得同款陶瓷腕表太多，带了2次，99新转，免税店2380购入.最好当面交易验货，避免快递运输问题', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('449', 'AA20799667', '斯沃琪swatch 石英女表 钢带', 'Upload/goods/2016-03/TB1SBb9LpXXXXX4XFXXG1kwFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1SBb9LpXXXXX4XFXXG1kwFFXX_120x120.jpg', '0', '1', '450.0', '450.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '买了两三年了，正常使用痕迹，挺新的。换表转让。截得表带都有。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('450', 'AA20799667', '#配件集合版#冠琴GUANQIN复古男款机械手表 复古罗马指针 在保', 'Upload/goods/2016-03/TB1Ze4DMXXXXXbmXFXXul4SFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1Ze4DMXXXXXbmXFXXul4SFFXX_120x120.jpg', '0', '1', '299.0', '299.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '发票身份卡说明书原始表盒齐全.原价1580.朋友送.此表购于2014年7月.在保.日历可调.缺陷说明：2点钟方...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('451', 'AA20799667', 'folli follie女士手表', 'Upload/goods/2016-03/TB1CmnZLVXXXXbsXVXXC61J9pXX_120x120.jpg', 'Upload/goods/2016-03/TB1CmnZLVXXXXbsXVXXC61J9pXX_120x120.jpg', '0', '1', '800.0', '800.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '唯品会购买新旧如图喜欢的来吧原价2千多折后购买价1045欢迎咨询', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('452', 'AA20799667', 'Baby G 正品 玫红 手表', 'Upload/goods/2016-03/TB1kwnXIFXXXXa7aXXX7eU88VXX_120x120.jpg', 'Upload/goods/2016-03/TB1kwnXIFXXXXa7aXXX7eU88VXX_120x120.jpg', '0', '1', '380.0', '380.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '新世界商场正价购买的正品babyg系列，现在看还是很洋气的玫红色。因没有带手表习惯，没带过几次，只是四个...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('453', 'AA20799667', '卡西欧 石英表 金属表带 电池保一年', 'Upload/goods/2016-03/TB1YoVoLVXXXXbeXpXX9uilFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1YoVoLVXXXXbeXpXX9uilFFXX_120x120.jpg', '0', '1', '300.0', '300.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '戴了没多久的卡西欧，因为喜欢上了另一款运动表所以多余了。前不久有保养过，超声波清洗。电池有记号，一年...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('454', 'AA20799667', '[转卖]Jeep/吉普 牧马人系列JPW60403石英男表 时尚户外运动手表', 'Upload/goods/2016-03/TB15yy8LVXXXXXvXVXXrUnI.VXX_120x120.jpg', 'Upload/goods/2016-03/TB15yy8LVXXXXXvXVXXrUnI.VXX_120x120.jpg', '0', '1', '1000.0', '1000.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '该商品现在原价1498，已上涨1.使用时长：全新2.新旧程度描述：全新3.存在的问题：无，因为送人，不喜...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('455', 'AA20799667', '运动手环 埃微i5', 'Upload/goods/2016-03/TB11jd0LVXXXXcfXXXXgSMT9FXX_120x120.jpg', 'Upload/goods/2016-03/TB11jd0LVXXXXcfXXXXgSMT9FXX_120x120.jpg', '0', '1', '70.0', '70.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '全新运动手环附带说明书，功能强大，可以查看时间，记录步数，定闹钟，检测睡眠，来电短信等其他app信息提醒...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('456', 'AA20799667', '9.9新只戴过两天的Apple watch 银色运动版', 'Upload/goods/2016-03/TB1cSoILVXXXXbnXpXXzLhQ7FXX_120x120.jpg', 'Upload/goods/2016-03/TB1cSoILVXXXXbnXpXXzLhQ7FXX_120x120.jpg', '0', '1', '1700.0', '1700.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '2月29号老公送的，至今只戴过两次，表盘及表带几乎全新无任何划痕，连包装盒的透明膜都还在。国行无发票，带...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('457', 'AA20799667', '江诗丹顿男表马耳他手表传承男表百达翡丽日月星辰女表镂空机械男', 'Upload/goods/2016-03/TB1UXdNMXXXXXbXXXXXlIBPFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1UXdNMXXXXXbXXXXXlIBPFFXX_120x120.jpg', '0', '1', '456.0', '456.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '这个卖家太懒了，宝贝描述里面一个字都不肯写。^_^！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('458', 'AA20799667', '正品依波表出售，中国四大名表之一！', 'Upload/goods/2016-03/TB1TE_RLFXXXXcoXVXXEnJE_FXX_120x120.jpg', 'Upload/goods/2016-03/TB1TE_RLFXXXXcoXVXXEnJE_FXX_120x120.jpg', '0', '1', '500.0', '500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '正品依波表，机械表，发条终身不用上劲，时间和日期还有星期会自动走，很准确，防水效果百分百，时针带夜光...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('459', 'AA20799667', '卡西欧 全新', 'Upload/goods/2016-03/TB17APNLFXXXXXIXVXXn5UHFFXX_120x120.jpg', 'Upload/goods/2016-03/TB17APNLFXXXXXIXVXXn5UHFFXX_120x120.jpg', '0', '1', '320.0', '320.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('460', 'AA20799667', '高版本黑水鬼', 'Upload/goods/2016-03/TB18xNLLFXXXXXfXXXX74C98pXX_120x120.jpg', 'Upload/goods/2016-03/TB18xNLLFXXXXXfXXXX74C98pXX_120x120.jpg', '0', '1', '350.0', '350.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '小作坊货追求完美勿进', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('461', 'AA20799667', 'swatch专柜购买正品', 'Upload/goods/2016-03/TB1OLJsHXXXXXXlXVXXryeH9FXX_120x120.jpg', 'Upload/goods/2016-03/TB1OLJsHXXXXXXlXVXXryeH9FXX_120x120.jpg', '0', '1', '200.0', '200.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '专柜买的支持验货，和图片一样，跳楼价，不退不换', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('462', 'AA20799667', '卡西欧女款手表', 'Upload/goods/2016-03/TB1leTsLpXXXXaSXFXXnnIP.XXX_120x120.jpg', 'Upload/goods/2016-03/TB1leTsLpXXXXaSXFXXnnIP.XXX_120x120.jpg', '0', '1', '588.0', '588.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '手表保证正品，长时间没戴了，表带脏了，表不会走了……不过换一个正品白色表带300，电池...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('463', 'AA20799667', '美国带回的苹果手表。全新。1600白菜价', 'Upload/goods/2016-03/TB1G7BKMXXXXXXtXpXXNvRNFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1G7BKMXXXXXXtXpXXNvRNFFXX_120x120.jpg', '0', '1', '1600.0', '1600.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '美国带回来的', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('464', 'AA20799667', '苹果手表', 'Upload/goods/2016-03/TB1fXhWLFXXXXXTXVXXdfFyFXXX_120x120.jpg', 'Upload/goods/2016-03/TB1fXhWLFXXXXXTXVXXdfFyFXXX_120x120.jpg', '0', '1', '1900.0', '1900.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '朋友送的，带过，后来就放着闲置了，九五新', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('465', 'AA20799667', '浪琴女表正品，瑞士专柜购', 'Upload/goods/2016-03/TB1LzIiKXXXXXb2XpXXsaGT.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1LzIiKXXXXXb2XpXXsaGT.VXX_120x120.jpg', '0', '1', '5500.0', '5500.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '正品，型号看保修卡，九成新以上。2014年12月3号购买。机械表，鳄鱼皮表带。假一罚一百万。不议价！快五折了...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('466', 'AA20799667', '清货价650沛纳海入门神器PAM111', 'Upload/goods/2016-03/TB1bPtoMXXXXXaNapXXQjxMFFXX_120x120.jpg', 'Upload/goods/2016-03/TB1bPtoMXXXXXaNapXXQjxMFFXX_120x120.jpg', '0', '1', '650.0', '650.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '清货价650沛纳海入门神器PAM00111，海鸥6497手动上链机芯，表盘直径44MM，做工精细，性价比完爆站西所有大小...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('467', 'AA20799667', 'Neos手表', 'Upload/goods/2016-03/TB1S.XgMXXXXXXXapXX5sqp.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1S.XgMXXXXXXXapXX5sqp.pXX_120x120.jpg', '0', '1', '150.0', '150.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '男女可戴，98新，只带了一个礼拜不到，现出，不包邮，闲置了半年多，此款是没有秒针，需要联系。自己可以天...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('468', 'AA20799667', '#清衣柜#韩国进口修身针织开衫中长款 米色橙色各一件', 'Upload/goods/2016-03/TB1XdQwGVXXXXa3apXXwUyt.VXX_120x120.jpg', 'Upload/goods/2016-03/TB1XdQwGVXXXXa3apXXwUyt.VXX_120x120.jpg', '0', '1', '139.0', '139.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '韩国进口修身针织衫小号的亲买衣服都只试穿过，怀孕胖了，穿不来了喜欢的请不要错过米色橙色（照片偏红...', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('469', 'AA20799667', '[转卖]2015夏装新款韩版大码女装修身中长款两件套装裙碎印', 'Upload/goods/2016-03/TB1UW2uLFXXXXbJXVXXe9oZ.pXX_120x120.jpg', 'Upload/goods/2016-03/TB1UW2uLFXXXXbJXVXXe9oZ.pXX_120x120.jpg', '0', '1', '40.0', '40.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '感兴趣的话给我留言吧！', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1'), ('470', 'AA20799667', 'IOPE亦博SuperVital黄金五件套装抗皱滋养活力修复高保湿中样VIP', 'Upload/goods/2016-03/TB15Gg9LVXXXXanXpXXs9oT8FXX_120x120.jpg', 'Upload/goods/2016-03/TB15Gg9LVXXXXanXpXXs9oT8FXX_120x120.jpg', '0', '1', '50.0', '50.0', '1', '0', '0', '0', '0', '件', null, '1', '1', '1', '1', '1', '0', '0', null, '362', '363', '363', '0', '0', '韩国直邮买的，全新，未开封。', '0', '0', '0', '0', '1', null, '0', '', '1', null, '2016-03-22 23:30:38', '0', '0', '13920826591', '先生', '150', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_appraises`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_appraises`;
CREATE TABLE `rmt_goods_appraises` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NULL DEFAULT NULL COMMENT '店铺ID' ,
`parentId`  int(11) NULL DEFAULT 0 COMMENT '父级ID' ,
`orderId`  int(11) NULL DEFAULT NULL COMMENT '订单ID' ,
`goodsId`  int(11) NOT NULL COMMENT '商品ID' ,
`goodsAttrId`  int(11) NULL DEFAULT NULL COMMENT '商品品牌ID' ,
`userId`  int(11) NOT NULL COMMENT '用户ID' ,
`toUserId`  int(11) NOT NULL COMMENT '接受人id' ,
`goodsScore`  int(11) NULL DEFAULT 0 COMMENT '商品评价' ,
`serviceScore`  int(11) NULL DEFAULT 0 COMMENT '服务评价' ,
`timeScore`  int(11) NULL DEFAULT 0 COMMENT '配送时间评价' ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价内容' ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否显示' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`status`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:未读   1：已读' ,
PRIMARY KEY (`id`),
INDEX `shopId` (`shopId`) USING BTREE ,
INDEX `orderId` (`orderId`, `goodsId`, `goodsAttrId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=14

;

-- ----------------------------
-- Records of rmt_goods_appraises
-- ----------------------------
BEGIN;
INSERT INTO `rmt_goods_appraises` VALUES ('1', null, '0', null, '275', null, '48', '49', '0', '0', '0', 'ssssssssssssssssssssssssssssss', '1', '2016-02-27 10:02:12', '0'), ('2', null, '0', null, '275', null, '44', '49', '0', '0', '0', 'zzzzzzzzzz', '1', '2016-02-27 10:05:29', '0'), ('3', null, '0', null, '275', null, '42', '49', '0', '0', '0', 'zzzzzzzzzz', '1', '2016-02-27 10:07:32', '0'), ('4', null, '0', null, '275', null, '44', '49', '0', '0', '0', '杀杀杀', '1', '2016-02-27 10:53:25', '0'), ('5', null, '0', null, '275', null, '44', '49', '0', '0', '0', '3块钱卖不卖', '1', '2016-02-27 11:18:38', '0'), ('6', null, '0', null, '275', null, '44', '49', '0', '0', '0', 'zzzzz', '1', '2016-02-27 14:41:31', '0'), ('7', null, '0', null, '275', null, '44', '49', '0', '0', '0', 'zzzzzzzz', '1', '2016-02-27 14:41:50', '0'), ('8', null, '0', null, '275', null, '44', '49', '0', '0', '0', 'zzzzzzzz', '1', '2016-02-27 14:48:43', '0'), ('9', null, '0', null, '275', null, '44', '49', '0', '0', '0', 'zzzz', '1', '2016-02-27 14:59:39', '0'), ('10', null, '8', null, '275', null, '44', '49', '0', '0', '0', '这是我这里的第一次留言', '1', '2016-02-28 21:10:14', '0'), ('11', null, '0', null, '272', null, '44', '44', '0', '0', '0', 'zzzz', '1', '2016-02-28 22:19:36', '0'), ('12', null, '11', null, '272', null, '44', '44', '0', '0', '0', '这是我的第一次留言哦！', '1', '2016-02-28 22:31:39', '0'), ('13', null, '0', null, '272', null, '44', '44', '0', '0', '0', '测试留言第二次', '1', '2016-02-28 22:31:52', '0');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_attributes`;
CREATE TABLE `rmt_goods_attributes` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`goodsId`  int(11) NOT NULL ,
`attrId`  int(11) NOT NULL ,
`attrVal`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`attrPrice`  float(11,1) NULL DEFAULT 0.0 ,
`attrStock`  int(11) NULL DEFAULT 0 ,
`isRecomm`  tinyint(4) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `shopId` (`shopId`) USING BTREE ,
INDEX `goodsId` (`goodsId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=29

;

-- ----------------------------
-- Records of rmt_goods_attributes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_cat_brands`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_cat_brands`;
CREATE TABLE `rmt_goods_cat_brands` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`catId`  int(11) NULL DEFAULT NULL ,
`brandId`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `catId` (`catId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=43

;

-- ----------------------------
-- Records of rmt_goods_cat_brands
-- ----------------------------
BEGIN;
INSERT INTO `rmt_goods_cat_brands` VALUES ('1', '47', '19'), ('2', '47', '20'), ('3', '47', '21'), ('4', '47', '22'), ('5', '47', '23'), ('6', '47', '24'), ('7', '48', '25'), ('8', '48', '26'), ('9', '48', '27'), ('10', '48', '28'), ('11', '49', '29'), ('12', '49', '30'), ('13', '49', '31'), ('14', '49', '32'), ('15', '49', '33'), ('16', '49', '34'), ('17', '49', '35'), ('18', '49', '36'), ('19', '49', '37'), ('20', '49', '38'), ('21', '49', '39'), ('22', '49', '40'), ('23', '50', '41'), ('24', '50', '42'), ('25', '50', '43'), ('26', '50', '44'), ('27', '50', '45'), ('28', '50', '46'), ('29', '50', '47'), ('30', '51', '48'), ('31', '51', '49'), ('32', '51', '50'), ('33', '51', '51'), ('34', '51', '52'), ('36', '51', '53'), ('37', '51', '54'), ('38', '51', '55'), ('39', '51', '56'), ('40', '51', '57'), ('41', '51', '58'), ('42', '51', '59');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_cats`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_cats`;
CREATE TABLE `rmt_goods_cats` (
`catId`  int(11) NOT NULL AUTO_INCREMENT ,
`parentId`  int(11) NOT NULL DEFAULT 0 COMMENT '父ID' ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否显示' ,
`catName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字' ,
`priceSection`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '价格段' ,
`catSort`  int(11) NOT NULL DEFAULT 0 COMMENT '排序' ,
`catFlag`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态' ,
`serviceType`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '服务类型, 0: 普通服务  1：商户服务' ,
PRIMARY KEY (`catId`),
INDEX `parentId` (`parentId`, `isShow`, `catFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=378

;

-- ----------------------------
-- Records of rmt_goods_cats
-- ----------------------------
BEGIN;
INSERT INTO `rmt_goods_cats` VALUES ('50', '0', '1', '鞋服配饰、美容护理', 'we', '4', '1', '0'), ('54', '0', '1', '闲置家电、床上日用', 'sd', '2', '1', '0'), ('55', '0', '1', '闲置图书、玩具乐器', 'sd', '3', '1', '0'), ('56', '0', '1', '虚拟服务、周边食品', 'sd', '9', '1', '1'), ('84', '56', '1', '通讯充值', null, '1', '-1', '0'), ('85', '56', '1', '本地生活', null, '2', '1', '0'), ('368', '363', '1', '其他', null, '0', '1', '0'), ('369', '365', '1', '其他', null, '0', '1', '0'), ('370', '366', '1', '其他', null, '0', '1', '0'), ('371', '219', '1', '裤子', null, '6', '1', '0'), ('372', '50', '1', '男鞋', null, '4', '1', '0'), ('97', '85', '1', '外卖订座', null, '2', '1', '0'), ('98', '85', '1', '周边优惠', null, '3', '1', '0'), ('100', '84', '1', '移动话费充值', null, '1', '-1', '0'), ('101', '84', '1', '电信话费充值', null, '2', '-1', '0'), ('102', '84', '1', '联通话费充值', null, '3', '-1', '0'), ('108', '55', '1', '闲置图书', null, '3', '1', '0'), ('109', '55', '1', '玩具乐器', null, '7', '1', '0'), ('110', '108', '1', '文学艺术', null, '1', '1', '0'), ('111', '108', '1', '人文社科', null, '2', '1', '0'), ('112', '108', '1', '心灵鸡汤', null, '3', '1', '0'), ('113', '109', '1', '轮滑鞋、滑板', null, '1', '1', '0'), ('114', '109', '1', '吉他类乐器', null, '2', '1', '0'), ('115', '109', '1', '益智玩具', null, '3', '1', '0'), ('116', '108', '1', '科学与自然', null, '4', '1', '0'), ('117', '109', '1', '其他', null, '5', '1', '0'), ('121', '54', '1', '日常电器', null, '1', '1', '0'), ('134', '121', '1', '电吹风', null, '2', '1', '0'), ('135', '121', '1', '桌灯', null, '3', '1', '0'), ('219', '50', '1', '女装', null, '1', '1', '0'), ('220', '50', '1', '女鞋', null, '2', '1', '0'), ('221', '50', '1', '男装', null, '3', '1', '0'), ('222', '50', '1', '配饰', null, '5', '1', '0'), ('223', '50', '1', '其他', null, '6', '1', '0'), ('224', '219', '1', '半身裙', null, '2', '1', '0'), ('225', '219', '1', '连衣裙', null, '1', '1', '0'), ('226', '219', '1', 'T恤', null, '3', '1', '0'), ('227', '219', '1', '衬衫', null, '4', '1', '0'), ('228', '219', '1', '卫衣', null, '5', '1', '0'), ('229', '221', '1', 'T恤', null, '1', '1', '0'), ('230', '221', '1', '衬衫', null, '2', '1', '0'), ('231', '221', '1', '卫衣', null, '3', '1', '0'), ('232', '223', '1', '衣服', null, '1', '1', '0'), ('233', '223', '1', '裤子', null, '2', '1', '0'), ('234', '223', '1', '帽子', null, '3', '1', '0'), ('235', '223', '1', '包', null, '4', '1', '0'), ('236', '223', '1', '其他', null, '5', '1', '0'), ('237', '222', '1', '腰带', null, '1', '1', '0'), ('238', '222', '1', '皮带', null, '2', '1', '0'), ('239', '222', '1', '帽子', null, '3', '1', '0'), ('240', '222', '1', '围巾', null, '4', '1', '0'), ('241', '222', '1', '丝巾', null, '5', '1', '0'), ('242', '220', '1', '运动鞋', null, '1', '1', '0'), ('243', '220', '1', '单鞋', null, '2', '1', '0'), ('244', '220', '1', '皮鞋', null, '3', '1', '0'), ('245', '220', '1', '帆布鞋', null, '4', '1', '0'), ('246', '220', '1', '凉鞋', null, '5', '1', '0'), ('334', '0', '1', '闲置数码、电子产品', null, '1', '1', '0'), ('335', '54', '1', '床上用品', null, '3', '1', '0'), ('337', '85', '1', '快递服务', null, '1', '1', '0'), ('338', '334', '1', '手机', null, '1', '1', '0'), ('339', '334', '1', '电脑', null, '2', '1', '0'), ('340', '338', '1', '手机壳', null, '1', '1', '0'), ('341', '338', '1', '充电器', null, '2', '1', '0'), ('342', '338', '1', '数据线', null, '3', '1', '0'), ('343', '338', '1', '耳机', null, '4', '1', '0'), ('344', '338', '1', '其他', null, '5', '1', '0'), ('345', '339', '1', '笔记本', null, '1', '1', '0'), ('347', '339', '1', '台式机', null, '3', '1', '0'), ('348', '339', '1', '显示器、鼠标、键盘', null, '4', '1', '0'), ('349', '339', '1', '其他', null, '5', '1', '0'), ('350', '121', '1', '其他', null, '5', '1', '0'), ('351', '335', '1', '其他', null, '6', '1', '0'), ('352', '335', '1', '枕头', null, '2', '1', '0'), ('353', '335', '1', '被子', null, '3', '1', '0'), ('354', '335', '1', '床垫', null, '3', '1', '0'), ('355', '335', '1', '凉席', null, '5', '1', '0'), ('356', '54', '1', '家具用品', null, '3', '1', '0'), ('357', '356', '1', '坐具', null, '1', '1', '0'), ('358', '356', '1', '收纳', null, '2', '1', '0'), ('359', '356', '1', '其他', null, '3', '1', '0'), ('360', '121', '1', '风扇', null, '4', '1', '0'), ('361', '108', '1', '其他', null, '5', '1', '0'), ('362', '0', '1', '闲置其他，物尽其用', null, '5', '1', '0'), ('363', '362', '1', '小件', null, '1', '1', '0'), ('365', '362', '1', '大件', null, '1', '1', '0'), ('366', '362', '1', '超大件', null, '3', '1', '0'), ('373', '372', '1', '运动鞋', null, '1', '1', '0'), ('374', '372', '1', '单鞋', null, '2', '1', '0'), ('375', '372', '1', '皮鞋', null, '3', '1', '0'), ('376', '372', '1', '帆布鞋', null, '4', '1', '0'), ('377', '372', '1', '凉鞋', null, '5', '1', '0');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_gallerys`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_gallerys`;
CREATE TABLE `rmt_goods_gallerys` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`goodsId`  int(11) NOT NULL ,
`shopId`  int(11) NOT NULL ,
`goodsImg`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`goodsThumbs`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `goodsId` (`goodsId`, `shopId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=496

;

-- ----------------------------
-- Records of rmt_goods_gallerys
-- ----------------------------
BEGIN;
INSERT INTO `rmt_goods_gallerys` VALUES ('2', '3', '4', 'Upload/goods/2015-05/554c2c1e38e03.jpg', 'Upload/goods/2015-05/554c2c1e38e03_thumb.jpg'), ('3', '3', '4', 'Upload/goods/2015-05/554c2c2540bbb.png', 'Upload/goods/2015-05/554c2c2540bbb_thumb.png'), ('13', '5', '4', 'Upload/goods/2015-05/5563efa072081.jpg', 'Upload/goods/2015-05/5563efa072081_thumb.jpg'), ('14', '5', '4', 'Upload/goods/2015-05/5563efa276070.jpg', 'Upload/goods/2015-05/5563efa276070_thumb.jpg'), ('15', '5', '4', 'Upload/goods/2015-05/5563efa4ac19d.jpg', 'Upload/goods/2015-05/5563efa4ac19d_thumb.jpg'), ('19', '6', '4', 'Upload/goods/2015-05/5563f37817542.jpg', 'Upload/goods/2015-05/5563f37817542_thumb.jpg'), ('20', '6', '4', 'Upload/goods/2015-05/5563f37b1eae7.jpg', 'Upload/goods/2015-05/5563f37b1eae7_thumb.jpg'), ('21', '6', '4', 'Upload/goods/2015-05/5563f37d002c8.jpg', 'Upload/goods/2015-05/5563f37d002c8_thumb.jpg'), ('23', '7', '4', 'Upload/goods/2015-05/55641f418a6b3.jpg', 'Upload/goods/2015-05/55641f418a6b3_thumb.jpg'), ('27', '9', '4', 'Upload/goods/2015-05/556422319d52f.jpg', 'Upload/goods/2015-05/556422319d52f_thumb.jpg'), ('28', '9', '4', 'Upload/goods/2015-05/55642233c3f63.jpg', 'Upload/goods/2015-05/55642233c3f63_thumb.jpg'), ('29', '9', '4', 'Upload/goods/2015-05/556422354e819.jpg', 'Upload/goods/2015-05/556422354e819_thumb.jpg'), ('30', '10', '4', 'Upload/goods/2015-05/5564263dac034.jpg', 'Upload/goods/2015-05/5564263dac034_thumb.jpg'), ('31', '10', '4', 'Upload/goods/2015-05/5564263f3219a.jpg', 'Upload/goods/2015-05/5564263f3219a_thumb.jpg'), ('32', '10', '4', 'Upload/goods/2015-05/556426409f4c6.jpg', 'Upload/goods/2015-05/556426409f4c6_thumb.jpg'), ('33', '8', '4', 'Upload/goods/2015-05/55642c550d196.jpg', 'Upload/goods/2015-05/55642c550d196_thumb.jpg'), ('34', '8', '4', 'Upload/goods/2015-05/55642c576be16.jpg', 'Upload/goods/2015-05/55642c576be16_thumb.jpg'), ('37', '11', '11', 'Upload/goods/2015-05/55643432c0801.jpg', 'Upload/goods/2015-05/55643432c0801_thumb.jpg'), ('40', '28', '14', 'Upload/goods/2015-05/556480ebada5f.jpg', 'Upload/goods/2015-05/556480ebada5f_thumb.jpg'), ('41', '29', '14', 'Upload/goods/2015-05/5564818cc1764.jpg', 'Upload/goods/2015-05/5564818cc1764_thumb.jpg'), ('42', '31', '14', 'Upload/goods/2015-05/556485bb85d2a.jpg', 'Upload/goods/2015-05/556485bb85d2a_thumb.jpg'), ('43', '31', '14', 'Upload/goods/2015-05/556485c430771.jpg', 'Upload/goods/2015-05/556485c430771_thumb.jpg'), ('44', '31', '14', 'Upload/goods/2015-05/556485c9b20d9.jpg', 'Upload/goods/2015-05/556485c9b20d9_thumb.jpg'), ('45', '31', '14', 'Upload/goods/2015-05/556485ca618d0.jpg', 'Upload/goods/2015-05/556485ca618d0_thumb.jpg'), ('46', '33', '14', 'Upload/goods/2015-05/55648deaa0eea.jpg', 'Upload/goods/2015-05/55648deaa0eea_thumb.jpg'), ('47', '33', '14', 'Upload/goods/2015-05/55648deb4aefd.jpg', 'Upload/goods/2015-05/55648deb4aefd_thumb.jpg'), ('48', '34', '14', 'Upload/goods/2015-05/55648f45afaab.jpg', 'Upload/goods/2015-05/55648f45afaab_thumb.jpg'), ('49', '34', '14', 'Upload/goods/2015-05/55648f465cb3b.jpg', 'Upload/goods/2015-05/55648f465cb3b_thumb.jpg'), ('50', '35', '14', 'Upload/goods/2015-05/5564902e457a6.jpg', 'Upload/goods/2015-05/5564902e457a6_thumb.jpg'), ('51', '36', '14', 'Upload/goods/2015-05/55649c8a61b2d.jpg', 'Upload/goods/2015-05/55649c8a61b2d_thumb.jpg'), ('52', '36', '14', 'Upload/goods/2015-05/55649c8acf2e4.jpg', 'Upload/goods/2015-05/55649c8acf2e4_thumb.jpg'), ('53', '37', '14', 'Upload/goods/2015-05/55649d5712e62.jpg', 'Upload/goods/2015-05/55649d5712e62_thumb.jpg'), ('54', '37', '14', 'Upload/goods/2015-05/55649d57b7506.jpg', 'Upload/goods/2015-05/55649d57b7506_thumb.jpg'), ('55', '37', '14', 'Upload/goods/2015-05/55649d5841b02.jpg', 'Upload/goods/2015-05/55649d5841b02_thumb.jpg'), ('56', '38', '14', 'Upload/goods/2015-05/55649dd083973.jpg', 'Upload/goods/2015-05/55649dd083973_thumb.jpg'), ('59', '39', '14', 'Upload/goods/2015-05/55649f52d28e1.jpg', 'Upload/goods/2015-05/55649f52d28e1_thumb.jpg'), ('60', '42', '14', 'Upload/goods/2015-05/5564a2a43c7de.jpg', 'Upload/goods/2015-05/5564a2a43c7de_thumb.jpg'), ('61', '42', '14', 'Upload/goods/2015-05/5564a2a4e7d31.jpg', 'Upload/goods/2015-05/5564a2a4e7d31_thumb.jpg'), ('67', '2', '4', 'Upload/goods/2015-05/55641879b274d.jpg', 'Upload/goods/2015-05/55641879b274d_thumb.jpg'), ('72', '43', '18', 'Upload/goods/2015-05/55652a0bbc2b6.jpg', 'Upload/goods/2015-05/55652a0bbc2b6_thumb.jpg'), ('73', '43', '18', 'Upload/goods/2015-05/55652a0c366cf.jpg', 'Upload/goods/2015-05/55652a0c366cf_thumb.jpg'), ('74', '43', '18', 'Upload/goods/2015-05/55652a0fa8e82.jpg', 'Upload/goods/2015-05/55652a0fa8e82_thumb.jpg'), ('75', '43', '18', 'Upload/goods/2015-05/55652a10638f5.jpg', 'Upload/goods/2015-05/55652a10638f5_thumb.jpg'), ('82', '44', '18', 'Upload/goods/2015-05/55652c2275a6d.jpg', 'Upload/goods/2015-05/55652c2275a6d_thumb.jpg'), ('83', '44', '18', 'Upload/goods/2015-05/55652c230aa1e.jpg', 'Upload/goods/2015-05/55652c230aa1e_thumb.jpg'), ('84', '44', '18', 'Upload/goods/2015-05/55652c23d560e.jpg', 'Upload/goods/2015-05/55652c23d560e_thumb.jpg'), ('85', '44', '18', 'Upload/goods/2015-05/55652c6d8b2b2.jpg', 'Upload/goods/2015-05/55652c6d8b2b2_thumb.jpg'), ('86', '45', '4', 'Upload/goods/2015-05/55652cf5f2bc4.jpg', 'Upload/goods/2015-05/55652cf5f2bc4_thumb.jpg'), ('87', '45', '4', 'Upload/goods/2015-05/55652cfbcac39.jpg', 'Upload/goods/2015-05/55652cfbcac39_thumb.jpg'), ('88', '46', '18', 'Upload/goods/2015-05/55652d0aa8261.jpg', 'Upload/goods/2015-05/55652d0aa8261_thumb.jpg'), ('89', '46', '18', 'Upload/goods/2015-05/55652d0c2540d.jpg', 'Upload/goods/2015-05/55652d0c2540d_thumb.jpg'), ('90', '46', '18', 'Upload/goods/2015-05/55652d0d1942b.jpg', 'Upload/goods/2015-05/55652d0d1942b_thumb.jpg'), ('91', '46', '18', 'Upload/goods/2015-05/55652d0dccb37.jpg', 'Upload/goods/2015-05/55652d0dccb37_thumb.jpg'), ('100', '48', '18', 'Upload/goods/2015-05/55652e15c9bd1.jpg', 'Upload/goods/2015-05/55652e15c9bd1_thumb.jpg'), ('101', '48', '18', 'Upload/goods/2015-05/55652e167dd1a.jpg', 'Upload/goods/2015-05/55652e167dd1a_thumb.jpg'), ('102', '48', '18', 'Upload/goods/2015-05/55652e17bd752.jpg', 'Upload/goods/2015-05/55652e17bd752_thumb.jpg'), ('103', '48', '18', 'Upload/goods/2015-05/55652e1871e2f.jpg', 'Upload/goods/2015-05/55652e1871e2f_thumb.jpg'), ('108', '47', '18', 'Upload/goods/2015-05/55652dbb59d31.jpg', 'Upload/goods/2015-05/55652dbb59d31_thumb.jpg'), ('109', '47', '18', 'Upload/goods/2015-05/55652dbcedd46.jpg', 'Upload/goods/2015-05/55652dbcedd46_thumb.jpg'), ('110', '47', '18', 'Upload/goods/2015-05/55652dbe36f6e.jpg', 'Upload/goods/2015-05/55652dbe36f6e_thumb.jpg'), ('111', '47', '18', 'Upload/goods/2015-05/55652dbf07c24.jpg', 'Upload/goods/2015-05/55652dbf07c24_thumb.jpg'), ('118', '49', '18', 'Upload/goods/2015-05/55653130c3042.jpg', 'Upload/goods/2015-05/55653130c3042_thumb.jpg'), ('119', '49', '18', 'Upload/goods/2015-05/556531316c331.jpg', 'Upload/goods/2015-05/556531316c331_thumb.jpg'), ('120', '49', '18', 'Upload/goods/2015-05/556531324e849.jpg', 'Upload/goods/2015-05/556531324e849_thumb.jpg'), ('121', '49', '18', 'Upload/goods/2015-05/5565313306019.jpg', 'Upload/goods/2015-05/5565313306019_thumb.jpg'), ('122', '49', '18', 'Upload/goods/2015-05/55653133a3249.jpg', 'Upload/goods/2015-05/55653133a3249_thumb.jpg'), ('123', '49', '18', 'Upload/goods/2015-05/55653134402c2.jpg', 'Upload/goods/2015-05/55653134402c2_thumb.jpg'), ('124', '50', '18', 'Upload/goods/2015-05/5565336e3a061.jpg', 'Upload/goods/2015-05/5565336e3a061_thumb.jpg'), ('125', '50', '18', 'Upload/goods/2015-05/5565336f6535c.jpg', 'Upload/goods/2015-05/5565336f6535c_thumb.jpg'), ('126', '50', '18', 'Upload/goods/2015-05/5565337041019.jpg', 'Upload/goods/2015-05/5565337041019_thumb.jpg'), ('127', '50', '18', 'Upload/goods/2015-05/55653370bb676.jpg', 'Upload/goods/2015-05/55653370bb676_thumb.jpg'), ('135', '51', '18', 'Upload/goods/2015-05/556535c9d4b87.jpg', 'Upload/goods/2015-05/556535c9d4b87_thumb.jpg'), ('136', '51', '18', 'Upload/goods/2015-05/556535caa93e9.jpg', 'Upload/goods/2015-05/556535caa93e9_thumb.jpg'), ('137', '51', '18', 'Upload/goods/2015-05/556535cb5b943.jpg', 'Upload/goods/2015-05/556535cb5b943_thumb.jpg'), ('138', '51', '18', 'Upload/goods/2015-05/556535cbeb7a1.jpg', 'Upload/goods/2015-05/556535cbeb7a1_thumb.jpg'), ('139', '51', '18', 'Upload/goods/2015-05/556535cc824d0.jpg', 'Upload/goods/2015-05/556535cc824d0_thumb.jpg'), ('140', '51', '18', 'Upload/goods/2015-05/556535cd2c10c.jpg', 'Upload/goods/2015-05/556535cd2c10c_thumb.jpg'), ('141', '51', '18', 'Upload/goods/2015-05/556535cdaacf8.jpg', 'Upload/goods/2015-05/556535cdaacf8_thumb.jpg'), ('148', '52', '19', 'Upload/goods/2015-05/556539c691c99.jpg', 'Upload/goods/2015-05/556539c691c99_thumb.jpg'), ('149', '52', '19', 'Upload/goods/2015-05/556539c76dae9.jpg', 'Upload/goods/2015-05/556539c76dae9_thumb.jpg'), ('150', '52', '19', 'Upload/goods/2015-05/556539c7bc42d.jpg', 'Upload/goods/2015-05/556539c7bc42d_thumb.jpg'), ('151', '53', '19', 'Upload/goods/2015-05/55653e2855992.jpg', 'Upload/goods/2015-05/55653e2855992_thumb.jpg'), ('152', '53', '19', 'Upload/goods/2015-05/55653e2a721af.jpg', 'Upload/goods/2015-05/55653e2a721af_thumb.jpg'), ('153', '54', '19', 'Upload/goods/2015-05/55653f29e309a.jpg', 'Upload/goods/2015-05/55653f29e309a_thumb.jpg'), ('154', '54', '19', 'Upload/goods/2015-05/55653f2be1acf.jpg', 'Upload/goods/2015-05/55653f2be1acf_thumb.jpg'), ('155', '54', '19', 'Upload/goods/2015-05/55653f2cd61c9.jpg', 'Upload/goods/2015-05/55653f2cd61c9_thumb.jpg'), ('156', '55', '19', 'Upload/goods/2015-05/5565400c55b29.jpg', 'Upload/goods/2015-05/5565400c55b29_thumb.jpg'), ('157', '56', '19', 'Upload/goods/2015-05/5565412f6e079.jpg', 'Upload/goods/2015-05/5565412f6e079_thumb.jpg'), ('158', '56', '19', 'Upload/goods/2015-05/556541302cc71.jpg', 'Upload/goods/2015-05/556541302cc71_thumb.jpg'), ('159', '57', '19', 'Upload/goods/2015-05/5565419cae8ac.jpg', 'Upload/goods/2015-05/5565419cae8ac_thumb.jpg'), ('160', '58', '19', 'Upload/goods/2015-05/5565427b25647.jpg', 'Upload/goods/2015-05/5565427b25647_thumb.jpg'), ('161', '58', '19', 'Upload/goods/2015-05/5565427bcbe85.jpg', 'Upload/goods/2015-05/5565427bcbe85_thumb.jpg'), ('162', '59', '19', 'Upload/goods/2015-05/5565436d78c7e.jpg', 'Upload/goods/2015-05/5565436d78c7e_thumb.jpg'), ('163', '59', '19', 'Upload/goods/2015-05/5565436dc7ca3.jpg', 'Upload/goods/2015-05/5565436dc7ca3_thumb.jpg'), ('164', '59', '19', 'Upload/goods/2015-05/5565436e2f373.jpg', 'Upload/goods/2015-05/5565436e2f373_thumb.jpg'), ('165', '60', '22', 'Upload/goods/2015-05/55656f0dc8726.jpg', 'Upload/goods/2015-05/55656f0dc8726_thumb.jpg'), ('166', '60', '22', 'Upload/goods/2015-05/55656f0e91f06.jpg', 'Upload/goods/2015-05/55656f0e91f06_thumb.jpg'), ('167', '60', '22', 'Upload/goods/2015-05/55656f0fb24e3.jpg', 'Upload/goods/2015-05/55656f0fb24e3_thumb.jpg'), ('168', '61', '22', 'Upload/goods/2015-05/5565701b5dce1.jpg', 'Upload/goods/2015-05/5565701b5dce1_thumb.jpg'), ('169', '61', '22', 'Upload/goods/2015-05/5565701c3b880.jpg', 'Upload/goods/2015-05/5565701c3b880_thumb.jpg');
INSERT INTO `rmt_goods_gallerys` VALUES ('170', '61', '22', 'Upload/goods/2015-05/5565701cc71e3.jpg', 'Upload/goods/2015-05/5565701cc71e3_thumb.jpg'), ('171', '62', '22', 'Upload/goods/2015-05/556570f548f9e.jpg', 'Upload/goods/2015-05/556570f548f9e_thumb.jpg'), ('172', '62', '22', 'Upload/goods/2015-05/5565710c6ba89.jpg', 'Upload/goods/2015-05/5565710c6ba89_thumb.jpg'), ('173', '62', '22', 'Upload/goods/2015-05/5565710d6ef1a.jpg', 'Upload/goods/2015-05/5565710d6ef1a_thumb.jpg'), ('174', '63', '22', 'Upload/goods/2015-05/556572b9f3346.jpg', 'Upload/goods/2015-05/556572b9f3346_thumb.jpg'), ('175', '63', '22', 'Upload/goods/2015-05/556572bc4cf30.jpg', 'Upload/goods/2015-05/556572bc4cf30_thumb.jpg'), ('176', '63', '22', 'Upload/goods/2015-05/556572bd29814.jpg', 'Upload/goods/2015-05/556572bd29814_thumb.jpg'), ('177', '64', '22', 'Upload/goods/2015-05/556574c553f33.jpg', 'Upload/goods/2015-05/556574c553f33_thumb.jpg'), ('178', '64', '22', 'Upload/goods/2015-05/556574c6510f3.png', 'Upload/goods/2015-05/556574c6510f3_thumb.png'), ('179', '64', '22', 'Upload/goods/2015-05/556574c72ea85.png', 'Upload/goods/2015-05/556574c72ea85_thumb.png'), ('180', '66', '22', 'Upload/goods/2015-05/5565776165013.jpg', 'Upload/goods/2015-05/5565776165013_thumb.jpg'), ('181', '66', '22', 'Upload/goods/2015-05/556577623dc0e.png', 'Upload/goods/2015-05/556577623dc0e_thumb.png'), ('182', '66', '22', 'Upload/goods/2015-05/55657762e7635.png', 'Upload/goods/2015-05/55657762e7635_thumb.png'), ('183', '67', '22', 'Upload/goods/2015-05/556579f80240b.jpg', 'Upload/goods/2015-05/556579f80240b_thumb.jpg'), ('184', '67', '22', 'Upload/goods/2015-05/556579f87653a.jpg', 'Upload/goods/2015-05/556579f87653a_thumb.jpg'), ('185', '67', '22', 'Upload/goods/2015-05/556579f99ec2c.jpg', 'Upload/goods/2015-05/556579f99ec2c_thumb.jpg'), ('186', '68', '22', 'Upload/goods/2015-05/55657bb2cb473.jpg', 'Upload/goods/2015-05/55657bb2cb473_thumb.jpg'), ('187', '68', '22', 'Upload/goods/2015-05/55657bb350127.jpg', 'Upload/goods/2015-05/55657bb350127_thumb.jpg'), ('188', '69', '22', 'Upload/goods/2015-05/556589e6a109b.jpg', 'Upload/goods/2015-05/556589e6a109b_thumb.jpg'), ('189', '69', '22', 'Upload/goods/2015-05/556589e7742f9.jpg', 'Upload/goods/2015-05/556589e7742f9_thumb.jpg'), ('190', '70', '22', 'Upload/goods/2015-05/55658aaa2f68c.jpg', 'Upload/goods/2015-05/55658aaa2f68c_thumb.jpg'), ('191', '70', '22', 'Upload/goods/2015-05/55658aaaaaa10.jpg', 'Upload/goods/2015-05/55658aaaaaa10_thumb.jpg'), ('192', '70', '22', 'Upload/goods/2015-05/55658aab0d505.jpg', 'Upload/goods/2015-05/55658aab0d505_thumb.jpg'), ('193', '71', '22', 'Upload/goods/2015-05/55658bf10e3e1.jpg', 'Upload/goods/2015-05/55658bf10e3e1_thumb.jpg'), ('194', '71', '22', 'Upload/goods/2015-05/55658bf1c2924.jpg', 'Upload/goods/2015-05/55658bf1c2924_thumb.jpg'), ('195', '71', '22', 'Upload/goods/2015-05/55658bf287eaa.jpg', 'Upload/goods/2015-05/55658bf287eaa_thumb.jpg'), ('196', '72', '22', 'Upload/goods/2015-05/55658c81af47f.jpg', 'Upload/goods/2015-05/55658c81af47f_thumb.jpg'), ('197', '72', '22', 'Upload/goods/2015-05/55658c82bbd0b.jpg', 'Upload/goods/2015-05/55658c82bbd0b_thumb.jpg'), ('198', '72', '22', 'Upload/goods/2015-05/55658c83f19ad.jpg', 'Upload/goods/2015-05/55658c83f19ad_thumb.jpg'), ('202', '73', '26', 'Upload/goods/2015-05/5565c016aa36b.jpg', 'Upload/goods/2015-05/5565c016aa36b_thumb.jpg'), ('203', '73', '26', 'Upload/goods/2015-05/5565c0177c47c.jpg', 'Upload/goods/2015-05/5565c0177c47c_thumb.jpg'), ('204', '73', '26', 'Upload/goods/2015-05/5565c0183e5d9.jpg', 'Upload/goods/2015-05/5565c0183e5d9_thumb.jpg'), ('205', '74', '26', 'Upload/goods/2015-05/5565c3b10200b.png', 'Upload/goods/2015-05/5565c3b10200b_thumb.png'), ('206', '74', '26', 'Upload/goods/2015-05/5565c3b190c79.jpg', 'Upload/goods/2015-05/5565c3b190c79_thumb.jpg'), ('207', '74', '26', 'Upload/goods/2015-05/5565c3b1e8b50.jpg', 'Upload/goods/2015-05/5565c3b1e8b50_thumb.jpg'), ('208', '75', '26', 'Upload/goods/2015-05/5565c4a1d54e2.jpg', 'Upload/goods/2015-05/5565c4a1d54e2_thumb.jpg'), ('209', '75', '26', 'Upload/goods/2015-05/5565c4a29c3ed.jpg', 'Upload/goods/2015-05/5565c4a29c3ed_thumb.jpg'), ('210', '75', '26', 'Upload/goods/2015-05/5565c4a31535a.jpg', 'Upload/goods/2015-05/5565c4a31535a_thumb.jpg'), ('211', '76', '26', 'Upload/goods/2015-05/5565c55f01a5b.jpg', 'Upload/goods/2015-05/5565c55f01a5b_thumb.jpg'), ('212', '76', '26', 'Upload/goods/2015-05/5565c55f01a5b.jpg', 'Upload/goods/2015-05/5565c55f01a5b_thumb.jpg'), ('213', '76', '26', 'Upload/goods/2015-05/5565c56053212.jpg', 'Upload/goods/2015-05/5565c56053212_thumb.jpg'), ('214', '77', '26', 'Upload/goods/2015-05/5565c5ffcd37a.jpg', 'Upload/goods/2015-05/5565c5ffcd37a_thumb.jpg'), ('215', '77', '26', 'Upload/goods/2015-05/5565c6006fbfa.jpg', 'Upload/goods/2015-05/5565c6006fbfa_thumb.jpg'), ('216', '77', '26', 'Upload/goods/2015-05/5565c600e7625.jpg', 'Upload/goods/2015-05/5565c600e7625_thumb.jpg'), ('217', '77', '26', 'Upload/goods/2015-05/5565c60159599.jpg', 'Upload/goods/2015-05/5565c60159599_thumb.jpg'), ('218', '78', '26', 'Upload/goods/2015-05/5565c713ca4c2.jpg', 'Upload/goods/2015-05/5565c713ca4c2_thumb.jpg'), ('219', '78', '26', 'Upload/goods/2015-05/5565c7149cf0f.jpg', 'Upload/goods/2015-05/5565c7149cf0f_thumb.jpg'), ('220', '78', '26', 'Upload/goods/2015-05/5565c7152c719.jpg', 'Upload/goods/2015-05/5565c7152c719_thumb.jpg'), ('221', '79', '26', 'Upload/goods/2015-05/5565c7e0024c3.jpg', 'Upload/goods/2015-05/5565c7e0024c3_thumb.jpg'), ('222', '79', '26', 'Upload/goods/2015-05/5565c7e0cd10b.jpg', 'Upload/goods/2015-05/5565c7e0cd10b_thumb.jpg'), ('223', '79', '26', 'Upload/goods/2015-05/5565c7e2ecc11.jpg', 'Upload/goods/2015-05/5565c7e2ecc11_thumb.jpg'), ('224', '79', '26', 'Upload/goods/2015-05/5565c7e43a308.jpg', 'Upload/goods/2015-05/5565c7e43a308_thumb.jpg'), ('225', '80', '26', 'Upload/goods/2015-05/5565c8b57be7d.jpg', 'Upload/goods/2015-05/5565c8b57be7d_thumb.jpg'), ('226', '80', '26', 'Upload/goods/2015-05/5565c8b618f70.jpg', 'Upload/goods/2015-05/5565c8b618f70_thumb.jpg'), ('227', '80', '26', 'Upload/goods/2015-05/5565c8b680405.jpg', 'Upload/goods/2015-05/5565c8b680405_thumb.jpg'), ('228', '80', '26', 'Upload/goods/2015-05/5565c8b6df578.jpg', 'Upload/goods/2015-05/5565c8b6df578_thumb.jpg'), ('229', '81', '26', 'Upload/goods/2015-05/5565cc0e30b26.jpg', 'Upload/goods/2015-05/5565cc0e30b26_thumb.jpg'), ('230', '81', '26', 'Upload/goods/2015-05/5565cc1c05591.jpg', 'Upload/goods/2015-05/5565cc1c05591_thumb.jpg'), ('231', '81', '26', 'Upload/goods/2015-05/5565cc221b9cf.jpg', 'Upload/goods/2015-05/5565cc221b9cf_thumb.jpg'), ('232', '82', '26', 'Upload/goods/2015-05/5565ccb259904.jpg', 'Upload/goods/2015-05/5565ccb259904_thumb.jpg'), ('233', '82', '26', 'Upload/goods/2015-05/5565ccb36ddab.jpg', 'Upload/goods/2015-05/5565ccb36ddab_thumb.jpg'), ('234', '82', '26', 'Upload/goods/2015-05/5565ccb53a07f.jpg', 'Upload/goods/2015-05/5565ccb53a07f_thumb.jpg'), ('235', '82', '26', 'Upload/goods/2015-05/5565ccb5efb97.jpg', 'Upload/goods/2015-05/5565ccb5efb97_thumb.jpg'), ('236', '83', '26', 'Upload/goods/2015-05/5565ce87de3d7.jpg', 'Upload/goods/2015-05/5565ce87de3d7_thumb.jpg'), ('237', '83', '26', 'Upload/goods/2015-05/5565ce8c08d27.jpg', 'Upload/goods/2015-05/5565ce8c08d27_thumb.jpg'), ('238', '83', '26', 'Upload/goods/2015-05/5565ce8e2e42c.jpg', 'Upload/goods/2015-05/5565ce8e2e42c_thumb.jpg'), ('239', '84', '26', 'Upload/goods/2015-05/5565cfd272d9f.jpg', 'Upload/goods/2015-05/5565cfd272d9f_thumb.jpg'), ('240', '84', '26', 'Upload/goods/2015-05/5565cfd34f089.jpg', 'Upload/goods/2015-05/5565cfd34f089_thumb.jpg'), ('241', '84', '26', 'Upload/goods/2015-05/5565cfd50bac1.jpg', 'Upload/goods/2015-05/5565cfd50bac1_thumb.jpg'), ('242', '85', '26', 'Upload/goods/2015-05/5565d04bd2287.jpg', 'Upload/goods/2015-05/5565d04bd2287_thumb.jpg'), ('243', '85', '26', 'Upload/goods/2015-05/5565d04e9f999.jpg', 'Upload/goods/2015-05/5565d04e9f999_thumb.jpg'), ('244', '85', '26', 'Upload/goods/2015-05/5565d054be144.jpg', 'Upload/goods/2015-05/5565d054be144_thumb.jpg'), ('245', '86', '26', 'Upload/goods/2015-05/5565d13ed59cc.jpg', 'Upload/goods/2015-05/5565d13ed59cc_thumb.jpg'), ('246', '87', '26', 'Upload/goods/2015-05/5565d1da8bc70.jpg', 'Upload/goods/2015-05/5565d1da8bc70_thumb.jpg'), ('247', '87', '26', 'Upload/goods/2015-05/5565d1db2186e.jpg', 'Upload/goods/2015-05/5565d1db2186e_thumb.jpg'), ('248', '87', '26', 'Upload/goods/2015-05/5565d1db992cc.jpg', 'Upload/goods/2015-05/5565d1db992cc_thumb.jpg'), ('249', '87', '26', 'Upload/goods/2015-05/5565d1dc245eb.jpg', 'Upload/goods/2015-05/5565d1dc245eb_thumb.jpg'), ('250', '88', '26', 'Upload/goods/2015-05/5565d2adb5408.jpg', 'Upload/goods/2015-05/5565d2adb5408_thumb.jpg'), ('251', '88', '26', 'Upload/goods/2015-05/5565d2ae637f7.jpg', 'Upload/goods/2015-05/5565d2ae637f7_thumb.jpg'), ('252', '88', '26', 'Upload/goods/2015-05/5565d2af81e60.jpg', 'Upload/goods/2015-05/5565d2af81e60_thumb.jpg'), ('253', '89', '30', 'Upload/goods/2015-05/5565e0e2261bd.jpg', 'Upload/goods/2015-05/5565e0e2261bd_thumb.jpg'), ('254', '89', '30', 'Upload/goods/2015-05/5565e0e404617.jpg', 'Upload/goods/2015-05/5565e0e404617_thumb.jpg'), ('255', '89', '30', 'Upload/goods/2015-05/5565e0e51306a.jpg', 'Upload/goods/2015-05/5565e0e51306a_thumb.jpg'), ('256', '90', '30', 'Upload/goods/2015-05/5565e21dedf1e.jpg', 'Upload/goods/2015-05/5565e21dedf1e_thumb.jpg'), ('257', '90', '30', 'Upload/goods/2015-05/5565e23546787.jpg', 'Upload/goods/2015-05/5565e23546787_thumb.jpg'), ('258', '90', '30', 'Upload/goods/2015-05/5565e236759a8.jpg', 'Upload/goods/2015-05/5565e236759a8_thumb.jpg'), ('259', '91', '30', 'Upload/goods/2015-05/5565e2f34c1e9.jpg', 'Upload/goods/2015-05/5565e2f34c1e9_thumb.jpg'), ('260', '91', '30', 'Upload/goods/2015-05/5565e2f4be849.jpg', 'Upload/goods/2015-05/5565e2f4be849_thumb.jpg'), ('261', '91', '30', 'Upload/goods/2015-05/5565e2f69e74d.jpg', 'Upload/goods/2015-05/5565e2f69e74d_thumb.jpg'), ('262', '92', '30', 'Upload/goods/2015-05/5565e2f34c1e9.jpg', 'Upload/goods/2015-05/5565e2f34c1e9_thumb.jpg'), ('263', '92', '30', 'Upload/goods/2015-05/5565e2f4be849.jpg', 'Upload/goods/2015-05/5565e2f4be849_thumb.jpg'), ('264', '92', '30', 'Upload/goods/2015-05/5565e2f69e74d.jpg', 'Upload/goods/2015-05/5565e2f69e74d_thumb.jpg'), ('265', '93', '30', 'Upload/goods/2015-05/5565e2f34c1e9.jpg', 'Upload/goods/2015-05/5565e2f34c1e9_thumb.jpg'), ('266', '93', '30', 'Upload/goods/2015-05/5565e2f4be849.jpg', 'Upload/goods/2015-05/5565e2f4be849_thumb.jpg'), ('267', '93', '30', 'Upload/goods/2015-05/5565e2f69e74d.jpg', 'Upload/goods/2015-05/5565e2f69e74d_thumb.jpg'), ('268', '94', '30', 'Upload/goods/2015-05/5565e5aebd4c4.jpg', 'Upload/goods/2015-05/5565e5aebd4c4_thumb.jpg'), ('269', '94', '30', 'Upload/goods/2015-05/5565e5af656bc.jpg', 'Upload/goods/2015-05/5565e5af656bc_thumb.jpg'), ('270', '94', '30', 'Upload/goods/2015-05/5565e5afcbf29.jpg', 'Upload/goods/2015-05/5565e5afcbf29_thumb.jpg'), ('271', '95', '30', 'Upload/goods/2015-05/5565e6c41e1f6.jpg', 'Upload/goods/2015-05/5565e6c41e1f6_thumb.jpg'), ('272', '95', '30', 'Upload/goods/2015-05/5565e6c4cbde8.jpg', 'Upload/goods/2015-05/5565e6c4cbde8_thumb.jpg');
INSERT INTO `rmt_goods_gallerys` VALUES ('273', '95', '30', 'Upload/goods/2015-05/5565e6c563ff9.jpg', 'Upload/goods/2015-05/5565e6c563ff9_thumb.jpg'), ('274', '96', '30', 'Upload/goods/2015-05/5565e79d29c0b.jpg', 'Upload/goods/2015-05/5565e79d29c0b_thumb.jpg'), ('275', '96', '30', 'Upload/goods/2015-05/5565e79e3b157.jpg', 'Upload/goods/2015-05/5565e79e3b157_thumb.jpg'), ('276', '96', '30', 'Upload/goods/2015-05/5565e79f764b7.jpg', 'Upload/goods/2015-05/5565e79f764b7_thumb.jpg'), ('277', '97', '30', 'Upload/goods/2015-05/5565e81d6d662.jpg', 'Upload/goods/2015-05/5565e81d6d662_thumb.jpg'), ('278', '97', '30', 'Upload/goods/2015-05/5565e81e1244b.jpg', 'Upload/goods/2015-05/5565e81e1244b_thumb.jpg'), ('279', '98', '30', 'Upload/goods/2015-05/5565e8c4de5dd.jpg', 'Upload/goods/2015-05/5565e8c4de5dd_thumb.jpg'), ('280', '98', '30', 'Upload/goods/2015-05/5565e8c5bc256.jpg', 'Upload/goods/2015-05/5565e8c5bc256_thumb.jpg'), ('281', '99', '30', 'Upload/goods/2015-05/5565e9d80e76d.jpg', 'Upload/goods/2015-05/5565e9d80e76d_thumb.jpg'), ('282', '99', '30', 'Upload/goods/2015-05/5565e9d91f8c8.jpg', 'Upload/goods/2015-05/5565e9d91f8c8_thumb.jpg'), ('283', '99', '30', 'Upload/goods/2015-05/5565e9d9c79f9.jpg', 'Upload/goods/2015-05/5565e9d9c79f9_thumb.jpg'), ('284', '109', '12', 'Upload/goods/2015-05/556b086ea67c2.jpg', 'Upload/goods/2015-05/556b086ea67c2_thumb.jpg'), ('285', '109', '12', 'Upload/goods/2015-05/556b086f029d9.jpg', 'Upload/goods/2015-05/556b086f029d9_thumb.jpg'), ('286', '109', '12', 'Upload/goods/2015-05/556b086f5b93c.jpg', 'Upload/goods/2015-05/556b086f5b93c_thumb.jpg'), ('287', '111', '12', 'Upload/goods/2015-05/556b0a9b0d13b.jpg', 'Upload/goods/2015-05/556b0a9b0d13b_thumb.jpg'), ('288', '111', '12', 'Upload/goods/2015-05/556b0a9b6018d.jpg', 'Upload/goods/2015-05/556b0a9b6018d_thumb.jpg'), ('289', '112', '12', 'Upload/goods/2015-05/556b0b1360524.jpg', 'Upload/goods/2015-05/556b0b1360524_thumb.jpg'), ('290', '113', '12', 'Upload/goods/2015-05/556b0c26ee7ae.jpg', 'Upload/goods/2015-05/556b0c26ee7ae_thumb.jpg'), ('291', '113', '12', 'Upload/goods/2015-05/556b0c27869e0.jpg', 'Upload/goods/2015-05/556b0c27869e0_thumb.jpg'), ('292', '114', '12', 'Upload/goods/2015-05/556b0f0430a02.jpg', 'Upload/goods/2015-05/556b0f0430a02_thumb.jpg'), ('293', '115', '12', 'Upload/goods/2015-05/556b0f596175c.jpg', 'Upload/goods/2015-05/556b0f596175c_thumb.jpg'), ('294', '4', '4', 'Upload/goods/2015-05/556b100dc6ec3.jpg', 'Upload/goods/2015-05/556b100dc6ec3_thumb.jpg'), ('295', '117', '4', 'Upload/goods/2015-05/556b11d98f37e.jpg', 'Upload/goods/2015-05/556b11d98f37e_thumb.jpg'), ('296', '117', '4', 'Upload/goods/2015-05/556b11da0fc38.jpg', 'Upload/goods/2015-05/556b11da0fc38_thumb.jpg'), ('297', '121', '13', 'Upload/goods/2015-05/556b1c3090090.jpg', 'Upload/goods/2015-05/556b1c3090090_thumb.jpg'), ('298', '121', '13', 'Upload/goods/2015-05/556b1c3103de4.jpg', 'Upload/goods/2015-05/556b1c3103de4_thumb.jpg'), ('299', '124', '13', 'Upload/goods/2015-05/556b1d99e2edd.jpg', 'Upload/goods/2015-05/556b1d99e2edd_thumb.jpg'), ('300', '125', '13', 'Upload/goods/2015-05/556b1dd66d5fc.jpg', 'Upload/goods/2015-05/556b1dd66d5fc_thumb.jpg'), ('301', '127', '11', 'Upload/goods/2015-05/556b1fcb90e35.jpg', 'Upload/goods/2015-05/556b1fcb90e35_thumb.jpg'), ('302', '128', '11', 'Upload/goods/2015-05/556b202a693a0.jpg', 'Upload/goods/2015-05/556b202a693a0_thumb.jpg'), ('303', '129', '11', 'Upload/goods/2015-05/556b2048ecf54.jpg', 'Upload/goods/2015-05/556b2048ecf54_thumb.jpg'), ('304', '131', '11', 'Upload/goods/2015-05/556b20ca427a6.jpg', 'Upload/goods/2015-05/556b20ca427a6_thumb.jpg'), ('305', '133', '15', 'Upload/goods/2015-06/556bad89c3cc8.jpg', 'Upload/goods/2015-06/556bad89c3cc8_thumb.jpg'), ('306', '133', '15', 'Upload/goods/2015-06/556bad8a3d477.jpg', 'Upload/goods/2015-06/556bad8a3d477_thumb.jpg'), ('307', '133', '15', 'Upload/goods/2015-06/556bad8a882e6.jpg', 'Upload/goods/2015-06/556bad8a882e6_thumb.jpg'), ('308', '133', '15', 'Upload/goods/2015-06/556bad8adc0a7.jpg', 'Upload/goods/2015-06/556bad8adc0a7_thumb.jpg'), ('309', '137', '15', 'Upload/goods/2015-06/556bb0fcb72fe.jpg', 'Upload/goods/2015-06/556bb0fcb72fe_thumb.jpg'), ('310', '137', '15', 'Upload/goods/2015-06/556bb0fd12afa.jpg', 'Upload/goods/2015-06/556bb0fd12afa_thumb.jpg'), ('311', '137', '15', 'Upload/goods/2015-06/556bb0fd758b5.jpg', 'Upload/goods/2015-06/556bb0fd758b5_thumb.jpg'), ('312', '140', '15', 'Upload/goods/2015-06/556bb4523ee91.jpg', 'Upload/goods/2015-06/556bb4523ee91_thumb.jpg'), ('313', '140', '15', 'Upload/goods/2015-06/556bb452c1370.jpg', 'Upload/goods/2015-06/556bb452c1370_thumb.jpg'), ('314', '140', '15', 'Upload/goods/2015-06/556bb453610df.jpg', 'Upload/goods/2015-06/556bb453610df_thumb.jpg'), ('315', '140', '15', 'Upload/goods/2015-06/556bb453b5b07.jpg', 'Upload/goods/2015-06/556bb453b5b07_thumb.jpg'), ('316', '140', '15', 'Upload/goods/2015-06/556bb45417e1b.jpg', 'Upload/goods/2015-06/556bb45417e1b_thumb.jpg'), ('317', '141', '15', 'Upload/goods/2015-06/556bbd4d914e2.jpg', 'Upload/goods/2015-06/556bbd4d914e2_thumb.jpg'), ('318', '141', '15', 'Upload/goods/2015-06/556bbd4de65a0.jpg', 'Upload/goods/2015-06/556bbd4de65a0_thumb.jpg'), ('319', '141', '15', 'Upload/goods/2015-06/556bbd4e649b3.jpg', 'Upload/goods/2015-06/556bbd4e649b3_thumb.jpg'), ('320', '142', '15', 'Upload/goods/2015-06/556bbf43efdd7.jpg', 'Upload/goods/2015-06/556bbf43efdd7_thumb.jpg'), ('321', '142', '15', 'Upload/goods/2015-06/556bbf445e196.jpg', 'Upload/goods/2015-06/556bbf445e196_thumb.jpg'), ('322', '142', '15', 'Upload/goods/2015-06/556bbf44c6471.jpg', 'Upload/goods/2015-06/556bbf44c6471_thumb.jpg'), ('323', '142', '15', 'Upload/goods/2015-06/556bbf453742d.jpg', 'Upload/goods/2015-06/556bbf453742d_thumb.jpg'), ('324', '143', '15', 'Upload/goods/2015-06/556bc6382cbe3.jpg', 'Upload/goods/2015-06/556bc6382cbe3_thumb.jpg'), ('325', '143', '15', 'Upload/goods/2015-06/556bc6388a413.jpg', 'Upload/goods/2015-06/556bc6388a413_thumb.jpg'), ('326', '143', '15', 'Upload/goods/2015-06/556bc63937d27.jpg', 'Upload/goods/2015-06/556bc63937d27_thumb.jpg'), ('327', '143', '15', 'Upload/goods/2015-06/556bc6399ff4d.jpg', 'Upload/goods/2015-06/556bc6399ff4d_thumb.jpg'), ('328', '144', '15', 'Upload/goods/2015-06/556bcbbe1ed42.jpg', 'Upload/goods/2015-06/556bcbbe1ed42_thumb.jpg'), ('329', '144', '15', 'Upload/goods/2015-06/556bcbbe7c0fa.jpg', 'Upload/goods/2015-06/556bcbbe7c0fa_thumb.jpg'), ('330', '144', '15', 'Upload/goods/2015-06/556bcbbef4125.jpg', 'Upload/goods/2015-06/556bcbbef4125_thumb.jpg'), ('331', '145', '15', 'Upload/goods/2015-06/556bcc363c6be.jpg', 'Upload/goods/2015-06/556bcc363c6be_thumb.jpg'), ('332', '145', '15', 'Upload/goods/2015-06/556bcc369c75b.jpg', 'Upload/goods/2015-06/556bcc369c75b_thumb.jpg'), ('333', '145', '15', 'Upload/goods/2015-06/556bcc3713b3b.jpg', 'Upload/goods/2015-06/556bcc3713b3b_thumb.jpg'), ('334', '146', '15', 'Upload/goods/2015-06/556bcc8fdf4cd.jpg', 'Upload/goods/2015-06/556bcc8fdf4cd_thumb.jpg'), ('335', '146', '15', 'Upload/goods/2015-06/556bcc9076314.jpg', 'Upload/goods/2015-06/556bcc9076314_thumb.jpg'), ('336', '146', '15', 'Upload/goods/2015-06/556bcc9721c42.jpg', 'Upload/goods/2015-06/556bcc9721c42_thumb.jpg'), ('337', '147', '15', 'Upload/goods/2015-06/556bccf6d056d.jpg', 'Upload/goods/2015-06/556bccf6d056d_thumb.jpg'), ('338', '147', '15', 'Upload/goods/2015-06/556bccf868149.jpg', 'Upload/goods/2015-06/556bccf868149_thumb.jpg'), ('339', '147', '15', 'Upload/goods/2015-06/556bccf96c570.jpg', 'Upload/goods/2015-06/556bccf96c570_thumb.jpg'), ('340', '147', '15', 'Upload/goods/2015-06/556bccfa3d7c9.jpg', 'Upload/goods/2015-06/556bccfa3d7c9_thumb.jpg'), ('341', '148', '15', 'Upload/goods/2015-06/556bce1174400.jpg', 'Upload/goods/2015-06/556bce1174400_thumb.jpg'), ('342', '149', '15', 'Upload/goods/2015-06/556bced73de18.jpg', 'Upload/goods/2015-06/556bced73de18_thumb.jpg'), ('343', '153', '15', 'Upload/goods/2015-06/556bd0b6737d5.jpg', 'Upload/goods/2015-06/556bd0b6737d5_thumb.jpg'), ('350', '160', '20', 'Upload/goods/2015-06/556c1337277dd.jpg', 'Upload/goods/2015-06/556c1337277dd_thumb.jpg'), ('351', '160', '20', 'Upload/goods/2015-06/556c133781136.jpg', 'Upload/goods/2015-06/556c133781136_thumb.jpg'), ('352', '157', '20', 'Upload/goods/2015-06/556be7fd12d80.jpg', 'Upload/goods/2015-06/556be7fd12d80_thumb.jpg'), ('353', '156', '20', 'Upload/goods/2015-06/556be78648caf.jpg', 'Upload/goods/2015-06/556be78648caf_thumb.jpg'), ('354', '156', '20', 'Upload/goods/2015-06/556be787287a6.jpg', 'Upload/goods/2015-06/556be787287a6_thumb.jpg'), ('355', '158', '20', 'Upload/goods/2015-06/556bf9819ece2.jpg', 'Upload/goods/2015-06/556bf9819ece2_thumb.jpg'), ('356', '158', '20', 'Upload/goods/2015-06/556bf982060e9.jpg', 'Upload/goods/2015-06/556bf982060e9_thumb.jpg'), ('357', '159', '20', 'Upload/goods/2015-06/556bf9fda709e.jpg', 'Upload/goods/2015-06/556bf9fda709e_thumb.jpg'), ('358', '161', '20', 'Upload/goods/2015-06/556c147ea4142.jpg', 'Upload/goods/2015-06/556c147ea4142_thumb.jpg'), ('359', '161', '20', 'Upload/goods/2015-06/556c147f0d64b.jpg', 'Upload/goods/2015-06/556c147f0d64b_thumb.jpg'), ('360', '161', '20', 'Upload/goods/2015-06/556c147f6cfa1.jpg', 'Upload/goods/2015-06/556c147f6cfa1_thumb.jpg'), ('361', '162', '20', 'Upload/goods/2015-06/556c15333e140.jpg', 'Upload/goods/2015-06/556c15333e140_thumb.jpg'), ('362', '163', '20', 'Upload/goods/2015-06/556c15b9bdca7.jpg', 'Upload/goods/2015-06/556c15b9bdca7_thumb.jpg'), ('363', '163', '20', 'Upload/goods/2015-06/556c15ba27cf0.jpg', 'Upload/goods/2015-06/556c15ba27cf0_thumb.jpg'), ('364', '164', '20', 'Upload/goods/2015-06/556c17899e10b.jpg', 'Upload/goods/2015-06/556c17899e10b_thumb.jpg'), ('365', '164', '20', 'Upload/goods/2015-06/556c178c165b2.jpg', 'Upload/goods/2015-06/556c178c165b2_thumb.jpg'), ('366', '168', '20', 'Upload/goods/2015-06/556c195983cdb.jpg', 'Upload/goods/2015-06/556c195983cdb_thumb.jpg'), ('367', '169', '20', 'Upload/goods/2015-06/556c19c90f9b3.jpg', 'Upload/goods/2015-06/556c19c90f9b3_thumb.jpg'), ('368', '171', '20', 'Upload/goods/2015-06/556c1ae574add.jpg', 'Upload/goods/2015-06/556c1ae574add_thumb.jpg'), ('369', '172', '20', 'Upload/goods/2015-06/556c1d2381be7.jpg', 'Upload/goods/2015-06/556c1d2381be7_thumb.jpg'), ('370', '173', '20', 'Upload/goods/2015-06/556c1d703f39f.jpg', 'Upload/goods/2015-06/556c1d703f39f_thumb.jpg'), ('371', '173', '20', 'Upload/goods/2015-06/556c1d7b55adf.jpg', 'Upload/goods/2015-06/556c1d7b55adf_thumb.jpg'), ('372', '174', '20', 'Upload/goods/2015-06/556c1e3c6bea4.jpg', 'Upload/goods/2015-06/556c1e3c6bea4_thumb.jpg'), ('373', '176', '20', 'Upload/goods/2015-06/556c1f4ca436b.jpg', 'Upload/goods/2015-06/556c1f4ca436b_thumb.jpg'), ('374', '176', '20', 'Upload/goods/2015-06/556c1f4d0f785.jpg', 'Upload/goods/2015-06/556c1f4d0f785_thumb.jpg'), ('375', '177', '20', 'Upload/goods/2015-06/556c1ffc80b8c.jpg', 'Upload/goods/2015-06/556c1ffc80b8c_thumb.jpg'), ('376', '177', '20', 'Upload/goods/2015-06/556c1ffcf04b2.jpg', 'Upload/goods/2015-06/556c1ffcf04b2_thumb.jpg'), ('377', '177', '20', 'Upload/goods/2015-06/556c1ffd585df.jpg', 'Upload/goods/2015-06/556c1ffd585df_thumb.jpg'), ('378', '177', '20', 'Upload/goods/2015-06/556c1ffde645b.jpg', 'Upload/goods/2015-06/556c1ffde645b_thumb.jpg');
INSERT INTO `rmt_goods_gallerys` VALUES ('379', '178', '20', 'Upload/goods/2015-06/556c20cac978e.jpg', 'Upload/goods/2015-06/556c20cac978e_thumb.jpg'), ('380', '178', '20', 'Upload/goods/2015-06/556c20cb5be5a.jpg', 'Upload/goods/2015-06/556c20cb5be5a_thumb.jpg'), ('381', '178', '20', 'Upload/goods/2015-06/556c20cbb9935.jpg', 'Upload/goods/2015-06/556c20cbb9935_thumb.jpg'), ('383', '182', '23', 'Upload/goods/2015-06/556c26ff07de2.jpg', 'Upload/goods/2015-06/556c26ff07de2_thumb.jpg'), ('384', '183', '23', 'Upload/goods/2015-06/556c27b9af355.jpg', 'Upload/goods/2015-06/556c27b9af355_thumb.jpg'), ('385', '183', '23', 'Upload/goods/2015-06/556c27ba1b9ba.jpg', 'Upload/goods/2015-06/556c27ba1b9ba_thumb.jpg'), ('386', '184', '23', 'Upload/goods/2015-06/556c28532a1af.jpg', 'Upload/goods/2015-06/556c28532a1af_thumb.jpg'), ('387', '185', '23', 'Upload/goods/2015-06/556c28d50ba5d.jpg', 'Upload/goods/2015-06/556c28d50ba5d_thumb.jpg'), ('388', '185', '23', 'Upload/goods/2015-06/556c28d56954c.jpg', 'Upload/goods/2015-06/556c28d56954c_thumb.jpg'), ('389', '186', '23', 'Upload/goods/2015-06/556c2941585ab.jpg', 'Upload/goods/2015-06/556c2941585ab_thumb.jpg'), ('390', '186', '23', 'Upload/goods/2015-06/556c2941bbbbe.jpg', 'Upload/goods/2015-06/556c2941bbbbe_thumb.jpg'), ('391', '187', '23', 'Upload/goods/2015-06/556c2a235511a.jpg', 'Upload/goods/2015-06/556c2a235511a_thumb.jpg'), ('392', '180', '23', 'Upload/goods/2015-06/556c257eb6123.jpg', 'Upload/goods/2015-06/556c257eb6123_thumb.jpg'), ('393', '188', '23', 'Upload/goods/2015-06/556c2d4134582.jpg', 'Upload/goods/2015-06/556c2d4134582_thumb.jpg'), ('394', '189', '23', 'Upload/goods/2015-06/556c2df9a5c53.jpg', 'Upload/goods/2015-06/556c2df9a5c53_thumb.jpg'), ('395', '189', '23', 'Upload/goods/2015-06/556c2dfa6e0c4.jpg', 'Upload/goods/2015-06/556c2dfa6e0c4_thumb.jpg'), ('396', '189', '23', 'Upload/goods/2015-06/556c2dfac649d.jpg', 'Upload/goods/2015-06/556c2dfac649d_thumb.jpg'), ('397', '190', '23', 'Upload/goods/2015-06/556c2efc94bf9.jpg', 'Upload/goods/2015-06/556c2efc94bf9_thumb.jpg'), ('398', '190', '23', 'Upload/goods/2015-06/556c2f043bcfd.jpg', 'Upload/goods/2015-06/556c2f043bcfd_thumb.jpg'), ('399', '191', '23', 'Upload/goods/2015-06/556c46cb281a1.jpg', 'Upload/goods/2015-06/556c46cb281a1_thumb.jpg'), ('400', '191', '23', 'Upload/goods/2015-06/556c46cb8d432.jpg', 'Upload/goods/2015-06/556c46cb8d432_thumb.jpg'), ('401', '193', '23', 'Upload/goods/2015-06/556c476c62ab8.jpg', 'Upload/goods/2015-06/556c476c62ab8_thumb.jpg'), ('402', '194', '23', 'Upload/goods/2015-06/556c47be669aa.jpg', 'Upload/goods/2015-06/556c47be669aa_thumb.jpg'), ('403', '194', '23', 'Upload/goods/2015-06/556c47beb949c.jpg', 'Upload/goods/2015-06/556c47beb949c_thumb.jpg'), ('404', '194', '23', 'Upload/goods/2015-06/556c47bf1cf10.jpg', 'Upload/goods/2015-06/556c47bf1cf10_thumb.jpg'), ('405', '196', '23', 'Upload/goods/2015-06/556c484e8ddc9.jpg', 'Upload/goods/2015-06/556c484e8ddc9_thumb.jpg'), ('406', '197', '23', 'Upload/goods/2015-06/556c48a4b3ac2.jpg', 'Upload/goods/2015-06/556c48a4b3ac2_thumb.jpg'), ('407', '197', '23', 'Upload/goods/2015-06/556c48a5534ca.jpg', 'Upload/goods/2015-06/556c48a5534ca_thumb.jpg'), ('408', '200', '23', 'Upload/goods/2015-06/556c49b98bd6c.jpg', 'Upload/goods/2015-06/556c49b98bd6c_thumb.jpg'), ('409', '201', '23', 'Upload/goods/2015-06/556c4a3e1fe15.jpg', 'Upload/goods/2015-06/556c4a3e1fe15_thumb.jpg'), ('410', '201', '23', 'Upload/goods/2015-06/556c4a3e79b40.jpg', 'Upload/goods/2015-06/556c4a3e79b40_thumb.jpg'), ('411', '204', '23', 'Upload/goods/2015-06/556c4fcf388ca.jpg', 'Upload/goods/2015-06/556c4fcf388ca_thumb.jpg'), ('412', '204', '23', 'Upload/goods/2015-06/556c4fcf9f1ed.jpg', 'Upload/goods/2015-06/556c4fcf9f1ed_thumb.jpg'), ('413', '205', '23', 'Upload/goods/2015-06/556c501f6c554.jpg', 'Upload/goods/2015-06/556c501f6c554_thumb.jpg'), ('414', '205', '23', 'Upload/goods/2015-06/556c501fc9a5c.jpg', 'Upload/goods/2015-06/556c501fc9a5c_thumb.jpg'), ('415', '206', '23', 'Upload/goods/2015-06/556c506e60c34.jpg', 'Upload/goods/2015-06/556c506e60c34_thumb.jpg'), ('416', '206', '23', 'Upload/goods/2015-06/556c506ec378d.jpg', 'Upload/goods/2015-06/556c506ec378d_thumb.jpg'), ('417', '207', '27', 'Upload/goods/2015-06/556c526f3413b.jpg', 'Upload/goods/2015-06/556c526f3413b_thumb.jpg'), ('418', '207', '27', 'Upload/goods/2015-06/556c526f916b7.jpg', 'Upload/goods/2015-06/556c526f916b7_thumb.jpg'), ('419', '207', '27', 'Upload/goods/2015-06/556c52700090b.jpg', 'Upload/goods/2015-06/556c52700090b_thumb.jpg'), ('420', '208', '27', 'Upload/goods/2015-06/556c53743e932.jpg', 'Upload/goods/2015-06/556c53743e932_thumb.jpg'), ('421', '208', '27', 'Upload/goods/2015-06/556c5374c631c.jpg', 'Upload/goods/2015-06/556c5374c631c_thumb.jpg'), ('422', '208', '27', 'Upload/goods/2015-06/556c53767ae6e.jpg', 'Upload/goods/2015-06/556c53767ae6e_thumb.jpg'), ('423', '209', '27', 'Upload/goods/2015-06/556c54664934a.jpg', 'Upload/goods/2015-06/556c54664934a_thumb.jpg'), ('424', '209', '27', 'Upload/goods/2015-06/556c54670e219.jpg', 'Upload/goods/2015-06/556c54670e219_thumb.jpg'), ('425', '210', '27', 'Upload/goods/2015-06/556c54fcea013.jpg', 'Upload/goods/2015-06/556c54fcea013_thumb.jpg'), ('426', '210', '27', 'Upload/goods/2015-06/556c54fd8e239.jpg', 'Upload/goods/2015-06/556c54fd8e239_thumb.jpg'), ('427', '210', '27', 'Upload/goods/2015-06/556c54fe467e9.jpg', 'Upload/goods/2015-06/556c54fe467e9_thumb.jpg'), ('428', '211', '27', 'Upload/goods/2015-06/556c567b1d130.jpg', 'Upload/goods/2015-06/556c567b1d130_thumb.jpg'), ('429', '211', '27', 'Upload/goods/2015-06/556c567c270e8.jpg', 'Upload/goods/2015-06/556c567c270e8_thumb.jpg'), ('430', '211', '27', 'Upload/goods/2015-06/556c567cb4efc.jpg', 'Upload/goods/2015-06/556c567cb4efc_thumb.jpg'), ('431', '212', '27', 'Upload/goods/2015-06/556c5765a6b70.jpg', 'Upload/goods/2015-06/556c5765a6b70_thumb.jpg'), ('432', '212', '27', 'Upload/goods/2015-06/556c57664c453.jpg', 'Upload/goods/2015-06/556c57664c453_thumb.jpg'), ('433', '213', '27', 'Upload/goods/2015-06/556c5811acc97.jpg', 'Upload/goods/2015-06/556c5811acc97_thumb.jpg'), ('434', '213', '27', 'Upload/goods/2015-06/556c58129638f.jpg', 'Upload/goods/2015-06/556c58129638f_thumb.jpg'), ('435', '213', '27', 'Upload/goods/2015-06/556c581342225.jpg', 'Upload/goods/2015-06/556c581342225_thumb.jpg'), ('436', '213', '27', 'Upload/goods/2015-06/556c58142ac10.jpg', 'Upload/goods/2015-06/556c58142ac10_thumb.jpg'), ('437', '214', '27', 'Upload/goods/2015-06/556c59125d44c.jpg', 'Upload/goods/2015-06/556c59125d44c_thumb.jpg'), ('438', '214', '27', 'Upload/goods/2015-06/556c591328371.jpg', 'Upload/goods/2015-06/556c591328371_thumb.jpg'), ('439', '215', '27', 'Upload/goods/2015-06/556c5d0c0cab6.jpg', 'Upload/goods/2015-06/556c5d0c0cab6_thumb.jpg'), ('440', '216', '27', 'Upload/goods/2015-06/556c5df155bd8.jpg', 'Upload/goods/2015-06/556c5df155bd8_thumb.jpg'), ('441', '216', '27', 'Upload/goods/2015-06/556c5df1bc9c5.jpg', 'Upload/goods/2015-06/556c5df1bc9c5_thumb.jpg'), ('442', '217', '27', 'Upload/goods/2015-06/556c5e5e87993.jpg', 'Upload/goods/2015-06/556c5e5e87993_thumb.jpg'), ('443', '217', '27', 'Upload/goods/2015-06/556c5e5f57f11.jpg', 'Upload/goods/2015-06/556c5e5f57f11_thumb.jpg'), ('444', '218', '27', 'Upload/goods/2015-06/556c5ed3c254a.jpg', 'Upload/goods/2015-06/556c5ed3c254a_thumb.jpg'), ('445', '220', '27', 'Upload/goods/2015-06/556c5ff218931.jpg', 'Upload/goods/2015-06/556c5ff218931_thumb.jpg'), ('446', '220', '27', 'Upload/goods/2015-06/556c5ff289bbe.jpg', 'Upload/goods/2015-06/556c5ff289bbe_thumb.jpg'), ('447', '220', '27', 'Upload/goods/2015-06/556c5ff2f104b.jpg', 'Upload/goods/2015-06/556c5ff2f104b_thumb.jpg'), ('448', '221', '27', 'Upload/goods/2015-06/556c60937cedb.jpg', 'Upload/goods/2015-06/556c60937cedb_thumb.jpg'), ('449', '221', '27', 'Upload/goods/2015-06/556c6094460d3.jpg', 'Upload/goods/2015-06/556c6094460d3_thumb.jpg'), ('450', '222', '27', 'Upload/goods/2015-06/556c610dec8d7.jpg', 'Upload/goods/2015-06/556c610dec8d7_thumb.jpg'), ('451', '224', '31', 'Upload/goods/2015-06/556c65b4c99d5.jpg', 'Upload/goods/2015-06/556c65b4c99d5_thumb.jpg'), ('452', '224', '31', 'Upload/goods/2015-06/556c65b53995e.jpg', 'Upload/goods/2015-06/556c65b53995e_thumb.jpg'), ('453', '225', '31', 'Upload/goods/2015-06/556c661218d22.jpg', 'Upload/goods/2015-06/556c661218d22_thumb.jpg'), ('454', '225', '31', 'Upload/goods/2015-06/556c6612a9efb.jpg', 'Upload/goods/2015-06/556c6612a9efb_thumb.jpg'), ('455', '226', '31', 'Upload/goods/2015-06/556c664307fe8.jpg', 'Upload/goods/2015-06/556c664307fe8_thumb.jpg'), ('456', '226', '31', 'Upload/goods/2015-06/556c6643c0ec7.jpg', 'Upload/goods/2015-06/556c6643c0ec7_thumb.jpg'), ('457', '226', '31', 'Upload/goods/2015-06/556c66442dc06.jpg', 'Upload/goods/2015-06/556c66442dc06_thumb.jpg'), ('458', '227', '31', 'Upload/goods/2015-06/556c6751e7dc9.jpg', 'Upload/goods/2015-06/556c6751e7dc9_thumb.jpg'), ('459', '227', '31', 'Upload/goods/2015-06/556c6752b0901.jpg', 'Upload/goods/2015-06/556c6752b0901_thumb.jpg'), ('460', '230', '31', 'Upload/goods/2015-06/556c6823db5a1.jpg', 'Upload/goods/2015-06/556c6823db5a1_thumb.jpg'), ('461', '231', '31', 'Upload/goods/2015-06/556c695db83ab.jpg', 'Upload/goods/2015-06/556c695db83ab_thumb.jpg'), ('462', '232', '31', 'Upload/goods/2015-06/556c69b8c762b.jpg', 'Upload/goods/2015-06/556c69b8c762b_thumb.jpg'), ('463', '233', '31', 'Upload/goods/2015-06/556c6a0adcca0.jpg', 'Upload/goods/2015-06/556c6a0adcca0_thumb.jpg'), ('464', '235', '31', 'Upload/goods/2015-06/556c6aca3235f.jpg', 'Upload/goods/2015-06/556c6aca3235f_thumb.jpg'), ('465', '236', '31', 'Upload/goods/2015-06/556c6b6248f39.jpg', 'Upload/goods/2015-06/556c6b6248f39_thumb.jpg'), ('466', '236', '31', 'Upload/goods/2015-06/556c6b62d3407.jpg', 'Upload/goods/2015-06/556c6b62d3407_thumb.jpg'), ('467', '236', '31', 'Upload/goods/2015-06/556c6b6343533.jpg', 'Upload/goods/2015-06/556c6b6343533_thumb.jpg'), ('468', '236', '31', 'Upload/goods/2015-06/556c6b63a9231.jpg', 'Upload/goods/2015-06/556c6b63a9231_thumb.jpg'), ('469', '237', '31', 'Upload/goods/2015-06/556c6b8575a00.jpg', 'Upload/goods/2015-06/556c6b8575a00_thumb.jpg'), ('470', '238', '31', 'Upload/goods/2015-06/556c6c13245c8.jpg', 'Upload/goods/2015-06/556c6c13245c8_thumb.jpg'), ('471', '239', '31', 'Upload/goods/2015-06/556c6c93c278b.jpg', 'Upload/goods/2015-06/556c6c93c278b_thumb.jpg'), ('472', '239', '31', 'Upload/goods/2015-06/556c6c944cc72.jpg', 'Upload/goods/2015-06/556c6c944cc72_thumb.jpg'), ('473', '239', '31', 'Upload/goods/2015-06/556c6c94bc9fb.jpg', 'Upload/goods/2015-06/556c6c94bc9fb_thumb.jpg'), ('474', '241', '31', 'Upload/goods/2015-06/556c6d8cb487c.jpg', 'Upload/goods/2015-06/556c6d8cb487c_thumb.jpg'), ('475', '243', '31', 'Upload/goods/2015-06/556c6e4d54e10.jpg', 'Upload/goods/2015-06/556c6e4d54e10_thumb.jpg'), ('476', '243', '31', 'Upload/goods/2015-06/556c6e4db70d5.jpg', 'Upload/goods/2015-06/556c6e4db70d5_thumb.jpg'), ('477', '244', '31', 'Upload/goods/2015-06/556c6eedbad5f.jpg', 'Upload/goods/2015-06/556c6eedbad5f_thumb.jpg'), ('478', '244', '31', 'Upload/goods/2015-06/556c6eee81dbb.jpg', 'Upload/goods/2015-06/556c6eee81dbb_thumb.jpg'), ('479', '245', '31', 'Upload/goods/2015-06/556c6f810b870.jpg', 'Upload/goods/2015-06/556c6f810b870_thumb.jpg');
INSERT INTO `rmt_goods_gallerys` VALUES ('480', '245', '31', 'Upload/goods/2015-06/556c6f81946ce.jpg', 'Upload/goods/2015-06/556c6f81946ce_thumb.jpg'), ('481', '245', '31', 'Upload/goods/2015-06/556c6f8200dc1.jpg', 'Upload/goods/2015-06/556c6f8200dc1_thumb.jpg'), ('482', '246', '31', 'Upload/goods/2015-06/556c6fd85734f.jpg', 'Upload/goods/2015-06/556c6fd85734f_thumb.jpg'), ('483', '246', '31', 'Upload/goods/2015-06/556c6fd8ec656.jpg', 'Upload/goods/2015-06/556c6fd8ec656_thumb.jpg'), ('484', '247', '31', 'Upload/goods/2015-06/556c72a728acc.jpg', 'Upload/goods/2015-06/556c72a728acc_thumb.jpg'), ('485', '247', '31', 'Upload/goods/2015-06/556c72a7c4f5b.jpg', 'Upload/goods/2015-06/556c72a7c4f5b_thumb.jpg'), ('486', '248', '31', 'Upload/goods/2015-06/556c7320c9066.jpg', 'Upload/goods/2015-06/556c7320c9066_thumb.jpg'), ('487', '250', '31', 'Upload/goods/2015-06/556c743c9e0df.jpg', 'Upload/goods/2015-06/556c743c9e0df_thumb.jpg'), ('488', '250', '31', 'Upload/goods/2015-06/556c743d2285c.jpg', 'Upload/goods/2015-06/556c743d2285c_thumb.jpg'), ('489', '251', '31', 'Upload/goods/2015-06/556c74ade2a55.jpg', 'Upload/goods/2015-06/556c74ade2a55_thumb.jpg'), ('490', '252', '31', 'Upload/goods/2015-06/556c751ad110e.jpg', 'Upload/goods/2015-06/556c751ad110e_thumb.jpg'), ('491', '252', '31', 'Upload/goods/2015-06/556c751b514dc.jpg', 'Upload/goods/2015-06/556c751b514dc_thumb.jpg'), ('492', '253', '31', 'Upload/goods/2015-06/556c758e77960.jpg', 'Upload/goods/2015-06/556c758e77960_thumb.jpg'), ('493', '253', '31', 'Upload/goods/2015-06/556c758ee4d25.jpg', 'Upload/goods/2015-06/556c758ee4d25_thumb.jpg'), ('495', '272', '1', 'Upload/goods/2016-02/56cec38114b73.jpg', 'Upload/goods/2016-02/56cec38114b73_thumb.jpg');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_relateds`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_relateds`;
CREATE TABLE `rmt_goods_relateds` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`goodsId`  int(11) NOT NULL ,
`relatedGoodsId`  int(11) NOT NULL ,
`relatedType`  tinyint(4) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_goods_relateds
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_goods_scores`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_goods_scores`;
CREATE TABLE `rmt_goods_scores` (
`scoreId`  int(11) NOT NULL AUTO_INCREMENT ,
`goodsId`  int(11) NULL DEFAULT NULL ,
`shopId`  int(11) NULL DEFAULT NULL ,
`totalScore`  int(11) NULL DEFAULT 0 ,
`totalUsers`  int(11) NULL DEFAULT 0 ,
`goodsScore`  int(11) NULL DEFAULT 0 ,
`goodsUsers`  int(11) NULL DEFAULT 0 ,
`serviceScore`  int(11) NULL DEFAULT 0 ,
`serviceUsers`  int(11) NULL DEFAULT 0 ,
`timeScore`  int(11) NULL DEFAULT 0 ,
`timeUsers`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`scoreId`),
INDEX `goodsId` (`goodsId`, `shopId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='商品评分--delete'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_goods_scores
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_log_operates`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_log_operates`;
CREATE TABLE `rmt_log_operates` (
`operateId`  int(11) NOT NULL AUTO_INCREMENT ,
`staffId`  int(11) NOT NULL ,
`operateTime`  datetime NOT NULL ,
`module`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`operateURI`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`operateId`),
INDEX `operateTime` (`operateTime`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_log_operates
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_log_orders`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_log_orders`;
CREATE TABLE `rmt_log_orders` (
`logId`  int(11) NOT NULL AUTO_INCREMENT ,
`orderId`  int(11) NOT NULL ,
`logContent`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`logUserId`  int(11) NOT NULL ,
`logType`  tinyint(4) NOT NULL DEFAULT 0 ,
`logTime`  datetime NOT NULL ,
PRIMARY KEY (`logId`),
INDEX `orderId` (`orderId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of rmt_log_orders
-- ----------------------------
BEGIN;
INSERT INTO `rmt_log_orders` VALUES ('1', '2', '下单成功', '9', '0', '2015-05-19 23:35:49'), ('2', '2', '商家已受理订单', '9', '0', '2015-05-19 23:40:20'), ('3', '2', '订单打包中', '9', '0', '2015-05-19 23:41:11'), ('4', '2', '商家已发货', '9', '0', '2015-05-19 23:41:49'), ('5', '2', '用户已收货', '9', '0', '2015-05-19 23:42:31'), ('6', '2', '用户已收货', '9', '0', '2015-05-19 23:42:39'), ('7', '2', '用户已收货', '9', '0', '2015-05-19 23:59:42'), ('8', '2', '用户已收货', '9', '0', '2015-05-19 23:59:50'), ('9', '2', '用户拒收', '9', '0', '2015-05-19 23:59:57'), ('10', '2', '商家确认拒收', '9', '0', '2015-05-20 00:09:38'), ('11', '3', '下单成功', '9', '0', '2015-05-24 15:59:46');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_log_sms`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_log_sms`;
CREATE TABLE `rmt_log_sms` (
`smsId`  int(11) NOT NULL AUTO_INCREMENT ,
`smsSrc`  tinyint(4) NULL DEFAULT 0 ,
`smsUserId`  int(11) NULL DEFAULT 0 ,
`smsContent`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`smsPhoneNumber`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`smsReturnCode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`smsFunc`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`createTime`  datetime NULL DEFAULT NULL ,
`smsCode`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`smsIP`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`smsId`),
INDEX `smsPhoneNumber` (`smsPhoneNumber`) USING BTREE ,
INDEX `smsIP` (`smsIP`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_log_sms
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_log_staff_logins`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_log_staff_logins`;
CREATE TABLE `rmt_log_staff_logins` (
`loginId`  int(11) NOT NULL AUTO_INCREMENT ,
`staffId`  int(11) NOT NULL ,
`loginTime`  datetime NOT NULL ,
`loginIp`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`loginId`),
INDEX `loginTime` (`loginTime`) USING BTREE ,
INDEX `staffId` (`staffId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=216

;

-- ----------------------------
-- Records of rmt_log_staff_logins
-- ----------------------------
BEGIN;
INSERT INTO `rmt_log_staff_logins` VALUES ('178', '1', '2015-06-02 22:50:57', '127.0.0.1'), ('179', '1', '2015-06-04 22:37:16', '127.0.0.1'), ('180', '1', '2016-01-29 23:22:59', '0.0.0.0'), ('181', '1', '2016-01-30 12:32:32', '0.0.0.0'), ('182', '1', '2016-01-30 21:53:38', '0.0.0.0'), ('183', '1', '2016-01-31 13:46:07', '0.0.0.0'), ('184', '1', '2016-01-31 23:01:39', '0.0.0.0'), ('185', '1', '2016-02-01 20:46:57', '0.0.0.0'), ('186', '1', '2016-02-02 22:25:40', '0.0.0.0'), ('187', '1', '2016-02-08 21:18:26', '0.0.0.0'), ('188', '1', '2016-02-10 22:13:57', '0.0.0.0'), ('189', '1', '2016-02-11 16:24:08', '0.0.0.0'), ('190', '1', '2016-02-12 17:59:44', '0.0.0.0'), ('191', '1', '2016-02-13 23:27:35', '0.0.0.0'), ('192', '1', '2016-02-14 16:16:51', '0.0.0.0'), ('193', '1', '2016-02-14 19:02:01', '0.0.0.0'), ('194', '1', '2016-02-14 23:26:37', '0.0.0.0'), ('195', '1', '2016-02-15 16:55:39', '0.0.0.0'), ('196', '1', '2016-02-16 15:50:07', '0.0.0.0'), ('197', '1', '2016-02-16 17:26:13', '0.0.0.0'), ('198', '1', '2016-02-16 17:27:40', '0.0.0.0'), ('199', '1', '2016-02-16 17:46:23', '0.0.0.0'), ('200', '1', '2016-02-16 17:53:20', '0.0.0.0'), ('201', '1', '2016-02-17 15:44:56', '0.0.0.0'), ('202', '1', '2016-02-17 17:51:00', '0.0.0.0'), ('203', '1', '2016-02-17 20:56:57', '0.0.0.0'), ('204', '1', '2016-02-18 19:43:44', '0.0.0.0'), ('205', '1', '2016-02-19 09:58:09', '0.0.0.0'), ('206', '1', '2016-02-19 20:29:03', '0.0.0.0'), ('207', '1', '2016-02-26 17:00:28', '0.0.0.0'), ('208', '1', '2016-03-02 17:08:17', '0.0.0.0'), ('209', '1', '2016-03-02 17:32:39', '0.0.0.0'), ('210', '1', '2016-03-03 15:36:25', '0.0.0.0'), ('211', '1', '2016-03-03 16:16:53', '0.0.0.0'), ('212', '1', '2016-03-03 16:41:27', '0.0.0.0'), ('213', '1', '2016-03-03 17:44:45', '0.0.0.0'), ('214', '1', '2016-03-22 10:14:52', '0.0.0.0'), ('215', '1', '2016-03-23 21:09:02', '0.0.0.0');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_log_user_logins`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_log_user_logins`;
CREATE TABLE `rmt_log_user_logins` (
`loginId`  int(11) NOT NULL AUTO_INCREMENT ,
`userId`  int(11) NOT NULL ,
`loginTime`  datetime NOT NULL ,
`loginIp`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`loginSrc`  tinyint(3) UNSIGNED NULL DEFAULT 0 COMMENT '0:商城  1:webapp  2:App' ,
`loginRemark`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录备注信息' ,
PRIMARY KEY (`loginId`),
INDEX `loginTime` (`loginTime`) USING BTREE ,
INDEX `userId` (`userId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=61

;

-- ----------------------------
-- Records of rmt_log_user_logins
-- ----------------------------
BEGIN;
INSERT INTO `rmt_log_user_logins` VALUES ('1', '40', '2016-01-30 22:45:05', '0.0.0.0', '0', null), ('2', '40', '2016-01-31 14:02:41', '0.0.0.0', '0', null), ('3', '40', '2016-02-01 20:47:24', '0.0.0.0', '0', null), ('4', '40', '2016-02-02 21:04:45', '0.0.0.0', '0', null), ('5', '40', '2016-02-08 21:14:14', '0.0.0.0', '0', null), ('6', '40', '2016-02-09 11:09:27', '0.0.0.0', '0', null), ('7', '40', '2016-02-10 20:10:50', '0.0.0.0', '0', null), ('8', '40', '2016-02-10 21:47:22', '0.0.0.0', '0', null), ('9', '40', '2016-02-11 17:02:24', '0.0.0.0', '0', null), ('10', '41', '2016-02-11 19:36:02', '0.0.0.0', '0', null), ('11', '40', '2016-02-11 21:38:09', '0.0.0.0', '0', null), ('12', '40', '2016-02-11 21:48:40', '0.0.0.0', '0', null), ('13', '40', '2016-02-11 21:54:42', '0.0.0.0', '0', null), ('14', '41', '2016-02-11 21:56:23', '0.0.0.0', '0', null), ('15', '40', '2016-02-11 22:52:10', '0.0.0.0', '0', null), ('16', '41', '2016-02-11 22:53:03', '0.0.0.0', '0', null), ('17', '41', '2016-02-11 23:23:42', '0.0.0.0', '0', null), ('18', '40', '2016-02-11 23:43:51', '0.0.0.0', '0', null), ('19', '41', '2016-02-12 15:38:35', '0.0.0.0', '0', null), ('20', '40', '2016-02-12 21:07:36', '0.0.0.0', '0', null), ('21', '41', '2016-02-12 21:17:43', '0.0.0.0', '0', null), ('22', '40', '2016-02-12 21:18:49', '0.0.0.0', '0', null), ('23', '41', '2016-02-12 21:42:23', '0.0.0.0', '0', null), ('24', '41', '2016-02-13 21:09:58', '0.0.0.0', '0', null), ('25', '41', '2016-02-14 16:30:43', '0.0.0.0', '0', null), ('26', '41', '2016-02-14 18:20:54', '0.0.0.0', '0', null), ('27', '40', '2016-02-14 18:22:42', '0.0.0.0', '0', null), ('28', '40', '2016-02-14 18:32:56', '0.0.0.0', '0', null), ('29', '40', '2016-02-15 16:38:52', '0.0.0.0', '0', null), ('30', '44', '2016-02-17 18:41:19', '0.0.0.0', '0', null), ('31', '44', '2016-02-17 19:28:16', '0.0.0.0', '0', null), ('32', '44', '2016-02-17 21:16:56', '0.0.0.0', '0', null), ('33', '40', '2016-02-17 21:21:38', '0.0.0.0', '0', null), ('34', '44', '2016-02-18 19:27:46', '0.0.0.0', '0', null), ('35', '44', '2016-02-18 19:32:23', '0.0.0.0', '0', null), ('36', '46', '2016-02-18 20:38:33', '0.0.0.0', '0', null), ('37', '47', '2016-02-18 20:39:29', '0.0.0.0', '0', null), ('38', '48', '2016-02-18 20:40:06', '0.0.0.0', '0', null), ('39', '49', '2016-02-18 20:41:58', '0.0.0.0', '0', null), ('40', '49', '2016-02-18 22:52:42', '0.0.0.0', '0', null), ('41', '40', '2016-02-19 11:05:10', '0.0.0.0', '0', null), ('42', '44', '2016-02-19 11:43:22', '0.0.0.0', '0', null), ('43', '44', '2016-02-25 17:00:51', '0.0.0.0', '0', null), ('44', '44', '2016-02-26 20:26:47', '0.0.0.0', '0', null), ('45', '44', '2016-02-26 23:33:51', '0.0.0.0', '0', null), ('46', '44', '2016-02-27 09:55:35', '0.0.0.0', '0', null), ('47', '44', '2016-02-27 10:05:18', '0.0.0.0', '0', null), ('48', '44', '2016-02-27 11:18:13', '0.0.0.0', '0', null), ('49', '44', '2016-02-28 21:09:19', '0.0.0.0', '0', null), ('50', '44', '2016-03-02 23:05:30', '0.0.0.0', '0', null), ('51', '50', '2016-03-03 17:41:48', '0.0.0.0', '0', null), ('52', '149', '2016-03-22 09:30:57', '0.0.0.0', '0', null), ('53', '248', '2016-03-22 09:36:32', '0.0.0.0', '0', null), ('54', '249', '2016-03-22 09:39:11', '0.0.0.0', '0', null), ('55', '250', '2016-03-22 09:40:31', '0.0.0.0', '0', null), ('56', '349', '2016-03-22 09:42:06', '0.0.0.0', '0', null), ('57', '150', '2016-03-22 10:09:34', '0.0.0.0', '0', null), ('58', '150', '2016-03-22 16:32:08', '0.0.0.0', '0', null), ('59', '150', '2016-03-22 23:20:58', '0.0.0.0', '0', null), ('60', '150', '2016-03-23 08:50:06', '0.0.0.0', '0', null);
COMMIT;

-- ----------------------------
-- Table structure for `rmt_messages`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_messages`;
CREATE TABLE `rmt_messages` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`msgType`  tinyint(4) NULL DEFAULT 0 ,
`sendUserId`  int(11) NULL DEFAULT NULL ,
`receiveUserId`  int(11) NULL DEFAULT NULL ,
`msgContent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`createTime`  datetime NULL DEFAULT NULL ,
`msgStatus`  tinyint(4) NULL DEFAULT 0 ,
`msgFlag`  tinyint(4) NULL DEFAULT 1 ,
PRIMARY KEY (`id`),
INDEX `receiveUserId` (`receiveUserId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of rmt_messages
-- ----------------------------
BEGIN;
INSERT INTO `rmt_messages` VALUES ('1', '0', '1', '40', '您的店铺状态已被改为“已审核”状态，您可以出售自己的商品啦~', '2016-01-31 14:11:29', '1', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_navs`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_navs`;
CREATE TABLE `rmt_navs` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`navType`  tinyint(4) NOT NULL DEFAULT 0 ,
`areaId1`  int(11) NULL DEFAULT NULL ,
`areaId2`  int(11) NULL DEFAULT NULL ,
`navTitle`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`navUrl`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 ,
`isOpen`  tinyint(4) NOT NULL DEFAULT 0 ,
`navSort`  int(11) NOT NULL DEFAULT 0 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of rmt_navs
-- ----------------------------
BEGIN;
INSERT INTO `rmt_navs` VALUES ('2', '0', '0', '0', '首页', 'index.php', '1', '0', '0', '2015-07-12 20:08:36'), ('3', '0', '0', '0', '店铺街', 'index.php/Home/Shops/toShopStreet.html', '0', '0', '4', '2015-07-12 20:10:00'), ('4', '0', '0', '0', '发布闲置', 'index.php/Home/Goods/toEdit/umark/toEditGoods.html', '1', '0', '2', '2015-07-12 20:11:21'), ('5', '1', '0', '0', '关于我们', 'index.php/Home/Articles/index/articleId/1', '1', '0', '0', '2015-07-12 20:25:58'), ('7', '1', '0', '0', 'WST百科', '#', '1', '0', '0', '2015-07-12 23:02:39'), ('10', '1', '0', '0', '诚征英才', 'index.php/Home/Articles/index/articleId/2', '1', '0', '0', '2015-07-12 23:04:41'), ('8', '1', '0', '0', '帮助中心', '#', '1', '0', '0', '2015-07-12 23:03:43'), ('9', '1', '0', '0', '法律声明', 'index.php/Home/Articles/index/articleId/3', '1', '0', '0', '2015-07-12 23:03:55'), ('11', '1', '0', '0', '网站地图', 'index.php/Home/Articles/index/articleId/9', '1', '0', '0', '2015-07-12 23:04:51'), ('14', '0', '0', '0', '我的闲置', 'index.php/Home/Goods/queryOnSaleByPage.html', '1', '0', '3', '2016-02-14 16:32:16');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_order_goods`;
CREATE TABLE `rmt_order_goods` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`orderId`  int(11) NOT NULL ,
`goodsId`  int(11) NOT NULL ,
`goodsNums`  int(11) NOT NULL DEFAULT 0 ,
`goodsPrice`  float(11,1) NOT NULL DEFAULT 0.0 ,
`goodsAttrId`  int(11) NULL DEFAULT 0 ,
`goodsAttrName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`goodsName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsThums`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `goodsId` (`goodsId`) USING BTREE ,
INDEX `orderId` (`orderId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_order_goods
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_order_reminds`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_order_reminds`;
CREATE TABLE `rmt_order_reminds` (
`remindId`  int(11) NOT NULL AUTO_INCREMENT ,
`orderId`  int(11) NOT NULL ,
`userId`  int(11) NOT NULL ,
`shopId`  int(11) NOT NULL ,
`remindType`  tinyint(4) NOT NULL DEFAULT 0 ,
`userType`  tinyint(4) NOT NULL DEFAULT 0 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`remindId`),
INDEX `shopId` (`shopId`, `remindType`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of rmt_order_reminds
-- ----------------------------
BEGIN;
INSERT INTO `rmt_order_reminds` VALUES ('1', '2', '9', '4', '0', '0', '2015-05-19 23:35:49'), ('2', '3', '9', '4', '0', '0', '2015-05-24 15:59:46');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_orderids`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_orderids`;
CREATE TABLE `rmt_orderids` (
`id`  bigint(11) NOT NULL AUTO_INCREMENT ,
`rnd`  float(16,2) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=100000001

;

-- ----------------------------
-- Records of rmt_orderids
-- ----------------------------
BEGIN;
INSERT INTO `rmt_orderids` VALUES ('100000000', '356590.00');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_orders`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_orders`;
CREATE TABLE `rmt_orders` (
`orderId`  int(11) NOT NULL AUTO_INCREMENT ,
`orderNo`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`areaId1`  int(11) NOT NULL ,
`areaId2`  int(11) NOT NULL ,
`areaId3`  int(11) NOT NULL ,
`shopId`  int(11) NOT NULL ,
`orderStatus`  tinyint(4) NOT NULL DEFAULT '-2' ,
`totalMoney`  float(11,1) NOT NULL ,
`deliverMoney`  float(11,1) NOT NULL ,
`payType`  tinyint(4) NOT NULL DEFAULT 0 ,
`isSelf`  tinyint(4) NOT NULL DEFAULT 0 ,
`isPay`  tinyint(4) NOT NULL DEFAULT 0 ,
`deliverType`  tinyint(4) NOT NULL DEFAULT 0 ,
`userId`  int(11) NOT NULL ,
`userName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`communityId`  int(11) NOT NULL ,
`userAddress`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`userTel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userPhone`  char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userPostCode`  char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`orderScore`  int(11) NOT NULL DEFAULT 0 ,
`isInvoice`  tinyint(4) NOT NULL DEFAULT 0 ,
`invoiceClient`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`orderRemarks`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`requireTime`  datetime NOT NULL ,
`isAppraises`  tinyint(4) NOT NULL DEFAULT 0 ,
`createTime`  datetime NOT NULL ,
`isClosed`  tinyint(4) NOT NULL DEFAULT 0 ,
`isRefund`  tinyint(4) NOT NULL DEFAULT 0 ,
`refundRemark`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`orderunique`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`orderSrc`  tinyint(4) NOT NULL DEFAULT 0 ,
`orderFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`needPay`  float(11,1) NULL DEFAULT 0.0 ,
`tradeNo`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`orderId`),
INDEX `shopId` (`shopId`, `orderFlag`) USING BTREE ,
INDEX `userId` (`userId`, `orderFlag`) USING BTREE ,
INDEX `isRefund` (`isRefund`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='订单表--delete'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_payments`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_payments`;
CREATE TABLE `rmt_payments` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`payCode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`payName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`payDesc`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`payOrder`  int(11) NULL DEFAULT 0 ,
`payConfig`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`enabled`  tinyint(4) NULL DEFAULT 0 ,
`isOnline`  tinyint(4) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `payCode` (`payCode`, `enabled`, `isOnline`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of rmt_payments
-- ----------------------------
BEGIN;
INSERT INTO `rmt_payments` VALUES ('1', 'cod', '货到付款', '开通城市', '1', '', '1', '0'), ('2', 'alipay', '支付宝', '', '2', '', '0', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_roles`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_roles`;
CREATE TABLE `rmt_roles` (
`roleId`  int(11) NOT NULL AUTO_INCREMENT ,
`roleName`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`grant`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`createTime`  datetime NOT NULL ,
`roleFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`roleId`),
INDEX `roleFlag` (`roleFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of rmt_roles
-- ----------------------------
BEGIN;
INSERT INTO `rmt_roles` VALUES ('1', '商品管理员', 'spfl_00,spfl_01,spfl_02,spfl_03,ppgl_00,ppgl_01,ppgl_02,ppgl_03,splb_00,splb_04,splb_03,spsh_00,spsh_04,spsh_03,sppl_00,sppl_04,sppl_03', '2014-11-02 12:07:12', '1'), ('2', '门店管理员', 'dplb_00,dplb_01,dplb_02,dplb_03,dpsh_00,dpsh_04,dpsh_03', '2014-11-02 12:09:05', '1'), ('3', '系统管理员', 'spgl_00,spfl_00,spfl_01,spfl_02,spfl_03,ppgl_00,ppgl_01,ppgl_02,ppgl_03,splb_00,splb_04,spsh_00,spsh_04,sppl_00,sppl_04,sppl_03,ddgl_00,ddlb_00,tk_00,tk_04,dpgl_00,dplb_00,dplb_01,dplb_02,dplb_03,dpsh_00,dqgl_00,dqlb_00,dqlb_01,dqlb_02,dqlb_03,sqlb_00,sqlb_01,sqlb_02,sqlb_03,wzgl_00,wzlb_00,wzlb_01,wzlb_02,wzlb_03,wzfl_00,wzfl_01,wzfl_02,wzfl_03,hygl_00,hydj_00,hydj_01,hydj_02,hydj_03,hylb_00,hylb_01,hylb_02,hylb_03,hyzh_00,hyzh_04,xtgl_00,jsgl_00,jsgl_01,jsgl_02,jsgl_03,zylb_00,zylb_01,zylb_02,zylb_03,dlrz_00,scsz_00,scxx_00,scxx_02,dhgl_00,dhgl_01,dhgl_02,dhgl_03,yqlj_00,yqlj_01,yqlj_02,yqlj_03,gggl_00,gggl_01,gggl_02,gggl_03,yhgl_00,yhgl_01,yhgl_02,yhgl_03,zfgl_00,zfgl_01,zfgl_02,zfgl_03', '2014-11-02 12:09:09', '1'), ('4', '客服', 'sppl_00,sppl_04,sppl_03', '2014-12-20 00:08:53', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_shop_configs`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_shop_configs`;
CREATE TABLE `rmt_shop_configs` (
`configId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NULL DEFAULT NULL ,
`shopTitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopKeywords`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopDesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopBanner`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopAds`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`shopAdsUrl`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`configId`),
INDEX `shopId` (`shopId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_shop_configs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_shop_scores`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_shop_scores`;
CREATE TABLE `rmt_shop_scores` (
`scoreId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`totalScore`  int(11) NOT NULL DEFAULT 0 ,
`totalUsers`  int(11) NOT NULL DEFAULT 0 ,
`goodsScore`  int(11) NOT NULL DEFAULT 0 ,
`goodsUsers`  int(11) NOT NULL DEFAULT 0 ,
`serviceScore`  int(11) NOT NULL DEFAULT 0 ,
`serviceUsers`  int(11) NOT NULL DEFAULT 0 ,
`timeScore`  int(11) NOT NULL DEFAULT 0 ,
`timeUsers`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`scoreId`),
UNIQUE INDEX `shopId` (`shopId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=36

;

-- ----------------------------
-- Records of rmt_shop_scores
-- ----------------------------
BEGIN;
INSERT INTO `rmt_shop_scores` VALUES ('1', '4', '0', '0', '0', '0', '0', '0', '0', '0'), ('2', '5', '0', '0', '0', '0', '0', '0', '0', '0'), ('3', '6', '0', '0', '0', '0', '0', '0', '0', '0'), ('4', '7', '0', '0', '0', '0', '0', '0', '0', '0'), ('5', '8', '0', '0', '0', '0', '0', '0', '0', '0'), ('6', '9', '0', '0', '0', '0', '0', '0', '0', '0'), ('7', '10', '0', '0', '0', '0', '0', '0', '0', '0'), ('8', '11', '0', '0', '0', '0', '0', '0', '0', '0'), ('9', '12', '0', '0', '0', '0', '0', '0', '0', '0'), ('10', '13', '0', '0', '0', '0', '0', '0', '0', '0'), ('11', '14', '0', '0', '0', '0', '0', '0', '0', '0'), ('12', '15', '0', '0', '0', '0', '0', '0', '0', '0'), ('13', '16', '0', '0', '0', '0', '0', '0', '0', '0'), ('14', '17', '0', '0', '0', '0', '0', '0', '0', '0'), ('15', '18', '0', '0', '0', '0', '0', '0', '0', '0'), ('16', '19', '0', '0', '0', '0', '0', '0', '0', '0'), ('17', '20', '0', '0', '0', '0', '0', '0', '0', '0'), ('18', '21', '0', '0', '0', '0', '0', '0', '0', '0'), ('19', '22', '0', '0', '0', '0', '0', '0', '0', '0'), ('20', '23', '0', '0', '0', '0', '0', '0', '0', '0'), ('21', '24', '0', '0', '0', '0', '0', '0', '0', '0'), ('22', '25', '0', '0', '0', '0', '0', '0', '0', '0'), ('23', '26', '0', '0', '0', '0', '0', '0', '0', '0'), ('24', '27', '0', '0', '0', '0', '0', '0', '0', '0'), ('25', '28', '0', '0', '0', '0', '0', '0', '0', '0'), ('26', '29', '0', '0', '0', '0', '0', '0', '0', '0'), ('27', '30', '0', '0', '0', '0', '0', '0', '0', '0'), ('28', '31', '0', '0', '0', '0', '0', '0', '0', '0'), ('29', '32', '0', '0', '0', '0', '0', '0', '0', '0'), ('30', '33', '0', '0', '0', '0', '0', '0', '0', '0'), ('31', '34', '0', '0', '0', '0', '0', '0', '0', '0'), ('32', '35', '0', '0', '0', '0', '0', '0', '0', '0'), ('33', '36', '0', '0', '0', '0', '0', '0', '0', '0'), ('34', '37', '0', '0', '0', '0', '0', '0', '0', '0'), ('35', '38', '0', '0', '0', '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_shops`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_shops`;
CREATE TABLE `rmt_shops` (
`shopId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopSn`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺编号' ,
`userId`  int(11) NULL DEFAULT NULL COMMENT '用户id' ,
`areaId1`  int(11) NOT NULL ,
`areaId2`  int(11) NOT NULL ,
`areaId3`  int(11) NULL DEFAULT NULL COMMENT '暂不使用' ,
`goodsCatId1`  int(11) NOT NULL ,
`goodsCatId2`  int(11) NULL DEFAULT NULL ,
`goodsCatId3`  int(11) NULL DEFAULT NULL ,
`isSelf`  tinyint(4) NOT NULL DEFAULT 0 ,
`shopName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名字' ,
`shopCompany`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺公司' ,
`shopImg`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺图片' ,
`shopTel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺电话' ,
`shopAddress`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺地址' ,
`avgeCostMoney`  float(11,1) NULL DEFAULT 0.0 COMMENT '平均成本钱' ,
`deliveryStartMoney`  float(11,1) NULL DEFAULT 0.0 COMMENT '交付启动资金' ,
`deliveryMoney`  float(11,1) NULL DEFAULT 0.0 COMMENT '交货钱' ,
`deliveryFreeMoney`  float(11,1) NULL DEFAULT 0.0 COMMENT '运费' ,
`deliveryCostTime`  int(11) NOT NULL DEFAULT 0 COMMENT '发货时间成本' ,
`deliveryTime`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发货时间' ,
`deliveryType`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '发货类型' ,
`bankId`  int(11) NULL DEFAULT NULL COMMENT '银行标识' ,
`bankNo`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡号' ,
`isInvoice`  tinyint(4) NULL DEFAULT 0 COMMENT '是否发票' ,
`invoiceRemarks`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票备注' ,
`serviceStartTime`  float(11,1) NOT NULL COMMENT '服务开始时间' ,
`serviceEndTime`  float(11,1) NOT NULL COMMENT '服务结束时间' ,
`shopStatus`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '商铺状态' ,
`statusRemarks`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注状态' ,
`shopAtive`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '商铺活动' ,
`shopFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`latitude`  char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '经度' ,
`longitude`  char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '纬度' ,
`mapLevel`  int(11) NULL DEFAULT 13 COMMENT '地图等级' ,
`qqNo`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ号码' ,
PRIMARY KEY (`shopId`),
INDEX `areaId1` (`areaId2`) USING BTREE ,
INDEX `shopStatus` (`shopStatus`, `shopFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='店铺列表'
AUTO_INCREMENT=39

;

-- ----------------------------
-- Records of rmt_shops
-- ----------------------------
BEGIN;
INSERT INTO `rmt_shops` VALUES ('38', '123456', '50', '120000', '130006', null, '56', null, null, '0', 'shop002', 'shop002', 'Upload/shops/2016-03/56d7fccf9ff72.png', '13920826530', '邮政快递', '0.0', '0.0', '0.0', '0.0', '0', '', '0', null, null, '0', null, '8.0', '8.0', '1', '', '1', '1', '2016-03-03 17:00:20', '39.329788', '117.831479', '10', ''), ('34', '0012345', '40', '120000', '130006', null, '56', null, null, '0', '大大泡泡糖', 'zzzzzz', 'Upload/shops/2016-01/56ada3c9e99ea.jpg', '13920826591', '大沽南路10001号', '20.0', '12.0', '0.0', '10.0', '0', '', '0', '17', '6222023602094008497', '0', '', '7.0', '20.0', '1', null, '1', '1', '2016-01-31 14:07:12', '39.069432', '117.274193', '4', ''), ('35', 'DPx0001', '42', '120000', '130006', null, '56', null, null, '1', 'DPx0001', 'DPx0001', 'Upload/shops/2016-02/56c31c4ddd505.jpg', '13920826591', '大沽南路001号', '0.0', '0.0', '0.0', '0.0', '0', '', '1', null, null, '0', null, '8.0', '17.0', '1', '', '1', '1', '2016-02-16 20:57:15', '39.072302', '117.272316', '10', ''), ('36', 'DPx0002', '43', '120000', '130006', null, '56', null, null, '1', 'test2', 'test2', 'Upload/shops/2016-02/56c336d5799db.jpg', '13920826592', '大沽南路', '0.0', '0.0', '0.0', '0.0', '0', '', '1', null, null, '0', null, '8.0', '17.5', '1', '', '1', '1', '2016-02-16 22:50:14', '39.084733', '117.24557', '13', ''), ('1', 'PS001', '1', '120000', '130006', null, '56', null, null, '0', '公共店铺', '物尽其用二手网', 'Upload/shops/2016-02/56c45e5d663eb.jpg', '13920826591', '职业技术师范', '0.0', '0.0', '0.0', '0.0', '0', '', '0', null, null, '0', null, '0.0', '0.0', '1', '', '1', '1', '2016-02-17 19:51:50', '39.060158', '117.296042', '11', '');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_shops_cats`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_shops_cats`;
CREATE TABLE `rmt_shops_cats` (
`catId`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`parentId`  int(11) NOT NULL ,
`isShow`  tinyint(4) NOT NULL DEFAULT 1 ,
`catName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`catSort`  int(11) NOT NULL DEFAULT 0 ,
`catFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`catId`),
INDEX `parentId` (`isShow`, `catFlag`) USING BTREE ,
INDEX `shopId` (`shopId`, `catFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=184

;

-- ----------------------------
-- Records of rmt_shops_cats
-- ----------------------------
BEGIN;
INSERT INTO `rmt_shops_cats` VALUES ('7', '4', '0', '1', '水果类', '0', '1'), ('8', '4', '7', '1', '亚酸性水果', '0', '1'), ('9', '4', '0', '1', '蔬菜类', '1', '1'), ('10', '4', '7', '1', '甜性水果', '3', '1'), ('11', '4', '7', '1', '葡萄', '4', '-1'), ('12', '4', '7', '1', '樱桃', '6', '-1'), ('13', '4', '9', '1', '瓜果实', '2', '1'), ('14', '4', '9', '1', '豆类', '7', '1'), ('15', '4', '9', '1', '根茎', '8', '1'), ('16', '4', '9', '1', '柿子', '9', '-1'), ('17', '4', '9', '1', '凤梨', '9', '-1'), ('18', '11', '0', '1', '新鲜蔬菜', '0', '1'), ('19', '11', '0', '1', '肉类蛋禽', '2', '1'), ('20', '11', '19', '1', '肉类', '0', '1'), ('21', '11', '19', '1', '蛋品', '2', '1'), ('22', '11', '19', '1', '骨肉', '3', '1'), ('23', '11', '19', '1', '虾蟹', '6', '1'), ('24', '11', '19', '1', '海鱼', '7', '1'), ('25', '11', '18', '1', '叶菜', '0', '1'), ('26', '11', '18', '1', '花菜', '0', '1'), ('27', '11', '18', '1', '豆类', '3', '1'), ('28', '4', '0', '1', '海鲜水产', '5', '1'), ('29', '4', '28', '1', '海鱼', '2', '1'), ('30', '4', '28', '1', '虾蟹', '3', '1'), ('31', '14', '0', '1', '厨房清洁', '0', '1'), ('32', '14', '0', '1', '纸质品', '1', '1'), ('33', '14', '0', '1', '纸质品', '1', '-1'), ('34', '14', '0', '1', '居家清洁', '2', '1'), ('35', '14', '0', '1', '整理收纳', '3', '1'), ('36', '14', '31', '1', '洗洁精', '0', '1'), ('37', '14', '31', '1', '浴室清洁', '2', '1'), ('38', '14', '31', '1', '洁厕精', '3', '1'), ('39', '14', '32', '1', '卷筒纸', '0', '1'), ('40', '14', '32', '1', '手帕纸', '1', '1'), ('41', '14', '34', '1', '洗衣粉', '0', '1'), ('42', '14', '34', '1', '洗衣液', '2', '1'), ('43', '14', '35', '1', '收纳箱', '0', '1'), ('44', '14', '35', '1', '压缩袋', '2', '1'), ('45', '14', '34', '1', '洗衣皂', '3', '1'), ('46', '18', '0', '1', '黑茶', '0', '1'), ('47', '18', '0', '1', '红茶', '2', '1'), ('48', '18', '0', '1', '绿茶', '4', '1'), ('49', '18', '0', '1', '黄茶', '7', '1'), ('50', '18', '46', '1', '普洱', '1', '1'), ('51', '18', '46', '1', '安化黑茶', '4', '1'), ('52', '18', '0', '1', '乌龙茶', '9', '1'), ('53', '18', '52', '1', '铁观音', '0', '1'), ('54', '19', '0', '1', '白酒', '0', '1'), ('55', '19', '0', '1', '葡萄酒', '2', '1'), ('56', '19', '0', '1', '洋酒', '6', '1'), ('57', '19', '0', '1', '养生酒/啤酒/黄酒', '6', '1'), ('58', '19', '54', '1', '茅台', '0', '1'), ('59', '19', '54', '1', '五粮液', '2', '1'), ('60', '19', '54', '1', '汾酒', '4', '1'), ('61', '19', '54', '1', '泸州老窖', '7', '1'), ('62', '19', '55', '1', '法国', '0', '1'), ('63', '19', '55', '1', '澳大利亚', '2', '1'), ('64', '19', '55', '1', '中国', '4', '1'), ('65', '19', '55', '1', '智利', '76', '1'), ('66', '19', '56', '1', '威士忌', '0', '1'), ('67', '19', '56', '1', '白兰地', '2', '1'), ('68', '19', '56', '1', '伏特加', '4', '1'), ('69', '19', '56', '1', '朗姆酒', '4', '1'), ('70', '19', '57', '1', '宁夏红', '0', '1'), ('71', '19', '57', '1', '竹叶青', '2', '1'), ('72', '19', '57', '1', '劲牌', '4', '1'), ('73', '19', '57', '1', '乌毡帽', '5', '1'), ('74', '22', '0', '1', '食用油', '0', '1'), ('75', '22', '0', '1', '方便速食', '1', '1'), ('76', '22', '0', '1', '菇类干货', '2', '1'), ('77', '22', '76', '1', '莲子/红枣', '0', '1'), ('78', '22', '76', '1', '菌菇', '1', '1'), ('79', '22', '76', '1', '枸杞', '3', '1'), ('80', '22', '75', '1', '八宝粥', '0', '1'), ('81', '22', '75', '1', '火腿肠', '3', '1'), ('82', '22', '75', '1', '罐头食品', '5', '1'), ('83', '22', '74', '1', '玉米油', '0', '1'), ('84', '22', '74', '1', '大豆油', '2', '1'), ('85', '22', '74', '1', '花生油', '4', '1'), ('86', '22', '74', '1', '菜籽油', '6', '1'), ('87', '22', '74', '1', '橄榄油', '8', '1'), ('88', '26', '0', '1', '化妆品', '0', '1'), ('89', '26', '0', '1', '护肤品', '1', '1'), ('90', '26', '0', '1', '洗浴用品', '2', '1'), ('91', '26', '90', '1', '沐浴露', '0', '1'), ('92', '26', '90', '1', '洗发水', '1', '1'), ('93', '26', '90', '1', '沐浴套装', '2', '1'), ('94', '26', '89', '1', '保湿', '0', '1'), ('95', '26', '88', '1', '女士化妆品', '2', '1'), ('96', '26', '88', '1', '化妆品套装', '0', '1'), ('97', '26', '88', '1', '男士护肤品', '3', '1'), ('98', '30', '0', '1', '休闲零食', '0', '1'), ('99', '30', '0', '1', '进口糕点', '1', '1'), ('100', '30', '98', '1', '牛肉干', '0', '1'), ('101', '30', '99', '1', '进口威化饼', '0', '1'), ('102', '30', '99', '1', '进口蛋卷', '1', '1'), ('103', '30', '99', '1', '进口夹心饼', '2', '1'), ('104', '30', '98', '1', '鱼干', '1', '1'), ('105', '30', '98', '1', '凤爪鸡翅', '3', '1'), ('106', '30', '98', '1', '肉类休闲零食', '5', '1');
INSERT INTO `rmt_shops_cats` VALUES ('107', '10', '0', '1', '银饰', '0', '1'), ('108', '10', '107', '1', '手链', '0', '1'), ('109', '10', '107', '1', '手链', '0', '-1'), ('110', '10', '107', '1', '戒指', '0', '1'), ('111', '10', '107', '1', '耳环', '0', '1'), ('112', '12', '0', '1', '有机蔬菜', '0', '1'), ('113', '12', '112', '1', '菌菇类', '0', '1'), ('114', '12', '112', '1', '根茎类', '0', '1'), ('115', '12', '112', '1', '叶菜类', '0', '1'), ('116', '12', '112', '1', '茄果类', '0', '1'), ('117', '12', '112', '1', '豆荚类', '0', '1'), ('118', '12', '112', '1', '海鲜水产', '0', '-1'), ('119', '12', '0', '1', '海鲜水产', '1', '1'), ('120', '12', '119', '1', '蟹', '0', '1'), ('121', '12', '119', '1', '鱼', '0', '1'), ('122', '12', '119', '1', '虾', '0', '1'), ('123', '12', '119', '1', '贝壳', '0', '1'), ('124', '12', '0', '1', '净菜', '0', '1'), ('125', '12', '124', '1', '荤菜', '0', '1'), ('126', '12', '124', '1', '汤类', '0', '1'), ('127', '13', '0', '1', '海鲜水产', '0', '1'), ('128', '13', '127', '1', '速冻生鲜', '0', '1'), ('129', '15', '0', '1', '一次性用品', '1', '1'), ('130', '15', '0', '1', '居室清洁', '3', '1'), ('131', '15', '0', '1', '整理收纳', '0', '1'), ('132', '15', '129', '1', '一次性餐具', '0', '1'), ('133', '15', '129', '1', '一次性手套', '0', '1'), ('134', '15', '129', '1', '一次性鞋套', '0', '1'), ('135', '15', '129', '1', '棉签/棉棒', '0', '1'), ('136', '15', '129', '1', '保鲜膜', '0', '1'), ('137', '15', '129', '1', '垃圾袋', '0', '1'), ('138', '15', '131', '1', '挂钩/粘钩', '0', '1'), ('139', '15', '131', '1', '压缩袋', '0', '1'), ('140', '15', '131', '1', '抽气泵', '0', '1'), ('141', '15', '131', '1', '收纳袋', '0', '1'), ('142', '15', '131', '1', '收纳盒', '0', '1'), ('143', '15', '131', '1', '收纳篮', '0', '1'), ('144', '15', '130', '1', '多用途清洁剂', '0', '1'), ('145', '15', '130', '1', '玻璃清洁', '0', '1'), ('146', '15', '130', '1', '驱蚊驱虫', '0', '1'), ('147', '20', '0', '1', '咖啡', '0', '1'), ('148', '20', '147', '1', '速溶咖啡', '0', '1'), ('149', '20', '147', '1', '咖啡伴侣', '0', '1'), ('150', '20', '147', '1', '咖啡豆/粉', '0', '1'), ('151', '20', '0', '1', '饮料饮品', '0', '1'), ('152', '20', '151', '1', '功能饮料', '0', '1'), ('153', '20', '151', '1', '碳酸饮料', '0', '1'), ('154', '20', '151', '1', '乳饮料', '0', '1'), ('155', '20', '0', '1', '成人奶粉', '0', '1'), ('156', '20', '155', '1', '奶粉', '0', '1'), ('157', '23', '0', '1', '食用油', '0', '1'), ('158', '23', '0', '1', '大米面粉', '0', '1'), ('159', '23', '0', '1', '杂粮', '0', '1'), ('160', '23', '0', '1', '方便速食', '0', '1'), ('161', '23', '157', '1', '调和油', '0', '1'), ('162', '23', '157', '1', '菜籽油', '0', '1'), ('163', '23', '158', '1', '大米', '0', '1'), ('164', '23', '159', '1', '小米', '0', '1'), ('165', '23', '159', '1', '玉米', '0', '1'), ('166', '23', '159', '1', '薏米', '0', '1'), ('167', '23', '159', '1', '糙米', '0', '1'), ('168', '23', '160', '1', '方便面', '0', '1'), ('169', '23', '160', '1', '八宝粥', '0', '1'), ('170', '27', '0', '1', '女性护理', '0', '1'), ('171', '27', '170', '1', '私处洗液', '0', '1'), ('172', '27', '0', '1', '进口美护', '0', '1'), ('173', '27', '172', '1', '进口美护', '0', '1'), ('174', '31', '0', '1', '坚果现货', '0', '1'), ('175', '31', '174', '1', '开心果', '0', '1'), ('176', '31', '174', '1', '核桃', '0', '1'), ('177', '31', '174', '1', '瓜子', '0', '1'), ('178', '31', '174', '1', '腰果', '0', '1'), ('179', '31', '0', '1', '进口休闲零食', '0', '1'), ('180', '31', '179', '1', '巧克力', '0', '1'), ('181', '31', '179', '1', '花生', '0', '1'), ('182', '31', '179', '1', '奶糖', '0', '1'), ('183', '31', '179', '1', '饼干', '0', '1');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_shops_communitys`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_shops_communitys`;
CREATE TABLE `rmt_shops_communitys` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`shopId`  int(11) NOT NULL ,
`areaId1`  int(11) NOT NULL ,
`areaId2`  int(11) NULL DEFAULT NULL ,
`areaId3`  int(11) NULL DEFAULT NULL ,
`communityId`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
INDEX `shopId` (`shopId`) USING BTREE ,
INDEX `communityId` (`communityId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=83

;

-- ----------------------------
-- Records of rmt_shops_communitys
-- ----------------------------
BEGIN;
INSERT INTO `rmt_shops_communitys` VALUES ('21', '36', '0', null, null, '120000'), ('82', '38', '120000', null, null, '130006'), ('81', '38', '0', null, null, '120000'), ('78', '34', '120000', null, null, '130006'), ('77', '34', '0', null, null, '120000'), ('22', '36', '120000', null, null, '130006'), ('23', '36', '120000', null, null, '130005'), ('24', '35', '120000', '120000', null, '0'), ('25', '35', '0', null, null, '120000'), ('26', '35', '120000', null, null, '130006'), ('27', '35', '120000', null, null, '130005'), ('28', '35', '120000', null, null, '130007'), ('29', '35', '120000', null, null, '130008'), ('30', '35', '120000', null, null, '130009'), ('31', '35', '120000', null, null, '130010'), ('32', '35', '120000', null, null, '130011'), ('33', '35', '120000', null, null, '130012'), ('34', '35', '120000', null, null, '130013'), ('35', '35', '120000', null, null, '130014'), ('36', '35', '120000', null, null, '130015'), ('37', '35', '120000', null, null, '130016'), ('38', '35', '120000', null, null, '130017'), ('39', '35', '120000', null, null, '130018'), ('40', '35', '120000', null, null, '130019'), ('41', '35', '120000', null, null, '130020'), ('42', '1', '120000', '120000', null, '0'), ('43', '1', '0', null, null, '120000'), ('44', '1', '120000', null, null, '130006'), ('45', '1', '120000', null, null, '130005'), ('46', '1', '120000', null, null, '130007'), ('47', '1', '120000', null, null, '130008'), ('48', '1', '120000', null, null, '130009'), ('49', '1', '120000', null, null, '130010'), ('50', '1', '120000', null, null, '130011'), ('51', '1', '120000', null, null, '130012'), ('52', '1', '120000', null, null, '130013'), ('53', '1', '120000', null, null, '130014'), ('54', '1', '120000', null, null, '130015'), ('55', '1', '120000', null, null, '130016'), ('56', '1', '120000', null, null, '130017'), ('57', '1', '120000', null, null, '130018'), ('58', '1', '120000', null, null, '130019'), ('59', '1', '120000', null, null, '130020');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_staffs`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_staffs`;
CREATE TABLE `rmt_staffs` (
`staffId`  int(11) NOT NULL AUTO_INCREMENT ,
`loginName`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`loginPwd`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`secretKey`  int(32) NOT NULL ,
`staffName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`staffNo`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`staffPhoto`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`staffRoleId`  int(11) NOT NULL ,
`workStatus`  tinyint(4) NOT NULL DEFAULT 1 ,
`staffStatus`  tinyint(4) NOT NULL DEFAULT 0 ,
`staffFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`createTime`  datetime NOT NULL ,
`lastTime`  datetime NULL DEFAULT NULL ,
`lastIP`  char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`staffId`),
INDEX `loginName` (`loginName`) USING BTREE ,
INDEX `staffStatus` (`staffStatus`, `staffFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=16

;

-- ----------------------------
-- Records of rmt_staffs
-- ----------------------------
BEGIN;
INSERT INTO `rmt_staffs` VALUES ('1', 'admin', '9875e806ef6f9494e0de4ae1bbf9f815', '9365', 'admin', '001', 'Upload/staffs/2015-04/55306cf76bc1f.jpg', '3', '1', '1', '1', '2014-04-06 11:47:20', '2016-03-23 21:09:02', '0.0.0.0'), ('14', 'system', 'a0da805e0b77f6cc05cdf0ef6ca8caad', '2508', '系统管理员', 'sn001', null, '3', '1', '1', '1', '2014-12-20 00:13:36', null, null), ('15', 'goodsAdmin', '1600195af828b21c1f586b1e01cb89fc', '1729', '商品管理员', 'sn001', 'Upload/staffs/2014-12/5496376a7ff89.jpg', '1', '1', '1', '1', '2014-12-21 10:58:40', null, null);
COMMIT;

-- ----------------------------
-- Table structure for `rmt_sys_configs`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_sys_configs`;
CREATE TABLE `rmt_sys_configs` (
`configId`  int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID' ,
`parentId`  int(11) NULL DEFAULT 0 COMMENT '所属类别ID' ,
`fieldName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名称' ,
`fieldCode`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段代码' ,
`fieldType`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型' ,
`valueRangeTxt`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '范围值名称' ,
`valueRange`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '范围值' ,
`fieldValue`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`fieldTips`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段提示' ,
`fieldSort`  int(11) NULL DEFAULT 0 COMMENT '字段排序' ,
PRIMARY KEY (`configId`),
INDEX `parentId` (`parentId`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=37

;

-- ----------------------------
-- Records of rmt_sys_configs
-- ----------------------------
BEGIN;
INSERT INTO `rmt_sys_configs` VALUES ('1', '0', '商城名称', 'mallName', 'text', null, '', '大学生物尽其用二手网', null, '1'), ('2', '0', '商城标题', 'mallTitle', 'text', null, null, '大学生物尽其用二手网', null, '2'), ('3', '0', '商城描述', 'mallDesc', 'text', null, null, '大学生物尽其用二手网', null, '3'), ('4', '0', '商城关键字', 'mallKeywords', 'text', null, null, '大学生物尽其用,二手商场,物尽其用二手网', '&nbsp;&nbsp;以，号分隔', '4'), ('6', '1', '验证码显示范围', 'captcha_model', 'hidden', '管理员登录||商家加盟||商家登录||新用户注册||用户登录||留言反馈', '0,1,2,3,4,5', '0,1,2,3,4,5', null, '0'), ('7', '1', '验证码个数', 'captcha_len', 'hidden', null, null, '4', null, '0'), ('8', '1', '验证码宽度', 'captcha_width', 'hidden', null, null, '85', null, '0'), ('9', '1', '验证码高度', 'captcha_height', 'hidden', null, null, '25', null, '0'), ('10', '1', '验证模式', 'captcha_show', 'hidden', '字母,数字,混合', '0,1,6', '0', null, '0'), ('13', '0', '商品是否需要审核', 'isGoodsVerify', 'radio', '是||否', '1,0', '0', null, '5'), ('14', '0', '访问统计', 'visitStatistics', 'textarea', null, null, '&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot; src=&quot;http://js.users.51.la/18256266.js&quot;&gt;&lt;/script&gt;', null, '9'), ('15', '1', 'SMTP服务器', 'mailSmtp', 'text', null, null, 'smtp.163.com', null, '1'), ('16', '1', 'SMTP端口', 'mailPort', 'text', null, null, '25', null, '2'), ('17', '1', '是否验证SMTP', 'mailAuth', 'radio', '是||否', '1,0', '1', null, '3'), ('18', '1', 'SMTP发件人邮箱', 'mailAddress', 'text', null, null, 'xxxxx@163.com', null, '4'), ('19', '1', 'SMTP登录账号', 'mailUserName', 'text', null, null, 'username', null, '5'), ('20', '1', 'SMTP登录密码', 'mailPassword', 'text', null, null, 'password', null, '6'), ('21', '1', '发件人名称', 'mailSendTitle', 'text', null, null, 'WSTMall', null, '7'), ('22', '2', '短信账号', 'smsKey', 'text', null, null, '', '&nbsp;<a href=\'http://www.webchinese.com.cn\' target=\'_blank\'>点击充值</a>', '1'), ('23', '2', '短信密码', 'smsPass', 'text', null, null, '', null, '2'), ('24', '2', '号码每日发送数', 'smsLimit', 'text', null, null, '20', '避免恶意浪费短信的行为', '3'), ('26', '0', '授权码', 'mallLicense', 'hidden', null, null, null, null, '0'), ('27', '0', '商城Logo', 'mallLogo', 'upload', null, null, 'Apps/Home/View/default/images/logo.png', '(建议为240x132)<br/>', '6'), ('28', '0', '默认图片', 'goodsImg', 'upload', null, null, 'Apps/Home/View/default/images/item-pic.jpg', '', '7'), ('29', '0', '底部设置', 'mallFooter', 'textarea', null, null, '蚂蚁社团 版权所有  电话：111-1111111&lt;br/&gt;公司邮箱：cheng1483@163.com  客服QQ:111111111  粤ICP备12345678号&lt;br/&gt;一起努力，一起成功', null, '8'), ('30', '0', '联系电话', 'phoneNo', 'text', null, null, '111-1111111', null, '10'), ('31', '0', 'QQ', 'qqNo', 'text', null, null, '1614638361', null, '11'), ('32', '0', '默认学校', 'defaultCity', 'other', null, null, '130006', null, '5'), ('33', '0', '热搜索词', 'hotSearchs', 'text', null, null, '', '以，号分隔', '12'), ('34', '2', '开启短信发送验证码', 'smsVerfy', 'radio', '是||否', '1,0', '1', '', '4'), ('36', '2', '开启手机验证', 'phoneVerfy', 'radio', '是||否', '1,0', '0', '', '5');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_user_address`;
CREATE TABLE `rmt_user_address` (
`addressId`  int(11) NOT NULL AUTO_INCREMENT ,
`userId`  int(11) NOT NULL ,
`userName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`userPhone`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userTel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`areaId1`  int(11) NOT NULL DEFAULT 0 ,
`areaId2`  int(11) NOT NULL DEFAULT 0 ,
`areaId3`  int(11) NOT NULL DEFAULT 0 ,
`communityId`  int(11) NOT NULL DEFAULT 0 ,
`address`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`postCode`  char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isDefault`  tinyint(4) NOT NULL DEFAULT 0 ,
`addressFlag`  tinyint(4) NOT NULL DEFAULT 1 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`addressId`),
INDEX `userId` (`userId`, `addressFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of rmt_user_address
-- ----------------------------
BEGIN;
INSERT INTO `rmt_user_address` VALUES ('1', '9', '马生', null, '020-46787622', '440000', '440100', '440106', '15', '红花岗', '512000', '0', '1', '2015-05-19 23:28:38'), ('2', '9', '马生', null, '1591867199', '440000', '440100', '440106', '17', '桑德菲杰卡拉斯的减肥', '345987', '1', '1', '2015-05-19 23:55:11');
COMMIT;

-- ----------------------------
-- Table structure for `rmt_user_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_user_ranks`;
CREATE TABLE `rmt_user_ranks` (
`rankId`  int(11) NOT NULL AUTO_INCREMENT ,
`rankName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`startScore`  int(11) NOT NULL DEFAULT 0 ,
`endScore`  int(11) NOT NULL DEFAULT 0 ,
`rebate`  int(11) NULL DEFAULT 100 ,
`createTime`  datetime NOT NULL ,
PRIMARY KEY (`rankId`),
INDEX `startScore` (`startScore`, `endScore`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of rmt_user_ranks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rmt_users`
-- ----------------------------
DROP TABLE IF EXISTS `rmt_users`;
CREATE TABLE `rmt_users` (
`userId`  int(11) NOT NULL AUTO_INCREMENT ,
`loginName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`loginSecret`  int(11) NOT NULL ,
`loginPwd`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`userSex`  tinyint(4) NULL DEFAULT 3 ,
`userType`  tinyint(4) NULL DEFAULT 0 ,
`userName`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userQQ`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userPhone`  char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userEmail`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userScore`  int(11) NULL DEFAULT 0 ,
`userPhoto`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userTotalScore`  int(11) NULL DEFAULT 0 ,
`userStatus`  tinyint(4) NULL DEFAULT 1 ,
`userFlag`  tinyint(4) NULL DEFAULT 1 ,
`createTime`  datetime NULL DEFAULT NULL ,
`lastIP`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lastTime`  datetime NULL DEFAULT NULL ,
`cityId`  int(11) NOT NULL COMMENT '用户学校' ,
PRIMARY KEY (`userId`),
INDEX `userStatus` (`userStatus`, `userFlag`) USING BTREE ,
INDEX `loginName` (`loginName`) USING BTREE ,
INDEX `userPhone` (`userPhone`) USING BTREE ,
INDEX `userEmail` (`userEmail`) USING BTREE ,
INDEX `userType` (`userType`, `userFlag`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=350

;

-- ----------------------------
-- Records of rmt_users
-- ----------------------------
BEGIN;
INSERT INTO `rmt_users` VALUES ('9', 'gd_guangzhou', '7902', 'd6a3fe736d32101b2070e4d7667db639', '0', '1', 'admin', null, '15918671994', null, '0', null, '0', '1', '1', '2015-05-08 10:29:39', '127.0.0.1', '2015-10-12 13:54:06', '130006'), ('40', 'cheng1483', '6064', 'aa6195b6ead585eb6ded8af16fd99dc9', '0', '1', 'cw', '', '13920826502', '', '0', null, '0', '1', '1', '2016-01-30 22:45:05', '0.0.0.0', '2016-02-19 11:05:10', '130006'), ('41', 'cheng1483x', '3358', '8df974ea604798d73b1ed5e28b61efb4', '0', '0', '', '', '', '', '0', null, '0', '1', '1', '2016-02-11 19:36:02', '0.0.0.0', '2016-02-14 18:20:54', '130006'), ('42', 'test001', '8986', '587077a1f1e9063a9295911e0d39d1d9', '0', '1', 'DPx0001', '', '13920826591', '', '0', null, '0', '1', '1', '2016-02-16 20:57:15', null, null, '130006'), ('43', 'test2', '5576', 'face9c29a0fe8cba3dfeed6ea35bdedd', '0', '1', 'test2', '', '13920826592', '', '0', null, '0', '1', '1', '2016-02-16 22:50:14', null, null, '130006'), ('44', 'user1', '1563', '8a17d374a033fbbd9be6a0b15a379e65', '0', '0', '', '', '', '', '0', null, '0', '1', '1', '2016-02-17 18:41:19', '0.0.0.0', '2016-03-02 23:05:30', '130006'), ('1', 'admin', '3661', '57c2ddda45abd0618ec07b182947276b', '0', '1', '系统管理员', '', '13920826590', '', '0', null, '0', '1', '1', '2016-02-17 19:51:50', null, null, '130006'), ('46', 'user2', '1029', 'e71c673b15d4e365c4fe580e53da7c97', '0', '0', 'user2', '', '', '', '0', null, '0', '1', '1', '2016-02-18 20:38:33', null, null, '130006'), ('47', 'user3', '4854', '2317c8a84a7922ad71e750ceccaa3287', '0', '0', 'user3', '', '', '', '0', null, '0', '1', '1', '2016-02-18 20:39:29', null, null, '130017'), ('48', 'user4', '5526', '85fd880c3b174fc9d474bd2c9236a973', '0', '0', 'user4', '', '', '', '0', null, '0', '1', '1', '2016-02-18 20:40:06', null, null, '130006'), ('49', 'user5', '5868', '7f564657dbbd582134b4d95c53bdbbd3', '3', '0', 'user512', '', '13920826503', 'user512@163.com', '0', '', '0', '1', '1', '2016-02-18 20:41:58', '0.0.0.0', '2016-02-18 22:52:42', '130005'), ('50', 'shop002', '9753', '0905c99a6087fb160236c2ae37a89c8d', '3', '1', 'shop002', '', '13920826530', '', '0', null, '0', '1', '1', '2016-03-03 17:00:20', '0.0.0.0', '2016-03-03 17:41:48', '0'), ('213', 'kj_user64', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user64', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('214', 'kj_user65', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user65', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('215', 'kj_user66', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user66', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('216', 'kj_user67', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user67', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('217', 'kj_user68', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user68', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('218', 'kj_user69', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user69', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('219', 'kj_user70', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user70', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('220', 'kj_user71', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user71', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('221', 'kj_user72', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user72', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('222', 'kj_user73', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user73', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('223', 'kj_user74', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user74', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('224', 'kj_user75', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user75', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('225', 'kj_user76', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user76', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('226', 'kj_user77', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user77', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('227', 'kj_user78', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user78', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('228', 'kj_user79', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user79', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('193', 'kj_user44', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user44', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('194', 'kj_user45', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user45', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('195', 'kj_user46', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user46', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('196', 'kj_user47', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user47', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('197', 'kj_user48', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user48', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('198', 'kj_user49', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user49', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('199', 'kj_user50', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user50', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('200', 'kj_user51', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user51', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('201', 'kj_user52', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user52', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('202', 'kj_user53', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user53', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('203', 'kj_user54', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user54', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('204', 'kj_user55', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user55', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('205', 'kj_user56', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user56', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('206', 'kj_user57', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user57', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('207', 'kj_user58', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user58', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('208', 'kj_user59', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user59', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('209', 'kj_user60', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user60', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('210', 'kj_user61', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user61', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('211', 'kj_user62', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user62', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('212', 'kj_user63', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user63', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('182', 'kj_user33', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user33', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('183', 'kj_user34', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user34', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('184', 'kj_user35', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user35', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('185', 'kj_user36', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user36', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('186', 'kj_user37', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user37', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('187', 'kj_user38', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user38', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('188', 'kj_user39', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user39', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('189', 'kj_user40', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user40', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('190', 'kj_user41', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user41', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('191', 'kj_user42', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user42', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('192', 'kj_user43', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user43', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('163', 'kj_user14', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user14', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('164', 'kj_user15', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user15', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('165', 'kj_user16', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user16', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('166', 'kj_user17', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user17', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('167', 'kj_user18', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user18', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('168', 'kj_user19', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user19', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('169', 'kj_user20', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user20', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('170', 'kj_user21', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user21', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('171', 'kj_user22', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user22', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('172', 'kj_user23', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user23', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('173', 'kj_user24', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user24', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('174', 'kj_user25', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user25', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('175', 'kj_user26', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user26', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('176', 'kj_user27', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user27', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('177', 'kj_user28', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user28', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('178', 'kj_user29', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user29', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('179', 'kj_user30', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user30', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('180', 'kj_user31', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user31', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('181', 'kj_user32', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user32', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('153', 'kj_user4', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user4', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('154', 'kj_user5', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user5', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('155', 'kj_user6', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user6', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('156', 'kj_user7', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user7', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('157', 'kj_user8', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user8', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('158', 'kj_user9', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user9', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('159', 'kj_user10', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user10', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('160', 'kj_user11', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user11', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('161', 'kj_user12', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user12', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('162', 'kj_user13', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user13', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('150', 'kj_user1', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user1', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', '0.0.0.0', '2016-03-23 08:50:06', '130006'), ('151', 'kj_user2', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user2', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('152', 'kj_user3', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user3', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('229', 'kj_user80', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user80', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('230', 'kj_user81', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user81', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('231', 'kj_user82', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user82', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('232', 'kj_user83', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user83', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('233', 'kj_user84', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user84', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('234', 'kj_user85', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user85', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('235', 'kj_user86', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user86', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('236', 'kj_user87', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user87', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('237', 'kj_user88', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user88', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006');
INSERT INTO `rmt_users` VALUES ('238', 'kj_user89', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user89', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('239', 'kj_user90', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user90', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('240', 'kj_user91', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user91', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('241', 'kj_user92', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user92', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('242', 'kj_user93', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user93', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('243', 'kj_user94', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user94', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('244', 'kj_user95', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user95', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('245', 'kj_user96', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user96', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('246', 'kj_user97', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user97', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('247', 'kj_user98', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user98', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('248', 'kj_user99', '9370', '60f180641e86ee00bfe035a8147ab281', '3', '0', 'kj_user99', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:36:31', null, null, '130006'), ('249', 'zz_a', '5358', '4df1889b0816519630031da0d7c99b34', '3', '0', 'zz@163.com', '', '', 'zz@163.com', '0', null, '0', '1', '1', '2016-03-22 09:39:11', null, null, '130006'), ('250', '13920826598', '9877', 'f82655a35fd748285a1147e36fad5c8d', '3', '0', '13920826598', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:40:31', null, null, '130006'), ('251', 'ty_user1', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user1', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('252', 'ty_user2', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user2', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('253', 'ty_user3', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user3', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('254', 'ty_user4', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user4', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('255', 'ty_user5', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user5', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('256', 'ty_user6', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user6', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('257', 'ty_user7', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user7', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('258', 'ty_user8', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user8', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('259', 'ty_user9', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user9', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('260', 'ty_user10', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user10', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('261', 'ty_user11', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user11', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('262', 'ty_user12', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user12', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('263', 'ty_user13', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user13', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('264', 'ty_user14', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user14', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('265', 'ty_user15', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user15', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('266', 'ty_user16', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user16', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('267', 'ty_user17', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user17', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('268', 'ty_user18', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user18', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('269', 'ty_user19', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user19', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('270', 'ty_user20', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user20', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('271', 'ty_user21', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user21', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('272', 'ty_user22', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user22', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('273', 'ty_user23', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user23', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('274', 'ty_user24', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user24', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('275', 'ty_user25', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user25', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('276', 'ty_user26', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user26', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('277', 'ty_user27', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user27', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('278', 'ty_user28', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user28', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('279', 'ty_user29', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user29', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('280', 'ty_user30', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user30', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('281', 'ty_user31', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user31', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('282', 'ty_user32', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user32', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('283', 'ty_user33', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user33', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('284', 'ty_user34', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user34', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('285', 'ty_user35', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user35', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('286', 'ty_user36', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user36', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('287', 'ty_user37', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user37', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('288', 'ty_user38', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user38', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('289', 'ty_user39', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user39', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('290', 'ty_user40', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user40', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('291', 'ty_user41', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user41', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('292', 'ty_user42', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user42', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('293', 'ty_user43', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user43', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('294', 'ty_user44', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user44', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('295', 'ty_user45', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user45', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('296', 'ty_user46', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user46', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('297', 'ty_user47', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user47', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('298', 'ty_user48', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user48', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('299', 'ty_user49', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user49', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('300', 'ty_user50', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user50', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('301', 'ty_user51', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user51', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('302', 'ty_user52', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user52', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('303', 'ty_user53', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user53', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('304', 'ty_user54', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user54', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('305', 'ty_user55', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user55', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('306', 'ty_user56', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user56', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('307', 'ty_user57', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user57', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('308', 'ty_user58', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user58', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('309', 'ty_user59', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user59', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('310', 'ty_user60', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user60', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('311', 'ty_user61', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user61', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('312', 'ty_user62', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user62', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('313', 'ty_user63', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user63', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('314', 'ty_user64', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user64', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('315', 'ty_user65', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user65', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('316', 'ty_user66', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user66', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('317', 'ty_user67', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user67', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('318', 'ty_user68', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user68', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('319', 'ty_user69', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user69', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('320', 'ty_user70', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user70', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('321', 'ty_user71', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user71', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('322', 'ty_user72', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user72', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('323', 'ty_user73', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user73', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('324', 'ty_user74', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user74', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('325', 'ty_user75', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user75', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('326', 'ty_user76', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user76', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('327', 'ty_user77', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user77', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('328', 'ty_user78', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user78', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('329', 'ty_user79', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user79', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('330', 'ty_user80', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user80', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('331', 'ty_user81', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user81', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('332', 'ty_user82', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user82', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('333', 'ty_user83', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user83', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('334', 'ty_user84', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user84', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('335', 'ty_user85', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user85', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('336', 'ty_user86', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user86', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('337', 'ty_user87', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user87', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017');
INSERT INTO `rmt_users` VALUES ('338', 'ty_user88', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user88', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('339', 'ty_user89', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user89', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('340', 'ty_user90', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user90', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('341', 'ty_user91', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user91', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('342', 'ty_user92', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user92', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('343', 'ty_user93', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user93', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('344', 'ty_user94', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user94', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('345', 'ty_user95', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user95', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('346', 'ty_user96', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user96', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('347', 'ty_user97', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user97', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('348', 'ty_user98', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user98', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017'), ('349', 'ty_user99', '4858', 'e5a470bdaab9408a47f68ad733868ec2', '3', '0', 'ty_user99', '', '', '', '0', null, '0', '1', '1', '2016-03-22 09:42:05', null, null, '130017');
COMMIT;

-- ----------------------------
-- Auto increment value for `rmt_ads`
-- ----------------------------
ALTER TABLE `rmt_ads` AUTO_INCREMENT=21;

-- ----------------------------
-- Auto increment value for `rmt_areas`
-- ----------------------------
ALTER TABLE `rmt_areas` AUTO_INCREMENT=130021;

-- ----------------------------
-- Auto increment value for `rmt_article_cats`
-- ----------------------------
ALTER TABLE `rmt_article_cats` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for `rmt_articles`
-- ----------------------------
ALTER TABLE `rmt_articles` AUTO_INCREMENT=10;

-- ----------------------------
-- Auto increment value for `rmt_attribute_cats`
-- ----------------------------
ALTER TABLE `rmt_attribute_cats` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `rmt_attributes`
-- ----------------------------
ALTER TABLE `rmt_attributes` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for `rmt_banks`
-- ----------------------------
ALTER TABLE `rmt_banks` AUTO_INCREMENT=25;

-- ----------------------------
-- Auto increment value for `rmt_brands`
-- ----------------------------
ALTER TABLE `rmt_brands` AUTO_INCREMENT=60;

-- ----------------------------
-- Auto increment value for `rmt_communitys`
-- ----------------------------
ALTER TABLE `rmt_communitys` AUTO_INCREMENT=24;

-- ----------------------------
-- Auto increment value for `rmt_favorites`
-- ----------------------------
ALTER TABLE `rmt_favorites` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `rmt_feedbacks`
-- ----------------------------
ALTER TABLE `rmt_feedbacks` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_friendlinks`
-- ----------------------------
ALTER TABLE `rmt_friendlinks` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `rmt_goods`
-- ----------------------------
ALTER TABLE `rmt_goods` AUTO_INCREMENT=471;

-- ----------------------------
-- Auto increment value for `rmt_goods_appraises`
-- ----------------------------
ALTER TABLE `rmt_goods_appraises` AUTO_INCREMENT=14;

-- ----------------------------
-- Auto increment value for `rmt_goods_attributes`
-- ----------------------------
ALTER TABLE `rmt_goods_attributes` AUTO_INCREMENT=29;

-- ----------------------------
-- Auto increment value for `rmt_goods_cat_brands`
-- ----------------------------
ALTER TABLE `rmt_goods_cat_brands` AUTO_INCREMENT=43;

-- ----------------------------
-- Auto increment value for `rmt_goods_cats`
-- ----------------------------
ALTER TABLE `rmt_goods_cats` AUTO_INCREMENT=378;

-- ----------------------------
-- Auto increment value for `rmt_goods_gallerys`
-- ----------------------------
ALTER TABLE `rmt_goods_gallerys` AUTO_INCREMENT=496;

-- ----------------------------
-- Auto increment value for `rmt_goods_relateds`
-- ----------------------------
ALTER TABLE `rmt_goods_relateds` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_goods_scores`
-- ----------------------------
ALTER TABLE `rmt_goods_scores` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_log_operates`
-- ----------------------------
ALTER TABLE `rmt_log_operates` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_log_orders`
-- ----------------------------
ALTER TABLE `rmt_log_orders` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for `rmt_log_sms`
-- ----------------------------
ALTER TABLE `rmt_log_sms` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_log_staff_logins`
-- ----------------------------
ALTER TABLE `rmt_log_staff_logins` AUTO_INCREMENT=216;

-- ----------------------------
-- Auto increment value for `rmt_log_user_logins`
-- ----------------------------
ALTER TABLE `rmt_log_user_logins` AUTO_INCREMENT=61;

-- ----------------------------
-- Auto increment value for `rmt_messages`
-- ----------------------------
ALTER TABLE `rmt_messages` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `rmt_navs`
-- ----------------------------
ALTER TABLE `rmt_navs` AUTO_INCREMENT=15;

-- ----------------------------
-- Auto increment value for `rmt_order_goods`
-- ----------------------------
ALTER TABLE `rmt_order_goods` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_order_reminds`
-- ----------------------------
ALTER TABLE `rmt_order_reminds` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `rmt_orderids`
-- ----------------------------
ALTER TABLE `rmt_orderids` AUTO_INCREMENT=100000001;

-- ----------------------------
-- Auto increment value for `rmt_orders`
-- ----------------------------
ALTER TABLE `rmt_orders` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_payments`
-- ----------------------------
ALTER TABLE `rmt_payments` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `rmt_roles`
-- ----------------------------
ALTER TABLE `rmt_roles` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `rmt_shop_configs`
-- ----------------------------
ALTER TABLE `rmt_shop_configs` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_shop_scores`
-- ----------------------------
ALTER TABLE `rmt_shop_scores` AUTO_INCREMENT=36;

-- ----------------------------
-- Auto increment value for `rmt_shops`
-- ----------------------------
ALTER TABLE `rmt_shops` AUTO_INCREMENT=39;

-- ----------------------------
-- Auto increment value for `rmt_shops_cats`
-- ----------------------------
ALTER TABLE `rmt_shops_cats` AUTO_INCREMENT=184;

-- ----------------------------
-- Auto increment value for `rmt_shops_communitys`
-- ----------------------------
ALTER TABLE `rmt_shops_communitys` AUTO_INCREMENT=83;

-- ----------------------------
-- Auto increment value for `rmt_staffs`
-- ----------------------------
ALTER TABLE `rmt_staffs` AUTO_INCREMENT=16;

-- ----------------------------
-- Auto increment value for `rmt_sys_configs`
-- ----------------------------
ALTER TABLE `rmt_sys_configs` AUTO_INCREMENT=37;

-- ----------------------------
-- Auto increment value for `rmt_user_address`
-- ----------------------------
ALTER TABLE `rmt_user_address` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `rmt_user_ranks`
-- ----------------------------
ALTER TABLE `rmt_user_ranks` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `rmt_users`
-- ----------------------------
ALTER TABLE `rmt_users` AUTO_INCREMENT=350;
