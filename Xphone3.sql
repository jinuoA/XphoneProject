-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: Xphone3
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `OnePlus5_oneplus5`
--

DROP TABLE IF EXISTS `OnePlus5_oneplus5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OnePlus5_oneplus5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h2` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `title_desc` varchar(200) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OnePlus5_oneplus5`
--

LOCK TABLES `OnePlus5_oneplus5` WRITE;
/*!40000 ALTER TABLE `OnePlus5_oneplus5` DISABLE KEYS */;
/*!40000 ALTER TABLE `OnePlus5_oneplus5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OnePlus5_oneplusnav`
--

DROP TABLE IF EXISTS `OnePlus5_oneplusnav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OnePlus5_oneplusnav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OnePlus5_oneplusnav`
--

LOCK TABLES `OnePlus5_oneplusnav` WRITE;
/*!40000 ALTER TABLE `OnePlus5_oneplusnav` DISABLE KEYS */;
/*!40000 ALTER TABLE `OnePlus5_oneplusnav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 导航',6,'add_navbars'),(17,'Can change 导航',6,'change_navbars'),(18,'Can delete 导航',6,'delete_navbars'),(19,'Can add 首页',7,'add_indexpage'),(20,'Can change 首页',7,'change_indexpage'),(21,'Can delete 首页',7,'delete_indexpage'),(22,'Can add 一加产品',8,'add_product'),(23,'Can change 一加产品',8,'change_product'),(24,'Can delete 一加产品',8,'delete_product'),(25,'Can add 关于一加',9,'add_about'),(26,'Can change 关于一加',9,'change_about'),(27,'Can delete 关于一加',9,'delete_about'),(28,'Can add 服务支持',10,'add_server'),(29,'Can change 服务支持',10,'change_server'),(30,'Can delete 服务支持',10,'delete_server'),(31,'Can add 博客广告',11,'add_blogad'),(32,'Can change 博客广告',11,'change_blogad'),(33,'Can delete 博客广告',11,'delete_blogad'),(34,'Can add 分类',12,'add_category'),(35,'Can change 分类',12,'change_category'),(36,'Can delete 分类',12,'delete_category'),(37,'Can add 文章',13,'add_article'),(38,'Can change 文章',13,'change_article'),(39,'Can delete 文章',13,'delete_article'),(40,'Can add 评论',14,'add_comment'),(41,'Can change 评论',14,'change_comment'),(42,'Can delete 评论',14,'delete_comment'),(43,'Can add 视频',15,'add_video'),(44,'Can change 视频',15,'change_video'),(45,'Can delete 视频',15,'delete_video'),(46,'Can add 产品图片',16,'add_propic'),(47,'Can change 产品图片',16,'change_propic'),(48,'Can delete 产品图片',16,'delete_propic'),(49,'Can add 新闻',17,'add_news'),(50,'Can change 新闻',17,'change_news'),(51,'Can delete 新闻',17,'delete_news'),(52,'Can add 服务选项',18,'add_servercontent'),(53,'Can change 服务选项',18,'change_servercontent'),(54,'Can delete 服务选项',18,'delete_servercontent'),(55,'Can add 常见问题',19,'add_commonproblems'),(56,'Can change 常见问题',19,'change_commonproblems'),(57,'Can delete 常见问题',19,'delete_commonproblems'),(58,'Can add 联系我们',20,'add_links'),(59,'Can change 联系我们',20,'change_links'),(60,'Can delete 联系我们',20,'delete_links'),(61,'Can add 导航标签',21,'add_navtags'),(62,'Can change 导航标签',21,'change_navtags'),(63,'Can delete 导航标签',21,'delete_navtags'),(64,'Can add 标签详情',22,'add_taggoods'),(65,'Can change 标签详情',22,'change_taggoods'),(66,'Can delete 标签详情',22,'delete_taggoods'),(67,'Can add 商城广告',23,'add_ad'),(68,'Can change 商城广告',23,'change_ad'),(69,'Can delete 商城广告',23,'delete_ad'),(70,'Can add 商城首页商品',24,'add_shopsales'),(71,'Can change 商城首页商品',24,'change_shopsales'),(72,'Can delete 商城首页商品',24,'delete_shopsales'),(73,'Can add product_details',25,'add_product_details'),(74,'Can change product_details',25,'change_product_details'),(75,'Can delete product_details',25,'delete_product_details'),(76,'Can add 商品详情',26,'add_product_desc'),(77,'Can change 商品详情',26,'change_product_desc'),(78,'Can delete 商品详情',26,'delete_product_desc'),(79,'Can add 规格参数',27,'add_arg'),(80,'Can change 规格参数',27,'change_arg'),(81,'Can delete 规格参数',27,'delete_arg'),(82,'Can add 常见问题',28,'add_prob'),(83,'Can change 常见问题',28,'change_prob'),(84,'Can delete 常见问题',28,'delete_prob'),(85,'Can add 手机参数',29,'add_phonearg'),(86,'Can change 手机参数',29,'change_phonearg'),(87,'Can delete 手机参数',29,'delete_phonearg'),(88,'Can add 服务选项',30,'add_servercontent'),(89,'Can change 服务选项',30,'change_servercontent'),(90,'Can delete 服务选项',30,'delete_servercontent'),(91,'Can add 搜索内容',31,'add_search'),(92,'Can change 搜索内容',31,'change_search'),(93,'Can delete 搜索内容',31,'delete_search'),(94,'Can add oneplus配置',32,'add_oneplusnav'),(95,'Can change oneplus配置',32,'change_oneplusnav'),(96,'Can delete oneplus配置',32,'delete_oneplusnav'),(97,'Can add OnePlus5',33,'add_oneplus5'),(98,'Can change OnePlus5',33,'change_oneplus5'),(99,'Can delete OnePlus5',33,'delete_oneplus5'),(100,'Can add 用户',34,'add_user'),(101,'Can change 用户',34,'change_user'),(102,'Can delete 用户',34,'delete_user'),(103,'Can add 搜索内容',35,'add_search'),(104,'Can change 搜索内容',35,'change_search'),(105,'Can delete 搜索内容',35,'delete_search');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(2000) NOT NULL,
  `img` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `category_id` int(11),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_b583a629` (`category_id`),
  KEY `blog_article_e8701ad4` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_phone_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `phone_auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'酷品潮人新宠，OnePlus 发布 colette 20 周年纪念版。','酷品潮人新宠，OnePlus 发布 colette 20 周年纪念版。','blog/article/2017/07/colette_bHltBah.png','<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是锋芒初露的国际互联网品牌，一个是早已享誉全球的巴黎时尚名所；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是智能手机的极速旗舰，人们没有把玩它就不算搞过机的极客宠儿。一个是难以被复刻的时尚精品潮店，引领着巴黎乃至全世界的风尚潮流；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是一心只做精品，为热衷互联网生活、有品位、乐分享的年轻用户提供高品质、优设计的产品。一个是因时尚而生，20 年来如一日为全球的酷品潮人奔走在时尚第一线。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	年轻、时尚、前卫、酷…… OnePlus 与 colette 生来不同，却能殊途同归。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在与&nbsp;colette 三次亲密合作之后，在 colette 迎来其 20 周年之际。今天，两个相隔万里的品牌，再一次跨越科技与时尚的边界，联名推出 OnePlus 3T colette 纪念版。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3645\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/MG_9751-1.jpg\" alt=\"_MG_9751-1\" width=\"5671\" height=\"3781\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一如既往的是，OnePlus 将在全球仅此一家的 colette 巴黎旗舰店举行 Pop-up 快闪店限量发售活动 。和以往不同的是，这是 OnePlus&nbsp;首次与 colette 进行产品与品牌层面的深度合作。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	“我们不断努力为 OnePlus 的用户提供最好的硬件和软件。现在，我们很高兴向大家介绍这款刻有 colette logo 的 OnePlus 3T colette 纪念版，以体现我们专注于美的追求及对细节的苛求。”OnePlus 创始人兼 CEO 刘作虎说。“我们的 colette 朋友比任何人都更加懂得细节、审美和品位，所以我们很自豪能与 colette 联合推出 20 周年纪念版本。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3654\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/colettebox-01.jpg\" alt=\"colettebox-01\" width=\"3925\" height=\"3925\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	“OnePlus 是一个令人激动的品牌，它颠覆了人们对手机的以往看法。我们很高兴在 colette 20 周年之际选择与 OnePlus 合作，为我们定制这款 OnePlus 3T colette 纪念版。 OnePlus 3T colette 纪念版非常漂亮，相信一定会吸引大量的目光。”colette 联合创始人 Sarah Andelman 说。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3643\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/bandeau20home-1650x930.jpg\" alt=\"bandeau20home-1650x930\" width=\"1650\" height=\"930\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	全球限量的 OnePlus 3T colette 20 周年纪念版，每一台都特别雕刻带有 colette 的 logo 。3 月 21 日，在巴黎 colette 旗舰店的 Pop-up 快闪店活动期间，对于那些足够幸运的人来说，还将遇见更多惊喜。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	过去一年，OnePlus 3T 广受好评，获得了媒体和用户的无数好评与认可。它拥有迄今依旧领先行业的强悍功能，如让你只有爽快没有等待的 Dash 极速闪充，6 GB 大内存，128 GB 的存储空间，以及高通骁龙“满血版” 821 处理器和简洁的 Android 体验。而现在，OnePlus 为那些喜爱 OnePlus，并渴望一直走在时尚前沿的用户而存在。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 3T colette 纪念版为全黑的铝合金一体设计，并采用 14 微米厚的阳极氧化暗色涂层，很好地保持了金属独特的外观和触感。每部手机经过多次微米级别喷砂处理，带来明亮而优雅的光泽。并且，我们还为整机镀上了 AFP 防指纹膜，以让手机保持长久使用依然洁净如新。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	这款黑色的 OnePlus 3T colette 纪念版将于 3 月 21 日上午 11 点（GMT +1）开始，在法国巴黎的 colette 唯一旗舰店进行售卖，零售价 479 欧元（合人民币约 3515元）。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3646\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/timg-803-16-09-49-55.jpg\" alt=\"timg-8(03-16-09-49-55)\" width=\"1340\" height=\"2010\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	Andelman 在此前的一次采访中说到，“ colette 引进的商品从来不是因为它可能会卖得好。它必须符合我心中的某种逻辑：与众不同、个性独特、品质出色，而且我们从未见过。它必须自成一体，足够新潮。如今，世界上有那么多的东西。然而要找到（气质）新颖独特的东西，真的很难。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2015 年，OnePlus 和 colette 首次携手。去年，OnePlus 3 发布时推出 Pop-up 快闪店活动。今天，我们有幸再次与 colette 进行更为深度的品牌合作。这是一次科技与时尚的美妙结合，也为我们开辟了新的方向。\r\n</p>',334,1,'2017-07-31 05:42:48.062009',255,4,2),(2,'原来，OnePlus 壁纸还有这么多讲究。','原来，OnePlus 壁纸还有这么多讲究。','blog/article/2017/07/723_4mK5cLV.jpg','<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在很多人眼里，壁纸也许是手机上一个无关紧要的东西。它远远没有性能、相机以及闪充重要，但它却可以成为破坏用户对手机第一印象的因素之一，而且好的壁纸可以使一个系统看起来更特别。我们想要给用户设计一套真正漂亮且独特的壁纸，让手机更有个性化和表现力。借着这次 OnePlus 3T 星辰黑的发布，和大家分享下壁纸的一些故事。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3698\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20170323163451.jpg\" alt=\"微信图片_20170323163451\" width=\"5760\" height=\"3840\" style=\"height:auto;width:720px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>瑞典艺术家 Hampus Olsson 与 OnePlus 壁纸的故事</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在各种机缘巧合之下，我们遇到了瑞典艺术家 Hampus Olsson，从 2015 年开始，我们就一直跟他合作，使用他创作的作品作为 OnePlus 的壁纸， OnePlus 3T 星辰黑的壁纸也不例外。从这些壁纸身上，你可以看到 OnePlus 的风格变化以及一些坚持。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 的壁纸拿捏得非常“恰到好处”，但要做到这点绝非易事。一张壁纸，不仅要表现独特、有趣、好看，还要承载功能。要保证与图标、搜索栏、时间、状态栏足够匹配等，而且还需带有 OnePlus 的元素，以及希望用户看到后 “WOW” 的惊呼。要同时做到这些很难，但是 Hampus Olsson 做到了。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"size-full wp-image-3705 aligncenter\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/MyGTxyCP.png\" alt=\"MyGTxyCP\" width=\"512\" height=\"512\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Hampus Olsson\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	他在表达自己创作壁纸的想法时是这么说的：“我有很多梦想以及想要创造的东西，这些东西各不相同，但同时它们都有一个共同点—— 抽象且超现实。我喜欢在壁纸上混合明亮、温暖的色彩，还会在上面添加一些丰富的细节。我为 OnePlus 做的这些壁纸可能会让你感觉有点迷幻，但这只是我发挥创造性思维之后的结果。”（原文：I’ve got too many dreams and things I want to create. Things I create might differ from each other a bit, but they all got something in common and that is the abstract, kind of surreal look. I love mixing bright, warm colors and adding small complex details. The work I’ve done for OnePlus might feel a bit psychedelic, but thats probably just an outcome of my creative mind.）\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在 Hampus Olsson的个人主页上，有他为 OnePlus 创作的所有壁纸以及一些创作感悟，评论中也有很多用户表达了对这种风格的喜爱，个人主页&gt;&gt;&nbsp;<strong>Hampus Olsson</strong>&nbsp;&nbsp;<a href=\"http://hampusolsson.com/oneplus/\" target=\"_blank\">OnePlus Official Wallpapers</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>OnePlus&nbsp;</strong><strong>壁纸的理念、变化和传承</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	我们选用的 OnePlus 壁纸，风格一向都很强烈，如果跟别人的壁纸放在一起做对比，会明显看出 OnePlus 的壁纸更加独特。而且只要用户一看到壁纸，就知道这是 OnePlus 的手机。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在 OnePlus 3 的时候，我们曾经延续使用过去一些 Material Design 风格的壁纸。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3669\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_13.png\" alt=\"launcher_13\" width=\"1080\" height=\"810\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3668\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_11.png\" alt=\"launcher_11\" width=\"1080\" height=\"810\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3666\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_06.png\" alt=\"launcher_06\" width=\"1080\" height=\"810\" style=\"height:auto;\" />\r\n</p>\r\n<div>\r\n	<br />\r\n</div>',545,0,'2017-07-31 05:43:44.743852',555,4,2),(3,'一个产品经理的冰与火之歌','产品经理是一个让人羡慕的词语，也是一个被玩坏的世俗语。不是我们所想的人人都能成为产品经理，从产品的孕育，到产品上市，最终被用户拿在手中 ，期间要经历太多太多我们看不到东西，需要投入大量的精力和心血，绝不是看起来的那样光鲜亮丽。当现实的冰，遇到憧憬的火，产品经理所演奏的，何尝不是一首冰与火之歌。','blog/article/2017/07/728.jpg','<div style=\"margin:0px;padding:0px;border:0px;font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<p>\r\n		产品经理是一个让人羡慕的词语，也是一个被玩坏的世俗语。不是我们所想的人人都能成为产品经理，从产品的孕育，到产品上市，最终被用户拿在手中 ，期间要经历太多太多我们看不到东西，需要投入大量的精力和心血，绝不是看起来的那样光鲜亮丽。当现实的冰，遇到憧憬的火，产品经理所演奏的，何尝不是一首冰与火之歌。\r\n	</p>\r\n	<p>\r\n		今天，借着近水楼台先得月的便利，我们给大家抓来了 OnePlus 5 的产品经理 Vito，一起来聊聊 OnePlus 5 背后的一些故事。\r\n	</p>\r\n	<p>\r\n		要抓到 Vito 真心不易。\r\n	</p>\r\n	<p>\r\n		和 Vito 约谈几次，都以繁忙为由拒绝，时间总是定不下来。好不容易赶上一个忙里偷闲的下午，公司的所有会议室都塞满了人。我们甚至没有找到一个空闲的会客室，只能来到走廊的懒人桌边。彼时，深圳的夏天已经燥热起来，太阳开始缓缓走向红树林那边。泰然楼下的车流永远川流不息，远处的海滩慵懒不起丝毫波澜，对岸的香港建筑和山峦，在蓝天白云下清晰可见……我们的对话，在这样匆忙又躁动的下午开始。\r\n	</p>\r\n	<p>\r\n		“我现在满脑子都是机器，每天看各种反馈。”采访&nbsp;Vito 的时候，他刚从深圳、广州、保定的 OnePlus 5 线下活动回来。发布会之后，似乎并没有得闲的时候。手机刚发布没多久，关注度自然很高，各家各种声音，也都会出来。这种感觉像是陪孩子高考后的家长，小心翼翼地去查考分，还有要在意周围邻居们的议论纷纷。北京发布会之后，他告诉我他一天都没休息过。好在似乎早已习惯，这一年多来，Vito&nbsp;就为这一个项目东奔西走，座位上很少看到本人的存在，深夜加班的时候除外。\r\n	</p>\r\n	<p>\r\n		我：感觉怎么样？\r\n	</p>\r\n	<p>\r\n		最大的感觉就是累啊，他苦笑说。但我还听到另一个关键字：盯。\r\n	</p>\r\n	<p>\r\n		Vito：这个项目从头到尾都盯得非常细，小到声音的通话降噪，包括尝试 aptX HD (超清蓝牙音频标准)这些小的点，大到从屏幕的颜色调试，到亮度的显示。好多新功能的东西，一个一个地去跟。就包括阅读模式这个新的点，我们第一个这么做的，没有什么参照，我们和开发工程师一起去研究，从洞察到这个需求之后，加入 RGB Sensor 这个器件，从把它调通，有了基础的接口，再到显示效果，我们花费了非常非常多的时间和心血。\r\n	</p>\r\n	<p>\r\n		顺着阅读模式这个点，我们把 OnePlus 5 这款产品像洋葱一样一片一片剥开。\r\n	</p>\r\n	<p>\r\n		我：花了多久？\r\n	</p>\r\n	<p>\r\n		Vito：几个月的时间吧，我们迭代了大概 20 多个版本。从开始有一点点彩色，到慢慢有电子书的效果，到整个色温曲线跟环境温曲线的匹配，再到文字的处理。一点一点的调。我记得有一次，我在家里体验的时候，我觉得色温还是有一些问题，但是实验室里没有我家很低色温的那个台灯，我就直接把那个灯扛到实验室给他们去测试。\r\n	</p>\r\n	<p>\r\n		我：这是谁的想法？\r\n	</p>\r\n	<p>\r\n		Vito：我们和工程师的想法。\r\n	</p>\r\n	<p>\r\n		我：那是先有了 RGB Sensor 还是先有这个想法，最初目的是什么？\r\n	</p>\r\n	<p>\r\n		Vito：这个没什么先和后，刚开始为了给用户一个更加舒适的护眼方案，我们认为屏幕不是越黄越护眼，如果你在一个比较冷的环境里看一个非常黄非常黄的一个屏幕，视觉反差很大，反而造成眼睛的不适应，因为你看一个环境很大的东西，是视觉反差决定眼睛的疲劳程度。如果你在一个非常亮的环境下看一个非常暗的东西，你眼睛进也会非常非常的累。反之也是如此，所以我们想做一个更高级的护眼模式，匹配你的环境，一方面是在你看不同的环境下，看的屏幕都是正常的，在不同的色温下看到的都是正常的颜色，从各个角度看都很舒适。另外我们认为做这个反差小，更加护眼一点。大家在手机上的阅读场景越来越多，我们坐地铁挤公交都会看到，很多人阅读还有一个专门的阅读器比如 Kindle，我们是不是也可以在手机做一个类似这样接近的“阅读模式效果”。所以我们做一个阅读模式，这样不伤眼，能保持纯粹的阅读，同时你可以一键开启或关闭，不用携带电子书，更方便。但没想到阅读模式调试的时间，比调夜间模式的时间久的多。\r\n	</p>\r\n	<p>\r\n		我：屏幕我们确实做了很多工作？\r\n	</p>\r\n	<p>\r\n		Vito：是的，去年我们看来非常多的反馈，屏幕这次的调试整体的亮度会比之前低很多，加上我们这次新增的 DCI-P3 色域标准，阅读模式和夜间模式 2.0，屏幕的体验提升非常多。\r\n	</p>\r\n	<p>\r\n		我：为什么我们要做全球一个版本？\r\n	</p>\r\n	<p>\r\n		Vito：两个原因，第一我们是一个全球性的品牌，便于库存管理；第二就是用户的很全球化的。天线我们这次支持的东西太多了。全球一个版本，34 个频段，超过 100 个 CA 组合，再加上高阶调制。很多新东西都加在里面，还有双路 WiFi 的 2X2 MIMO，很多的新技术加入，对天线的要求是非常高的，包括对空间的挑战，元器件的摆放等，跟天线打架最严重的的是 ID，因为天线要求开多大的缝，会影响 ID 效果。当我们把所有东西搞定的时候发现 NFC 的天线没法做，当时面临的抉择就是要不就是在背后开一个玻璃窗，但不好看。要不就是把 NFC 做在屏幕上，但你去刷卡的时候，你去看不到屏幕上的显示，这个体验非常不好，对屏幕也不是很友好，不能接受。最后是一个结构工程师脑洞大开，说我们要不把 NFC 放在摄像头中间，我们为此申请了一个专利，这是我们第一个这么做的。这极大地保护了背部的一体感，有的用户一开始疑问那条线是什么。其实 OnePlus 3 的时候也开了一条竖线，但第一个 OnePlus 3 的时候没有这么多频段，没这么多新的技术在里面。\r\n	</p>\r\n	<p>\r\n		说到天线，有也顺便说了下天线的设计。ID 其实挺冤的，有说。设计是为了更好隐藏天线带，而天线带背后的信号频段，各家都是不一样的。我们分别在纽约和上海做了调研，让他们上手摸，有哪些吐槽的点，帮我们提意见，回来再改进优化。 OnePlus 5 的棱线、弧度，整体延续的是 OnePlus 3 的设计语言。这次我们的 ID 整体由硬朗变的更为圆润，摄像头由单摄变为双摄，加上轻薄化是趋势，机身厚度的问题决定了双摄的位置。如果再放在中间，与屏幕重叠，双摄像头会凸起更多，会变得无比突兀。市面上说我们像这个像那个，那是因为曝光图就是直接拿那些手机 PS 的能不像吗？在很多细节设计完全是自己的。在大家都“乍眼一看”的今天，他的这个解释天线似乎也站不稳脚跟。相信真正想体验的人拿在手里，感受到其中的细节，会改变他之前的看法。\r\n	</p>\r\n	<p>\r\n		我：在上市后也面临的一些压力，你是怎么面对这些压力的？\r\n	</p>\r\n	<p>\r\n		Vito：怎么说，是别人的事，把真正的问题解决，是我的事儿。去做就是了，想这么多干嘛。\r\n	</p>\r\n	<p>\r\n		我：那这部手机上，你觉得最骄傲最自豪的一点是什么？\r\n	</p>\r\n	<p>\r\n		Vito：我们都知道 OnePlus 5 的性能是用户最不用担心的——骁龙最强 835 处理器，最低 6GB 起步的大内存，还有如虎添翼的 UFS 2.1 闪存，随便拿出一项出去都是很诱人的卖点。虽然大家都在说性能很强，游戏体验很棒，拍照不错。但是我最骄傲的是综合体验：我们做了太多太多软硬件上的优化，这部手机小到录音，大到续航，包括整机的重量，握持感，然后还有震动、显示，后台应用程序的流畅度，预加载与清理…….是我目前所有基础体验全面提升的手机。像显示、振动、声音这些，可能不会作为大的卖点去说，但我们在这代手机上花了非常多的时间去调，你真的只有拿在手上才能感受到。\r\n	</p>\r\n	<p>\r\n		我：遗憾的地方呢？\r\n	</p>\r\n	<p>\r\n		Vito：知道它的人太少，知道它真正了解的，还不够多。\r\n	</p>\r\n	<p>\r\n		他似乎有些“狡猾”，跟我卖起了关子来。\r\n	</p>\r\n	<p>\r\n		我：产品这么给力，背后一定藏着一支很厉害的团队吧？\r\n	</p>\r\n	<p>\r\n		Vito：这个当然，一个人是不能做所有事情的，把我拆成 80 块也不能。经过这两年的磨合，我们的团队比以前更成熟，在面临困难和挑战的时候更为理性和稳健许多。大家都知道我们现在是聚焦走精品路线，又是个跨国的团队，更离不开公司每一个人的分工与协作，这里很感谢为 OnePlus 5 这个项目付出的每一个人，我们一起能做出让全世界几十个国家用户认可的产品，这种骄傲和自豪的感觉是无法用语言描述的。\r\n	</p>\r\n	<p>\r\n		我：时间不早了，说说你对这款产品的希望吧。\r\n	</p>\r\n	<p>\r\n		Vito：随着我们的手机越来越多，后面我们的真实反馈会越来越多。前面大家主要是看评测，我希望我们的用户不要太在意网上那些声音，不要太纠结，我希望他们真真正正地买回来体验一下。手感啊，性能啊，拍照啊，甚至是屏幕显示……我真心希望大家拿在手里体验一下，云体验只会人云亦云。如果拿到手机之后，我还是比较有自信的，Vito 苦口婆心地说。\r\n	</p>\r\n	<p>\r\n		在互联网，一点点问题就会放得很大，进而会影响你的产品销量和口碑。但我始终相信真正的用户，能看到你的价值，会为好产品买单的。对于每一个品牌来说，争议其实会永远追随你的，只要你进入这个行业，就要接受这个行业的好与坏。我们能做的，只有善于分辨真实的声音，接受建议，不断改进产品，让产品做得越来越好。\r\n	</p>\r\n	<p>\r\n		举全公司之力，出一款精品。挑战的不仅仅是市场，更是时间的考验。聚焦，需要排除常人难以理解的困难，做出常人难以想象的牺牲，以及拥有常人难以企及的勇气。去年年末的时候，采访 Pete（刘作虎）说，慢一点，但心里踏实。想起很多年前看过一部电影叫《云中漫步》，里面的一句话记忆犹新，老人对退伍归来迷失的保罗（基努·里维斯主演）说：“上等白兰地的秘诀，是时间。”对这句话，也似乎有了新的注解。\r\n	</p>\r\n</div>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<div style=\"margin:0px;padding:0px;border:0px;font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<p>\r\n		后记：\r\n	</p>\r\n	<p>\r\n		<span>按照惯例，OnePlus 每发一次新品，我都喜欢去采访背后的产品经理，去挖掘他们背后的一些东西。当然，这次的产品经理有些特殊，我们一同进入公司，学习，成长三年多，又同为室友两年，彼此了解甚多。对一年一旗舰的 OnePlus 来说，每一代产品，都倾注了公司背后的每一个工程师、设计、开发、营销、客服、后勤等等所有员工的协作与支持。迫于时间和精力，无法一一访谈，只能抉取其中亲历的代表。无论是产品，还是品牌，皆由人造。我喜欢人的故事，挖掘他们背后鲜为人知的故事，也就是挖掘产品的故事。这是我的工作，也是我的私心。我的问题是不完美的，不完美到无法构成一篇很好的采访稿。Vito 说，你应该提前把稿子给我，我提前好做准备。我说不，我想听到最真实，原汁原味的声音。</span> \r\n	</p>\r\n	<p>\r\n		Never Settle.\r\n	</p>\r\n</div>',554,0,'2017-07-31 08:48:42.236009',200,4,4);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogad`
--

DROP TABLE IF EXISTS `blog_blogad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogad`
--

LOCK TABLES `blog_blogad` WRITE;
/*!40000 ALTER TABLE `blog_blogad` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'新闻',999),(2,'产品图片',999),(3,'视频',999),(4,'博客',999);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_id` (`article_id`),
  KEY `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` (`pid_id`),
  KEY `blog_comment_user_id_59a54155_fk_phone_auth_user_id` (`user_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` FOREIGN KEY (`pid_id`) REFERENCES `blog_comment` (`id`),
  CONSTRAINT `blog_comment_user_id_59a54155_fk_phone_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `phone_auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_news`
--

DROP TABLE IF EXISTS `blog_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_news_user_id_b0aecec6_fk_phone_auth_user_id` (`user_id`),
  CONSTRAINT `blog_news_user_id_b0aecec6_fk_phone_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `phone_auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_news`
--

LOCK TABLES `blog_news` WRITE;
/*!40000 ALTER TABLE `blog_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_propic`
--

DROP TABLE IF EXISTS `blog_propic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_propic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_propic`
--

LOCK TABLES `blog_propic` WRITE;
/*!40000 ALTER TABLE `blog_propic` DISABLE KEYS */;
INSERT INTO `blog_propic` VALUES (1,'The view phone_auth.views.do_l','星辰黑','blog/ProPic/2017/07/4eeacb63099100e584d2a31c3e0f42db_200_200_HunTU9k.png',1),(2,'Star-Phone 星空系列','月岩灰','blog/ProPic/2017/07/black_phone_PSH5SeA.png',2),(3,'3T','3T','blog/ProPic/2017/07/op3t-gunmetal-list_1Xk1h4O.png',3),(4,'super手机3系列','super手机3  薄荷金','blog/ProPic/2017/07/op3-gold_JLEadBX.png',4),(5,'super手机3 薄荷金','super手机3 冰川灰','blog/ProPic/2017/07/op3-graphite_r4kb2PE.png',5),(6,'手机X系列','super手机X 暗夜黑','blog/ProPic/2017/07/opx-black_AHM7PtH.png',6),(7,'suoer手机X 系列','super手机X 皓月白','blog/ProPic/2017/07/opx-white_pr35cxb.png',7);
/*!40000 ALTER TABLE `blog_propic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_video`
--

DROP TABLE IF EXISTS `blog_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `video_length` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_video`
--

LOCK TABLES `blog_video` WRITE;
/*!40000 ALTER TABLE `blog_video` DISABLE KEYS */;
INSERT INTO `blog_video` VALUES (1,'Star-Phone 发布会','blog/video/2017/07/5big1_kQPVdRx.jpg','http://player.youku.com/player.php/sid/XMjgzOTAyNjA1Mg==/v.swf',97),(2,'Star-Phone 产品视频','','<embed src=\'http://player.youku.com/player.php/sid/XMjgzODUxNjUwOA==/v.swf\' allowFullScreen=\'true\' quality=\'high\' width=\'480\' height=\'400\' align=\'middle\' allowScriptAccess=\'always\' type=\'application/x',50),(3,'Star-Phone 产品视频','blog/video/2017/07/5product.jpg','http://player.youku.com/player.php/sid/XMjgzODUxNjUwOA==/v.swf',60),(4,'Star-Phone 产品视频','blog/video/2017/07/5product_MuZYCcM.jpg','http://player.youku.com/player.php/sid/XMTg0MTEyMzMwOA==/v.swf',60),(5,'Star-Phone 产品视频','blog/video/2017/07/5product_EE0zJKr.jpg','http://player.youku.com/player.php/sid/XMTYwNzY4MTAxMg==/v.swf',45),(6,'Star-Phone 产品视频','blog/video/2017/07/5product_dYZriFN.jpg','http://player.youku.com/player.php/sid/XMTI5NDU4NDg2MA==/v.swf',45);
/*!40000 ALTER TABLE `blog_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-07-31 05:18:24.089758','2','zino1',2,'已修改 last_login 和 is_superuser 。',34,1),(2,'2017-07-31 05:34:16.805409','1','The view phone_auth.views.do_l',1,'Added.',16,1),(3,'2017-07-31 05:35:54.581310','2','Star-Phone 星空系列',1,'Added.',16,1),(4,'2017-07-31 05:37:04.639971','3','3T',1,'Added.',16,1),(5,'2017-07-31 05:37:39.405004','4','super手机3系列',1,'Added.',16,1),(6,'2017-07-31 05:38:06.709340','5','super手机3 薄荷金',1,'Added.',16,1),(7,'2017-07-31 05:38:35.125354','6','手机X系列',1,'Added.',16,1),(8,'2017-07-31 05:39:04.612869','7','suoer手机X 系列',1,'Added.',16,1),(9,'2017-07-31 05:40:20.749361','1','新闻',1,'Added.',12,1),(10,'2017-07-31 05:40:32.216726','2','产品图片',1,'Added.',12,1),(11,'2017-07-31 05:40:40.832055','3','视频',1,'Added.',12,1),(12,'2017-07-31 05:40:45.642911','4','博客',1,'Added.',12,1),(13,'2017-07-31 05:42:48.135489','1','酷品潮人新宠，OnePlus 发布 colette 20 周年纪念版。',1,'Added.',13,1),(14,'2017-07-31 05:43:44.818364','2','原来，OnePlus 壁纸还有这么多讲究。',1,'Added.',13,1),(15,'2017-07-31 05:47:06.127502','1','商品１',1,'Added.',24,1),(16,'2017-07-31 05:47:12.582212','1','让 OnePlus 5 别具一格',1,'Added.',26,1),(17,'2017-07-31 05:48:03.768381','2','3D 弧边覆盖， 手感顺滑自在。',1,'Added.',26,1),(18,'2017-07-31 05:48:56.804532','3','发的所发生的是',1,'Added.',26,1),(19,'2017-07-31 05:50:49.888288','2','商品２',1,'Added.',24,1),(20,'2017-07-31 05:51:16.665797','3','商品３',1,'Added.',24,1),(21,'2017-07-31 05:52:17.714393','4','OnePlus 5 热销配件',1,'Added.',24,1),(22,'2017-07-31 05:53:10.357605','5','OnePlus 5 热销配件',1,'Added.',24,1),(23,'2017-07-31 05:53:54.935796','6','OnePlus 5 热销配件',1,'Added.',24,1),(24,'2017-07-31 05:54:13.286944','7','OnePlus 5 热销配件',1,'Added.',24,1),(25,'2017-07-31 05:54:51.766596','8','一加生活周边',1,'Added.',24,1),(26,'2017-07-31 05:55:14.909817','9','一加生活周边',1,'Added.',24,1),(27,'2017-07-31 05:56:03.966899','10','一加生活周边',1,'Added.',24,1),(28,'2017-07-31 05:56:45.501997','11','一加生活周边',1,'Added.',24,1),(29,'2017-07-31 05:58:04.205018','4','意图突然y',1,'Added.',26,1),(30,'2017-07-31 05:58:41.079632','5','设计，更加善解人意。',1,'Added.',26,1),(31,'2017-07-31 05:59:07.346563','6','出门背它，就够了。',1,'Added.',26,1),(32,'2017-07-31 06:00:42.802562','8','OnePlus 5 热销配件',2,'已修改 saleName，saleDese 和 saleImg 。',24,1),(33,'2017-07-31 06:01:25.546065','12','一加生活周边',1,'Added.',24,1),(34,'2017-07-31 06:01:50.117131','13','一加生活周边',1,'Added.',24,1),(35,'2017-07-31 06:02:21.961369','1','商品１',2,'已修改 saleImg 。',24,1),(36,'2017-07-31 06:03:36.839634','1','三包服务介绍',1,'Added.',28,1),(37,'2017-07-31 06:03:57.285304','2','承保周期：充电器、数据线、移动电源、耳机（有线/无线耳机），',1,'Added.',28,1),(38,'2017-07-31 06:04:16.473914','3','退货办理流程',1,'Added.',28,1),(39,'2017-07-31 06:05:03.886407','1','温馨提示',1,'Added.',27,1),(40,'2017-07-31 06:05:27.568325','2','尺寸',1,'Added.',27,1),(41,'2017-07-31 06:05:46.990533','3','重量',1,'Added.',27,1),(42,'2017-07-31 06:06:06.941735','4','太空黑双肩包 材质',1,'Added.',27,1),(43,'2017-07-31 06:06:27.768073','5','莫兰迪灰双肩包 材质',1,'Added.',27,1),(44,'2017-07-31 06:06:45.642302','6','洗涤说明',1,'Added.',27,1),(45,'2017-07-31 06:07:39.124999','1','OnePlus5',1,'Added.',8,1),(46,'2017-07-31 06:07:54.436000','2','一加手机　３',1,'Added.',8,1),(47,'2017-07-31 06:08:00.910274','3','一加手机　３Ｔ',1,'Added.',8,1),(48,'2017-07-31 06:08:28.696475','1','Ｈ２Ｏｓ',1,'Added.',9,1),(49,'2017-07-31 06:08:37.511885','2','加入super',1,'Added.',9,1),(50,'2017-07-31 06:08:45.130025','3','了解super',1,'Added.',9,1),(51,'2017-07-31 06:09:13.251697','1','OnePlus5',1,'Added.',6,1),(52,'2017-07-31 06:09:26.389796','2','商城',1,'Added.',6,1),(53,'2017-07-31 06:09:33.845260','3','服务',1,'Added.',6,1),(54,'2017-07-31 06:09:41.483710','4','博客',1,'Added.',6,1),(55,'2017-07-31 06:09:48.790010','5','论坛',1,'Added.',6,1),(56,'2017-07-31 06:10:00.831477','2','商城',2,'已修改 english 。',6,1),(57,'2017-07-31 06:10:04.767451','3','服务',2,'已修改 english 。',6,1),(58,'2017-07-31 06:10:09.536312','4','博客',2,'已修改 english 。',6,1),(59,'2017-07-31 06:10:15.841906','5','论坛',2,'已修改 english 。',6,1),(60,'2017-07-31 06:10:35.592015','1','自助服务',1,'Added.',10,1),(61,'2017-07-31 06:10:44.696550','2','技术支持',1,'Added.',10,1),(62,'2017-07-31 06:10:52.848578','3','售后服务',1,'Added.',10,1),(63,'2017-07-31 06:10:59.632660','4','一加加多宝',1,'Added.',10,1),(64,'2017-07-31 06:28:03.591333','4','jinuo',2,'已修改 qq，mobile 和 url 。',34,1),(65,'2017-07-31 07:46:57.992123','1','Star-Phone 发布会',1,'Added.',15,1),(66,'2017-07-31 07:47:58.509570','2','Star-Phone 产品视频',1,'Added.',15,1),(67,'2017-07-31 07:48:27.593851','3','Star-Phone 产品视频',1,'Added.',15,1),(68,'2017-07-31 07:48:38.585444','4','Star-Phone 产品视频',1,'Added.',15,1),(69,'2017-07-31 07:48:51.767585','5','Star-Phone 产品视频',1,'Added.',15,1),(70,'2017-07-31 08:05:18.700125','6','Star-Phone 产品视频',1,'Added.',15,1),(71,'2017-07-31 08:05:34.091050','7','Star-Phone 产品视频',1,'Added.',15,1),(72,'2017-07-31 08:06:38.567207','7','Star-Phone 产品视频',3,'',15,1),(73,'2017-07-31 08:27:12.550273','2','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(74,'2017-07-31 08:27:35.622836','3','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(75,'2017-07-31 08:29:16.500192','3','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(76,'2017-07-31 08:30:22.383120','4','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(77,'2017-07-31 08:32:28.776579','5','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(78,'2017-07-31 08:33:21.120149','6','Star-Phone 产品视频',2,'已修改 video_url 。',15,1),(79,'2017-07-31 08:48:42.302129','3','一个产品经理的冰与火之歌',1,'Added.',13,1),(80,'2017-07-31 08:48:53.206694','1','酷品潮人新宠，OnePlus 发布 colette 20 周年纪念版。',2,'已修改 content 。',13,1),(81,'2017-07-31 09:36:22.944008','3','一个产品经理的冰与火之歌',2,'已修改 desc 和 content 。',13,1),(82,'2017-08-01 02:22:54.727372','7','闪充套装',1,'Added.',26,1),(83,'2017-08-01 02:24:06.830642','1','Product_details object',1,'Added.',25,1),(84,'2017-08-01 02:24:31.729795','7','闪充套装',2,'已修改 img_url 。',26,1),(85,'2017-08-01 02:24:45.954153','1','让 OnePlus 5 别具一格',2,'已修改 sale 。',26,1),(86,'2017-08-01 02:24:50.676598','2','3D 弧边覆盖， 手感顺滑自在。',2,'已修改 sale 。',26,1),(87,'2017-08-01 02:24:55.432191','3','发的所发生的是',2,'已修改 sale 。',26,1),(88,'2017-08-01 02:46:14.650466','1','闪充套装',2,'没有字段被修改。',25,1),(89,'2017-08-01 02:47:01.868713','6','出门背它，就够了。',3,'',26,1),(90,'2017-08-01 02:47:01.926858','5','设计，更加善解人意。',3,'',26,1),(91,'2017-08-01 02:47:01.960151','4','意图突然y',3,'',26,1),(92,'2017-08-01 02:47:01.993745','3','发的所发生的是',3,'',26,1),(93,'2017-08-01 02:47:02.110462','2','3D 弧边覆盖， 手感顺滑自在。',3,'',26,1),(94,'2017-08-01 02:47:02.185620','1','让 OnePlus 5 别具一格',3,'',26,1),(95,'2017-08-01 02:53:01.989015','2','OnePlus 5 力量帝套装',1,'Added.',25,1),(96,'2017-08-01 02:53:55.003454','3','OnePlus 5 3D钢化玻璃保护膜',1,'Added.',25,1),(97,'2017-08-01 02:55:22.126505','4','OnePlus 5 3D钢化玻璃保护膜',1,'Added.',25,1),(98,'2017-08-01 02:56:48.858186','8','黑檀',1,'Added.',26,1),(99,'2017-08-01 02:57:53.260917','9','芳纶纤维',1,'Added.',26,1),(100,'2017-08-01 02:58:47.026942','10','酸枝',1,'Added.',26,1),(101,'2017-08-01 03:01:57.417844','11','3D 弧边覆盖， 手感顺滑自在。',1,'Added.',26,1),(102,'2017-08-01 03:19:18.598068','4','OnePlus 5 3D钢化玻璃保护膜',2,'已修改 img_url 。',25,1),(103,'2017-08-01 03:19:36.315289','2','OnePlus 5 力量帝套装',2,'已修改 img_url 。',25,1),(104,'2017-08-01 03:19:53.044529','3','OnePlus 5 3D钢化玻璃保护膜',2,'已修改 img_url 。',25,1),(105,'2017-08-01 04:40:19.951808','1','闪充套装',2,'已修改 small_img 。',25,1),(106,'2017-08-01 05:03:13.147746','5','一加旅行双肩包',1,'Added.',25,1),(107,'2017-08-01 05:06:44.480291','6','一加旅行双肩包',1,'Added.',25,1),(108,'2017-08-01 05:07:33.339923','7','一加旅行双肩包',1,'Added.',25,1),(109,'2017-08-01 05:08:02.422953','8','一加旅行双肩包',1,'Added.',25,1),(110,'2017-08-01 05:14:39.482803','9','一加旅行双肩包',1,'Added.',25,1),(111,'2017-08-01 05:22:07.206400','7','OnePlus 5 热销配件',2,'已修改 saleImg 。',24,1),(112,'2017-08-01 05:24:03.793088','10','OnePlus 5 个性保护壳',1,'Added.',25,1),(113,'2017-08-01 05:26:39.355959','11','OnePlus 5 个性保护壳',1,'Added.',25,1),(114,'2017-08-01 05:28:38.072412','10','OnePlus 5 个性保护壳',2,'已修改 color_img 。',25,1),(115,'2017-08-01 05:41:31.903981','6','一加旅行双肩包',2,'已修改 sale 。',25,1),(116,'2017-08-01 06:04:38.833395','5','一加旅行双肩包',2,'已修改 color_img 。',25,1),(117,'2017-08-01 06:04:53.658657','5','一加旅行双肩包',2,'已修改 color_img 。',25,1),(118,'2017-08-01 06:04:57.556822','6','一加旅行双肩包',2,'已修改 color_img 。',25,1),(119,'2017-08-01 06:05:02.775789','7','一加旅行双肩包',2,'已修改 color_img 。',25,1),(120,'2017-08-01 06:05:07.304481','8','一加旅行双肩包',2,'已修改 small_img 。',25,1),(121,'2017-08-01 06:20:53.223724','6','一加旅行双肩包',2,'已修改 color_img 。',25,1),(122,'2017-08-01 06:20:59.072697','7','一加旅行双肩包',2,'已修改 color_img 。',25,1),(123,'2017-08-01 06:21:19.547662','8','一加旅行双肩包',2,'已修改 small_img 和 color_img 。',25,1),(124,'2017-08-01 06:24:37.270183','10','一加生活周边',2,'已修改 saleImg 。',24,1),(125,'2017-08-02 06:37:41.621384','12','',1,'Added.',26,1),(126,'2017-08-02 06:38:49.899171','12','',3,'',26,1),(127,'2017-08-02 06:39:04.716019','13','',1,'Added.',26,1),(128,'2017-08-02 07:39:13.543959','14','车载充电',1,'Added.',26,1),(129,'2017-08-02 07:39:28.240222','13','',3,'',26,1),(130,'2017-08-02 07:42:25.903169','12','一加车载DASH闪充',1,'Added.',25,1),(131,'2017-08-02 07:43:26.142628','12','一加车载DASH闪充',2,'已修改 small_img 。',25,1),(132,'2017-08-02 07:54:16.952416','13','一加旅行袋',1,'Added.',25,1),(133,'2017-08-02 07:56:01.011043','13','一加旅行袋',2,'已修改 sale 。',25,1),(134,'2017-08-02 07:56:17.209041','13','一加旅行袋',2,'已修改 sale 。',25,1),(135,'2017-08-02 07:56:27.732840','13','一加旅行袋',2,'已修改 sale 。',25,1),(136,'2017-08-02 07:59:11.310291','13','一加旅行袋',2,'已修改 img_url 。',25,1),(137,'2017-08-02 08:00:42.118291','13','一加旅行袋',2,'已修改 small_img 。',25,1),(138,'2017-08-02 08:01:30.238860','15','旅行包',1,'Added.',26,1),(139,'2017-08-02 08:02:15.025850','16','真皮钱包',1,'Added.',26,1),(140,'2017-08-02 08:03:23.286690','14','真皮钱包',1,'Added.',25,1),(141,'2017-08-02 08:04:12.397898','16','真皮钱包',2,'没有字段被修改。',26,1),(142,'2017-08-02 08:05:43.020048','17','出行套装',1,'Added.',26,1),(143,'2017-08-02 08:06:04.425465','15','出行套装',1,'Added.',25,1),(144,'2017-08-02 08:06:29.183421','15','出行套装',2,'已修改 sale 。',25,1),(145,'2017-08-02 08:28:56.955635','16','OnePlus 5 个性保护壳',1,'Added.',25,1),(146,'2017-08-02 08:32:09.093345','18','让 OnePlus 5 别具一格',1,'Added.',26,1),(147,'2017-08-02 08:33:36.495110','19','手感，把玩无厌。',1,'Added.',26,1),(148,'2017-08-02 08:47:46.111031','1','适配机型',2,'已修改 title 和 desc 。',27,1),(149,'2017-08-02 09:03:43.148115','7','尺寸',1,'Added.',27,1),(150,'2017-08-02 09:04:19.028353','8','重量',1,'Added.',27,1),(151,'2017-08-02 09:04:54.509986','9','包装清单',1,'Added.',27,1),(152,'2017-08-02 09:05:18.420848','10','材质',1,'Added.',27,1),(153,'2017-08-02 09:05:45.979189','11','适配机型',1,'Added.',27,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(13,'blog','article'),(11,'blog','blogad'),(12,'blog','category'),(14,'blog','comment'),(17,'blog','news'),(16,'blog','propic'),(15,'blog','video'),(4,'contenttypes','contenttype'),(33,'OnePlus5','oneplus5'),(32,'OnePlus5','oneplusnav'),(34,'phone_auth','user'),(19,'server','commonproblems'),(20,'server','links'),(18,'server','servercontent'),(5,'sessions','session'),(23,'shop','ad'),(27,'shop','arg'),(21,'shop','navtags'),(29,'shop','phonearg'),(28,'shop','prob'),(26,'shop','product_desc'),(25,'shop','product_details'),(31,'shop','search'),(30,'shop','servercontent'),(24,'shop','shopsales'),(22,'shop','taggoods'),(9,'xphone','about'),(7,'xphone','indexpage'),(6,'xphone','navbars'),(8,'xphone','product'),(35,'xphone','search'),(10,'xphone','server');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'OnePlus5','0001_initial','2017-07-31 04:46:10.845631'),(2,'contenttypes','0001_initial','2017-07-31 04:46:11.460079'),(3,'contenttypes','0002_remove_content_type_name','2017-07-31 04:51:27.143124'),(4,'auth','0001_initial','2017-07-31 04:51:30.514694'),(5,'auth','0002_alter_permission_name_max_length','2017-07-31 04:51:31.250157'),(6,'auth','0003_alter_user_email_max_length','2017-07-31 04:51:31.307385'),(7,'auth','0004_alter_user_username_opts','2017-07-31 04:51:31.357357'),(8,'auth','0005_alter_user_last_login_null','2017-07-31 04:51:31.407643'),(9,'auth','0006_require_contenttypes_0002','2017-07-31 04:51:31.441891'),(10,'auth','0007_alter_validators_add_error_messages','2017-07-31 04:51:31.486077'),(11,'phone_auth','0001_initial','2017-07-31 04:59:53.388569'),(12,'admin','0001_initial','2017-07-31 05:03:28.009990'),(13,'admin','0002_logentry_remove_auto_add','2017-07-31 05:03:28.050576'),(14,'blog','0001_initial','2017-07-31 05:03:42.026679'),(15,'server','0001_initial','2017-07-31 05:03:42.856721'),(16,'sessions','0001_initial','2017-07-31 05:03:43.467391'),(17,'shop','0001_initial','2017-07-31 05:03:53.422227'),(18,'xphone','0001_initial','2017-07-31 05:03:56.944613'),(19,'blog','0002_auto_20170731_1647','2017-07-31 08:47:09.606267'),(20,'shop','0002_auto_20170801_1043','2017-08-01 02:43:46.999125'),(21,'xphone','0002_search','2017-08-01 02:43:47.816705'),(22,'shop','0003_auto_20170801_1045','2017-08-01 02:45:48.182233'),(23,'shop','0004_auto_20170801_1247','2017-08-01 04:47:53.870736');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0in4i9x7svhiy6wk14obbc9zcyzm68hg','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:50:18.788783'),('0ntsedu56vajmrlz4pspei9r2xcmjbfc','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:09:01.250860'),('1ie215x8a6uanetyc5t8h4l2164480o3','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:05:57.980290'),('1t79o1g1xhjo59xjl03073tgn3q3voo7','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:48:25.573468'),('20d97varfmx4shmxhtr0oy2yaetzm11s','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:53:31.348947'),('2fpis2214jmjrdk1lci7g9eajn934zqe','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:41:57.375958'),('3d6d4j8gbfp7dcl7zvdbkciweslpj0tk','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:44:55.603510'),('3opinrljr9isww7yp22g3sr39gz9e5w8','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:43:13.925962'),('491loxvvp37ygfd6nt5lexqowvw5p5ow','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:51:46.887519'),('582ax1q5hitx3i167tj8jc2j7uga03ib','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:38:48.839603'),('5o1g5dzb6shnrvlec8gpree7jr36svfv','NDgxODVhZTIwMTgxMTI1M2VhMzllMjg4OWUyZWMyY2FlNTMxMTg5Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-08-15 09:51:32.840986'),('60smp30p9ip6kryn3vk010wka8lbhw4i','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 05:05:22.604795'),('767ipa3zq7x91rkpjyyy5aatrs27aoe5','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:05:37.700912'),('8unot040xpovgxef1m1opqkfh6nisirn','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:49:12.635059'),('9b0trglkqlupf3paa8quga54ankg0qlk','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:58:24.537285'),('9bqniq2clrz5uu90c8km5eypinosrg0b','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:36:38.827990'),('9ou6fz19yg7tinrmh2z6dbctxdy42mzy','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:04:48.689273'),('anrfy0yy5612e137orhc91whn6jhr9gp','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:52:31.688687'),('b7lmvb0vya55j4f5ses53cv3oidkrehk','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:57:50.472016'),('cp2l0djx36pv985x7aja1qa917x62xim','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:06:17.409478'),('ddjj71ukxamowetoozul15olimgr2t4w','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:41:07.181313'),('ex6zj0qsr87gvjwq61rcwvih8qyoif1c','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:37:51.025497'),('fm29g2wcel2bdjjvfpbe6j9cai490eip','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:10:25.705230'),('fqehvqieb1cx4sl0cgyw12rcc19dfz7t','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:52:16.104178'),('g74c9qqzzok89egydxrjxn37kkttx9je','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:48:24.523621'),('gbv8en7psszyjghgyipu3mxudorxmch4','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:05:13.436374'),('hl9aol5l2b9usqnxwajzg1aftjrxyz6m','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 07:38:30.087956'),('jdt8j2xipl3aew8vo48kcbcmix2kkg0q','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:51:58.921105'),('m8yltcgcvqsje3nbusjbqgyxc25zqinl','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:07:46.928476'),('mcwq6amhjshtpcnd5415nztcqh2ui0ci','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:08:16.379046'),('mjdxgtf8tome2xa71vdsmw9dzcsaepk0','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:26:02.106558'),('n2p0aqjgkv627e6k8rvgd5mk3pf7pzs1','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:23:08.118770'),('o2eisgm3j50tlaqeb4sqeyf0gvwn0s1h','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:57:05.145400'),('ob34ocw729ddhpn7w2yzk03xaydqsu2z','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:03:48.263772'),('peq6m27dsrgxbcmt45uw5th1zpn8d6q5','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:04:06.918591'),('pud33ojlos07d4l3mmm4z0hxtd51tvfu','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:49:22.992653'),('q4y41nc6ux89olz07wjccqob319a2u98','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:03:17.031208'),('rr25cnuqvn8eprgd63fp7z3i48c2dvlx','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:33:16.888741'),('rtksm8oyet35ly7a62r6zvg317v6u88q','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:50:25.945138'),('rz6vbfcd3jctv0t8smocustuuna8zxk5','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:37:18.834455'),('s4ppwfy44pzz3i87nulmtfr3u45ueym7','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:07:29.415385'),('u72wh42mrauptik2zkwm91sk0tyugb25','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 06:06:36.788444'),('ugv9a3dkr66bjd2mgy43xqelsbxvdzhi','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:54:30.045986'),('ulprqa1ab9j5cjdehju1iquwhbqjj3z9','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:47:31.814934'),('uxui2a1ffm5usev8xkoi6966q3517pyq','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:30:45.661081'),('vchhkr01ziwbxwv0g0g4q0b9geywjihk','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:40:05.363593'),('wgri1f52c5p28pnwtzt44t4osc7vmvpo','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:44:27.193049'),('xcjf2bis7ocuy0mjmb0wzdn4uinlpdon','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:35:30.295673'),('ynj4e9e8zb312yaa89g3q9aiwrxnp57b','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:34:47.157919'),('ziv2cdnj0nyfmha46ncz0v70naw9v36k','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:38:18.880482'),('zl1xj7alzg49sfll64o4gy6cnghxtjjp','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-16 04:45:39.822496'),('zllni2pot0tmvdrnqe9rc0u58twq3ftw','OTFmZTYwYzk4YWNkZGE5MmQyNDI4ZDkyOTBmYjc3ZDhjZTFjMDQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiYTY2MjZkM2RhMDQ1NzU4NmM0YzU5NDkzZGMxZmFmMTdlZTY2YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-08-14 05:58:52.543540');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_auth_user`
--

DROP TABLE IF EXISTS `phone_auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_auth_user`
--

LOCK TABLES `phone_auth_user` WRITE;
/*!40000 ALTER TABLE `phone_auth_user` DISABLE KEYS */;
INSERT INTO `phone_auth_user` VALUES (1,'pbkdf2_sha256$24000$NIFJt65YOE7Z$o/qzpiBwTHhAumhGRx4zqWbul0vieyoOgiJIUGcosuU=','2017-08-02 07:38:29.995887',1,'zino','','','987071225@qq.com',1,1,'2017-07-31 05:05:41.750938','avatar/default.png',NULL,NULL,NULL),(2,'pbkdf2_sha256$24000$ABkGn8n4ergb$EK8lIDjtgmLB/tfvjZERyI1wbrPPDvrj1UqOE+UItBE=','2017-07-31 05:27:17.377267',1,'zino1','','','987071225@qq.com',0,1,'2017-07-31 05:16:00.000000','avatar/default.png','','',''),(3,'pbkdf2_sha256$24000$8S04lPgDiycU$Whu2Kujwn6OduJ7GdgIScnd74uFTPi3Ok20SlMRPWLE=',NULL,0,'fsdgdf','','','987071225@qq.com',0,0,'2017-07-31 05:27:46.025198','avatar/default.png',NULL,NULL,NULL),(4,'pbkdf2_sha256$24000$s6AhI7bW3idF$I4GrMmrFnNtIuhy9Bpdj1E8GpA28s379VdHDW7o6EbE=','2017-07-31 06:58:38.475981',0,'jinuo','','','987071225@qq.com',0,0,'2017-07-31 06:25:00.000000','avatar/default.png','1107194939','18728411877','http://www.xwb666.cc');
/*!40000 ALTER TABLE `phone_auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_auth_user_groups`
--

DROP TABLE IF EXISTS `phone_auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_auth_user_groups_user_id_410c4c19_uniq` (`user_id`,`group_id`),
  KEY `phone_auth_user_groups_group_id_85382c81_fk_auth_group_id` (`group_id`),
  CONSTRAINT `phone_auth_user_groups_group_id_85382c81_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `phone_auth_user_groups_user_id_98b55ff3_fk_phone_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `phone_auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_auth_user_groups`
--

LOCK TABLES `phone_auth_user_groups` WRITE;
/*!40000 ALTER TABLE `phone_auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_auth_user_user_permissions`
--

DROP TABLE IF EXISTS `phone_auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_auth_user_user_permissions_user_id_33720def_uniq` (`user_id`,`permission_id`),
  KEY `phone_auth_user_use_permission_id_1e2e915d_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `phone_auth_user_use_permission_id_1e2e915d_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `phone_auth_user_user_perm_user_id_a4c6645a_fk_phone_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `phone_auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_auth_user_user_permissions`
--

LOCK TABLES `phone_auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `phone_auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_commonproblems`
--

DROP TABLE IF EXISTS `server_commonproblems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_commonproblems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_commonproblems`
--

LOCK TABLES `server_commonproblems` WRITE;
/*!40000 ALTER TABLE `server_commonproblems` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_commonproblems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_links`
--

DROP TABLE IF EXISTS `server_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_links`
--

LOCK TABLES `server_links` WRITE;
/*!40000 ALTER TABLE `server_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_servercontent`
--

DROP TABLE IF EXISTS `server_servercontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_servercontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_servercontent`
--

LOCK TABLES `server_servercontent` WRITE;
/*!40000 ALTER TABLE `server_servercontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_servercontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_ad`
--

DROP TABLE IF EXISTS `shop_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `AdName` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `Navtags_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_ad_2c35b3e2` (`Navtags_id_id`),
  CONSTRAINT `shop_ad_Navtags_id_id_b154729b_fk_shop_navtags_id` FOREIGN KEY (`Navtags_id_id`) REFERENCES `shop_navtags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_ad`
--

LOCK TABLES `shop_ad` WRITE;
/*!40000 ALTER TABLE `shop_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_arg`
--

DROP TABLE IF EXISTS `shop_arg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_arg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_arg_2506e0ba` (`sale_id`),
  CONSTRAINT `shop_arg_sale_id_b773564f_fk_shop_shopsales_id` FOREIGN KEY (`sale_id`) REFERENCES `shop_shopsales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_arg`
--

LOCK TABLES `shop_arg` WRITE;
/*!40000 ALTER TABLE `shop_arg` DISABLE KEYS */;
INSERT INTO `shop_arg` VALUES (1,'适配机型','OnePlus 3 / OnePlus 3T / OnePlus 5',1,1),(2,'尺寸','330*135*460mm',999,3),(3,'重量','1150g （太空黑），1140g (莫兰迪灰）',999,3),(4,'太空黑双肩包 材质','面料：100% 涤纶 ，PU涂层 。里布： 100% 尼龙 。',999,3),(5,'莫兰迪灰双肩包 材质','面料：60% 涤纶 ，40%尼龙 。 里布： 100% 尼龙 。',999,3),(6,'洗涤说明','软布沾水擦拭，不可机洗，以防破坏背包表面防水涂层',999,3),(7,'尺寸','66*31*31mm',999,6),(8,'重量','29.9g',999,6),(9,'包装清单','车载闪充，一加 Dash 闪充 Type-C 数据线（100CM）',999,6),(10,'材质','PC,铝，树脂',999,6),(11,'适配机型','OnePlus 3 / OnePlus 3T / OnePlus 5',999,6);
/*!40000 ALTER TABLE `shop_arg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_navtags`
--

DROP TABLE IF EXISTS `shop_navtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_navtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TagName` varchar(20) NOT NULL,
  `TagImg` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_navtags`
--

LOCK TABLES `shop_navtags` WRITE;
/*!40000 ALTER TABLE `shop_navtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_navtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_phonearg`
--

DROP TABLE IF EXISTS `shop_phonearg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_phonearg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `arg_desc` varchar(200) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_phonearg`
--

LOCK TABLES `shop_phonearg` WRITE;
/*!40000 ALTER TABLE `shop_phonearg` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_phonearg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_prob`
--

DROP TABLE IF EXISTS `shop_prob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_prob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `desc` varchar(2000) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_prob`
--

LOCK TABLES `shop_prob` WRITE;
/*!40000 ALTER TABLE `shop_prob` DISABLE KEYS */;
INSERT INTO `shop_prob` VALUES (1,'三包服务介绍','承保周期：充电器、数据线、移动电源、耳机（有线/无线耳机），自签收之日起，可享受七天无理由退货，十五天换货，一年内保修（森海塞尔耳机两年内保修）；皮套、保护壳、屏幕保护膜、所有生活馆商品，自签收之日起，可享受七天无理由退货，十五天换货。 退换货要求：商品及包装保持一加出售时原状、配件及单据完好、齐全，并提供相关订单号、发票及三包凭证；非产品问题的退换，需产品包装完好，且仅退换一次，消费者承担邮费；产品问题的退换，请先联系一加人工客服，确认产品问题后，提供退换相关凭证，使用指定物流到付的方式寄回给一加。',1),(2,'承保周期：充电器、数据线、移动电源、耳机（有线/无线耳机），','若存在包装破损等影响签收的原因，请直接拒收，并及时联系一加人工客服协助处理； 签收后请尽快查看商品（配件、发票、三包凭证等）是否完整，若发现商品错误、商品少发、商品表面有质量问题等，请于24小时内联系一加人工客服协助处理。',2),(3,'退货办理流程','根据三包政策，符合退换货条件的，请拨打400-888-1111或通过商城在订单中心申请退换货，提供三包的相关凭证，会有专门的人员为您进行处理。',3);
/*!40000 ALTER TABLE `shop_prob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_desc`
--

DROP TABLE IF EXISTS `shop_product_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_desc_2506e0ba` (`sale_id`),
  CONSTRAINT `shop_product_desc_sale_id_c26d1f7b_fk_shop_shopsales_id` FOREIGN KEY (`sale_id`) REFERENCES `shop_shopsales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_desc`
--

LOCK TABLES `shop_product_desc` WRITE;
/*!40000 ALTER TABLE `shop_product_desc` DISABLE KEYS */;
INSERT INTO `shop_product_desc` VALUES (7,'shop/product_desc/2017/08/03421f06b632a98995f10942567e30e1.jpg','闪充套装','一加DASH闪充电源适配器 一加DASH闪充 Type-C 数据线（100CM）',20,1),(8,'shop/product_desc/2017/08/img-2-ebony.jpg','黑檀','黑檀红褐色与黑色相间，纹理行云流水，色泽沉稳大气。采用浸脂工艺，超高温高压一体成型，与手机完好贴合。',999,2),(9,'shop/product_desc/2017/08/img-2-karbon.jpg','芳纶纤维','军用、航天级的芳纶纤维材料，为手机提供贴心的保护。三重工艺，刚柔并济，完好保留几何美感的编织纹理，更带来舒适的类肤质感。',999,2),(10,'shop/product_desc/2017/08/img-2-rosewood.jpg','酸枝','酸枝色泽金黄，纹理清晰，汇聚万千变化。浸脂工艺，让纹理与触感得以留存，也将酸枝的良好手感，传至你掌心。',999,2),(11,'shop/product_desc/2017/08/img-2-sandstone.jpg','3D 弧边覆盖， 手感顺滑自在。','3D 弧边设计，全面贴合屏幕，与机身融为一体，手感舒适顺滑。蚀刻工艺与 CNC 精雕， 开孔位置精准对位。',999,2),(14,'shop/product_desc/2017/08/chezai_DaGiyDF.jpg','车载充电','车载充电',999,6),(15,'shop/product_desc/2017/08/2a5c268a74d15fda84c34fdbd2765b3c.jpg','旅行包','',999,12),(16,'shop/product_desc/2017/08/0ba8fd18977d41d59cbd0c2a74faab28.jpg','真皮钱包','真皮钱包',999,11),(17,'shop/product_desc/2017/08/a4098db98e3356542ba88dd50a5cdb33.jpg','出行套装','出行套装',999,10),(18,'shop/product_desc/2017/08/img-1.jpg','让 OnePlus 5 别具一格','材质与手感俱佳，个性和保护兼得，这就是 OnePlus 的个性保护壳。现在， 4 种不同材质，不拘一格，让你的 OnePlus 5 看起来别具一格。',999,8),(19,'shop/product_desc/2017/08/img-2-ebony_hSbpexA.jpg','手感，把玩无厌。','黑檀红褐色与黑色相间，纹理行云流水，色泽沉稳大气。采用浸脂工艺，超高温高压一体成',999,8);
/*!40000 ALTER TABLE `shop_product_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_details`
--

DROP TABLE IF EXISTS `shop_product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `color` varchar(16) NOT NULL,
  `color_img` varchar(100) DEFAULT NULL,
  `small_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_details_2506e0ba` (`sale_id`),
  CONSTRAINT `shop_product_details_sale_id_392e485d_fk_shop_shopsales_id` FOREIGN KEY (`sale_id`) REFERENCES `shop_shopsales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_details`
--

LOCK TABLES `shop_product_details` WRITE;
/*!40000 ALTER TABLE `shop_product_details` DISABLE KEYS */;
INSERT INTO `shop_product_details` VALUES (1,'闪充套装','闪充套装','一加DASH闪充电源适配器 一加DASH闪充 Type-C 数据线（100CM）',159.00,'shop/product/2017/08/shanchongxian.png',1,'','','shop/product/2017/08/ae59017c2cfe8973ce1044298cbfdacb.png'),(2,'OnePlus 5 力量帝套装','OnePlus 5 力量帝套装','OnePlus 5 个性保护壳 OnePlus 5 3D钢化玻璃保护膜',199.00,'shop/product/2017/08/c67a9009c7b58b1e7deef670a4987443_1_70TUPNo.png',2,'','shop/product/2017/08/i-ebony.png','shop/product/2017/08/c67a9009c7b58b1e7deef670a4987443_1.png'),(3,'OnePlus 5 3D钢化玻璃保护膜','OnePlus 5 3D钢化玻璃保护膜','',199.00,'shop/product/2017/08/3fe70d96916365ff2fae9ac3bf7f1e99_qvw8gqi.png',2,'','shop/product/2017/08/i-karbon.png','shop/product/2017/08/3fe70d96916365ff2fae9ac3bf7f1e99.png'),(4,'OnePlus 5 3D钢化玻璃保护膜','OnePlus 5 3D钢化玻璃保护膜','',199.00,'shop/product/2017/08/89c42e05489c7a4368d1a0dcabdf052b_Unupfwj.png',2,'','shop/product/2017/08/i-rosewood.png','shop/product/2017/08/89c42e05489c7a4368d1a0dcabdf052b.png'),(5,'一加旅行双肩包','一加旅行双肩包','一加旅行双肩包',399.00,'shop/product/2017/08/6e9d4458ee0f0f86c9e5dcfd2d577ee1.png',3,'莫兰迪灰','shop/product/2017/08/e86354ac5eef16f01e63ffc2d91ca347_sEicklH.png','shop/product/2017/08/6e9d4458ee0f0f86c9e5dcfd2d577ee1_AOmbZ9S.png'),(6,'一加旅行双肩包','一加旅行双肩包','一加旅行双肩包 莫兰迪灰',399.00,'shop/product/2017/08/6801005c048ed9ab900bae895ae3f708.png',3,'莫兰迪灰','shop/product/2017/08/e86354ac5eef16f01e63ffc2d91ca347_b7SL7qR.png','shop/product/2017/08/6801005c048ed9ab900bae895ae3f708_t0rlC1g.png'),(7,'一加旅行双肩包','一加旅行双肩包','一加旅行双肩包 莫兰迪灰',399.00,'shop/product/2017/08/76174dc758e5b36f002fa2e4173923a5.png',3,'莫兰迪灰','shop/product/2017/08/e86354ac5eef16f01e63ffc2d91ca347_LD5hyVx.png','shop/product/2017/08/76174dc758e5b36f002fa2e4173923a5_lHCzz88.png'),(8,'一加旅行双肩包','一加旅行双肩包','一加旅行双肩包 莫兰迪灰',399.00,'shop/product/2017/08/89047c64674db89cfcbbd2ebdc673ad3.png',3,'莫兰迪灰','shop/product/2017/08/e86354ac5eef16f01e63ffc2d91ca347_febIDtB.png','shop/product/2017/08/76174dc758e5b36f002fa2e4173923a5_a6HEa01.png'),(9,'一加旅行双肩包','一加旅行双肩包','一加旅行双肩包 太空黑',399.00,'shop/product/2017/08/aacc5822ff29213772c6a031a5db71c7.png',3,'太空黑','shop/product/2017/08/ff3abcda00fca67198a070b60a0bf444.jpg','shop/product/2017/08/aacc5822ff29213772c6a031a5db71c7_ESSFcVW.png'),(10,'OnePlus 5 个性保护壳','OnePlus 5 个性保护壳','',99.00,'shop/product/2017/08/leftsmallimg.png',8,'','','shop/product/2017/08/leftsmallimg_zdwOpK0.png'),(11,'OnePlus 5 个性保护壳','OnePlus 5 个性保护壳','砂岩黑',99.00,'shop/product/2017/08/section1-2.png',8,'砂岩黑','shop/product/2017/08/i-karbon_1iortZo.png','shop/product/2017/08/section1-2_I7Tmotl.png'),(12,'一加车载DASH闪充','一加车载DASH闪充','',199.00,'shop/product/2017/08/4eeacb63099100e584d2a31c3e0f42db.png',6,'','','shop/product/2017/08/4eeacb63099100e584d2a31c3e0f42db_OVqbcF4.png'),(13,'一加旅行袋','一加旅行袋','',299.00,'shop/product/2017/08/80de38bd67ea73ef5c082c08e3537dec_cszIDtT.png',12,'','','shop/product/2017/08/80de38bd67ea73ef5c082c08e3537dec_zoGCEvk.png'),(14,'真皮钱包','真皮钱包','',99.00,'shop/product/2017/08/58970bda8cd693a998c2f0a9989719cd.png',11,'','','shop/product/2017/08/58970bda8cd693a998c2f0a9989719cd_ZTCFxKJ.png'),(15,'出行套装','出行套装','',259.00,'shop/product/2017/08/dc34acd27eaad62a42e3c4614651d574.png',10,'','','shop/product/2017/08/dc34acd27eaad62a42e3c4614651d574_xVHFHAx.png'),(16,'OnePlus 5 个性保护壳','OnePlus 5 个性保护壳','',99.00,'shop/product/2017/08/leftsmallimg_t2dei1F.png',8,'','','shop/product/2017/08/leftsmallimg_Eyz71Xx.png');
/*!40000 ALTER TABLE `shop_product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_search`
--

DROP TABLE IF EXISTS `shop_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_search`
--

LOCK TABLES `shop_search` WRITE;
/*!40000 ALTER TABLE `shop_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_servercontent`
--

DROP TABLE IF EXISTS `shop_servercontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_servercontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_servercontent`
--

LOCK TABLES `shop_servercontent` WRITE;
/*!40000 ALTER TABLE `shop_servercontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_servercontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shopsales`
--

DROP TABLE IF EXISTS `shop_shopsales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shopsales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saleName` varchar(30) NOT NULL,
  `saleDese` varchar(30) NOT NULL,
  `salePrice` decimal(5,2) NOT NULL,
  `saleImg` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shopsales`
--

LOCK TABLES `shop_shopsales` WRITE;
/*!40000 ALTER TABLE `shop_shopsales` DISABLE KEYS */;
INSERT INTO `shop_shopsales` VALUES (1,'商品１','撒旦',1.27,'shop/sales/2017/07/ChargerBundle0620-small_VmrQvDP.jpg',1),(2,'商品２','２５６',256.00,'shop/sales/2017/07/Bundle0620-small_zkQddNG.jpg',2),(3,'商品３','199',199.00,'shop/sales/2017/07/Backpack0620-small_3OveBAF.jpg',3),(4,'OnePlus 5 热销配件','OnePlus 5 个性保护壳',159.00,'shop/sales/2017/07/goods-list-pic01_jrXvMkn.png',4),(5,'OnePlus 5 热销配件','OnePlus 5 热销配件',169.00,'shop/sales/2017/07/996eb762bc4ef18c498a09e700aac5ef_200_200_LTE8UdV.png',6),(6,'OnePlus 5 热销配件','OnePlus 5 热销配件',299.00,'shop/sales/2017/07/4eeacb63099100e584d2a31c3e0f42db_200_200_VZ0DMdK.png',6),(7,'OnePlus 5 热销配件','OnePlus 5 热销配件',199.00,'shop/sales/2017/08/1472f024bac3fad95b089c9e45d12ad1_200_200.png',7),(8,'OnePlus 5 热销配件','OnePlus 5 个性保护壳',99.00,'shop/sales/2017/07/goods-list-pic01_Zvcyhgz.png',8),(9,'一加生活周边','一加生活周边2',109.00,'shop/sales/2017/07/dc34acd27eaad62a42e3c4614651d574_200_200_Vu6JaGn.png',9),(10,'一加生活周边','一加生活周边3',199.00,'shop/sales/2017/08/dc34acd27eaad62a42e3c4614651d574_200_200.png',10),(11,'一加生活周边','一加生活周边4',99.00,'shop/sales/2017/07/91687f3c253a9dd5169374fcc109aa36_200_200_7adbQce.png',11),(12,'一加生活周边','一加生活周边4',89.00,'shop/sales/2017/07/80de38bd67ea73ef5c082c08e3537dec_200_200_wFF1uTg.png',12),(13,'一加生活周边','一加生活周边5',119.00,'shop/sales/2017/07/Gray-leaning_qRFXiOI.png',13);
/*!40000 ALTER TABLE `shop_shopsales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_taggoods`
--

DROP TABLE IF EXISTS `shop_taggoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_taggoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodImg` varchar(100) NOT NULL,
  `goodName` varchar(20) NOT NULL,
  `goodPrice` decimal(7,2) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `Navtags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_taggoods_Navtags_id_e3a5c939_fk_shop_navtags_id` (`Navtags_id`),
  CONSTRAINT `shop_taggoods_Navtags_id_e3a5c939_fk_shop_navtags_id` FOREIGN KEY (`Navtags_id`) REFERENCES `shop_navtags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_taggoods`
--

LOCK TABLES `shop_taggoods` WRITE;
/*!40000 ALTER TABLE `shop_taggoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_taggoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_about`
--

DROP TABLE IF EXISTS `xphone_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_about`
--

LOCK TABLES `xphone_about` WRITE;
/*!40000 ALTER TABLE `xphone_about` DISABLE KEYS */;
INSERT INTO `xphone_about` VALUES (1,'Ｈ２Ｏｓ'),(2,'加入super'),(3,'了解super');
/*!40000 ALTER TABLE `xphone_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_indexpage`
--

DROP TABLE IF EXISTS `xphone_indexpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_indexpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `img_desc` varchar(100) NOT NULL,
  `Article_id` int(11) NOT NULL,
  `News_id` int(11) NOT NULL,
  `Video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xphone_indexpage_Article_id_65ba8dfa_fk_blog_article_id` (`Article_id`),
  KEY `xphone_indexpage_News_id_2afe3e73_fk_blog_news_id` (`News_id`),
  KEY `xphone_indexpage_Video_id_9e3ad28f_fk_blog_video_id` (`Video_id`),
  CONSTRAINT `xphone_indexpage_Article_id_65ba8dfa_fk_blog_article_id` FOREIGN KEY (`Article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `xphone_indexpage_News_id_2afe3e73_fk_blog_news_id` FOREIGN KEY (`News_id`) REFERENCES `blog_news` (`id`),
  CONSTRAINT `xphone_indexpage_Video_id_9e3ad28f_fk_blog_video_id` FOREIGN KEY (`Video_id`) REFERENCES `blog_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_indexpage`
--

LOCK TABLES `xphone_indexpage` WRITE;
/*!40000 ALTER TABLE `xphone_indexpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `xphone_indexpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_navbars`
--

DROP TABLE IF EXISTS `xphone_navbars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_navbars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NavName` varchar(10) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `english` varchar(10) NOT NULL,
  `NavLog` varchar(100) NOT NULL,
  `NavImg` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_navbars`
--

LOCK TABLES `xphone_navbars` WRITE;
/*!40000 ALTER TABLE `xphone_navbars` DISABLE KEYS */;
INSERT INTO `xphone_navbars` VALUES (1,'OnePlus5','','OnePlus5','',''),(2,'商城','','store','',''),(3,'服务','','server','',''),(4,'博客','','blog','',''),(5,'论坛','','luntan','','');
/*!40000 ALTER TABLE `xphone_navbars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_product`
--

DROP TABLE IF EXISTS `xphone_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_product`
--

LOCK TABLES `xphone_product` WRITE;
/*!40000 ALTER TABLE `xphone_product` DISABLE KEYS */;
INSERT INTO `xphone_product` VALUES (1,'OnePlus5'),(2,'一加手机　３'),(3,'一加手机　３Ｔ');
/*!40000 ALTER TABLE `xphone_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_search`
--

DROP TABLE IF EXISTS `xphone_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_search`
--

LOCK TABLES `xphone_search` WRITE;
/*!40000 ALTER TABLE `xphone_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `xphone_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xphone_server`
--

DROP TABLE IF EXISTS `xphone_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xphone_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xphone_server`
--

LOCK TABLES `xphone_server` WRITE;
/*!40000 ALTER TABLE `xphone_server` DISABLE KEYS */;
INSERT INTO `xphone_server` VALUES (1,'自助服务'),(2,'技术支持'),(3,'售后服务'),(4,'一加加多宝');
/*!40000 ALTER TABLE `xphone_server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-02 17:08:14
