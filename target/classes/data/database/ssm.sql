/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-05-05 07:49:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderName` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `customerId` int(255) DEFAULT NULL COMMENT '客户ID',
  `courierId` int(255) NOT NULL COMMENT '快递员/司机',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `orderStatus` varchar(2) DEFAULT '1' COMMENT '订单状态',
  `serviceTime` datetime DEFAULT NULL COMMENT '送达时间',
  `requireTime` varchar(255) DEFAULT NULL COMMENT '要求时间间隔',
  `orderId` int(255) DEFAULT NULL COMMENT '订单ID',
  `orderDescription` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `orderType` varchar(2) DEFAULT NULL COMMENT '订单类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------
INSERT INTO `t_order_detail` VALUES ('2', 'ceshi', '1', '0', '21212211', 'ldkdkkd', '2016-02-05 00:00:00', null, '0', '2016-02-05 00:00:00', '10', null, 'dljfjaf', null);
INSERT INTO `t_order_detail` VALUES ('3', '最新测试', '1', '0', '18354231330', '1212', '2016-02-09 00:00:00', null, '0', '2016-02-09 00:00:00', '10', null, '测试订单', null);
INSERT INTO `t_order_detail` VALUES ('4', '测试订单', '1', '0', '121212', '', '2016-02-09 00:00:00', null, '0', '2016-02-09 00:00:00', '10', null, '1212312', null);
INSERT INTO `t_order_detail` VALUES ('5', '测试订单', '1', '0', '18354231330', '测试地址', '2016-02-13 00:00:00', null, '0', '2016-02-13 00:00:00', '10', null, '测试内容', null);
INSERT INTO `t_order_detail` VALUES ('6', 'æµè¯ä¸­æ', '1', '0', '11111', 'å¤é¿', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, 'å®å', null);
INSERT INTO `t_order_detail` VALUES ('7', 'æµè¯', '1', '0', '1212', 'æµè¯', '2016-03-08 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '', null);
INSERT INTO `t_order_detail` VALUES ('8', 'æµè¯', '1', '0', '', 'æµè¯', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, 'ä¼æ¯', null);
INSERT INTO `t_order_detail` VALUES ('9', 'æµè¯', '1', '0', '', 'æµè¯', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, 'æµè¯', null);
INSERT INTO `t_order_detail` VALUES ('10', 'è®¢å', '1', '0', '', 'è®¢å', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, 'è®¢å', null);
INSERT INTO `t_order_detail` VALUES ('11', 'æµè¯è®¢å', '1', '0', '', 'æé½å¸', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, 'çä¸', null);
INSERT INTO `t_order_detail` VALUES ('12', '擦擦擦', '1', '0', '', '擦擦擦', '2016-03-08 00:00:00', null, '0', '2016-03-08 00:00:00', '10', null, '擦擦擦', null);
INSERT INTO `t_order_detail` VALUES ('13', '我是12121发单', '1', '0', '13213213112', '青岛', '2016-03-27 00:00:00', null, '0', '2016-03-27 00:00:00', '10', null, '外卖', null);
INSERT INTO `t_order_detail` VALUES ('14', '测试123', '1', '0', '12312312312', '2565652', '2016-03-27 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '6523', null);
INSERT INTO `t_order_detail` VALUES ('15', null, '0', '3', null, null, null, null, '1', '2016-03-28 00:00:00', null, '6', null, null);
INSERT INTO `t_order_detail` VALUES ('16', 'mq测试', '1', '0', '123123', '123123', '2016-03-29 00:00:00', null, '0', '2016-03-29 00:00:00', '10', '0', '', null);
INSERT INTO `t_order_detail` VALUES ('17', 'mq消息', '1', '0', '123123', '', '2016-03-29 00:00:00', null, '0', '2016-03-29 00:00:00', '10', '0', '', null);
INSERT INTO `t_order_detail` VALUES ('18', 'mq', '1', '0', '18354231330', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123', null);
INSERT INTO `t_order_detail` VALUES ('19', 'mq测试1', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123', null);
INSERT INTO `t_order_detail` VALUES ('20', '12', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123', null);
INSERT INTO `t_order_detail` VALUES ('21', '543', '1', '0', '34534', '345', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '345', null);
INSERT INTO `t_order_detail` VALUES ('22', '给对方', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123', null);
INSERT INTO `t_order_detail` VALUES ('23', 'rer', '1', '0', '123123', '123123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123123', null);
INSERT INTO `t_order_detail` VALUES ('24', '不不不', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '12312', null);
INSERT INTO `t_order_detail` VALUES ('25', '急急急 ', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', '0', '123', null);

-- ----------------------------
-- Table structure for `t_order_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_logistics`;
CREATE TABLE `t_order_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderName` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `customerId` int(255) DEFAULT NULL COMMENT '客户ID',
  `courierId` int(255) NOT NULL COMMENT '快递员/司机',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `orderStatus` varchar(2) DEFAULT '1' COMMENT '订单状态',
  `serviceTime` datetime DEFAULT NULL COMMENT '送达时间',
  `requireTime` varchar(255) DEFAULT NULL COMMENT '要求时间间隔',
  `orderId` int(255) DEFAULT NULL COMMENT '订单ID',
  `orderDescription` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `orderType` varchar(2) DEFAULT NULL COMMENT '订单类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_logistics
-- ----------------------------
INSERT INTO `t_order_logistics` VALUES ('2', '232323', '1', '0', '2323', '2323', '2016-02-05 00:00:00', null, '2', '2016-02-09 00:00:00', '10', null, '232323', null);
INSERT INTO `t_order_logistics` VALUES ('3', 'ceshi', '1', '0', '21212211', 'ldkdkkd', '2016-02-05 00:00:00', null, '2', '2016-02-09 00:00:00', '10', null, 'dljfjaf', null);
INSERT INTO `t_order_logistics` VALUES ('4', '最新测试', '1', '3', '18354231330', '12121', '2016-02-09 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '测试订单', null);
INSERT INTO `t_order_logistics` VALUES ('5', '测试订单', '1', '0', '121212', '', '2016-02-09 00:00:00', null, '1', '2016-02-09 00:00:00', '10', null, '1212312', null);
INSERT INTO `t_order_logistics` VALUES ('6', '测试订单', '1', '3', '18354231330', '测试地址', '2016-02-13 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '测试内容', null);
INSERT INTO `t_order_logistics` VALUES ('7', 'æµè¯ä¸­æ', '1', '0', '11111', 'å¤é¿', '2016-03-08 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, 'å®å', null);
INSERT INTO `t_order_logistics` VALUES ('15', '测试123', '1', '0', '12312312312', '2565652', '2016-03-27 00:00:00', null, '0', '2016-03-27 00:00:00', '10', null, '6523', null);
INSERT INTO `t_order_logistics` VALUES ('13', '擦擦擦', '1', '3', '', '擦擦擦', '2016-03-08 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '擦擦擦', null);
INSERT INTO `t_order_logistics` VALUES ('14', '我是12121发单', '1', '0', '13213213112', '青岛', '2016-03-27 00:00:00', null, '1', '2016-03-28 00:00:00', '10', null, '外卖', null);
INSERT INTO `t_order_logistics` VALUES ('16', 'mq测试', '1', '0', '123123', '123123', '2016-03-29 00:00:00', null, '0', '2016-03-29 00:00:00', '10', null, '', null);
INSERT INTO `t_order_logistics` VALUES ('17', 'mq消息', '1', '0', '123123', '', '2016-03-29 00:00:00', null, '0', '2016-03-29 00:00:00', '10', null, '', null);
INSERT INTO `t_order_logistics` VALUES ('18', 'mq', '1', '0', '18354231330', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123', null);
INSERT INTO `t_order_logistics` VALUES ('19', 'mq测试1', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123', null);
INSERT INTO `t_order_logistics` VALUES ('20', '12', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123', null);
INSERT INTO `t_order_logistics` VALUES ('21', '543', '1', '0', '34534', '345', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '345', null);
INSERT INTO `t_order_logistics` VALUES ('22', '给对方', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123', null);
INSERT INTO `t_order_logistics` VALUES ('23', 'rer', '1', '0', '123123', '123123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123123', null);
INSERT INTO `t_order_logistics` VALUES ('24', '不不不', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '12312', null);
INSERT INTO `t_order_logistics` VALUES ('25', '急急急 ', '1', '0', '123', '123', '2016-05-02 00:00:00', null, '0', '2016-05-02 00:00:00', '10', null, '123', null);

-- ----------------------------
-- Table structure for `t_role_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_info`;
CREATE TABLE `t_role_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `roleName` varchar(255) NOT NULL COMMENT '角色名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `roleStatus` varchar(2) DEFAULT '1' COMMENT '角色状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_info
-- ----------------------------
INSERT INTO `t_role_info` VALUES ('1', '管理员', null, null, null, '1');
INSERT INTO `t_role_info` VALUES ('2', '普通用户', null, null, null, '1');
INSERT INTO `t_role_info` VALUES ('3', '司机', null, null, null, '1');
INSERT INTO `t_role_info` VALUES ('4', '酒店', null, null, null, '1');

