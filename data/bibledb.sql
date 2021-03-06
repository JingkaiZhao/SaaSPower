-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: bibledb
-- ------------------------------------------------------
-- Server version	5.6.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9BDE863F93CD9EEB` (`creater_id`) USING BTREE,
  KEY `FK9BDE863F88F52EBE` (`message_id`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`creater_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leisure`
--

DROP TABLE IF EXISTS `leisure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leisure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pcc` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile` text,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leisure`
--

LOCK TABLES `leisure` WRITE;
/*!40000 ALTER TABLE `leisure` DISABLE KEYS */;
INSERT INTO `leisure` VALUES (1,'Fairyland天空之城桌游吧','19','65979700','杨浦区赤峰路53号279室',NULL,'31.283392','121.501896'),(2,'家乐福',NULL,'无','虹口区曲阳路580号',NULL,'31.281613','121.490654'),(3,'中国农业银行(四平路支行)',NULL,'95599','虹口区赤峰路65号同济大学内',NULL,'31.280678','121.500439'),(4,'招商银行(四平支行)',NULL,'95555','杨浦区四平路1396号',NULL,'31.282457','121.506468'),(5,'交通银行(同济支行)',NULL,'95559','杨浦区彰武路41号',NULL,'31.282769','121.50752'),(6,'中国工商银行(同济大学支行)',NULL,'95588','杨浦区彰武路63号',NULL,'31.281215','121.509966'),(7,'中国建设银行(彰武路支行)',NULL,'95533','杨浦区彰武路28号',NULL,'31.282402','121.507648'),(8,'中国邮政储蓄银行(彰武路邮局营业部)',NULL,'95580','杨浦区彰武路1号',NULL,'31.281797','121.509108'),(9,'渤海银行(四平路支行)',NULL,'55677813','杨浦区四平路1230号',NULL,'31.278954','121.504687');
/*!40000 ALTER TABLE `leisure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9C2397E793CD9EEB` (`creater_id`) USING BTREE,
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`creater_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'完成了，泪牛满面','31.281109096524233','121.50316715240479','2013-06-05 05:41:21',1),(2,'准备睡觉了，现在是5点43，靠！','31.28267701428732','121.50073170661926','2013-06-05 05:43:55',2),(3,'我去睡觉了，真的不容易！','31.282805380668947','121.49877905845642','2013-06-05 05:52:15',2),(4,'你好，我是赵靖凯。','31.2822827450226','121.50271654129028','2013-06-05 14:06:24',2),(5,'我在西南一楼','31.283694771513474','121.49907946586609','2013-06-05 14:09:19',2),(6,'我在解放楼','31.282236899652283','121.50184750556946','2013-06-05 14:13:38',2),(7,'我在同济大学','31.2822093924194','121.50426149368286','2013-06-05 15:10:05',2),(8,'我在道交馆，没开门， = =','31.284171554904116','121.49867177009583','2013-06-05 15:32:01',3),(9,'今天学苑食堂饭真好吃，我吃了一斤饭。','31.28267701428732','121.50293111801147','2013-06-05 15:32:45',3),(10,'有人来踢球吗，求组队。','31.28330050650408','121.50076389312744','2013-06-05 15:33:11',3),(11,'今天一二九有迎新晚会，欢迎前来观看。','31.281439186640753','121.50416493415833','2013-06-05 15:34:26',4),(12,'今晚有钢铁侠三放映~','31.285070101664225','121.50052785873413','2013-06-05 15:35:26',4),(13,'你好~我是姜威，我在足球场','31.282750366526788','121.50062441825867','2013-06-05 15:42:48',5),(14,'我来踢球啦。','31.282603661990805','121.5011715888977','2013-06-05 15:43:55',2),(15,'好热啊','31.279807063131123','121.50018453598022','2013-06-05 15:51:03',5),(16,'你好','31.28303460591582','121.50136470794678','2013-06-05 16:01:13',2),(17,'我在实验室','31.2830712819036','121.5022873878479','2013-06-05 16:03:14',5),(18,'你好','31.281228295866274','121.50368213653564','2013-06-07 14:47:50',2);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_transit`
--

DROP TABLE IF EXISTS `public_transit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_transit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_transit`
--

LOCK TABLES `public_transit` WRITE;
/*!40000 ALTER TABLE `public_transit` DISABLE KEYS */;
INSERT INTO `public_transit` VALUES (1,'同济大学','<li>上海轨道交通10号线主线</li>','31.28132','121.505889'),(2,'国康路四平路','<li>上海北安跨线车</li>','31.285409','121.505846'),(3,'四平路彰武路','<li>上海147路</li><li>上海937路</li><li>上海55路</li><li>上海147路</li>','31.282494','121.50649'),(4,'彰武路四平路','<li>上海115路</li><li>上海142路</li><li>上海310路</li><li>上海874路</li><li>上海960路</li>','31.282301','121.507006'),(5,'四平路赤峰路','<li>上海55路</li><li>上海61路</li><li>上海115路</li><li>上海147路</li><li>上海307路</li><li>上海310路</li><li>上海325路</li><li>上海554路</li><li>上海817路</li><li>上海937路</li><li>上海960路</li>','31.279239','121.504721'),(6,'赤峰路四平路','<li>上海115路</li><li>上海123路</li><li>上海142路</li><li>上海554路</li><li>上海576路</li><li>上海746路</li><li>上海817路</li><li>上海874路</li>','31.279449','121.503809'),(7,'赤峰路密云路','<li>上海115路</li><li>上海123路</li><li>上海142路</li><li>上海554路</li><li>上海746路</li><li>上海817路</li><li>上海829路</li><li>上海874路</li><li>上海960路</li>','31.281742','121.497179'),(8,'密云路赤峰路','<li>上海123路</li><li>上海142路</li><li>上海554路</li><li>上海959路</li><li>上海960路</li>','31.282952','121.496052');
/*!40000 ALTER TABLE `public_transit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pcc` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `profile` text,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'唐朝酒店（同济店）','190','33627979','杨浦区彰武路18号同济联合广场内','本帮江浙菜',NULL,'31.281962','121.507187'),(2,'迪顺轩 ','122','33626888','杨浦区彰武路50号','本帮江浙菜',NULL,'31.281513','121.508659'),(3,'国康餐厅','29','65982275','杨浦区国康路38号同济规划大厦101室','本帮江浙菜',NULL,'31.286079','121.505075'),(4,'三好坞景观餐厅','61','65987330','杨浦区四平路1239号同济大学内','本帮江浙菜',NULL,'31.285515','121.503878'),(5,'锦江白玉兰宾馆昆仑厅','100','65986888','杨浦区四平路1251号15楼','本帮江浙菜',NULL,'31.285185','121.507549'),(6,'晶晶酒家','43','65794690','杨浦区彰武路66号','本帮江浙菜',NULL,'31.28116','121.509448'),(7,'康源美食','43','65634830','杨浦区鞍山路220号','本帮江浙菜',NULL,'31.278427','121.509968'),(8,'夏月小厨','25','33626589','杨浦区彰武路38号','本帮江浙菜',NULL,'31.281641','121.507983'),(9,'鸿瑞兴(赤峰路店)','21','无','虹口区赤峰路338号 ','本帮江浙菜',NULL,'31.282402','121.494035'),(10,'志超酒家(赤峰店)','47','65983664','虹口区赤峰路180号','本帮江浙菜',NULL,'31.281714','121.49778'),(11,'愚慧阁','47','无','虹口区赤峰路89弄','本帮江浙菜',NULL,'31.281221','121.49792'),(12,'小弄弄菜馆','30','65985788','虹口区密云路528号','本帮江浙菜',NULL,'31.283117','121.496074'),(13,'晨兴食府','48','无','虹口区密云路420号','本帮江浙菜',NULL,'31.278519','121.49645'),(14,'怡園酒楼','42','55887717','虹口区密云路475号','本帮江浙菜',NULL,'31.283667','121.49601'),(15,'壹品干锅蛙','46','无','虹口区赤峰路329号','川菜',NULL,'31.282219','121.492866'),(16,'来一锅','21','65985072','虹口区赤峰路65号同济大学3楼 ','川菜',NULL,'31.280275','121.500333'),(17,'蜀国川菜(虹口店)','69','65555036','虹口区伊敏河路32号','川菜',NULL,'31.286473','121.493456'),(18,'重庆鸡公煲(赤峰路店)','40','无','虹口区赤峰路327号','川菜',NULL,'31.28209','121.493392'),(19,'100%重庆鸡公煲','40','无','杨浦区彰武路18号同济联合广场203室','川菜',NULL,'31.281907','121.507167'),(20,'巴山夜雨(彰武路店)','15','35080731','杨浦区彰武路18号同济联合广场107室 ','川菜',NULL,'31.281907','121.507167'),(21,'干杯楼','58','33626171','杨浦区彰武路18号同济联合广场E座','川菜',NULL,'31.281907','121.507167'),(22,'唐宫海鲜舫(白玉兰店)','95','55133998','杨浦区四平路1251号白玉兰宾馆2楼','粤菜',NULL,'31.285483','121.507624'),(23,'和味小馆','63','55669731','虹口区玉田路278号','粤菜',NULL,'31.279541','121.491503'),(24,'堡盛茶餐厅(密云路店) ','18','65989368','虹口区密云路534号','粤菜',NULL,'31.283264','121.496106'),(25,'徐记小海鲜','55','55789758','虹口区赤峰路325号','粤菜',NULL,'31.282072','121.493585'),(26,'思惠小菜','57','65983958','虹口区赤峰路182号','湘菜',NULL,'31.281751','121.497586'),(27,'湘霸王土菜馆','48','无','虹口区密云路534号','湘菜',NULL,'31.283392','121.496288'),(28,'口湘堂','66','33626098','杨浦区四平路1388号同济联合广场2楼','湘菜',NULL,'31.27933','121.504936'),(29,'湘下人','46','无','杨浦区阜新路268号','湘菜',NULL,'31.280078','121.508622'),(30,'东北人家饺子王','33','55890052','虹口区密云路353号','东北菜',NULL,'31.27878','121.496256'),(31,'东北人家','47','65981622','虹口区密云路536号','东北菜',NULL,'31.283374','121.49631'),(32,'欧麦尔羊肉馆','65','65528719','虹口区赤峰路318号','新疆/清真',NULL,'31.28223','121.495906'),(33,'大西北牛肉拉面','9','无','虹口区密云路416号','西北菜',NULL,'31.278207','121.496692'),(34,'大秦富贵(密云路店) ','23','65976935','虹口区密云路540号 ','西北菜',NULL,'31.283456','121.49631'),(35,'敦煌小楼','18','33626581','杨浦区彰武路18号同济联合广场2楼217','西北菜',NULL,'31.281893','121.507163'),(36,'大秦富贵(彰武路店)','20','33626330','杨浦区彰武路18号同济联合广场1楼','西北菜',NULL,'31.281893','121.507163'),(37,'小尾羊(四平路店)','50','65979345','杨浦区四平路1147弄1号 ','火锅/烧烤',NULL,'31.278322','121.504271'),(38,'宫の寿司','36','13162483268','虹口区赤峰路322号 ','日本料理',NULL,'31.282308','121.495391'),(39,'米舞寿司','25','18621369215','虹口区玉田路6号','日本料理',NULL,'31.279397','121.489246'),(40,'V多寿司','15','15026622690','杨浦区彰武路38号','日本料理',NULL,'31.281577','121.507925'),(41,'宝得莱(彰武路店) ','42','33626617','杨浦区彰武路18号同济联合广场E座2楼','日本料理',NULL,'31.281888','121.507155'),(42,'秋叶咖喱屋(彰武路店)','25','无','杨浦区彰武路18号同济联合广场1楼108室','日本料理',NULL,'31.281888','121.507155'),(43,'牛藏烧肉','44','33626089','杨浦区彰武路24号','日本料理',NULL,'31.281707','121.50763'),(44,'聚点时尚烧烤主题餐厅(彰武路店)','70','55137936','杨浦区彰武路20号同济联合广场e楼209号铺 ','韩国料理',NULL,'31.281769','121.507564'),(45,'Salabim意式餐厅(赤峰路店) ','45','65976898','杨浦区赤峰路66号','西餐',NULL,'31.280843','121.500129'),(46,'咕咕猫咖啡餐馆','34','33626270','杨浦区彰武路18号同济联合广场E楼206室','西餐',NULL,'31.281916','121.507157'),(47,'大犇牛排(彰武路店) ','40','33626069','杨浦区彰武路20号同济联合广场E座203室','西餐',NULL,'31.281797','121.507575'),(48,'雅憩休闲咖啡馆','44','65985019','杨浦区四平路1239号城规学院C楼1楼','西餐',NULL,'31.285143','121.505734'),(49,'上岛咖啡(彰武路)','47','33626188','杨浦区彰武路18号同济联合广场E座303-305号','西餐',NULL,'31.281907','121.507167'),(50,'宝丽盛中西快餐','17','无','杨浦区彰武路24号','西餐',NULL,'31.281721','121.507627'),(51,'那诺咖啡','19','35013957','虹口区赤峰路65号同济大学科技园1楼','西餐',NULL,'31.280266','121.500322'),(52,'莫卡','42','33626278','杨浦区彰武路18号同济联合广场B楼','西餐',NULL,'31.281888','121.507158'),(53,'三叶草咖啡吧(四平路二店)','31','65986836','杨浦区四平路1239号同济大学综合楼1楼 ','西餐',NULL,'31.284415','121.506718'),(54,'克莉丝汀(赤峰路店) ','14','无','杨浦区赤峰路41号','面包甜点',NULL,'31.279119','121.503487'),(55,'第五街(四平路店) ','5','无','杨浦区四平路1239号同济大学本部校区音乐广场旁','面包甜点',NULL,'31.28361','121.500275'),(56,'同济大学本部西点坊','5','无','杨浦区四平路1239号同济大学内','面包甜点',NULL,'31.285476','121.500672'),(57,'黄记玉米汁(彰武路店) ','7','无','杨浦区彰武路36号','面包甜点',NULL,'31.28176','121.508272'),(58,'思蜜客蜜酿酸奶(同济大学店)','10','13564135835','杨浦区四平路1239号同济大学','面包甜点',NULL,'31.28242','121.499519'),(59,'小山东羊肉汤馆','41','65150754','杨浦区同济新村阜新路278号','其他',NULL,'31.284272','121.506531'),(60,'半亩园','13','65981066','杨浦区四平路1239号同济大学干训南楼','其他',NULL,'31.28171','121.500466'),(61,'蓝蚂酒吧','42','无','杨浦区彰武路18号同济联合广场E楼216室','其他',NULL,'31.281962','121.507157'),(62,'同济留学生餐厅','8','无','杨浦区四平路1239号同济大学内','小吃快餐',NULL,'31.286349','121.502708'),(63,'重庆人麻辣烫','10','无','虹口区赤峰路35号','小吃快餐',NULL,'31.27909','121.503636'),(64,'阿牛嫂桂林米粉(彰武路店)分店','15','55096605','杨浦区彰武路62号','小吃快餐',NULL,'31.281127','121.509345'),(65,'豪大大香鸡排(赤峰二店)分店','11','13482234767','杨浦区赤峰路35号','小吃快餐',NULL,'31.279092','121.503605'),(66,'来伊份(彰武路店)分店','37','无','杨浦区彰武路55号','小吃快餐',NULL,'31.281403','121.509667'),(67,'来伊份(赤峰路店)分店',NULL,'无','杨浦区赤峰路35-7号','小吃快餐',NULL,'31.279303','121.503444'),(68,'红辣椒餐厅','28','65978046','虹口区赤峰路53号','小吃快餐',NULL,'31.279404','121.502457'),(69,'同济大学本部学苑饮食广场','7','65982200','杨浦区四平路1239号同济大学内','小吃快餐',NULL,'31.282455','121.503279'),(70,'吉祥馄饨(赤峰路店)分店','14','55062562','虹口区赤峰路53号','小吃快餐',NULL,'31.279665','121.502464'),(71,'夏月桂林米粉(彰武路店)分店','10','33626665','杨浦区彰武路42号','小吃快餐',NULL,'31.281535','121.50796'),(72,'同济西北食堂','7','无','杨浦区四平路1239号同济大学内','小吃快餐',NULL,'31.28656','121.500758'),(73,'同济大学本部西苑饮食广场','6','无','杨浦区四平路1239号同济大学内','小吃快餐',NULL,'31.283035','121.497824'),(74,'凡仔汉堡(彰武路店)分店','15','无','杨浦区彰武路62号','小吃快餐',NULL,'31.281224','121.509373'),(75,'哈尔滨饺子王分店','28','13166313528','杨浦区阜新路266号','小吃快餐',NULL,'31.280605','121.508528'),(76,'台湾手抓饼摊(密云路店)分店','5','无','虹口区四平路1239号同济大学附近','小吃快餐',NULL,'31.282471','121.496219'),(77,'同济西区食堂','8','无','杨浦区四平路1239号同济大学内','小吃快餐',NULL,'31.286555','121.500683'),(78,'罗记川味麻辣烫(密云店)分店','7','65521925','虹口区密云路351号','小吃快餐',NULL,'31.279156','121.496276'),(79,'山东杂粮煎饼','3','无','杨浦区赤峰路农业银行附近','小吃快餐',NULL,'31.280201','121.50061'),(80,'品尝坊(赤峰店)分店','14','62303058','杨浦区赤峰路66号','小吃快餐',NULL,'31.284566','121.500179'),(81,'密云路肉夹馍','5','无','虹口区密云路506号','小吃快餐',NULL,'31.283392','121.501896');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourist_interest`
--

