/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chuangyejingsai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuangyejingsai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuangyejingsai`;

/*Table structure for table `baoming` */

DROP TABLE IF EXISTS `baoming`;

CREATE TABLE `baoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bianhao` varchar(255) DEFAULT NULL COMMENT '竞赛编号 Search111',
  `chuangyexiangmu_id` int(11) DEFAULT NULL COMMENT '竞赛名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请学生',
  `baoming_phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `baoming_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `baoming_pingfen` int(11) DEFAULT NULL COMMENT '评分',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='报名';

/*Data for the table `baoming` */

insert  into `baoming`(`id`,`bianhao`,`chuangyexiangmu_id`,`yonghu_id`,`baoming_phone`,`insert_time`,`jiaoshi_id`,`baoming_types`,`baoming_pingfen`,`create_time`) values (18,'1617454228559',2,1,'12312312312','2021-04-03 20:50:29',2,2,-100,'2021-04-03 20:50:29'),(19,'1617454229803',1,1,'12312312312','2021-04-03 20:50:30',2,1,123,'2021-04-03 20:50:30'),(20,'1617454281918',3,1,'12312312312','2021-04-03 20:51:22',1,2,-100,'2021-04-03 20:51:22');

/*Table structure for table `chuangyeanli` */

DROP TABLE IF EXISTS `chuangyeanli`;

CREATE TABLE `chuangyeanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangyeanli_name` varchar(200) DEFAULT NULL COMMENT '案例名称  Search111 ',
  `leix_types` int(11) DEFAULT NULL COMMENT '项目分类名称  Search111 ',
  `chuangyeanli_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `chuangyeanli_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `chuangyeanli_content` text COMMENT '案例详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='创业案例';

/*Data for the table `chuangyeanli` */

insert  into `chuangyeanli`(`id`,`chuangyeanli_name`,`leix_types`,`chuangyeanli_photo`,`chuangyeanli_video`,`chuangyeanli_content`,`create_time`) values (1,'案例名称1',1,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617430898844.jpg','http://localhost:8080/chuangyejingsai/file/download?fileName=1617449174230.mp4','案例详情1\r\n','2021-04-03 14:02:36'),(2,'案例名称2',2,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617448711710.jpg','http://localhost:8080/chuangyejingsai/file/download?fileName=1617448716953.mp4','案例详情2\r\n','2021-04-03 19:18:55'),(3,'123',4,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617449386908.jpg','http://localhost:8080/chuangyejingsai/file/download?fileName=1617449390908.mp4','案例详情111\r\n','2021-04-03 19:29:54');

/*Table structure for table `chuangyeanli_collection` */

DROP TABLE IF EXISTS `chuangyeanli_collection`;

CREATE TABLE `chuangyeanli_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangyeanli_id` int(11) DEFAULT NULL COMMENT '案例id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='案例收藏';

/*Data for the table `chuangyeanli_collection` */

insert  into `chuangyeanli_collection`(`id`,`chuangyeanli_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-03 14:42:51','2021-04-03 14:42:51');

/*Table structure for table `chuangyexiangmu` */

DROP TABLE IF EXISTS `chuangyexiangmu`;

CREATE TABLE `chuangyexiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangyexiangmu_name` varchar(255) DEFAULT NULL COMMENT '项目标题 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '发布教师',
  `chuangyexiangmu_photo` varchar(255) DEFAULT NULL COMMENT '样本图片',
  `leix_types` int(11) DEFAULT NULL COMMENT '项目分类名称 Search111',
  `chuangyexiangmu_content` text COMMENT '项目具体内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='创业项目';

/*Data for the table `chuangyexiangmu` */

