/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : db_healthdatamana

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2015-02-11 17:23:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `userName` varchar(255) DEFAULT NULL,
  `userPw` varchar(255) DEFAULT NULL,
  `userType` int(11) unsigned zerofill DEFAULT NULL COMMENT '管理员类型 ：0普通管理员  1 超级管理员',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin', '00000000001');
INSERT INTO `t_admin` VALUES ('2', 'f', 'f', '00000000000');

-- ----------------------------
-- Table structure for `t_chengji`
-- ----------------------------
DROP TABLE IF EXISTS `t_chengji`;
CREATE TABLE `t_chengji` (
  `id` int(11) NOT NULL,
  `stuId` int(11) NOT NULL COMMENT '学生Id',
  `kecheng` varchar(50) DEFAULT NULL COMMENT '课程名',
  `chengji` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chengji
-- ----------------------------
INSERT INTO `t_chengji` VALUES ('5', '1', 'xueya', '85', 'no');
INSERT INTO `t_chengji` VALUES ('6', '1', 'xueya', '80', 'no');
INSERT INTO `t_chengji` VALUES ('8', '1', 'xueya', '140', 'no');
INSERT INTO `t_chengji` VALUES ('9', '1', 'xueya', '110', 'no');
INSERT INTO `t_chengji` VALUES ('10', '1', 'xueya', '120', 'no');
INSERT INTO `t_chengji` VALUES ('11', '1', 'xueya', '80', 'no');
INSERT INTO `t_chengji` VALUES ('12', '1', 'xueya', '120', 'no');
INSERT INTO `t_chengji` VALUES ('13', '1', 'xueya', '105', 'no');

-- ----------------------------
-- Table structure for `t_family`
-- ----------------------------
DROP TABLE IF EXISTS `t_family`;
CREATE TABLE `t_family` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `guanxi` varchar(50) DEFAULT NULL COMMENT '成员关系',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `work` varchar(50) DEFAULT NULL COMMENT '工作',
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_family
-- ----------------------------
INSERT INTO `t_family` VALUES ('1', '高爸爸', '父亲88', '58', '务农', '备注');

-- ----------------------------
-- Table structure for `t_jiangli`
-- ----------------------------
DROP TABLE IF EXISTS `t_jiangli`;
CREATE TABLE `t_jiangli` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL COMMENT '奖励名称',
  `content` varchar(8000) DEFAULT NULL COMMENT '奖励详情',
  `stu_id` int(11) DEFAULT NULL COMMENT '学生id',
  `shijian` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jiangli
-- ----------------------------
INSERT INTO `t_jiangli` VALUES ('2', '三好学生', '新年中荣获三好学生', '2', '2015.1.1');
INSERT INTO `t_jiangli` VALUES ('3', '糖尿病111', '糖尿病详情详情', '1', '2014.8.1');
INSERT INTO `t_jiangli` VALUES ('4', '奖学金', '获得奖学金', '2', '2015.1.1');
INSERT INTO `t_jiangli` VALUES ('5', '感冒发烧', '感冒发烧详情', '1', '2014.8.30');

-- ----------------------------
-- Table structure for `t_jiaowu`
-- ----------------------------
DROP TABLE IF EXISTS `t_jiaowu`;
CREATE TABLE `t_jiaowu` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(66) DEFAULT NULL,
  `gonggao_content` longtext,
  `gonggao_data` varchar(50) DEFAULT NULL,
  `gonggao_fabuzhe` tinytext,
  `gonggao_del` varchar(50) DEFAULT NULL,
  `gonggao_one1` varchar(50) DEFAULT NULL,
  `gonggao_one2` varchar(50) DEFAULT NULL,
  `gonggao_one3` longtext,
  `gonggao_one4` varchar(50) DEFAULT NULL,
  `gonggao_one5` datetime DEFAULT NULL,
  `gonggao_one6` datetime DEFAULT NULL,
  `gonggao_one7` int(11) DEFAULT NULL,
  `gonggao_one8` int(11) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jiaowu
-- ----------------------------
INSERT INTO `t_jiaowu` VALUES ('4', '教务信息添加', '教务信息添加教务信息添加教务信息添加教务信息添加教务信息添加教务信息添加教务信息添加教务信息添加', '2015-2-5 14:50:56', null, null, 'gonggao', null, null, null, null, null, null, null);
INSERT INTO `t_jiaowu` VALUES ('5', '最新的教务信息信息', '最新的教务信息信息最新的教务信息信息最新的教务信息信息', '2015-2-5 15:31:46', null, null, 'gonggao', null, null, null, null, null, null, null);
INSERT INTO `t_jiaowu` VALUES ('7', '1型糖尿病', '<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\">糖尿病的诊断一般不难，空腹血糖大于或等于7.0毫摩尔/升，和/或餐后两小时血糖大于或等于11.1毫摩尔/升即可确诊。诊断糖尿病后要进行分型：</div>\r\n<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\"><b>1．1型糖尿病</b></div>\r\n<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\">发病年龄轻，大多&lt;30岁，起病突然，多饮多尿多食消瘦症状明显，血糖水平高，不少患者以酮症<a href=\"http://baike.baidu.com/subview/485821/485821.htm\" target=\"_blank\" style=\"color: rgb(19,110,194); text-decoration: none\">酸中毒</a>为首发症状，血清胰岛素和C肽水平低下，ICA、IAA或GAD抗体可呈阳性。单用口服药无效，需用胰岛素治疗。</div>', '2015-2-11 11:33:03', null, null, 'tangniaobing', null, null, null, null, null, null, null);
INSERT INTO `t_jiaowu` VALUES ('8', '2．2型糖尿病', '<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\"><b>2．2型糖尿病1111</b></div>\r\n<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\">常见于中老年人，肥胖者发病率高，常可伴有<a target=\"_blank\" style=\"color: rgb(19,110,194); text-decoration: none\" href=\"http://baike.baidu.com/subview/6632/6632.htm\">高血压</a>，<a target=\"_blank\" style=\"color: rgb(19,110,194); text-decoration: none\" href=\"http://baike.baidu.com/subview/2832637/2832637.htm\">血脂异常</a>、<a target=\"_blank\" style=\"color: rgb(19,110,194); text-decoration: none\" href=\"http://baike.baidu.com/subview/84242/84242.htm\">动脉硬化</a>等疾病。起病隐袭，早期无任何症状，或仅有轻度乏力、口渴，血糖增高不明显者需做糖耐量试验才能确诊。血清胰岛素水平早期正常或增高，晚期低下。</div>', '2015-2-11 11:35:51', null, null, 'tangniaobing', null, null, null, null, null, null, null);
INSERT INTO `t_jiaowu` VALUES ('9', '口服药物治疗11', '<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\"><b>1．口服药物治疗</b></div>\r\n<div class=\"para\" style=\"text-transform: none; background-color: rgb(255,255,255); text-indent: 2em; margin: 15px 0px 5px; font: 14px/24px arial, 宋体, sans-serif; white-space: normal; letter-spacing: normal; color: rgb(51,51,51); word-spacing: 0px; -webkit-text-stroke-width: 0px\"><b>（1）磺脲类药物<span class=\"Apple-converted-space\">&nbsp;</span></b>2型DM患者经饮食控制，运动，降低体重等治疗后，疗效尚不满意者均可用磺脲类药物。因降糖机制主要是刺激胰岛素分泌，所以对有一定胰岛功能者疗效较好。对一些发病年龄较轻，体形不胖的糖尿病患者在早期也有一定疗效。但对肥胖者使用磺脲类药物时，要特别注意饮食控制，使体重逐渐下降，与双胍类或&alpha;-葡萄糖苷酶抑制剂降糖药联用较好。下列情况属禁忌证：一是严重肝、肾功能不全；二是合并严重感染，创伤及大手术期间，临时改用胰岛素治疗；三是糖尿病酮症、酮症酸中毒期间，临时改用胰岛素治疗；四是糖尿病孕妇，妊娠高血糖对胎儿有致畸形作用，早产、死产发生率高，故应严格控制血糖，应把空腹血糖控制在105毫克/分升（5.8毫摩尔/升）以下，餐后2小时血糖控制在120毫克/分升（6.7毫摩尔/升）以下，但控制血糖不宜用口服降糖药；五是对磺脲类药物过敏或出现明显不良反应。</div>', '2015-2-11 16:56:40', null, null, 'tangniaobing', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `ruxueshijian` varchar(50) DEFAULT NULL,
  `loginname` varchar(255) DEFAULT NULL,
  `loginpw` varchar(255) DEFAULT NULL,
  `tea_id` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `zhunkaozheng` varchar(50) DEFAULT NULL,
  `xibie` varchar(50) DEFAULT NULL,
  `nianji` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 's001', '吴刚', '男', '35', '2015-02-11', 'user1', '111111', '0', 'no', '100 - 120', '100', '地址地址', '15995711111');
INSERT INTO `t_user` VALUES ('2', 's002', '高哥', '男', '12', '2015-02-11', '111111', '111111', '0', 'no', '33333', '111111', '江苏省南京市', '15995711111');
INSERT INTO `t_user` VALUES ('3', 's003', '高哥', '男', '33', '2015-02-11', '111111', '111111', '0', 'no', '3333333', '222222', '江苏省南京市', '15995711111');
INSERT INTO `t_user` VALUES ('4', 's006', '牛哥', '男', '22', '2015-02-11', '111111', '111111', '0', 'no', '555555', '55555', '江苏省苏州市', '15995711111');
INSERT INTO `t_user` VALUES ('6', 's009', '学生名11', '男', '22', '2014-04-20', 's009', '111111', '0', 'yes', null, null, null, null);
INSERT INTO `t_user` VALUES ('7', 'xuehao1', '牛哥', '男', '25', '2015-02-12', '111111', '111111', '0', 'yes', '777777', '77777', '计算机系', '大四');
INSERT INTO `t_user` VALUES ('8', 'user2', '高哥', '男', '30', '2015-02-11', 'user2', '111111', '0', 'no', '100', '100', '江苏省南京市', '15995711111');
INSERT INTO `t_user` VALUES ('9', 'user3', '文之秀毕业设计', '男', '30', '2015-02-11', 'user3', '111111', '0', 'no', '100', '100', '江苏省南京', '1212121212');
