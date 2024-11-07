/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoyiqingfangkong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoyiqingfangkong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoyiqingfangkong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dakajilu` */

DROP TABLE IF EXISTS `dakajilu`;

CREATE TABLE `dakajilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '打卡学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `dakajilu_tiwen` decimal(10,4) DEFAULT NULL COMMENT '体温',
  `dakajilu_didian` varchar(200) DEFAULT NULL COMMENT '打卡地点',
  `quezhen_types` int(200) DEFAULT NULL COMMENT '一月内是否接触过确诊病例',
  `yishi_types` int(200) DEFAULT NULL COMMENT '一月内是否接触过疑似病例',
  `gaofengxian_types` int(200) DEFAULT NULL COMMENT '一月内是否去过中高风险地区',
  `shifou_types` int(200) DEFAULT NULL COMMENT '以上内容是否属实',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='打卡记录';

/*Data for the table `dakajilu` */

insert  into `dakajilu`(`id`,`yonghu_id`,`insert_time`,`dakajilu_tiwen`,`dakajilu_didian`,`quezhen_types`,`yishi_types`,`gaofengxian_types`,`shifou_types`,`create_time`) values (2,1,'2021-05-03 11:48:15','11.1100',' 打卡地点',2,2,2,1,'2021-05-03 11:48:15');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-21 17:16:26'),(2,'sex_types','性别',2,'女',NULL,'2021-04-21 17:16:26'),(3,'tongxingzheng_types','通行状态',1,'出校',NULL,'2021-04-21 17:16:26'),(4,'tongxingzheng_types','通行状态',2,'入校',NULL,'2021-04-21 17:16:26'),(5,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-21 17:16:26'),(6,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-21 17:16:26'),(7,'quezhen_types','一月内是否接触过确诊病例',1,'是',NULL,'2021-04-21 17:16:26'),(8,'quezhen_types','一月内是否接触过确诊病例',2,'否',NULL,'2021-04-21 17:16:26'),(9,'yishi_types','一月内是否接触过疑似病例',1,'是',NULL,'2021-04-21 17:16:26'),(10,'yishi_types','一月内是否接触过疑似病例',2,'否',NULL,'2021-04-21 17:16:26'),(11,'gaofengxian_types','一月内是否去过中高风险地区',1,'是',NULL,'2021-04-21 17:16:26'),(12,'gaofengxian_types','一月内是否去过中高风险地区',2,'否',NULL,'2021-04-21 17:16:26'),(13,'shifou_types','以上内容是否属实',1,'属实',NULL,'2021-04-21 17:16:26'),(14,'shifou_types','以上内容是否属实',2,'不属实',NULL,'2021-04-21 17:16:26'),(15,'shenhe_types','审核状态',1,'已通过',NULL,'2021-04-21 17:16:26'),(16,'shenhe_types','审核状态',2,'未通过',NULL,'2021-04-21 17:16:26');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,'410882200011121111','17789955641','http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618992346529.jpg','2021-04-21 16:05:47'),(2,'444','123456','教师2',1,'410882200011121112','17789955642','http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618992363681.jpg','2021-04-21 16:06:04');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言信息';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'留言1','admin','2021-04-21 16:38:47','回复1','admin','2021-04-21 16:38:57'),(8,'1111','admin','2021-04-21 20:03:48','3333333','111','2021-04-21 20:23:44');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618994198078.jpg','2021-04-21 16:36:41','公告详情1\r\n','2021-04-21 16:36:41'),(2,'公告名称2',2,'http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618994211592.jpg','2021-04-21 16:36:53','公告详情2\r\n','2021-04-21 16:36:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zdptysj7iq2aldqc1izfos174lb1pn0z','2021-04-21 15:15:11','2021-05-03 15:14:41'),(2,1,'111','yonghu','用户','mhqaygvhvj1x9cccwq5nllisqzvxb8da','2021-04-21 20:04:16','2021-05-03 15:21:39'),(3,2,'222','yonghu','用户','i3y258mn12qicd8isefamy643clcdeu5','2021-05-03 11:34:22','2021-05-03 12:36:06'),(4,1,'333','jiaoshi','教师','s2vj15uckbbmczu3l0q7dxhqhce9aoe7','2021-05-03 11:41:53','2021-05-03 15:15:17'),(5,2,'444','jiaoshi','教师','tb84yisbfj4ue3nwgx44cmhqdxoo2r95','2021-05-03 11:48:47','2021-05-03 12:48:48');

/*Table structure for table `tongxingzheng` */

DROP TABLE IF EXISTS `tongxingzheng`;

CREATE TABLE `tongxingzheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生姓名',
  `tongxingzheng_quyu` varchar(200) DEFAULT NULL COMMENT '通行区域 Search111',
  `tongxingzheng_types` int(200) DEFAULT NULL COMMENT '通行状态 Search111',
  `tongxingzheng_time` timestamp NULL DEFAULT NULL COMMENT '时间 Search111',
  `youxigonglue_content` text COMMENT '备注',
  `shenhe_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `zhuangtai` int(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='通行证';

/*Data for the table `tongxingzheng` */

insert  into `tongxingzheng`(`id`,`yonghu_id`,`tongxingzheng_quyu`,`tongxingzheng_types`,`tongxingzheng_time`,`youxigonglue_content`,`shenhe_types`,`create_time`,`zhuangtai`) values (29,1,'111111',2,'2021-04-29 00:00:00','123\r\n',1,'2021-05-03 11:48:33',2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `yonghu_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `yonghu_banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `yonghu_nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_xuegonghao`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_xueyuan`,`yonghu_zhuanye`,`yonghu_banji`,`yonghu_nianji`,`create_time`) values (1,'学工号1','111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618992379105.jpg','学院1','专业1','班级1','年级1','2021-04-21 16:06:23'),(2,'学工号2','222','123456','用户2',1,'410882200011064872','17789944562','http://localhost:8080/gaoxiaoyiqingfangkong/file/download?fileName=1618992396910.jpg','学院2','专业2','班级2','年级2','2021-04-21 16:06:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
