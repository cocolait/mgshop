/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : mgshop

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-12-30 17:52:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mg_access`
-- ----------------------------
DROP TABLE IF EXISTS `mg_access`;
CREATE TABLE `mg_access` (
  `role_id` smallint(6) unsigned NOT NULL COMMENT '角色ID',
  `node_id` smallint(6) unsigned NOT NULL COMMENT '节点id',
  `level` tinyint(1) unsigned NOT NULL COMMENT '层级',
  KEY `role_id` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of mg_access
-- ----------------------------
INSERT INTO `mg_access` VALUES ('1', '14', '3');
INSERT INTO `mg_access` VALUES ('1', '13', '3');
INSERT INTO `mg_access` VALUES ('1', '10', '3');
INSERT INTO `mg_access` VALUES ('1', '9', '3');
INSERT INTO `mg_access` VALUES ('1', '8', '3');
INSERT INTO `mg_access` VALUES ('1', '5', '3');
INSERT INTO `mg_access` VALUES ('1', '6', '3');
INSERT INTO `mg_access` VALUES ('1', '15', '3');
INSERT INTO `mg_access` VALUES ('3', '68', '3');
INSERT INTO `mg_access` VALUES ('3', '67', '3');
INSERT INTO `mg_access` VALUES ('1', '7', '3');
INSERT INTO `mg_access` VALUES ('1', '3', '2');
INSERT INTO `mg_access` VALUES ('1', '1', '1');
INSERT INTO `mg_access` VALUES ('2', '53', '3');
INSERT INTO `mg_access` VALUES ('2', '12', '3');
INSERT INTO `mg_access` VALUES ('2', '4', '2');
INSERT INTO `mg_access` VALUES ('2', '61', '3');
INSERT INTO `mg_access` VALUES ('2', '60', '3');
INSERT INTO `mg_access` VALUES ('2', '59', '3');
INSERT INTO `mg_access` VALUES ('2', '58', '3');
INSERT INTO `mg_access` VALUES ('2', '57', '3');
INSERT INTO `mg_access` VALUES ('2', '56', '3');
INSERT INTO `mg_access` VALUES ('2', '55', '3');
INSERT INTO `mg_access` VALUES ('2', '54', '3');
INSERT INTO `mg_access` VALUES ('2', '38', '3');
INSERT INTO `mg_access` VALUES ('2', '37', '3');
INSERT INTO `mg_access` VALUES ('2', '36', '3');
INSERT INTO `mg_access` VALUES ('2', '35', '3');
INSERT INTO `mg_access` VALUES ('2', '34', '3');
INSERT INTO `mg_access` VALUES ('2', '33', '3');
INSERT INTO `mg_access` VALUES ('2', '32', '3');
INSERT INTO `mg_access` VALUES ('2', '31', '3');
INSERT INTO `mg_access` VALUES ('2', '30', '3');
INSERT INTO `mg_access` VALUES ('2', '28', '3');
INSERT INTO `mg_access` VALUES ('2', '26', '3');
INSERT INTO `mg_access` VALUES ('2', '25', '3');
INSERT INTO `mg_access` VALUES ('2', '24', '3');
INSERT INTO `mg_access` VALUES ('2', '23', '3');
INSERT INTO `mg_access` VALUES ('2', '22', '3');
INSERT INTO `mg_access` VALUES ('2', '21', '3');
INSERT INTO `mg_access` VALUES ('2', '20', '3');
INSERT INTO `mg_access` VALUES ('2', '19', '3');
INSERT INTO `mg_access` VALUES ('2', '18', '3');
INSERT INTO `mg_access` VALUES ('2', '17', '3');
INSERT INTO `mg_access` VALUES ('2', '16', '3');
INSERT INTO `mg_access` VALUES ('2', '15', '3');
INSERT INTO `mg_access` VALUES ('2', '14', '3');
INSERT INTO `mg_access` VALUES ('2', '13', '3');
INSERT INTO `mg_access` VALUES ('2', '10', '3');
INSERT INTO `mg_access` VALUES ('2', '9', '3');
INSERT INTO `mg_access` VALUES ('2', '8', '3');
INSERT INTO `mg_access` VALUES ('2', '5', '3');
INSERT INTO `mg_access` VALUES ('2', '6', '3');
INSERT INTO `mg_access` VALUES ('2', '7', '3');
INSERT INTO `mg_access` VALUES ('2', '3', '2');
INSERT INTO `mg_access` VALUES ('2', '1', '1');
INSERT INTO `mg_access` VALUES ('1', '16', '3');
INSERT INTO `mg_access` VALUES ('1', '17', '3');
INSERT INTO `mg_access` VALUES ('1', '18', '3');
INSERT INTO `mg_access` VALUES ('1', '19', '3');
INSERT INTO `mg_access` VALUES ('1', '20', '3');
INSERT INTO `mg_access` VALUES ('1', '21', '3');
INSERT INTO `mg_access` VALUES ('1', '22', '3');
INSERT INTO `mg_access` VALUES ('1', '23', '3');
INSERT INTO `mg_access` VALUES ('1', '24', '3');
INSERT INTO `mg_access` VALUES ('1', '25', '3');
INSERT INTO `mg_access` VALUES ('1', '26', '3');
INSERT INTO `mg_access` VALUES ('1', '28', '3');
INSERT INTO `mg_access` VALUES ('1', '30', '3');
INSERT INTO `mg_access` VALUES ('1', '31', '3');
INSERT INTO `mg_access` VALUES ('1', '32', '3');
INSERT INTO `mg_access` VALUES ('1', '33', '3');
INSERT INTO `mg_access` VALUES ('1', '34', '3');
INSERT INTO `mg_access` VALUES ('1', '35', '3');
INSERT INTO `mg_access` VALUES ('1', '36', '3');
INSERT INTO `mg_access` VALUES ('1', '37', '3');
INSERT INTO `mg_access` VALUES ('1', '38', '3');
INSERT INTO `mg_access` VALUES ('1', '54', '3');
INSERT INTO `mg_access` VALUES ('1', '55', '3');
INSERT INTO `mg_access` VALUES ('1', '56', '3');
INSERT INTO `mg_access` VALUES ('1', '57', '3');
INSERT INTO `mg_access` VALUES ('1', '58', '3');
INSERT INTO `mg_access` VALUES ('1', '59', '3');
INSERT INTO `mg_access` VALUES ('1', '60', '3');
INSERT INTO `mg_access` VALUES ('1', '61', '3');
INSERT INTO `mg_access` VALUES ('1', '4', '2');
INSERT INTO `mg_access` VALUES ('1', '12', '3');
INSERT INTO `mg_access` VALUES ('1', '53', '3');
INSERT INTO `mg_access` VALUES ('1', '39', '2');
INSERT INTO `mg_access` VALUES ('1', '40', '3');
INSERT INTO `mg_access` VALUES ('1', '41', '3');
INSERT INTO `mg_access` VALUES ('1', '42', '3');
INSERT INTO `mg_access` VALUES ('1', '43', '3');
INSERT INTO `mg_access` VALUES ('1', '44', '3');
INSERT INTO `mg_access` VALUES ('1', '45', '3');
INSERT INTO `mg_access` VALUES ('1', '46', '3');
INSERT INTO `mg_access` VALUES ('1', '47', '3');
INSERT INTO `mg_access` VALUES ('1', '48', '3');
INSERT INTO `mg_access` VALUES ('1', '49', '3');
INSERT INTO `mg_access` VALUES ('1', '62', '2');
INSERT INTO `mg_access` VALUES ('1', '63', '3');
INSERT INTO `mg_access` VALUES ('1', '64', '3');
INSERT INTO `mg_access` VALUES ('1', '65', '2');
INSERT INTO `mg_access` VALUES ('1', '66', '3');
INSERT INTO `mg_access` VALUES ('1', '67', '3');
INSERT INTO `mg_access` VALUES ('1', '68', '3');
INSERT INTO `mg_access` VALUES ('1', '70', '3');
INSERT INTO `mg_access` VALUES ('1', '69', '3');
INSERT INTO `mg_access` VALUES ('1', '71', '3');
INSERT INTO `mg_access` VALUES ('3', '66', '3');
INSERT INTO `mg_access` VALUES ('3', '65', '2');
INSERT INTO `mg_access` VALUES ('3', '64', '3');
INSERT INTO `mg_access` VALUES ('3', '63', '3');
INSERT INTO `mg_access` VALUES ('3', '62', '2');
INSERT INTO `mg_access` VALUES ('3', '61', '3');
INSERT INTO `mg_access` VALUES ('3', '60', '3');
INSERT INTO `mg_access` VALUES ('3', '59', '3');
INSERT INTO `mg_access` VALUES ('3', '58', '3');
INSERT INTO `mg_access` VALUES ('3', '57', '3');
INSERT INTO `mg_access` VALUES ('3', '56', '3');
INSERT INTO `mg_access` VALUES ('3', '55', '3');
INSERT INTO `mg_access` VALUES ('3', '54', '3');
INSERT INTO `mg_access` VALUES ('3', '38', '3');
INSERT INTO `mg_access` VALUES ('3', '37', '3');
INSERT INTO `mg_access` VALUES ('3', '36', '3');
INSERT INTO `mg_access` VALUES ('3', '35', '3');
INSERT INTO `mg_access` VALUES ('3', '34', '3');
INSERT INTO `mg_access` VALUES ('3', '33', '3');
INSERT INTO `mg_access` VALUES ('3', '32', '3');
INSERT INTO `mg_access` VALUES ('3', '31', '3');
INSERT INTO `mg_access` VALUES ('3', '30', '3');
INSERT INTO `mg_access` VALUES ('3', '28', '3');
INSERT INTO `mg_access` VALUES ('3', '26', '3');
INSERT INTO `mg_access` VALUES ('3', '25', '3');
INSERT INTO `mg_access` VALUES ('3', '24', '3');
INSERT INTO `mg_access` VALUES ('3', '23', '3');
INSERT INTO `mg_access` VALUES ('3', '22', '3');
INSERT INTO `mg_access` VALUES ('3', '21', '3');
INSERT INTO `mg_access` VALUES ('3', '20', '3');
INSERT INTO `mg_access` VALUES ('3', '19', '3');
INSERT INTO `mg_access` VALUES ('3', '18', '3');
INSERT INTO `mg_access` VALUES ('3', '17', '3');
INSERT INTO `mg_access` VALUES ('3', '16', '3');
INSERT INTO `mg_access` VALUES ('3', '15', '3');
INSERT INTO `mg_access` VALUES ('3', '14', '3');
INSERT INTO `mg_access` VALUES ('3', '13', '3');
INSERT INTO `mg_access` VALUES ('3', '10', '3');
INSERT INTO `mg_access` VALUES ('3', '9', '3');
INSERT INTO `mg_access` VALUES ('3', '8', '3');
INSERT INTO `mg_access` VALUES ('3', '5', '3');
INSERT INTO `mg_access` VALUES ('3', '6', '3');
INSERT INTO `mg_access` VALUES ('3', '7', '3');
INSERT INTO `mg_access` VALUES ('3', '3', '2');
INSERT INTO `mg_access` VALUES ('3', '70', '3');
INSERT INTO `mg_access` VALUES ('3', '69', '3');
INSERT INTO `mg_access` VALUES ('3', '71', '3');

-- ----------------------------
-- Table structure for `mg_admin`
-- ----------------------------
DROP TABLE IF EXISTS `mg_admin`;
CREATE TABLE `mg_admin` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uname` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `loginip` char(20) NOT NULL DEFAULT '0' COMMENT '用户登录ip',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上一次登录时间',
  `mg_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定：1为锁定',
  `face` varchar(100) NOT NULL DEFAULT '' COMMENT '用户头像',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `uname_UNIQUE` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of mg_admin
-- ----------------------------
INSERT INTO `mg_admin` VALUES ('1', 'admin', '430b0007cd749d9348d0483b182f959c', '127.0.0.1', '1451463507', '0', 'Upload/UserFace/151216/face_96201450195590.jpg');
INSERT INTO `mg_admin` VALUES ('2', 'test', '930da371555e6cb09b85fb3005868ae8', '127.0.0.1', '1451463480', '0', 'Upload/UserFace/151229/face_37541451380268.jpg');
INSERT INTO `mg_admin` VALUES ('4', 'lisi', '0a7acb7269a26fb8143fb096cb0c94ee', '127.0.0.1', '1451380237', '0', '');

-- ----------------------------
-- Table structure for `mg_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `mg_admin_role`;
CREATE TABLE `mg_admin_role` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `admin_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户和角色的中间表';

-- ----------------------------
-- Records of mg_admin_role
-- ----------------------------
INSERT INTO `mg_admin_role` VALUES ('1', '1');
INSERT INTO `mg_admin_role` VALUES ('2', '2');
INSERT INTO `mg_admin_role` VALUES ('3', '4');

-- ----------------------------
-- Table structure for `mg_brand`
-- ----------------------------
DROP TABLE IF EXISTS `mg_brand`;
CREATE TABLE `mg_brand` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT '品牌的logo图片',
  `bsort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示：1：显示 0：不显示',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='商品品牌表';

-- ----------------------------
-- Records of mg_brand
-- ----------------------------
INSERT INTO `mg_brand` VALUES ('8', 'ERANZI', 'Upload/Brand/151211/brand_logo_79691449814189.jpg', '5', '1', '1');
INSERT INTO `mg_brand` VALUES ('9', '耐克', 'Upload/Brand/151211/brand_logo_17281449814076.jpg', '2', '1', '1');
INSERT INTO `mg_brand` VALUES ('6', 'JCOOL', 'Upload/Brand/151211/brand_logo_47371449814118.jpg', '2', '1', '1');
INSERT INTO `mg_brand` VALUES ('7', '魔法', 'Upload/Brand/151211/brand_logo_88351449814155.jpg', '2', '1', '1');
INSERT INTO `mg_brand` VALUES ('10', '阿迪达斯', 'Upload/Brand/151211/brand_logo_76051449814045.jpg', '1', '1', '1');
INSERT INTO `mg_brand` VALUES ('11', 'HEZE', 'Upload/Brand/151211/brand_logo_63901449814211.jpg', '6', '1', '1');
INSERT INTO `mg_brand` VALUES ('12', 'VANS', 'Upload/Brand/151211/brand_logo_99731449814239.jpg', '7', '1', '1');
INSERT INTO `mg_brand` VALUES ('13', 'CORTHE', 'Upload/Brand/151211/brand_logo_29871449814277.jpg', '8', '1', '1');
INSERT INTO `mg_brand` VALUES ('14', 'VNOOK', 'Upload/Brand/151211/brand_logo_63321449814417.jpg', '9', '1', '1');
INSERT INTO `mg_brand` VALUES ('15', '时光纪', 'Upload/Brand/151211/brand_logo_80141449814448.jpg', '10', '1', '1');
INSERT INTO `mg_brand` VALUES ('16', '糯米大小姐', 'Upload/Brand/151211/brand_logo_43151449814474.jpg', '11', '1', '1');
INSERT INTO `mg_brand` VALUES ('17', 'VIISHOW', 'Upload/Brand/151211/brand_logo_20561449814509.jpg', '12', '1', '1');
INSERT INTO `mg_brand` VALUES ('18', 'HEZI', 'Upload/Brand/151211/brand_logo_351449814538.jpg', '13', '1', '1');
INSERT INTO `mg_brand` VALUES ('19', 'SUE', 'Upload/Brand/151211/brand_logo_19641449814554.jpg', '14', '1', '1');