-- ----------------------------
-- Table structure for `t_sys_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionary`;
CREATE TABLE `t_sys_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键字典id',
  `name` varchar(255) DEFAULT NULL COMMENT '字典名称',
  `value` int(11) DEFAULT NULL COMMENT '字典值',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `parentId` int(11) DEFAULT NULL COMMENT '父节点',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_info`;
CREATE TABLE `t_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardID` varchar(255) DEFAULT NULL COMMENT '身份证',
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `userStatus` varchar(2) DEFAULT '1' COMMENT '用户状态',
  `roleId` int(11) DEFAULT NULL COMMENT '用户类型',
  `userMoney` varchar(255) DEFAULT NULL COMMENT '账户余额',
  `makeMoney` varchar(255) DEFAULT NULL COMMENT '赚得的钱',
  `consumption` varchar(255) DEFAULT NULL COMMENT '消费款',
  `drivingLicenceImage` varchar(255) DEFAULT NULL COMMENT '驾驶证照片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_info
-- ----------------------------
INSERT INTO `t_user_info` VALUES ('1', null, '刘晓文', 'e10adc3949ba59abbe56e057f20f883e', '26', null, null, null, null, '1', '1', null, null, null, null);
INSERT INTO `t_user_info` VALUES ('2', '1212', '修改后的用户名', 'e10adc3949ba59abbe56e057f20f883e', '0', '1212', '更新地址', null, null, null, '2', null, null, null, null);
INSERT INTO `t_user_info` VALUES ('3', '1212', '12121', 'e10adc3949ba59abbe56e057f20f883e', '12', '121', '12', null, null, '1', '2', null, null, null, null);
INSERT INTO `t_user_info` VALUES ('4', '37132319980000', '刘晓文测试', 'e10adc3949ba59abbe56e057f20f883e', '27', '18354231331', '111', null, null, '1', '2', null, null, null, null);
INSERT INTO `t_user_info` VALUES ('5', '12121212', 'woshi', '4297f44b13955235245b2497399d7a93', '12', '121321312', 'ldjslk', null, null, '1', '2', null, null, null, null);
INSERT INTO `t_user_info` VALUES ('6', '1212', '121212', '63ee451939ed580ef3c4b6f0109d1fd0', '12', '11231321', '1313', null, null, '1', '2', null, null, null, null);

-- ----------------------------
-- Table structure for `t_user_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_type`;
CREATE TABLE `t_user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeName` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `userTypeStatus` varchar(2) DEFAULT '1' COMMENT '用户状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_type
-- ----------------------------
INSERT INTO `t_user_type` VALUES ('1', '刘晓文', null, null, null, '1');