DROP TABLE IF EXISTS `tourist_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tourist_interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ticketPrice` varchar(255) DEFAULT NULL,
  `openingTime` varchar(255) DEFAULT NULL,
  `trafficInfo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `profile` text,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist_interest`
--

LOCK TABLES `tourist_interest` WRITE;
/*!40000 ALTER TABLE `tourist_interest` DISABLE KEYS */;
INSERT INTO `tourist_interest` VALUES (1,'外滩','北起外白渡桥，南抵金陵东路，约1.5公里','全天免费，外滩观光隧道50元/人','全天开放','校门口乘坐55路，147路，576路或者乘坐地铁十号线到南京东路站','无','外滩位于上海市中心黄浦区的黄浦江畔，它是上海的风景线，周围还有位于黄浦江对岸浦东的东方明珠、金茂大厦等地标景观，是去上海观光游客的必到之地。外滩自1943年起又名为中山东一路，全长约1.5公里。它南起延安东路，北至苏州河上的外白渡桥，东临黄浦江，西面是由哥特式、罗马式、巴洛克式、中西合壁式等52幢风格迥异的古典复兴大楼所组成的旧上海时期的金融中心、外贸机构的集中带，被誉为“万国建筑博览群”。近年来上海外滩天幕的后方又被新建的许多摩天大楼改变了不少。','31.234454','121.491702'),(2,'东方明珠','浦东新区浦东世纪大道1号（近二号线陆家嘴站）','第一个球：100元/人；第二个球+城市历史展示馆：150元/人；三球联票+城市历史展示馆：180元/人；城市历史展示馆35元。\r\n1.3米以下儿童对折，80岁以上老人凭证免费。\r\n','8:30-21:30','校门口乘坐地铁十号线转二号线在陆家嘴站下车。','无','东方明珠广播电视塔（the Oriental Pearl TV Tower），坐落在中国上海浦东新区陆家嘴，毗邻黄浦江，与外滩隔江相望，上海国际新闻中心所在地。东方明珠塔是由上海现代建筑设计（集团）有限公司的江欢成设计。建筑投资总额达8.3亿元人民币，在工程技术上借鉴1990年建成的徐州电视塔。塔高467.9米，亚洲第四，世界第六高塔，仅次于阿联酋哈利法塔（828米）、日本东京天空树电视塔(634米)、广州新电视塔(600米)、加拿大的加拿大CN电视塔（553.3米）及俄罗斯的奥斯坦金诺电视塔（540.1米），是上海的地标之一。','31.239866','121.499688'),(3,'滨江大道','沿着黄浦江，从东昌路码头至泰同栈码头','全天免费','全天开放','校门口乘坐地铁十号线转二号线在陆家嘴站下车','无','滨江大道是位于黄浦江边的一条人行大道，对面是上海的外滩地区。滨江大道大道沿着黄浦江，从东昌路码头至泰同栈码头，约长2500米，犹如一条碧绿的彩带，景色非常的怡人。在滨江大道中央，有一个由21个喷水头组成的喷水广场，流水缓缓的注入广场中的水池中，黄浦江边上是铁链的栏杆，岸边有休闲的双人椅，江水和船只构成美丽的风景，让人流连忘返。','31.24227','121.500671'),(4,'金茂大厦88层观光厅','浦东世纪大道88号','100元，儿童50元，学生凭学生证价90元','8:30-21:00','校门口乘坐地铁十号线转二号线在陆家嘴站下车','无','金茂大厦（Jin Mao Tower），又称金茂大楼，位于上海浦东新区黄浦江畔的陆家嘴金融贸易区，楼高420.5米，目前是上海第2高的摩天大楼（截至2008年8月）、中国大陆第3高楼、世界第8高楼。','31.235408','121.50565'),(5,'上海金融中心','浦东世纪大道100号','100+97+94层 150元，94层120元','8:00 – 23:00 (最晚进场 22:00)','地铁2号线陆家嘴站','无','上海环球金融中心是位于中国上海陆家嘴的一栋摩天大楼，2008年8月29日竣工。是中国目前第一高楼、世界第三高楼、世界最高的平顶式大楼，楼高492米，地上101层，开发商为“上海环球金融中心公司”，由日本森大厦株式会社（森ビル）主导兴建。','31.234697','121.507448'),(6,'新天地','太仓路181弄新天地北里内(近马当路','免费','23小时','校门口乘坐地铁十号线到新天地站下车','无','上海新天地是一个具有上海历史文化风貌，中西融合的都市旅游景点，它以上海近代建筑的标志石库门建筑旧区为基础，首次改变了石库门原有的居住功能，创新地赋予其商业经营功能，把这片反映了上海历史和文化的老房子改造成集国际水平的餐饮、购物、演艺等功能的时尚、休闲文化娱乐中心。漫步新天地，仿佛时光倒流，有如置身于二十世纪二、三十年代的上海，但一步跨进每个建筑内部，则非常现代和时尚，亲身体会新天地独特的理念，这有机的组合与错落有致地巧妙安排形成了一首上海昨天、明天、今天的交响乐，让海内外游客品味独特的海派文化。','31.221479','121.474679'),(7,'中共一大会址','黄陂南路374号','暂无','暂无','校门口乘坐地铁十号线到新天地站下车。','021-53832171-111','中国共产党第一次全国代表大会会址。\r\n该楼于民国9年（1920年）夏秋间建，与左右紧邻4幢同类房屋同时建成，属贝勒路树德里（今黄陂南路374弄）一部分。是为上海典型石库门式样建筑，外墙青红砖交错，镶嵌白色粉线，门楣有矾红色雕花，黑漆大门上配铜环，门框围以米黄色石条。\r\n该幢住宅为上海共产主义小组发起人之一李汉俊与兄李书城的住宅，人称“李公馆”。李书城，系同盟会发起人之一。李氏兄弟为该楼最早住户。楼南路侧当时尚存农田，环境颇僻。李家将两楼内墙打通，楼梯合一，组成一家。106号楼上是李汉俊卧室，楼下客厅约18平方米。\r\n民国10年7月23日(即1921年7月23日)，中国共产党第一次全国代表大会即在此客厅举行。\r\n','31.220307','121.475421'),(8,'田子坊','泰康路274-210弄(近瑞金二路)','暂无','暂无','校门口乘坐地铁十号线到新天地站下车，步行10分钟即到','http://www.tianzifang.cn/','泰康路是打浦桥地区的一条小街，1998年前这里还是一个马路集市，自1998年9月区政府实施马路集市入室后，把泰康路的路面进行重新铺设，使原来下雨一地泥，天晴一片尘的马路焕然一新。在区委，区府的领导支持下，泰康路依据打浦桥地区的功能定位开始实施特色街的工程。','31.207583','121.46833'),(9,'衡山路','东起桃江路，连接宝庆路，西达华山路','免费','24小时','校门口乘坐地铁十号线到上海图书馆站下车，步行5分钟即到','无','衡山路始建于1892年，由法公董局修筑，曾是法租界著名的贝当路，1943年10月更名为衡山路，整条街长2.3公里。衡山路南接商业中心徐家汇，北邻时尚购物街淮海路――是两大繁华区域间的幽静而高雅的通道。紧临领馆区，是上海的交通主干道之一，地铁一号线在衡山路上设有站点，道路两旁繁茂的法国梧桐和林荫中颇具特色的各类高档欧陆建筑，为衡山路增添了浓郁的异国文化气息。衡山路是上海最负盛名的休闲娱乐一条街。','31.20474','121.44654'),(10,'多伦路名人文化街','虹口区，南邻四川北路商业闹区，北傍鲁迅公园、虹口足球场，背靠内环高架、明珠轻轨线','暂无','全天开放','校门口乘坐地铁十号线换八号线到虹口足球场下车','无','多伦路位于上海苏州以北的虹口区中部的鲁迅公园板块内。南傍四川北路商贸闹市，北邻鲁迅公园、虹口足球场，背靠内环高架、轨道交通3号线和8号线，动静相间一里有余。原名窦乐安路（Darroch Road），以曾受到清朝光绪帝接见的英国传教士窦乐安命名。\r\n\r\n地址：虹口区，南邻四川北路商业闹区，北傍鲁迅公园、虹口足球场，背靠内环高架、明珠轻轨线。\r\n','31.263603','121.481794'),(11,'甜爱路','虹口区，南邻四川北路商业闹区，北傍鲁迅公园、虹口足球场，背靠内环高架、明珠轻轨线。','暂无','全天开放','校门口乘坐地铁十号线到海伦路下车，步行10分钟即到。','无','上海虹口山阴路一带，与山阴路并行着有一条小道，名叫甜爱路，一种独有的寂静和舒缓的情调浸透其间，与山阴路不同的是，马路两边多有围墙，抵挡了视线，于是又增添了几分神秘。甜爱路确实适宜情侣们闲散游戏。很多人的恋爱故事都是在甜爱路上铺就的。','31.268446','121.484088'),(12,'1933老场坊','虹口区沙泾路10号(近溧阳路)','暂无','9：00—22：00','校门口乘坐地铁十号线到海伦路下车，步行8分钟即到','无','1933年，由工部局出资兴建，著名英国设计师设计，中国当时的知名建筑营造商建造的上海工部局宰牲场在上海虹口区沙泾路正式建成。据史料记载，建造这个宰牲场光建筑和设备就花费白银三百三十多万元，全部采用英国进口的混凝土结构，墙体厚约50公分，两层墙壁中间采用中空形式，在缺乏先进技术的30年代，巧妙利用物理原理实现温度控制，即时在炎热的夏天依然可以保持较低的温度，可见这栋建筑当时工艺设计的前瞻性和先进性。','31.254478','121.492142'),(13,'静安寺','静安区南京西路1686号','30元，香期免费','7：30—17：30','校门口乘坐地铁十号线换二号线到静安寺下车','无','静安寺是上海市的著名古刹之一，相传始建于三国孙吴赤乌年间，初名沪渎重玄寺。宋大中祥符元年（1008年），更名静安寺。南宋嘉定九年（1216年），寺从吴淞江畔迁入境内芦浦沸井浜边（今南京西路1686号），至今已近780年，早于上海建城。清末，寺成现今规模。民国34年（1945年），书法家邓散木题额“静安古寺”，沿用迄今。','31.223151','121.445439'),(14,'上海博物馆','黄浦区人民大道201号(近武胜路)','免费','9:00-17:00，16:00停止入场','校门口乘坐地铁十号线换八号线到大世界站下车','http://www.shanghaimuseum.net/','上海博物馆(Shanghai Museum)是一座大型的中国古代艺术博物馆，上方下圆的造型寓意中国“天圆地方”之说。陈列面积2800平方米。馆藏珍贵文物12万件，其中尤以青铜器、陶瓷器、书法、绘画为特色。收藏了来自青铜器之乡—宝鸡及河南、湖南等地的青铜器，藏品之丰富、质量之精湛，在国内外享有盛誉，有文物界“半壁江山”之誉。','31.228326','121.475437');
/*!40000 ALTER TABLE `tourist_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jkz',NULL,'7B9B64D7896F85DD8411BEFEA6E642CF','D832FE99CAF1849A40EA1966806DE471'),(2,'赵靖凯',NULL,'05FC18E4CDCB4066162335D720C59DC0C361F045360C0F68D1CB44376B41D039','D832FE99CAF1849A40EA1966806DE471'),(3,'姜威',NULL,'D1B37B46C46869202AE90E26E5C8526E025C8CB70DE38BE61185E46C816B47F3','D832FE99CAF1849A40EA1966806DE471'),(4,'杨柳杉',NULL,'CC357586B8BC97DC9DE36537B3D4FD03','D832FE99CAF1849A40EA1966806DE471'),(5,'姜威',NULL,'25890796B9D470DB861D64988A2111EB55E03AE0174911B6FC493F4C9D3D14BD','FD9E2F49B0B901ECC2E16D2A8CC1AC8F');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-21 13:06:02
