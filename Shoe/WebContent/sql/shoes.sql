/*
SQLyog Ultimate v8.32 
MySQL - 5.5.28 : Database - shoes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoes` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shoes`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `cartitemid` int(11) NOT NULL COMMENT '购物车项目id',
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

/*Table structure for table `cartitem` */

DROP TABLE IF EXISTS `cartitem`;

CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cartitemid` int(11) DEFAULT NULL COMMENT '购物车id',
  `cproductid` int(11) DEFAULT NULL COMMENT '鞋子id',
  `cshoesnumber` int(11) DEFAULT NULL COMMENT '鞋子数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cartitem` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `ordersid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `ouserid` int(11) DEFAULT NULL COMMENT '用户id',
  `ordersitemid` int(11) DEFAULT NULL COMMENT '订单项目id',
  `orderstate` varchar(255) DEFAULT NULL COMMENT '订单状态',
  `orderstime` varchar(255) DEFAULT NULL COMMENT '订单时间',
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`ordersid`,`ouserid`,`ordersitemid`,`orderstate`,`orderstime`) values (1,1,1,'已付款','2017-1-1'),(2,1,2,'已发货','2017-2-2'),(3,1,3,'已收货','2017-3-3'),(4,18,4,'已收货','2017-4-4'),(5,18,5,'已评价','2017-5-5'),(6,18,6,'已发货','2017-6-6');

/*Table structure for table `ordersitem` */

DROP TABLE IF EXISTS `ordersitem`;

CREATE TABLE `ordersitem` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ordersitemid` int(11) NOT NULL COMMENT '订单项目id',
  `oiproductid` int(11) DEFAULT NULL COMMENT '商品id',
  `oiproductnum` int(11) DEFAULT NULL COMMENT '订单中的商品数量',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `ordersitem` */

