-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dake_production
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `balance_details`
--

DROP TABLE IF EXISTS `balance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `balance_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paizhao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `balance_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_details`
--

LOCK TABLES `balance_details` WRITE;
/*!40000 ALTER TABLE `balance_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `paizhao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `cate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (2,9,'蒙D57735','4','','2014-05-19 02:22:57','2014-05-19 02:22:57',6,'out',NULL,NULL),(3,9,'蒙D57735','3','','2014-05-19 02:27:33','2014-05-19 02:27:33',6,'in',NULL,NULL),(4,5,'蒙G33918','1','2','2014-05-19 02:33:18','2014-05-19 02:33:18',3,'out',NULL,NULL);
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_huozhan_id` int(11) DEFAULT NULL,
  `to_huozhan_id` int(11) DEFAULT NULL,
  `from_huozhan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_huozhan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huoyun_route_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `siji` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paizhao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `duty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foos`
--

DROP TABLE IF EXISTS `foos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foos`
--

LOCK TABLES `foos` WRITE;
/*!40000 ALTER TABLE `foos` DISABLE KEYS */;
/*!40000 ALTER TABLE `foos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huoyun_routes`
--

DROP TABLE IF EXISTS `huoyun_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huoyun_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_huozhan_id` int(11) DEFAULT NULL,
  `to_huozhan_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fahuo_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daohuo_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destription` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paizhao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sicheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huoyun_routes`
--

LOCK TABLES `huoyun_routes` WRITE;
/*!40000 ALTER TABLE `huoyun_routes` DISABLE KEYS */;
INSERT INTO `huoyun_routes` VALUES (1,3,'11','下午6点','上午6点','','2013-11-05 08:08:16','2013-11-05 08:08:16',NULL,NULL,NULL),(2,3,'4','晚上6点','上午8点','','2013-11-05 08:11:13','2013-11-05 08:11:13',NULL,NULL,NULL),(3,3,'5','下午6点','上午9点','','2013-11-05 08:11:44','2013-11-05 08:12:34',NULL,NULL,NULL),(4,3,'1','下午6点','上午10点','','2013-11-05 08:12:09','2013-11-05 08:12:09',NULL,NULL,NULL),(5,6,'13','','','','2013-11-06 01:21:33','2013-11-06 01:21:33',NULL,NULL,NULL),(6,6,'14','','','','2013-11-06 01:21:46','2013-11-06 01:21:46',NULL,NULL,NULL),(7,6,'15','','','','2013-11-06 01:21:58','2013-11-06 01:21:58',NULL,NULL,NULL),(8,6,'16','','','','2013-11-06 01:22:14','2013-11-06 01:22:14',NULL,NULL,NULL),(9,6,'1','','','','2013-11-06 01:22:24','2013-11-06 01:22:24',NULL,NULL,NULL),(10,6,'17','','','','2013-11-06 01:23:00','2013-11-06 01:23:00',NULL,NULL,NULL),(11,6,'11','','','','2013-11-06 01:23:15','2013-11-06 01:23:15',NULL,NULL,NULL),(12,6,'4','','','','2013-11-06 01:23:31','2013-11-06 01:23:31',NULL,NULL,NULL),(13,6,'5','','','','2013-11-06 01:23:43','2013-11-06 01:23:43',NULL,NULL,NULL),(14,6,'18','','','','2013-11-06 01:24:00','2013-11-06 01:24:00',NULL,NULL,NULL),(15,6,'10','','','','2013-11-06 01:24:14','2013-11-06 01:24:14',NULL,NULL,NULL),(16,11,'3','','','','2013-11-06 03:13:45','2013-11-06 03:13:45',NULL,NULL,NULL),(17,4,'3','','','','2013-11-06 03:13:59','2013-11-06 09:36:58',NULL,NULL,NULL),(18,5,'3','','','','2013-11-06 03:14:09','2013-11-06 03:14:09',NULL,NULL,NULL),(19,1,'3','','','','2013-11-06 03:14:17','2013-11-06 03:14:17',NULL,NULL,NULL),(20,13,'6','','','','2013-11-06 03:18:41','2013-11-06 03:18:41',NULL,NULL,NULL),(21,14,'6','','','','2013-11-06 03:18:59','2013-11-06 03:18:59',NULL,NULL,NULL),(22,15,'6','','','','2013-11-06 03:19:20','2013-11-06 03:19:20',NULL,NULL,NULL),(23,16,'6','','','','2013-11-06 03:19:36','2013-11-06 03:19:36',NULL,NULL,NULL),(24,1,'6','','','','2013-11-06 03:19:56','2013-11-06 03:19:56',NULL,NULL,NULL),(25,17,'6','','','','2013-11-06 03:20:17','2013-11-06 03:20:17',NULL,NULL,NULL),(26,11,'6','','','','2013-11-06 03:20:33','2013-11-06 03:20:33',NULL,NULL,NULL),(27,4,'6','','','','2013-11-06 03:20:47','2013-11-06 03:20:47',NULL,NULL,NULL),(28,5,'6','','','','2013-11-06 03:20:59','2013-11-06 03:20:59',NULL,NULL,NULL),(29,18,'6','','','','2013-11-06 03:21:23','2013-11-06 03:21:23',NULL,NULL,NULL),(30,10,'6','','','','2013-11-06 03:21:52','2013-11-06 03:21:52',NULL,NULL,NULL),(31,1,'11','上午9点','第二日4点','','2015-03-30 08:07:37','2015-03-30 08:07:37',NULL,NULL,NULL);
/*!40000 ALTER TABLE `huoyun_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huozhans`
--

DROP TABLE IF EXISTS `huozhans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huozhans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huozhan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huozhan_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huozhan_tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huozhans`
--

LOCK TABLES `huozhans` WRITE;
/*!40000 ALTER TABLE `huozhans` DISABLE KEYS */;
INSERT INTO `huozhans` VALUES (1,'通辽','通辽车站广场北京专线','13488558777， 13488558333','2013-11-05 07:43:23','2013-11-05 07:52:06',4),(2,'北京大红门','北京大红门院内','13001981888','2013-11-05 07:44:21','2013-11-06 01:59:32',3),(3,'北京百荣','北京百荣国际商贸城南门通辽专线','13001981888','2013-11-05 07:46:00','2013-11-05 07:53:03',5),(4,'敖汉','敖汉蒙中街龙赢佳苑门北鹏程货运','0476-4339681， 0476-4332881','2013-11-05 07:46:58','2013-11-05 07:50:52',6),(5,'奈曼','奈曼','15750534203','2013-11-05 07:51:28','2013-11-05 07:51:28',3),(6,'呼市','呼和浩特市元福配件城东北专线','13789474177','2013-11-05 07:55:55','2013-11-05 07:59:23',7),(7,'包头','包头二旅社汽车站','18804768411','2013-11-05 08:00:17','2013-11-05 08:00:17',3),(8,'鄂尔多斯','鄂尔多斯汽车站','15204760166','2013-11-05 08:01:15','2013-11-05 08:01:15',3),(9,'临河','临河汽车站','18804763422','2013-11-05 08:01:48','2013-11-05 08:01:48',3),(10,'甘旗卡','甘旗卡汽车站','15804752908','2013-11-05 08:03:27','2013-11-05 08:03:27',3),(11,'赤峰','赤峰桥北物流园区','13001981888','2013-11-05 08:06:52','2013-11-05 08:06:52',3),(12,'锡林浩特','锡林浩特客车站','13001981888','2013-11-05 08:09:17','2013-11-05 08:09:17',3),(13,'大板','大板','15204760134','2013-11-05 08:38:44','2013-11-06 06:10:55',3),(14,'林东','林东客运站','15204760134','2013-11-05 08:54:44','2013-11-05 08:54:44',3),(15,'天山','天山客运站','15204760134','2013-11-05 08:55:08','2013-11-05 08:55:08',3),(16,'开鲁','开鲁客运站','15204760134','2013-11-05 08:55:30','2013-11-05 08:55:30',3),(17,'乌丹','乌丹客运站','15204760134','2013-11-05 08:56:32','2013-11-05 08:56:32',3),(18,'库伦','库伦','15204760134','2013-11-05 08:57:19','2013-11-05 08:57:19',3);
/*!40000 ALTER TABLE `huozhans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_records`
--

DROP TABLE IF EXISTS `item_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `usage_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `vehicle_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_records`
--

LOCK TABLES `item_records` WRITE;
/*!40000 ALTER TABLE `item_records` DISABLE KEYS */;
INSERT INTO `item_records` VALUES (1,5,1,1,'item_in',1000,NULL,'','2015-03-30 08:21:17','2015-03-30 08:21:17');
/*!40000 ALTER TABLE `item_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xinghao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (5,'轮胎','985',12,'2013-12-21 10:10:56','2015-03-30 08:21:17','个');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuzeren` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuzeren_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuzeren_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'北京','何广辉',NULL,'北京六里桥','2013-11-05 07:36:25','2013-11-05 09:29:10',5),(3,'赤峰','温素珍',NULL,'赤峰','2013-11-05 07:37:17','2013-11-05 09:31:50',9),(4,'敖汉','温素珍',NULL,'敖汉','2013-11-05 07:37:27','2013-11-05 09:31:38',9),(5,'奈曼','北京负责人',NULL,'奈曼','2013-11-05 07:37:40','2013-11-05 07:37:40',3),(6,'通辽','谢常军',NULL,'通辽','2013-11-05 07:37:49','2013-11-05 09:30:12',8),(7,'呼市','陈云芝',NULL,'负责人联系地址','2013-11-05 09:28:46','2013-11-05 09:28:58',7),(8,'郑州','北京负责人',NULL,'负责人联系地址','2013-11-05 10:04:03','2013-11-05 10:04:03',3),(9,'济南','北京负责人',NULL,'济南','2013-11-05 10:11:31','2013-11-05 10:11:31',3),(10,'天津','北京负责人',NULL,'天津','2013-11-05 10:11:42','2013-11-05 10:11:42',3),(11,'长垣（河南）','北京负责人',NULL,'长垣','2013-11-05 10:12:16','2013-11-05 10:12:16',3),(12,'甘旗卡','王子昌',NULL,'甘旗卡客运站','2013-11-05 10:55:57','2013-11-05 11:15:17',10),(13,'包头','北京负责人',NULL,'包头','2013-11-06 00:39:03','2013-11-06 00:39:03',3),(14,'临河','北京负责人',NULL,'临河','2013-11-06 00:45:52','2013-11-06 00:45:52',3),(15,'鄂尔多斯','北京负责人',NULL,'鄂尔多斯','2013-11-06 00:51:53','2013-11-06 00:51:53',3),(16,'保康','北京负责人',NULL,'保康','2013-11-06 00:56:49','2013-11-06 00:56:49',3),(17,'锡林浩特','北京负责人',NULL,'锡林浩特','2013-11-06 01:01:44','2013-11-06 01:01:44',3),(18,'乌拉盖','北京负责人',NULL,'乌拉盖','2013-11-06 01:06:13','2013-11-06 01:06:13',3),(19,'石家庄','北京负责人',NULL,'石家庄','2013-11-06 01:08:54','2013-11-06 01:08:54',3);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_users`
--

DROP TABLE IF EXISTS `message_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_users`
--

LOCK TABLES `message_users` WRITE;
/*!40000 ALTER TABLE `message_users` DISABLE KEYS */;
INSERT INTO `message_users` VALUES (1,1,1,1,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(2,1,2,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(3,1,3,1,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(4,1,4,1,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(5,1,5,1,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(6,1,6,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(7,1,7,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(8,1,8,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(9,1,9,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16'),(10,1,10,0,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16');
/*!40000 ALTER TABLE `message_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `attach1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'人员管理规定','车辆管理',0,NULL,NULL,NULL,NULL,NULL,'2014-07-11 02:42:16','2014-07-11 02:42:16');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'about','wew<img src=\"/uploads/image/201311/39461904a96d.jpg\" alt=\"\" />','2013-11-02 02:57:03','2013-11-02 02:57:03','关于我们',''),(2,'jobs','招聘内容','2013-11-02 02:57:26','2013-11-02 02:57:26','招贤纳士',''),(3,'contact','联系我们','2013-11-02 02:57:42','2013-11-02 02:57:42','联系我们',''),(4,'news','公司新闻','2013-12-08 04:36:14','2013-12-08 04:36:14','公司新闻',''),(5,'term','法律条款','2013-12-08 04:36:31','2013-12-08 04:36:31','法律条款',''),(6,'links','友情链接','2013-12-08 04:36:53','2013-12-08 04:36:53','友情链接','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_record_details`
--

DROP TABLE IF EXISTS `passenger_record_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger_record_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_record_id` int(11) DEFAULT NULL,
  `passenger_count` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `location_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `direction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_record_details`
--

LOCK TABLES `passenger_record_details` WRITE;
/*!40000 ALTER TABLE `passenger_record_details` DISABLE KEYS */;
INSERT INTO `passenger_record_details` VALUES (1,1,2,520,NULL,'呼市站外','2014-07-11 02:23:47','2014-07-11 02:24:49','go'),(2,1,2,400,NULL,'集宁（21点）','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(3,1,2,0,NULL,'商都','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(4,1,2,0,NULL,'化德','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(5,1,2,0,NULL,'白旗','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(6,1,2,0,NULL,'克旗','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(7,1,2,0,NULL,'大板','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(8,1,2,0,NULL,'乌丹','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(9,1,2,0,NULL,'赤峰','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(10,1,2,0,NULL,'敖汉','2014-07-11 02:23:47','2014-07-11 02:24:50','go'),(11,1,2,0,NULL,'奈曼站外','2014-07-11 02:23:47','2014-07-11 02:24:49','back'),(12,1,2,0,NULL,'敖汉','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(13,1,2,0,NULL,'赤峰','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(14,1,2,0,NULL,'乌丹','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(15,1,2,0,NULL,'大板','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(16,1,2,0,NULL,'克旗','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(17,1,2,0,NULL,'白旗','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(18,1,2,0,NULL,'化德','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(19,1,2,500,NULL,'商都','2014-07-11 02:23:47','2014-07-11 02:25:02','back'),(20,1,2,0,NULL,'集宁（21点）','2014-07-11 02:23:47','2014-07-11 02:24:50','back'),(21,2,NULL,NULL,NULL,'北京站外','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(22,2,NULL,NULL,NULL,'密云','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(23,2,NULL,NULL,NULL,'承德','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(24,2,NULL,NULL,NULL,'锦山','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(25,2,NULL,NULL,NULL,'赤峰','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(26,2,NULL,NULL,NULL,'敖汉','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(27,2,NULL,NULL,NULL,'奈曼','2014-07-11 02:45:09','2014-07-11 02:45:09','go'),(28,2,NULL,NULL,NULL,'通辽站外','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(29,2,NULL,NULL,NULL,'奈曼','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(30,2,NULL,NULL,NULL,'敖汉','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(31,2,NULL,NULL,NULL,'赤峰','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(32,2,NULL,NULL,NULL,'锦山','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(33,2,NULL,NULL,NULL,'承德','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(34,2,NULL,NULL,NULL,'密云','2014-07-11 02:45:09','2014-07-11 02:45:09','back'),(35,3,NULL,NULL,NULL,'北京站外','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(36,3,NULL,NULL,NULL,'密云','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(37,3,NULL,NULL,NULL,'承德','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(38,3,NULL,NULL,NULL,'锦山','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(39,3,NULL,NULL,NULL,'赤峰','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(40,3,NULL,NULL,NULL,'敖汉','2015-03-28 02:56:25','2015-03-28 02:56:25','go'),(41,3,NULL,NULL,NULL,'奈曼站外','2015-03-28 02:56:25','2015-03-28 02:56:25','back'),(42,3,NULL,NULL,NULL,'敖汉','2015-03-28 02:56:25','2015-03-28 02:56:25','back'),(43,3,NULL,NULL,NULL,'赤峰','2015-03-28 02:56:25','2015-03-28 02:56:25','back'),(44,3,NULL,NULL,NULL,'锦山','2015-03-28 02:56:25','2015-03-28 02:56:25','back'),(45,3,NULL,NULL,NULL,'承德','2015-03-28 02:56:25','2015-03-28 02:56:25','back'),(46,3,NULL,NULL,NULL,'密云','2015-03-28 02:56:25','2015-03-28 02:56:25','back');
/*!40000 ALTER TABLE `passenger_record_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_records`
--

DROP TABLE IF EXISTS `passenger_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_date` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_records`
--

LOCK TABLES `passenger_records` WRITE;
/*!40000 ALTER TABLE `passenger_records` DISABLE KEYS */;
INSERT INTO `passenger_records` VALUES (1,'2014-07-11',29,NULL,1420,'2014-07-11 02:23:47','2014-07-11 02:25:02',7,40),(2,'2014-07-11',43,NULL,0,'2014-07-11 02:45:08','2014-07-11 02:45:09',5,0),(3,'2015-03-28',39,NULL,0,'2015-03-28 02:56:25','2015-03-28 02:56:25',3,0);
/*!40000 ALTER TABLE `passenger_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reasons`
--

DROP TABLE IF EXISTS `reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasons`
--

LOCK TABLES `reasons` WRITE;
/*!40000 ALTER TABLE `reasons` DISABLE KEYS */;
INSERT INTO `reasons` VALUES (1,'结算单',NULL,'2013-11-05 09:09:33','2013-11-05 09:09:33','in'),(2,'运费保价费',NULL,'2013-11-05 09:11:51','2013-11-05 09:13:15','in'),(4,'代收服务费',NULL,'2013-11-05 09:13:26','2013-11-05 09:13:26','in'),(5,'站外散客',NULL,'2013-11-05 09:15:30','2013-11-05 09:15:30','in'),(6,'燃料','','2013-11-06 01:08:26','2013-11-06 01:08:26','out'),(7,'过桥费','','2013-11-06 01:14:52','2013-11-06 01:14:52','out'),(8,'修车费','柴滤,机滤,空滤,干燥罐,机油,柴油,齿油,防冻液,刹车类,地盘类','2013-11-06 01:17:25','2013-11-06 01:17:25','out'),(9,'机齿油','','2013-11-06 01:17:55','2013-11-06 01:17:55','out'),(10,'轮胎','','2013-11-06 01:18:03','2013-11-06 01:18:03','out'),(11,'罚款','','2013-11-06 01:18:10','2013-11-06 01:18:10','out'),(12,'住宿费','','2013-11-06 01:18:17','2013-11-06 01:18:17','out'),(13,'服务费','','2013-11-06 01:18:25','2013-11-06 01:18:25','out'),(14,'线路费','','2013-11-06 01:18:33','2013-11-06 01:18:33','out'),(15,'保险','','2013-11-06 01:18:39','2013-11-06 01:18:39','out'),(16,'手机费','','2013-11-06 01:18:46','2013-11-06 01:18:46','out'),(17,'工资','','2013-11-06 01:18:53','2013-11-06 01:18:53','out'),(18,'管理费用','','2013-11-06 01:18:59','2013-11-06 01:18:59','out'),(19,'其他','','2013-11-06 01:19:04','2013-11-06 01:19:04','out');
/*!40000 ALTER TABLE `reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminds`
--

DROP TABLE IF EXISTS `reminds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repeating` int(11) DEFAULT NULL,
  `remind` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminds`
--

LOCK TABLES `reminds` WRITE;
/*!40000 ALTER TABLE `reminds` DISABLE KEYS */;
INSERT INTO `reminds` VALUES (1,'整年年审',365,30,'2013-11-05 09:21:03','2013-11-05 09:21:03'),(2,'半年年审',182,15,'2013-11-05 09:21:32','2013-11-05 09:21:32'),(3,'二保卡',182,15,'2013-11-05 09:21:59','2013-11-05 09:21:59'),(4,'营运证年检',365,30,'2013-11-05 09:22:45','2013-11-05 09:22:45'),(5,'行政许可决定书',2190,182,'2013-11-05 09:24:43','2013-11-05 09:24:43'),(6,'强制险',365,30,'2013-11-05 09:25:28','2013-11-05 09:25:28'),(7,'承运人险',365,30,'2013-11-05 09:25:59','2013-11-05 09:25:59'),(8,'三者责任险',365,30,'2013-11-05 09:26:59','2013-11-05 09:26:59');
/*!40000 ALTER TABLE `reminds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_location_id` int(11) DEFAULT NULL,
  `end_location_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_names` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_when` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_when` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paths` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,6,1,9,'国忠义，王建东','13512344321','通辽下午14点','六里桥凌晨3点（百荣凌晨2点）','奈曼， 敖汉， 赤峰， 锦山， 承德， 密云','2013-11-05 09:39:26','2013-11-05 09:54:57'),(2,6,1,42,'刘春辉，李建东','13512344321','通辽下午16点','四惠凌晨3点（百荣凌晨2点）','奈曼，敖汉，赤峰， 锦山，承德， 密云','2013-11-05 09:42:59','2013-11-05 09:55:27'),(3,1,6,8,'刘瑞成， 王建东','13512344321','六里桥下午17:30','通辽上午7点','密云， 承德， 锦山， 赤峰， 敖汉， 奈曼','2013-11-05 09:44:49','2013-11-05 09:52:00'),(4,1,6,43,'石延安','13512344321','四惠下午16点（百荣下午18点）','通辽上午6点','密云， 承德， 锦山， 赤峰， 敖汉， 奈曼','2013-11-05 09:47:14','2013-11-05 09:53:07'),(5,1,4,38,'辛跃东，程广庆','15204760599','六里桥上午9点','敖汉下午18点','承德，平泉，八里罕，小城子，平庄，黑水，马场，二十家子','2013-11-05 09:51:15','2013-11-05 09:51:31'),(6,4,1,5,'刘瑞强，梁国学','15148333666','敖汉上午9点','六里桥下午18点','二十家子， 马场， 黑水， 平庄，小城子，八里罕， 平泉，承德，密云','2013-11-05 09:56:58','2013-11-05 09:56:58'),(7,1,5,39,'王海山，杨建国','15049926888','六里桥下午13:30','奈曼凌晨1:30（敖汉23:30）','密云， 承德， 锦山， 赤峰， 敖汉','2013-11-05 09:59:21','2013-11-05 09:59:21'),(8,5,1,39,'王海山，杨建国','15049926888','奈曼下午14:30','六里桥凌晨2点（百荣凌晨1点）','敖汉，赤峰，承德， 密云','2013-11-05 10:01:28','2013-11-05 10:01:28'),(9,6,8,17,'郑海龙，阎振山','18804763422','通辽下午14点','郑州次日12点','新乡， 安阳， 邯郸， 石家庄，北京， 承德， 赤峰， 敖汉， 奈曼','2013-11-05 10:07:53','2013-11-05 10:10:26'),(10,6,11,6,'张海征，鲍红星','13512344321','通辽15:30','长垣次日11点','奈曼（17点），敖汉（18点），赤峰（19点），承德， 北京（凌晨2点）， 霸州， 衡水， 濮阳','2013-11-05 10:15:33','2013-11-05 10:15:33'),(11,6,11,7,'王继友','13512344321','通辽15:30','长垣次日11点','奈曼（17点），敖汉（18点），赤峰（19点），承德， 北京（凌晨2点）， 霸州， 衡水， 濮阳','2013-11-05 10:22:31','2013-11-05 10:22:31'),(12,6,8,18,'吴明训','18804768400','通辽下午14点','郑州次日12点','奈曼（17点），敖汉（18点），赤峰（19点），承德， 北京（凌晨2点）， 霸州， 衡水， 濮阳','2013-11-05 10:33:28','2013-11-05 10:33:28'),(13,6,9,11,'周绍武，赵国孚','18663621188','通辽下午16点','济南9点','奈曼（17.30），敖汉（19），赤峰（20.30），承德， 北京（凌晨3:30）, 天津，沧州， 德州','2013-11-05 10:39:36','2013-11-05 10:39:36'),(14,9,6,41,'马力江， 张师傅','18663621199','济南广场站15点(北站16点)','通辽上午9点','德州，沧州，天津，北京，承德，赤峰，敖汉，奈曼','2013-11-05 10:41:54','2013-11-05 10:41:54'),(15,4,7,4,'王金龙，甄小明','15849394009','敖汉上午9点','呼市21:30','赤峰，乌丹，大板，克旗，白旗，化德，商都，集宁','2013-11-05 10:44:55','2013-11-05 10:44:55'),(16,7,4,22,'孙永祥，杨忠颜','15004761355','呼市上午8点','敖汉晚上21点','集宁，商都，化德，白旗，克旗，大板，乌丹，赤峰','2013-11-05 10:47:59','2013-11-05 10:47:59'),(17,5,7,14,'邹继波，高立军','15248350999','奈曼下午16点','呼市次日上午8点','下洼，敖汉（17:30），赤峰(19)，乌丹, 大板，克旗，白旗，化德，商都，集宁','2013-11-05 10:51:00','2013-11-05 10:51:00'),(18,7,5,29,'刘新民，张宁','15204760766','呼市下午18:40','奈曼上午10点','集宁（21点），商都，化德，白旗，克旗，大板，乌丹，赤峰， 敖汉','2013-11-05 10:53:36','2013-11-05 10:53:36'),(19,12,7,12,'肖海峰，王子成','15804752908','甘旗卡下午13:10','呼市次日上午8点','库伦(14:10), 六家子， 新镇， 奈曼（16:30）,敖汉（18点），赤峰，乌丹， 大板，克旗，白旗，化德，商都，集宁','2013-11-05 11:01:07','2013-11-05 11:01:07'),(20,12,7,13,'赵宝民，邱艳青','15804752909','甘旗卡下午13:10','呼市次日上午8点','库伦(14:10), 六家子， 新镇， 奈曼（16:30）,敖汉（18点），赤峰，乌丹， 大板，克旗，白旗，化德，商都，集宁','2013-11-05 11:02:54','2013-11-05 11:02:54'),(21,7,12,26,'丛培峰，博文源','15204760199','呼市下午18:40','甘旗卡次日12点','集宁，商都，化德，白旗，克旗，大板，乌丹，赤峰，敖汉，奈曼，新镇，刘家子，库伦','2013-11-05 11:06:38','2013-11-05 11:06:38'),(22,7,12,28,'董亮，张师傅','15049113888','呼市下午18:40','甘旗卡次日12点','集宁，商都，化德，白旗，克旗，大板，乌丹，赤峰，敖汉，奈曼，新镇，刘家子，库伦','2013-11-05 11:08:12','2013-11-05 11:08:12'),(23,6,7,21,'张金龙，宋星','15204760134','通辽下午19点','呼市次日上午9点','开鲁，天山，林东，大板，克旗，白旗，化德，商都，集宁','2013-11-06 00:37:15','2013-11-06 00:37:15'),(24,7,6,25,'梁师傅，陈建忠','13512344321','呼市下午19点','通辽次日上午9点','集宁，商都，化德，白旗，克旗，大板，林东，天山，开鲁','2013-11-06 00:38:34','2013-11-06 00:38:34'),(25,6,13,20,'姚晓辉，赵亚辉','18804768411','通辽下午17:10','包头上午10:30','开鲁，天山，林东，大板，克旗，白旗，化德，商都，集宁，呼市','2013-11-06 00:41:15','2013-11-06 00:41:15'),(26,13,6,37,'未确定','13512344321','包头二旅社13:30(东河15点）','通辽次日上午10:30','呼市，集宁，商都，化德，白旗，克旗，大板，林东，天山，开鲁','2013-11-06 00:44:39','2013-11-06 00:44:39'),(27,6,14,10,'未确定','18804768400','通辽下午14:40','临河次日中午12点','开鲁，天山，林东，大板，克旗，白旗，化德，商都，集宁，呼市，包头，五原','2013-11-06 00:47:29','2013-11-06 00:47:29'),(28,6,14,19,'未确定','13512344321','通辽下午14:40','临河次日中午12点','开鲁，天山，林东，大板，克旗，白旗，化德，商都，集宁，呼市，包头，五原','2013-11-06 00:48:29','2013-11-06 00:48:29'),(29,14,6,35,'未确定','13512344321','临河下午14:40','通辽次日中午12点','五原， 包头， 呼市，集宁，商都，化德，白旗，克旗，大板，林东，天山，开鲁','2013-11-06 00:49:40','2013-11-06 00:49:40'),(30,14,6,36,'未确定','13512344321','临河下午14:40','通辽次日中午12点','五原， 包头， 呼市，集宁，商都，化德，白旗，克旗，大板，林东，天山，开鲁','2013-11-06 00:50:24','2013-11-06 00:50:24'),(31,6,15,15,'张亚强，李晓峰','15204760166','通辽下午13:40','鄂尔多斯次日上午10点','开鲁，天山，林东，大板，克旗，白旗，化德，商都，集宁，呼市，包头','2013-11-06 00:53:24','2013-11-06 00:53:24'),(32,15,6,16,'陈友林，岳福利','15204760566','鄂尔多斯13:40','通辽次日上午10点','包头， 呼市，集宁，商都，化德，白旗，克旗，大板，林东，天山，开鲁','2013-11-06 00:55:31','2013-11-06 00:55:31'),(33,7,16,23,'梁景春，刘师傅','15204760366','呼市下午15:30','保康次日中午12点','集宁，商都，化德，白旗，克旗，大板，乌丹，赤峰，敖汉，奈曼，八仙筒，通辽，宝龙山','2013-11-06 00:59:00','2013-11-06 00:59:00'),(34,16,7,24,'刘新民，张宁','13512344321','保康上午11:30','呼市次日上午9点','宝龙山，通辽，八仙筒，奈曼，敖汉，赤峰，乌丹，大板，克旗，白旗，化德，商都，集宁','2013-11-06 01:01:05','2013-11-06 01:01:05'),(35,7,17,31,'未确定','13512344321','呼市13点','锡林浩特20:30','集宁，商都，化德，桑根达来','2013-11-06 01:03:53','2013-11-06 01:03:53'),(36,17,7,32,'未确定','13512344321','锡林浩特下午13点','呼市20:30','桑根达来，化德，商都，集宁','2013-11-06 01:05:43','2013-11-06 01:05:43'),(37,7,18,27,'史师傅','13512344321','呼市下午17:30','乌拉盖次日上午7点','集宁，商都，化德，桑根达来，锡盟，东乌','2013-11-06 01:08:09','2013-11-06 01:08:09'),(38,6,19,40,'刘兆宏，王桂鹏','13512344321','通辽下午14点','石家庄次日上午9点','八仙筒，奈曼，敖汉，赤峰，承德，北京（凌晨2点），保定','2013-11-06 01:11:01','2013-11-06 01:11:01'),(39,19,6,40,'刘兆宏，王桂鹏','13512344321','石家庄下午14点','通辽次日上午7点','保定，北京（下午18点），承德，赤峰，敖汉，奈曼，八仙筒','2013-11-06 01:12:42','2013-11-06 01:12:42');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130630030557'),('20130630031907'),('20130630035222'),('20130825101254'),('20130825102819'),('20130826123650'),('20130827061517'),('20130828112302'),('20130828234907'),('20130828234924'),('20130829000132'),('20130829002202'),('20130829123556'),('20130830225618'),('20130830230207'),('20130831140906'),('20130911135902'),('20130911140517'),('20130913021813'),('20130913030406'),('20130916015529'),('20130916055337'),('20130916060610'),('20130918071431'),('20130921064445'),('20130921080357'),('20130921080554'),('20130921080622'),('20130921082248'),('20130922073600'),('20130924025027'),('20130926030928'),('20130928090420'),('20131001013216'),('20131002105523'),('20131002105629'),('20131002105700'),('20131007141102'),('20131009142847'),('20131102021427'),('20131106022228'),('20131106065729'),('20131106070737'),('20131107020407'),('20131107020541'),('20131107022019'),('20131107071738'),('20140524104146'),('20140524104418'),('20140528133710'),('20140528133859'),('20140528140204'),('20140604130508'),('20140609140620'),('20140609140851'),('20140614024500'),('20140618152825'),('20140622074129'),('20140623072306');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_cargos`
--

DROP TABLE IF EXISTS `shipping_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_cargos`
--

LOCK TABLES `shipping_cargos` WRITE;
/*!40000 ALTER TABLE `shipping_cargos` DISABLE KEYS */;
INSERT INTO `shipping_cargos` VALUES (1,1,1,'2013-11-06 05:52:15','2013-11-06 05:52:15'),(2,3,2,'2013-11-06 09:27:34','2013-11-06 09:27:34'),(3,4,3,'2013-11-06 09:41:48','2013-11-06 09:41:48'),(4,5,4,'2013-11-06 09:57:33','2013-11-06 09:57:33'),(5,2,5,'2013-11-06 09:58:17','2013-11-06 09:58:17'),(6,6,5,'2013-11-06 09:58:17','2013-11-06 09:58:17'),(7,8,6,'2013-11-08 00:46:05','2013-11-08 00:46:05'),(8,9,7,'2013-11-08 00:55:10','2013-11-08 00:55:10'),(9,10,9,'2013-11-08 01:11:21','2013-11-08 01:11:21'),(10,7,10,'2013-11-08 01:25:58','2013-11-08 01:25:58');
/*!40000 ALTER TABLE `shipping_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `huowu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huowu_danwei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huowu_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huowu_beizhu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `daishouhuokuan_amount` int(11) DEFAULT NULL,
  `daishouhuokuan_fee` int(11) DEFAULT NULL,
  `huowu_baozhi` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `from_huozhan_id` int(11) DEFAULT NULL,
  `to_huozhan_id` int(11) DEFAULT NULL,
  `baozhi_fee` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `serial_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_huozhan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_huozhan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_daishouhuokuan_fee_paid` tinyint(1) DEFAULT NULL,
  `is_daishouhuokuan_shouqu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shippings_on_serial_num` (`serial_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'adminadmin@admin.com','$2a$10$d4sMJa/AMKXAiKq6oUAGe.1AmZv9LjNlveTIgfacbTCGMtOD2g68q',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-21 01:52:55','2013-10-21 01:52:55','经理','13811223212','admin','---\n- boss\n'),(2,NULL,'$2a$10$gNgf2GSSL7NzNoJOc1hxXev8Ti1Yo9NEmAHNFDTnAWk7IJaUF1tVy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-10-21 08:30:25','2013-10-21 08:30:25','张海鹰','13947600667','admin','---\n- boss\n'),(3,NULL,'$2a$10$XJXLPxnlCg6f5GkDZHVpqu/8BeqDZwCAi3gg75nHQrn417cjWmuii',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 07:36:05','2013-11-05 07:36:05','北京负责人','13912344321','bjfzr','---\n- agent\n'),(4,NULL,'$2a$10$JzqOq7qjXrzWHyD8CrkdVeXPM4IAwDeGvCYFdfmSjfrv4jzn97pvy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 07:40:01','2013-11-05 07:40:01','周景鹏','13912344321','zhoujingpeng','---\n- agent\n'),(5,NULL,'$2a$10$T/WIy6xERh1mCs9t9WMkJu364tR4Mqhv6jEGF/GOkQ4rpelGE6Dma',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 07:45:30','2013-11-05 07:45:30','何广辉','13001981888','heguanghui','---\n- agent\n'),(6,NULL,'$2a$10$vZWNOxeaGTP7aqpIZzusQuTQoy8XWrAJkb0jNSKNzwQ0zqV0nWcru',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 07:49:00','2013-11-05 07:49:00','李晓艳','13404871555','lixiaoyan','---\n- agent\n'),(7,NULL,'$2a$10$Hr8lDWlrRpOz0jkL6WxBAemoIHLuo/FzBk6Sc1JHQywa.4KVwdkBi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 07:59:14','2013-11-05 07:59:14','陈云芝','13624716324','chenyunzhi','---\n- agent\n'),(8,NULL,'$2a$10$6vahcu.Usx6lGg0ZCHeijOpNhK60lnXX/K5EMcMlCeAXFXJCsqawS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 09:30:06','2013-11-05 09:30:06','谢常军','13488558333','xiechangjun','---\n- agent\n'),(9,NULL,'$2a$10$6yPIrFgWBnftct0t5BMuUupAIpJai/Dca6TZA3Yz/.vEcGQenEQXC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 09:31:29','2013-11-05 09:31:29','温素珍','0476-4332821','wensuzhen','---\n- agent\n'),(10,NULL,'$2a$10$icNgvkr3Kq/gVc9Usf7yFOf1I3xKxPw0LiYoDfP9GDxypNt59iHzC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-11-05 10:55:43','2014-07-12 09:16:30','王自昌','15750533203','wangzichang','---\n- agent\n');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_reminds`
--

DROP TABLE IF EXISTS `vehicle_reminds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_reminds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `remind_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `happend_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_reminds`
--

LOCK TABLES `vehicle_reminds` WRITE;
/*!40000 ALTER TABLE `vehicle_reminds` DISABLE KEYS */;
INSERT INTO `vehicle_reminds` VALUES (3,15,7,'2013-11-07 08:43:47','2013-11-07 08:43:47','2013-01-11 16:00:00',''),(5,15,8,'2013-11-07 08:50:19','2013-11-07 08:50:19','2013-01-11 16:00:00',''),(6,15,6,'2013-11-07 09:34:03','2013-11-07 09:34:03','2013-01-11 16:00:00',''),(8,15,4,'2013-11-07 09:34:54','2013-11-07 09:34:54','2013-06-29 16:00:00',''),(9,15,1,'2013-11-07 09:35:14','2013-11-07 09:35:14','2012-12-31 16:00:00',''),(10,15,3,'2013-11-07 09:37:27','2013-11-07 09:37:27','2013-07-06 16:00:00',''),(11,16,7,'2013-11-07 09:38:44','2013-11-07 09:38:44','2012-11-28 16:00:00',''),(12,16,8,'2013-11-07 09:38:57','2013-11-07 09:38:57','2012-11-28 16:00:00',''),(13,16,6,'2013-11-07 09:39:13','2013-11-07 09:39:13','2012-11-28 16:00:00',''),(14,16,3,'2013-11-07 09:39:49','2013-11-07 09:39:49','2013-10-12 16:00:00',''),(15,16,4,'2013-11-07 09:40:21','2013-11-07 09:40:21','2013-06-29 16:00:00',''),(16,16,1,'2013-11-07 09:40:43','2013-11-07 09:40:43','2012-10-31 16:00:00',''),(17,20,6,'2013-11-07 09:42:55','2013-11-07 09:42:55','2013-02-20 16:00:00',''),(19,20,3,'2013-11-07 09:44:10','2013-11-07 09:44:10','2013-08-31 16:00:00',''),(20,20,4,'2013-11-07 09:45:00','2013-11-07 09:45:00','2013-06-29 16:00:00',''),(21,20,1,'2013-11-07 09:46:06','2013-11-07 09:46:06','2013-01-31 16:00:00',''),(22,19,1,'2013-11-07 09:47:31','2013-11-07 09:47:31','2012-12-31 16:00:00',''),(23,19,4,'2013-11-07 09:47:54','2013-11-07 09:47:54','2013-06-29 16:00:00',''),(24,19,3,'2013-11-07 09:48:19','2013-11-07 09:48:19','2013-06-30 16:00:00',''),(25,19,6,'2013-11-07 09:48:40','2013-11-07 09:48:40','2013-04-24 16:00:00',''),(26,21,1,'2013-11-07 09:49:11','2013-11-07 09:49:11','2012-12-31 16:00:00',''),(27,21,4,'2013-11-07 23:59:21','2013-11-07 23:59:21','2013-06-29 16:00:00',''),(29,21,3,'2013-11-08 00:00:10','2013-11-08 00:00:10','2013-06-30 16:00:00',''),(30,21,6,'2013-11-08 00:00:36','2013-11-08 00:00:36','2013-01-13 16:00:00',''),(31,9,1,'2013-11-08 00:11:38','2013-11-08 00:11:38','2012-12-31 16:00:00',''),(32,9,4,'2013-11-08 00:11:59','2013-11-08 00:11:59','2013-05-31 16:00:00',''),(33,9,3,'2013-11-08 00:12:19','2013-11-08 00:12:19','2013-06-30 16:00:00',''),(34,9,6,'2013-11-08 00:12:52','2013-11-08 00:12:52','2013-01-29 16:00:00',''),(35,8,1,'2013-11-08 01:37:02','2013-11-08 01:37:02','2013-03-31 16:00:00',''),(37,8,3,'2013-11-08 01:37:59','2013-11-08 01:37:59','2013-06-30 16:00:00',''),(38,8,4,'2013-11-08 01:38:48','2013-11-08 01:38:48','2013-06-29 16:00:00',''),(39,8,6,'2013-11-08 01:39:22','2013-11-08 01:39:22','2013-01-11 16:00:00',''),(40,8,8,'2013-11-08 01:39:42','2013-11-08 01:39:42','2013-01-22 16:00:00',''),(41,8,7,'2013-11-08 01:40:08','2013-11-08 01:40:08','2013-01-03 16:00:00',''),(42,6,1,'2013-11-08 01:41:08','2013-11-08 01:41:08','2012-12-31 16:00:00',''),(43,6,4,'2013-11-08 01:41:42','2013-11-08 01:41:42','2013-06-29 16:00:00',''),(44,6,3,'2013-11-08 01:42:10','2013-11-08 01:42:10','2013-06-30 16:00:00',''),(45,6,6,'2013-11-08 01:42:46','2013-11-08 01:42:46','2013-01-22 16:00:00',''),(46,7,1,'2013-11-08 01:43:25','2013-11-08 01:43:25','2012-12-31 16:00:00',''),(47,7,4,'2013-11-08 01:43:49','2013-11-08 01:43:49','2013-06-29 16:00:00',''),(48,7,3,'2013-11-08 01:44:13','2013-11-08 01:44:13','2013-06-30 16:00:00',''),(49,7,6,'2013-11-08 01:44:54','2013-11-08 01:44:54','2013-01-22 16:00:00',''),(50,18,1,'2013-11-08 01:45:31','2013-11-08 01:45:31','2013-01-31 16:00:00',''),(51,18,4,'2013-11-08 01:45:51','2013-11-08 01:45:51','2013-06-29 16:00:00',''),(53,18,3,'2013-11-08 01:49:02','2013-11-08 01:49:02','2013-07-31 16:00:00',''),(54,18,6,'2013-11-08 01:49:32','2013-11-08 01:49:32','2013-02-21 16:00:00',''),(55,17,1,'2013-11-08 02:03:06','2013-11-08 02:03:06','2013-01-31 16:00:00',''),(56,17,4,'2013-11-08 02:07:29','2013-11-08 02:07:29','2013-06-29 16:00:00',''),(57,17,3,'2013-11-08 02:07:54','2013-11-08 02:07:54','2013-07-31 16:00:00',''),(58,17,6,'2013-11-08 02:08:43','2013-11-08 02:08:43','2013-02-21 16:00:00',''),(59,42,1,'2013-11-08 02:24:01','2013-11-08 02:24:01','2013-05-31 16:00:00',''),(60,42,4,'2013-11-08 02:25:44','2013-11-08 02:25:44','2013-03-31 16:00:00',''),(62,42,3,'2013-11-08 02:26:58','2013-11-08 02:26:58','2013-10-31 16:00:00',''),(63,42,6,'2013-11-08 02:27:55','2013-11-08 02:27:55','2013-03-31 16:00:00',''),(65,43,1,'2013-11-08 02:30:23','2013-11-08 02:30:23','2013-05-31 16:00:00',''),(66,43,4,'2013-11-08 02:31:04','2013-11-08 02:31:04','2013-03-31 16:00:00',''),(67,43,3,'2013-11-08 02:31:53','2013-11-08 02:31:53','2013-10-31 16:00:00',''),(68,43,6,'2013-11-08 02:32:21','2013-11-08 02:32:21','2013-03-31 16:00:00',''),(69,40,1,'2013-11-08 02:33:41','2013-11-08 02:33:41','2012-12-31 16:00:00',''),(70,40,4,'2013-11-08 02:34:12','2013-11-08 02:34:12','2013-11-30 16:00:00',''),(71,40,6,'2013-11-08 02:34:33','2013-11-08 02:34:33','2013-01-11 16:00:00',''),(72,11,1,'2013-11-08 02:35:52','2013-11-08 02:35:52','2013-01-31 16:00:00',''),(73,11,4,'2013-11-08 02:36:22','2013-11-08 02:36:22','2013-06-29 16:00:00',''),(74,11,3,'2013-11-08 02:36:51','2013-11-08 02:36:51','2013-08-31 16:00:00',''),(75,11,6,'2013-11-08 02:37:13','2013-11-08 02:37:13','2013-02-17 16:00:00',''),(95,23,2,'2013-11-16 08:38:46','2013-11-16 08:38:46','2013-10-31 16:00:00',''),(96,23,4,'2013-11-16 08:39:31','2013-11-16 08:39:31','2013-05-29 16:00:00',''),(98,23,5,'2013-11-16 08:40:13','2013-11-16 08:40:13','2012-01-05 16:00:00',''),(101,4,4,'2013-11-16 08:43:29','2013-11-16 08:43:29','2013-05-29 16:00:00',''),(102,4,5,'2013-11-16 08:45:53','2013-11-16 08:45:53','2006-12-31 16:00:00',''),(103,4,6,'2013-11-16 08:46:35','2013-11-16 08:46:35','2012-12-10 16:00:00',''),(104,4,7,'2013-11-16 08:47:10','2013-11-16 08:47:10','2013-06-05 16:00:00',''),(106,4,8,'2013-11-16 08:47:59','2013-11-16 08:47:59','2013-06-22 16:00:00',''),(107,4,3,'2013-11-16 08:52:48','2013-11-16 08:52:48','2013-07-17 16:00:00',''),(108,4,2,'2013-11-16 08:53:34','2013-11-16 08:53:34','2013-06-17 16:00:00',''),(109,39,1,'2013-11-16 08:58:03','2013-11-16 08:58:03','2012-12-28 16:00:00',''),(110,39,4,'2013-11-16 08:58:44','2013-11-16 08:58:44','2012-12-29 16:00:00',''),(111,39,5,'2013-11-16 09:01:23','2013-11-16 09:01:23','2009-08-13 16:00:00',''),(112,39,6,'2013-11-16 09:01:55','2013-11-16 09:01:55','2012-12-26 16:00:00',''),(114,39,8,'2013-11-16 09:02:26','2013-11-16 09:02:26','2012-12-29 16:00:00',''),(116,24,2,'2013-11-16 09:04:52','2013-11-16 09:04:52','2013-05-20 16:00:00',''),(118,24,4,'2013-11-16 09:05:22','2013-11-16 09:05:22','2013-05-29 16:00:00',''),(120,24,5,'2013-11-16 09:05:48','2013-11-16 09:05:48','2012-01-05 16:00:00',''),(121,14,1,'2013-11-16 09:06:52','2013-11-16 09:06:52','2013-05-29 16:00:00',''),(122,14,5,'2013-11-16 09:07:34','2013-11-16 09:07:34','2010-01-10 16:00:00',''),(123,22,4,'2013-11-16 09:08:37','2013-11-16 09:08:37','2012-12-06 16:00:00',''),(124,22,4,'2013-11-16 09:08:37','2013-11-16 09:08:37','2012-12-06 16:00:00',''),(125,22,3,'2013-11-16 09:08:56','2013-11-16 09:08:56','2013-11-10 16:00:00',''),(126,5,1,'2013-11-16 09:11:16','2013-11-16 09:11:16','2013-09-24 16:00:00',''),(127,5,3,'2013-11-16 09:11:35','2013-11-16 09:11:35','2013-03-14 16:00:00',''),(128,5,5,'2013-11-16 09:12:07','2013-11-16 09:12:07','2009-07-12 16:00:00',''),(129,5,8,'2013-11-16 09:12:41','2013-11-16 09:12:41','2012-12-23 16:00:00',''),(130,5,6,'2013-11-16 09:13:05','2013-11-16 09:13:05','2013-09-23 16:00:00',''),(131,5,7,'2013-11-16 09:13:22','2013-11-16 09:13:22','2013-09-24 16:00:00',''),(132,44,1,'2015-03-30 09:42:40','2015-03-30 09:42:40','2015-04-08 16:00:00',''),(133,44,2,'2015-03-30 09:42:57','2015-03-30 09:42:57','2015-03-14 16:00:00','');
/*!40000 ALTER TABLE `vehicle_reminds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paizhao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xinghao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leixing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (4,'蒙D35787','BFC6120-2DB','大客','2013-11-05 07:16:04','2013-11-05 07:16:26'),(5,'蒙D57735','宇通','大客','2013-11-05 07:17:10','2013-11-05 07:17:10'),(6,'蒙G51788','苏州金龙','大客','2013-11-05 07:20:00','2013-11-05 07:20:10'),(7,'蒙G51799','苏州金龙','大客','2013-11-05 07:20:51','2013-11-05 07:20:51'),(8,'蒙G33918','金龙','大客','2013-11-05 07:21:31','2013-11-05 07:21:31'),(9,'蒙G32962','宇通','大客','2013-11-05 07:22:04','2013-11-05 07:22:04'),(10,'蒙G35999','苏州金龙','大客','2013-11-05 07:22:23','2013-11-05 07:22:23'),(11,'蒙G37809','宇通','大客','2013-11-05 07:22:55','2013-11-05 07:22:55'),(12,'蒙G38671','安凯HF6127WK79','大客','2013-11-05 07:24:02','2013-11-05 07:24:02'),(13,'蒙G38710','安凯HF6127WK79','大客','2013-11-05 07:24:26','2013-11-05 07:24:26'),(14,'蒙G38738','安凯HF6127WK79','大客','2013-11-05 07:24:42','2013-11-05 07:24:42'),(15,'蒙G51618','宇通','大客','2013-11-05 07:25:17','2013-11-05 07:25:17'),(16,'蒙G55966','青年','大客','2013-11-05 07:25:32','2013-11-05 07:25:32'),(17,'蒙G56801','青年','大客','2013-11-05 07:25:47','2013-11-05 07:25:47'),(18,'蒙D56859','青年','大客','2013-11-05 07:26:03','2013-11-05 07:26:03'),(19,'蒙G56399','青年','大客','2013-11-05 07:26:15','2013-11-05 07:26:15'),(20,'蒙G56826','青年','大客','2013-11-05 07:26:34','2013-11-05 07:26:34'),(21,'蒙G56397','青年','大客','2013-11-05 07:26:45','2013-11-05 07:26:45'),(22,'蒙AK1418','宇通','大客','2013-11-05 07:28:08','2013-11-05 07:28:08'),(23,'蒙AK0981','宇通','大客','2013-11-05 07:28:19','2013-11-05 07:28:19'),(24,'蒙AK0982','宇通','大客','2013-11-05 07:28:29','2013-11-05 07:28:29'),(25,'蒙AK1173','宇通','大客','2013-11-05 07:28:39','2013-11-05 07:28:39'),(26,'蒙AK1042','宇通','大客','2013-11-05 07:28:50','2013-11-05 07:28:50'),(27,'蒙AK1156','大宇GDW6121HW3','大客','2013-11-05 07:29:39','2013-11-05 07:29:39'),(28,'蒙AK1747','青年','大客','2013-11-05 07:29:55','2013-11-05 07:29:55'),(29,'蒙AK1562','大宇','大客','2013-11-05 07:30:11','2013-11-05 10:51:52'),(30,'蒙AK1717','青年','大客','2013-11-05 07:30:26','2013-11-05 07:30:26'),(31,'蒙AK1029','北方BFC6120-2DB','大客','2013-11-05 07:30:54','2013-11-05 07:30:54'),(32,'蒙AK1030','北方BFC6120-2DB','大客','2013-11-05 07:31:10','2013-11-06 01:04:44'),(33,'蒙AK1099','青年','大客','2013-11-05 07:31:19','2013-11-05 07:31:19'),(34,'蒙AK1421','青年','大客','2013-11-05 07:31:32','2013-11-05 07:31:32'),(35,'蒙L38882','宇通','大客','2013-11-05 07:31:45','2013-11-05 07:31:45'),(36,'蒙L38887','宇通','大客','2013-11-05 07:31:58','2013-11-05 07:31:58'),(37,'蒙B71815','宇通','大客','2013-11-05 07:32:13','2013-11-05 07:32:13'),(38,'京AM5964','宇通','大客','2013-11-05 07:32:49','2013-11-05 07:32:49'),(39,'京AG4204','苏州金龙KL06125BWD1','大客','2013-11-05 07:33:22','2013-11-05 07:33:22'),(40,'冀A67588','苏州金龙','大客','2013-11-05 07:33:45','2013-11-05 07:33:45'),(41,'鲁AD1757','宇通','大客','2013-11-05 07:34:01','2013-11-05 07:34:01'),(42,'京AG4891','安凯HF6123WK79','大客','2013-11-05 09:41:17','2013-11-05 09:41:17'),(43,'京AG4933','安凯HF6123WK79','大客','2013-11-05 09:41:38','2013-11-05 09:41:38'),(44,'蒙D011111','巨无霸','翻斗','2015-03-30 08:33:42','2015-03-30 08:33:42');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-03  0:00:06
