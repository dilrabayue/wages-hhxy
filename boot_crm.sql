CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mybatis`;

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base`;

CREATE TABLE `base` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

insert  into `base`
(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,
`dict_sort`,`dict_enable`,`dict_memo`) 
values 
('1','001','院部','教科院',NULL,1,'1',NULL),
('2','001','院部','数计院',NULL,2,'1',NULL),
('3','001','院部','文新院',NULL,3,'1',NULL),
('4','001','院部','计算机',NULL,4,'1',NULL),
('5','001','院部','体育院',NULL,5,'1',NULL),
('6','002','职位','教授',NULL,1,'1',NULL),
('7','002','职位','副教授',NULL,2,'1',NULL),
('8','002','职位','讲师',NULL,3,'1',NULL),
('9','002','职位','助教',NULL,4,'1',NULL),
('10','003','等级','系统管理员',NULL,1,'1',NULL),
('11','003','等级','院管理员',NULL,2,'1',NULL),
('12','003','等级','教师',NULL,3,'1',NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '教师编号(主键)',
  `cust_tid` varchar(32) NOT NULL COMMENT '教师工号(主键)',
  `cust_name` varchar(50) NOT NULL COMMENT '教师名称',
  `cust_password` varchar(50) DEFAULT NULL COMMENT '密码',
  `cust_institute` varchar(50) NOT NULL COMMENT '院部',
  `cust_post` varchar(50) NOT NULL COMMENT '职务',
  `cust_grade` varchar(50) NOT NULL COMMENT '等级',
  `cust_wages` varchar(50) NOT NULL COMMENT '工资',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;