insert  into `chuangyexiangmu`(`id`,`chuangyexiangmu_name`,`jiaoshi_id`,`chuangyexiangmu_photo`,`leix_types`,`chuangyexiangmu_content`,`create_time`) values (1,'项目标题1',2,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617430915775.png',2,'项目具体内容\r\n','2021-04-03 14:03:12'),(2,'项目标题2',2,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617449297612.jpg',1,'项目具体内容2\r\n','2021-04-03 19:28:23'),(3,'项目标题3',1,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617453996140.jpg',1,'项目具体内容3\r\n','2021-04-03 20:46:53');

/*Table structure for table `chuangyexiangmu_collection` */

DROP TABLE IF EXISTS `chuangyexiangmu_collection`;

CREATE TABLE `chuangyexiangmu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangyexiangmu_id` int(11) DEFAULT NULL COMMENT '项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='项目收藏';

/*Data for the table `chuangyexiangmu_collection` */

insert  into `chuangyexiangmu_collection`(`id`,`chuangyexiangmu_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-03 19:30:28','2021-04-03 19:30:28');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/chuangyejingsai/upload/1617430937667.jpg'),(2,'picture2','http://localhost:8080/chuangyejingsai/upload/1617430943936.jpg'),(3,'picture3','http://localhost:8080/chuangyejingsai/upload/1617430949537.jpg'),(6,'homepage','http://localhost:8080/chuangyejingsai/upload/1617430955307.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-03 11:20:28'),(2,'sex_types','性别',2,'女',NULL,'2021-04-03 11:20:28'),(3,'baoming_types','审核结果',1,'已通过',NULL,'2021-04-03 11:20:28'),(4,'baoming_types','审核结果',2,'未通过',NULL,'2021-04-03 11:20:28'),(5,'leix_types','项目分类名称',1,'分类1',NULL,'2021-04-03 11:20:28'),(6,'leix_types','项目分类名称',2,'分类2',NULL,'2021-04-03 11:20:28'),(7,'leix_types','项目分类名称',3,'分类3',NULL,'2021-04-03 11:20:28'),(8,'shifou_types','是否同意',1,'同意',NULL,'2021-04-03 11:20:28'),(9,'shifou_types','是否同意',2,'拒绝',NULL,'2021-04-03 11:20:28'),(10,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-03 11:20:28'),(11,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-03 11:20:28'),(12,'leix_types','项目分类名称',4,'分类4',NULL,'2021-04-03 19:28:37');

/*Table structure for table `huojiang` */

DROP TABLE IF EXISTS `huojiang`;

CREATE TABLE `huojiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huojiang_name` varchar(200) DEFAULT NULL COMMENT '获奖项目  Search111 ',
  `canyurenyuan` varchar(200) DEFAULT NULL COMMENT '参与人员  Search111 ',
  `huojiang_photo` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `huojiang_content` text COMMENT '项目详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='获奖项目';

/*Data for the table `huojiang` */

insert  into `huojiang`(`id`,`huojiang_name`,`canyurenyuan`,`huojiang_photo`,`huojiang_content`,`create_time`) values (1,'获奖项目1','参与人员1','http://localhost:8080/chuangyejingsai/file/download?fileName=1617430926380.jpg','项目详情1\r\n','2021-04-03 14:03:33'),(2,'获奖项目2','参与人员2','http://localhost:8080/chuangyejingsai/file/download?fileName=1617449331116.jpg','项目详情2\r\n','2021-04-03 19:28:56');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'444','444','教师1',2,'123123123123123123','12312312312','http://localhost:8080/chuangyejingsai/file/download?fileName=1617430887925.jpg',NULL),(2,'333','333','教师2',1,'123123123123123123','12312312312','http://localhost:8080/chuangyejingsai/file/download?fileName=1617430880525.jpg','2021-04-03 13:50:30');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '动态名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '动态类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '动态图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '动态时间',
  `news_content` text COMMENT '动态详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='创业动态';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'动态名称1',2,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617430789271.jpg','2021-04-03 14:04:17','动态详情1\r\n','2021-04-03 14:04:17'),(2,'动态名称2',1,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617430783892.jpg','2021-04-03 14:04:32','动态详情2\r\n','2021-04-03 14:04:32'),(3,'动态名称3',2,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617430777580.jpg','2021-04-03 14:04:44','动态详情3\r\n','2021-04-03 14:04:44'),(4,'动态名称4',1,'http://localhost:8080/chuangyejingsai/file/download?fileName=1617449350667.jpg','2021-04-03 19:29:13','动态详情4\r\n','2021-04-03 19:29:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'111','yonghu','用户','n0aqu62av9b0utrp45uiwu5q54eg0nxs','2021-04-03 11:33:28','2021-04-03 20:33:06'),(2,1,'admin','users','管理员','tsw622nz1jgre5i25lydcnhqijupylbd','2021-04-03 11:34:24','2021-04-03 21:45:13'),(3,2,'222','yonghu','用户','m6aj7fnhfz2iuj3t3kk46ku6dx0k4qix','2021-04-03 13:53:29','2021-04-03 20:34:44'),(4,2,'333','jiaoshi','教师','6h9ytkdzcvusjmsearfcxhw9jy995mh2','2021-04-03 19:37:38','2021-04-03 21:51:52'),(5,1,'111','yonghu','学生','g3ycewr9ewi76gymi4olok8ycphjz3lu','2021-04-03 19:38:18','2021-04-03 21:51:30'),(6,1,'444','jiaoshi','教师','hcsogapc0ovr8m64510uttxep8ijxe8i','2021-04-03 20:52:09','2021-04-03 21:52:23');

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
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','111','小札',2,'123123123123123','12312312312','http://localhost:8080/chuangyejingsai/file/download?fileName=1617430871901.jpg',NULL),(2,'222','222','小金',1,'321123123123123123','32132132132','http://localhost:8080/chuangyejingsai/file/download?fileName=1617430863249.jpg','2021-04-03 13:52:35'),(3,'123','123456','小张',1,'123123123123122323','12312232312','http://localhost:8080/chuangyejingsai/file/download?fileName=1617448385794.jpg','2021-04-03 19:13:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