insert  into `ordersitem`(`oid`,`ordersitemid`,`oiproductid`,`oiproductnum`) values (1,1,1,5),(2,1,2,6),(3,2,12,12),(4,2,3,1),(5,3,3,2),(6,3,12,10),(7,3,3,5),(8,4,12,4),(9,4,20,3),(10,5,1,1),(11,6,3,2);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `shoesid` int(11) NOT NULL AUTO_INCREMENT COMMENT '鞋子id',
  `shoesname` varchar(255) DEFAULT NULL COMMENT '鞋子名字',
  `shoesprice` double DEFAULT NULL COMMENT '鞋子价格',
  `shoespictureurl` varchar(255) DEFAULT NULL COMMENT '鞋子图片路径',
  `shoesdescription` varchar(255) DEFAULT NULL COMMENT '鞋子描述',
  `shoescount` int(11) DEFAULT NULL COMMENT '鞋子数量',
  `shoestype` varchar(255) DEFAULT NULL COMMENT '鞋子类型',
  `shoessize` int(3) DEFAULT NULL COMMENT '鞋子大小',
  `shoescolor` varchar(255) DEFAULT NULL COMMENT '鞋子颜色',
  `shoesbrand` varchar(100) DEFAULT NULL COMMENT '鞋子品牌',
  `shoesident` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`shoesid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`shoesid`,`shoesname`,`shoesprice`,`shoespictureurl`,`shoesdescription`,`shoescount`,`shoestype`,`shoessize`,`shoescolor`,`shoesbrand`,`shoesident`) values (1,'adidas2017旗舰版',7000,'images/shoes-1.png','阿打算发斯蒂芬',64,'男',38,'黄','adidas',NULL),(2,'nike盛炎',8000,'images/shoes-2.png','多撒范德萨',61,'女',35,'红','nike',NULL),(3,'特步最新轻盈跑鞋',200,'images/shoes-3.png','飞一般的感觉',10,'男',38,'黄','tebu',NULL),(5,'adidas拖鞋',1000,'images/shoes-5.png','阿迪，就是不一般',100,'男',39,'黑','adidas',NULL),(6,'安踏秋季潮流时尚登山鞋',3000,'images/shoes-6.png','按，best feeling',111,'男',42,'红','anta',NULL),(7,'乔丹运动鞋',1000,'images/shoes-7.png','篮球之王',10,'男',43,'蓝','乔丹',NULL),(8,'nike女士小皮鞋',200,'images/shoes-8.png','鞋子名牌',200,'女',36,'红','nike',NULL),(9,'361休闲鞋',500,'images/shoes-9.png','鞋子361',11,'女',35,'灰','361',NULL),(10,'李宁牌跑鞋',400,'images/shoes-10.png','鞋子离你',12,'男',34,'绿','nike',NULL),(11,'乔丹荧光跑鞋',123,'images/shoes-11.png','夜跑',13,'女',43,'橙','乔丹',NULL),(12,'anta大众休闲鞋',234,'images/shoes-12.png','大众所属',114,'男',36,'白','anta',NULL),(13,'特步运动鞋',345,'images/shoes-13.png','运动质感',15,'女',34,'灰','tebu',NULL),(15,'耐克朴实休闲鞋',123,'images/shoes-15.png','朴实质感',13,'男',40,'粉','nike',NULL),(16,'361酷炫跑鞋',111,'images/shoes-16.png','酷炫质感',111,'男',44,'黑','361',NULL),(17,'adi超酷飞翔鞋',2000,'images/banner.jpg','飞翔的荷兰人',11,'男',40,'棕','adidas','1'),(18,'361运动鞋',1000,'images/banner-2.jpg','运动',12,'女',36,'粉','361','1'),(19,'361跑鞋',5000,'images/banner-3.jpg','车一般的鞋',2,'男',40,'蓝','361','1'),(20,'nike想鞋',1211,'images/abt-1.jpg','任性',1,'男',36,'蓝','nike','3'),(21,'361荧光夜跑鞋',1234,'images/abt-2.jpg','跑步',12,'女',39,'红','361','3'),(22,'乔丹bestshoes',12,'images/abt-3.jpg','度',120,'男',44,'白','乔丹','3'),(23,'nike气垫跑鞋',1234,'images/b-1.jpg','经典580，低调配色，用券好价~new balance来自美国的运动品品牌，由威廉赖利于1906年在美国波士顿创立，最初贩售脚弓支撑器和矫正鞋',12,'男',42,'红','nike','2'),(24,'adidas复古休闲鞋',2345,'images/b-2.jpg','亚瑟士复古潮流跑鞋，纯白款近期好价。ASICS Tiger是亚瑟士复古时尚潮流鞋款的专业支线，这款GEL-KAYANO Trainer Knit是ASICS Tiger今年的新款鞋型',23,'女',35,'白',NULL,'2');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `upassword` varchar(100) NOT NULL COMMENT '用户密码',
  `urealname` varchar(100) NOT NULL COMMENT '用户真实姓名',
  `uaddress` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `utelephone` int(11) DEFAULT NULL COMMENT '用户手机号',
  `uheadimages` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`username`,`upassword`,`urealname`,`uaddress`,`utelephone`,`uheadimages`) values (1,'老王','123','王尼玛','15159181',2147483647,'14818'),(2,'1','usersfads','32','342',432,'243'),(3,'admin','123456','张三','北京朝阳',123456,'C:\\Users\\User\\Desktop\\apache-tomcat-7.0.52\\webapps\\shoes\\upload\\Lighthouse.jpg'),(4,'csdn','123456','战三','南昌红谷滩',123456,'E:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\Shoeupload\\2017-8-9 23-55-04.png'),(7,'csdn123','123456','王尼玛','南昌红谷滩高新区',123456,'E:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\Shoe\\upload\\2017-8-9 23-55-04.png'),(14,'aabond','password','李四','美国拉斯维加斯',110110,'E:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\Shoe\\upload\\add.png'),(15,'qwer','1234321','马老五','魔力红',12321212,'C:\\Users\\User\\Desktop\\apache-tomcat-7.0.52\\webapps\\shoes\\\\upload\\Koala.jpg'),(16,'qqqq','qqqq','梦龙','国王大道',110123,'C:\\Users\\User\\Desktop\\apache-tomcat-7.0.52\\webapps\\shoes\\upload\\Jellyfish.jpg'),(17,'123','fOyFx1U3hA2tQCUVduW3Vw==','zhang','123321',123321,'C:\\Users\\User\\Desktop\\apache-tomcat-7.0.52\\webapps\\shoes\\upload\\Jellyfish.jpg'),(18,'123456789','4QrcOUm6Wau+VuBX8g+IPg==','qwer','12134',123456,'C:\\Users\\User\\Desktop\\apache-tomcat-7.0.52\\webapps\\shoes\\upload\\Lighthouse.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
