-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Table structure for table `media_classify`
--

DROP TABLE IF EXISTS `media_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_classify` (
  `sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_id` varchar(100) NOT NULL,
  `classify_name` varchar(100) NOT NULL,
  PRIMARY KEY (`sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_classify`
--

LOCK TABLES `media_classify` WRITE;
/*!40000 ALTER TABLE `media_classify` DISABLE KEYS */;
INSERT INTO `media_classify` VALUES (1,'0101','水果'),(2,'0201','蔬菜'),(3,'0301','水产'),(4,'0401','米面粮油'),(5,'0501','农副产品'),(6,'0601','地方特色'),(7,'0701','花卉苗木');
/*!40000 ALTER TABLE `media_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_dynamic`
--

DROP TABLE IF EXISTS `media_dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `type` tinyint(1) NOT NULL COMMENT '信息类型',
  `user_id` varchar(100) NOT NULL COMMENT '发布者id',
  `correspond_user_id` varchar(100) NOT NULL COMMENT '对应者id',
  `correspond_id` varchar(100) NOT NULL COMMENT '对应信息id',
  `content` varchar(1000) NOT NULL COMMENT '信息内容',
  `imglist` varchar(500) NOT NULL COMMENT '图片数组',
  `time` varchar(100) NOT NULL COMMENT '信息发布时间',
  `coment_number` varchar(100) NOT NULL DEFAULT '0' COMMENT '评论人数',
  `reading_number` varchar(100) NOT NULL COMMENT '阅读人数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '信息状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_dynamic`
--

LOCK TABLES `media_dynamic` WRITE;
/*!40000 ALTER TABLE `media_dynamic` DISABLE KEYS */;
INSERT INTO `media_dynamic` VALUES (36,1,'15','','','美味的红肉苹果，看着就好像吃。 红肉苹果由瑞士水果种植家马库斯科波特培育而成，易于栽培管理，果实形似番茄，味道甜美，富含抗氧化物，产量较高，具有较高的经济价值','/static/kindeditor/php/../attached/image/20170919/20170919110533_22203.jpg,/static/kindeditor/php/../attached/image/20170919/20170919110533_64821.jpg,/static/kindeditor/php/../attached/image/20170919/20170919110534_66365.jpg,/static/kindeditor/php/../attached/image/20170919/20170919110534_90730.jpg,/static/kindeditor/php/../attached/image/20170919/20170919110534_55851.jpg,/','2017-09-19 17:05','1','10',1),(37,2,'22','15','36','很棒','','2017-09-19 18:42','0','',0),(38,3,'9','19','ffx0l1','厉害了','','1505880420','0','',0),(39,2,'9','9','34','感谢老板','','2017-09-23 14:12','0','',0),(35,1,'19','','','    百香果科普知识：   百香果原产于南美洲，其果汁具有番桃、石榴、菠萝、芒果、香蕉等多种水果的香气因而得名“百香果”即香百果之意。 百香果属多年生常绿攀缘性藤本水果，适应性、抗虫抗病性强，生长旺盛，从种到收一般几个月，投产早，高产稳产。是当今世界上最佳加工型绿色水果新品种。百香果的果汁色、香、味俱佳，营养极其丰富，是当之无愧的“果汁之王”。\n       百香果最适宜的生长温度为20℃~30℃，一般在不低于0℃的气温下生长良好，到-2℃时植株会严重受害甚至死亡，年平均气温18℃以上的地区最为适宜种植，易获得丰产。因此，在中国南方温暖湿润地区尤其海南地区分布较广。','/static/kindeditor/php/../attached/image/20170919/20170919105320_99991.jpg,/static/kindeditor/php/../attached/image/20170919/20170919105321_58477.jpg,/static/kindeditor/php/../attached/image/20170919/20170919105321_28069.jpg,/static/kindeditor/php/../attached/image/20170919/20170919105321_60105.jpg,/static/kindeditor/php/../attached/image/20170919/20170919105321_40541.jpg,/','2017-09-19 16:53','0','19',1),(34,1,'9','','','今年杭白菊大丰收，心情大好，给大家科普一下杭白菊。\n     杭白菊是菊属的一个种，也是中国最优质药用菊花的名字。杭白菊为菊科植物菊的干燥头状花序。历史上曾享有“杭白菊与龙井茶”并提之誉是中国传统著名出口中药材“浙八味”之一。\n      杭白菊 为大宗常用中药, 有疏风散热、清肝明目的功效，主治外感风热、头晕头痛等症。经常饮用菊花茶有避暑除烦，情心明目之功用。菊花喜温暖气候和阳光充足的环境，能耐寒，怕水涝， 但苗期、花期不能缺水，菊花属短日照植物，对日照长短反应很敏感，每天不超过10小时的光照，才能现蕾开花。选地整地种植菊花的土地对土壤要求不严，但直选择排水良好，肥沃、疏松，含腐殖质丰富的土中生长为好。粘地和低洼地不宜种植，盐碱地不宜种植，忌连作。。','/static/kindeditor/php/../attached/image/20170919/20170919104735_43865.jpg,/static/kindeditor/php/../attached/image/20170919/20170919104736_98667.jpg,/static/kindeditor/php/../attached/image/20170919/20170919104736_58208.jpg,/static/kindeditor/php/../attached/image/20170919/20170919104736_29489.jpg,/static/kindeditor/php/../attached/image/20170919/20170919104737_24771.jpg,/','2017-09-19 16:47','1','29',1);
/*!40000 ALTER TABLE `media_dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_growth`
--

DROP TABLE IF EXISTS `media_growth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_growth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `substitutes_id` varchar(10) NOT NULL COMMENT '代养id',
  `time` varchar(30) NOT NULL COMMENT '此条历程上传时间',
  `content` varchar(1000) NOT NULL COMMENT '内容文字',
  `cover_img` varchar(100) NOT NULL COMMENT '图片列表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_growth`
--

LOCK TABLES `media_growth` WRITE;
/*!40000 ALTER TABLE `media_growth` DISABLE KEYS */;
INSERT INTO `media_growth` VALUES (3,'4xsam0','1505184780','<p>\n	测试成长记录。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。\n</p>\n<p>\n	<img src=\"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2375103437,3563528177&fm=27&gp=0.jpg\" alt=\"\" />\n</p>','uploads/20170912/20770e88c7a1b9e7067b88bd4ffb338d.jpgthumb.png'),(4,'4xsam0','1505185860','<p>\n	2017年9月12日，天气晴朗，菜地长势良好\n</p>\n<p>\n	<img src=\"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=391138242,74746959&fm=200&gp=0.jpg\" alt=\"\" />\n</p>','uploads/20170912/20770e88c7a1b9e7067b88bd4ffb338d.jpgthumb.png'),(5,'4xsam0','1505207700','<div>\n	1、<b>炒芝心年糕</b>。烧烤店里那种芝心年糕或者普通年糕都可以，因为家人在外面吃剩的生年糕打包回来……我就做了芝心年糕的！超简单超好吃(つД`)ノ<br />\n材料：<br />\n芝心年糕（或者年糕）<br />\n白菜（可大量！因为炒完之后就缩水变很少了，而且吃很快……）<br />\n腊肉<br />\n盐<br />\n酱油<br />\n1白菜洗净，切丝备用，腊肉切小片；<br />\n2热锅，倒一点点油，因为腊肉本身就比较油，先翻炒两下腊肉，出香味，扔白菜丝进去，炒！<br />\n3放年糕，继续翻炒，然后放酱油、盐；<br />\n4摆盘继续注意bigger……(￣▽￣)\n</div>','uploads/20170912/7c0e2be8a9a5d4c0c87e1fc99351bf57.jpegthumb.png'),(11,'4xsam0','1505411880','2017年9月15日 天气晴朗 菜地一切良好','uploads/20170915/3075c257e0637ac3ef6531023c5a5ab8.jpgthumb.png'),(12,'mg7bwr','1505878680','2017年9月20日 雨天 雨水充足 长势良好','uploads/20170920/da0fcdd2c21761de19aa003fb6516ddb.jpgthumb.png'),(13,'mg7bwr','1505880360','长得很好','uploads/20170920/b6d20d9093061f9d5c26bbb9f755b606.jpgthumb.png'),(14,'4xsam0','1506223620','2017年9月20号，天气良好，玉米草长势良好','uploads/20170924/7d9959ba672b360dcbabf24327b72d2d.jpgthumb.png'),(15,'4xsam0','1506223680','<p>\n	<img src=\"/static/kindeditor/attached/image/20170924/20170924052814_63058.jpg\" alt=\"\" />\n</p>\n<p>\n	2017年9月20日，天气良好，玉米草长势良好\n</p>','uploads/20170924/ca686005c25d91e1021e51aa963db804.jpgthumb.png'),(16,'4xsam0','1506224460','依然长势良好','uploads/20170924/56ac9273ad82002ef3672b53de574224.jpgthumb.png'),(17,'4xsam0','1506224580','<span style=\"color:#7B7B7B;font-family:&quot;background-color:#FFFFFF;\">依然长势良好</span>','uploads/20170924/ad07f07f3d3c7921415aaf300c02817c.jpgthumb.png');
/*!40000 ALTER TABLE `media_growth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_letter`
--

DROP TABLE IF EXISTS `media_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_id` varchar(100) NOT NULL COMMENT '接收者',
  `send_id` varchar(100) NOT NULL COMMENT '发送者',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `time` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '类型：1私信，2留言',
  `status` tinyint(1) NOT NULL COMMENT '状态：0表示未看，1表示已看',
  `notiStaus` tinyint(1) NOT NULL COMMENT '0未通知，1表示已经通知',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_letter`
--

LOCK TABLES `media_letter` WRITE;
/*!40000 ALTER TABLE `media_letter` DISABLE KEYS */;
INSERT INTO `media_letter` VALUES (1,'10','9','闲菜网测试信息，看到勿回！','1504143360',1,1,1),(2,'10','9','闲菜网测试信息，看到勿回！','1504143420',1,1,1),(3,'10','9','还是测试信息','1504146300',1,1,1),(4,'9','10','测试信息，看到勿回！','1504148460',1,1,1),(5,'9','15','测试信息','1504148820',1,1,1),(13,'17','9','收到了','1504166520',1,0,1),(12,'9','17','测试信息（陌生人）第一条','1504148820',1,1,1),(11,'10','9','就发了','1504162440',1,1,1),(14,'9','17','测试信息（陌生人）第二条','1504148820',1,1,1),(15,'9','18','测试信息（陌生人）第二个人第一条， ','1504148820',1,1,1),(16,'10','9','你好！','1504174440',1,1,0),(17,'10','9','收到没有？','1504174680',1,1,1),(18,'10','9','收到没有？2','1504174740',1,1,0),(19,'10','9','。。。。。\n','1504174740',1,1,0),(20,'10','15','hi，老兄。。。','1504175100',1,1,0),(21,'9','15','看到没有？','1504175940',1,1,1),(22,'9','15','有没有','1504175940',1,1,0),(23,'15','9','1\n\n\n\n\n\n\n\n','1504176000',1,1,1),(24,'9','10','收到没有','1504176060',1,1,1),(25,'10','9','sure','1504176060',1,1,0),(26,'10','9','you are sbb','1504176060',1,1,0),(27,'9','10','mdzz','1504176060',1,1,0),(28,'10','9','welcome to school\n','1504176060',1,1,1),(29,'10','9','i am wating for you','1504176120',1,1,0),(30,'9','10','应该能行了','1504176120',1,1,0),(31,'9','10','收到没有','1504190160',1,1,1),(32,'10','16','emmm','1504190340',1,1,1),(33,'16','10','收到没有\n','1504190340',1,1,1),(34,'10','16','收到','1504190340',1,1,0),(35,'9','15','和。。。','1504190940',1,1,1),(36,'10','15','hi.','1504191000',1,1,1),(37,'15','10','lo','1504191480',1,1,0),(38,'15','10','oll','1504191480',1,1,1),(39,'15','10','ok?','1504230120',1,1,1),(40,'10','15','yea','1504230120',1,1,0),(41,'15','10','what happen?','1504230180',1,1,1),(42,'10','15','\nsorry，Idont know','1504230180',1,1,1),(43,'10','15','i am in webchat','1504230360',1,1,0),(44,'15','10','yes i know','1504230420',1,1,1),(45,'10','15','\nso what！','1504230480',1,1,0),(46,'10','15','no problem','1504230540',1,1,1),(47,'9','18','你好','1505540820',1,1,1),(48,'9','18','你吃饭了吗','1505540820',1,1,1),(49,'10','23','可以可以','1505623920',1,1,1),(50,'10','23','\ncnm','1505623920',1,1,1),(51,'9','22','111','1505885880',1,1,1),(52,'9','18','hi','1505887560',1,1,1),(53,'9','18','hello','1505887560',1,1,1),(54,'9','18','hello','1505890920',1,1,1),(55,'9','18','\nhi','1505890980',1,1,0),(56,'9','18','\naaa','1505890980',1,1,0),(57,'9','18','\nkkk','1505890980',1,1,0),(58,'9','18','ooo','1505890980',1,1,0),(59,'9','18','\nppp','1505890980',1,1,0),(60,'9','9','请问玉米草好种吗？','1506223920',1,1,1),(61,'9','24','请问玉米草容易培养吗？','1506224040',1,1,1),(62,'9','24','好，我决定要养玉米草了','1506224160',1,1,1),(63,'16','24','在吗','1506224760',1,0,0);
/*!40000 ALTER TABLE `media_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_notice`
--

DROP TABLE IF EXISTS `media_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) NOT NULL COMMENT '发送者',
  `receiver` varchar(20) NOT NULL COMMENT '接收者',
  `title` varchar(100) NOT NULL COMMENT '通知标题',
  `content` varchar(500) NOT NULL COMMENT '通知内容',
  `Corresponding_id` varchar(20) NOT NULL COMMENT '对应产品id',
  `type` varchar(10) NOT NULL COMMENT '通知类型（1供应大厅，2代养，3普通，4代养历程）',
  `time` varchar(20) NOT NULL COMMENT '时间',
  `static` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_notice`
--

LOCK TABLES `media_notice` WRITE;
/*!40000 ALTER TABLE `media_notice` DISABLE KEYS */;
INSERT INTO `media_notice` VALUES (4,'17','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','10','2','1505322930',1),(3,'17','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','10','2','1505321820',1),(5,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','11','2','1505402400',0),(10,'9','17','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1505411880',1),(11,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','15','2','1505542740',1),(12,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','16','2','1505891100',1),(13,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','16','2','1505891100',1),(14,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','16','2','1505891100',1),(15,'18','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','16','2','1505891100',1),(16,'22','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','20','2','1505891160',1),(17,'22','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','20','2','1505891160',1),(18,'9','17','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506223620',0),(19,'9','17','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506223680',0),(20,'24','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','22','2','1506224160',1),(21,'24','9','您新代养信息申请订单','请先确认您与申请该订单用户意见达成一致，确认后将不可撤销！','23','2','1506224280',1),(22,'9','17','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506224460',0),(23,'9','24','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506224460',1),(24,'9','17','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506224580',0),(25,'9','24','您的认养有新的成长历程','尊敬的闲菜网用户，您好！您的认养有新的成长历程了！','4xsam0','4','1506224580',1);
/*!40000 ALTER TABLE `media_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_order`
--

DROP TABLE IF EXISTS `media_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` varchar(20) NOT NULL COMMENT '买者id',
  `seller` varchar(20) NOT NULL COMMENT '卖者id',
  `type` tinyint(1) NOT NULL COMMENT '订单类型(1供应大厅，2是代养)',
  `Corresponding_id` varchar(100) NOT NULL COMMENT '对应商品id',
  `time` varchar(20) NOT NULL COMMENT '日期',
  `static` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0未同意，1同意）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_order`
--

LOCK TABLES `media_order` WRITE;
/*!40000 ALTER TABLE `media_order` DISABLE KEYS */;
INSERT INTO `media_order` VALUES (10,'17','9',2,'4xsam0','1505321820',1),(9,'17','9',2,'4xsam0','1505321280',0),(15,'18','9',2,'4xsam0','1505542740',0),(16,'18','9',2,'4xsam0','1505891100',0),(17,'18','9',2,'4xsam0','1505891100',0),(18,'18','9',2,'4xsam0','1505891100',0),(19,'18','9',2,'4xsam0','1505891100',0),(20,'22','9',2,'4xsam0','1505891160',0),(21,'22','9',2,'4xsam0','1505891160',0),(22,'24','9',2,'4xsam0','1506224160',0),(23,'24','9',2,'4xsam0','1506224280',1);
/*!40000 ALTER TABLE `media_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_provide`
--

DROP TABLE IF EXISTS `media_provide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_provide` (
  `sort_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '排序ID',
  `id` varchar(100) DEFAULT NULL COMMENT '商家ID',
  `product_id` varchar(100) DEFAULT NULL COMMENT '商品编号',
  `product_name` varchar(255) NOT NULL,
  `product_url1` varchar(100) DEFAULT NULL COMMENT '供应商品展示图1',
  `product_url2` varchar(100) DEFAULT NULL COMMENT '供应商品展示图2',
  `product_url3` varchar(100) DEFAULT NULL COMMENT '供应商品展示图3',
  `product_url4` varchar(100) DEFAULT NULL COMMENT '供应商品展示图4',
  `product_url5` varchar(100) DEFAULT NULL COMMENT '供应商品展示图5',
  `product_details` varchar(255) DEFAULT NULL COMMENT '供应商品详情',
  `product_type` varchar(100) DEFAULT NULL COMMENT '商品类型',
  `product_state` tinyint(1) DEFAULT '0' COMMENT '商品状态',
  PRIMARY KEY (`sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_provide`
--

LOCK TABLES `media_provide` WRITE;
/*!40000 ALTER TABLE `media_provide` DISABLE KEYS */;
INSERT INTO `media_provide` VALUES (19,'16','hepi2i','山东油桃产地供应','uploads/20170923/b5ad835039c88d41951f0f553a37f7b7.jpg','uploads/20170923/21cc30eb058104eeb1f584e3e5b0abbe.jpg','uploads/20170923/dc964ec5b65fe72598a85b1ece4698ef.jpg','uploads/20170923/d07e770ddbcbd54d5870543433cb5a42.jpg','','山东万亩油桃基地批发油桃，现已成熟，欢迎全国各地水果批发商前来收购。 \n我县温室大棚不断扩展，形成了一处较大规模的油桃交易基地，是山东境内最大的油桃批发市场，每天可提供多个品种几十万吨油桃供客户选购，油桃种植品种都为最新的优质品种，有中油4号、中油5号、中油9号、丽春早红宝石、126油桃、曙光、早红2号等，油桃脆甜可口，个大形正，表光鲜亮，风味浓甜，香气浓，表面着鲜艳宝石红色，有光泽，外观美等，广大地区水果客商纷纷前来收购，基地将为您提供装车、选果、包装、食宿、配货等一条龙服务，信誉公平，现场验货。有意者','0101',1),(20,'18','kia7u1','大兴庞各庄小西瓜','uploads/20170923/6a7c578535c13d8d421d2f5351b75b82.png','uploads/20170923/6277f369ceef16bcbdc52eab2f5ad8a0.png','uploads/20170923/b40239f3d2222ff6cdc6789c6e15107f.png','uploads/20170923/a8ca8e1e2613743f3a9f258e5ee7b178.png','uploads/20170923/bf3740b4e632cebe42a15e5e2f2719e0.png','果皮薄，可食度高。果肉纤维汁少，糖度十二到十三度，甜至皮际。肉质爽脆，鲜甜。有意者可私信我或者拨打我的电话。','0101',1),(21,'18','ue8ojc','东升农场油麦菜','uploads/20170923/77da36f28f8b1fd8cdc1b6daa8598556.png','uploads/20170923/12dbc65c4f2e7e84699e4862f5594dc3.png','uploads/20170923/bd1e2b76bad841790fdc12b8d610ff5e.png','','','我们的油麦菜是无公害油麦菜，口感鲜嫩。并且我们拥有先进的育苗技术，纯绿色蔬菜。有意者可私信我或者拨打我的电话。','0201',1),(22,'18','gkb2jz','智利进口帝王蟹','uploads/20170923/fc8fa2bcb20b2febf03f08620d8ff26e.png','uploads/20170923/e86cfaf146106c9ae288cf6f1ac23559.png','uploads/20170923/61ffe660462c0c624b86917d26955ee9.png','uploads/20170923/d7c8d0471d5df3955e9a43eda65c2e67.png','uploads/20170923/0ca1903f135bd0b452148c38f845b16b.png','帝王蟹属于深海蟹类，生存深度达850米之深，生存水温在2到5摄氏度，其肉质多而结实，入嘴爽口无比，腿肉饱满鲜美，值得一购。有意者可私信我或者拨打我的电话。有意者可私信我或者拨打我的电话。','0301',1),(23,'18','elfxdo','鲜厨易日式乌冬面','uploads/20170923/78d0b265786f3541d14bbce4e20b9254.png','uploads/20170923/d85bf528cd5642e55c54875512ae73a9.png','uploads/20170923/d1a71c20252bfa7a273a1d47d43e1312.png','uploads/20170923/2000de5bf4f4967e40d2986604473a58.png','','乌冬面，水煮型速食面，小麦粉为原料、采用现代设备、先加工艺制作、晶莹爽滑、绵香浓郁有营养、是您使用馈赠亲友食品！有意者可私信我或者拨打我的电话。','0401',1),(26,'18','lgchkj','野菊花','uploads/20170923/e1b885644c3911476559c29e55bed13b.png','uploads/20170923/42126c016e8b5921f28e0d567b1c71b3.png','uploads/20170923/33eaa45b4e22277e383152e35df3de66.png','','','在《本草纲目》中有记载：并且经现代研究发现，野菊花之所以能“ 主要是其含有微量龙脑、樟脑和菊油环酮等挥发油。有意者可私信我或者拨打我的电话。','0501',1),(27,'18','pdtg2n','罗汉松树桩盆景','uploads/20170923/4c60876eb528ee2facb22b13a1aca163.png','uploads/20170923/9ff4a567b21bc87dc022092ce284525d.png','uploads/20170923/2084e7e175d270933f2e44c03af37984.png','uploads/20170923/f2b3a8bea654cdfe2bf0970b94416d20.png','','在中国传统文化中罗汉松象征着长寿、守财，寓意吉祥。在广东地区民间素有‘’家有罗汉松，世世不受穷“的说法。中国古代官员亦喜在庭院种植罗汉松，视它为自己官位的守护神。有意者可私信我或者拨打我的电话。','0701',1),(28,'22','74hn0p','海南黄肉菠萝蜜','uploads/20170923/4df6597a3a053a3b417b1fa4e9a0f54b.png','uploads/20170923/c53a81d973ce9a04f53140160b8fe110.png','uploads/20170923/0373d3ac03afd1f5fd1916848d0e1e65.png','uploads/20170923/e06d3b706ce80f729577f52a69011dcb.png','','海南菠萝蜜果肉肥厚柔软，清甜可口，香味浓郁，风味独特，清甜Q弹，奇香袭人，不仅好吃，而且营养丰富。有意者可私信我或者拨打我的电话。','0101',1),(29,'22','h9mh94','海南三亚四季豆','uploads/20170923/f89012396dd21384a386917e518dc9dd.png','uploads/20170923/9f29035c28ff1cd5bf4fb2116d62b2cf.png','uploads/20170923/fb1c68dbe304bb7e7eb19d8e0236b9ee.png','uploads/20170923/93013f34d73ab1411725726630917442.png','','四季豆富含蛋白质、维生素、多种矿物质，营养成价值高，被人们称作是“绿色金子”。四季豆所含维生素E、胡萝卜素、铁、钙、锌、钾等成分的含量较高，远远超过其他蔬菜。有意者可私信我或者拨打我的电话。','0201',1),(30,'22','jvvde0','海南三亚冰鲜马鲛鱼','uploads/20170923/afc2796606cc2fdf1d381fde74cf8a7d.png','uploads/20170923/9ee34056d10330d960e76633b411bdd9.png','uploads/20170923/71105538c06bcd3be5c3160c23c25214.png','uploads/20170923/fe1ac18b47fdb80bb17fe6b37f88d498.png','','马鲛鱼鱼质鲜嫩洁白，糯软鲜爽，营养丰富味道鲜美，刺少骨香，素有“马鲛鱼的骨头香满街”之美名。滋补营养，可谓人间美味。有意者可私信我或者拨打我的电话。','0301',1),(31,'22','umsyio','花生油农家自榨现榨','uploads/20170923/fb161b8bf6d7dc61c727a7297a1c30e4.png','uploads/20170923/2a13e10f3c0fa75867e65fa1f4241309.png','uploads/20170923/741f831daa581e64eba281f4796dfa27.png','uploads/20170923/8b47ad532078a971cc5509df02f32fbb.png','','我们榨油用的花生米都是我们自己种植的，我们莒南县是全国花生产量第一县，是“花生之乡”，我们这边主要的经济作物就是花生，我们这边的四季气候和山地丘陵地形非常适合花生的生长。有意者可私信我或者拨打我的电话。','0401',1),(32,'22','y6dym3','海南三亚特产昌茂菠萝蜜干果','uploads/20170923/524d5abfe78b63cf3c6c2d78bdff0269.png','uploads/20170923/885593af690067c9124a8658571c2b11.png','uploads/20170923/9049104d6c71cd71caae5cb45e73a9a8.png','uploads/20170923/6aaffb8eea34401686e23571839a3ee5.png','','我们的菠萝蜜干由美味的菠萝蜜为原料，精心制作而成，酥脆美味，咬一口，嘎嘣脆。果香浓郁口感佳，清新果香挡不住。有意者可私信我或者拨打我的电话。','0501',1),(34,'20','fbmn4j','黄心大白菜 1~2斤','uploads/20170923/f3e15ea08317428a8f2db0e93e0c9b97.jpeg','uploads/20170923/d96a2fa09dc3e0f8fbb66c56d718e0ac.jpeg','uploads/20170923/e55f65b4f36a2b293ed5ef6f4ba2c4a1.jpeg','','','新鲜大白菜，农家种植，现摘现供，拒绝农药，放心食材，鲜嫩水灵，无添加剂，放心吃，从菜地到舌尖，享受天然无加工，确保新鲜度，施农家肥，清脆可口，放心吃，有意者可私信我或者拨打我的电话。','0201',1),(36,'20','7m01kh','球生菜 ','uploads/20170923/0ab3aa6089357bb13d4ea04e70c59bcb.jpeg','uploads/20170923/a27588427696b4ab479402efd7c04945.jpeg','uploads/20170923/4d0d1e3e011702d18c680c14695284f4.jpeg','uploads/20170923/8f3e7b464e15931cb5625d47f2b91f38.jpeg','','新鲜汉堡球生菜沙拉菜，农家种植，包邮~特别提醒；由于夏季气温太高，生菜容易腐烂，比较远的地区（内蒙 黑龙江 吉林 江西  浙江 湖南 甘肃 广东 广西 云南 贵州 四川 重庆 福建 ）以及乡镇村都要加冰发货，我们和快递定的5斤一个件，以上这些地区只能发4斤+1斤冰，希望买家理解支持。有意者可私信我或者拨打我的电话','0201',1),(37,'20','i4c9gb','平韭6号韭菜','uploads/20170923/32d2516464e60ef53c593ba3b24387fd.jpeg','uploads/20170923/6cf0df1145b1d36333617b1ca898d440.jpeg','uploads/20170923/dc2e8291db9205ca40fdf288ee80a569.jpeg','uploads/20170923/a6f36ed8703f74d8b82bd15433e7d2dc.jpeg','uploads/20170923/30ae39bc68acff7599d4d20299dd251b.jpeg','我们家的韭菜品质优良，卖相好，四季可栽，栽后适温条件下15天后即可采割食用。现拍现栽，如果您有需要的话可以私信我或者拨打我的电话。','0201',1),(38,'20','d7rbad','紫色木耳','uploads/20170923/979097794e99984a6f8a84c6b2e9c6f1.jpeg','uploads/20170923/1ed191d823cf1082b6e42358108a7a37.jpeg','uploads/20170923/ca9df8e47c578d48417bfc6a0b48f485.jpeg','','','我们的大兴安岭木耳，有野生，代栽，木段栽，质量全中国最佳，炒后不泥。并且营养美味，色泽饱满，朵大分明，肉厚细密，健康绿色，黝黑的外表，像男人的情怀。口感似女人的温柔。 有意者可私信我或者拨打我的电话。','0201',1),(39,'19','62fi4b','大叶菠菜','uploads/20170923/c1a606303910fab884c072ad4f9cc913.jpeg','uploads/20170923/c71f2f3f535fc889a5b8e2f613509487.jpeg','uploads/20170923/79b2ed3c99aaed5e4ae1559388d280ce.jpeg','','','自家种植，产量大，不打农药，叶大，叶亮，耐运输，好吃，手工好。有意者请私信我或者拨打我的电话','0201',1),(40,'19','3rnxks','小叶香菜','uploads/20170923/1e062f70a79e853c5ce833343ad695b4.jpeg','uploads/20170923/3810a4797e0317b46152116b14a542ec.jpeg','uploads/20170923/113ee08108e0dfa716affb38e8ddb291.jpeg','uploads/20170923/2a51aec4f72396bb092e9ead2d1a356d.jpeg','','该香菜产自泰安顺达，本人亲自种植，无药无害，绿色种植，我们的香菜有汗透疹，消食下气，醒脾和中的功效；主治麻疹初期， 香菜的图片(20张)透出不畅及食物积滞、胃口不开、脱肛等病症。有意者请私信我或者拨打我的电话。','0201',1),(41,'19','ow6vyh','秋葵','uploads/20170923/5ad3ca3de481b46c32b940787601abaa.jpeg','uploads/20170923/fbe9cc199c5e9c53cbff5d2cce37e172.jpeg','uploads/20170923/a8b3c99a8c6b015d9b5a5e5cc47f3d22.jpeg','','','我们自种的秋葵是今年刚刚产出的，其具有补肾，美容养颜，降血糖，保护肠胃，减肥，抗肿瘤，消除疲劳扥功效，但是胃肠虚寒、功能不佳、经常腹泻的人不可多食。有意者可私信我或者拨打我的电话。','0201',1),(42,'18','uunpqo','青岛海捕大虾14cm','uploads/20170923/d842a0c99f2e6196e2b9bdae47e0fbc0.png','uploads/20170923/7af96da6ef24c379c3c735c650fc0313.png','uploads/20170923/f02a393d5ce14bd59ccaf2f4c264cf7d.png','uploads/20170923/a8771e33ef155a04a03796d529a873ce.png','uploads/20170923/bac91f5f5abcbdc3447dd9adaa5f9a56.png','青岛大虾，新鲜海捕，饱满紧实，物流便捷，货源充足，品质优良，口感纯正。欢迎大家前来选购，可惜私信我或者拨打我的电话。','0301',1),(43,'18','htc05v','新鲜海捕大红虾单只18cm','uploads/20170923/921b7f5cdb4e98b9c2284e65d796ced8.png','uploads/20170923/e3388b570eab75029eac21c3b8961d31.png','uploads/20170923/3ed3f6761352d2da54b74936f4367cd3.png','uploads/20170923/480dd2da7847607cdbb617bf924a7cc9.png','uploads/20170923/cf3fb894829c1632b470e4c33f5e849f.png','该虾产自阿根廷，新鲜肥美，将近20cm的一只大虾，可以用新鲜食材简单烹饪，风味鲜美。有意者可私信我或者拨打我的电话。','0301',1),(44,'18','q6ilhj','野生海捕籽乌','uploads/20170923/5ec487d1ed911ad885fea161f36560b2.png','uploads/20170923/122a94518aba450f8aee6764841d46cd.png','uploads/20170923/02510982118103b327a495c30ed74e01.png','uploads/20170923/d8340893304ef36ac79f35a30f0b2ef9.png','uploads/20170923/03ecf80ccf79f0bb960f844f4e942bf5.png','青岛特产，鲜美全籽籽乌，圆润剔透入口鲜嫩饱满筋道，含有丰富的蛋白质，不饱和脂肪酸以及多种维生素，营养味美。充分保留籽乌的原始鲜美，入口鲜嫩，饱满劲道，鲜香味美香甜无腥味。有意者可私信我或者拨打我的电话。','0301',1),(46,'23','g27jfs','水晶富士 85mm以上 片红 膜袋','uploads/20170923/71af556e65052e541dc8937dd8cc4fba.jpeg','uploads/20170923/5d40c0d7ba6688686b93285e427cf71c.jpeg','uploads/20170923/7bc2cebf5666e0308dd61ac0e08724ae.jpeg','uploads/20170923/a7fe6e48aa06ada23aa4460feb017802.jpeg','uploads/20170923/070ea5ba709256b6f4abdc9656f085a4.jpeg','包邮哦！净重10斤／箱，18个左右，双层网套，格挡垫板，一箱起售。 新疆，西藏+20元/箱；内蒙，+5元/箱。未尽事宜另行协商。 上市期2017-10-10日左右。','0101',1),(47,'15','f3fgki','金花一号 8斤打底 9成熟 1茬 有籽','uploads/20170923/31163aa1ad3909f915ec597b3cebb636.jpeg','uploads/20170923/ca5a21bfdd3fe97ea191b9e3cdc4fd94.jpeg','uploads/20170923/cdf7f1b5caeab9fbc58a19f478c756c3.jpeg','uploads/20170923/23936f5dfc9e59a417390f78dcded8bc.jpeg','uploads/20170923/3abfab75d7d467e9baef1b476fdbd763.jpeg','自家种植的西瓜，不打农药，环保种植，含糖量高，大红瓤，口感好，交通便利，起货快 。有意者请私信我或者拨打我的电话。','0101',1),(48,'21','c02kf5','水库鲤鱼 人工养殖  自养自销！','uploads/20170923/b8190b9c312959f7cfe7546c95ebc058.jpg','uploads/20170923/e636244caa8cdb6248bc5211bad27cb7.jpeg','uploads/20170923/64e95762de12312c3f35b85bba468553.jpg','uploads/20170923/6fd0db5da7f09fe0e0d44c679d725250.jpeg','uploads/20170923/eb6f4bd47531c7b0706665fa0a7dc64f.jpg','    广西鱼苗批发养殖场位于广西南宁市宾阳县，专业养殖鱼苗上百年历史，养殖鱼塘水库上万亩，所属场地广阔设施齐全，交通运输十分方便。电话：18978875979\n    集淡水鱼繁殖、驯养科研、开发为一体的高科技鱼苗养殖，拥有丰富的鱼苗养殖经验。多年来我鱼场秉承诚信质量第一以客户满意为准则与客户互利共赢，鱼苗运销全国各地，凭多年的研究和经验积累，所产鱼苗质量好，成活率高，赢得广大客户好评如潮。 本养殖场有从事水产养殖多年的专业养殖人员，特别在鱼苗养殖方面，在众多同行中可算绞绞者。有意者可私信我或者拨打我的','0301',1),(49,'21','pvxjsl','野生黄鳝 野生','uploads/20170923/048fda4bdbe6f3f15bb0f17bb1e9645d.jpg','uploads/20170923/6ede2d40dddc59469f8509328577935f.jpg','uploads/20170923/74ebe2ea3b8c891d48a24f8d5c5357a7.jpg','uploads/20170923/c8e899292e472ca590952522d5ab785a.jpg','uploads/20170923/0d667fbe1451bdfc66254a2dbdcd3804.jpg','野生清水河白鳝鱼，头粗尾细，体表有一层光滑的粘膜保护去，无鳞，色泽黄褐色，体则有不规则的暗黑斑点，各鳍不发达基本消失，全身只有一根三棱刺，刺少肉厚。肉嫩味美。自己捕捞的，有意者可以私信我，或者打我电话。','0301',1),(50,'12','zw0toe','富硒雪莲果 6两以上','uploads/20170923/ed14eed992041e1470b1fc3ff3a0caba.jpeg','uploads/20170923/11057099aefb023ba44748903f10d831.jpeg','uploads/20170923/5172e71726329b3900d40f93fc2ffcf9.jpeg','uploads/20170923/fd928990a01f92de2f7a5c1fa01b9b85.jpeg','uploads/20170923/f562f2ef748ccc3b89da500e0b09d582.jpeg','雪莲果生长在武陵山地区海拔达1000米以上的土壤中，富含天然有机硒，对人体保健十分有利。雪莲果含水溶性纤维高达60％~70％，果寡糖含量是所有植物中最高，同时，含极高的钙、铁、锌、硒、镁、钾等微量元素和20多种人体必须的氨基酸。常吃雪莲果能解除人体［自由基］有很好的效果，被称为【地下水果之王】！山里人吆喝“吃出健康的养生水果”！    硒的作用及功效抗氧化,抗衰老：保护,修复细胞：提高红细胞的携氧能力，抗污染，富硒雪莲果精品彩箱礼盒，畅销全国各地！赢得消费市场的好评！武陵山富硒雪莲果，生熟两吃，消除便秘。','0101',1),(51,'13','ypqy4n','米良1号猕猴桃 70克以上 绿心','uploads/20170923/01b1974df152982e3878e75ff5bc1d49.jpg','uploads/20170923/1bddde0c57023b93faa967761812b96d.jpg','uploads/20170923/ebf1bedc32b8a28cf23877087cb79a2e.jpg','uploads/20170923/f4b8fb602e18c9b683a7047d649d549c.jpg','uploads/20170923/7234f492a753911daffd9eaf2e5af272.jpg','米良1号”果实较大，纵径7.5～7.8cm，横径4.6～4.8cm，平均果重86.7g，最大果重170.5g，果实长圆柱形，美观整齐，果皮棕褐色，被长茸毛，果喙端突起；果肉黄绿色，汁液多，酸甜适度，风味纯正具清香，品质上等，果肉含可溶性固形物15%～19%，总糖7.4%，维生素C含量2070mg/kg，有机酸1.25%。果实在室温下可贮藏20～30d，耐贮性强。在武汉植物园栽培评价显示，平均果重79.4g左右，软熟（硬度2.31kg/cm2）果实可溶性固形物16.04%，总糖9.55%，总酸1.41%。有','0101',1),(52,'14','77arth','毛蛤 野生 10-20只/公斤','uploads/20170923/10b1b47cd81f27082f5d8f73f6862b15.jpg','uploads/20170923/86e4b25806d435e4073cc4b4978fc738.jpg','uploads/20170923/3ba32974bca83bb94ade9f94b17b2faa.jpg','uploads/20170923/90f4d4c8c445eecf9949893713eb0493.jpg','uploads/20170923/1cbc8673ae92c055737ca596c151c708.jpg','该毛蛤生活在内湾浅海低潮线下至水深十多米的泥砂底中，尤喜于淡水流出的河口附近，以4-8米居多。其具有健脑、健脾胃、明目、润肠、美肤养颜等功效，但需注意的是不能与凉寒食物、啤酒、葡萄酒等同食，皮肤病患者禁食！这些毛蛤都是我们家亲自捕捞的，有意者可私信我，或者拨打我的电话。','0301',1),(53,'15','ypz4ib','香蜜杏 40-45mm 80-90克','uploads/20170923/5214d36910ecb83ff4b7ee63e5e2b23b.jpg','uploads/20170923/b87f1aea9643ed8b31af353671466d7d.jpeg','uploads/20170923/6b01e2712c7b9a3153db6a2fc122cadc.jpeg','uploads/20170923/f6a758b15526e6b553bbfde967230847.jpeg','uploads/20170923/40b2690dcf464afa2789c2f6022459db.jpeg','香蜜杏荷兰香蜜杏口感蜜甜浓香味，离核仁甜，糖度18.9，均果重56g，烟台地区8月下旬至9月上旬成熟。特耐贮运货架期长常温七八天可冷藏45天。有意者可私信我或者拨打我的电话。','0101',1);
/*!40000 ALTER TABLE `media_provide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_substitutes`
--

DROP TABLE IF EXISTS `media_substitutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_substitutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序id',
  `substitutes_id` varchar(50) NOT NULL COMMENT '信息id',
  `title` varchar(100) NOT NULL COMMENT '代养标题',
  `label1` varchar(20) NOT NULL COMMENT '代养标签1，用于搜索',
  `label2` varchar(20) NOT NULL COMMENT '标签2',
  `label3` varchar(20) NOT NULL COMMENT '标签3',
  `label4` varchar(20) NOT NULL COMMENT '标签4',
  `content` varchar(2500) NOT NULL COMMENT '代养信息内容',
  `cover_img` varchar(50) NOT NULL COMMENT '图片数组（以逗号隔开）',
  `quotes` varchar(10) NOT NULL COMMENT '初步报价',
  `time` varchar(50) NOT NULL COMMENT '发布时间',
  `announcer_id` varchar(100) NOT NULL COMMENT '发布者',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_substitutes`
--

LOCK TABLES `media_substitutes` WRITE;
/*!40000 ALTER TABLE `media_substitutes` DISABLE KEYS */;
INSERT INTO `media_substitutes` VALUES (6,'4xsam0','墨西哥玉米','玉米','玉米种植','玉米认养','墨西哥玉米','<h3 style=\"text-align:left;color:#555555;text-indent:2em;\">\n	<span style=\"font-family:Microsoft YaHei;\"><strong>项目详情：</strong></span> \n</h3>\n<p style=\"text-align: left; color: rgb(85, 85, 85); text-indent: 2em;\" font-size:14px;background-color:#ffffff;\"=\"\"><span>墨西哥玉米草是由国外引进的一年生草本植物，是遗传稳定的饲草新品种。</span> \n	</p>\n<p style=\"text-align: left; color: rgb(85, 85, 85); text-indent: 2em;\" font-size:14px;background-color:#ffffff;\"=\"\"><span>其株高3-4米，分蘖能力强，每丛有分枝30-60多个，有的高达90多个。</span>\n</p>\n<p style=\"text-align: left; color: rgb(85, 85, 85); text-indent: 2em;\" font-size:14px;background-color:#ffffff;\"=\"\"><span>茎秆粗壮，枝叶繁茂，质地松脆，具有甜味，牛、羊、猪、鱼、鸡、鸭、鹅都喜食。此草对土壤要求不严，我国大部分农区都可种植。生长期为180-230天。再生能力强，年刈割7-8次，每667平方米（1亩）产茎叶1-3万公斤，营养丰富，粗蛋白含量为13.68%，粗纤维含量22.73%，赖氨酸含量 0.42%。消化率较高。投料22公斤即可养成1公斤鲜鱼。用它喂奶牛，产奶量比喂普通饲料提高5%。</span>\n	</p>\n<p style=\"text-align: left; color: rgb(85, 85, 85); text-indent: 2em;\" font-size:14px;background-color:#ffffff;\"=\"\"><br />\n</p>\n<div style=\"text-align:center;\">\n	<img src=\"http://tuliu-img.img-cn-hangzhou.aliyuncs.com/govpg/2017/06/145940f961f3ea6.jpg\" width=\"600\" height=\"402\" alt=\"\" /> \n</div>\n<p style=\"text-indent:2em;\">\n	<br />\n</p>\n<p style=\"text-align:center;text-indent:2em;\">\n	<span style=\"font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"><img src=\"http://tuliu-img.img-cn-hangzhou.aliyuncs.com/govpg/2017/06/145940f95e54450.jpg\" width=\"600\" height=\"431\" alt=\"\" /><br />\n</span> \n</p>\n<p style=\"text-align:left;text-indent:2em;\">\n	<br />\n</p>\n<div class=\"pd-cont-ti\" style=\"margin:0px 0px 12px;padding:0px 0px 5px;font-size:16px;font-weight:700;color:#333333;\">\n	项目优势\n</div>\n<div class=\"pd-cont-p\" style=\"margin:0px 0px 40px;padding:0px;font-size:14px;color:#555555;\">\n	<p>\n		1、墨西哥玉米草生长快、产量高、适应性强、栽培技术简单。\n	</p>\n	<p>\n		2、经济效益极为可观。\n	</p>\n	<p>\n		3、土流网可以充分发挥土地流转服务优势，为种植者或项目投资方提供合适规模的优良土地，保障项目合作方迅速获得合适的种植场地。\n	</p>\n	<p>\n		4、土流网为投资方或种植户提供科学可靠的种植管理技术和符合当地生产条件的优良的玉米草种苗，确保项目能够顺\n	</p>\n</div>','uploads/20170919/20170919081005.png','2000','1504143360','9'),(7,'mg7bwr','开心农场果树认养出租果树','农场','农家乐','郊区游','果树认养','<p style=\"text-align:center;\">\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\">果树出租个人承包一直等到果树采收完毕承包者只要出一‌‌定的费用就可以认领一颗果树我们履行管理</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\">你承包的果树一</span><span style=\"color:#666666;\">直到采摘结束等了一年了不可能不要果实吧一颗树大约结果300--400斤承包费</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#666666;\">用在1500元左右从春天</span><span style=\"color:#666666;\">直到秋天我们的果树品种是金帅梨树挑树杏树也可以的有兴趣的朋友若想认领</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\">可以联系我有合作的团队到采摘其也可以采摘非诚勿扰 &nbsp;</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\"><br />\n</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\"><img src=\"https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&amp;quality=100&amp;size=b4000_4000&amp;sec=1504923798&amp;di=c5860f2fb911fa4b1054ae463415dfb2&amp;src=http://imgsrc.baidu.com/imgad/pic/item/b64543a98226cffcf6d884adb3014a90f603ea3b.jpg\" width=\"512\" height=\"341\" alt=\"\" /><br />\n</span> \n</p>\n<p>\n	<span style=\"color:#666666;font-family:\" font-size:18px;background-color:#ffffff;\"=\"\"><br />\n</span> \n</p>','uploads/20170919/20170919091714.png','300元一棵/年','1504923960','9'),(22,'qkjagt','2018年板栗挂果速速预定','栗子','板栗认养','干果之王','板栗','<p style=\"text-align:center;\">\n	&nbsp;&nbsp;&nbsp;&nbsp;本人家中有一片<span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">板栗树，品种极好，长出的<span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">栗子吃起来又美味又香，基本上年年长满</span><span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">栗子，</span></span> \n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"><span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">现出售下一年的</span><span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">板栗树长出来的果实，</span></span><span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">有意向者可以私信我。</span><span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"></span> \n</p>\n<p style=\"text-align:center;\">\n	<span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919095115_65568.jpg\" alt=\"\" />&nbsp; &nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919095115_59660.jpg\" width=\"500\" height=\"333\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919095115_43445.jpg\" width=\"500\" height=\"430\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919095116_43848.jpg\" width=\"500\" height=\"358\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919095116_74517.jpg\" width=\"500\" height=\"375\" alt=\"\" /><br />\n</span> \n</p>\n<p style=\"text-align:center;\">\n	<br />\n</p>\n<p>\n	<span style=\"color:#555555;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">&nbsp; &nbsp;</span> \n</p>','uploads/20170919/20170919093500.png','300元一颗/年','1505807580','20'),(23,'ffx0l1','乌骨鸡认养','鸡蛋','鸡 ','乌骨鸡认养','乌骨鸡','<p style=\"text-align:center;\">\n	<strong><span style=\"font-size:16px;\">本人有乌骨鸡幼崽一批，有需求的可以与我联系，本人承诺会定期上传小鸡成长情况，</span></strong>\n</p>\n<p style=\"text-align:center;\">\n	<strong><span style=\"font-size:16px;\">让认养用户能及时知道自己认养的小鸡的成长情况，直到小鸡成长成成年鸡。</span></strong>\n</p>\n<p style=\"text-align:center;\">\n	<strong><span style=\"font-size:16px;\">并且承诺如果此过程中小鸡所下的蛋归认养者所有。以下是去年成年乌骨鸡的图片</span></strong>\n</p>\n<p style=\"text-align:center;\">\n	<strong><span style=\"font-size:16px;\"><img src=\"/static/kindeditor/php/../attached/image/20170919/20170919101801_75970.png\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919101801_62555.jpg\" width=\"592\" height=\"479\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919101802_88483.jpg\" width=\"592\" height=\"444\" alt=\"\" />&nbsp;<img src=\"/static/kindeditor/php/../attached/image/20170919/20170919101802_38773.png\" width=\"592\" height=\"380\" alt=\"\" /><br />\n</span></strong>\n</p>\n<p style=\"text-align:center;\">\n	<br />\n</p>','uploads/20170919/20170919100753.png','300元/只','1505809140','19');
/*!40000 ALTER TABLE `media_substitutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_supplier`
--

DROP TABLE IF EXISTS `media_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_supplier` (
  `sort_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '排序ID',
  `id` varchar(100) DEFAULT NULL COMMENT '商家ID',
  `loction` varchar(100) DEFAULT '120.34217,30.31747' COMMENT '商家定位',
  `business_introduce` text COMMENT '商家介绍',
  `statistical_table` varchar(255) DEFAULT NULL COMMENT '统计表',
  `currently_available` varchar(255) DEFAULT NULL COMMENT '当前提供表',
  `comment` varchar(255) DEFAULT NULL COMMENT '用户评价表',
  `purchase_notes` varchar(100) DEFAULT NULL COMMENT '购买须知表',
  PRIMARY KEY (`sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_supplier`
--

LOCK TABLES `media_supplier` WRITE;
/*!40000 ALTER TABLE `media_supplier` DISABLE KEYS */;
INSERT INTO `media_supplier` VALUES (1,'9','120.34217,30.31747','<p style=\"text-align:center;\">\n	&nbsp;大量出售新鲜的<strong class=\"keylink\">无花果</strong>。<strong class=\"keylink\">马</strong>上就要成熟了。欢迎各位商家前来洽谈。\n</p>\n<p style=\"text-align:center;\">\n	无花果的整形修剪较简单，修剪整形技术要求不高，一般采用多主枝自然开心形整枝方式，但要全株保留3—5条主枝，不留侧枝，主枝组直接着生在主枝上。幼树期间重点抓好培养主枝，并注意抬高主枝角度，促进多发枝条，达到迅速扩大树冠的目的。进入初果期后，抓好多培养枝组，以便促进形成一定的产量。盛果期时注意培养骨干枝，更新大中型枝组剪缩弱枝组。对树势衰老或病虫害严重的，可利用基部或枝上发出的萌蘖枝或隐芽，重新培养主枝和枝组。\n</p>\n<p style=\"text-align:center;\">\n	无花果从7月中旬开始，陆续到11月份成熟。无花果的采摘一般宜在晴天的早晨或傍晚进行，见已成熟的果实顶端有一小孔微开，果皮出现固有品种（多分红、黄品种）的色泽时，采摘。过熟的果实采后不耐贮藏和运输。 &nbsp;\n</p>\n<p>\n	<img src=\"/static/kindeditor/attached/image/20170919/20170919090230_59221.jpeg\" alt=\"\" /> \n</p>',NULL,NULL,NULL,NULL),(16,'24','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL),(3,'11','120.34212,30.31744',NULL,NULL,NULL,NULL,NULL),(2,'10','120.34342,30.31732','我的介绍',NULL,NULL,NULL,NULL),(4,'12','120.34217,30.31747','<p>\n	<strong>本人做代办，经验丰富，诚信合作，互惠互利！元谋全年供应<strong class=\"keylink\">圣女果</strong>（小<strong class=\"keylink\">番茄</strong>）！</strong>\n</p>\n<p>\n	<strong>货源充足，欢迎全国客商前来洽谈业务，本人将竭诚为您服务，带你与果农面对面谈价！</strong>\n</p>\n<p>\n	<strong>帮你找到最可靠的货运物流，让您低价收到最好的果子！</strong>\n</p>',NULL,NULL,NULL,NULL),(5,'13','120.34217,30.31747','<p>\n	西眉县被誉为“中国<strong class=\"keylink\">猕猴桃</strong>之乡”，位于秦岭主峰太白山脚下，地理位置优越，这个徐香<strong class=\"keylink\">猕猴桃</strong>全程有机种植，催熟后清甜可口。\n</p>\n<p>\n	&nbsp;从果园到舌尖，只需要一个快递的距离！我们坚持纯天然原生态，我们只是大自然的搬运工！\n</p>\n<p>\n	我们的果子都是果园现摘现发，不使用催熟剂，不打蜡，不染色，不浸泡保鲜剂，不存在催熟剂，，香甜可口，营养丰富，维C之王，孕妇小孩老人的必备水果.....<strong class=\"keylink\">眉县猕猴桃</strong>，开园啦……\n</p>\n<p>\n	品名：徐香猕猴<strong class=\"keylink\">桃</strong> 别名：奇异果\n规格：徐香5斤/箱  10斤/箱    \n价格：50/箱  100元/箱    \n特点：香甜，新鲜，多汁，现摘现发\n快递：包邮（偏远地区需附加邮费）\n</p>\n<p>\n	&nbsp;支付方式：微信红包、转账皆可。&nbsp;\n</p>',NULL,NULL,NULL,NULL),(6,'14','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL),(7,'17','110.32657,19.69948',NULL,NULL,NULL,NULL,NULL),(8,'16','104.55327,30.393916','<strong>（油<strong class=\"keylink\">桃</strong>）五月火，早油王，雪<strong class=\"keylink\">桃</strong>，中油9，早红株，曙光，丽春，艳光，中油4，中油5.华光，126等多个品种，供应时间3-7月；<br />\n（<strong class=\"keylink\">甜瓜</strong>）京玉、伊丽莎白、一窝狼、黄皮、金蜜、花皮等，供应时间3月中旬-6月下旬<br />\n（<strong class=\"keylink\">苹果</strong>）	藤木、珊夏、嘎啦、美八、红星纸袋、膜袋、乔纳金、黄金帅、红将军、红<strong class=\"keylink\">富士</strong>纸袋、膜袋、库存<br />\n（<strong class=\"keylink\">樱桃</strong>） &nbsp;红灯 &nbsp; 美早 &nbsp;水晶 &nbsp; 等 另有（<strong class=\"keylink\">土豆</strong>） &nbsp;（西蓝花） （有机菜花）等 我处交通相当便利，柏油路四通八达，京欣系列大量上市。本地市场规范，绝不存在敲诈客户行为，市场有专人挑瓜代理运输</strong>',NULL,NULL,NULL,NULL),(9,'15','120.34447,30.31836','<p>\n	东红将军苹果- &nbsp;红富士苹果&nbsp;\n</p>\n<p>\n	产地可挑级采购，保证做到苹果的质量，确保您无烂果，无小果，等级明细，无孬果上车；\n</p>\n<p>\n	产地中心设有空车配货，确保配货及时，发车准时发车\n</p>',NULL,NULL,NULL,NULL),(10,'18','110.35889,19.681434',NULL,NULL,NULL,NULL,NULL),(11,'21','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL),(12,'22','110.35889,19.681434',NULL,NULL,NULL,NULL,NULL),(13,'20','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL),(14,'19','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL),(15,'23','120.34217,30.31747',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `media_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_user`
--

DROP TABLE IF EXISTS `media_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `face_token` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `birthday` varchar(200) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `id_card_number` varchar(300) NOT NULL,
  `race` varchar(100) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `nick_name` varchar(300) NOT NULL,
  `head_image_url` varchar(200) NOT NULL DEFAULT 'static/kindeditor/attached/image/20170707/20170707055214_67483.jpg',
  `login_loction` varchar(100) NOT NULL,
  `collection` varchar(1000) NOT NULL,
  `my_home_page_bg` varchar(100) NOT NULL DEFAULT 'static/index/images/polygon.png',
  `supplier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_user`
--

LOCK TABLES `media_user` WRITE;
/*!40000 ALTER TABLE `media_user` DISABLE KEYS */;
INSERT INTO `media_user` VALUES (9,'1d82059fdec362bdda788ff021e66775','石忠成','e10adc3949ba59abbe56e057f20f883e','浙江省杭州市江干区白杨街道学林街1134号文一苑','1996-06-13','男','522623199606133636','苗','18258205329','偷得浮生','uploads/20170922/20170922151745.png','120.34529,30.31737','_dy_12,_dy_8,_dy_7,_dy_13,_ur_11,_ur_10,_ur_15,_ur_13,','uploads/20170924/d44204b199cc78904a8f1c40661f3337.jpg',1),(10,'','石焱','e10adc3949ba59abbe56e057f20f883e','浙江省杭州市江干区白杨街道学林街1134号文一苑','1996-06-13','男','522623199606133636','苗','18258205321','云中谁忆','uploads/20170922/20170922151916.png','120.34212,30.31744','_ur_9,_ur_15,','static/index/images/polygon.png',1),(11,'','石淼','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205322','地球是我捏圆滴','uploads/20170922/20170922151859.png','120.34212,30.31744','','static/index/images/polygon.png',1),(12,'','刘一明','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205323','坐看青苔','uploads/20170922/20170922152708.png','120.34212,30.31744','','static/index/images/polygon.png',1),(13,'','张小飞','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205324','BlockStone','uploads/20170922/20170922153227.png','120.34212,30.31744','','static/index/images/polygon.png',1),(14,'','刘子港','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205325','断退路','uploads/20170922/20170922153358.png','120.34212,30.31744','','static/index/images/polygon.png',1),(15,'','李名','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205320','飘雪无垠\n','uploads/20170922/20170922152500.png','120.34524,30.31727','_dy_12,_dy_26,_ur_9,_dy_9,_ur_10,','static/index/images/polygon.png',1),(16,'','Levin','e10adc3949ba59abbe56e057f20f883e','','','','','','15968158355','Levin','uploads/20170919/20170919075846.png','120.34207,30.31736','_ur_10,','static/index/images/polygon.png',1),(17,'','dpa','e10adc3949ba59abbe56e057f20f883e','','','','','','159','dpa','uploads/20170923/20170923044856.png','110.32657,19.69948','','static/index/images/polygon.png',1),(18,'','吴铭','e10adc3949ba59abbe56e057f20f883e','','','','','','15324687785','小铭','uploads/20170919/20170919075613.png','120.345,30.31829','_ur_21,_dy_12,_ur_13,_ur_10,_ur_9,','static/index/images/polygon.png',1),(19,'','杨立辉','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205326','方便面头','uploads/20170922/20170922152826.png','120.34577,30.31737','','static/index/images/polygon.png',1),(20,'','李浩宇','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205327','淘气蛋','uploads/20170922/20170922152147.png','120.34577,30.31737','','static/index/images/polygon.png',1),(21,'','张天佑 ','e10adc3949ba59abbe56e057f20f883e','','','','','','18258205328','骑着小毛驴带你环游世界','uploads/20170922/20170922152437.png','120.345,30.31829','','static/index/images/polygon.png',1),(22,'','陈胜','e10adc3949ba59abbe56e057f20f883e','','','','','','15922475287','小胜','uploads/20170919/20170919090001.png','120.34447,30.31836','','static/index/images/polygon.png',1),(24,'507fdfbadb6edce183d5efe039d52abc','吴怡蒲','e99a18c428cb38d5f260853678922e03','海南省定安县定城镇江南社区人民中路63-1号','1997-06-24','男','460025199706240019','汉','15968144469','闲小菜','static/kindeditor/attached/image/20170707/20170707055214_67483.jpg','120.34529,30.31737','_ur_16,','static/index/images/polygon.png',1),(23,'','','e10adc3949ba59abbe56e057f20f883e','','','','','','18958174191','农夫山泉','uploads/20170922/20170922153540.png','120.34223,30.31461','_ur_10,','static/index/images/polygon.png',1);
/*!40000 ALTER TABLE `media_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-24 16:56:48