-- ----------------------------
-- Table structure for `mg_category`
-- ----------------------------
DROP TABLE IF EXISTS `mg_category`;
CREATE TABLE `mg_category` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cname` char(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `csort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `goods_type_tid` int(10) unsigned NOT NULL COMMENT '类型列表的主键ID',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示：1：显示 0：关闭',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门',
  `is_imgs` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示图片',
  `max_imgs_250x130` varchar(100) DEFAULT NULL COMMENT '一级栏目图片',
  `max_imgs_200x240` varchar(100) DEFAULT NULL COMMENT '一级栏目图片',
  `mini_imgs_120x120` varchar(100) DEFAULT NULL COMMENT '二级栏目图片',
  PRIMARY KEY (`cid`),
  KEY `fk_mg_category_mg_goods_type1_idx` (`goods_type_tid`),
  KEY `cate_imgs_key` (`is_imgs`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of mg_category
-- ----------------------------
INSERT INTO `mg_category` VALUES ('1', '上衣', '0', '1', '1', '1', '0', '1', 'Upload/Cate/151219/cate_max250x130_59031450519441.jpg', 'Upload/Cate/151219/cate_max200x240_66521450519447.jpg', null);
INSERT INTO `mg_category` VALUES ('13', '冬季新品', '12', '20', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_81621450362988.jpg');
INSERT INTO `mg_category` VALUES ('14', '最爱牛仔', '12', '30', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_94511450363011.jpg');
INSERT INTO `mg_category` VALUES ('10', '当季热卖', '1', '3', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_16721450360813.jpg');
INSERT INTO `mg_category` VALUES ('9', '经典内搭', '1', '2', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_73421450361616.jpg');
INSERT INTO `mg_category` VALUES ('8', '流行元素', '1', '1', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_41281450361658.jpg');
INSERT INTO `mg_category` VALUES ('12', '裤子', '0', '2', '2', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_70761450362958.jpg', 'Upload/Cate/151217/cate_max200x240_56931450362965.jpg', null);
INSERT INTO `mg_category` VALUES ('15', '舒适休闲', '12', '40', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_85461450363030.jpg');
INSERT INTO `mg_category` VALUES ('18', '流行元素', '12', '11', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_81091450363048.jpg');
INSERT INTO `mg_category` VALUES ('17', '必备外套', '1', '11', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_80701450361687.jpg');
INSERT INTO `mg_category` VALUES ('19', '冬季新品', '10', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('20', '时尚套装', '10', '2', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('21', '显瘦毛呢', '10', '3', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('22', '韩版风衣', '10', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('23', '针织衫', '9', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('24', '卫衣/绒衫', '9', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('25', '打底衫', '9', '3', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('26', '衬衫', '9', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('27', '风衣', '8', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('28', '牛仔外套', '8', '2', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('29', '棒球服', '8', '3', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('30', '毛呢外套', '8', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('31', '太空棉', '17', '1', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('32', '廓形', '17', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('33', '条纹', '17', '3', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('34', '印花', '17', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('35', '牛仔裤', '13', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('36', '小脚裤', '13', '2', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('37', '打底裤', '13', '2', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('38', '显瘦牛仔裤', '14', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('39', '小脚牛仔裤', '14', '2', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('40', '休闲牛仔裤', '14', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('41', '棉质休闲裤', '15', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('42', '阔腿休闲裤', '15', '2', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('43', '背带休闲裤', '15', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('44', '修身显瘦', '18', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('45', '韩版', '18', '2', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('46', '纯棉', '18', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('47', '高腰', '18', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('48', '内衣', '0', '3', '1', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_21101450363276.jpg', 'Upload/Cate/151217/cate_max200x240_63551450363290.png', null);
INSERT INTO `mg_category` VALUES ('49', '内衣', '48', '1', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_29911450363310.jpg');
INSERT INTO `mg_category` VALUES ('50', '家居睡衣', '48', '2', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_67281450363340.jpg');
INSERT INTO `mg_category` VALUES ('51', '袜子', '48', '3', '1', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_82161450363360.jpg');
INSERT INTO `mg_category` VALUES ('52', '内衣套装', '49', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('53', '调整型内衣', '49', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('54', '文胸', '49', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('55', '内裤', '49', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('56', '保暖内衣', '49', '3', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('57', '无痕内衣', '49', '4', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('58', '性感内衣', '49', '5', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('59', '运动内衣', '49', '6', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('60', '长靴', '50', '1', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('61', '好货', '50', '2', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('62', '坡跟鞋', '50', '3', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('63', '平底靴', '50', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('64', '中筒靴', '50', '5', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('65', '懒人鞋', '50', '6', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('66', '运动跑鞋', '50', '7', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('67', '高帮鞋', '50', '8', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('68', '中跟单鞋', '50', '9', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('69', '牛津鞋松', '50', '10', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('70', '糕鞋圆头鞋', '50', '11', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('71', '短袜', '51', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('72', '瘦腿袜', '51', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('73', '打底袜', '51', '3', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('74', '堆堆袜', '51', '4', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('75', '过膝袜', '51', '5', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('76', '连裤袜', '51', '5', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('77', '丝袜', '51', '6', '1', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('78', '船袜', '51', '7', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('79', '裙子', '0', '4', '2', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_33771450362707.jpg', 'Upload/Cate/151217/cate_max200x240_13771450362716.jpg', null);
INSERT INTO `mg_category` VALUES ('80', '鞋子', '0', '5', '9', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_80461450363522.jpg', 'Upload/Cate/151217/cate_max200x240_61911450363573.jpg', null);
INSERT INTO `mg_category` VALUES ('81', '男友', '0', '6', '13', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_21450364524.jpg', 'Upload/Cate/151217/cate_max200x240_34891450364530.jpg', null);
INSERT INTO `mg_category` VALUES ('82', '包包', '0', '7', '4', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_63181450363815.jpg', 'Upload/Cate/151217/cate_max200x240_7421450363825.jpg', null);
INSERT INTO `mg_category` VALUES ('83', '美妆', '0', '8', '7', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_87931450364070.jpg', 'Upload/Cate/151217/cate_max200x240_26261450364088.jpg', null);
INSERT INTO `mg_category` VALUES ('84', '配饰', '0', '9', '3', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_18001450364285.jpg', 'Upload/Cate/151217/cate_max200x240_63481450364292.jpg', null);
INSERT INTO `mg_category` VALUES ('85', '母婴', '0', '10', '12', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_41431450364713.jpg', 'Upload/Cate/151217/cate_max200x240_26131450364722.jpg', null);
INSERT INTO `mg_category` VALUES ('86', '家居', '0', '11', '10', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_21311450364942.png', 'Upload/Cate/151217/cate_max200x240_21101450364948.png', null);
INSERT INTO `mg_category` VALUES ('87', '零食', '0', '12', '11', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_94341450365308.jpg', 'Upload/Cate/151217/cate_max200x240_71631450365318.jpg', null);
INSERT INTO `mg_category` VALUES ('88', '百货', '0', '13', '8', '1', '0', '1', 'Upload/Cate/151217/cate_max250x130_96021450365123.jpg', 'Upload/Cate/151217/cate_max200x240_35301450365130.png', null);
INSERT INTO `mg_category` VALUES ('89', '新品发布', '79', '1', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_64291450362747.jpg');
INSERT INTO `mg_category` VALUES ('90', '当季热卖', '79', '2', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_32941450362769.jpg');
INSERT INTO `mg_category` VALUES ('91', '女神最爱', '79', '3', '2', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_66471450362789.jpg');
INSERT INTO `mg_category` VALUES ('92', '毛衣裙', '89', '1', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('93', '半身裙', '89', '2', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('94', '韩范美裙', '89', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('95', '毛呢裙', '89', '4', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('96', '包臀裙', '89', '5', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('97', '针织裙', '89', '6', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('98', '收腰裙', '89', '7', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('99', '衬衫裙', '89', '8', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('100', '牛仔裙', '89', '10', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('101', '长袖连衣裙', '89', '11', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('102', '卫衣裙', '89', '13', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('103', '连衣裙', '90', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('104', 'T恤裙', '90', '2', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('105', '背带裙', '90', '3', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('106', '针织裙', '90', '4', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('107', '裙子套装', '90', '5', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('108', '气质美裙', '90', '6', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('109', '伞裙长裙', '90', '8', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('110', '小白裙', '89', '10', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('111', '甜美时尚套', '91', '1', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('112', '装韩范气质', '91', '2', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('113', '清新女神', '91', '3', '2', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('114', '一步裙', '91', '5', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('115', '飘逸长裙', '91', '6', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('116', '流苏', '91', '7', '2', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('117', '当季热卖', '80', '1', '9', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_74411450363599.jpg');
INSERT INTO `mg_category` VALUES ('118', '热门推荐', '80', '2', '9', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_28921450363626.jpg');
INSERT INTO `mg_category` VALUES ('119', '经典直击', '80', '3', '9', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_13381450363650.jpg');
INSERT INTO `mg_category` VALUES ('120', '流行', '80', '4', '9', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_2021450363667.jpg');
INSERT INTO `mg_category` VALUES ('121', '豆豆鞋', '117', '1', '9', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('122', '增高鞋', '117', '2', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('123', '流苏靴', '117', '3', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('125', '运动鞋', '117', '4', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('126', '切尔西靴', '117', '5', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('127', '长靴', '118', '1', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('128', '好货', '118', '2', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('129', '坡跟鞋', '118', '3', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('130', '平底靴', '118', '4', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('131', '运动跑鞋', '118', '5', '9', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('132', '明星同款', '119', '1', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('133', '复古擦色', '119', '2', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('134', '韩范', '119', '3', '9', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('135', '情侣款系', '119', '4', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('136', '欧美范', '119', '5', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('137', '情侣款', '120', '1', '9', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('138', '闺蜜小聚', '120', '2', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('139', '轻熟风', '120', '3', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('140', '约会必备', '120', '4', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('141', '假期出游', '120', '5', '9', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('142', '热门', '82', '1', '4', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_45881450363848.jpg');
INSERT INTO `mg_category` VALUES ('143', '款式', '82', '2', '4', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_6821450363869.jpg');
INSERT INTO `mg_category` VALUES ('144', '流行', '82', '3', '4', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_37271450363892.jpg');
INSERT INTO `mg_category` VALUES ('145', '元素', '82', '4', '4', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_62411450363908.jpg');
INSERT INTO `mg_category` VALUES ('146', '韩版双肩', '142', '1', '4', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('147', '单肩斜挎', '142', '2', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('148', '小包', '142', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('149', '热门爆款', '142', '4', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('150', '日常百搭', '142', '5', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('151', '双肩包', '143', '1', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('152', '斜挎包', '143', '2', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('153', '单肩包', '143', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('154', '手提包', '143', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('155', '旅行箱', '143', '5', '4', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('156', '邮差包', '144', '1', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('157', '卡通包', '144', '2', '4', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('158', '印花包', '144', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('159', '铆钉包', '144', '4', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('160', '果冻包', '144', '5', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('161', '格纹', '145', '1', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('162', '编织', '145', '2', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('163', '锁扣', '145', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('164', '铆钉', '145', '3', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('165', '流苏', '145', '4', '4', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('166', 'PU双肩', '145', '6', '4', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('167', '当季热卖', '84', '1', '3', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_69511450364322.jpg');
INSERT INTO `mg_category` VALUES ('168', '爱美装扮', '84', '2', '3', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_35301450364346.jpg');
INSERT INTO `mg_category` VALUES ('169', '流行推荐', '84', '3', '3', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_41751450364376.jpg');
INSERT INTO `mg_category` VALUES ('170', '手机数码', '84', '4', '3', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_41501450364398.jpg');
INSERT INTO `mg_category` VALUES ('172', '帽子', '167', '2', '3', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('207', '毛衣', '200', '3', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('174', '发饰', '167', '3', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('175', '戒指', '167', '5', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('176', '眼镜', '167', '6', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('177', '耳饰', '167', '7', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('178', '项链', '167', '8', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('179', '腰带', '167', '9', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('180', '去派对', '168', '1', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('183', '独特小物', '168', '4', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('184', '数码控', '168', '5', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('185', '假发', '168', '6', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('186', '棒球帽', '168', '8', '3', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('188', '锁骨链', '169', '2', '3', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('190', '最IN手机壳', '169', '4', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('191', '韩版帽', '169', '6', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('192', '流苏围巾', '169', '7', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('193', '手机壳', '170', '1', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('194', '移动电源', '170', '2', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('206', '内衣', '200', '2', '13', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('197', '数据线', '170', '4', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('198', 'iPhone壳', '170', '5', '3', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('199', '音箱', '170', '6', '3', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('200', '男装尖货', '81', '1', '13', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_60891450364551.jpg');
INSERT INTO `mg_category` VALUES ('201', '至IN鞋履', '81', '2', '13', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_50541450364580.jpg');
INSERT INTO `mg_category` VALUES ('202', '型男包配', '81', '3', '13', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_48651450364600.jpg');
INSERT INTO `mg_category` VALUES ('203', '潮流风格', '81', '4', '13', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_72871450364619.jpg');
INSERT INTO `mg_category` VALUES ('204', '上衣', '200', '1', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('217', '皮带', '202', '3', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('208', '棉衣', '200', '4', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('209', '牛仔裤', '200', '5', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('210', '靴子', '201', '1', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('211', '运动鞋', '201', '2', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('212', '休闲鞋', '201', '3', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('213', '皮鞋', '201', '4', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('214', '帆布鞋', '201', '5', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('215', '围巾', '202', '1', '13', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('216', '双肩包', '202', '1', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('218', '手表', '202', '4', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('219', '钱包卡套', '202', '5', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('220', '清新暖男', '203', '1', '13', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('221', '情侣装', '203', '2', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('222', '西部牛仔', '203', '3', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('223', '基本款', '203', '4', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('224', '个性街头', '203', '5', '13', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('225', '必备护肤', '83', '1', '7', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_69411450364108.jpg');
INSERT INTO `mg_category` VALUES ('226', '潮流彩妆', '83', '2', '7', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_70181450364126.jpg');
INSERT INTO `mg_category` VALUES ('227', '美体美发', '83', '3', '7', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_30871450364146.jpg');
INSERT INTO `mg_category` VALUES ('228', '最IN美妆', '83', '4', '7', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_67961450364166.jpg');
INSERT INTO `mg_category` VALUES ('229', '洁面', '225', '1', '7', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('230', '面膜', '225', '2', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('231', '水乳霜', '225', '3', '7', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('232', '眼唇护理', '225', '4', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('233', 'T区护理', '225', '5', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('234', '妆前隔离', '226', '1', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('235', 'BB霜', '226', '2', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('236', '遮瑕粉底', '226', '3', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('237', '腮红', '226', '4', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('238', '阴影高光', '226', '5', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('239', '全身呵护', '227', '1', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('240', '手足护理', '227', '2', '7', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('241', '纤体', '227', '3', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('242', '指甲油', '227', '4', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('243', '香水', '227', '5', '7', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('244', '超值套装', '228', '1', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('245', '美白', '228', '2', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('246', '祛痘', '228', '3', '7', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('247', '敏感肌', '228', '4', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('248', '控油', '228', '5', '7', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('249', '辣妈', '85', '1', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_12161450364740.jpg');
INSERT INTO `mg_category` VALUES ('250', '童装', '85', '2', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_24111450364761.jpg');
INSERT INTO `mg_category` VALUES ('251', '鞋包配', '85', '3', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_38981450364780.png');
INSERT INTO `mg_category` VALUES ('252', '玩具用品', '85', '4', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_18991450364810.jpg');
INSERT INTO `mg_category` VALUES ('253', '孕妇装', '249', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('256', '妈咪套装', '249', '2', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('255', '托腹裤', '249', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('257', '哺乳内衣', '249', '4', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('258', '家居服', '249', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('259', '女童', '250', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('260', '男童', '250', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('261', '棉服', '250', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('262', '御寒外套', '250', '4', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('263', '套装', '250', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('264', '雪地靴', '251', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('265', '运动鞋', '251', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('266', '学步鞋', '251', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('267', '帆布鞋', '251', '4', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('268', '加绒鞋', '251', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('269', '益智早教', '252', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('270', '积木玩具', '252', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('271', '毛绒玩具', '252', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('272', '电动遥控', '252', '4', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('273', '婴儿洗护', '252', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('274', '最爱', '86', '1', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_50821450364969.png');
INSERT INTO `mg_category` VALUES ('275', '家纺布艺', '86', '2', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_57391450364987.jpg');
INSERT INTO `mg_category` VALUES ('276', '精美家饰', '86', '3', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_42481450365013.png');
INSERT INTO `mg_category` VALUES ('277', '美味厨房', '86', '4', '10', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_38081450365032.png');
INSERT INTO `mg_category` VALUES ('278', '新品', '274', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('279', '好睡眠', '274', '2', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('280', '宜家风', '274', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('281', '萌萌哒', '274', '4', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('282', '文艺范', '274', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('283', '桌布', '275', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('284', '地毯地垫', '275', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('285', '坐垫', '275', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('286', '美翻了窗帘', '275', '4', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('287', '毛绒玩具', '275', '5', '10', '0', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('288', '香薰', '276', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('289', '绿植', '276', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('290', '仿真花', '276', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('291', 'DIY', '276', '4', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('292', '装饰画', '276', '5', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('293', '烘培器具', '277', '1', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('294', '便当盒', '277', '2', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('295', '保鲜罐', '277', '3', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('296', '围裙', '277', '4', '10', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('297', '厨房清洁', '277', '5', '10', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('298', '休闲食品', '87', '1', '11', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_4521450365336.jpg');
INSERT INTO `mg_category` VALUES ('299', '进口零食', '87', '2', '11', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_66091450365363.jpg');
INSERT INTO `mg_category` VALUES ('300', '茶酒饮品', '87', '3', '11', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_72821450365386.jpg');
INSERT INTO `mg_category` VALUES ('301', '最爱', '87', '4', '11', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_82431450365403.jpg');
INSERT INTO `mg_category` VALUES ('302', '饼干', '298', '1', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('303', '糕点', '298', '2', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('304', '糖果', '298', '3', '11', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('305', '蜜饯', '298', '5', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('306', '坚果', '298', '7', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('307', '肉干肉脯', '298', '8', '11', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('308', '韩国', '299', '1', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('309', '日本', '299', '2', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('310', '东南亚', '299', '3', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('311', '进口饼干', '299', '4', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('312', '进口糕点', '299', '5', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('313', '咖啡', '300', '1', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('314', '冲饮谷物', '300', '2', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('315', '花草茶', '300', '3', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('316', '饮料', '300', '4', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('317', '冲饮', '300', '5', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('318', '怀旧零食', '301', '1', '11', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('319', '肉食诱惑', '301', '2', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('320', '营养早餐', '301', '3', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('321', '午后时光', '301', '4', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('322', '甜食控', '301', '5', '11', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('323', '最爱', '88', '1', '8', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_50001450365154.png');
INSERT INTO `mg_category` VALUES ('324', '生活日用', '88', '2', '8', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_30621450365177.png');
INSERT INTO `mg_category` VALUES ('325', '收纳控', '88', '3', '8', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_72261450365195.png');
INSERT INTO `mg_category` VALUES ('326', '变美丽', '88', '4', '8', '1', '0', '1', null, null, 'Upload/Cate/151217/cate_max120x120_70971450365212.png');
INSERT INTO `mg_category` VALUES ('327', '文具控', '323', '1', '8', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('328', '旅行必备', '323', '2', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('329', '萌萌哒', '323', '3', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('330', '透明专辑', '323', '4', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('331', '小清新', '323', '5', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('332', '保温杯', '324', '1', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('333', '晴雨伞', '324', '2', '8', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('334', '马克杯', '324', '3', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('335', '玻璃杯', '324', '4', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('336', '热水袋', '324', '5', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('337', '首饰盒', '325', '1', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('338', '收纳箱', '325', '2', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('339', '鞋盒', '325', '2', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('340', '收纳袋', '325', '4', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('341', '桌面收纳', '325', '5', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('342', '美发神器', '326', '1', '8', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('343', '健身变瘦', '326', '2', '8', '1', '1', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('344', '化妆镜', '326', '3', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('345', '梳洗小物', '326', '4', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('346', '吹风机', '326', '5', '8', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('347', '棉衣', '10', '2', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('348', '毛衣', '10', '1', '1', '1', '0', '0', null, null, null);
INSERT INTO `mg_category` VALUES ('349', '羽绒服', '9', '6', '1', '1', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `mg_cate_img`
-- ----------------------------
DROP TABLE IF EXISTS `mg_cate_img`;
CREATE TABLE `mg_cate_img` (
  `teid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(45) NOT NULL DEFAULT '' COMMENT '商品名称',
  `cate_img` varchar(150) NOT NULL DEFAULT '' COMMENT '分类图片',
  `category_cid` smallint(5) unsigned NOT NULL,
  `goods_type_tid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`teid`),
  KEY `fk_mg_cate_img_mg_category1_idx` (`category_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='分类图片表';

-- ----------------------------
-- Records of mg_cate_img
-- ----------------------------
INSERT INTO `mg_cate_img` VALUES ('1', '棉服外套', 'Upload/CateImg/151214/cate_57621450060121.jpg', '347', '1');
INSERT INTO `mg_cate_img` VALUES ('2', '内塔卫衣', 'Upload/CateImg/151214/cate_72081450060171.jpg', '24', '1');
INSERT INTO `mg_cate_img` VALUES ('3', '毛衣针织', 'Upload/CateImg/151214/cate_39241450060265.jpg', '348', '1');
INSERT INTO `mg_cate_img` VALUES ('4', '精美包包', 'Upload/CateImg/151214/cate_89721450060468.jpg', '82', '1');
INSERT INTO `mg_cate_img` VALUES ('5', '个性潮鞋', 'Upload/CateImg/151214/cate_26101450060522.jpg', '80', '1');
INSERT INTO `mg_cate_img` VALUES ('6', '韩版套装', 'Upload/CateImg/151214/cate_98601450060599.jpg', '22', '1');
INSERT INTO `mg_cate_img` VALUES ('7', '显瘦裙子', 'Upload/CateImg/151214/cate_15121450060840.jpg', '79', '2');
INSERT INTO `mg_cate_img` VALUES ('8', '棉衣棉服', 'Upload/CateImg/151214/cate_31081450060889.jpg', '31', '2');
INSERT INTO `mg_cate_img` VALUES ('9', '大码毛衣', 'Upload/CateImg/151214/cate_92001450060938.jpg', '348', '2');
INSERT INTO `mg_cate_img` VALUES ('10', '毛呢外套', 'Upload/CateImg/151214/cate_93641450061000.jpg', '30', '2');
INSERT INTO `mg_cate_img` VALUES ('11', '毛线帽帽', 'Upload/CateImg/151214/cate_36461450061078.jpg', '172', '2');
INSERT INTO `mg_cate_img` VALUES ('12', '保暖马丁鞋', 'Upload/CateImg/151214/cate_24811450061206.jpg', '80', '2');
INSERT INTO `mg_cate_img` VALUES ('13', '文艺女装', 'Upload/CateImg/151214/cate_26161450061458.jpg', '1', '14');
INSERT INTO `mg_cate_img` VALUES ('14', '羊羔毛内里毛呢外套', 'Upload/CateImg/151214/cate_43071450061512.jpg', '21', '14');
INSERT INTO `mg_cate_img` VALUES ('15', '短款高领针织毛衣', 'Upload/CateImg/151214/cate_36641450061632.jpg', '348', '14');
INSERT INTO `mg_cate_img` VALUES ('16', '潮流包包开抢季', 'Upload/CateImg/151214/cate_71411450061675.jpg', '82', '14');
INSERT INTO `mg_cate_img` VALUES ('17', '精致棉服', 'Upload/CateImg/151214/cate_72441450061730.jpg', '347', '14');
INSERT INTO `mg_cate_img` VALUES ('18', '保暖编织毛线帽', 'Upload/CateImg/151214/cate_63171450061791.jpg', '172', '14');

-- ----------------------------
-- Table structure for `mg_goods`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods`;
CREATE TABLE `mg_goods` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `unit` char(5) NOT NULL DEFAULT '' COMMENT '记件单位',
  `marketprice` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '市场价',
  `shopprice` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '商城价',
  `pic` varchar(100) NOT NULL DEFAULT '' COMMENT '列表图地址',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击率',
  `hot` int(11) NOT NULL DEFAULT '0' COMMENT '热度',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上架时间',
  `repertory` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `brand_bid` int(10) unsigned NOT NULL COMMENT '品牌ID',
  `category_cid` smallint(5) unsigned NOT NULL COMMENT '分类id',
  `goods_type_tid` int(10) unsigned NOT NULL COMMENT '商品类型id',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '管理员id',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`gid`),
  KEY `fk_mg_goods_mg_brand1_idx` (`brand_bid`),
  KEY `fk_mg_goods_mg_category1_idx` (`category_cid`),
  KEY `fk_mg_goods_mg_goods_type1_idx` (`goods_type_tid`),
  KEY `fk_mg_goods_mg_admin1_idx` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of mg_goods
-- ----------------------------
INSERT INTO `mg_goods` VALUES ('18', '限量！韩国原创秋冬显瘦纯棉加绒打底裤', '件', '98', '49', 'Upload/GoodsList/151211/pic_44801449821749.jpg', '517', '350', '1449056644', '500', '14', '45', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('16', '高腰弹力显瘦修身秋冬小脚牛仔裤', '件', '109', '59', 'Upload/GoodsList/151211/pic_79131449821228.jpg', '646', '300', '1449056371', '200', '12', '35', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('17', '宝儿家棉麻超肥大九分背带阔腿裤', '件', '159', '96', 'Upload/GoodsList/151211/pic_12111449821481.jpg', '457', '400', '1449056550', '300', '8', '41', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('19', '2015冬新款韩版女装英伦风百搭显瘦高腰毛呢休闲短裤靴裤', '件', '110', '55', 'Upload/GoodsList/151211/pic_34581449822087.jpg', '466', '1599', '1449623281', '376', '16', '42', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('20', '韩版休闲呢料打底短裤', '件', '78', '39', 'Upload/GoodsList/151211/pic_2751449822338.jpg', '273', '1496', '1449623553', '600', '8', '37', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('21', '2015冬新款女装韩版优雅OL高腰修身条纹阔腿休闲毛呢短裤', '件', '98', '49', 'Upload/GoodsList/151211/pic_11741449822578.jpg', '480', '1604', '1449623788', '500', '6', '44', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('22', '韩版百搭花朵印花松紧腰雪纺短裤', '件', '57', '37', 'Upload/GoodsList/151211/pic_26001449820889.jpg', '268', '1758', '1449624045', '500', '13', '94', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('23', '韩势 复古系带衬衫', '件', '79', '39', 'Upload/GoodsList/151211/pic_41661449814858.jpg', '539', '1358', '1449624232', '500', '8', '23', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('26', '【click funny】学院风连帽羽绒棉显瘦棉衣', '件', '238', '119', 'Upload/GoodsList/151211/pic_22741449819987.jpg', '413', '879', '1449820020', '500', '8', '24', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('25', '学院风蝴蝶结衬衫', '件', '158', '110', 'Upload/GoodsList/151210/pic_13371449737484.jpg', '789', '1425', '1449736534', '297', '8', '26', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('27', '复古高腰修身显瘦小脚牛仔裤', '件', '70', '35', 'Upload/GoodsList/151211/pic_10671449823127.jpg', '511', '1322', '1449823147', '300', '6', '38', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('28', '划破修身显瘦牛仔小脚裤', '件', '99', '69', 'Upload/GoodsList/151211/pic_38681449823336.jpg', '290', '1932', '1449823362', '800', '12', '44', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('29', '韩系街头破洞背带牛仔裤', '件', '175', '75', 'Upload/GoodsList/151211/pic_1071449823608.jpg', '760', '1720', '1449823632', '400', '8', '35', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('30', '2015秋冬加绒纽扣装饰百搭小脚打底裤', '件', '99', '49', 'Upload/GoodsList/151211/pic_32481449823802.jpg', '704', '1393', '1449823832', '300', '17', '41', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('31', '冬季新品 萌茸茸纯色毛衣', '件', '98', '49', 'Upload/GoodsList/151211/pic_7751449828002.jpg', '711', '1298', '1449828031', '500', '13', '19', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('32', '维生素 中长款学院风毛呢外套', '件', '99', '199', 'Upload/GoodsList/151211/pic_73771449828996.jpg', '497', '963', '1449829016', '1000', '11', '27', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('33', '韩版半高领中长款加厚打底毛衣', '件', '90', '63', 'Upload/GoodsList/151211/pic_85401449837487.jpg', '302', '802', '1449837518', '1000', '18', '21', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('34', '儿家自制款潮牌条纹刺绣运动棉服', '件', '266', '133', 'Upload/GoodsList/151211/pic_57921449837839.jpg', '210', '1925', '1449837869', '10000', '19', '33', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('35', '韩版修身立领拼接棒球服外套', '件', '158', '79', 'Upload/GoodsList/151211/pic_25291449838159.jpg', '348', '1176', '1449838194', '800', '8', '29', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('36', '秋冬一件超经典牛角扣大衣 学院风控不能错过！', '件', '240', '120', 'Upload/GoodsList/151211/pic_12371449838488.jpg', '766', '1413', '1449838524', '1000', '6', '22', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('37', '爱亿服烟雾印花圆领长袖宽松加厚加绒卫衣', '件', '86', '43', 'Upload/GoodsList/151211/pic_94871449838804.jpg', '794', '868', '1449838828', '1000', '16', '24', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('38', '套头字母加绒卫衣', '件', '78', '38', 'Upload/GoodsList/151211/pic_67271449839077.jpg', '270', '1254', '1449839104', '500', '18', '24', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('39', 'Q版卡通抓绒卫衣', '件', '92', '46', 'Upload/GoodsList/151211/pic_94331449839361.jpg', '764', '1779', '1449839387', '800', '17', '24', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('40', '韩版修身中长款毛呢外套（夹棉）', '件', '238', '119', 'Upload/GoodsList/151211/pic_49261449839691.jpg', '291', '1231', '1449839721', '600', '17', '32', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('41', '知性帅气中式领简约纯色百搭衬衫', '件', '52', '26', 'Upload/GoodsList/151211/pic_87231449840046.jpg', '330', '1153', '1449840070', '400', '15', '26', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('42', '新品春秋冬长袖白衬衫', '件', '56', '28', 'Upload/GoodsList/151211/pic_75161449840276.jpg', '757', '1853', '1449840299', '800', '11', '26', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('43', '韩系甜美闺蜜装植绒毛衣+毛呢短裙套装', '件', '176', '88', 'Upload/GoodsList/151211/pic_43961449840675.jpg', '237', '954', '1449840703', '1000', '13', '20', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('44', '性感蕾丝调整型内衣加厚小胸聚拢文胸套装', '件', '99', '49', 'Upload/GoodsList/151213/pic_67651449978511.jpg', '356', '1616', '1449978586', '2000', '17', '52', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('45', '无痕一片式性感调整型内衣小胸聚拢文胸套装', '件', '159', '113', 'Upload/GoodsList/151213/pic_71551449978920.jpg', '453', '1633', '1449978966', '2000', '17', '53', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('46', '多色瘦腿压力袜', '件', '159', '113', 'Upload/GoodsList/151213/pic_69691449979323.jpg', '394', '1225', '1449979351', '2000', '8', '72', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('47', '薄款百搭蕾丝花边透明防滑玻璃水晶短袜', '件', '49', '34', 'Upload/GoodsList/151213/pic_11331449979652.jpg', '699', '1706', '1449979688', '2000', '6', '71', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('48', '春秋大码防勾丝优质慕斯天鹅绒连裤袜', '件', '22', '12', 'Upload/GoodsList/151213/pic_38041449979971.jpg', '271', '1896', '1449980004', '3000', '8', '76', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('49', '性感防晒踩脚网纱丝袜', '件', '45', '15', 'Upload/GoodsList/151213/pic_95301449980233.jpg', '561', '856', '1449980258', '2000', '6', '77', '2', '1', '0');
INSERT INTO `mg_goods` VALUES ('50', '蕾丝深V调整型聚拢文胸套装', '件', '78', '39', 'Upload/GoodsList/151213/pic_8361449980559.jpg', '202', '1028', '1449980587', '3000', '8', '54', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('51', '韩版甜美松紧高腰复古半身裙', '件', '85', '59', 'Upload/GoodsList/151213/pic_371449985943.jpg', '337', '1170', '1449985974', '1000', '8', '92', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('52', '显瘦条纹针织连衣裙', '件', '70', '49', 'Upload/GoodsList/151213/pic_21431449986167.jpg', '334', '1074', '1449986200', '1000', '8', '92', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('53', 'style纯色针织修身显瘦打底裙', '件', '199', '98', 'Upload/GoodsList/151213/pic_92961449986465.jpg', '424', '1811', '1449986493', '2000', '6', '98', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('54', '韩势 时尚格纹休闲半身裙', '件', '70', '49', 'Upload/GoodsList/151213/pic_93511449986709.jpg', '729', '1230', '1449986740', '2000', '8', '94', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('55', '韩版冬季时尚口袋针织连衣裙', '件', '93', '65', 'Upload/GoodsList/151213/pic_49561449987112.jpg', '354', '1803', '1449987196', '1000', '8', '103', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('56', '甜美显瘦牛仔连衣裙', '件', '113', '79', 'Upload/GoodsList/151213/pic_23541449988881.jpg', '476', '1904', '1449988917', '2000', '8', '113', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('57', '韩势 假两件拼接背带连衣裙', '件', '99', '69', 'Upload/GoodsList/151213/pic_53691449989163.jpg', '505', '1315', '1449989185', '1000', '13', '108', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('58', '2015韩版秋季新款黑色PU仿皮百褶打底蓬蓬半身短裙子', '件', '50', '35', 'Upload/GoodsList/151213/pic_63581449989401.jpg', '788', '896', '1449989426', '2000', '14', '93', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('59', '美依家 气质小黑裙', '件', '97', '68', 'Upload/GoodsList/151213/pic_19801449989818.jpg', '750', '1574', '1449989846', '1000', '8', '112', '14', '1', '0');
INSERT INTO `mg_goods` VALUES ('60', '猪皮雕花短靴', '件', '211', '148', 'Upload/GoodsList/151213/pic_25191449990299.jpg', '476', '1565', '1449990323', '1000', '9', '121', '9', '1', '0');
INSERT INTO `mg_goods` VALUES ('61', '韩版新款百搭冬季情侣款短筒雪地靴', '件', '28', '19', 'Upload/GoodsList/151213/pic_58431449990568.jpg', '685', '1374', '1449990588', '2000', '8', '122', '1', '1', '0');
INSERT INTO `mg_goods` VALUES ('62', '全牛皮经典系带亲肤长靴', '件', '426', '298', 'Upload/GoodsList/151213/pic_4761449991939.jpg', '494', '1279', '1449991966', '2000', '8', '127', '9', '1', '0');
INSERT INTO `mg_goods` VALUES ('63', '铆钉搭带尖头高跟短靴', '件', '156', '109', 'Upload/GoodsList/151213/pic_98961449992174.jpg', '795', '890', '1449992191', '1000', '8', '132', '9', '1', '0');
INSERT INTO `mg_goods` VALUES ('64', '欧美街头范时尚百搭内增高真皮短靴', '件', '269', '188', 'Upload/GoodsList/151213/pic_34261449992437.jpg', '344', '1250', '1449992511', '1000', '8', '134', '9', '1', '0');
INSERT INTO `mg_goods` VALUES ('65', '韩版经典纯色毛呢外套', '件', '208', '145', 'Upload/GoodsList/151213/pic_59111449992783.jpg', '500', '1409', '1449992808', '2000', '8', '207', '13', '1', '0');
INSERT INTO `mg_goods` VALUES ('66', '韩国初秋可爱饼干熊情侣睡衣', '件', '99', '58', 'Upload/GoodsList/151213/pic_61311449993392.jpg', '283', '1795', '1449993421', '1000', '8', '206', '13', '1', '0');
INSERT INTO `mg_goods` VALUES ('67', '韩国男士套头渐变色针织衫', '件', '123', '86', 'Upload/GoodsList/151213/pic_57851449993663.jpg', '658', '883', '1449993683', '1000', '6', '204', '13', '1', '0');
INSERT INTO `mg_goods` VALUES ('68', '木村堂小清新情侣针织衣', '件', '188', '88', 'Upload/GoodsList/151213/pic_42011449993978.jpg', '333', '1982', '1449993992', '1000', '12', '204', '13', '1', '0');
INSERT INTO `mg_goods` VALUES ('69', '2015型男必备加厚中长款保暖连帽新款羽绒服', '件', '326', '228', 'Upload/GoodsList/151213/pic_70861449994221.jpg', '451', '1579', '1449994243', '1000', '8', '208', '13', '1', '0');
INSERT INTO `mg_goods` VALUES ('70', '韩版V字大象纹复古皮质双肩包', '件', '85', '59', 'Upload/GoodsList/151213/pic_32721449994938.jpg', '272', '1475', '1449995004', '1000', '13', '146', '4', '1', '0');
INSERT INTO `mg_goods` VALUES ('71', '欧美毛球挂饰时尚新款单肩斜挎包', '件', '109', '77', 'Upload/GoodsList/151213/pic_69671449995188.jpg', '433', '1666', '1449995220', '800', '8', '152', '4', '1', '0');
INSERT INTO `mg_goods` VALUES ('72', '韩版街头潮帆布子母大包', '件', '84', '58', 'Upload/GoodsList/151213/pic_66381449995454.jpg', '200', '1981', '1449995519', '500', '6', '148', '4', '1', '0');
INSERT INTO `mg_goods` VALUES ('73', '小清新简约白色手拿包', '件', '80', '56', 'Upload/GoodsList/151213/pic_57891449995723.jpg', '411', '1115', '1449995755', '500', '8', '149', '4', '1', '0');
INSERT INTO `mg_goods` VALUES ('74', '小虾米韩版糖果色锁扣邮差小包', '件', '57', '35', 'Upload/GoodsList/151213/pic_20021449995956.jpg', '344', '1426', '1449995982', '800', '8', '150', '4', '1', '0');
INSERT INTO `mg_goods` VALUES ('76', '半高领弹力修身打底针织衫', '件', '88', '288', 'Upload/GoodsList/151230/pic_86051451463636.jpg', '623', '1358', '1451463661', '10000', '8', '19', '1', '1', '0');

-- ----------------------------
-- Table structure for `mg_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods_attr`;
CREATE TABLE `mg_goods_attr` (
  `gt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gt_name` char(30) NOT NULL DEFAULT '' COMMENT '属性名称',
  `added` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '附加价格',
  `goods_gid` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_type_attr_gtid` int(10) unsigned NOT NULL COMMENT '类型属性id',
  `goods_class` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:表示属性 1:规格',
  PRIMARY KEY (`gt_id`),
  KEY `fk_mg_goods_attr_mg_goods1_idx` (`goods_gid`),
  KEY `fk_mg_goods_attr_mg_goods_type_attr1_idx` (`goods_type_attr_gtid`)
) ENGINE=MyISAM AUTO_INCREMENT=769 DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of mg_goods_attr
-- ----------------------------
INSERT INTO `mg_goods_attr` VALUES ('223', 'M', '0', '16', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('222', 'L', '0', '16', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('221', 'S', '0', '16', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('220', '蓝色', '0', '16', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('219', '藏青', '0', '16', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('218', '黑色', '0', '16', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('217', '长裤', '0', '16', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('216', '英伦', '0', '16', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('254', 'M', '0', '19', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('253', 'L', '0', '19', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('242', 'S', '0', '18', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('241', '黑色', '0', '18', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('240', '藏青', '0', '18', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('239', '白色', '0', '18', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('238', '长裤', '0', '18', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('237', '韩版', '0', '18', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('236', '淑女', '0', '18', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('235', '纯色', '0', '18', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('234', '修身型', '0', '18', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('244', 'M', '0', '18', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('243', 'L', '0', '18', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('233', 'M', '0', '17', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('232', 'L', '0', '17', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('231', 'XL', '0', '17', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('230', 'S', '0', '17', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('229', '黑色', '0', '17', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('228', '短裤', '0', '17', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('227', '日系', '0', '17', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('226', '嘻哈', '0', '17', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('225', '纯色', '0', '17', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('224', '宽松型', '0', '17', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('215', '优雅', '0', '16', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('214', '纯色', '0', '16', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('213', '修身型', '0', '16', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('252', 'S', '0', '19', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('251', '藏青', '0', '19', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('250', '黑色', '0', '19', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('249', '热裤', '0', '19', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('248', '韩版', '0', '19', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('247', '甜美', '0', '19', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('246', '纯色', '0', '19', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('245', '宽松型', '0', '19', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('263', 'M', '0', '20', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('262', 'L', '0', '20', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('261', 'S', '0', '20', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('260', '黑色', '0', '20', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('259', '短裤', '0', '20', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('258', '英伦', '0', '20', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('257', '复古', '0', '20', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('256', '条纹', '0', '20', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('255', '裙摆型', '0', '20', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('296', '复古', '0', '27', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('273', 'M', '0', '21', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('272', 'L', '0', '21', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('271', 'S', '0', '21', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('270', '黑色', '0', '21', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('269', '白色', '0', '21', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('268', '短裤', '0', '21', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('267', '韩版', '0', '21', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('266', '学院', '0', '21', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('265', '条纹', '0', '21', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('264', '修身型', '0', '21', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('212', 'M', '0', '22', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('211', 'L', '0', '22', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('210', 'S', '0', '22', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('209', '黑色', '0', '22', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('208', '短裤', '0', '22', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('207', '韩版', '0', '22', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('206', '可爱', '0', '22', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('205', '条纹', '0', '22', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('204', '修身型', '0', '22', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('194', '宽松型', '0', '26', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('193', '长袖', '0', '26', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('292', 'L', '0', '23', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('291', 'S', '0', '23', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('290', '藏青', '0', '23', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('289', '黑色', '0', '23', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('288', '韩版', '0', '23', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('287', '可爱', '0', '23', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('286', '条纹', '0', '23', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('285', '修身型', '0', '23', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('284', '长袖', '0', '23', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('295', '纯色', '0', '27', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('294', '修身型', '0', '27', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('293', 'M', '0', '23', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('283', 'L', '0', '25', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('282', 'S', '0', '25', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('281', 'M', '0', '25', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('280', '藏青', '0', '25', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('279', '黑色', '0', '25', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('278', '韩版', '0', '25', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('277', '学院', '0', '25', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('276', '格子', '0', '25', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('275', '修身型', '0', '25', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('274', '长袖', '0', '25', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('195', '格子', '0', '26', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('196', '学院', '0', '26', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('197', '韩版', '0', '26', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('198', '白色', '0', '26', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('199', '红色', '0', '26', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('200', '黑色', '0', '26', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('201', 'L', '0', '26', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('202', 'M', '0', '26', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('203', 'S', '0', '26', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('297', '韩版', '0', '27', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('298', '修身裤', '0', '27', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('299', '蓝色', '0', '27', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('300', '黑色', '0', '27', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('301', 'S', '0', '27', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('302', 'L', '0', '27', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('303', 'M', '0', '27', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('304', '修身型', '0', '28', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('305', '纯色', '0', '28', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('306', '优雅', '0', '28', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('307', '韩版', '0', '28', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('308', '修身裤', '0', '28', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('309', '黑色', '0', '28', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('310', 'S', '0', '28', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('311', 'L', '0', '28', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('312', 'M', '0', '28', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('313', '修身型', '0', '29', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('314', '纯色', '0', '29', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('315', '淑女', '0', '29', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('316', '杭派', '0', '29', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('317', '修身裤', '0', '29', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('318', '蓝色', '0', '29', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('319', 'S', '0', '29', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('320', 'L', '0', '29', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('321', 'M', '0', '29', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('322', '修身型', '0', '30', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('323', '纯色', '0', '30', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('324', '优雅', '0', '30', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('325', '韩版', '0', '30', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('326', '修身裤', '0', '30', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('327', '白色', '0', '30', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('328', '藏青', '0', '30', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('329', '黑色', '0', '30', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('330', 'S', '0', '30', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('331', 'L', '0', '30', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('332', 'M', '0', '30', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('333', '长袖', '0', '31', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('334', '修身型', '0', '31', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('335', '纯色', '0', '31', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('336', '可爱', '0', '31', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('337', '韩版', '0', '31', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('338', '粉红色', '0', '31', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('339', '蓝色', '0', '31', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('340', 'S', '0', '31', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('341', 'M', '0', '31', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('342', 'L', '0', '31', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('343', '长袖', '0', '32', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('344', '修身型', '0', '32', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('345', '纯色', '0', '32', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('346', '淑女', '0', '32', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('347', '英伦', '0', '32', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('348', '黑色', '0', '32', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('349', '红色', '0', '32', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('350', 'S', '0', '32', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('351', 'XL', '0', '32', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('352', 'L', '0', '32', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('353', 'M', '0', '32', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('354', '长袖', '0', '33', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('355', '半高领', '0', '33', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('356', '纯色', '0', '33', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('357', '淑女', '0', '33', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('358', '韩版', '0', '33', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('359', '白色', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('360', '浅紫', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('361', '酒红色', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('362', '卡其色', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('363', '灰色', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('364', '黑色', '0', '33', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('365', 'M', '0', '33', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('366', '长袖', '0', '34', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('367', '宽松型', '0', '34', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('368', '条纹', '0', '34', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('369', '学院', '0', '34', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('370', '日系', '0', '34', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('371', '白色', '0', '34', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('372', '黑色', '0', '34', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('373', 'M', '0', '34', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('374', 'S', '0', '34', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('375', '长袖', '0', '35', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('376', '高腰型', '0', '35', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('377', '纯色', '0', '35', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('378', '学院', '0', '35', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('379', '韩版', '0', '35', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('380', '蓝色', '0', '35', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('381', '浅紫', '0', '35', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('382', 'S', '0', '35', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('383', 'M', '0', '35', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('384', '长袖', '0', '36', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('385', '裙摆型', '0', '36', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('386', '纯色', '0', '36', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('387', '甜美', '0', '36', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('388', '韩版', '0', '36', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('389', '卡其色', '0', '36', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('390', '红色', '0', '36', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('391', '黑色', '0', '36', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('392', 'S', '0', '36', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('393', 'L', '0', '36', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('394', 'M', '0', '36', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('395', '长袖', '0', '37', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('396', '半高领', '0', '37', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('397', '印花', '0', '37', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('398', '可爱', '0', '37', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('399', '韩版', '0', '37', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('400', '红色', '0', '37', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('401', 'S', '0', '37', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('402', 'L', '0', '37', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('403', 'M', '0', '37', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('404', '长袖', '0', '38', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('405', '修身型', '0', '38', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('406', '纯色', '0', '38', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('407', '可爱', '0', '38', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('408', '韩版', '0', '38', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('409', '白色', '0', '38', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('410', '黑色', '0', '38', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('411', 'S', '0', '38', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('412', 'M', '0', '38', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('413', '长袖', '0', '39', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('414', '宽松型', '0', '39', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('415', '条纹', '0', '39', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('416', '可爱', '0', '39', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('417', '杭派', '0', '39', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('418', '白色', '0', '39', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('419', '红色', '0', '39', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('420', 'M', '0', '39', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('440', 'M', '0', '40', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('439', 'L', '0', '40', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('438', 'XL', '0', '40', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('437', 'S', '0', '40', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('436', '粉红色', '0', '40', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('435', '韩版', '0', '40', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('434', '甜美', '0', '40', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('433', '纯色', '0', '40', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('432', '修身型', '0', '40', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('431', '长袖', '0', '40', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('441', '长袖', '0', '41', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('442', '修身型', '0', '41', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('443', '纯色', '0', '41', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('444', '朋克', '0', '41', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('445', '韩版', '0', '41', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('446', '蓝色', '0', '41', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('447', 'S', '0', '41', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('448', 'L', '0', '41', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('449', 'M', '0', '41', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('450', '长袖', '0', '42', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('451', '修身型', '0', '42', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('452', '纯色', '0', '42', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('453', '可爱', '0', '42', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('454', '韩版', '0', '42', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('455', '白色', '0', '42', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('456', '黑色', '0', '42', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('457', 'M', '0', '42', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('458', 'L', '0', '42', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('459', 'S', '0', '42', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('460', '长袖', '0', '43', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('461', '修身型', '0', '43', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('462', '纯色', '0', '43', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('463', '性感', '0', '43', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('464', '韩版', '0', '43', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('465', '黑色', '0', '43', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('466', '红色', '0', '43', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('467', 'M', '0', '43', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('468', 'L', '0', '43', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('469', 'S', '0', '43', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('470', '不规则型', '0', '44', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('471', '印花', '0', '44', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('472', '女性', '0', '44', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('473', '蕾丝', '0', '44', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('474', '黑色', '0', '44', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('475', '白色', '0', '44', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('476', 'A', '0', '44', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('477', 'C', '0', '44', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('478', 'B', '0', '44', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('479', '纯色', '0', '45', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('480', '韩版', '0', '45', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('481', '女性', '0', '45', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('482', '蕾丝', '0', '45', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('483', '黑色', '0', '45', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('484', '酒红色', '0', '45', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('485', '蓝色', '0', '45', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('486', 'A', '0', '45', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('487', 'C', '0', '45', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('488', 'B', '0', '45', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('489', '修身型', '0', '46', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('490', '印花', '0', '46', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('491', '优雅', '0', '46', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('492', '韩版', '0', '46', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('493', '长裤', '0', '46', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('494', '女性', '0', '46', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('495', '羊绒', '0', '46', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('496', '黑色', '0', '46', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('497', '酒红色', '0', '46', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('498', 'S', '0', '46', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('499', 'M', '0', '46', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('500', '印花', '0', '47', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('501', '田园', '0', '47', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('502', '杭派', '0', '47', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('503', '女性', '0', '47', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('504', '蕾丝', '0', '47', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('505', '白色', '0', '47', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('506', 'S', '0', '47', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('507', 'M', '0', '47', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('508', '修身型', '0', '48', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('509', '纯色', '0', '48', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('510', '田园', '0', '48', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('511', '韩版', '0', '48', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('512', '修身裤', '0', '48', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('513', '女性', '0', '48', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('514', '白色', '0', '48', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('515', '粉红色', '0', '48', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('516', '酒红色', '0', '48', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('517', '黑色', '0', '48', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('518', '140D', '0', '48', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('519', '修身型', '0', '49', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('520', '纯色', '0', '49', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('521', '优雅', '0', '49', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('522', '韩版', '0', '49', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('523', '修身裤', '0', '49', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('524', '女性', '0', '49', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('525', '白色', '0', '49', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('526', '黑色', '0', '49', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('527', '140D', '0', '49', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('528', '条纹', '0', '50', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('529', '性感', '0', '50', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('530', '韩版', '0', '50', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('531', '女性', '0', '50', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('532', '蕾丝', '0', '50', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('533', '黑色', '0', '50', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('534', '粉红色', '0', '50', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('535', 'B', '0', '50', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('536', 'C', '0', '50', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('537', '宽松型', '0', '51', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('538', '纯色', '0', '51', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('539', '可爱', '0', '51', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('540', '日系', '0', '51', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('541', '短裤', '0', '51', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('542', '女性', '0', '51', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('543', '黑色', '0', '51', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('544', '灰色', '0', '51', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('545', 'M', '0', '51', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('546', '修身型', '0', '52', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('547', '纯色', '0', '52', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('548', '甜美', '0', '52', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('549', '韩版', '0', '52', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('550', '修身裤', '0', '52', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('551', '女性', '0', '52', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('552', '黑色', '0', '52', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('553', '灰色', '0', '52', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('554', '粉红色', '0', '52', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('555', 'M', '0', '52', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('556', '修身型', '0', '53', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('557', '纯色', '0', '53', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('558', '学院', '0', '53', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('559', '韩版', '0', '53', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('560', '修身裤', '0', '53', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('561', '女性', '0', '53', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('562', '白色', '0', '53', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('563', '黑色', '0', '53', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('564', 'M', '0', '53', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('565', 'S', '0', '53', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('566', '修身型', '0', '54', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('567', '条纹', '0', '54', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('568', '优雅', '0', '54', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('569', '韩版', '0', '54', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('570', '修身裤', '0', '54', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('571', '女性', '0', '54', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('572', '白色', '0', '54', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('573', 'M', '0', '54', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('574', 'S', '0', '54', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('575', '宽松型', '0', '55', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('576', '纯色', '0', '55', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('577', '学院', '0', '55', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('578', '韩版', '0', '55', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('579', '女性', '0', '55', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('580', '藏青', '0', '55', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('581', '酒红色', '0', '55', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('582', 'M', '0', '55', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('583', '修身型', '0', '56', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('584', '纯色', '0', '56', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('585', '甜美', '0', '56', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('586', '韩版', '0', '56', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('587', '修身裤', '0', '56', '10', '0');
INSERT INTO `mg_goods_attr` VALUES ('588', '女性', '0', '56', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('589', '藏青', '0', '56', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('590', 'M', '0', '56', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('591', 'L', '0', '56', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('592', '修身型', '0', '57', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('593', '纯色', '0', '57', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('594', '优雅', '0', '57', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('595', '韩版', '0', '57', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('596', '女性', '0', '57', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('597', '黑色', '0', '57', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('598', 'M', '0', '57', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('599', '宽松型', '0', '58', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('600', '纯色', '0', '58', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('601', '性感', '0', '58', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('602', '韩版', '0', '58', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('603', '女性', '0', '58', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('604', '黑色', '0', '58', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('605', '酒红色', '0', '58', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('606', 'M', '0', '58', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('607', 'L', '0', '58', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('608', '修身型', '0', '59', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('609', '纯色', '0', '59', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('610', '甜美', '0', '59', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('611', '韩版', '0', '59', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('612', '女性', '0', '59', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('613', '黑色', '0', '59', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('614', 'M', '0', '59', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('615', 'S', '0', '59', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('616', '不规则型', '0', '60', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('617', '田园', '0', '60', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('618', '韩版', '0', '60', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('619', '青年', '0', '60', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('620', '羊毛', '0', '60', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('621', '灰色', '0', '60', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('622', '黑色', '0', '60', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('623', '37', '0', '60', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('624', '38', '0', '60', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('625', '不规则型', '0', '61', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('626', '手绘', '0', '61', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('627', '学院', '0', '61', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('628', '韩版', '0', '61', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('629', '雪纺', '0', '61', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('630', '白色', '0', '61', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('631', '藏青', '0', '61', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('632', '黑色', '0', '61', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('633', '38', '0', '61', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('634', '37', '0', '61', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('635', '纯色', '0', '62', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('636', '性感', '0', '62', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('637', '韩版', '0', '62', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('638', '女性', '0', '62', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('639', '棉混纺', '0', '62', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('640', '卡其色', '0', '62', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('641', '37', '0', '62', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('642', '38', '0', '62', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('643', '纯色', '0', '63', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('644', '优雅', '0', '63', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('645', '韩版', '0', '63', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('646', '女性', '0', '63', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('647', '锦纶', '0', '63', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('648', '灰色', '0', '63', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('649', '黑色', '0', '63', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('650', '38', '0', '63', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('651', '37', '0', '63', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('671', '37', '0', '64', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('670', '黑色', '0', '64', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('669', '灰色', '0', '64', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('668', '卡其色', '0', '64', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('667', '棉混纺', '0', '64', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('666', '女性', '0', '64', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('665', '韩版', '0', '64', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('664', '田园', '0', '64', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('663', '纯色', '0', '64', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('662', '不规则型', '0', '64', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('672', '长袖', '0', '65', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('673', '宽松型', '0', '65', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('674', '纯色', '0', '65', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('675', '田园', '0', '65', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('676', '韩版', '0', '65', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('677', '青年', '0', '65', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('678', '锦纶', '0', '65', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('679', '黑色', '0', '65', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('680', '白色', '0', '65', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('681', 'M', '0', '65', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('682', 'L', '0', '65', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('683', '长袖', '0', '66', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('684', '宽松型', '0', '66', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('685', '印花', '0', '66', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('686', '田园', '0', '66', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('687', '韩版', '0', '66', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('688', '青年', '0', '66', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('689', '白色', '0', '66', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('690', 'M', '0', '66', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('691', '长袖', '0', '67', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('692', '修身型', '0', '67', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('693', '纯色', '0', '67', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('694', '田园', '0', '67', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('695', '韩版', '0', '67', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('696', '青年', '0', '67', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('697', '白色', '0', '67', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('698', 'M', '0', '67', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('699', 'L', '0', '67', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('700', '长袖', '0', '68', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('701', '修身型', '0', '68', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('702', '纯色', '0', '68', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('703', '可爱', '0', '68', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('704', '韩版', '0', '68', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('705', '青年', '0', '68', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('706', '白色', '0', '68', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('707', 'M', '0', '68', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('708', 'L', '0', '68', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('709', '长袖', '0', '69', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('710', '宽松型', '0', '69', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('711', '纯色', '0', '69', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('712', '复古', '0', '69', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('713', '韩版', '0', '69', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('714', '青年', '0', '69', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('715', '锦纶', '0', '69', '12', '0');
INSERT INTO `mg_goods_attr` VALUES ('716', '黑色', '0', '69', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('717', '酒红色', '0', '69', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('718', 'S', '0', '69', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('719', 'M', '0', '69', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('720', 'L', '0', '69', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('721', '不规则型', '0', '70', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('722', '纯色', '0', '70', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('723', '韩版', '0', '70', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('724', '青年', '0', '70', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('725', '藏青', '0', '70', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('726', '中', '0', '70', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('727', '纯色', '0', '71', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('728', '田园', '0', '71', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('729', '韩版', '0', '71', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('730', '青年', '0', '71', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('731', '粉红色', '0', '71', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('732', '灰色', '0', '71', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('733', '中', '0', '71', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('734', '不规则型', '0', '72', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('735', '纯色', '0', '72', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('736', '田园', '0', '72', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('737', '韩版', '0', '72', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('738', '女性', '0', '72', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('739', '绿色', '0', '72', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('740', '灰蓝', '0', '72', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('741', '中', '0', '72', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('742', '不规则型', '0', '73', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('743', '纯色', '0', '73', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('744', '田园', '0', '73', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('745', '韩版', '0', '73', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('746', '女性', '0', '73', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('747', '黑色', '0', '73', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('748', '黑色', '0', '73', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('749', '中', '0', '73', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('750', '不规则型', '0', '74', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('751', '纯色', '0', '74', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('752', '田园', '0', '74', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('753', '韩版', '0', '74', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('754', '青年', '0', '74', '11', '0');
INSERT INTO `mg_goods_attr` VALUES ('755', '白色', '0', '74', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('756', '黑色', '0', '74', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('757', '粉红色', '0', '74', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('758', '中', '0', '74', '7', '1');
INSERT INTO `mg_goods_attr` VALUES ('764', '格子', '0', '76', '9', '0');
INSERT INTO `mg_goods_attr` VALUES ('763', '直筒型', '0', '76', '2', '0');
INSERT INTO `mg_goods_attr` VALUES ('762', '长袖', '0', '76', '1', '0');
INSERT INTO `mg_goods_attr` VALUES ('765', '可爱', '0', '76', '4', '0');
INSERT INTO `mg_goods_attr` VALUES ('766', '韩版', '0', '76', '5', '0');
INSERT INTO `mg_goods_attr` VALUES ('767', '白色', '0', '76', '6', '1');
INSERT INTO `mg_goods_attr` VALUES ('768', 'M', '0', '76', '7', '1');

-- ----------------------------
-- Table structure for `mg_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods_detail`;
CREATE TABLE `mg_goods_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intro` text NOT NULL COMMENT '商品详情',
  `service` text NOT NULL COMMENT '售后服务',
  `goods_gid` int(10) unsigned NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`),
  KEY `fk_mg_goods_detail_mg_goods1_idx` (`goods_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='商品详细信息表';

-- ----------------------------
-- Records of mg_goods_detail
-- ----------------------------
INSERT INTO `mg_goods_detail` VALUES ('34', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">【小贝家】再好的减肥药也比不过一条显瘦的牛仔裤，穿上就瘦几斤，美美的瘦瘦的，高腰设计，高端弹力牛仔面料，再多穿几件秋款也比不上一条加绒牛仔裤，暖暖的，冬天不再寒冷。值得拥有~~【小贝家】</span></p><p><br/></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">七天无理由退货</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">默认发申通圆通</span></p>', '16');
INSERT INTO `mg_goods_detail` VALUES ('35', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">港风森女系超帅气韩范儿复古背带九分哈伦裤，阔腿裤，炒鸡肥大版，胖妞妞都可以穿的很带感哦，潮感十足，潮款推荐！棉麻布料不贴身舒服百搭时尚~~阔腿休闲九分哈伦裤大爱推荐！夏季和初秋搭配条纹打底T恤和休闲鞋运动鞋别提多韩啦，不韩i你找宝儿，记得美就晒图吧！！</span></p><p><br/></p>', '<p>七天包邮</p>', '17');
INSERT INTO `mg_goods_detail` VALUES ('36', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">韩国原版打造，非常保暖，过冬圣品！外面面料纯棉，不起球不掉色颜色正，质感很好哦~总有一个颜色适合亲哦，个人自留款！</span></p>', '<p>七天包邮,免费送到你家！</p>', '18');
INSERT INTO `mg_goods_detail` VALUES ('37', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\"></span><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">质量特别好，外贸产品，货不多，应季特价销售，手感柔软亲肤，三个颜色都是显肤色的哦。</span></p><p><br/></p><p><br/></p>', '<p>7天免费包邮</p>', '19');
INSERT INTO `mg_goods_detail` VALUES ('44', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">破洞装饰 个性而不夸张 显瘦版型 时尚个性破洞，引领潮流 ，宽松裤型，休闲舒适 商家推荐~</span></p>', '<p>7天包邮！</p>', '29');
INSERT INTO `mg_goods_detail` VALUES ('45', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">四季都可以穿，面料透气性佳，弹性超棒，不抽丝、不掉色哦，不挑人穿，显瘦必备的神器，而且超百搭的。想搭什么范都很可以。打底,打底裤,显瘦,韩版,小脚,修身,新款,裤子,小脚裤,铅笔裤,长裤,休闲,秋装,大码,弹力,高腰,学生</span></p>', '<p>7天包邮！</p>', '30');
INSERT INTO `mg_goods_detail` VALUES ('38', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\"></span><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">简约修身款，呢料的，性价比很高，推荐！</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '<p>7天免费包邮</p>', '20');
INSERT INTO `mg_goods_detail` VALUES ('42', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">韩范经典修身牛仔裤，很有BF风的一款裤子，也是超级百搭呢， 很显腿长，非常显瘦的颜色和版型，小脚的休闲感，上身效果非常的不错</span></p>', '<p>7天包邮！</p>', '27');
INSERT INTO `mg_goods_detail` VALUES ('43', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">破洞镂空设计，无需多说，大牌范儿不言自明~~版型一如既往的好，帅气又有型。弹性超好，贴身但不紧绷，舒适度一流，超级显瘦。全网独家款，绝对好看哦！</span></p>', '<p>7天包邮！</p>', '28');
INSERT INTO `mg_goods_detail` VALUES ('39', '<p>柔软舒适的薄呢面料，，无弹性，有内衬，厚度适中。时尚高腰设计，腰间小交叉设计，后腰隐形拉链收襟，前身一道褶皱拼接，阔腿裤款式，显瘦显腿长，经典的条纹图案，复古大气，知性优雅OL范！</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>7天免费包邮。</p>', '21');
INSERT INTO `mg_goods_detail` VALUES ('33', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">非常百搭的一款，腰间立体百褶造型，弧度优美的裙摆，显腰细，显腿长！ 上身修饰身形非常棒，很欧美范 腰部松紧设计，穿脱方便，适合各种身材MM~ 雪纺面料舒适透气，夏天必备的短裙哦~</span></p>', '<p>7天免费包邮！</p>', '22');
INSERT INTO `mg_goods_detail` VALUES ('41', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">很学院风的衬衫哦，系带设计，带子是自己系的哦，不是固定的啦~~鹿皮绒料子的，表面的薄薄的绒面摸起来很舒服！！搭配短裤短裙都超级好看的哦，不管是打底还是单穿都非常推荐的一款！！</span></p>', '<p>承诺7天不喜欢就包换，而且还包邮！</p>', '23');
INSERT INTO `mg_goods_detail` VALUES ('40', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">美腻了，第一眼就喜欢了哦！</span></p>', '<p><span style=\"font-size: 13.12px; background-color: rgb(255, 255, 255);\">承诺7天不喜欢就包换，而且还包邮哦！</span></p>', '25');
INSERT INTO `mg_goods_detail` VALUES ('32', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">人靠衣妆，美靠化妆。在这个只要勤于打扮就能变女神的时代，你是愿意做一个高冷的，冷到没朋友的“女神”，还是更愿意接地气一些，犹如邻家姑娘一般亲切的妹纸呢？如果你选择后者，在冬天你应该多接触基础款棉衣，简单百搭的款式，让你更具亲和力。</span></p>', '<p>7天包邮！</p>', '26');
INSERT INTO `mg_goods_detail` VALUES ('46', '<p>一件软乎乎的皮草上衣，大大的圆领，宽松的版型，露出我们漂亮性感的锁骨的同时，还避免了皮草的臃肿。袖口的提拉设计，可爱减龄又显瘦。</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>7天包邮！</p>', '31');
INSERT INTO `mg_goods_detail` VALUES ('47', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">优质毛呢大衣，时尚修身款式！每个女人都应该穿出自己的美丽，初春季节，更加需要一件能凸显身材且还要保暖的美衣————此款大衣是您的不二之选，因为它：款式新潮，面料极好，版型超棒，收腰显瘦，价格实惠！早买早穿上，早穿早美丽！百搭不挑身材，春季必备款</span></p>', '<p>7天包邮！</p>', '32');
INSERT INTO `mg_goods_detail` VALUES ('48', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">可打底，可当裙子穿，保暖性很好，美美的衣衣不可错过哦！</span></p>', '<p>7天免费包邮！</p>', '33');
INSERT INTO `mg_goods_detail` VALUES ('49', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">宝儿家自制款条纹经典拼色运动风十足情侣款运动棒球外套，加棉加厚保暖还特别帅气，2015冬季新款！动感十足刺绣字母拼色即便是寒冷冬季也可以那么的青春动感！！宝儿大爱推荐，宽松大码时尚百搭，喜欢运动的情侣们抓住机会哦！！</span></p>', '<p>7天包邮！</p>', '34');
INSERT INTO `mg_goods_detail` VALUES ('50', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">很年轻时尚的一款衣服，撞色的拼接设计，棒球服款式，前襟是很有特点的纽扣，而且衣服非常保暖哦</span></p>', '<p>7天免费包邮！</p>', '35');
INSERT INTO `mg_goods_detail` VALUES ('51', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">万年虐死单身汪的衣服又来了，哈哈哈，满满都是校园风，就算不想搭配情侣装穿，单独一个人穿也超级好看！搭配方面我觉得这种外套里面毛衣卫衣裙子都可以，这样的大衣款式不挑人，怎么搭都好看！</span></p>', '<p>7天包邮！</p>', '36');
INSERT INTO `mg_goods_detail` VALUES ('52', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">周扬青同款Maje迷幻黑色雾印花卫衣，烟雾是随机的哦 这个款店主可是大爱啊，上身超级有范，又帅又美又酷，爱哭了，姑凉们 买 买 买。闺蜜，男票一起穿，亮瞎了，这个款配休闲裤，百褶裙都超级美的，裤子，裙子，店里都有哦 找不到找我们店的男神客服哦！！！</span></p>', '<p>7天包换！</p>', '37');
INSERT INTO `mg_goods_detail` VALUES ('53', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">秋冬款加绒卫衣女套头字母学生韩版宽松打底衫长袖中长款t恤</span></p>', '<p>7天免费包邮！</p>', '38');
INSERT INTO `mg_goods_detail` VALUES ('54', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">能把可爱的卡通形象穿在身上真是让人心情愉快的事，当走进有暖气的室内脱去大衣，阳光般朝气蓬勃的卫衣仿佛把室内也照得明亮起来，亲切又自信的感觉，能让人际关系也变好哦。不管什么图片通通一个价格！</span></p>', '<p>7天包换！</p>', '39');
INSERT INTO `mg_goods_detail` VALUES ('56', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">【西装外套年年都流行，优质版型，面料手感舒服，垂感廊形都很好，真的是必备款啊!】【经典粉红，上身效果很赞，我个人都很喜欢，非常好搭配。】</span></p>', '<p>7天免费包换！</p>', '40');
INSERT INTO `mg_goods_detail` VALUES ('57', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">最受欢迎的立领蓝色衬衫，漂亮剪裁贴服身体曲线，举手投足间散发知性气息，蓝色经典雅致^^</span></p>', '<p>7天包换！</p>', '41');
INSERT INTO `mg_goods_detail` VALUES ('58', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">无论你是女神还是小清新我们的款都能满足你 非常好看 推荐给菇娘们哦！</span></p>', '<p>7天包换!</p>', '42');
INSERT INTO `mg_goods_detail` VALUES ('59', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">推荐款！！大爱的一款套装 上衣是圆领长袖直筒版型，前身植绒贴布设计， 可爱减龄， 下搭配超美的半身裙 ，纯色毛呢A字裙和上衣最配拉~ 喜欢快入手!</span></p>', '<p>7天包换！</p>', '43');
INSERT INTO `mg_goods_detail` VALUES ('60', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">每一季的新款系列中都少不了蕾丝透视内衣的身影， 那种若隐若现的神秘诱惑， 以及翩翩起舞的迷人身姿也正是让人欲罢不能的致命吸引力。 相信亲们收到会深爱的款。</span></p>', '<p>免费包邮送你家！</p>', '44');
INSERT INTO `mg_goods_detail` VALUES ('61', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">简约牛仔面料，优雅高贵，采用升级的贴合工艺，支撑胸部减轻压力。无痕模杯大限度贴合乳房曲线，避免勒痕。轻松释放全身压力，带来时尚新体验。</span></p>', '<p>7天免费包邮！</p>', '45');
INSERT INTO `mg_goods_detail` VALUES ('62', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">100%实拍，放心选购</span></p>', '<p>7天免费包邮！</p>', '46');
INSERT INTO `mg_goods_detail` VALUES ('63', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">蕾丝花边,高端品质！面料:优质棉+水晶丝，特点：脚底板棉，超舒适吸汗，脚面水晶丝，透气性能好。</span></p>', '<p>7天免费包邮！</p>', '47');
INSERT INTO `mg_goods_detail` VALUES ('64', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">★【优质天鹅绒慕斯哑光材质，不勾丝！不起球！不褪色！ 超强弹力，舒适亲肤！】按厚度分有100d和140d。100d微透肉，140d基本不透</span></p>', '<p>7天免费包邮！</p>', '48');
INSERT INTO `mg_goods_detail` VALUES ('65', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">这绝不是一条简单的打底裤 “独特针织技术抗起球防勾丝” 耐洗耐穿超高性价比 亲肤超柔触感顺滑细腻 升级版 猫抓不破绝不勾丝</span></p>', '<p>7天免费包邮！</p>', '49');
INSERT INTO `mg_goods_detail` VALUES ('66', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">深V小胸厚薄款侧收调整型聚拢文胸套装</span></p>', '<p>7天免费包邮！</p>', '50');
INSERT INTO `mg_goods_detail` VALUES ('67', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">经典百搭流行A字裙，弹力收腰，秀出好身材。针织面料超好穿，无法抵挡的诱惑！秋季单穿，冬天配合适中的打底裤，时尚大气！弹力显瘦！真的非常好搭配哦！</span></p>', '<p>7天包邮！</p>', '51');
INSERT INTO `mg_goods_detail` VALUES ('68', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">针织连衣裙，是迎接夏天到来的好礼物，它的渐变色条纹相当有感觉，尽显摩登气质，齐肩领的特别裁剪，也流露出性感的一面，短袖、及膝裙长，整体偏修身，推荐。</span></p>', '<p>免费包邮！</p>', '52');
INSERT INTO `mg_goods_detail` VALUES ('69', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">非常好看，推荐给各位菇凉~！</span></p>', '<p>免费包邮！</p>', '53');
INSERT INTO `mg_goods_detail` VALUES ('70', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">韩势 时尚格纹休闲半身裙，毛衣，大外套，T恤等等只要是能穿的基本无论什么都可以拿她来搭，经典格纹，完美大气，值得拥有~~</span></p>', '<p>免费包邮！</p>', '54');
INSERT INTO `mg_goods_detail` VALUES ('71', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">今年冬天流行极其简单 具有气质很强的款，简单才是永恒，衣橱里必须要备有这样的款，你也可以做潮流的时尚达人哦！</span></p>', '<p>免费包邮！</p>', '55');
INSERT INTO `mg_goods_detail` VALUES ('72', '<p>牛仔连衣裙是每个女生必备的一款单品了，这款连衣裙设计很棒，忍不住的自留款，高腰收腰的设计拉长身材比例和显瘦哦，上身效果很好，四季必备单品，真的很喜欢，看图吧，版型很棒的一款，做了四个码数哦！适合各种身材的mm。</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>免费包邮！</p>', '56');
INSERT INTO `mg_goods_detail` VALUES ('73', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">假两件拼接背带连衣裙，完美剪载，修饰身材，搭配永远不会过时的背带，减龄百搭，强烈推荐！！！</span></p>', '<p>免费包邮！</p>', '57');
INSERT INTO `mg_goods_detail` VALUES ('74', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">说到秋冬无论如何都要入手的半身裙</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">就是这种看似低调却最容易出彩的单品了</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">Pu面料，本身自有一股时尚精神</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">时尚杂志、T台秀场和韩剧镜头中随处可见</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">运用于小女生味儿十足的饱满百褶裙上</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">灵动活泼，韩系小清新</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">可以说，任何上衣，都能搭出与众不同的小调调哦~~</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">尤其喜欢搭配明亮色系的效果，大爱！</span></p>', '<p>免费包邮！</p>', '58');
INSERT INTO `mg_goods_detail` VALUES ('75', '<p>店主自留推荐款，必备款哦，超级经典的一款小黑裙~<br/>显瘦利器，搭配小外套或者夏天单穿都是超级好看~<br/>推荐 ，推荐，推荐，~</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>免费包邮！</p>', '59');
INSERT INTO `mg_goods_detail` VALUES ('76', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">鞋面是猪巴皮材质哦。现在很多大品牌的鞋子都开始采用这种材质，这种皮质看起来非常显档次。这款拿来以后公司的小姑娘都非常喜欢，有的还给姐姐妹妹都拿了一双~大大方方的款式，既休闲又hold住正式场合</span></p>', '<p>免费包邮！</p>', '60');
INSERT INTO `mg_goods_detail` VALUES ('77', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">小菇凉们注意了，鞋了是美美滴，但是因为中出口货，所以鞋子是木有鞋盒滴哦，请介意者慎拍哦~~~ 厚底短靴</span></p>', '<p>免费包邮！</p>', '61');
INSERT INTO `mg_goods_detail` VALUES ('78', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">棕色和黑色，两经典色可选。正面牛翻皮，背面是头层牛皮，不仅有良好的弹性，而且很是宜穿。在专柜这样的全牛皮长靴至少也是四位数呀！我们保证专柜品质。</span></p>', '<p>7天包换！</p>', '62');
INSERT INTO `mg_goods_detail` VALUES ('79', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">气质款！铆钉搭带尖头高跟短靴！欧美范儿的妹子最爱的款式！</span></p>', '<p>7天包换！</p>', '63');
INSERT INTO `mg_goods_detail` VALUES ('81', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">《棉花糖》只此一家，无分店。我们只做质量好，性价比高的鞋子！</span></p>', '<p>7天包换!<br/></p>', '64');
INSERT INTO `mg_goods_detail` VALUES ('82', '<p>扎克佐沐推荐：韩版时尚毛呢大衣，简约风格，纯色设计，修身版型，超级百搭，看着给人很清爽舒适的感觉，三色可选，潮男必备。</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>免费包邮！</p>', '65');
INSERT INTO `mg_goods_detail` VALUES ('83', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">这款的设计理念是舒适 衣衣采用优质面料，亲肤透气，柔软舒适， 颜色都给人感觉非常清新，同时也不失甜美和休闲随意的感觉·~宅家、散步都可以穿</span></p>', '<p>7天包换！</p>', '66');
INSERT INTO `mg_goods_detail` VALUES ('84', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">扎克佐沐推荐：韩国欧巴示范，渐变色长袖毛衣，这款真的是超级的百搭，很好看哦，休闲，有个性。不一样的品味与潮流！</span></p>', '<p>7天包换！</p>', '67');
INSERT INTO `mg_goods_detail` VALUES ('85', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">时尚带点小清新哦</span></p>', '<p>7天包换！</p>', '68');
INSERT INTO `mg_goods_detail` VALUES ('86', '<p>韩国进口版型+大牌质量=平民价格！ 早付款【收早发货！你懂的！ 我只能告诉您：等待是值得的，收藏就晚了！ 拒绝粗制滥造，拒绝偷工减料！ 你敢买！我敢亏！亏本是有计划的！ 一亏到底前期累积销量！亲们，趁便宜，赶紧的来一件，不定时又要涨价了..收藏与分享还优先发货呢</p><div id=\"J_Graphic_product_info\" style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 12px; line-height: 19.2px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '<p>7天包换！</p>', '69');
INSERT INTO `mg_goods_detail` VALUES ('87', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">韩版V字大象纹复古皮质双肩包</span></p>', '<p>7天包换！<br/></p>', '70');
INSERT INTO `mg_goods_detail` VALUES ('88', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">独特的手提设计，精致的外观，质量棒棒哒，别具一格的风格，喜欢的妞们赶快的哦</span></p>', '<p>免费包邮！</p>', '71');
INSERT INTO `mg_goods_detail` VALUES ('89', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">韩版帆布大包包，上身效果特别好，简单休闲的街头夏季必备包包哦！</span></p>', '<p>免费包邮！</p>', '72');
INSERT INTO `mg_goods_detail` VALUES ('90', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">简约时尚休闲手拿包， 大牌同款，轻时尚主义！ 细腻荔枝纹PU皮，手感棒棒哒~ 优雅精致富有趣味，超级的大爱啊！ 搭配手腕带和PU长肩带， 时尚手拿，单肩斜跨，都可以哦！</span></p>', '<p>免费包邮！</p>', '73');
INSERT INTO `mg_goods_detail` VALUES ('91', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei,arial&#39;; font-size: 14px; line-height: 18px; background-color: rgb(255, 255, 255);\">百搭漂亮小包仿佛成啦你的魔法棒,时尚72变,一刻是女王,一刻是公主,也可以一刻甜美可人的邻家女孩,气质,浑然天成,做最自信从容的职场时尚丽人,深知搭配之道,当然赢的更漂亮......</span></p>', '<p>免费包邮！</p>', '74');
INSERT INTO `mg_goods_detail` VALUES ('93', '<p>冬天的冷是全方位的，寒气简直是无孔不入，手脚冰冷那是常态，还有裸露的脖子部分，</p><p>总是会感觉冷风在嗖嗖的从衣领处往里面钻，寒风刺骨，</p><p>所以不得不多加一条围巾。但其实你还有另一种选择，那就是半高领打底衫，它能读懂你的脆弱，带给你贴心的呵护。</p><p><br/></p>', '<p>baoyou</p>', '76');

-- ----------------------------
-- Table structure for `mg_goods_list`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods_list`;
CREATE TABLE `mg_goods_list` (
  `glid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `combine` char(50) NOT NULL DEFAULT '' COMMENT '组合类型id',
  `number` char(30) NOT NULL DEFAULT '' COMMENT '货号',
  `inventory` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '库存量',
  `goods_gid` int(10) unsigned NOT NULL COMMENT '商品id',
  PRIMARY KEY (`glid`),
  KEY `fk_mg_goods_list_mg_goods1_idx` (`goods_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='货品列表';

-- ----------------------------
-- Records of mg_goods_list
-- ----------------------------
INSERT INTO `mg_goods_list` VALUES ('1', '327,330', '7342936523590707', '100', '30');
INSERT INTO `mg_goods_list` VALUES ('2', '327,331', '5697028139916609', '20', '30');
INSERT INTO `mg_goods_list` VALUES ('3', '327,332', '7872483016943220', '30', '30');
INSERT INTO `mg_goods_list` VALUES ('4', '328,331', '6449365214744140', '100', '30');
INSERT INTO `mg_goods_list` VALUES ('5', '329,330', '5341156921321909', '100', '30');
INSERT INTO `mg_goods_list` VALUES ('6', '318,319', '5174631377246985', '100', '29');
INSERT INTO `mg_goods_list` VALUES ('7', '318,320', '5216266154618788', '200', '29');
INSERT INTO `mg_goods_list` VALUES ('8', '318,321', '4112921458503449', '100', '29');
INSERT INTO `mg_goods_list` VALUES ('9', '309,310', '3938226424696198', '100', '28');
INSERT INTO `mg_goods_list` VALUES ('10', '309,311', '2813330654384803', '500', '28');
INSERT INTO `mg_goods_list` VALUES ('11', '309,312', '9657546110617294', '200', '28');
INSERT INTO `mg_goods_list` VALUES ('12', '299,303', '1658314767292962', '100', '27');
INSERT INTO `mg_goods_list` VALUES ('13', '300,302', '9722547776654985', '100', '27');
INSERT INTO `mg_goods_list` VALUES ('14', '299,301', '2771849025912781', '100', '27');
INSERT INTO `mg_goods_list` VALUES ('15', '300,303', '6225656521792342', '100', '27');
INSERT INTO `mg_goods_list` VALUES ('16', '263,260', '1822070039490926', '100', '20');
INSERT INTO `mg_goods_list` VALUES ('17', '262,260', '5896588391459628', '200', '20');
INSERT INTO `mg_goods_list` VALUES ('18', '261,260', '7114566818667296', '100', '20');
INSERT INTO `mg_goods_list` VALUES ('19', '273,270', '8528106458312805', '100', '21');
INSERT INTO `mg_goods_list` VALUES ('20', '272,270', '6719904125632277', '100', '21');
INSERT INTO `mg_goods_list` VALUES ('21', '271,270', '7190139752043836', '100', '21');
INSERT INTO `mg_goods_list` VALUES ('22', '272,269', '3203201983130111', '100', '21');
INSERT INTO `mg_goods_list` VALUES ('23', '271,269', '5384541560676372', '100', '21');
INSERT INTO `mg_goods_list` VALUES ('24', '211,209', '8773809977438269', '100', '22');
INSERT INTO `mg_goods_list` VALUES ('25', '212,209', '3827778979064339', '100', '22');
INSERT INTO `mg_goods_list` VALUES ('26', '210,209', '4178233094357906', '120', '22');
INSERT INTO `mg_goods_list` VALUES ('27', '292,290', '9695235373389549', '100', '23');
INSERT INTO `mg_goods_list` VALUES ('28', '291,290', '1729876830538159', '100', '23');
INSERT INTO `mg_goods_list` VALUES ('29', '292,289', '5042883097386798', '100', '23');
INSERT INTO `mg_goods_list` VALUES ('30', '293,289', '6121643299624908', '100', '23');
INSERT INTO `mg_goods_list` VALUES ('31', '291,289', '3168749985443351', '100', '23');
INSERT INTO `mg_goods_list` VALUES ('32', '282,280', '2203586234920222', '100', '25');
INSERT INTO `mg_goods_list` VALUES ('33', '281,280', '2923923644710554', '100', '25');
INSERT INTO `mg_goods_list` VALUES ('34', '283,280', '7378891624205754', '100', '25');
INSERT INTO `mg_goods_list` VALUES ('35', '283,279', '3973521141421391', '100', '25');
INSERT INTO `mg_goods_list` VALUES ('36', '282,279', '6020568947242742', '100', '25');
INSERT INTO `mg_goods_list` VALUES ('37', '198,201', '1652057311427665', '100', '26');
INSERT INTO `mg_goods_list` VALUES ('38', '199,201', '9761227292253768', '100', '26');
INSERT INTO `mg_goods_list` VALUES ('39', '200,201', '7713707737016999', '100', '26');
INSERT INTO `mg_goods_list` VALUES ('40', '199,202', '1532152619306763', '100', '26');
INSERT INTO `mg_goods_list` VALUES ('41', '199,203', '2119587279316327', '100', '26');
INSERT INTO `mg_goods_list` VALUES ('42', '253,251', '1706224310650949', '111', '19');
INSERT INTO `mg_goods_list` VALUES ('43', '254,251', '6202197624064045', '100', '19');
INSERT INTO `mg_goods_list` VALUES ('44', '252,250', '3996944362230291', '100', '19');
INSERT INTO `mg_goods_list` VALUES ('45', '253,250', '1358491783296869', '100', '19');
INSERT INTO `mg_goods_list` VALUES ('46', '252,251', '8129962147306927', '100', '19');
INSERT INTO `mg_goods_list` VALUES ('47', '242,241', '1142961049597068', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('48', '244,241', '8448967326653654', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('49', '243,241', '2615753961742357', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('50', '244,240', '1999506058699595', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('51', '243,240', '7234786567778416', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('52', '242,239', '6091151933851783', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('53', '244,239', '1120113274605660', '100', '18');
INSERT INTO `mg_goods_list` VALUES ('54', '233,229', '5273093739931777', '80', '17');
INSERT INTO `mg_goods_list` VALUES ('55', '232,229', '9017905651025412', '90', '17');
INSERT INTO `mg_goods_list` VALUES ('56', '231,229', '6645602131860003', '100', '17');
INSERT INTO `mg_goods_list` VALUES ('57', '230,229', '4784492687676389', '100', '17');
INSERT INTO `mg_goods_list` VALUES ('58', '223,220', '6463082065184510', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('59', '222,220', '6737292363532706', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('60', '221,220', '3393380876734159', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('61', '223,219', '4360245359395835', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('62', '222,219', '8812013156167092', '200', '16');
INSERT INTO `mg_goods_list` VALUES ('63', '221,219', '1782680332507340', '300', '16');
INSERT INTO `mg_goods_list` VALUES ('64', '221,218', '5692552573756284', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('65', '222,218', '7597651657941729', '100', '16');
INSERT INTO `mg_goods_list` VALUES ('66', '338,340', '5623959726105251', '101', '31');
INSERT INTO `mg_goods_list` VALUES ('67', '338,341', '1503875942648276', '121', '31');
INSERT INTO `mg_goods_list` VALUES ('68', '338,342', '1489290228516233', '130', '31');
INSERT INTO `mg_goods_list` VALUES ('69', '339,340', '7707011141545649', '100', '31');
INSERT INTO `mg_goods_list` VALUES ('70', '339,341', '1686336291778694', '100', '31');
INSERT INTO `mg_goods_list` VALUES ('71', '339,342', '1913441679207988', '290', '31');
INSERT INTO `mg_goods_list` VALUES ('72', '348,350', '2341251995840851', '100', '32');
INSERT INTO `mg_goods_list` VALUES ('73', '348,351', '8221926834279962', '200', '32');
INSERT INTO `mg_goods_list` VALUES ('74', '348,352', '5597192686956793', '200', '32');
INSERT INTO `mg_goods_list` VALUES ('75', '348,353', '8943508221210612', '200', '32');
INSERT INTO `mg_goods_list` VALUES ('76', '349,350', '7817844187053159', '100', '32');
INSERT INTO `mg_goods_list` VALUES ('77', '349,351', '4528149729857196', '100', '32');
INSERT INTO `mg_goods_list` VALUES ('78', '349,352', '8689427452251623', '300', '32');
INSERT INTO `mg_goods_list` VALUES ('79', '349,353', '6533813867592308', '400', '32');
INSERT INTO `mg_goods_list` VALUES ('80', '359,365', '3222728912558272', '200', '33');
INSERT INTO `mg_goods_list` VALUES ('81', '360,365', '9188046718333324', '100', '33');
INSERT INTO `mg_goods_list` VALUES ('82', '361,365', '2838883851886913', '300', '33');
INSERT INTO `mg_goods_list` VALUES ('83', '362,365', '8128822552716172', '200', '33');
INSERT INTO `mg_goods_list` VALUES ('84', '363,365', '2470384598872815', '100', '33');
INSERT INTO `mg_goods_list` VALUES ('85', '364,365', '4724406189019168', '222', '33');
INSERT INTO `mg_goods_list` VALUES ('86', '371,373', '7496372820427057', '300', '34');
INSERT INTO `mg_goods_list` VALUES ('87', '371,374', '8036969829381557', '200', '34');
INSERT INTO `mg_goods_list` VALUES ('88', '372,373', '5554696254432717', '400', '34');
INSERT INTO `mg_goods_list` VALUES ('89', '372,374', '2190493765422578', '200', '34');
INSERT INTO `mg_goods_list` VALUES ('90', '380,382', '2218394925401354', '300', '35');
INSERT INTO `mg_goods_list` VALUES ('91', '380,383', '7008421533971660', '200', '35');
INSERT INTO `mg_goods_list` VALUES ('92', '381,382', '7946456915499974', '300', '35');
INSERT INTO `mg_goods_list` VALUES ('93', '381,383', '6934339056025775', '200', '35');
INSERT INTO `mg_goods_list` VALUES ('94', '389,392', '6230176011346720', '100', '36');
INSERT INTO `mg_goods_list` VALUES ('95', '390,392', '9180630649559819', '100', '36');
INSERT INTO `mg_goods_list` VALUES ('96', '391,392', '8080036830729972', '100', '36');
INSERT INTO `mg_goods_list` VALUES ('97', '390,393', '5965622432568788', '100', '36');
INSERT INTO `mg_goods_list` VALUES ('98', '391,394', '6365550847787756', '100', '36');
INSERT INTO `mg_goods_list` VALUES ('99', '389,393', '9835884094173659', '300', '36');
INSERT INTO `mg_goods_list` VALUES ('100', '400,401', '5837821864244353', '200', '37');
INSERT INTO `mg_goods_list` VALUES ('101', '400,402', '2257485425737429', '300', '37');
INSERT INTO `mg_goods_list` VALUES ('102', '400,403', '5525728393995387', '380', '37');
INSERT INTO `mg_goods_list` VALUES ('103', '409,411', '4055987920991148', '100', '38');
INSERT INTO `mg_goods_list` VALUES ('104', '409,412', '3207980363586135', '100', '38');
INSERT INTO `mg_goods_list` VALUES ('105', '410,411', '3926791842715812', '200', '38');
INSERT INTO `mg_goods_list` VALUES ('106', '410,412', '1361232213666689', '128', '38');
INSERT INTO `mg_goods_list` VALUES ('107', '418,420', '1334693052912679', '200', '39');
INSERT INTO `mg_goods_list` VALUES ('108', '419,420', '9387846986851294', '500', '39');
INSERT INTO `mg_goods_list` VALUES ('109', '440,436', '2677392261377993', '100', '40');
INSERT INTO `mg_goods_list` VALUES ('110', '439,436', '2495292548942329', '200', '40');
INSERT INTO `mg_goods_list` VALUES ('111', '438,436', '7568639750002330', '370', '40');
INSERT INTO `mg_goods_list` VALUES ('112', '437,436', '6556329751884204', '280', '40');
INSERT INTO `mg_goods_list` VALUES ('113', '446,447', '9114915024661425', '100', '41');
INSERT INTO `mg_goods_list` VALUES ('114', '446,448', '4771302165487300', '300', '41');
INSERT INTO `mg_goods_list` VALUES ('115', '446,449', '9433990183882626', '480', '41');
INSERT INTO `mg_goods_list` VALUES ('116', '455,457', '6192452857227820', '200', '42');
INSERT INTO `mg_goods_list` VALUES ('117', '455,458', '7831019676288055', '300', '42');
INSERT INTO `mg_goods_list` VALUES ('118', '455,459', '7487022319069069', '100', '42');
INSERT INTO `mg_goods_list` VALUES ('119', '456,458', '8071671918180685', '200', '42');
INSERT INTO `mg_goods_list` VALUES ('120', '465,467', '8993147983929349', '100', '43');
INSERT INTO `mg_goods_list` VALUES ('121', '465,468', '1291640769170674', '200', '43');
INSERT INTO `mg_goods_list` VALUES ('122', '465,469', '1430250518346684', '300', '43');
INSERT INTO `mg_goods_list` VALUES ('123', '466,467', '3866009557202237', '100', '43');
INSERT INTO `mg_goods_list` VALUES ('124', '466,469', '9390534982838460', '200', '43');
INSERT INTO `mg_goods_list` VALUES ('125', '474,476', '9175484148864007', '200', '44');
INSERT INTO `mg_goods_list` VALUES ('126', '474,477', '5506321572583028', '300', '44');
INSERT INTO `mg_goods_list` VALUES ('127', '474,478', '7352209715693731', '300', '44');
INSERT INTO `mg_goods_list` VALUES ('128', '475,476', '3197932145366741', '100', '44');
INSERT INTO `mg_goods_list` VALUES ('129', '475,477', '6034028972321085', '400', '44');
INSERT INTO `mg_goods_list` VALUES ('130', '475,478', '6831373192984007', '800', '44');
INSERT INTO `mg_goods_list` VALUES ('131', '483,486', '3238616561069752', '300', '45');
INSERT INTO `mg_goods_list` VALUES ('132', '484,486', '7836632827159273', '200', '45');
INSERT INTO `mg_goods_list` VALUES ('133', '484,487', '8997116839516301', '200', '45');
INSERT INTO `mg_goods_list` VALUES ('134', '485,488', '5792416570855986', '200', '45');
INSERT INTO `mg_goods_list` VALUES ('135', '496,498', '8225826976490430', '300', '46');
INSERT INTO `mg_goods_list` VALUES ('136', '496,499', '5382693038186323', '500', '46');
INSERT INTO `mg_goods_list` VALUES ('137', '497,498', '8378376939537516', '200', '46');
INSERT INTO `mg_goods_list` VALUES ('138', '497,499', '8727496787127433', '500', '46');
INSERT INTO `mg_goods_list` VALUES ('139', '505,506', '1216608323510097', '300', '47');
INSERT INTO `mg_goods_list` VALUES ('140', '505,507', '5342704397308711', '500', '47');
INSERT INTO `mg_goods_list` VALUES ('141', '514,518', '9222473138175897', '300', '48');
INSERT INTO `mg_goods_list` VALUES ('142', '515,518', '9571496237220554', '400', '48');
INSERT INTO `mg_goods_list` VALUES ('143', '516,518', '1726479045562449', '500', '48');
INSERT INTO `mg_goods_list` VALUES ('144', '517,518', '4158594031075301', '700', '48');
INSERT INTO `mg_goods_list` VALUES ('145', '525,527', '1037737449377616', '500', '49');
INSERT INTO `mg_goods_list` VALUES ('146', '526,527', '6581625567569931', '800', '49');
INSERT INTO `mg_goods_list` VALUES ('147', '533,535', '8455465045012266', '300', '50');
INSERT INTO `mg_goods_list` VALUES ('148', '534,535', '2267177498001758', '400', '50');
INSERT INTO `mg_goods_list` VALUES ('149', '533,536', '2962054375170390', '500', '50');
INSERT INTO `mg_goods_list` VALUES ('150', '534,536', '6726033667517810', '500', '50');
INSERT INTO `mg_goods_list` VALUES ('151', '543,545', '1468948292416553', '400', '51');
INSERT INTO `mg_goods_list` VALUES ('152', '544,545', '2687601016690683', '500', '51');
INSERT INTO `mg_goods_list` VALUES ('153', '552,555', '9214322555410782', '200', '52');
INSERT INTO `mg_goods_list` VALUES ('154', '553,555', '1089248321732511', '355', '52');
INSERT INTO `mg_goods_list` VALUES ('155', '554,555', '3168065670587798', '555', '52');
INSERT INTO `mg_goods_list` VALUES ('156', '562,564', '1644218447684744', '400', '53');
INSERT INTO `mg_goods_list` VALUES ('157', '562,565', '7855723617430762', '500', '53');
INSERT INTO `mg_goods_list` VALUES ('158', '563,564', '8678868453487329', '200', '53');
INSERT INTO `mg_goods_list` VALUES ('159', '563,565', '9579918959166824', '500', '53');
INSERT INTO `mg_goods_list` VALUES ('160', '572,573', '4604896773309767', '500', '54');
INSERT INTO `mg_goods_list` VALUES ('161', '572,574', '5113044675133078', '555', '54');
INSERT INTO `mg_goods_list` VALUES ('162', '580,582', '9333268429421160', '400', '55');
INSERT INTO `mg_goods_list` VALUES ('163', '581,582', '1284439348683363', '500', '55');
INSERT INTO `mg_goods_list` VALUES ('164', '589,590', '2129689866668361', '400', '56');
INSERT INTO `mg_goods_list` VALUES ('165', '589,591', '7771290739240358', '600', '56');
INSERT INTO `mg_goods_list` VALUES ('166', '597,598', '7717168763641038', '580', '57');
INSERT INTO `mg_goods_list` VALUES ('167', '604,606', '7916261415755683', '400', '58');
INSERT INTO `mg_goods_list` VALUES ('168', '604,607', '9682969891188776', '200', '58');
INSERT INTO `mg_goods_list` VALUES ('169', '605,606', '7435064443987413', '800', '58');
INSERT INTO `mg_goods_list` VALUES ('170', '613,614', '2074465334374309', '300', '59');
INSERT INTO `mg_goods_list` VALUES ('171', '613,615', '7519925193743902', '600', '59');
INSERT INTO `mg_goods_list` VALUES ('172', '621,623', '1883571636025201', '400', '60');
INSERT INTO `mg_goods_list` VALUES ('173', '621,624', '3849973926632940', '200', '60');
INSERT INTO `mg_goods_list` VALUES ('174', '622,624', '5106620738886801', '400', '60');
INSERT INTO `mg_goods_list` VALUES ('175', '631,633', '7768848526066456', '200', '61');
INSERT INTO `mg_goods_list` VALUES ('176', '630,634', '6985326517209010', '400', '61');
INSERT INTO `mg_goods_list` VALUES ('177', '632,633', '5934779128105529', '200', '61');
INSERT INTO `mg_goods_list` VALUES ('178', '640,641', '6701625368549445', '200', '62');
INSERT INTO `mg_goods_list` VALUES ('179', '640,642', '5933353046261735', '400', '62');
INSERT INTO `mg_goods_list` VALUES ('180', '648,650', '5390249344339312', '400', '63');
INSERT INTO `mg_goods_list` VALUES ('181', '648,651', '6563463026630091', '500', '63');
INSERT INTO `mg_goods_list` VALUES ('182', '649,651', '4300407510507552', '300', '63');
INSERT INTO `mg_goods_list` VALUES ('183', '671,670', '2078365838521193', '200', '64');
INSERT INTO `mg_goods_list` VALUES ('184', '671,669', '5732080831131961', '400', '64');
INSERT INTO `mg_goods_list` VALUES ('185', '671,668', '8025886954570789', '555', '64');
INSERT INTO `mg_goods_list` VALUES ('186', '679,681', '2255068114647954', '200', '65');
INSERT INTO `mg_goods_list` VALUES ('187', '679,682', '6670741116086980', '300', '65');
INSERT INTO `mg_goods_list` VALUES ('188', '680,681', '5538489839400372', '200', '65');
INSERT INTO `mg_goods_list` VALUES ('189', '689,690', '2813035961601203', '500', '66');
INSERT INTO `mg_goods_list` VALUES ('190', '697,698', '8618638327344670', '200', '67');
INSERT INTO `mg_goods_list` VALUES ('191', '697,699', '9381853017297366', '500', '67');
INSERT INTO `mg_goods_list` VALUES ('192', '706,707', '8456109047325848', '400', '68');
INSERT INTO `mg_goods_list` VALUES ('193', '706,708', '1627542511270663', '500', '68');
INSERT INTO `mg_goods_list` VALUES ('194', '716,718', '4227971180124741', '300', '69');
INSERT INTO `mg_goods_list` VALUES ('195', '717,719', '6115330833289161', '400', '69');
INSERT INTO `mg_goods_list` VALUES ('196', '717,718', '4027220167056104', '300', '69');
INSERT INTO `mg_goods_list` VALUES ('197', '725,726', '2677388348559830', '600', '70');
INSERT INTO `mg_goods_list` VALUES ('198', '731,733', '9867155835636041', '400', '71');
INSERT INTO `mg_goods_list` VALUES ('199', '732,733', '8162207429067316', '600', '71');
INSERT INTO `mg_goods_list` VALUES ('200', '740,741', '2289838156209097', '200', '72');
INSERT INTO `mg_goods_list` VALUES ('201', '739,741', '4048148787434321', '400', '72');
INSERT INTO `mg_goods_list` VALUES ('202', '747,749', '1501451380828654', '100', '73');
INSERT INTO `mg_goods_list` VALUES ('203', '755,758', '8896762983537880', '300', '74');
INSERT INTO `mg_goods_list` VALUES ('204', '756,758', '3182613556788216', '500', '74');
INSERT INTO `mg_goods_list` VALUES ('205', '757,758', '6189397793449510', '200', '74');
INSERT INTO `mg_goods_list` VALUES ('206', '767,768', '4622174468758684', '500', '76');

-- ----------------------------
-- Table structure for `mg_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods_type`;
CREATE TABLE `mg_goods_type` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(45) NOT NULL DEFAULT '' COMMENT '商品类型',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of mg_goods_type
-- ----------------------------
INSERT INTO `mg_goods_type` VALUES ('1', '衣服');
INSERT INTO `mg_goods_type` VALUES ('2', '裤子');
INSERT INTO `mg_goods_type` VALUES ('3', '配饰品');
INSERT INTO `mg_goods_type` VALUES ('4', '包包');
INSERT INTO `mg_goods_type` VALUES ('7', '美妆');
INSERT INTO `mg_goods_type` VALUES ('8', '百货');
INSERT INTO `mg_goods_type` VALUES ('9', '鞋子');
INSERT INTO `mg_goods_type` VALUES ('10', '家居');
INSERT INTO `mg_goods_type` VALUES ('11', '零食');
INSERT INTO `mg_goods_type` VALUES ('12', '母婴');
INSERT INTO `mg_goods_type` VALUES ('13', '男友');
INSERT INTO `mg_goods_type` VALUES ('14', '裙子');

-- ----------------------------
-- Table structure for `mg_goods_type_attr`
-- ----------------------------
DROP TABLE IF EXISTS `mg_goods_type_attr`;
CREATE TABLE `mg_goods_type_attr` (
  `gtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gtname` char(15) NOT NULL DEFAULT '' COMMENT '属性名称',
  `gtvalue` varchar(255) NOT NULL DEFAULT '' COMMENT '属性的值',
  `class` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型属性的类别：0表示属性1：规格',
  `goods_type_tid` int(10) unsigned NOT NULL COMMENT '类型列表的主键ID',
  PRIMARY KEY (`gtid`),
  KEY `fk_mg_goods_attr_mg_goods_type1_idx` (`goods_type_tid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='商品类型属性表';

-- ----------------------------
-- Records of mg_goods_type_attr
-- ----------------------------
INSERT INTO `mg_goods_type_attr` VALUES ('1', '袖长', '无袖|短袖|长袖|五分袖|中袖|七分袖|九分袖', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('2', '款式', '直筒型|修身型|宽松型|蝙蝠型|斗篷型|高腰型|裙摆型|不规则型|半高领', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('9', '图案', '条纹|格子|纯色|手绘|印花', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('4', '风格', '可爱|淑女|甜美|性感|优雅|嘻哈|朋克|复古|学院|田园', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('5', '流派', '韩版|日系|欧美|英伦|中式|杭派', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('6', '颜色', '白色|黑色|蓝色|藏青|红色|粉红色|灰色|卡其色|浅紫|酒红色|绿色|灰蓝', '1', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('7', '尺码', 'S|M|L|XL|XXL|XXXL|XXXXL|A|B|C|140D|37|38|39|40|中', '1', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('10', '裤型', '短裤|热裤|长裤|修身裤', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('11', '适合人群', '青年|情侣|女性', '0', '2');
INSERT INTO `mg_goods_type_attr` VALUES ('12', '面料', '蕾丝|羊毛|棉混纺|雪纺|真丝|聚酯/涤纶|尼龙|锦纶|羊绒', '0', '2');

-- ----------------------------
-- Table structure for `mg_imgs`
-- ----------------------------
DROP TABLE IF EXISTS `mg_imgs`;
CREATE TABLE `mg_imgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medium` varchar(255) NOT NULL DEFAULT '' COMMENT '中图',
  `mini` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `big` varchar(255) NOT NULL DEFAULT '' COMMENT '大图',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `goods_gid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mg_imgs_mg_goods1_idx` (`goods_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=540 DEFAULT CHARSET=utf8 COMMENT='商品图册';

-- ----------------------------
-- Records of mg_imgs
-- ----------------------------
INSERT INTO `mg_imgs` VALUES ('11', 'Upload/Imgs/151210/mid_25341449736566.jpg', 'Upload/Imgs/151210/mini_25341449736566.jpg', 'Upload/Imgs/151210/max_25341449736566.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('10', 'Upload/Imgs/151210/mid_21211449736566.jpg', 'Upload/Imgs/151210/mini_21211449736566.jpg', 'Upload/Imgs/151210/max_21211449736566.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('9', 'Upload/Imgs/151210/mid_95501449736565.jpg', 'Upload/Imgs/151210/mini_95501449736565.jpg', 'Upload/Imgs/151210/max_95501449736565.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('8', 'Upload/Imgs/151210/mid_66561449736565.jpg', 'Upload/Imgs/151210/mini_66561449736565.jpg', 'Upload/Imgs/151210/max_66561449736565.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('12', 'Upload/Imgs/151210/mid_72001449736567.jpg', 'Upload/Imgs/151210/mini_72001449736567.jpg', 'Upload/Imgs/151210/max_72001449736567.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('13', 'Upload/Imgs/151210/mid_95251449736567.jpg', 'Upload/Imgs/151210/mini_95251449736567.jpg', 'Upload/Imgs/151210/max_95251449736567.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('14', 'Upload/Imgs/151210/mid_68661449736567.jpg', 'Upload/Imgs/151210/mini_68661449736567.jpg', 'Upload/Imgs/151210/max_68661449736567.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('15', 'Upload/Imgs/151210/mid_11231449736568.jpg', 'Upload/Imgs/151210/mini_11231449736568.jpg', 'Upload/Imgs/151210/max_11231449736568.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('16', 'Upload/Imgs/151210/mid_38961449736568.jpg', 'Upload/Imgs/151210/mini_38961449736568.jpg', 'Upload/Imgs/151210/max_38961449736568.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('17', 'Upload/Imgs/151210/mid_7531449736569.jpg', 'Upload/Imgs/151210/mini_7531449736569.jpg', 'Upload/Imgs/151210/max_7531449736569.jpg', '1', '25');
INSERT INTO `mg_imgs` VALUES ('18', 'Upload/Imgs/151211/mid_69531449814981.jpg', 'Upload/Imgs/151211/mini_69531449814981.jpg', 'Upload/Imgs/151211/max_69531449814981.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('19', 'Upload/Imgs/151211/mid_29961449814981.jpg', 'Upload/Imgs/151211/mini_29961449814981.jpg', 'Upload/Imgs/151211/max_29961449814981.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('20', 'Upload/Imgs/151211/mid_10901449814981.jpg', 'Upload/Imgs/151211/mini_10901449814981.jpg', 'Upload/Imgs/151211/max_10901449814981.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('21', 'Upload/Imgs/151211/mid_78921449814982.jpg', 'Upload/Imgs/151211/mini_78921449814982.jpg', 'Upload/Imgs/151211/max_78921449814982.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('22', 'Upload/Imgs/151211/mid_72081449814982.jpg', 'Upload/Imgs/151211/mini_72081449814982.jpg', 'Upload/Imgs/151211/max_72081449814982.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('23', 'Upload/Imgs/151211/mid_45801449814982.jpg', 'Upload/Imgs/151211/mini_45801449814982.jpg', 'Upload/Imgs/151211/max_45801449814982.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('24', 'Upload/Imgs/151211/mid_56501449814983.jpg', 'Upload/Imgs/151211/mini_56501449814983.jpg', 'Upload/Imgs/151211/max_56501449814983.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('25', 'Upload/Imgs/151211/mid_79261449814983.jpg', 'Upload/Imgs/151211/mini_79261449814983.jpg', 'Upload/Imgs/151211/max_79261449814983.jpg', '1', '23');
INSERT INTO `mg_imgs` VALUES ('26', 'Upload/Imgs/151211/mid_1931449820107.jpg', 'Upload/Imgs/151211/mini_1931449820107.jpg', 'Upload/Imgs/151211/max_1931449820107.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('27', 'Upload/Imgs/151211/mid_34311449820107.jpg', 'Upload/Imgs/151211/mini_34311449820107.jpg', 'Upload/Imgs/151211/max_34311449820107.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('28', 'Upload/Imgs/151211/mid_3831449820107.jpg', 'Upload/Imgs/151211/mini_3831449820107.jpg', 'Upload/Imgs/151211/max_3831449820107.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('29', 'Upload/Imgs/151211/mid_82951449820108.jpg', 'Upload/Imgs/151211/mini_82951449820108.jpg', 'Upload/Imgs/151211/max_82951449820108.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('30', 'Upload/Imgs/151211/mid_93041449820108.jpg', 'Upload/Imgs/151211/mini_93041449820108.jpg', 'Upload/Imgs/151211/max_93041449820108.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('31', 'Upload/Imgs/151211/mid_7321449820108.jpg', 'Upload/Imgs/151211/mini_7321449820108.jpg', 'Upload/Imgs/151211/max_7321449820108.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('32', 'Upload/Imgs/151211/mid_35661449820109.jpg', 'Upload/Imgs/151211/mini_35661449820109.jpg', 'Upload/Imgs/151211/max_35661449820109.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('33', 'Upload/Imgs/151211/mid_43521449820109.jpg', 'Upload/Imgs/151211/mini_43521449820109.jpg', 'Upload/Imgs/151211/max_43521449820109.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('34', 'Upload/Imgs/151211/mid_78161449820110.jpg', 'Upload/Imgs/151211/mini_78161449820110.jpg', 'Upload/Imgs/151211/max_78161449820110.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('35', 'Upload/Imgs/151211/mid_95601449820110.jpg', 'Upload/Imgs/151211/mini_95601449820110.jpg', 'Upload/Imgs/151211/max_95601449820110.jpg', '1', '26');
INSERT INTO `mg_imgs` VALUES ('36', 'Upload/Imgs/151211/mid_70211449820931.jpg', 'Upload/Imgs/151211/mini_70211449820931.jpg', 'Upload/Imgs/151211/max_70211449820931.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('37', 'Upload/Imgs/151211/mid_92391449820931.jpg', 'Upload/Imgs/151211/mini_92391449820931.jpg', 'Upload/Imgs/151211/max_92391449820931.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('38', 'Upload/Imgs/151211/mid_85581449820931.jpg', 'Upload/Imgs/151211/mini_85581449820931.jpg', 'Upload/Imgs/151211/max_85581449820931.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('39', 'Upload/Imgs/151211/mid_22401449820932.jpg', 'Upload/Imgs/151211/mini_22401449820932.jpg', 'Upload/Imgs/151211/max_22401449820932.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('40', 'Upload/Imgs/151211/mid_69321449820932.jpg', 'Upload/Imgs/151211/mini_69321449820932.jpg', 'Upload/Imgs/151211/max_69321449820932.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('41', 'Upload/Imgs/151211/mid_59251449820933.jpg', 'Upload/Imgs/151211/mini_59251449820933.jpg', 'Upload/Imgs/151211/max_59251449820933.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('42', 'Upload/Imgs/151211/mid_79941449820933.jpg', 'Upload/Imgs/151211/mini_79941449820933.jpg', 'Upload/Imgs/151211/max_79941449820933.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('43', 'Upload/Imgs/151211/mid_86521449820933.jpg', 'Upload/Imgs/151211/mini_86521449820933.jpg', 'Upload/Imgs/151211/max_86521449820933.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('44', 'Upload/Imgs/151211/mid_50591449820933.jpg', 'Upload/Imgs/151211/mini_50591449820933.jpg', 'Upload/Imgs/151211/max_50591449820933.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('45', 'Upload/Imgs/151211/mid_36121449820934.jpg', 'Upload/Imgs/151211/mini_36121449820934.jpg', 'Upload/Imgs/151211/max_36121449820934.jpg', '1', '22');
INSERT INTO `mg_imgs` VALUES ('46', 'Upload/Imgs/151211/mid_69591449821299.jpg', 'Upload/Imgs/151211/mini_69591449821299.jpg', 'Upload/Imgs/151211/max_69591449821299.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('47', 'Upload/Imgs/151211/mid_90881449821299.jpg', 'Upload/Imgs/151211/mini_90881449821299.jpg', 'Upload/Imgs/151211/max_90881449821299.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('48', 'Upload/Imgs/151211/mid_20781449821299.jpg', 'Upload/Imgs/151211/mini_20781449821299.jpg', 'Upload/Imgs/151211/max_20781449821299.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('49', 'Upload/Imgs/151211/mid_57211449821300.jpg', 'Upload/Imgs/151211/mini_57211449821300.jpg', 'Upload/Imgs/151211/max_57211449821300.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('50', 'Upload/Imgs/151211/mid_73631449821300.jpg', 'Upload/Imgs/151211/mini_73631449821300.jpg', 'Upload/Imgs/151211/max_73631449821300.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('51', 'Upload/Imgs/151211/mid_54981449821301.jpg', 'Upload/Imgs/151211/mini_54981449821301.jpg', 'Upload/Imgs/151211/max_54981449821301.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('52', 'Upload/Imgs/151211/mid_1781449821301.jpg', 'Upload/Imgs/151211/mini_1781449821301.jpg', 'Upload/Imgs/151211/max_1781449821301.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('53', 'Upload/Imgs/151211/mid_85421449821301.jpg', 'Upload/Imgs/151211/mini_85421449821301.jpg', 'Upload/Imgs/151211/max_85421449821301.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('54', 'Upload/Imgs/151211/mid_9101449821302.jpg', 'Upload/Imgs/151211/mini_9101449821302.jpg', 'Upload/Imgs/151211/max_9101449821302.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('55', 'Upload/Imgs/151211/mid_84471449821302.jpg', 'Upload/Imgs/151211/mini_84471449821302.jpg', 'Upload/Imgs/151211/max_84471449821302.jpg', '1', '16');
INSERT INTO `mg_imgs` VALUES ('56', 'Upload/Imgs/151211/mid_15691449821508.jpg', 'Upload/Imgs/151211/mini_15691449821508.jpg', 'Upload/Imgs/151211/max_15691449821508.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('57', 'Upload/Imgs/151211/mid_55971449821509.jpg', 'Upload/Imgs/151211/mini_55971449821509.jpg', 'Upload/Imgs/151211/max_55971449821509.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('58', 'Upload/Imgs/151211/mid_63151449821509.jpg', 'Upload/Imgs/151211/mini_63151449821509.jpg', 'Upload/Imgs/151211/max_63151449821509.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('59', 'Upload/Imgs/151211/mid_82781449821509.jpg', 'Upload/Imgs/151211/mini_82781449821509.jpg', 'Upload/Imgs/151211/max_82781449821509.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('60', 'Upload/Imgs/151211/mid_98131449821510.jpg', 'Upload/Imgs/151211/mini_98131449821510.jpg', 'Upload/Imgs/151211/max_98131449821510.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('61', 'Upload/Imgs/151211/mid_87351449821510.jpg', 'Upload/Imgs/151211/mini_87351449821510.jpg', 'Upload/Imgs/151211/max_87351449821510.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('62', 'Upload/Imgs/151211/mid_52671449821510.jpg', 'Upload/Imgs/151211/mini_52671449821510.jpg', 'Upload/Imgs/151211/max_52671449821510.jpg', '1', '17');
INSERT INTO `mg_imgs` VALUES ('63', 'Upload/Imgs/151211/mid_64351449821784.jpg', 'Upload/Imgs/151211/mini_64351449821784.jpg', 'Upload/Imgs/151211/max_64351449821784.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('64', 'Upload/Imgs/151211/mid_49291449821784.jpg', 'Upload/Imgs/151211/mini_49291449821784.jpg', 'Upload/Imgs/151211/max_49291449821784.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('65', 'Upload/Imgs/151211/mid_46671449821785.jpg', 'Upload/Imgs/151211/mini_46671449821785.jpg', 'Upload/Imgs/151211/max_46671449821785.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('66', 'Upload/Imgs/151211/mid_32571449821785.jpg', 'Upload/Imgs/151211/mini_32571449821785.jpg', 'Upload/Imgs/151211/max_32571449821785.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('67', 'Upload/Imgs/151211/mid_85001449821785.jpg', 'Upload/Imgs/151211/mini_85001449821785.jpg', 'Upload/Imgs/151211/max_85001449821785.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('68', 'Upload/Imgs/151211/mid_30581449821786.jpg', 'Upload/Imgs/151211/mini_30581449821786.jpg', 'Upload/Imgs/151211/max_30581449821786.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('69', 'Upload/Imgs/151211/mid_57391449821786.jpg', 'Upload/Imgs/151211/mini_57391449821786.jpg', 'Upload/Imgs/151211/max_57391449821786.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('70', 'Upload/Imgs/151211/mid_23611449821786.jpg', 'Upload/Imgs/151211/mini_23611449821786.jpg', 'Upload/Imgs/151211/max_23611449821786.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('71', 'Upload/Imgs/151211/mid_12331449821787.jpg', 'Upload/Imgs/151211/mini_12331449821787.jpg', 'Upload/Imgs/151211/max_12331449821787.jpg', '1', '18');
INSERT INTO `mg_imgs` VALUES ('72', 'Upload/Imgs/151211/mid_38621449822116.jpg', 'Upload/Imgs/151211/mini_38621449822116.jpg', 'Upload/Imgs/151211/max_38621449822116.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('73', 'Upload/Imgs/151211/mid_12971449822116.jpg', 'Upload/Imgs/151211/mini_12971449822116.jpg', 'Upload/Imgs/151211/max_12971449822116.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('74', 'Upload/Imgs/151211/mid_79641449822117.jpg', 'Upload/Imgs/151211/mini_79641449822117.jpg', 'Upload/Imgs/151211/max_79641449822117.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('75', 'Upload/Imgs/151211/mid_78761449822117.jpg', 'Upload/Imgs/151211/mini_78761449822117.jpg', 'Upload/Imgs/151211/max_78761449822117.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('76', 'Upload/Imgs/151211/mid_55071449822117.jpg', 'Upload/Imgs/151211/mini_55071449822117.jpg', 'Upload/Imgs/151211/max_55071449822117.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('77', 'Upload/Imgs/151211/mid_58491449822118.jpg', 'Upload/Imgs/151211/mini_58491449822118.jpg', 'Upload/Imgs/151211/max_58491449822118.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('78', 'Upload/Imgs/151211/mid_2841449822118.jpg', 'Upload/Imgs/151211/mini_2841449822118.jpg', 'Upload/Imgs/151211/max_2841449822118.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('79', 'Upload/Imgs/151211/mid_25481449822118.jpg', 'Upload/Imgs/151211/mini_25481449822118.jpg', 'Upload/Imgs/151211/max_25481449822118.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('80', 'Upload/Imgs/151211/mid_84451449822119.jpg', 'Upload/Imgs/151211/mini_84451449822119.jpg', 'Upload/Imgs/151211/max_84451449822119.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('81', 'Upload/Imgs/151211/mid_3631449822119.jpg', 'Upload/Imgs/151211/mini_3631449822119.jpg', 'Upload/Imgs/151211/max_3631449822119.jpg', '1', '19');
INSERT INTO `mg_imgs` VALUES ('82', 'Upload/Imgs/151211/mid_36671449822388.jpg', 'Upload/Imgs/151211/mini_36671449822388.jpg', 'Upload/Imgs/151211/max_36671449822388.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('83', 'Upload/Imgs/151211/mid_63521449822388.jpg', 'Upload/Imgs/151211/mini_63521449822388.jpg', 'Upload/Imgs/151211/max_63521449822388.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('84', 'Upload/Imgs/151211/mid_23681449822389.jpg', 'Upload/Imgs/151211/mini_23681449822389.jpg', 'Upload/Imgs/151211/max_23681449822389.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('85', 'Upload/Imgs/151211/mid_71761449822389.jpg', 'Upload/Imgs/151211/mini_71761449822389.jpg', 'Upload/Imgs/151211/max_71761449822389.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('86', 'Upload/Imgs/151211/mid_81411449822389.jpg', 'Upload/Imgs/151211/mini_81411449822389.jpg', 'Upload/Imgs/151211/max_81411449822389.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('87', 'Upload/Imgs/151211/mid_51131449822390.jpg', 'Upload/Imgs/151211/mini_51131449822390.jpg', 'Upload/Imgs/151211/max_51131449822390.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('88', 'Upload/Imgs/151211/mid_92121449822390.jpg', 'Upload/Imgs/151211/mini_92121449822390.jpg', 'Upload/Imgs/151211/max_92121449822390.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('89', 'Upload/Imgs/151211/mid_30361449822390.jpg', 'Upload/Imgs/151211/mini_30361449822390.jpg', 'Upload/Imgs/151211/max_30361449822390.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('90', 'Upload/Imgs/151211/mid_82981449822391.jpg', 'Upload/Imgs/151211/mini_82981449822391.jpg', 'Upload/Imgs/151211/max_82981449822391.jpg', '1', '20');
INSERT INTO `mg_imgs` VALUES ('91', 'Upload/Imgs/151211/mid_20811449822625.jpg', 'Upload/Imgs/151211/mini_20811449822625.jpg', 'Upload/Imgs/151211/max_20811449822625.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('92', 'Upload/Imgs/151211/mid_4241449822626.jpg', 'Upload/Imgs/151211/mini_4241449822626.jpg', 'Upload/Imgs/151211/max_4241449822626.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('93', 'Upload/Imgs/151211/mid_16501449822626.jpg', 'Upload/Imgs/151211/mini_16501449822626.jpg', 'Upload/Imgs/151211/max_16501449822626.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('94', 'Upload/Imgs/151211/mid_35931449822626.jpg', 'Upload/Imgs/151211/mini_35931449822626.jpg', 'Upload/Imgs/151211/max_35931449822626.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('95', 'Upload/Imgs/151211/mid_87811449822627.jpg', 'Upload/Imgs/151211/mini_87811449822627.jpg', 'Upload/Imgs/151211/max_87811449822627.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('96', 'Upload/Imgs/151211/mid_98361449822627.jpg', 'Upload/Imgs/151211/mini_98361449822627.jpg', 'Upload/Imgs/151211/max_98361449822627.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('97', 'Upload/Imgs/151211/mid_59121449822627.jpg', 'Upload/Imgs/151211/mini_59121449822627.jpg', 'Upload/Imgs/151211/max_59121449822627.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('98', 'Upload/Imgs/151211/mid_91061449822628.jpg', 'Upload/Imgs/151211/mini_91061449822628.jpg', 'Upload/Imgs/151211/max_91061449822628.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('99', 'Upload/Imgs/151211/mid_28431449822628.jpg', 'Upload/Imgs/151211/mini_28431449822628.jpg', 'Upload/Imgs/151211/max_28431449822628.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('100', 'Upload/Imgs/151211/mid_48031449822628.jpg', 'Upload/Imgs/151211/mini_48031449822628.jpg', 'Upload/Imgs/151211/max_48031449822628.jpg', '1', '21');
INSERT INTO `mg_imgs` VALUES ('101', 'Upload/Imgs/151211/mid_77771449823157.jpg', 'Upload/Imgs/151211/mini_77771449823157.jpg', 'Upload/Imgs/151211/max_77771449823157.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('102', 'Upload/Imgs/151211/mid_13201449823158.jpg', 'Upload/Imgs/151211/mini_13201449823158.jpg', 'Upload/Imgs/151211/max_13201449823158.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('103', 'Upload/Imgs/151211/mid_63491449823158.jpg', 'Upload/Imgs/151211/mini_63491449823158.jpg', 'Upload/Imgs/151211/max_63491449823158.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('104', 'Upload/Imgs/151211/mid_78391449823158.jpg', 'Upload/Imgs/151211/mini_78391449823158.jpg', 'Upload/Imgs/151211/max_78391449823158.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('105', 'Upload/Imgs/151211/mid_79091449823159.jpg', 'Upload/Imgs/151211/mini_79091449823159.jpg', 'Upload/Imgs/151211/max_79091449823159.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('106', 'Upload/Imgs/151211/mid_36981449823159.jpg', 'Upload/Imgs/151211/mini_36981449823159.jpg', 'Upload/Imgs/151211/max_36981449823159.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('107', 'Upload/Imgs/151211/mid_81231449823159.jpg', 'Upload/Imgs/151211/mini_81231449823159.jpg', 'Upload/Imgs/151211/max_81231449823159.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('108', 'Upload/Imgs/151211/mid_11991449823160.jpg', 'Upload/Imgs/151211/mini_11991449823160.jpg', 'Upload/Imgs/151211/max_11991449823160.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('109', 'Upload/Imgs/151211/mid_42561449823160.jpg', 'Upload/Imgs/151211/mini_42561449823160.jpg', 'Upload/Imgs/151211/max_42561449823160.jpg', '1', '27');
INSERT INTO `mg_imgs` VALUES ('110', 'Upload/Imgs/151211/mid_71241449823372.jpg', 'Upload/Imgs/151211/mini_71241449823372.jpg', 'Upload/Imgs/151211/max_71241449823372.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('111', 'Upload/Imgs/151211/mid_70631449823372.jpg', 'Upload/Imgs/151211/mini_70631449823372.jpg', 'Upload/Imgs/151211/max_70631449823372.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('112', 'Upload/Imgs/151211/mid_92411449823373.jpg', 'Upload/Imgs/151211/mini_92411449823373.jpg', 'Upload/Imgs/151211/max_92411449823373.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('113', 'Upload/Imgs/151211/mid_64551449823373.jpg', 'Upload/Imgs/151211/mini_64551449823373.jpg', 'Upload/Imgs/151211/max_64551449823373.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('114', 'Upload/Imgs/151211/mid_97331449823373.jpg', 'Upload/Imgs/151211/mini_97331449823373.jpg', 'Upload/Imgs/151211/max_97331449823373.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('115', 'Upload/Imgs/151211/mid_75211449823374.jpg', 'Upload/Imgs/151211/mini_75211449823374.jpg', 'Upload/Imgs/151211/max_75211449823374.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('116', 'Upload/Imgs/151211/mid_64701449823374.jpg', 'Upload/Imgs/151211/mini_64701449823374.jpg', 'Upload/Imgs/151211/max_64701449823374.jpg', '1', '28');
INSERT INTO `mg_imgs` VALUES ('117', 'Upload/Imgs/151211/mid_85081449823643.jpg', 'Upload/Imgs/151211/mini_85081449823643.jpg', 'Upload/Imgs/151211/max_85081449823643.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('118', 'Upload/Imgs/151211/mid_61741449823643.jpg', 'Upload/Imgs/151211/mini_61741449823643.jpg', 'Upload/Imgs/151211/max_61741449823643.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('119', 'Upload/Imgs/151211/mid_39541449823643.jpg', 'Upload/Imgs/151211/mini_39541449823643.jpg', 'Upload/Imgs/151211/max_39541449823643.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('120', 'Upload/Imgs/151211/mid_82461449823644.jpg', 'Upload/Imgs/151211/mini_82461449823644.jpg', 'Upload/Imgs/151211/max_82461449823644.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('121', 'Upload/Imgs/151211/mid_2131449823644.jpg', 'Upload/Imgs/151211/mini_2131449823644.jpg', 'Upload/Imgs/151211/max_2131449823644.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('122', 'Upload/Imgs/151211/mid_76561449823644.jpg', 'Upload/Imgs/151211/mini_76561449823644.jpg', 'Upload/Imgs/151211/max_76561449823644.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('123', 'Upload/Imgs/151211/mid_15241449823645.jpg', 'Upload/Imgs/151211/mini_15241449823645.jpg', 'Upload/Imgs/151211/max_15241449823645.jpg', '1', '29');
INSERT INTO `mg_imgs` VALUES ('124', 'Upload/Imgs/151211/mid_40961449823846.jpg', 'Upload/Imgs/151211/mini_40961449823846.jpg', 'Upload/Imgs/151211/max_40961449823846.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('125', 'Upload/Imgs/151211/mid_18331449823847.jpg', 'Upload/Imgs/151211/mini_18331449823847.jpg', 'Upload/Imgs/151211/max_18331449823847.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('126', 'Upload/Imgs/151211/mid_58401449823847.jpg', 'Upload/Imgs/151211/mini_58401449823847.jpg', 'Upload/Imgs/151211/max_58401449823847.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('127', 'Upload/Imgs/151211/mid_2471449823848.jpg', 'Upload/Imgs/151211/mini_2471449823848.jpg', 'Upload/Imgs/151211/max_2471449823848.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('128', 'Upload/Imgs/151211/mid_3651449823848.jpg', 'Upload/Imgs/151211/mini_3651449823848.jpg', 'Upload/Imgs/151211/max_3651449823848.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('129', 'Upload/Imgs/151211/mid_37831449823848.jpg', 'Upload/Imgs/151211/mini_37831449823848.jpg', 'Upload/Imgs/151211/max_37831449823848.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('130', 'Upload/Imgs/151211/mid_55191449823849.jpg', 'Upload/Imgs/151211/mini_55191449823849.jpg', 'Upload/Imgs/151211/max_55191449823849.jpg', '1', '30');
INSERT INTO `mg_imgs` VALUES ('131', 'Upload/Imgs/151211/mid_99401449828040.jpg', 'Upload/Imgs/151211/mini_99401449828040.jpg', 'Upload/Imgs/151211/max_99401449828040.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('132', 'Upload/Imgs/151211/mid_23271449828041.jpg', 'Upload/Imgs/151211/mini_23271449828041.jpg', 'Upload/Imgs/151211/max_23271449828041.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('133', 'Upload/Imgs/151211/mid_73011449828041.jpg', 'Upload/Imgs/151211/mini_73011449828041.jpg', 'Upload/Imgs/151211/max_73011449828041.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('134', 'Upload/Imgs/151211/mid_48191449828041.jpg', 'Upload/Imgs/151211/mini_48191449828041.jpg', 'Upload/Imgs/151211/max_48191449828041.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('135', 'Upload/Imgs/151211/mid_23561449828042.jpg', 'Upload/Imgs/151211/mini_23561449828042.jpg', 'Upload/Imgs/151211/max_23561449828042.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('136', 'Upload/Imgs/151211/mid_37801449828042.jpg', 'Upload/Imgs/151211/mini_37801449828042.jpg', 'Upload/Imgs/151211/max_37801449828042.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('137', 'Upload/Imgs/151211/mid_1841449828042.jpg', 'Upload/Imgs/151211/mini_1841449828042.jpg', 'Upload/Imgs/151211/max_1841449828042.jpg', '1', '31');
INSERT INTO `mg_imgs` VALUES ('138', 'Upload/Imgs/151211/mid_45221449829027.jpg', 'Upload/Imgs/151211/mini_45221449829027.jpg', 'Upload/Imgs/151211/max_45221449829027.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('139', 'Upload/Imgs/151211/mid_74861449829028.jpg', 'Upload/Imgs/151211/mini_74861449829028.jpg', 'Upload/Imgs/151211/max_74861449829028.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('140', 'Upload/Imgs/151211/mid_89461449829028.jpg', 'Upload/Imgs/151211/mini_89461449829028.jpg', 'Upload/Imgs/151211/max_89461449829028.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('141', 'Upload/Imgs/151211/mid_15511449829028.jpg', 'Upload/Imgs/151211/mini_15511449829028.jpg', 'Upload/Imgs/151211/max_15511449829028.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('142', 'Upload/Imgs/151211/mid_40101449829029.jpg', 'Upload/Imgs/151211/mini_40101449829029.jpg', 'Upload/Imgs/151211/max_40101449829029.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('143', 'Upload/Imgs/151211/mid_53941449829029.jpg', 'Upload/Imgs/151211/mini_53941449829029.jpg', 'Upload/Imgs/151211/max_53941449829029.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('144', 'Upload/Imgs/151211/mid_68321449829029.jpg', 'Upload/Imgs/151211/mini_68321449829029.jpg', 'Upload/Imgs/151211/max_68321449829029.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('145', 'Upload/Imgs/151211/mid_42431449829030.jpg', 'Upload/Imgs/151211/mini_42431449829030.jpg', 'Upload/Imgs/151211/max_42431449829030.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('146', 'Upload/Imgs/151211/mid_75861449829030.jpg', 'Upload/Imgs/151211/mini_75861449829030.jpg', 'Upload/Imgs/151211/max_75861449829030.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('147', 'Upload/Imgs/151211/mid_30371449829030.jpg', 'Upload/Imgs/151211/mini_30371449829030.jpg', 'Upload/Imgs/151211/max_30371449829030.jpg', '1', '32');
INSERT INTO `mg_imgs` VALUES ('148', 'Upload/Imgs/151211/mid_74691449837582.jpg', 'Upload/Imgs/151211/mini_74691449837582.jpg', 'Upload/Imgs/151211/max_74691449837582.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('149', 'Upload/Imgs/151211/mid_22131449837583.jpg', 'Upload/Imgs/151211/mini_22131449837583.jpg', 'Upload/Imgs/151211/max_22131449837583.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('150', 'Upload/Imgs/151211/mid_65881449837583.jpg', 'Upload/Imgs/151211/mini_65881449837583.jpg', 'Upload/Imgs/151211/max_65881449837583.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('151', 'Upload/Imgs/151211/mid_72931449837583.jpg', 'Upload/Imgs/151211/mini_72931449837583.jpg', 'Upload/Imgs/151211/max_72931449837583.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('152', 'Upload/Imgs/151211/mid_4151449837584.jpg', 'Upload/Imgs/151211/mini_4151449837584.jpg', 'Upload/Imgs/151211/max_4151449837584.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('153', 'Upload/Imgs/151211/mid_65881449837584.jpg', 'Upload/Imgs/151211/mini_65881449837584.jpg', 'Upload/Imgs/151211/max_65881449837584.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('154', 'Upload/Imgs/151211/mid_14591449837585.jpg', 'Upload/Imgs/151211/mini_14591449837585.jpg', 'Upload/Imgs/151211/max_14591449837585.jpg', '1', '33');
INSERT INTO `mg_imgs` VALUES ('155', 'Upload/Imgs/151211/mid_6681449837915.jpg', 'Upload/Imgs/151211/mini_6681449837915.jpg', 'Upload/Imgs/151211/max_6681449837915.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('156', 'Upload/Imgs/151211/mid_52811449837915.jpg', 'Upload/Imgs/151211/mini_52811449837915.jpg', 'Upload/Imgs/151211/max_52811449837915.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('157', 'Upload/Imgs/151211/mid_55751449837916.jpg', 'Upload/Imgs/151211/mini_55751449837916.jpg', 'Upload/Imgs/151211/max_55751449837916.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('158', 'Upload/Imgs/151211/mid_69651449837916.jpg', 'Upload/Imgs/151211/mini_69651449837916.jpg', 'Upload/Imgs/151211/max_69651449837916.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('159', 'Upload/Imgs/151211/mid_68861449837917.jpg', 'Upload/Imgs/151211/mini_68861449837917.jpg', 'Upload/Imgs/151211/max_68861449837917.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('160', 'Upload/Imgs/151211/mid_27811449837917.jpg', 'Upload/Imgs/151211/mini_27811449837917.jpg', 'Upload/Imgs/151211/max_27811449837917.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('161', 'Upload/Imgs/151211/mid_61031449837917.jpg', 'Upload/Imgs/151211/mini_61031449837917.jpg', 'Upload/Imgs/151211/max_61031449837917.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('162', 'Upload/Imgs/151211/mid_841449837918.jpg', 'Upload/Imgs/151211/mini_841449837918.jpg', 'Upload/Imgs/151211/max_841449837918.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('163', 'Upload/Imgs/151211/mid_52141449837918.jpg', 'Upload/Imgs/151211/mini_52141449837918.jpg', 'Upload/Imgs/151211/max_52141449837918.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('164', 'Upload/Imgs/151211/mid_71911449837918.jpg', 'Upload/Imgs/151211/mini_71911449837918.jpg', 'Upload/Imgs/151211/max_71911449837918.jpg', '1', '34');
INSERT INTO `mg_imgs` VALUES ('165', 'Upload/Imgs/151211/mid_27441449838243.jpg', 'Upload/Imgs/151211/mini_27441449838243.jpg', 'Upload/Imgs/151211/max_27441449838243.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('166', 'Upload/Imgs/151211/mid_38641449838243.jpg', 'Upload/Imgs/151211/mini_38641449838243.jpg', 'Upload/Imgs/151211/max_38641449838243.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('167', 'Upload/Imgs/151211/mid_57481449838244.jpg', 'Upload/Imgs/151211/mini_57481449838244.jpg', 'Upload/Imgs/151211/max_57481449838244.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('168', 'Upload/Imgs/151211/mid_96561449838244.jpg', 'Upload/Imgs/151211/mini_96561449838244.jpg', 'Upload/Imgs/151211/max_96561449838244.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('169', 'Upload/Imgs/151211/mid_73931449838245.jpg', 'Upload/Imgs/151211/mini_73931449838245.jpg', 'Upload/Imgs/151211/max_73931449838245.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('170', 'Upload/Imgs/151211/mid_39651449838245.jpg', 'Upload/Imgs/151211/mini_39651449838245.jpg', 'Upload/Imgs/151211/max_39651449838245.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('171', 'Upload/Imgs/151211/mid_67711449838245.jpg', 'Upload/Imgs/151211/mini_67711449838245.jpg', 'Upload/Imgs/151211/max_67711449838245.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('172', 'Upload/Imgs/151211/mid_78051449838245.jpg', 'Upload/Imgs/151211/mini_78051449838245.jpg', 'Upload/Imgs/151211/max_78051449838245.jpg', '1', '35');
INSERT INTO `mg_imgs` VALUES ('173', 'Upload/Imgs/151211/mid_581449838592.jpg', 'Upload/Imgs/151211/mini_581449838592.jpg', 'Upload/Imgs/151211/max_581449838592.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('174', 'Upload/Imgs/151211/mid_27981449838592.jpg', 'Upload/Imgs/151211/mini_27981449838592.jpg', 'Upload/Imgs/151211/max_27981449838592.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('175', 'Upload/Imgs/151211/mid_34341449838592.jpg', 'Upload/Imgs/151211/mini_34341449838592.jpg', 'Upload/Imgs/151211/max_34341449838592.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('176', 'Upload/Imgs/151211/mid_53211449838593.jpg', 'Upload/Imgs/151211/mini_53211449838593.jpg', 'Upload/Imgs/151211/max_53211449838593.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('177', 'Upload/Imgs/151211/mid_16001449838593.jpg', 'Upload/Imgs/151211/mini_16001449838593.jpg', 'Upload/Imgs/151211/max_16001449838593.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('178', 'Upload/Imgs/151211/mid_87981449838593.jpg', 'Upload/Imgs/151211/mini_87981449838593.jpg', 'Upload/Imgs/151211/max_87981449838593.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('179', 'Upload/Imgs/151211/mid_70551449838594.jpg', 'Upload/Imgs/151211/mini_70551449838594.jpg', 'Upload/Imgs/151211/max_70551449838594.jpg', '1', '36');
INSERT INTO `mg_imgs` VALUES ('180', 'Upload/Imgs/151211/mid_60181449838866.jpg', 'Upload/Imgs/151211/mini_60181449838866.jpg', 'Upload/Imgs/151211/max_60181449838866.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('181', 'Upload/Imgs/151211/mid_10861449838866.jpg', 'Upload/Imgs/151211/mini_10861449838866.jpg', 'Upload/Imgs/151211/max_10861449838866.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('182', 'Upload/Imgs/151211/mid_28541449838866.jpg', 'Upload/Imgs/151211/mini_28541449838866.jpg', 'Upload/Imgs/151211/max_28541449838866.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('183', 'Upload/Imgs/151211/mid_84791449838867.jpg', 'Upload/Imgs/151211/mini_84791449838867.jpg', 'Upload/Imgs/151211/max_84791449838867.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('184', 'Upload/Imgs/151211/mid_11331449838867.jpg', 'Upload/Imgs/151211/mini_11331449838867.jpg', 'Upload/Imgs/151211/max_11331449838867.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('185', 'Upload/Imgs/151211/mid_47771449838867.jpg', 'Upload/Imgs/151211/mini_47771449838867.jpg', 'Upload/Imgs/151211/max_47771449838867.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('186', 'Upload/Imgs/151211/mid_16791449838868.jpg', 'Upload/Imgs/151211/mini_16791449838868.jpg', 'Upload/Imgs/151211/max_16791449838868.jpg', '1', '37');
INSERT INTO `mg_imgs` VALUES ('187', 'Upload/Imgs/151211/mid_6041449839147.jpg', 'Upload/Imgs/151211/mini_6041449839147.jpg', 'Upload/Imgs/151211/max_6041449839147.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('188', 'Upload/Imgs/151211/mid_36901449839147.jpg', 'Upload/Imgs/151211/mini_36901449839147.jpg', 'Upload/Imgs/151211/max_36901449839147.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('189', 'Upload/Imgs/151211/mid_30631449839147.jpg', 'Upload/Imgs/151211/mini_30631449839147.jpg', 'Upload/Imgs/151211/max_30631449839147.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('190', 'Upload/Imgs/151211/mid_75571449839148.jpg', 'Upload/Imgs/151211/mini_75571449839148.jpg', 'Upload/Imgs/151211/max_75571449839148.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('191', 'Upload/Imgs/151211/mid_22221449839148.jpg', 'Upload/Imgs/151211/mini_22221449839148.jpg', 'Upload/Imgs/151211/max_22221449839148.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('192', 'Upload/Imgs/151211/mid_71281449839157.jpg', 'Upload/Imgs/151211/mini_71281449839157.jpg', 'Upload/Imgs/151211/max_71281449839157.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('193', 'Upload/Imgs/151211/mid_18071449839157.jpg', 'Upload/Imgs/151211/mini_18071449839157.jpg', 'Upload/Imgs/151211/max_18071449839157.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('194', 'Upload/Imgs/151211/mid_21981449839158.jpg', 'Upload/Imgs/151211/mini_21981449839158.jpg', 'Upload/Imgs/151211/max_21981449839158.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('195', 'Upload/Imgs/151211/mid_10831449839158.jpg', 'Upload/Imgs/151211/mini_10831449839158.jpg', 'Upload/Imgs/151211/max_10831449839158.jpg', '1', '38');
INSERT INTO `mg_imgs` VALUES ('196', 'Upload/Imgs/151211/mid_93241449839418.jpg', 'Upload/Imgs/151211/mini_93241449839418.jpg', 'Upload/Imgs/151211/max_93241449839418.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('197', 'Upload/Imgs/151211/mid_22551449839418.jpg', 'Upload/Imgs/151211/mini_22551449839418.jpg', 'Upload/Imgs/151211/max_22551449839418.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('198', 'Upload/Imgs/151211/mid_62491449839419.jpg', 'Upload/Imgs/151211/mini_62491449839419.jpg', 'Upload/Imgs/151211/max_62491449839419.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('199', 'Upload/Imgs/151211/mid_51751449839419.jpg', 'Upload/Imgs/151211/mini_51751449839419.jpg', 'Upload/Imgs/151211/max_51751449839419.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('200', 'Upload/Imgs/151211/mid_89931449839419.jpg', 'Upload/Imgs/151211/mini_89931449839419.jpg', 'Upload/Imgs/151211/max_89931449839419.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('201', 'Upload/Imgs/151211/mid_65411449839420.jpg', 'Upload/Imgs/151211/mini_65411449839420.jpg', 'Upload/Imgs/151211/max_65411449839420.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('202', 'Upload/Imgs/151211/mid_42011449839420.jpg', 'Upload/Imgs/151211/mini_42011449839420.jpg', 'Upload/Imgs/151211/max_42011449839420.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('203', 'Upload/Imgs/151211/mid_88791449839420.jpg', 'Upload/Imgs/151211/mini_88791449839420.jpg', 'Upload/Imgs/151211/max_88791449839420.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('204', 'Upload/Imgs/151211/mid_13341449839421.jpg', 'Upload/Imgs/151211/mini_13341449839421.jpg', 'Upload/Imgs/151211/max_13341449839421.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('205', 'Upload/Imgs/151211/mid_68691449839421.jpg', 'Upload/Imgs/151211/mini_68691449839421.jpg', 'Upload/Imgs/151211/max_68691449839421.jpg', '1', '39');
INSERT INTO `mg_imgs` VALUES ('206', 'Upload/Imgs/151211/mid_4441449839794.jpg', 'Upload/Imgs/151211/mini_4441449839794.jpg', 'Upload/Imgs/151211/max_4441449839794.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('207', 'Upload/Imgs/151211/mid_47631449839795.jpg', 'Upload/Imgs/151211/mini_47631449839795.jpg', 'Upload/Imgs/151211/max_47631449839795.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('208', 'Upload/Imgs/151211/mid_78411449839795.jpg', 'Upload/Imgs/151211/mini_78411449839795.jpg', 'Upload/Imgs/151211/max_78411449839795.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('209', 'Upload/Imgs/151211/mid_69081449839795.jpg', 'Upload/Imgs/151211/mini_69081449839795.jpg', 'Upload/Imgs/151211/max_69081449839795.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('210', 'Upload/Imgs/151211/mid_47581449839796.jpg', 'Upload/Imgs/151211/mini_47581449839796.jpg', 'Upload/Imgs/151211/max_47581449839796.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('211', 'Upload/Imgs/151211/mid_20291449839796.jpg', 'Upload/Imgs/151211/mini_20291449839796.jpg', 'Upload/Imgs/151211/max_20291449839796.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('212', 'Upload/Imgs/151211/mid_64031449839809.jpg', 'Upload/Imgs/151211/mini_64031449839809.jpg', 'Upload/Imgs/151211/max_64031449839809.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('213', 'Upload/Imgs/151211/mid_91701449839810.jpg', 'Upload/Imgs/151211/mini_91701449839810.jpg', 'Upload/Imgs/151211/max_91701449839810.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('214', 'Upload/Imgs/151211/mid_6651449839810.jpg', 'Upload/Imgs/151211/mini_6651449839810.jpg', 'Upload/Imgs/151211/max_6651449839810.jpg', '1', '40');
INSERT INTO `mg_imgs` VALUES ('215', 'Upload/Imgs/151211/mid_36871449840107.jpg', 'Upload/Imgs/151211/mini_36871449840107.jpg', 'Upload/Imgs/151211/max_36871449840107.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('216', 'Upload/Imgs/151211/mid_33701449840107.jpg', 'Upload/Imgs/151211/mini_33701449840107.jpg', 'Upload/Imgs/151211/max_33701449840107.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('217', 'Upload/Imgs/151211/mid_92861449840108.jpg', 'Upload/Imgs/151211/mini_92861449840108.jpg', 'Upload/Imgs/151211/max_92861449840108.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('218', 'Upload/Imgs/151211/mid_20981449840108.jpg', 'Upload/Imgs/151211/mini_20981449840108.jpg', 'Upload/Imgs/151211/max_20981449840108.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('219', 'Upload/Imgs/151211/mid_34481449840109.jpg', 'Upload/Imgs/151211/mini_34481449840109.jpg', 'Upload/Imgs/151211/max_34481449840109.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('220', 'Upload/Imgs/151211/mid_4251449840109.jpg', 'Upload/Imgs/151211/mini_4251449840109.jpg', 'Upload/Imgs/151211/max_4251449840109.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('221', 'Upload/Imgs/151211/mid_39541449840109.jpg', 'Upload/Imgs/151211/mini_39541449840109.jpg', 'Upload/Imgs/151211/max_39541449840109.jpg', '1', '41');
INSERT INTO `mg_imgs` VALUES ('222', 'Upload/Imgs/151211/mid_24151449840338.jpg', 'Upload/Imgs/151211/mini_24151449840338.jpg', 'Upload/Imgs/151211/max_24151449840338.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('223', 'Upload/Imgs/151211/mid_50481449840339.jpg', 'Upload/Imgs/151211/mini_50481449840339.jpg', 'Upload/Imgs/151211/max_50481449840339.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('224', 'Upload/Imgs/151211/mid_15691449840340.jpg', 'Upload/Imgs/151211/mini_15691449840340.jpg', 'Upload/Imgs/151211/max_15691449840340.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('225', 'Upload/Imgs/151211/mid_11791449840341.jpg', 'Upload/Imgs/151211/mini_11791449840341.jpg', 'Upload/Imgs/151211/max_11791449840341.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('226', 'Upload/Imgs/151211/mid_34801449840342.jpg', 'Upload/Imgs/151211/mini_34801449840342.jpg', 'Upload/Imgs/151211/max_34801449840342.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('227', 'Upload/Imgs/151211/mid_80671449840344.jpg', 'Upload/Imgs/151211/mini_80671449840344.jpg', 'Upload/Imgs/151211/max_80671449840344.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('228', 'Upload/Imgs/151211/mid_58131449840345.jpg', 'Upload/Imgs/151211/mini_58131449840345.jpg', 'Upload/Imgs/151211/max_58131449840345.jpg', '1', '42');
INSERT INTO `mg_imgs` VALUES ('229', 'Upload/Imgs/151211/mid_84981449840771.jpg', 'Upload/Imgs/151211/mini_84981449840771.jpg', 'Upload/Imgs/151211/max_84981449840771.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('230', 'Upload/Imgs/151211/mid_56031449840781.jpg', 'Upload/Imgs/151211/mini_56031449840781.jpg', 'Upload/Imgs/151211/max_56031449840781.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('231', 'Upload/Imgs/151211/mid_15861449840781.jpg', 'Upload/Imgs/151211/mini_15861449840781.jpg', 'Upload/Imgs/151211/max_15861449840781.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('232', 'Upload/Imgs/151211/mid_52751449840781.jpg', 'Upload/Imgs/151211/mini_52751449840781.jpg', 'Upload/Imgs/151211/max_52751449840781.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('233', 'Upload/Imgs/151211/mid_80291449840782.jpg', 'Upload/Imgs/151211/mini_80291449840782.jpg', 'Upload/Imgs/151211/max_80291449840782.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('234', 'Upload/Imgs/151211/mid_51931449840782.jpg', 'Upload/Imgs/151211/mini_51931449840782.jpg', 'Upload/Imgs/151211/max_51931449840782.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('235', 'Upload/Imgs/151211/mid_56731449840782.jpg', 'Upload/Imgs/151211/mini_56731449840782.jpg', 'Upload/Imgs/151211/max_56731449840782.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('236', 'Upload/Imgs/151211/mid_81631449840783.jpg', 'Upload/Imgs/151211/mini_81631449840783.jpg', 'Upload/Imgs/151211/max_81631449840783.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('237', 'Upload/Imgs/151211/mid_68521449840783.jpg', 'Upload/Imgs/151211/mini_68521449840783.jpg', 'Upload/Imgs/151211/max_68521449840783.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('238', 'Upload/Imgs/151211/mid_32211449840783.jpg', 'Upload/Imgs/151211/mini_32211449840783.jpg', 'Upload/Imgs/151211/max_32211449840783.jpg', '1', '43');
INSERT INTO `mg_imgs` VALUES ('239', 'Upload/Imgs/151213/mid_93971449978648.jpg', 'Upload/Imgs/151213/mini_93971449978648.jpg', 'Upload/Imgs/151213/max_93971449978648.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('240', 'Upload/Imgs/151213/mid_96811449978649.jpg', 'Upload/Imgs/151213/mini_96811449978649.jpg', 'Upload/Imgs/151213/max_96811449978649.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('241', 'Upload/Imgs/151213/mid_5211449978649.jpg', 'Upload/Imgs/151213/mini_5211449978649.jpg', 'Upload/Imgs/151213/max_5211449978649.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('242', 'Upload/Imgs/151213/mid_75521449978649.jpg', 'Upload/Imgs/151213/mini_75521449978649.jpg', 'Upload/Imgs/151213/max_75521449978649.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('243', 'Upload/Imgs/151213/mid_79451449978650.jpg', 'Upload/Imgs/151213/mini_79451449978650.jpg', 'Upload/Imgs/151213/max_79451449978650.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('244', 'Upload/Imgs/151213/mid_10911449978650.jpg', 'Upload/Imgs/151213/mini_10911449978650.jpg', 'Upload/Imgs/151213/max_10911449978650.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('245', 'Upload/Imgs/151213/mid_30101449978651.jpg', 'Upload/Imgs/151213/mini_30101449978651.jpg', 'Upload/Imgs/151213/max_30101449978651.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('246', 'Upload/Imgs/151213/mid_92311449978651.jpg', 'Upload/Imgs/151213/mini_92311449978651.jpg', 'Upload/Imgs/151213/max_92311449978651.jpg', '1', '44');
INSERT INTO `mg_imgs` VALUES ('247', 'Upload/Imgs/151213/mid_25621449979007.jpg', 'Upload/Imgs/151213/mini_25621449979007.jpg', 'Upload/Imgs/151213/max_25621449979007.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('248', 'Upload/Imgs/151213/mid_20371449979008.jpg', 'Upload/Imgs/151213/mini_20371449979008.jpg', 'Upload/Imgs/151213/max_20371449979008.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('249', 'Upload/Imgs/151213/mid_201449979008.jpg', 'Upload/Imgs/151213/mini_201449979008.jpg', 'Upload/Imgs/151213/max_201449979008.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('250', 'Upload/Imgs/151213/mid_63101449979008.jpg', 'Upload/Imgs/151213/mini_63101449979008.jpg', 'Upload/Imgs/151213/max_63101449979008.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('251', 'Upload/Imgs/151213/mid_58361449979009.jpg', 'Upload/Imgs/151213/mini_58361449979009.jpg', 'Upload/Imgs/151213/max_58361449979009.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('252', 'Upload/Imgs/151213/mid_57551449979009.jpg', 'Upload/Imgs/151213/mini_57551449979009.jpg', 'Upload/Imgs/151213/max_57551449979009.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('253', 'Upload/Imgs/151213/mid_90251449979009.jpg', 'Upload/Imgs/151213/mini_90251449979009.jpg', 'Upload/Imgs/151213/max_90251449979009.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('254', 'Upload/Imgs/151213/mid_68011449979010.jpg', 'Upload/Imgs/151213/mini_68011449979010.jpg', 'Upload/Imgs/151213/max_68011449979010.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('255', 'Upload/Imgs/151213/mid_48571449979010.jpg', 'Upload/Imgs/151213/mini_48571449979010.jpg', 'Upload/Imgs/151213/max_48571449979010.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('256', 'Upload/Imgs/151213/mid_28431449979010.jpg', 'Upload/Imgs/151213/mini_28431449979010.jpg', 'Upload/Imgs/151213/max_28431449979010.jpg', '1', '45');
INSERT INTO `mg_imgs` VALUES ('257', 'Upload/Imgs/151213/mid_9401449979408.jpg', 'Upload/Imgs/151213/mini_9401449979408.jpg', 'Upload/Imgs/151213/max_9401449979408.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('258', 'Upload/Imgs/151213/mid_78561449979408.jpg', 'Upload/Imgs/151213/mini_78561449979408.jpg', 'Upload/Imgs/151213/max_78561449979408.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('259', 'Upload/Imgs/151213/mid_76651449979409.jpg', 'Upload/Imgs/151213/mini_76651449979409.jpg', 'Upload/Imgs/151213/max_76651449979409.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('260', 'Upload/Imgs/151213/mid_6961449979409.jpg', 'Upload/Imgs/151213/mini_6961449979409.jpg', 'Upload/Imgs/151213/max_6961449979409.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('261', 'Upload/Imgs/151213/mid_7021449979410.jpg', 'Upload/Imgs/151213/mini_7021449979410.jpg', 'Upload/Imgs/151213/max_7021449979410.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('262', 'Upload/Imgs/151213/mid_14501449979410.jpg', 'Upload/Imgs/151213/mini_14501449979410.jpg', 'Upload/Imgs/151213/max_14501449979410.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('263', 'Upload/Imgs/151213/mid_20871449979410.jpg', 'Upload/Imgs/151213/mini_20871449979410.jpg', 'Upload/Imgs/151213/max_20871449979410.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('264', 'Upload/Imgs/151213/mid_97621449979411.jpg', 'Upload/Imgs/151213/mini_97621449979411.jpg', 'Upload/Imgs/151213/max_97621449979411.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('265', 'Upload/Imgs/151213/mid_36601449979411.jpg', 'Upload/Imgs/151213/mini_36601449979411.jpg', 'Upload/Imgs/151213/max_36601449979411.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('266', 'Upload/Imgs/151213/mid_60751449979411.jpg', 'Upload/Imgs/151213/mini_60751449979411.jpg', 'Upload/Imgs/151213/max_60751449979411.jpg', '1', '46');
INSERT INTO `mg_imgs` VALUES ('267', 'Upload/Imgs/151213/mid_35521449979713.jpg', 'Upload/Imgs/151213/mini_35521449979713.jpg', 'Upload/Imgs/151213/max_35521449979713.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('268', 'Upload/Imgs/151213/mid_64221449979713.jpg', 'Upload/Imgs/151213/mini_64221449979713.jpg', 'Upload/Imgs/151213/max_64221449979713.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('269', 'Upload/Imgs/151213/mid_86221449979714.jpg', 'Upload/Imgs/151213/mini_86221449979714.jpg', 'Upload/Imgs/151213/max_86221449979714.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('270', 'Upload/Imgs/151213/mid_95721449979714.jpg', 'Upload/Imgs/151213/mini_95721449979714.jpg', 'Upload/Imgs/151213/max_95721449979714.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('271', 'Upload/Imgs/151213/mid_96081449979715.jpg', 'Upload/Imgs/151213/mini_96081449979715.jpg', 'Upload/Imgs/151213/max_96081449979715.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('272', 'Upload/Imgs/151213/mid_66341449979715.jpg', 'Upload/Imgs/151213/mini_66341449979715.jpg', 'Upload/Imgs/151213/max_66341449979715.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('273', 'Upload/Imgs/151213/mid_29291449979715.jpg', 'Upload/Imgs/151213/mini_29291449979715.jpg', 'Upload/Imgs/151213/max_29291449979715.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('274', 'Upload/Imgs/151213/mid_76741449979716.jpg', 'Upload/Imgs/151213/mini_76741449979716.jpg', 'Upload/Imgs/151213/max_76741449979716.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('275', 'Upload/Imgs/151213/mid_45771449979716.jpg', 'Upload/Imgs/151213/mini_45771449979716.jpg', 'Upload/Imgs/151213/max_45771449979716.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('276', 'Upload/Imgs/151213/mid_32281449979716.jpg', 'Upload/Imgs/151213/mini_32281449979716.jpg', 'Upload/Imgs/151213/max_32281449979716.jpg', '1', '47');
INSERT INTO `mg_imgs` VALUES ('277', 'Upload/Imgs/151213/mid_21561449980050.jpg', 'Upload/Imgs/151213/mini_21561449980050.jpg', 'Upload/Imgs/151213/max_21561449980050.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('278', 'Upload/Imgs/151213/mid_92191449980062.jpg', 'Upload/Imgs/151213/mini_92191449980062.jpg', 'Upload/Imgs/151213/max_92191449980062.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('279', 'Upload/Imgs/151213/mid_39211449980063.jpg', 'Upload/Imgs/151213/mini_39211449980063.jpg', 'Upload/Imgs/151213/max_39211449980063.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('280', 'Upload/Imgs/151213/mid_71991449980063.jpg', 'Upload/Imgs/151213/mini_71991449980063.jpg', 'Upload/Imgs/151213/max_71991449980063.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('281', 'Upload/Imgs/151213/mid_48661449980063.jpg', 'Upload/Imgs/151213/mini_48661449980063.jpg', 'Upload/Imgs/151213/max_48661449980063.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('282', 'Upload/Imgs/151213/mid_31781449980064.jpg', 'Upload/Imgs/151213/mini_31781449980064.jpg', 'Upload/Imgs/151213/max_31781449980064.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('283', 'Upload/Imgs/151213/mid_51421449980064.jpg', 'Upload/Imgs/151213/mini_51421449980064.jpg', 'Upload/Imgs/151213/max_51421449980064.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('284', 'Upload/Imgs/151213/mid_57011449980064.jpg', 'Upload/Imgs/151213/mini_57011449980064.jpg', 'Upload/Imgs/151213/max_57011449980064.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('285', 'Upload/Imgs/151213/mid_62001449980065.jpg', 'Upload/Imgs/151213/mini_62001449980065.jpg', 'Upload/Imgs/151213/max_62001449980065.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('286', 'Upload/Imgs/151213/mid_53711449980065.jpg', 'Upload/Imgs/151213/mini_53711449980065.jpg', 'Upload/Imgs/151213/max_53711449980065.jpg', '1', '48');
INSERT INTO `mg_imgs` VALUES ('287', 'Upload/Imgs/151213/mid_81241449980270.jpg', 'Upload/Imgs/151213/mini_81241449980270.jpg', 'Upload/Imgs/151213/max_81241449980270.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('288', 'Upload/Imgs/151213/mid_23981449980270.jpg', 'Upload/Imgs/151213/mini_23981449980270.jpg', 'Upload/Imgs/151213/max_23981449980270.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('289', 'Upload/Imgs/151213/mid_72821449980271.jpg', 'Upload/Imgs/151213/mini_72821449980271.jpg', 'Upload/Imgs/151213/max_72821449980271.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('290', 'Upload/Imgs/151213/mid_61021449980271.jpg', 'Upload/Imgs/151213/mini_61021449980271.jpg', 'Upload/Imgs/151213/max_61021449980271.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('291', 'Upload/Imgs/151213/mid_63211449980272.jpg', 'Upload/Imgs/151213/mini_63211449980272.jpg', 'Upload/Imgs/151213/max_63211449980272.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('292', 'Upload/Imgs/151213/mid_40241449980272.jpg', 'Upload/Imgs/151213/mini_40241449980272.jpg', 'Upload/Imgs/151213/max_40241449980272.jpg', '1', '49');
INSERT INTO `mg_imgs` VALUES ('293', 'Upload/Imgs/151213/mid_82471449980607.jpg', 'Upload/Imgs/151213/mini_82471449980607.jpg', 'Upload/Imgs/151213/max_82471449980607.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('294', 'Upload/Imgs/151213/mid_48681449980608.jpg', 'Upload/Imgs/151213/mini_48681449980608.jpg', 'Upload/Imgs/151213/max_48681449980608.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('295', 'Upload/Imgs/151213/mid_36631449980608.jpg', 'Upload/Imgs/151213/mini_36631449980608.jpg', 'Upload/Imgs/151213/max_36631449980608.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('296', 'Upload/Imgs/151213/mid_48161449980608.jpg', 'Upload/Imgs/151213/mini_48161449980608.jpg', 'Upload/Imgs/151213/max_48161449980608.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('297', 'Upload/Imgs/151213/mid_59991449980609.jpg', 'Upload/Imgs/151213/mini_59991449980609.jpg', 'Upload/Imgs/151213/max_59991449980609.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('298', 'Upload/Imgs/151213/mid_18641449980609.jpg', 'Upload/Imgs/151213/mini_18641449980609.jpg', 'Upload/Imgs/151213/max_18641449980609.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('299', 'Upload/Imgs/151213/mid_71971449980609.jpg', 'Upload/Imgs/151213/mini_71971449980609.jpg', 'Upload/Imgs/151213/max_71971449980609.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('300', 'Upload/Imgs/151213/mid_74171449980610.jpg', 'Upload/Imgs/151213/mini_74171449980610.jpg', 'Upload/Imgs/151213/max_74171449980610.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('301', 'Upload/Imgs/151213/mid_91481449980610.jpg', 'Upload/Imgs/151213/mini_91481449980610.jpg', 'Upload/Imgs/151213/max_91481449980610.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('302', 'Upload/Imgs/151213/mid_6441449980610.jpg', 'Upload/Imgs/151213/mini_6441449980610.jpg', 'Upload/Imgs/151213/max_6441449980610.jpg', '1', '50');
INSERT INTO `mg_imgs` VALUES ('303', 'Upload/Imgs/151213/mid_18941449986011.jpg', 'Upload/Imgs/151213/mini_18941449986011.jpg', 'Upload/Imgs/151213/max_18941449986011.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('304', 'Upload/Imgs/151213/mid_38001449986019.jpg', 'Upload/Imgs/151213/mini_38001449986019.jpg', 'Upload/Imgs/151213/max_38001449986019.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('305', 'Upload/Imgs/151213/mid_83101449986019.jpg', 'Upload/Imgs/151213/mini_83101449986019.jpg', 'Upload/Imgs/151213/max_83101449986019.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('306', 'Upload/Imgs/151213/mid_96971449986020.jpg', 'Upload/Imgs/151213/mini_96971449986020.jpg', 'Upload/Imgs/151213/max_96971449986020.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('307', 'Upload/Imgs/151213/mid_22891449986020.jpg', 'Upload/Imgs/151213/mini_22891449986020.jpg', 'Upload/Imgs/151213/max_22891449986020.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('308', 'Upload/Imgs/151213/mid_84621449986020.jpg', 'Upload/Imgs/151213/mini_84621449986020.jpg', 'Upload/Imgs/151213/max_84621449986020.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('309', 'Upload/Imgs/151213/mid_8871449986021.jpg', 'Upload/Imgs/151213/mini_8871449986021.jpg', 'Upload/Imgs/151213/max_8871449986021.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('310', 'Upload/Imgs/151213/mid_39651449986021.jpg', 'Upload/Imgs/151213/mini_39651449986021.jpg', 'Upload/Imgs/151213/max_39651449986021.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('311', 'Upload/Imgs/151213/mid_73131449986021.jpg', 'Upload/Imgs/151213/mini_73131449986021.jpg', 'Upload/Imgs/151213/max_73131449986021.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('312', 'Upload/Imgs/151213/mid_77351449986022.jpg', 'Upload/Imgs/151213/mini_77351449986022.jpg', 'Upload/Imgs/151213/max_77351449986022.jpg', '1', '51');
INSERT INTO `mg_imgs` VALUES ('313', 'Upload/Imgs/151213/mid_47711449986242.jpg', 'Upload/Imgs/151213/mini_47711449986242.jpg', 'Upload/Imgs/151213/max_47711449986242.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('314', 'Upload/Imgs/151213/mid_7551449986249.jpg', 'Upload/Imgs/151213/mini_7551449986249.jpg', 'Upload/Imgs/151213/max_7551449986249.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('315', 'Upload/Imgs/151213/mid_42681449986250.jpg', 'Upload/Imgs/151213/mini_42681449986250.jpg', 'Upload/Imgs/151213/max_42681449986250.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('316', 'Upload/Imgs/151213/mid_63621449986250.jpg', 'Upload/Imgs/151213/mini_63621449986250.jpg', 'Upload/Imgs/151213/max_63621449986250.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('317', 'Upload/Imgs/151213/mid_5501449986250.jpg', 'Upload/Imgs/151213/mini_5501449986250.jpg', 'Upload/Imgs/151213/max_5501449986250.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('318', 'Upload/Imgs/151213/mid_95861449986251.jpg', 'Upload/Imgs/151213/mini_95861449986251.jpg', 'Upload/Imgs/151213/max_95861449986251.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('319', 'Upload/Imgs/151213/mid_44471449986251.jpg', 'Upload/Imgs/151213/mini_44471449986251.jpg', 'Upload/Imgs/151213/max_44471449986251.jpg', '1', '52');
INSERT INTO `mg_imgs` VALUES ('320', 'Upload/Imgs/151213/mid_4811449986538.jpg', 'Upload/Imgs/151213/mini_4811449986538.jpg', 'Upload/Imgs/151213/max_4811449986538.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('321', 'Upload/Imgs/151213/mid_15671449986538.jpg', 'Upload/Imgs/151213/mini_15671449986538.jpg', 'Upload/Imgs/151213/max_15671449986538.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('322', 'Upload/Imgs/151213/mid_34501449986538.jpg', 'Upload/Imgs/151213/mini_34501449986538.jpg', 'Upload/Imgs/151213/max_34501449986538.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('323', 'Upload/Imgs/151213/mid_43671449986539.jpg', 'Upload/Imgs/151213/mini_43671449986539.jpg', 'Upload/Imgs/151213/max_43671449986539.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('324', 'Upload/Imgs/151213/mid_60541449986539.jpg', 'Upload/Imgs/151213/mini_60541449986539.jpg', 'Upload/Imgs/151213/max_60541449986539.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('325', 'Upload/Imgs/151213/mid_92031449986539.jpg', 'Upload/Imgs/151213/mini_92031449986539.jpg', 'Upload/Imgs/151213/max_92031449986539.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('326', 'Upload/Imgs/151213/mid_55871449986540.jpg', 'Upload/Imgs/151213/mini_55871449986540.jpg', 'Upload/Imgs/151213/max_55871449986540.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('327', 'Upload/Imgs/151213/mid_14051449986540.jpg', 'Upload/Imgs/151213/mini_14051449986540.jpg', 'Upload/Imgs/151213/max_14051449986540.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('328', 'Upload/Imgs/151213/mid_14781449986541.jpg', 'Upload/Imgs/151213/mini_14781449986541.jpg', 'Upload/Imgs/151213/max_14781449986541.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('329', 'Upload/Imgs/151213/mid_36211449986541.jpg', 'Upload/Imgs/151213/mini_36211449986541.jpg', 'Upload/Imgs/151213/max_36211449986541.jpg', '1', '53');
INSERT INTO `mg_imgs` VALUES ('330', 'Upload/Imgs/151213/mid_52251449986771.jpg', 'Upload/Imgs/151213/mini_52251449986771.jpg', 'Upload/Imgs/151213/max_52251449986771.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('331', 'Upload/Imgs/151213/mid_81731449986771.jpg', 'Upload/Imgs/151213/mini_81731449986771.jpg', 'Upload/Imgs/151213/max_81731449986771.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('332', 'Upload/Imgs/151213/mid_211449986772.jpg', 'Upload/Imgs/151213/mini_211449986772.jpg', 'Upload/Imgs/151213/max_211449986772.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('333', 'Upload/Imgs/151213/mid_23351449986772.jpg', 'Upload/Imgs/151213/mini_23351449986772.jpg', 'Upload/Imgs/151213/max_23351449986772.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('334', 'Upload/Imgs/151213/mid_83151449986772.jpg', 'Upload/Imgs/151213/mini_83151449986772.jpg', 'Upload/Imgs/151213/max_83151449986772.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('335', 'Upload/Imgs/151213/mid_52491449986773.jpg', 'Upload/Imgs/151213/mini_52491449986773.jpg', 'Upload/Imgs/151213/max_52491449986773.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('336', 'Upload/Imgs/151213/mid_45341449986773.jpg', 'Upload/Imgs/151213/mini_45341449986773.jpg', 'Upload/Imgs/151213/max_45341449986773.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('337', 'Upload/Imgs/151213/mid_65981449986773.jpg', 'Upload/Imgs/151213/mini_65981449986773.jpg', 'Upload/Imgs/151213/max_65981449986773.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('338', 'Upload/Imgs/151213/mid_75911449986774.jpg', 'Upload/Imgs/151213/mini_75911449986774.jpg', 'Upload/Imgs/151213/max_75911449986774.jpg', '1', '54');
INSERT INTO `mg_imgs` VALUES ('339', 'Upload/Imgs/151213/mid_43031449988596.jpg', 'Upload/Imgs/151213/mini_43031449988596.jpg', 'Upload/Imgs/151213/max_43031449988596.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('340', 'Upload/Imgs/151213/mid_59801449988601.jpg', 'Upload/Imgs/151213/mini_59801449988601.jpg', 'Upload/Imgs/151213/max_59801449988601.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('341', 'Upload/Imgs/151213/mid_79861449988601.jpg', 'Upload/Imgs/151213/mini_79861449988601.jpg', 'Upload/Imgs/151213/max_79861449988601.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('342', 'Upload/Imgs/151213/mid_40771449988601.jpg', 'Upload/Imgs/151213/mini_40771449988601.jpg', 'Upload/Imgs/151213/max_40771449988601.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('343', 'Upload/Imgs/151213/mid_56151449988601.jpg', 'Upload/Imgs/151213/mini_56151449988601.jpg', 'Upload/Imgs/151213/max_56151449988601.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('344', 'Upload/Imgs/151213/mid_11161449988602.jpg', 'Upload/Imgs/151213/mini_11161449988602.jpg', 'Upload/Imgs/151213/max_11161449988602.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('345', 'Upload/Imgs/151213/mid_65741449988602.jpg', 'Upload/Imgs/151213/mini_65741449988602.jpg', 'Upload/Imgs/151213/max_65741449988602.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('346', 'Upload/Imgs/151213/mid_95911449988602.jpg', 'Upload/Imgs/151213/mini_95911449988602.jpg', 'Upload/Imgs/151213/max_95911449988602.jpg', '1', '55');
INSERT INTO `mg_imgs` VALUES ('347', 'Upload/Imgs/151213/mid_91231449988945.jpg', 'Upload/Imgs/151213/mini_91231449988945.jpg', 'Upload/Imgs/151213/max_91231449988945.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('348', 'Upload/Imgs/151213/mid_94731449988951.jpg', 'Upload/Imgs/151213/mini_94731449988951.jpg', 'Upload/Imgs/151213/max_94731449988951.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('349', 'Upload/Imgs/151213/mid_44331449988952.jpg', 'Upload/Imgs/151213/mini_44331449988952.jpg', 'Upload/Imgs/151213/max_44331449988952.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('350', 'Upload/Imgs/151213/mid_43861449988952.jpg', 'Upload/Imgs/151213/mini_43861449988952.jpg', 'Upload/Imgs/151213/max_43861449988952.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('351', 'Upload/Imgs/151213/mid_65311449988952.jpg', 'Upload/Imgs/151213/mini_65311449988952.jpg', 'Upload/Imgs/151213/max_65311449988952.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('352', 'Upload/Imgs/151213/mid_26771449988952.jpg', 'Upload/Imgs/151213/mini_26771449988952.jpg', 'Upload/Imgs/151213/max_26771449988952.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('353', 'Upload/Imgs/151213/mid_19571449988953.jpg', 'Upload/Imgs/151213/mini_19571449988953.jpg', 'Upload/Imgs/151213/max_19571449988953.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('354', 'Upload/Imgs/151213/mid_93071449988953.jpg', 'Upload/Imgs/151213/mini_93071449988953.jpg', 'Upload/Imgs/151213/max_93071449988953.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('355', 'Upload/Imgs/151213/mid_58701449988954.jpg', 'Upload/Imgs/151213/mini_58701449988954.jpg', 'Upload/Imgs/151213/max_58701449988954.jpg', '1', '56');
INSERT INTO `mg_imgs` VALUES ('356', 'Upload/Imgs/151213/mid_45911449989212.jpg', 'Upload/Imgs/151213/mini_45911449989212.jpg', 'Upload/Imgs/151213/max_45911449989212.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('357', 'Upload/Imgs/151213/mid_27731449989212.jpg', 'Upload/Imgs/151213/mini_27731449989212.jpg', 'Upload/Imgs/151213/max_27731449989212.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('358', 'Upload/Imgs/151213/mid_11371449989213.jpg', 'Upload/Imgs/151213/mini_11371449989213.jpg', 'Upload/Imgs/151213/max_11371449989213.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('359', 'Upload/Imgs/151213/mid_40921449989213.jpg', 'Upload/Imgs/151213/mini_40921449989213.jpg', 'Upload/Imgs/151213/max_40921449989213.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('360', 'Upload/Imgs/151213/mid_74841449989213.jpg', 'Upload/Imgs/151213/mini_74841449989213.jpg', 'Upload/Imgs/151213/max_74841449989213.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('361', 'Upload/Imgs/151213/mid_20791449989213.jpg', 'Upload/Imgs/151213/mini_20791449989213.jpg', 'Upload/Imgs/151213/max_20791449989213.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('362', 'Upload/Imgs/151213/mid_32721449989214.jpg', 'Upload/Imgs/151213/mini_32721449989214.jpg', 'Upload/Imgs/151213/max_32721449989214.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('363', 'Upload/Imgs/151213/mid_90151449989214.jpg', 'Upload/Imgs/151213/mini_90151449989214.jpg', 'Upload/Imgs/151213/max_90151449989214.jpg', '1', '57');
INSERT INTO `mg_imgs` VALUES ('364', 'Upload/Imgs/151213/mid_87711449989456.jpg', 'Upload/Imgs/151213/mini_87711449989456.jpg', 'Upload/Imgs/151213/max_87711449989456.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('365', 'Upload/Imgs/151213/mid_431449989461.jpg', 'Upload/Imgs/151213/mini_431449989461.jpg', 'Upload/Imgs/151213/max_431449989461.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('366', 'Upload/Imgs/151213/mid_71091449989461.jpg', 'Upload/Imgs/151213/mini_71091449989461.jpg', 'Upload/Imgs/151213/max_71091449989461.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('367', 'Upload/Imgs/151213/mid_60661449989462.jpg', 'Upload/Imgs/151213/mini_60661449989462.jpg', 'Upload/Imgs/151213/max_60661449989462.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('368', 'Upload/Imgs/151213/mid_64871449989462.jpg', 'Upload/Imgs/151213/mini_64871449989462.jpg', 'Upload/Imgs/151213/max_64871449989462.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('369', 'Upload/Imgs/151213/mid_64701449989462.jpg', 'Upload/Imgs/151213/mini_64701449989462.jpg', 'Upload/Imgs/151213/max_64701449989462.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('370', 'Upload/Imgs/151213/mid_96781449989463.jpg', 'Upload/Imgs/151213/mini_96781449989463.jpg', 'Upload/Imgs/151213/max_96781449989463.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('371', 'Upload/Imgs/151213/mid_12341449989463.jpg', 'Upload/Imgs/151213/mini_12341449989463.jpg', 'Upload/Imgs/151213/max_12341449989463.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('372', 'Upload/Imgs/151213/mid_56431449989463.jpg', 'Upload/Imgs/151213/mini_56431449989463.jpg', 'Upload/Imgs/151213/max_56431449989463.jpg', '1', '58');
INSERT INTO `mg_imgs` VALUES ('373', 'Upload/Imgs/151213/mid_40111449989889.jpg', 'Upload/Imgs/151213/mini_40111449989889.jpg', 'Upload/Imgs/151213/max_40111449989889.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('374', 'Upload/Imgs/151213/mid_62601449989901.jpg', 'Upload/Imgs/151213/mini_62601449989901.jpg', 'Upload/Imgs/151213/max_62601449989901.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('375', 'Upload/Imgs/151213/mid_51501449989901.jpg', 'Upload/Imgs/151213/mini_51501449989901.jpg', 'Upload/Imgs/151213/max_51501449989901.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('376', 'Upload/Imgs/151213/mid_56101449989901.jpg', 'Upload/Imgs/151213/mini_56101449989901.jpg', 'Upload/Imgs/151213/max_56101449989901.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('377', 'Upload/Imgs/151213/mid_24271449989902.jpg', 'Upload/Imgs/151213/mini_24271449989902.jpg', 'Upload/Imgs/151213/max_24271449989902.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('378', 'Upload/Imgs/151213/mid_62911449989902.jpg', 'Upload/Imgs/151213/mini_62911449989902.jpg', 'Upload/Imgs/151213/max_62911449989902.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('379', 'Upload/Imgs/151213/mid_22731449989902.jpg', 'Upload/Imgs/151213/mini_22731449989902.jpg', 'Upload/Imgs/151213/max_22731449989902.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('380', 'Upload/Imgs/151213/mid_28281449989903.jpg', 'Upload/Imgs/151213/mini_28281449989903.jpg', 'Upload/Imgs/151213/max_28281449989903.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('381', 'Upload/Imgs/151213/mid_49381449989903.jpg', 'Upload/Imgs/151213/mini_49381449989903.jpg', 'Upload/Imgs/151213/max_49381449989903.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('382', 'Upload/Imgs/151213/mid_73991449989903.jpg', 'Upload/Imgs/151213/mini_73991449989903.jpg', 'Upload/Imgs/151213/max_73991449989903.jpg', '1', '59');
INSERT INTO `mg_imgs` VALUES ('383', 'Upload/Imgs/151213/mid_27141449990359.jpg', 'Upload/Imgs/151213/mini_27141449990359.jpg', 'Upload/Imgs/151213/max_27141449990359.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('384', 'Upload/Imgs/151213/mid_12351449990360.jpg', 'Upload/Imgs/151213/mini_12351449990360.jpg', 'Upload/Imgs/151213/max_12351449990360.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('385', 'Upload/Imgs/151213/mid_51111449990360.jpg', 'Upload/Imgs/151213/mini_51111449990360.jpg', 'Upload/Imgs/151213/max_51111449990360.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('386', 'Upload/Imgs/151213/mid_67871449990360.jpg', 'Upload/Imgs/151213/mini_67871449990360.jpg', 'Upload/Imgs/151213/max_67871449990360.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('387', 'Upload/Imgs/151213/mid_83381449990361.jpg', 'Upload/Imgs/151213/mini_83381449990361.jpg', 'Upload/Imgs/151213/max_83381449990361.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('388', 'Upload/Imgs/151213/mid_29181449990361.jpg', 'Upload/Imgs/151213/mini_29181449990361.jpg', 'Upload/Imgs/151213/max_29181449990361.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('389', 'Upload/Imgs/151213/mid_54571449990361.jpg', 'Upload/Imgs/151213/mini_54571449990361.jpg', 'Upload/Imgs/151213/max_54571449990361.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('390', 'Upload/Imgs/151213/mid_24721449990362.jpg', 'Upload/Imgs/151213/mini_24721449990362.jpg', 'Upload/Imgs/151213/max_24721449990362.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('391', 'Upload/Imgs/151213/mid_77041449990362.jpg', 'Upload/Imgs/151213/mini_77041449990362.jpg', 'Upload/Imgs/151213/max_77041449990362.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('392', 'Upload/Imgs/151213/mid_37861449990363.jpg', 'Upload/Imgs/151213/mini_37861449990363.jpg', 'Upload/Imgs/151213/max_37861449990363.jpg', '1', '60');
INSERT INTO `mg_imgs` VALUES ('393', 'Upload/Imgs/151213/mid_80091449990620.jpg', 'Upload/Imgs/151213/mini_80091449990620.jpg', 'Upload/Imgs/151213/max_80091449990620.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('394', 'Upload/Imgs/151213/mid_33981449990626.jpg', 'Upload/Imgs/151213/mini_33981449990626.jpg', 'Upload/Imgs/151213/max_33981449990626.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('395', 'Upload/Imgs/151213/mid_54151449990627.jpg', 'Upload/Imgs/151213/mini_54151449990627.jpg', 'Upload/Imgs/151213/max_54151449990627.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('396', 'Upload/Imgs/151213/mid_11961449990627.jpg', 'Upload/Imgs/151213/mini_11961449990627.jpg', 'Upload/Imgs/151213/max_11961449990627.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('397', 'Upload/Imgs/151213/mid_98231449990627.jpg', 'Upload/Imgs/151213/mini_98231449990627.jpg', 'Upload/Imgs/151213/max_98231449990627.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('398', 'Upload/Imgs/151213/mid_26291449990627.jpg', 'Upload/Imgs/151213/mini_26291449990627.jpg', 'Upload/Imgs/151213/max_26291449990627.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('399', 'Upload/Imgs/151213/mid_48191449990628.jpg', 'Upload/Imgs/151213/mini_48191449990628.jpg', 'Upload/Imgs/151213/max_48191449990628.jpg', '1', '61');
INSERT INTO `mg_imgs` VALUES ('400', 'Upload/Imgs/151213/mid_90541449991994.jpg', 'Upload/Imgs/151213/mini_90541449991994.jpg', 'Upload/Imgs/151213/max_90541449991994.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('401', 'Upload/Imgs/151213/mid_77511449992005.jpg', 'Upload/Imgs/151213/mini_77511449992005.jpg', 'Upload/Imgs/151213/max_77511449992005.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('402', 'Upload/Imgs/151213/mid_28701449992005.jpg', 'Upload/Imgs/151213/mini_28701449992005.jpg', 'Upload/Imgs/151213/max_28701449992005.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('403', 'Upload/Imgs/151213/mid_43891449992006.jpg', 'Upload/Imgs/151213/mini_43891449992006.jpg', 'Upload/Imgs/151213/max_43891449992006.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('404', 'Upload/Imgs/151213/mid_96161449992006.jpg', 'Upload/Imgs/151213/mini_96161449992006.jpg', 'Upload/Imgs/151213/max_96161449992006.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('405', 'Upload/Imgs/151213/mid_1061449992007.jpg', 'Upload/Imgs/151213/mini_1061449992007.jpg', 'Upload/Imgs/151213/max_1061449992007.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('406', 'Upload/Imgs/151213/mid_91541449992007.jpg', 'Upload/Imgs/151213/mini_91541449992007.jpg', 'Upload/Imgs/151213/max_91541449992007.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('407', 'Upload/Imgs/151213/mid_12381449992007.jpg', 'Upload/Imgs/151213/mini_12381449992007.jpg', 'Upload/Imgs/151213/max_12381449992007.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('408', 'Upload/Imgs/151213/mid_55851449992008.jpg', 'Upload/Imgs/151213/mini_55851449992008.jpg', 'Upload/Imgs/151213/max_55851449992008.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('409', 'Upload/Imgs/151213/mid_37781449992008.jpg', 'Upload/Imgs/151213/mini_37781449992008.jpg', 'Upload/Imgs/151213/max_37781449992008.jpg', '1', '62');
INSERT INTO `mg_imgs` VALUES ('410', 'Upload/Imgs/151213/mid_25021449992226.jpg', 'Upload/Imgs/151213/mini_25021449992226.jpg', 'Upload/Imgs/151213/max_25021449992226.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('411', 'Upload/Imgs/151213/mid_60591449992234.jpg', 'Upload/Imgs/151213/mini_60591449992234.jpg', 'Upload/Imgs/151213/max_60591449992234.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('412', 'Upload/Imgs/151213/mid_21821449992235.jpg', 'Upload/Imgs/151213/mini_21821449992235.jpg', 'Upload/Imgs/151213/max_21821449992235.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('413', 'Upload/Imgs/151213/mid_89961449992235.jpg', 'Upload/Imgs/151213/mini_89961449992235.jpg', 'Upload/Imgs/151213/max_89961449992235.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('414', 'Upload/Imgs/151213/mid_49451449992235.jpg', 'Upload/Imgs/151213/mini_49451449992235.jpg', 'Upload/Imgs/151213/max_49451449992235.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('415', 'Upload/Imgs/151213/mid_55331449992236.jpg', 'Upload/Imgs/151213/mini_55331449992236.jpg', 'Upload/Imgs/151213/max_55331449992236.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('416', 'Upload/Imgs/151213/mid_37401449992236.jpg', 'Upload/Imgs/151213/mini_37401449992236.jpg', 'Upload/Imgs/151213/max_37401449992236.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('417', 'Upload/Imgs/151213/mid_40961449992236.jpg', 'Upload/Imgs/151213/mini_40961449992236.jpg', 'Upload/Imgs/151213/max_40961449992236.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('418', 'Upload/Imgs/151213/mid_63701449992236.jpg', 'Upload/Imgs/151213/mini_63701449992236.jpg', 'Upload/Imgs/151213/max_63701449992236.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('419', 'Upload/Imgs/151213/mid_76991449992237.jpg', 'Upload/Imgs/151213/mini_76991449992237.jpg', 'Upload/Imgs/151213/max_76991449992237.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('420', 'Upload/Imgs/151213/mid_91551449992237.jpg', 'Upload/Imgs/151213/mini_91551449992237.jpg', 'Upload/Imgs/151213/max_91551449992237.jpg', '1', '63');
INSERT INTO `mg_imgs` VALUES ('421', 'Upload/Imgs/151213/mid_54181449992579.jpg', 'Upload/Imgs/151213/mini_54181449992579.jpg', 'Upload/Imgs/151213/max_54181449992579.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('422', 'Upload/Imgs/151213/mid_74771449992580.jpg', 'Upload/Imgs/151213/mini_74771449992580.jpg', 'Upload/Imgs/151213/max_74771449992580.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('423', 'Upload/Imgs/151213/mid_33631449992580.jpg', 'Upload/Imgs/151213/mini_33631449992580.jpg', 'Upload/Imgs/151213/max_33631449992580.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('424', 'Upload/Imgs/151213/mid_61631449992580.jpg', 'Upload/Imgs/151213/mini_61631449992580.jpg', 'Upload/Imgs/151213/max_61631449992580.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('425', 'Upload/Imgs/151213/mid_77901449992581.jpg', 'Upload/Imgs/151213/mini_77901449992581.jpg', 'Upload/Imgs/151213/max_77901449992581.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('426', 'Upload/Imgs/151213/mid_52531449992581.jpg', 'Upload/Imgs/151213/mini_52531449992581.jpg', 'Upload/Imgs/151213/max_52531449992581.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('427', 'Upload/Imgs/151213/mid_38151449992581.jpg', 'Upload/Imgs/151213/mini_38151449992581.jpg', 'Upload/Imgs/151213/max_38151449992581.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('428', 'Upload/Imgs/151213/mid_23061449992581.jpg', 'Upload/Imgs/151213/mini_23061449992581.jpg', 'Upload/Imgs/151213/max_23061449992581.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('429', 'Upload/Imgs/151213/mid_50931449992582.jpg', 'Upload/Imgs/151213/mini_50931449992582.jpg', 'Upload/Imgs/151213/max_50931449992582.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('430', 'Upload/Imgs/151213/mid_34911449992582.jpg', 'Upload/Imgs/151213/mini_34911449992582.jpg', 'Upload/Imgs/151213/max_34911449992582.jpg', '1', '64');
INSERT INTO `mg_imgs` VALUES ('431', 'Upload/Imgs/151213/mid_67721449992823.jpg', 'Upload/Imgs/151213/mini_67721449992823.jpg', 'Upload/Imgs/151213/max_67721449992823.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('432', 'Upload/Imgs/151213/mid_36841449992823.jpg', 'Upload/Imgs/151213/mini_36841449992823.jpg', 'Upload/Imgs/151213/max_36841449992823.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('433', 'Upload/Imgs/151213/mid_20851449992824.jpg', 'Upload/Imgs/151213/mini_20851449992824.jpg', 'Upload/Imgs/151213/max_20851449992824.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('434', 'Upload/Imgs/151213/mid_67711449992824.jpg', 'Upload/Imgs/151213/mini_67711449992824.jpg', 'Upload/Imgs/151213/max_67711449992824.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('435', 'Upload/Imgs/151213/mid_38481449992824.jpg', 'Upload/Imgs/151213/mini_38481449992824.jpg', 'Upload/Imgs/151213/max_38481449992824.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('436', 'Upload/Imgs/151213/mid_79381449992825.jpg', 'Upload/Imgs/151213/mini_79381449992825.jpg', 'Upload/Imgs/151213/max_79381449992825.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('437', 'Upload/Imgs/151213/mid_35641449992825.jpg', 'Upload/Imgs/151213/mini_35641449992825.jpg', 'Upload/Imgs/151213/max_35641449992825.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('438', 'Upload/Imgs/151213/mid_23791449992825.jpg', 'Upload/Imgs/151213/mini_23791449992825.jpg', 'Upload/Imgs/151213/max_23791449992825.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('439', 'Upload/Imgs/151213/mid_11991449992826.jpg', 'Upload/Imgs/151213/mini_11991449992826.jpg', 'Upload/Imgs/151213/max_11991449992826.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('440', 'Upload/Imgs/151213/mid_71491449992826.jpg', 'Upload/Imgs/151213/mini_71491449992826.jpg', 'Upload/Imgs/151213/max_71491449992826.jpg', '1', '65');
INSERT INTO `mg_imgs` VALUES ('441', 'Upload/Imgs/151213/mid_461449993444.jpg', 'Upload/Imgs/151213/mini_461449993444.jpg', 'Upload/Imgs/151213/max_461449993444.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('442', 'Upload/Imgs/151213/mid_38921449993445.jpg', 'Upload/Imgs/151213/mini_38921449993445.jpg', 'Upload/Imgs/151213/max_38921449993445.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('443', 'Upload/Imgs/151213/mid_56381449993445.jpg', 'Upload/Imgs/151213/mini_56381449993445.jpg', 'Upload/Imgs/151213/max_56381449993445.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('444', 'Upload/Imgs/151213/mid_68621449993445.jpg', 'Upload/Imgs/151213/mini_68621449993445.jpg', 'Upload/Imgs/151213/max_68621449993445.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('445', 'Upload/Imgs/151213/mid_5821449993446.jpg', 'Upload/Imgs/151213/mini_5821449993446.jpg', 'Upload/Imgs/151213/max_5821449993446.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('446', 'Upload/Imgs/151213/mid_16691449993446.jpg', 'Upload/Imgs/151213/mini_16691449993446.jpg', 'Upload/Imgs/151213/max_16691449993446.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('447', 'Upload/Imgs/151213/mid_89091449993446.jpg', 'Upload/Imgs/151213/mini_89091449993446.jpg', 'Upload/Imgs/151213/max_89091449993446.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('448', 'Upload/Imgs/151213/mid_91621449993447.jpg', 'Upload/Imgs/151213/mini_91621449993447.jpg', 'Upload/Imgs/151213/max_91621449993447.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('449', 'Upload/Imgs/151213/mid_66501449993447.jpg', 'Upload/Imgs/151213/mini_66501449993447.jpg', 'Upload/Imgs/151213/max_66501449993447.jpg', '1', '66');
INSERT INTO `mg_imgs` VALUES ('450', 'Upload/Imgs/151213/mid_72191449993713.jpg', 'Upload/Imgs/151213/mini_72191449993713.jpg', 'Upload/Imgs/151213/max_72191449993713.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('451', 'Upload/Imgs/151213/mid_19891449993713.jpg', 'Upload/Imgs/151213/mini_19891449993713.jpg', 'Upload/Imgs/151213/max_19891449993713.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('452', 'Upload/Imgs/151213/mid_8561449993713.jpg', 'Upload/Imgs/151213/mini_8561449993713.jpg', 'Upload/Imgs/151213/max_8561449993713.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('453', 'Upload/Imgs/151213/mid_75221449993714.jpg', 'Upload/Imgs/151213/mini_75221449993714.jpg', 'Upload/Imgs/151213/max_75221449993714.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('454', 'Upload/Imgs/151213/mid_11841449993714.jpg', 'Upload/Imgs/151213/mini_11841449993714.jpg', 'Upload/Imgs/151213/max_11841449993714.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('455', 'Upload/Imgs/151213/mid_91341449993715.jpg', 'Upload/Imgs/151213/mini_91341449993715.jpg', 'Upload/Imgs/151213/max_91341449993715.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('456', 'Upload/Imgs/151213/mid_6721449993715.jpg', 'Upload/Imgs/151213/mini_6721449993715.jpg', 'Upload/Imgs/151213/max_6721449993715.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('457', 'Upload/Imgs/151213/mid_50121449993715.jpg', 'Upload/Imgs/151213/mini_50121449993715.jpg', 'Upload/Imgs/151213/max_50121449993715.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('458', 'Upload/Imgs/151213/mid_1921449993716.jpg', 'Upload/Imgs/151213/mini_1921449993716.jpg', 'Upload/Imgs/151213/max_1921449993716.jpg', '1', '67');
INSERT INTO `mg_imgs` VALUES ('459', 'Upload/Imgs/151213/mid_39501449994022.jpg', 'Upload/Imgs/151213/mini_39501449994022.jpg', 'Upload/Imgs/151213/max_39501449994022.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('460', 'Upload/Imgs/151213/mid_17171449994029.jpg', 'Upload/Imgs/151213/mini_17171449994029.jpg', 'Upload/Imgs/151213/max_17171449994029.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('461', 'Upload/Imgs/151213/mid_64381449994029.jpg', 'Upload/Imgs/151213/mini_64381449994029.jpg', 'Upload/Imgs/151213/max_64381449994029.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('462', 'Upload/Imgs/151213/mid_80571449994029.jpg', 'Upload/Imgs/151213/mini_80571449994029.jpg', 'Upload/Imgs/151213/max_80571449994029.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('463', 'Upload/Imgs/151213/mid_71321449994030.jpg', 'Upload/Imgs/151213/mini_71321449994030.jpg', 'Upload/Imgs/151213/max_71321449994030.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('464', 'Upload/Imgs/151213/mid_90111449994030.jpg', 'Upload/Imgs/151213/mini_90111449994030.jpg', 'Upload/Imgs/151213/max_90111449994030.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('465', 'Upload/Imgs/151213/mid_43141449994030.jpg', 'Upload/Imgs/151213/mini_43141449994030.jpg', 'Upload/Imgs/151213/max_43141449994030.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('466', 'Upload/Imgs/151213/mid_32581449994031.jpg', 'Upload/Imgs/151213/mini_32581449994031.jpg', 'Upload/Imgs/151213/max_32581449994031.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('467', 'Upload/Imgs/151213/mid_43981449994031.jpg', 'Upload/Imgs/151213/mini_43981449994031.jpg', 'Upload/Imgs/151213/max_43981449994031.jpg', '1', '68');
INSERT INTO `mg_imgs` VALUES ('468', 'Upload/Imgs/151213/mid_79061449994273.jpg', 'Upload/Imgs/151213/mini_79061449994273.jpg', 'Upload/Imgs/151213/max_79061449994273.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('469', 'Upload/Imgs/151213/mid_83411449994273.jpg', 'Upload/Imgs/151213/mini_83411449994273.jpg', 'Upload/Imgs/151213/max_83411449994273.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('470', 'Upload/Imgs/151213/mid_47761449994274.jpg', 'Upload/Imgs/151213/mini_47761449994274.jpg', 'Upload/Imgs/151213/max_47761449994274.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('471', 'Upload/Imgs/151213/mid_23201449994274.jpg', 'Upload/Imgs/151213/mini_23201449994274.jpg', 'Upload/Imgs/151213/max_23201449994274.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('472', 'Upload/Imgs/151213/mid_79681449994274.jpg', 'Upload/Imgs/151213/mini_79681449994274.jpg', 'Upload/Imgs/151213/max_79681449994274.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('473', 'Upload/Imgs/151213/mid_10841449994275.jpg', 'Upload/Imgs/151213/mini_10841449994275.jpg', 'Upload/Imgs/151213/max_10841449994275.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('474', 'Upload/Imgs/151213/mid_46291449994275.jpg', 'Upload/Imgs/151213/mini_46291449994275.jpg', 'Upload/Imgs/151213/max_46291449994275.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('475', 'Upload/Imgs/151213/mid_65731449994276.jpg', 'Upload/Imgs/151213/mini_65731449994276.jpg', 'Upload/Imgs/151213/max_65731449994276.jpg', '1', '69');
INSERT INTO `mg_imgs` VALUES ('476', 'Upload/Imgs/151213/mid_20291449995031.jpg', 'Upload/Imgs/151213/mini_20291449995031.jpg', 'Upload/Imgs/151213/max_20291449995031.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('477', 'Upload/Imgs/151213/mid_46731449995031.jpg', 'Upload/Imgs/151213/mini_46731449995031.jpg', 'Upload/Imgs/151213/max_46731449995031.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('478', 'Upload/Imgs/151213/mid_341449995032.jpg', 'Upload/Imgs/151213/mini_341449995032.jpg', 'Upload/Imgs/151213/max_341449995032.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('479', 'Upload/Imgs/151213/mid_90221449995032.jpg', 'Upload/Imgs/151213/mini_90221449995032.jpg', 'Upload/Imgs/151213/max_90221449995032.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('480', 'Upload/Imgs/151213/mid_73121449995033.jpg', 'Upload/Imgs/151213/mini_73121449995033.jpg', 'Upload/Imgs/151213/max_73121449995033.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('481', 'Upload/Imgs/151213/mid_10231449995033.jpg', 'Upload/Imgs/151213/mini_10231449995033.jpg', 'Upload/Imgs/151213/max_10231449995033.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('482', 'Upload/Imgs/151213/mid_36341449995033.jpg', 'Upload/Imgs/151213/mini_36341449995033.jpg', 'Upload/Imgs/151213/max_36341449995033.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('483', 'Upload/Imgs/151213/mid_39301449995034.jpg', 'Upload/Imgs/151213/mini_39301449995034.jpg', 'Upload/Imgs/151213/max_39301449995034.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('484', 'Upload/Imgs/151213/mid_7461449995034.jpg', 'Upload/Imgs/151213/mini_7461449995034.jpg', 'Upload/Imgs/151213/max_7461449995034.jpg', '1', '70');
INSERT INTO `mg_imgs` VALUES ('485', 'Upload/Imgs/151213/mid_68261449995248.jpg', 'Upload/Imgs/151213/mini_68261449995248.jpg', 'Upload/Imgs/151213/max_68261449995248.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('486', 'Upload/Imgs/151213/mid_12061449995255.jpg', 'Upload/Imgs/151213/mini_12061449995255.jpg', 'Upload/Imgs/151213/max_12061449995255.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('487', 'Upload/Imgs/151213/mid_43581449995255.jpg', 'Upload/Imgs/151213/mini_43581449995255.jpg', 'Upload/Imgs/151213/max_43581449995255.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('488', 'Upload/Imgs/151213/mid_87511449995255.jpg', 'Upload/Imgs/151213/mini_87511449995255.jpg', 'Upload/Imgs/151213/max_87511449995255.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('489', 'Upload/Imgs/151213/mid_74391449995256.jpg', 'Upload/Imgs/151213/mini_74391449995256.jpg', 'Upload/Imgs/151213/max_74391449995256.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('490', 'Upload/Imgs/151213/mid_80331449995256.jpg', 'Upload/Imgs/151213/mini_80331449995256.jpg', 'Upload/Imgs/151213/max_80331449995256.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('491', 'Upload/Imgs/151213/mid_55411449995256.jpg', 'Upload/Imgs/151213/mini_55411449995256.jpg', 'Upload/Imgs/151213/max_55411449995256.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('492', 'Upload/Imgs/151213/mid_4421449995257.jpg', 'Upload/Imgs/151213/mini_4421449995257.jpg', 'Upload/Imgs/151213/max_4421449995257.jpg', '1', '71');
INSERT INTO `mg_imgs` VALUES ('493', 'Upload/Imgs/151213/mid_76981449995553.jpg', 'Upload/Imgs/151213/mini_76981449995553.jpg', 'Upload/Imgs/151213/max_76981449995553.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('494', 'Upload/Imgs/151213/mid_92161449995559.jpg', 'Upload/Imgs/151213/mini_92161449995559.jpg', 'Upload/Imgs/151213/max_92161449995559.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('495', 'Upload/Imgs/151213/mid_65881449995560.jpg', 'Upload/Imgs/151213/mini_65881449995560.jpg', 'Upload/Imgs/151213/max_65881449995560.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('496', 'Upload/Imgs/151213/mid_38181449995560.jpg', 'Upload/Imgs/151213/mini_38181449995560.jpg', 'Upload/Imgs/151213/max_38181449995560.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('497', 'Upload/Imgs/151213/mid_48861449995560.jpg', 'Upload/Imgs/151213/mini_48861449995560.jpg', 'Upload/Imgs/151213/max_48861449995560.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('498', 'Upload/Imgs/151213/mid_92541449995561.jpg', 'Upload/Imgs/151213/mini_92541449995561.jpg', 'Upload/Imgs/151213/max_92541449995561.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('499', 'Upload/Imgs/151213/mid_66291449995561.jpg', 'Upload/Imgs/151213/mini_66291449995561.jpg', 'Upload/Imgs/151213/max_66291449995561.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('500', 'Upload/Imgs/151213/mid_45481449995561.jpg', 'Upload/Imgs/151213/mini_45481449995561.jpg', 'Upload/Imgs/151213/max_45481449995561.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('501', 'Upload/Imgs/151213/mid_93421449995562.jpg', 'Upload/Imgs/151213/mini_93421449995562.jpg', 'Upload/Imgs/151213/max_93421449995562.jpg', '1', '72');
INSERT INTO `mg_imgs` VALUES ('502', 'Upload/Imgs/151213/mid_6591449995782.jpg', 'Upload/Imgs/151213/mini_6591449995782.jpg', 'Upload/Imgs/151213/max_6591449995782.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('503', 'Upload/Imgs/151213/mid_73001449995783.jpg', 'Upload/Imgs/151213/mini_73001449995783.jpg', 'Upload/Imgs/151213/max_73001449995783.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('504', 'Upload/Imgs/151213/mid_76941449995783.jpg', 'Upload/Imgs/151213/mini_76941449995783.jpg', 'Upload/Imgs/151213/max_76941449995783.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('505', 'Upload/Imgs/151213/mid_91801449995783.jpg', 'Upload/Imgs/151213/mini_91801449995783.jpg', 'Upload/Imgs/151213/max_91801449995783.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('506', 'Upload/Imgs/151213/mid_48531449995784.jpg', 'Upload/Imgs/151213/mini_48531449995784.jpg', 'Upload/Imgs/151213/max_48531449995784.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('507', 'Upload/Imgs/151213/mid_88501449995784.jpg', 'Upload/Imgs/151213/mini_88501449995784.jpg', 'Upload/Imgs/151213/max_88501449995784.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('508', 'Upload/Imgs/151213/mid_49621449995784.jpg', 'Upload/Imgs/151213/mini_49621449995784.jpg', 'Upload/Imgs/151213/max_49621449995784.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('509', 'Upload/Imgs/151213/mid_41271449995785.jpg', 'Upload/Imgs/151213/mini_41271449995785.jpg', 'Upload/Imgs/151213/max_41271449995785.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('510', 'Upload/Imgs/151213/mid_58251449995785.jpg', 'Upload/Imgs/151213/mini_58251449995785.jpg', 'Upload/Imgs/151213/max_58251449995785.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('511', 'Upload/Imgs/151213/mid_41031449995785.jpg', 'Upload/Imgs/151213/mini_41031449995785.jpg', 'Upload/Imgs/151213/max_41031449995785.jpg', '1', '73');
INSERT INTO `mg_imgs` VALUES ('512', 'Upload/Imgs/151213/mid_52561449996027.jpg', 'Upload/Imgs/151213/mini_52561449996027.jpg', 'Upload/Imgs/151213/max_52561449996027.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('513', 'Upload/Imgs/151213/mid_38261449996034.jpg', 'Upload/Imgs/151213/mini_38261449996034.jpg', 'Upload/Imgs/151213/max_38261449996034.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('514', 'Upload/Imgs/151213/mid_95011449996034.jpg', 'Upload/Imgs/151213/mini_95011449996034.jpg', 'Upload/Imgs/151213/max_95011449996034.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('515', 'Upload/Imgs/151213/mid_2141449996035.jpg', 'Upload/Imgs/151213/mini_2141449996035.jpg', 'Upload/Imgs/151213/max_2141449996035.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('516', 'Upload/Imgs/151213/mid_11851449996035.jpg', 'Upload/Imgs/151213/mini_11851449996035.jpg', 'Upload/Imgs/151213/max_11851449996035.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('517', 'Upload/Imgs/151213/mid_30421449996036.jpg', 'Upload/Imgs/151213/mini_30421449996036.jpg', 'Upload/Imgs/151213/max_30421449996036.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('518', 'Upload/Imgs/151213/mid_25101449996036.jpg', 'Upload/Imgs/151213/mini_25101449996036.jpg', 'Upload/Imgs/151213/max_25101449996036.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('519', 'Upload/Imgs/151213/mid_40101449996036.jpg', 'Upload/Imgs/151213/mini_40101449996036.jpg', 'Upload/Imgs/151213/max_40101449996036.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('520', 'Upload/Imgs/151213/mid_25001449996037.jpg', 'Upload/Imgs/151213/mini_25001449996037.jpg', 'Upload/Imgs/151213/max_25001449996037.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('521', 'Upload/Imgs/151213/mid_98591449996037.jpg', 'Upload/Imgs/151213/mini_98591449996037.jpg', 'Upload/Imgs/151213/max_98591449996037.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('522', 'Upload/Imgs/151213/mid_32331449996037.jpg', 'Upload/Imgs/151213/mini_32331449996037.jpg', 'Upload/Imgs/151213/max_32331449996037.jpg', '1', '74');
INSERT INTO `mg_imgs` VALUES ('523', 'Upload/Imgs/151213/mid_63921449996505.jpg', 'Upload/Imgs/151213/mini_63921449996505.jpg', 'Upload/Imgs/151213/max_63921449996505.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('524', 'Upload/Imgs/151213/mid_69961449996505.jpg', 'Upload/Imgs/151213/mini_69961449996505.jpg', 'Upload/Imgs/151213/max_69961449996505.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('525', 'Upload/Imgs/151213/mid_38761449996506.jpg', 'Upload/Imgs/151213/mini_38761449996506.jpg', 'Upload/Imgs/151213/max_38761449996506.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('526', 'Upload/Imgs/151213/mid_21431449996506.jpg', 'Upload/Imgs/151213/mini_21431449996506.jpg', 'Upload/Imgs/151213/max_21431449996506.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('527', 'Upload/Imgs/151213/mid_25331449996506.jpg', 'Upload/Imgs/151213/mini_25331449996506.jpg', 'Upload/Imgs/151213/max_25331449996506.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('528', 'Upload/Imgs/151213/mid_25281449996507.jpg', 'Upload/Imgs/151213/mini_25281449996507.jpg', 'Upload/Imgs/151213/max_25281449996507.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('529', 'Upload/Imgs/151213/mid_99321449996507.jpg', 'Upload/Imgs/151213/mini_99321449996507.jpg', 'Upload/Imgs/151213/max_99321449996507.jpg', '1', '75');
INSERT INTO `mg_imgs` VALUES ('530', 'Upload/Imgs/151230/mid_68101451463714.jpg', 'Upload/Imgs/151230/mini_68101451463714.jpg', 'Upload/Imgs/151230/max_68101451463714.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('531', 'Upload/Imgs/151230/mid_9981451463715.jpg', 'Upload/Imgs/151230/mini_9981451463715.jpg', 'Upload/Imgs/151230/max_9981451463715.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('532', 'Upload/Imgs/151230/mid_8891451463716.jpg', 'Upload/Imgs/151230/mini_8891451463716.jpg', 'Upload/Imgs/151230/max_8891451463716.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('533', 'Upload/Imgs/151230/mid_96571451463716.jpg', 'Upload/Imgs/151230/mini_96571451463716.jpg', 'Upload/Imgs/151230/max_96571451463716.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('534', 'Upload/Imgs/151230/mid_83641451463717.jpg', 'Upload/Imgs/151230/mini_83641451463717.jpg', 'Upload/Imgs/151230/max_83641451463717.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('535', 'Upload/Imgs/151230/mid_2061451463717.jpg', 'Upload/Imgs/151230/mini_2061451463717.jpg', 'Upload/Imgs/151230/max_2061451463717.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('536', 'Upload/Imgs/151230/mid_89641451463718.jpg', 'Upload/Imgs/151230/mini_89641451463718.jpg', 'Upload/Imgs/151230/max_89641451463718.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('537', 'Upload/Imgs/151230/mid_61431451463719.jpg', 'Upload/Imgs/151230/mini_61431451463719.jpg', 'Upload/Imgs/151230/max_61431451463719.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('538', 'Upload/Imgs/151230/mid_81291451463719.jpg', 'Upload/Imgs/151230/mini_81291451463719.jpg', 'Upload/Imgs/151230/max_81291451463719.jpg', '1', '76');
INSERT INTO `mg_imgs` VALUES ('539', 'Upload/Imgs/151230/mid_27301451463720.jpg', 'Upload/Imgs/151230/mini_27301451463720.jpg', 'Upload/Imgs/151230/max_27301451463720.jpg', '1', '76');

-- ----------------------------
-- Table structure for `mg_link`
-- ----------------------------
DROP TABLE IF EXISTS `mg_link`;
CREATE TABLE `mg_link` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lname` char(40) NOT NULL DEFAULT '' COMMENT '链接名称',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `url` char(150) NOT NULL DEFAULT '' COMMENT '地址',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of mg_link
-- ----------------------------
INSERT INTO `mg_link` VALUES ('1', '新浪微博', '1447403204', 'http://weibo.com/u/2874689532/');
INSERT INTO `mg_link` VALUES ('2', '腾讯微博', '1447403218', 'http://t.qq.com/aidehuazhi');
INSERT INTO `mg_link` VALUES ('3', '后盾论坛', '1447501487', 'http://bbs.houdunwang.com');

-- ----------------------------
-- Table structure for `mg_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `mg_logistics`;
CREATE TABLE `mg_logistics` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(45) NOT NULL DEFAULT '' COMMENT '物流公司',
  `address` varchar(60) NOT NULL DEFAULT '' COMMENT '发货地址',
  `tel` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客服电话',
  `cellphone` char(11) NOT NULL DEFAULT '' COMMENT '发货人的手机号码',
  `zipcode` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '发货人邮政编码',
  `logname` char(30) NOT NULL DEFAULT '' COMMENT '发货人的名字',
  `order_oid` int(10) unsigned NOT NULL COMMENT '订单ID',
  `waybill` char(20) NOT NULL DEFAULT '' COMMENT '运单号码',
  PRIMARY KEY (`logid`),
  KEY `fk_logistics_mg_order1_idx` (`order_oid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='物流表';

-- ----------------------------
-- Records of mg_logistics
-- ----------------------------
INSERT INTO `mg_logistics` VALUES ('1', '宅急送', '北京后盾网', '4128407', '13120043885', '204385', '陈鹏', '2', '136234195');
INSERT INTO `mg_logistics` VALUES ('4', '百世汇通', '北京后盾网', '4128407', '15674994498', '204385', '陈鹏', '3', '927814371111');
INSERT INTO `mg_logistics` VALUES ('3', '宅急送', '北京后盾网', '4128407', '13120043885', '204385', '陈鹏', '4', '257882815');
INSERT INTO `mg_logistics` VALUES ('5', '申通', '北京后盾网', '4128407', '15674994498', '204385', '陈鹏', '7', '8868163215589706');
INSERT INTO `mg_logistics` VALUES ('6', '申通', '北京后盾网', '4128407', '15674994498', '123456', '陈鹏', '1', '3824355986212494');
INSERT INTO `mg_logistics` VALUES ('7', '申通', '北京后盾网', '4128407', '15674994498', '123456', '陈鹏', '10', '4551764732125295');

-- ----------------------------
-- Table structure for `mg_node`
-- ----------------------------
DROP TABLE IF EXISTS `mg_node`;
CREATE TABLE `mg_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '应用名称：英文 Module,Controller,Action',
  `title` varchar(50) DEFAULT NULL COMMENT '应用描述：如分类控制器',
  `status` tinyint(1) DEFAULT '0' COMMENT '节点状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '说明',
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL COMMENT '级别：1：模块 2：控制器 3：方法名',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of mg_node
-- ----------------------------
INSERT INTO `mg_node` VALUES ('1', 'Admin', '后台模块', '1', null, '1', '0', '1', '1');
INSERT INTO `mg_node` VALUES ('54', 'CategoryImg', '分类图片管理', '1', null, '48', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('3', 'Goods', '商品管理控制器', '1', null, '1', '1', '2', '1');
INSERT INTO `mg_node` VALUES ('4', 'Order', '订单管理控制器', '1', null, '2', '1', '2', '1');
INSERT INTO `mg_node` VALUES ('5', 'ListCategory', '分类管理列表', '1', null, '3', '3', '2', '1');
INSERT INTO `mg_node` VALUES ('6', 'CategoryImg', '分类图片管理', '1', null, '3', '3', '2', '1');
INSERT INTO `mg_node` VALUES ('7', 'listType', '类型管理列表', '1', null, '2', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('8', 'listBrand', '品牌管理', '1', null, '4', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('9', 'listGoods', '商品管理', '1', null, '5', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('10', 'recycle', '回收站', '1', null, '6', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('12', 'orderList', '订单列表', '1', null, '1', '4', '3', '1');
INSERT INTO `mg_node` VALUES ('13', 'addType', '商品类型添加', '1', null, '7', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('14', 'delType', '商品类型删除', '1', null, '8', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('15', 'listAttr', '商品属性列表', '1', null, '9', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('16', 'addAttr', '添加|修改商品属性', '1', null, '10', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('17', 'delAttr', '删除商品属性', '1', null, '11', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('18', 'addCategory', '顶级分类添加', '1', null, '12', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('19', 'addSon', '添加子分类', '1', null, '13', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('20', 'editCategory', '商品分类编辑', '1', null, '14', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('21', 'delCategory', '删除商品分类[异步]', '1', null, '15', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('22', 'sortCategory', '修改分类排序[异步]', '1', null, '16', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('23', 'showCategory', '修改是否显示分类[异步]', '1', null, '17', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('24', 'listBrand', '品牌列表', '1', null, '18', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('25', 'addBrand', '添加商品品牌[编辑]', '1', null, '19', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('26', 'delBrand', '品牌删除[异步]', '1', null, '20', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('38', 'addGoods', '商品添加', '1', null, '32', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('28', 'editGoods', '商品编辑', '1', null, '22', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('30', 'goodsList', '货品列表', '1', null, '24', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('31', 'goodsListAdd', '货品添加[编辑]', '1', null, '25', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('32', 'goodsListDel', '货品列表删除[异步]', '1', null, '26', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('33', 'imgsList', '图册列表[商品]', '1', null, '27', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('34', 'addImgs', '图册添加[商品]', '1', null, '28', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('35', 'delimgs', '图册删除[异步]', '1', null, '29', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('36', 'addCate', '添加分类图片', '1', null, '30', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('37', 'delCate', '删除分类图片[异步]', '1', null, '31', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('39', 'Rbac', 'RBAC权限管理', '1', null, '4', '1', '2', '1');
INSERT INTO `mg_node` VALUES ('40', 'index', '用户列表', '1', null, '1', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('41', 'Rolelist', '角色列表', '1', null, '2', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('42', 'nodelist', '节点列表', '1', null, '3', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('43', 'editNode', '节点修改', '1', null, '4', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('44', 'delNode', '删除节点', '1', null, '5', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('45', 'addUser', '添加用户', '1', null, '6', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('46', 'editUser', '修改用户角色', '1', null, '7', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('47', 'addRole', '添加角色', '1', null, '9', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('48', 'access', '配置权限', '1', null, '10', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('49', 'addNode', '添加节点', '1', null, '11', '39', '3', '1');
INSERT INTO `mg_node` VALUES ('53', 'addLogistics', '添加物流', '1', null, '2', '4', '3', '1');
INSERT INTO `mg_node` VALUES ('55', 'addCate', '添加分类图片', '1', null, '49', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('56', 'delCate', '删除分类图片【异步】', '1', null, '50', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('57', 'cateImgList', '栏目图片管理', '1', null, '51', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('58', 'twoCateList', '二级栏目图片管理', '1', null, '52', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('59', 'cateImgedit', '添加栏目图片[编辑分类]', '1', null, '53', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('60', 'cateImgShow', '栏目图片管理编辑图片[模板显示]', '1', null, '54', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('61', 'cateImgDel', '栏目图片管理删除[异步方法]', '1', null, '55', '3', '3', '1');
INSERT INTO `mg_node` VALUES ('62', 'Pay', '充值管理', '1', null, '5', '1', '2', '1');
INSERT INTO `mg_node` VALUES ('63', 'index', '充值列表', '1', null, '1', '62', '3', '1');
INSERT INTO `mg_node` VALUES ('64', 'addPay', '余额充值', '1', null, '2', '62', '3', '1');
INSERT INTO `mg_node` VALUES ('65', 'System', '系统管理', '1', null, '6', '1', '2', '1');
INSERT INTO `mg_node` VALUES ('66', 'UserFace', '修改头像', '1', null, '1', '65', '3', '1');
INSERT INTO `mg_node` VALUES ('67', 'editUser', '修改密码', '1', null, '2', '65', '3', '1');
INSERT INTO `mg_node` VALUES ('68', 'systemSet', '网站配置', '1', null, '3', '65', '3', '1');
INSERT INTO `mg_node` VALUES ('69', 'linkList', '友情链接', '1', null, '4', '65', '3', '1');
INSERT INTO `mg_node` VALUES ('70', 'addLink', '添加|编辑友情链接', '1', null, '4', '65', '3', '1');
INSERT INTO `mg_node` VALUES ('71', 'delLink', '删除友情链接[异步]', '1', null, '6', '65', '3', '1');

-- ----------------------------
-- Table structure for `mg_order`
-- ----------------------------
DROP TABLE IF EXISTS `mg_order`;
CREATE TABLE `mg_order` (
  `oid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(60) NOT NULL DEFAULT '' COMMENT '订单号',
  `consignee` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人',
  `address` varchar(60) NOT NULL DEFAULT '' COMMENT '收货地址',
  `mobile` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '手机号',
  `total` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '价格总计',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `plytime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收货时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态:1:未付款 2:待发货'' 3:已发货 4:已完成',
  `paymethod` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '付款方式：1：货到付款 2：余额支付',
  `user_uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_mg_order_mg_user1_idx` (`user_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of mg_order
-- ----------------------------
INSERT INTO `mg_order` VALUES ('1', '20151206172832_1_127.0.0.1_628', '陈鹏', '北京,东城北京后盾网教学教育', '4294967295', '852', '1449394112', '1450236109', '1451463391', '0', '3', '2', '1');
INSERT INTO `mg_order` VALUES ('2', '20151206202406_1_0.0.0.0_6803', '陈鹏', '北京,东城北京后盾网教学教育', '4294967295', '576', '1449404646', '0', '1449726475', '0', '4', '0', '1');
INSERT INTO `mg_order` VALUES ('3', '20151206202841_1_0.0.0.0_9603', '陈鹏', '北京,东城北京后盾网教学教育', '4294967295', '188', '1449404921', '0', '1449576238', '0', '4', '0', '1');
INSERT INTO `mg_order` VALUES ('4', '20151207094254_1_127.0.0.1_3188', '陈鹏', '湖南,长沙湖南商务职业技术学院', '4294967295', '376', '1449452574', '0', '0', '0', '4', '0', '1');
INSERT INTO `mg_order` VALUES ('10', '20151230161414_1_127.0.0.1_1093', '陈鹏', '北京,东城湖南商务职业技术学院', '4294967295', '264', '1451463254', '1451463277', '1451463414', '0', '3', '2', '1');
INSERT INTO `mg_order` VALUES ('6', '20151216002056_1_127.0.0.1_2688', '陈鹏', '北京,东城北京后盾网教学教育', '4294967295', '75', '1450196456', '0', '0', '0', '2', '2', '1');
INSERT INTO `mg_order` VALUES ('7', '20151216100247_1_127.0.0.1_3294', '陈鹏', '北京,东城北京后盾网教学教育', '4294967295', '49', '1450231367', '0', '1451463352', '0', '3', '2', '1');

-- ----------------------------
-- Table structure for `mg_order_list`
-- ----------------------------
DROP TABLE IF EXISTS `mg_order_list`;
CREATE TABLE `mg_order_list` (
  `olid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `subtotal` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '价格小计',
  `glid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '货品id',
  `glnumber` char(30) NOT NULL DEFAULT '' COMMENT '货品货号',
  `goods_gid` int(10) unsigned NOT NULL COMMENT '商品id',
  `order_oid` int(10) unsigned NOT NULL COMMENT '订单id',
  PRIMARY KEY (`olid`),
  KEY `fk_mg_order_list_mg_goods1_idx` (`goods_gid`),
  KEY `fk_mg_order_list_mg_order1_idx` (`order_oid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='订单列表';

-- ----------------------------
-- Records of mg_order_list
-- ----------------------------
INSERT INTO `mg_order_list` VALUES ('5', '2', '376', '8', '20151207094254_1_127.0.0.1_318', '16', '4');
INSERT INTO `mg_order_list` VALUES ('2', '1', '288', '1', '20151206172832_1_127.0.0.1_628', '18', '1');
INSERT INTO `mg_order_list` VALUES ('3', '2', '576', '1', '20151206202406_1_0.0.0.0_6803', '18', '2');
INSERT INTO `mg_order_list` VALUES ('4', '1', '188', '8', '20151206202841_1_0.0.0.0_9603', '16', '3');
INSERT INTO `mg_order_list` VALUES ('11', '2', '176', '124', '9390534982838460', '43', '10');
INSERT INTO `mg_order_list` VALUES ('7', '1', '75', '6', '5174631377246985', '29', '6');
INSERT INTO `mg_order_list` VALUES ('8', '1', '49', '19', '8528106458312805', '21', '7');
INSERT INTO `mg_order_list` VALUES ('12', '1', '88', '121', '1291640769170674', '43', '10');

-- ----------------------------
-- Table structure for `mg_role`
-- ----------------------------
DROP TABLE IF EXISTS `mg_role`;
CREATE TABLE `mg_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of mg_role
-- ----------------------------
INSERT INTO `mg_role` VALUES ('1', '超级管理员', null, '1', '拥有所有权限');
INSERT INTO `mg_role` VALUES ('2', '管理员', null, '1', '拥有部分权限');
INSERT INTO `mg_role` VALUES ('3', '编辑', null, '1', '拥有部分权限');
INSERT INTO `mg_role` VALUES ('4', '测试人员', null, '1', '测试后台数据');

-- ----------------------------
-- Table structure for `mg_site`
-- ----------------------------
DROP TABLE IF EXISTS `mg_site`;
CREATE TABLE `mg_site` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(60) NOT NULL DEFAULT '' COMMENT '收货地址',
  `postalcode` int(6) NOT NULL DEFAULT '0' COMMENT '邮政编码',
  `street` varchar(100) NOT NULL DEFAULT '' COMMENT '街道地址',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `consignee` varchar(45) NOT NULL DEFAULT '' COMMENT '收货人',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认地址 1:默认选择 0：不默认选择',
  `user_uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_mg_site_mg_user1_idx` (`user_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='地址管理';

-- ----------------------------
-- Records of mg_site
-- ----------------------------
INSERT INTO `mg_site` VALUES ('15', '北京,东城', '204385', '湖南商务职业技术学院', '15674994498', '陈鹏', '1', '1');
INSERT INTO `mg_site` VALUES ('7', '北京,东城', '204385', '北京后盾网教学教育', '15674994498', '陈鹏', '0', '1');

-- ----------------------------
-- Table structure for `mg_tag`
-- ----------------------------
DROP TABLE IF EXISTS `mg_tag`;
CREATE TABLE `mg_tag` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(45) NOT NULL DEFAULT '' COMMENT '用户标签',
  `user_uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `fk_mg_tag_mg_user1_idx` (`user_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户标签表';

-- ----------------------------
-- Records of mg_tag
-- ----------------------------
INSERT INTO `mg_tag` VALUES ('28', '爱情', '1');
INSERT INTO `mg_tag` VALUES ('27', '事业', '1');
INSERT INTO `mg_tag` VALUES ('24', '我很爱你', '2');
INSERT INTO `mg_tag` VALUES ('23', '活泼', '2');
INSERT INTO `mg_tag` VALUES ('22', '可爱', '2');

-- ----------------------------
-- Table structure for `mg_user`
-- ----------------------------
DROP TABLE IF EXISTS `mg_user`;
CREATE TABLE `mg_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `mg_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `pay` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '用户余额',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of mg_user
-- ----------------------------
INSERT INTO `mg_user` VALUES ('1', 'admin@qq.com', '8e549b4cb7200e846ff9e31d9c761b9b', '0', '1448344497', '很纯很暧昧777', '1000');
INSERT INTO `mg_user` VALUES ('2', '123456@qq.com', 'f470d6a494311d669bd96b0fd1a16e9f', '0', '1448971283', '很纯很暧昧', '5000');

-- ----------------------------
-- Table structure for `mg_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mg_userinfo`;
CREATE TABLE `mg_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trunname` char(30) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `location` varchar(45) NOT NULL DEFAULT '' COMMENT '所在地',
  `sex` enum('男','女') NOT NULL DEFAULT '男' COMMENT '性别',
  `profession` varchar(45) NOT NULL DEFAULT '' COMMENT '职业',
  `face48x48` varchar(60) NOT NULL DEFAULT '' COMMENT '用户头像48x48',
  `face100x100` varchar(60) NOT NULL DEFAULT '' COMMENT '用户头像100x100',
  `schoolname` varchar(45) NOT NULL DEFAULT '' COMMENT '学校名称',
  `student` varchar(100) NOT NULL DEFAULT '' COMMENT '学生信息',
  `intro` varchar(150) NOT NULL DEFAULT '' COMMENT '自我介绍',
  `user_uid` int(10) unsigned NOT NULL,
  `constellation` char(8) NOT NULL DEFAULT '' COMMENT '星座',
  PRIMARY KEY (`id`),
  KEY `fk_mg_userinfo_mg_user_idx` (`user_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户个人信息表';

-- ----------------------------
-- Records of mg_userinfo
-- ----------------------------
INSERT INTO `mg_userinfo` VALUES ('1', '陈鹏', '陕西,安康', '男', '白领', 'Upload/User/151209/face48x48_62461449665676.jpeg', 'Upload/User/151209/face100x100_62461449665676.jpeg', '湖南商务职业技术学院', '陈鹏', '随便写点什么，让大家了解你吧。', '1', '水瓶座');
INSERT INTO `mg_userinfo` VALUES ('2', '陈鹏', '湖北,恩施', '女', '白领', 'Upload/User/151201/face48x48_37201448979326.jpg', 'Upload/User/151201/face100x100_37201448979326.jpg', '湖南商务', '爱', '明年上王者，试试就试试', '2', '水瓶座');

-- ----------------------------
-- Table structure for `mg_webset`
-- ----------------------------
DROP TABLE IF EXISTS `mg_webset`;
CREATE TABLE `mg_webset` (
  `wid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webname` varchar(45) NOT NULL DEFAULT '' COMMENT '站点名称',
  `webdes` varchar(200) NOT NULL DEFAULT '' COMMENT '站点描述',
  `icp` varchar(45) NOT NULL DEFAULT '' COMMENT 'ICP备案',
  `tel` char(15) NOT NULL DEFAULT '' COMMENT '联系方式',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of mg_webset
-- ----------------------------
INSERT INTO `mg_webset` VALUES ('1', 'MgChen', 'Copyright ©2015 防蘑菇街', '湘ICP备12345678号', '0741-8888888');
INSERT INTO `mg_webset` VALUES ('2', 'asdasd', 'sdasdsadsadsa', 'asdsad', 'sadasd');
