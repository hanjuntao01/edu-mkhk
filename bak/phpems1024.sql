# Host: localhost  (Version: 5.5.40)
# Date: 2016-10-24 19:06:04
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "x2_app"
#

DROP TABLE IF EXISTS `x2_app`;
CREATE TABLE `x2_app` (
  `appid` varchar(24) NOT NULL,
  `appname` varchar(48) NOT NULL DEFAULT '',
  `appthumb` varchar(240) NOT NULL DEFAULT '',
  `appstatus` int(1) NOT NULL DEFAULT '0',
  `appsetting` text NOT NULL,
  PRIMARY KEY (`appid`),
  KEY `appstatus` (`appstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_app"
#

/*!40000 ALTER TABLE `x2_app` DISABLE KEYS */;
INSERT INTO `x2_app` VALUES ('bank','财务模块','*value*',0,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('content','内容模块','',1,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('core','全局','',1,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('course','课程模块','',1,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('document','文件模块','',1,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('exam','考试模块','',1,''),('item','商品模块','',1,'a:1:{s:3:\"seo\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}}'),('user','用户模块','files/attach/images/content/20130401/13647895355562.png.png',1,'');
/*!40000 ALTER TABLE `x2_app` ENABLE KEYS */;

#
# Structure for table "x2_area"
#

DROP TABLE IF EXISTS `x2_area`;
CREATE TABLE `x2_area` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(120) NOT NULL DEFAULT '',
  `areacode` int(12) NOT NULL DEFAULT '0',
  `arealevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`),
  KEY `area` (`area`,`arealevel`),
  KEY `areacode` (`areacode`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

#
# Data for table "x2_area"
#

/*!40000 ALTER TABLE `x2_area` DISABLE KEYS */;
INSERT INTO `x2_area` VALUES (1,'全国',1,1),(4,'北京',10,0),(6,'河北',311,0),(7,'天津',22,0),(8,'山东',531,0),(9,'江苏',25,0),(14,'云南',871,0),(15,'四川',28,0),(18,'吉林',431,0),(19,'广东',20,0),(20,'新疆',991,0),(21,'广西',771,0),(22,'福建',591,0),(23,'湖南',731,0),(24,'上海',21,0),(25,'重庆',23,0),(26,'江西',791,0),(27,'浙江',571,0),(28,'山西',351,0);
/*!40000 ALTER TABLE `x2_area` ENABLE KEYS */;

#
# Structure for table "x2_attach"
#

DROP TABLE IF EXISTS `x2_attach`;
CREATE TABLE `x2_attach` (
  `attid` int(11) NOT NULL AUTO_INCREMENT,
  `attpath` varchar(240) NOT NULL DEFAULT '',
  `atttitle` varchar(240) NOT NULL DEFAULT '',
  `attext` varchar(12) NOT NULL DEFAULT '',
  `attinputtime` int(11) NOT NULL DEFAULT '0',
  `attsize` int(11) NOT NULL DEFAULT '0',
  `attmd5` varchar(32) NOT NULL DEFAULT '',
  `attuserid` int(11) NOT NULL DEFAULT '0',
  `attcntype` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`attid`),
  KEY `attext` (`attext`,`attinputtime`),
  KEY `attuserid` (`attuserid`),
  KEY `attcntype` (`attcntype`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Data for table "x2_attach"
#

/*!40000 ALTER TABLE `x2_attach` DISABLE KEYS */;
INSERT INTO `x2_attach` VALUES (1,'files/attach/images/content/20160820/14717034075738.jpg','14683905332673.jpg','jpg',1471703407,192702,'',1,'image/jpeg'),(3,'files/attach/images/content/20161019/14768592629604.jpg','Desert.jpg','jpg',1476859262,845941,'',1,'image/jpeg'),(4,'files/attach/images/content/20161019/14768613565976.jpg','Hydrangeas.jpg','jpg',1476861356,595284,'',1,'image/jpeg'),(5,'files/attach/images/content/20161019/14768615033570.jpg','Tulips.jpg','jpg',1476861503,620888,'',1,'image/jpeg'),(6,'files/attach/images/content/20161019/14768618395936.jpg','Jellyfish.jpg','jpg',1476861839,775702,'',1,'image/jpeg'),(7,'files/attach/images/content/20161019/14768618569159.jpg','Jellyfish.jpg','jpg',1476861856,775702,'',1,'image/jpeg'),(8,'files/attach/images/content/20161019/14768618685574.jpg','Jellyfish.jpg','jpg',1476861868,775702,'',1,'image/jpeg'),(9,'files/attach/images/content/20161019/14768629596943.jpg','Desert.jpg','jpg',1476862959,845941,'',1,'image/jpeg'),(10,'files/attach/files/content/20161019/14768642087559.jpg','Hydrangeas.jpg','jpg',1476864208,595284,'',1,'image/jpeg'),(11,'files/attach/images/content/20161019/14768655116935.jpg','Hydrangeas.jpg','jpg',1476865511,595284,'',1,'image/jpeg'),(12,'files/attach/images/content/20161019/14768655177778.jpg','Jellyfish.jpg','jpg',1476865517,775702,'',1,'image/jpeg'),(13,'files/attach/images/content/20161019/14768680293133.jpg','Lighthouse.jpg','jpg',1476868028,561276,'',1,'image/jpeg'),(14,'files/attach/images/content/20161019/14768690347338.mp4','Clip_1080_5sec_10mbps_h264.mp4','mp4',1476869034,6198982,'',1,'video/mp4'),(15,'files/attach/images/content/20161020/14768957945534.jpg','Chrysanthemum.jpg','jpg',1476895794,879394,'',1,'image/jpeg'),(16,'files/attach/images/content/20161020/14768957987058.jpg','Hydrangeas.jpg','jpg',1476895798,595284,'',1,'image/jpeg'),(17,'files/attach/images/content/20161020/14768958048209.jpg','Chrysanthemum.jpg','jpg',1476895804,879394,'',1,'image/jpeg'),(18,'files/attach/images/content/20161020/14768958475413.jpg','Tulips.jpg','jpg',1476895847,620888,'',1,'image/jpeg'),(19,'files/attach/images/content/20161020/14768958515280.jpg','Tulips.jpg','jpg',1476895851,620888,'',1,'image/jpeg'),(20,'files/attach/images/content/20161020/14768958551224.jpg','Penguins.jpg','jpg',1476895855,777835,'',1,'image/jpeg'),(21,'files/attach/images/content/20161020/14768959236345.jpg','Lighthouse.jpg','jpg',1476895923,561276,'',1,'image/jpeg'),(22,'files/attach/images/content/20161020/14768959287817.jpg','Lighthouse.jpg','jpg',1476895928,561276,'',1,'image/jpeg'),(23,'files/attach/images/content/20161020/14768959333430.jpg','Desert.jpg','jpg',1476895933,845941,'',1,'image/jpeg'),(24,'files/attach/images/content/20161020/14768959382713.jpg','Tulips.jpg','jpg',1476895938,620888,'',1,'image/jpeg'),(25,'files/attach/images/content/20161020/14768969751044.jpg','Tulips.jpg','jpg',1476896975,620888,'',1,'image/jpeg'),(26,'files/attach/files/content/20161020/14769499066333.jpg','Penguins.jpg','jpg',1476949906,777835,'',1,'image/jpeg'),(27,'files/attach/files/content/20161021/14770189699477.jpg','Tulips.jpg','jpg',1477018969,620888,'',1,'image/jpeg');
/*!40000 ALTER TABLE `x2_attach` ENABLE KEYS */;

#
# Structure for table "x2_attachtype"
#

DROP TABLE IF EXISTS `x2_attachtype`;
CREATE TABLE `x2_attachtype` (
  `atid` int(11) NOT NULL AUTO_INCREMENT,
  `attachtype` varchar(120) NOT NULL,
  `attachexts` tinytext NOT NULL,
  PRIMARY KEY (`atid`),
  KEY `attachtype` (`attachtype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "x2_attachtype"
#

/*!40000 ALTER TABLE `x2_attachtype` DISABLE KEYS */;
INSERT INTO `x2_attachtype` VALUES (1,'图片','jpg,png,gif,bmp'),(2,'音频','mp3'),(3,'多媒体','flv,wmv,mp4,avi');
/*!40000 ALTER TABLE `x2_attachtype` ENABLE KEYS */;

#
# Structure for table "x2_basic"
#

DROP TABLE IF EXISTS `x2_basic`;
CREATE TABLE `x2_basic` (
  `basicid` int(11) NOT NULL AUTO_INCREMENT,
  `basic` varchar(120) NOT NULL DEFAULT '',
  `basicareaid` int(4) NOT NULL DEFAULT '0',
  `basicsubjectid` int(11) NOT NULL DEFAULT '0',
  `basicsection` text NOT NULL,
  `basicknows` text NOT NULL,
  `basicexam` text NOT NULL,
  `basicapi` varchar(32) NOT NULL DEFAULT '',
  `basicdemo` int(1) NOT NULL DEFAULT '0',
  `basicthumb` varchar(240) NOT NULL DEFAULT '',
  `basicprice` tinytext NOT NULL,
  `basicclosed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`basicid`),
  KEY `basicexamid` (`basicareaid`),
  KEY `basicsubjectid` (`basicsubjectid`),
  KEY `basicapi` (`basicapi`),
  KEY `basicdemo` (`basicdemo`),
  KEY `basicclosed` (`basicclosed`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "x2_basic"
#

/*!40000 ALTER TABLE `x2_basic` DISABLE KEYS */;
INSERT INTO `x2_basic` VALUES (1,'湖里纪检监察局纪律知识考场',1,1,'a:1:{i:0;i:1;}','a:1:{i:1;a:1:{i:1;s:1:\"1\";}}','a:10:{s:5:\"model\";s:1:\"0\";s:14:\"changesequence\";s:1:\"0\";s:4:\"auto\";s:1:\"1\";s:12:\"autotemplate\";s:15:\"exampaper_paper\";s:4:\"self\";s:1:\"1\";s:12:\"selftemplate\";s:10:\"exam_paper\";s:8:\"opentime\";a:2:{s:5:\"start\";b:0;s:3:\"end\";b:0;}s:10:\"selectrule\";s:1:\"0\";s:10:\"examnumber\";s:1:\"0\";s:12:\"notviewscore\";s:1:\"0\";}','',1,'files/attach/images/content/20161019/14768680293133.jpg','',0),(3,'tester',19,1,'a:1:{i:0;i:1;}','a:1:{i:1;a:1:{i:1;s:1:\"1\";}}','a:10:{s:5:\"model\";s:1:\"0\";s:14:\"changesequence\";s:1:\"0\";s:4:\"auto\";s:4:\"10,1\";s:12:\"autotemplate\";s:15:\"exampaper_paper\";s:4:\"self\";s:4:\"10,1\";s:12:\"selftemplate\";s:10:\"exam_paper\";s:8:\"opentime\";a:2:{s:5:\"start\";b:0;s:3:\"end\";b:0;}s:10:\"selectrule\";s:1:\"0\";s:10:\"examnumber\";s:1:\"0\";s:12:\"notviewscore\";s:1:\"0\";}','',1,'app/core/styles/images/noimage.gif','',0),(5,'MeiKai Airport Exam',1,3,'','','a:10:{s:5:\"model\";s:1:\"2\";s:14:\"changesequence\";s:1:\"0\";s:4:\"auto\";s:26:\"12,13,14,15,16,17,18,19,20\";s:12:\"autotemplate\";s:15:\"exampaper_paper\";s:4:\"self\";s:26:\"12,13,14,15,16,17,18,19,20\";s:12:\"selftemplate\";s:10:\"exam_paper\";s:8:\"opentime\";a:2:{s:5:\"start\";b:0;s:3:\"end\";b:0;}s:10:\"selectrule\";s:1:\"0\";s:10:\"examnumber\";s:1:\"0\";s:12:\"notviewscore\";s:1:\"0\";}','',1,'app/core/styles/images/noimage.gif','',0);
/*!40000 ALTER TABLE `x2_basic` ENABLE KEYS */;

#
# Structure for table "x2_block"
#

DROP TABLE IF EXISTS `x2_block`;
CREATE TABLE `x2_block` (
  `blockid` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(120) NOT NULL DEFAULT '',
  `blocktype` int(1) NOT NULL DEFAULT '0',
  `blockposition` varchar(120) NOT NULL DEFAULT '',
  `blockcontent` text NOT NULL,
  PRIMARY KEY (`blockid`),
  KEY `blocktype` (`blocktype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "x2_block"
#

/*!40000 ALTER TABLE `x2_block` DISABLE KEYS */;
INSERT INTO `x2_block` VALUES (1,'测试SQL',3,'多处','a:8:{s:7:\"dbtable\";s:4:\"user\";s:5:\"query\";s:60:\"AND|usergroupid=:usergroupid|usergroupid|v:_user[\\\'userid\\\']\";s:5:\"order\";s:0:\"\";s:5:\"limit\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"5\";}s:3:\"sql\";s:0:\"\";s:5:\"index\";s:0:\"\";s:6:\"serial\";s:0:\"\";s:8:\"template\";s:31:\"{x2;eval: print_r(v:blockdata)}\";}');
/*!40000 ALTER TABLE `x2_block` ENABLE KEYS */;

#
# Structure for table "x2_category"
#

DROP TABLE IF EXISTS `x2_category`;
CREATE TABLE `x2_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catapp` varchar(24) NOT NULL DEFAULT '',
  `catlite` int(11) NOT NULL DEFAULT '0',
  `catname` varchar(240) NOT NULL DEFAULT '',
  `catimg` varchar(240) NOT NULL DEFAULT '',
  `caturl` varchar(120) NOT NULL DEFAULT '',
  `catuseurl` int(1) NOT NULL DEFAULT '0',
  `catparent` int(11) DEFAULT '0',
  `catdes` text NOT NULL,
  `cattpl` varchar(36) NOT NULL DEFAULT '',
  `catmanager` text NOT NULL,
  `catinmenu` int(1) NOT NULL DEFAULT '0',
  `catindex` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`),
  KEY `catlite` (`catlite`,`catparent`),
  KEY `catappid` (`catapp`),
  KEY `catuseurl` (`catuseurl`),
  KEY `catinmenu` (`catinmenu`,`catindex`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "x2_category"
#

/*!40000 ALTER TABLE `x2_category` DISABLE KEYS */;
INSERT INTO `x2_category` VALUES (1,'content',0,'学习资料','files/attach/images/content/20160630/14672817197914.jpg','',0,0,'','category_default','a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}',1,10),(2,'content',0,'滚动图片','files/attach/images/content/20160630/14672817455479.jpg','',0,0,'','category_default','a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}',0,3),(3,'content',0,'考试信息','files/attach/images/content/20160630/14672817048286.jpg','',0,0,'','category_default','a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}',1,10),(4,'content',0,'使用帮助','files/attach/images/content/20160630/14672817317018.jpg','',0,0,'','category_default','a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}',0,10),(7,'course',0,'货运技巧','files/attach/images/content/20161019/14768615033570.jpg','',0,0,'&lt;p&gt;高等数学 学习&lt;/p&gt;','category_default','a:2:{s:8:\"pubusers\";s:0:\"\";s:9:\"pubgroups\";s:0:\"\";}',0,9);
/*!40000 ALTER TABLE `x2_category` ENABLE KEYS */;

#
# Structure for table "x2_comment"
#

DROP TABLE IF EXISTS `x2_comment`;
CREATE TABLE `x2_comment` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtapp` varchar(24) NOT NULL DEFAULT '',
  `cmtcontentid` int(11) NOT NULL DEFAULT '0',
  `cmtcontent` text NOT NULL,
  `cmttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cmtid`),
  KEY `cmtapp` (`cmtapp`,`cmtcontentid`,`cmttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_comment"
#

/*!40000 ALTER TABLE `x2_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_comment` ENABLE KEYS */;

#
# Structure for table "x2_config"
#

DROP TABLE IF EXISTS `x2_config`;
CREATE TABLE `x2_config` (
  `cfgapp` varchar(36) NOT NULL,
  `cfgsetting` text NOT NULL,
  PRIMARY KEY (`cfgapp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_config"
#

/*!40000 ALTER TABLE `x2_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_config` ENABLE KEYS */;

#
# Structure for table "x2_content"
#

DROP TABLE IF EXISTS `x2_content`;
CREATE TABLE `x2_content` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) NOT NULL DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  `cizhuan_guige` varchar(60) NOT NULL,
  `cizhuan_brand` varchar(24) NOT NULL,
  `cizhuan_thumb` varchar(120) NOT NULL,
  `tester` text NOT NULL,
  PRIMARY KEY (`contentid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "x2_content"
#

/*!40000 ALTER TABLE `x2_content` DISABLE KEYS */;
INSERT INTO `x2_content` VALUES (1,1,4,54,'peadmin','中国共产党廉洁自律准则','files/attach/images/content/20161019/14768618685574.jpg','',1414298357,1476861869,0,'拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。','',0,'content_default','&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;','','','',''),(5,1,4,1,'peadmin','中国共产党纪律处分条例','files/attach/images/content/20161019/14768618569159.jpg','',1458744864,1476861858,0,'拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。','',0,'content_default','&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;','','','',''),(6,1,4,1,'peadmin','题库练习','files/attach/images/content/20161019/14768618395936.jpg','',1458744888,1476861845,0,'拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。','',0,'content_default','&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;','','','',''),(7,2,4,1,'peadmin','北京烤鸭','files/attach/images/content/20160630/14672831627422.jpg','',1467283169,1471529999,0,'','',0,'content_default','','','','','a:5:{i:0;s:55:\"files/attach/images/content/20160818/14715299784373.jpg\";i:1;s:55:\"files/attach/images/content/20160818/14715299849626.jpg\";i:2;s:55:\"files/attach/images/content/20160818/14715299845671.jpg\";i:3;s:55:\"files/attach/images/content/20160818/14715299789053.jpg\";i:4;s:55:\"files/attach/images/content/20160818/14715299874253.jpg\";}'),(8,2,4,1,'peadmin','烤鸭2','files/attach/images/content/20160811/14709028491993.jpg','',1467286299,1471569400,0,'','',0,'content_default','','','','','a:8:{i:0;s:55:\"files/attach/images/content/20160818/14715163951496.jpg\";i:1;s:55:\"files/attach/images/content/20160818/14715163928616.jpg\";i:2;s:55:\"files/attach/images/content/20160818/14715163946618.jpg\";i:3;s:55:\"files/attach/images/content/20160818/14715163929064.jpg\";i:4;s:55:\"files/attach/images/content/20160818/14715299582214.jpg\";i:5;s:55:\"files/attach/images/content/20160818/14715299588912.jpg\";i:6;s:55:\"files/attach/images/content/20160818/14715299624219.jpg\";i:7;s:55:\"files/attach/images/content/20160818/14715163926845.jpg\";}'),(9,4,4,1,'peadmin','test help','app/core/styles/images/noimage.gif','',1477304879,0,0,'','',0,'content_default','&lt;p&gt;help&lt;/p&gt;','','','',''),(10,3,4,1,'peadmin','test exams','app/core/styles/images/noimage.gif','',1477304950,0,0,'','',0,'content_default','&lt;p&gt;exams&lt;/p&gt;','','','','');
/*!40000 ALTER TABLE `x2_content` ENABLE KEYS */;

#
# Structure for table "x2_coupon"
#

DROP TABLE IF EXISTS `x2_coupon`;
CREATE TABLE `x2_coupon` (
  `couponsn` varchar(16) NOT NULL,
  `couponvalue` int(11) NOT NULL DEFAULT '0',
  `couponstatus` int(1) NOT NULL DEFAULT '0',
  `couponaddtime` int(11) NOT NULL DEFAULT '0',
  `couponendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`couponsn`),
  KEY `couponstatus` (`couponstatus`,`couponendtime`),
  KEY `couponaddtime` (`couponaddtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_coupon"
#

/*!40000 ALTER TABLE `x2_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_coupon` ENABLE KEYS */;

#
# Structure for table "x2_course"
#

DROP TABLE IF EXISTS `x2_course`;
CREATE TABLE `x2_course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `courselevel` int(11) DEFAULT '0',
  `coursetitle` varchar(240) DEFAULT NULL,
  `coursemoduleid` int(11) DEFAULT NULL,
  `coursecsid` int(11) DEFAULT NULL,
  `coursethumb` varchar(240) DEFAULT NULL,
  `courseuserid` int(11) DEFAULT NULL,
  `courseinputtime` int(11) DEFAULT NULL,
  `coursemodifytime` int(11) DEFAULT NULL,
  `coursesequence` int(11) DEFAULT NULL,
  `coursedescribe` text,
  `course_files` varchar(240) NOT NULL,
  `image_img` varchar(120) NOT NULL,
  `course_examid` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseid`),
  KEY `coursecsid` (`coursecsid`,`courseuserid`,`courseinputtime`,`coursemodifytime`,`coursesequence`),
  KEY `coursemoduleid` (`coursemoduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "x2_course"
#

/*!40000 ALTER TABLE `x2_course` DISABLE KEYS */;
INSERT INTO `x2_course` VALUES (3,1,'skills 1',16,2,'files/attach/images/content/20161020/14768958048209.jpg',1,1476865535,1477038078,0,'&lt;p&gt;skills 1&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;./files/attach/files/content/20161021/14770189699477.jpg&quot; style=&quot;width: 600px; height: 450px;&quot; /&gt;&lt;/p&gt;','','',12),(4,2,'skills 2',16,2,'files/attach/images/content/20161020/14768958475413.jpg',1,1476895866,1477038061,0,'&lt;p&gt;skills 2&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;smiley&quot; height=&quot;23&quot; src=&quot;./app/core/styles/js/ckeditor/plugins/smiley/images/regular_smile.png&quot; title=&quot;smiley&quot; width=&quot;23&quot; /&gt;&lt;img alt=&quot;cool&quot; height=&quot;23&quot; src=&quot;./app/core/styles/js/ckeditor/plugins/smiley/images/shades_smile.png&quot; title=&quot;cool&quot; width=&quot;23&quot; /&gt;&lt;img alt=&quot;crying&quot; height=&quot;23&quot; src=&quot;./app/core/styles/js/ckeditor/plugins/smiley/images/cry_smile.png&quot; title=&quot;crying&quot; width=&quot;23&quot; /&gt;&lt;img alt=&quot;heart&quot; height=&quot;23&quot; src=&quot;./app/core/styles/js/ckeditor/plugins/smiley/images/heart.png&quot; title=&quot;heart&quot; width=&quot;23&quot; /&gt;&lt;/p&gt;','','',13),(5,3,'skills 3',16,2,'files/attach/images/content/20161020/14768959236345.jpg',1,1476895949,1477038043,0,'&lt;p&gt;skills 3&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;./files/attach/files/content/20161020/14769499066333.jpg&quot; style=&quot;width: 512px; height: 384px;&quot; /&gt;&lt;/p&gt;','','',14),(6,4,'skills 4',16,2,'app/core/styles/images/noimage.gif',1,1477038376,0,0,'&lt;p&gt;skills 4&lt;/p&gt;\r\n\r\n&lt;p&gt;This is skills 4.&lt;/p&gt;','','',15),(7,5,'skills 5',14,2,'app/core/styles/images/noimage.gif',1,1477301413,1477301428,0,'&lt;p&gt;skills 5&lt;/p&gt;','','',16),(8,6,'skills 6',14,2,'app/core/styles/images/noimage.gif',1,1477301468,0,0,'&lt;p&gt;skills 6&lt;/p&gt;\r\n\r\n&lt;p&gt;skills 6&lt;/p&gt;\r\n\r\n&lt;p&gt;skills 6&lt;/p&gt;','','',17),(9,7,'skills 7',14,2,'app/core/styles/images/noimage.gif',1,1477301504,0,0,'&lt;p&gt;skills 7&lt;/p&gt;\r\n\r\n&lt;p&gt;this is skills 7&lt;/p&gt;','','',18),(10,8,'skills 8',14,2,'app/core/styles/images/noimage.gif',1,1477301540,0,0,'&lt;p&gt;skills 8&lt;/p&gt;\r\n\r\n&lt;p&gt;skills&lt;/p&gt;\r\n\r\n&lt;p&gt;skills&lt;/p&gt;','','',19),(11,9,'skills 9',14,2,'app/core/styles/images/noimage.gif',1,1477301572,0,0,'&lt;p&gt;skills 9&lt;/p&gt;\r\n\r\n&lt;p&gt;999999999&lt;/p&gt;\r\n\r\n&lt;p&gt;9999999999&lt;/p&gt;\r\n\r\n&lt;p&gt;99999999999999&lt;/p&gt;','','',20);
/*!40000 ALTER TABLE `x2_course` ENABLE KEYS */;

#
# Structure for table "x2_coursesubject"
#

DROP TABLE IF EXISTS `x2_coursesubject`;
CREATE TABLE `x2_coursesubject` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `cstitle` varchar(240) DEFAULT '',
  `cscatid` int(11) DEFAULT NULL,
  `csuserid` int(11) DEFAULT '0',
  `csbasicid` int(11) DEFAULT '0',
  `cssubjectid` int(11) DEFAULT '0',
  `cstime` int(11) DEFAULT '0',
  `csthumb` varchar(120) DEFAULT '',
  `cssequence` int(11) DEFAULT NULL,
  `csdescribe` text,
  PRIMARY KEY (`csid`),
  KEY `csbasicid` (`csbasicid`,`cssubjectid`,`cstime`),
  KEY `cscatid` (`cscatid`),
  KEY `cuserid` (`csuserid`),
  KEY `cssequence` (`cssequence`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "x2_coursesubject"
#

/*!40000 ALTER TABLE `x2_coursesubject` DISABLE KEYS */;
INSERT INTO `x2_coursesubject` VALUES (2,'货运技巧与程序2015',7,1,5,3,1476861596,'files/attach/images/content/20161019/14768629596943.jpg',0,'&lt;p&gt;货运技巧与程序=》简介&lt;/p&gt;');
/*!40000 ALTER TABLE `x2_coursesubject` ENABLE KEYS */;

#
# Structure for table "x2_dochistory"
#

DROP TABLE IF EXISTS `x2_dochistory`;
CREATE TABLE `x2_dochistory` (
  `dhid` int(11) NOT NULL AUTO_INCREMENT,
  `dhcontent` text NOT NULL,
  `dhtime` int(11) NOT NULL,
  `dhstatus` tinyint(4) NOT NULL,
  `dhtop` tinyint(4) NOT NULL,
  PRIMARY KEY (`dhid`),
  KEY `dhtime` (`dhtime`),
  KEY `dhstatus` (`dhstatus`),
  KEY `dhtop` (`dhtop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_dochistory"
#

/*!40000 ALTER TABLE `x2_dochistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_dochistory` ENABLE KEYS */;

#
# Structure for table "x2_docs"
#

DROP TABLE IF EXISTS `x2_docs`;
CREATE TABLE `x2_docs` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `doctitle` varchar(240) NOT NULL,
  `doccatid` int(11) NOT NULL,
  `dockeywords` varchar(240) NOT NULL,
  `doccontentid` int(11) NOT NULL,
  `docinputtime` int(11) NOT NULL,
  `docmodifytime` int(11) NOT NULL,
  `docdescribe` varchar(240) NOT NULL,
  `doclock` tinyint(4) NOT NULL,
  PRIMARY KEY (`docid`),
  KEY `doctitle` (`doctitle`),
  KEY `doccatid` (`doccatid`),
  KEY `doccontentid` (`doccontentid`),
  KEY `docinputtime` (`docinputtime`),
  KEY `docmodifytime` (`docmodifytime`),
  KEY `doclock` (`doclock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_docs"
#

/*!40000 ALTER TABLE `x2_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_docs` ENABLE KEYS */;

#
# Structure for table "x2_examhistory"
#

DROP TABLE IF EXISTS `x2_examhistory`;
CREATE TABLE `x2_examhistory` (
  `ehid` int(11) NOT NULL AUTO_INCREMENT,
  `ehexamid` int(11) NOT NULL DEFAULT '0',
  `ehexam` varchar(240) NOT NULL DEFAULT '',
  `ehtype` int(11) NOT NULL DEFAULT '0',
  `ehbasicid` int(11) NOT NULL DEFAULT '0',
  `ehquestion` longtext NOT NULL,
  `ehsetting` text,
  `ehscorelist` text,
  `ehuseranswer` text,
  `ehtime` int(11) NOT NULL DEFAULT '0',
  `ehscore` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ehuserid` int(11) NOT NULL DEFAULT '0',
  `ehusername` varchar(120) NOT NULL DEFAULT '',
  `ehstarttime` int(11) NOT NULL DEFAULT '0',
  `ehstatus` int(1) NOT NULL DEFAULT '1',
  `ehdecide` int(1) NOT NULL DEFAULT '0',
  `ehtimelist` text,
  PRIMARY KEY (`ehid`),
  KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`),
  KEY `ehdecide` (`ehdecide`),
  KEY `ehexamid` (`ehexamid`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

#
# Data for table "x2_examhistory"
#

/*!40000 ALTER TABLE `x2_examhistory` DISABLE KEYS */;
INSERT INTO `x2_examhistory` VALUES (83,1,'湖里纪律知识考试',2,1,'a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"2\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:2:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}i:8500;a:17:{s:10:\"questionid\";s:4:\"8500\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题2&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}','a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}','',117,0.00,1,'peadmin',1470974147,1,0,''),(84,1,'湖里纪律知识考试',2,1,'a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:2:{i:0;s:2:\"11\";i:1;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:5:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;i:8499;s:2:\"10\";}','a:1:{i:8499;s:0:\"\";}',55,10.00,3,'教师',1471605018,1,1,'a:5:{i:8458;s:0:\"\";i:8459;s:0:\"\";i:8445;s:0:\"\";i:772;s:0:\"\";i:8499;s:0:\"\";}'),(85,1,'湖里纪律知识考试',1,1,'a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}','a:1:{i:8499;s:0:\"\";}',4,0.00,1,'peadmin',1471707015,0,1,''),(86,1,'测试',0,1,'a:3:{s:11:\"questionids\";a:2:{s:8:\"question\";a:1:{i:3;a:1:{i:0;s:4:\"8488\";}}s:11:\"questionrow\";a:3:{i:1;a:1:{i:0;s:1:\"1\";}i:5;a:1:{i:0;s:1:\"3\";}i:4;a:1:{i:0;s:2:\"11\";}}}s:9:\"questions\";a:1:{i:3;a:1:{i:8488;a:17:{s:10:\"questionid\";s:4:\"8488\";s:12:\"questiontype\";s:1:\"3\";s:8:\"question\";s:184:\"&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:30:\"&lt;p&gt;A.对 B.错&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"2\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:262:\"&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:18:\"questioncreatetime\";s:10:\"1456213212\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}s:12:\"questionrows\";a:3:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:5;a:1:{i:3;a:12:{s:4:\"qrid\";s:1:\"3\";s:6:\"qrtype\";s:1:\"5\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;阿大使大赛&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"3\";s:10:\"qrusername\";s:6:\"教师\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1449025873\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8460;a:17:{s:10:\"questionid\";s:4:\"8460\";s:12:\"questiontype\";s:1:\"5\";s:8:\"question\";s:37:\"&lt;p&gt;呜哇啊啊啊草&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:9:\"啊啊草\";s:16:\"questiondescribe\";s:28:\"&lt;p&gt;啊啊草&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1451030426\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"3\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:5:{s:9:\"sectionid\";s:1:\"1\";s:7:\"knowsid\";s:1:\"1\";s:5:\"title\";s:6:\"测试\";s:4:\"time\";s:2:\"60\";s:6:\"number\";a:6:{i:1;s:1:\"4\";i:5;s:1:\"1\";i:4;s:1:\"1\";i:3;s:1:\"1\";i:6;s:0:\"\";i:2;s:0:\"\";}}','a:7:{i:8488;i:0;i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;i:8460;i:0;i:8499;s:1:\"1\";}','a:2:{i:8499;s:0:\"\";i:8460;s:0:\"\";}',21,14.30,1,'peadmin',1471707198,1,0,''),(87,1,'湖里纪律知识考试',2,1,'a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}','a:1:{i:8499;s:0:\"\";}',3600,0.00,1,'peadmin',1471707997,0,1,'a:5:{i:8458;s:0:\"\";i:8459;s:0:\"\";i:8445;s:0:\"\";i:772;s:0:\"\";i:8499;s:0:\"\";}'),(88,12,'高等数学',1,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:13:{s:6:\"examid\";s:2:\"12\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:12:\"高等数学\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";}s:8:\"questype\";a:2:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:2:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;s:1:\"5\";i:8502;s:1:\"5\";}','a:2:{i:8501;s:1:\"B\";i:8502;s:1:\"C\";}',15,10.00,1,'peadmin',1476868079,1,1,''),(89,12,'高等数学1-1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:15:\"高等数学1-1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";}s:8:\"questype\";a:2:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:2:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;s:1:\"5\";i:8502;s:1:\"5\";}','a:2:{i:8501;s:1:\"B\";i:8502;s:1:\"C\";}',23,10.00,15,'han',1477033022,1,1,'a:2:{i:8501;s:10:\"1477033028\";i:8502;s:10:\"1477033039\";}'),(90,12,'高等数学1-1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:15:\"高等数学1-1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";}s:8:\"questype\";a:2:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:2:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;s:1:\"5\";i:8502;i:0;}','a:1:{i:8501;s:1:\"B\";}',11,5.00,15,'han',1477033360,1,1,'a:2:{i:8501;s:10:\"1477033366\";i:8502;s:0:\"\";}'),(91,12,'货运技巧1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:13:\"货运技巧1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:6:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;i:0;i:8502;i:0;}','',3600,0.00,15,'han',1477037610,1,1,'a:2:{i:8501;s:0:\"\";i:8502;s:0:\"\";}'),(92,12,'货运技巧1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:13:\"货运技巧1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:6:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;s:1:\"5\";i:8502;i:0;}','a:1:{i:8501;s:1:\"B\";}',18,5.00,15,'han',1477042287,1,1,'a:2:{i:8501;s:10:\"1477042299\";i:8502;s:0:\"\";}'),(93,12,'货运技巧1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:13:\"货运技巧1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:6:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;i:0;i:8502;i:0;}','a:1:{i:8501;s:1:\"C\";}',13,0.00,15,'han',1477042557,1,1,'a:2:{i:8501;s:10:\"1477042567\";i:8502;s:0:\"\";}'),(94,12,'货运技巧1',2,5,'a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','a:14:{s:6:\"examid\";s:2:\"12\";s:9:\"examlevel\";s:1:\"1\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:13:\"货运技巧1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:6:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','a:2:{i:8501;s:1:\"5\";i:8502;s:1:\"5\";}','a:2:{i:8501;s:1:\"B\";i:8502;s:1:\"C\";}',956,10.00,15,'han',1477303327,1,1,'a:2:{i:8501;s:10:\"1477304276\";i:8502;s:10:\"1477304280\";}');
/*!40000 ALTER TABLE `x2_examhistory` ENABLE KEYS */;

#
# Structure for table "x2_exams"
#

DROP TABLE IF EXISTS `x2_exams`;
CREATE TABLE `x2_exams` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examlevel` int(11) DEFAULT NULL,
  `examsubject` tinyint(4) NOT NULL DEFAULT '0',
  `exam` varchar(120) NOT NULL DEFAULT '',
  `examsetting` text NOT NULL,
  `examquestions` text NOT NULL,
  `examscore` text NOT NULL,
  `examstatus` int(1) NOT NULL DEFAULT '0',
  `examtype` int(11) NOT NULL DEFAULT '0',
  `examauthorid` int(11) NOT NULL DEFAULT '0',
  `examauthor` varchar(120) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `examtime` int(11) NOT NULL DEFAULT '0',
  `examkeyword` varchar(240) NOT NULL DEFAULT '',
  `examdecide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`examid`),
  KEY `examstatus` (`examstatus`),
  KEY `examtype` (`examtype`,`examauthorid`),
  KEY `examtime` (`examtime`),
  KEY `examsubject` (`examsubject`),
  KEY `examdecide` (`examdecide`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "x2_exams"
#

/*!40000 ALTER TABLE `x2_exams` DISABLE KEYS */;
INSERT INTO `x2_exams` VALUES (12,1,3,'货运技巧1','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:13:\",8501,8502,1,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:3:\",2,\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1476862526,'',1),(13,2,3,'货运技巧2','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"2\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"1\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"2\";s:5:\"score\";s:2:\"40\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:13:\",8502,8501,1,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:7:\",418,2,\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:11:\",8488,8487,\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1476900256,'',1),(14,3,3,'货运技巧3','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:13:\",8502,8501,1,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477035135,'',1),(15,4,3,'货运技巧4','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477301924,'',0),(16,5,3,'货运技巧5','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477301956,'',0),(17,6,3,'货运技巧6','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477302042,'',0),(18,7,3,'货运技巧7','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"60\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477302074,'',0),(19,8,3,'货运技巧8','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477302094,'',0),(20,9,3,'货运技巧9','a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:8:\"questype\";a:6:{i:1;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:3;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:4;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:5;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}i:6;a:3:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";}}}','a:6:{i:1;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:3;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:4;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:5;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}i:6;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}','',0,2,1,'peadmin',1477302133,'',0);
/*!40000 ALTER TABLE `x2_exams` ENABLE KEYS */;

#
# Structure for table "x2_examsession"
#

DROP TABLE IF EXISTS `x2_examsession`;
CREATE TABLE `x2_examsession` (
  `examsessionid` varchar(32) NOT NULL,
  `examsessionuserid` int(11) NOT NULL DEFAULT '0',
  `examsession` varchar(240) NOT NULL DEFAULT '',
  `examsessionsetting` text NOT NULL,
  `examsessionsign` text,
  `examsessionbasic` tinyint(4) NOT NULL DEFAULT '0',
  `examsessiontype` int(1) NOT NULL,
  `examsessionkey` varchar(32) NOT NULL DEFAULT '',
  `examsessionquestion` longtext NOT NULL,
  `examsessionuseranswer` text,
  `examsessionstarttime` int(11) NOT NULL DEFAULT '0',
  `examsessiontime` int(11) NOT NULL DEFAULT '0',
  `examsessionstatus` int(1) NOT NULL DEFAULT '0',
  `examsessionscore` decimal(10,1) NOT NULL DEFAULT '0.0',
  `examsessionscorelist` text,
  `examsessionissave` int(1) NOT NULL DEFAULT '0',
  `examsessiontimelist` text,
  PRIMARY KEY (`examsessionid`),
  KEY `examsessionstarttime` (`examsessionstarttime`),
  KEY `examsessionstatus` (`examsessionstatus`),
  KEY `examsessiontype` (`examsessiontype`),
  KEY `examsessionkey` (`examsessionkey`),
  KEY `examsubject` (`examsessionbasic`),
  KEY `examsessionissave` (`examsessionissave`),
  KEY `examsessionuserid` (`examsessionuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_examsession"
#

/*!40000 ALTER TABLE `x2_examsession` DISABLE KEYS */;
INSERT INTO `x2_examsession` VALUES ('8f9a27a2da7f5b8a31176b886047f8b2',15,'高等数学1-1','a:13:{s:6:\"examid\";s:2:\"12\";s:11:\"examsubject\";s:1:\"3\";s:4:\"exam\";s:15:\"高等数学1-1\";s:11:\"examsetting\";a:6:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:7:\"peadmin\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:2:\"90\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";}s:8:\"questype\";a:2:{i:1;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}i:2;a:3:{s:6:\"number\";s:2:\"10\";s:5:\"score\";s:1:\"5\";s:8:\"describe\";s:0:\"\";}}}s:13:\"examquestions\";a:2:{i:1;a:2:{s:9:\"questions\";s:11:\",8501,8502,\";s:13:\"rowsquestions\";s:0:\"\";}i:2;a:2:{s:9:\"questions\";s:0:\"\";s:13:\"rowsquestions\";s:0:\"\";}}s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"2\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1476862526\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','',5,1,'12','a:2:{s:9:\"questions\";a:1:{i:1;a:2:{i:8501;a:17:{s:10:\"questionid\";s:4:\"8501\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 1 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"B\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867748\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}i:8502;a:17:{s:10:\"questionid\";s:4:\"8502\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:74:\"&lt;p&gt;1 + 2 = （）。&lt;/p&gt;\r\n\r\n&lt;p&gt;A.1 B.2 C.3 D.4&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"1\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"C\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:16:\"高数1知识点\";}}s:18:\"questioncreatetime\";s:10:\"1476867897\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"0\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"3\";}}}s:12:\"questionrows\";a:0:{}}','',1476902116,60,0,0.0,'',0,''),('8n4kv6obh08aeamt6g4uogm840',15,'湖里纪律知识考试','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}','',3,1,'1','a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:2:{i:0;s:1:\"1\";i:1;s:2:\"16\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"1\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:2:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}i:16;a:12:{s:4:\"qrid\";s:2:\"16\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:22:\"&lt;p&gt;123&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"0\";s:8:\"qruserid\";s:1:\"3\";s:10:\"qrusername\";s:6:\"教师\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1475141991\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:0:{}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','',1476867053,60,0,0.0,'',0,''),('dhq4r44mmnadpecvkh5ugagb55',1,'湖里纪律知识考试','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}','',1,1,'1','a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"2\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:2:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}i:8500;a:17:{s:10:\"questionid\";s:4:\"8500\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题2&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','',1470365734,60,0,0.0,'',0,''),('m0hnen4qamfbnp79m43rahgtn1',1,'湖里纪律知识考试','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}','',1,1,'1','a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"2\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:2:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}i:8500;a:17:{s:10:\"questionid\";s:4:\"8500\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题2&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','',1470973775,60,0,0.0,'',0,''),('s0bf2mkcn7sk52v1pppu5ikrv6',1,'湖里纪律知识考试','a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}','',1,1,'1','a:3:{s:11:\"questionids\";a:3:{s:8:\"question\";N;s:11:\"questionrow\";a:2:{i:1;a:1:{i:0;s:1:\"1\";}i:4;a:1:{i:0;s:2:\"11\";}}s:7:\"setting\";a:13:{s:6:\"examid\";s:1:\"1\";s:11:\"examsubject\";s:1:\"1\";s:4:\"exam\";s:24:\"湖里纪律知识考试\";s:11:\"examsetting\";a:7:{s:8:\"examtime\";s:2:\"60\";s:7:\"comfrom\";s:0:\"\";s:5:\"score\";s:3:\"100\";s:9:\"passscore\";s:3:\"100\";s:12:\"questypelite\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:10:\"scalemodel\";s:1:\"0\";s:8:\"questype\";a:6:{i:1;a:6:{s:6:\"number\";s:1:\"7\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"7\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:2;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:3;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:4;a:6:{s:6:\"number\";s:1:\"3\";s:5:\"score\";s:2:\"10\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"1\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"2\";}i:5;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}i:6;a:6:{s:6:\"number\";s:1:\"0\";s:5:\"score\";s:1:\"0\";s:8:\"describe\";s:0:\"\";s:10:\"easynumber\";s:1:\"0\";s:12:\"middlenumber\";s:1:\"0\";s:10:\"hardnumber\";s:1:\"0\";}}}s:13:\"examquestions\";b:0;s:9:\"examscore\";s:0:\"\";s:10:\"examstatus\";s:1:\"0\";s:8:\"examtype\";s:1:\"1\";s:12:\"examauthorid\";s:1:\"1\";s:10:\"examauthor\";s:7:\"peadmin\";s:8:\"examtime\";s:10:\"1457579783\";s:11:\"examkeyword\";s:0:\"\";s:10:\"examdecide\";s:1:\"0\";}}s:9:\"questions\";a:0:{}s:12:\"questionrows\";a:2:{i:1;a:1:{i:1;a:12:{s:4:\"qrid\";s:1:\"1\";s:6:\"qrtype\";s:1:\"1\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题冒题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:19:\"请修改知识点1\";}}s:7:\"qrlevel\";s:1:\"1\";s:8:\"qrnumber\";s:1:\"4\";s:8:\"qruserid\";s:2:\"54\";s:10:\"qrusername\";s:7:\"peadmin\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1376419110\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:4:{i:8458;a:17:{s:10:\"questionid\";s:4:\"8458\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;阿斯达萨&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;阿斯达斯&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:34:\"&lt;p&gt;阿萨德撒的&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449026591\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8459;a:17:{s:10:\"questionid\";s:4:\"8459\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;三三四四&lt;/p&gt;\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1449027690\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"0\";}i:8445;a:17:{s:10:\"questionid\";s:4:\"8445\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:31:\"&lt;p&gt;asdsadsadasd&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:25:\"&lt;p&gt;sadasd&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:31:\"&lt;p&gt;sadasdasdasd&lt;/p&gt;\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1414127000\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"1\";s:13:\"questionlevel\";s:1:\"0\";}i:772;a:17:{s:10:\"questionid\";s:3:\"772\";s:12:\"questiontype\";s:1:\"1\";s:8:\"question\";s:34:\"&lt;p&gt;测试子试题&lt;/p&gt;\";s:14:\"questionuserid\";s:2:\"54\";s:16:\"questionusername\";s:7:\"peadmin\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:0:\"\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:1:\"A\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";a:0:{}s:18:\"questioncreatetime\";s:10:\"1376419161\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:1:\"1\";s:16:\"questionsequence\";s:1:\"2\";s:13:\"questionlevel\";s:1:\"0\";}}}}i:4;a:1:{i:11;a:12:{s:4:\"qrid\";s:2:\"11\";s:6:\"qrtype\";s:1:\"4\";s:10:\"qrquestion\";s:34:\"&lt;p&gt;测试题帽题&lt;/p&gt;\";s:9:\"qrknowsid\";a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"1\";s:5:\"knows\";s:12:\"纪律知识\";}}s:7:\"qrlevel\";s:1:\"3\";s:8:\"qrnumber\";s:1:\"1\";s:8:\"qruserid\";s:1:\"0\";s:10:\"qrusername\";s:0:\"\";s:16:\"qrlastmodifyuser\";s:0:\"\";s:6:\"qrtime\";s:10:\"1462583551\";s:8:\"qrstatus\";s:1:\"1\";s:4:\"data\";a:1:{i:8499;a:17:{s:10:\"questionid\";s:4:\"8499\";s:12:\"questiontype\";s:1:\"4\";s:8:\"question\";s:29:\"&lt;p&gt;子试题1&lt;/p&gt;\";s:14:\"questionuserid\";s:1:\"0\";s:16:\"questionusername\";s:0:\"\";s:22:\"questionlastmodifyuser\";s:0:\"\";s:14:\"questionselect\";s:23:\"&lt;p&gt;ABCD&lt;/p&gt;\";s:20:\"questionselectnumber\";s:1:\"4\";s:14:\"questionanswer\";s:20:\"&lt;p&gt;A&lt;/p&gt;\";s:16:\"questiondescribe\";s:0:\"\";s:15:\"questionknowsid\";b:0;s:18:\"questioncreatetime\";s:10:\"1462583551\";s:14:\"questionstatus\";s:1:\"1\";s:12:\"questionhtml\";b:0;s:14:\"questionparent\";s:2:\"11\";s:16:\"questionsequence\";s:1:\"0\";s:13:\"questionlevel\";s:1:\"1\";}}}}}}','a:1:{i:8499;s:0:\"\";}',1471423242,60,1,0.0,'a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}',0,'');
/*!40000 ALTER TABLE `x2_examsession` ENABLE KEYS */;

#
# Structure for table "x2_exercise"
#

DROP TABLE IF EXISTS `x2_exercise`;
CREATE TABLE `x2_exercise` (
  `exerid` int(11) NOT NULL AUTO_INCREMENT,
  `exeruserid` int(11) NOT NULL,
  `exerbasicid` int(11) NOT NULL,
  `exerknowsid` int(11) NOT NULL,
  `exernumber` int(11) NOT NULL,
  `exerqutype` int(11) NOT NULL,
  PRIMARY KEY (`exerid`),
  KEY `exeruserid` (`exeruserid`),
  KEY `exerbasicid` (`exerbasicid`),
  KEY `exerknowsid` (`exerknowsid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "x2_exercise"
#

/*!40000 ALTER TABLE `x2_exercise` DISABLE KEYS */;
INSERT INTO `x2_exercise` VALUES (1,1,1,1,1,1);
/*!40000 ALTER TABLE `x2_exercise` ENABLE KEYS */;

#
# Structure for table "x2_favor"
#

DROP TABLE IF EXISTS `x2_favor`;
CREATE TABLE `x2_favor` (
  `favorid` int(11) NOT NULL AUTO_INCREMENT,
  `favoruserid` int(11) NOT NULL DEFAULT '0',
  `favorsubjectid` int(11) NOT NULL DEFAULT '0',
  `favorquestionid` int(11) NOT NULL DEFAULT '0',
  `favortime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favorid`),
  KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`),
  KEY `favorsubjectid` (`favorsubjectid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "x2_favor"
#

/*!40000 ALTER TABLE `x2_favor` DISABLE KEYS */;
INSERT INTO `x2_favor` VALUES (3,1,1,8450,1440585871),(5,1,1,4,1467037123),(6,3,1,25,1467078531),(7,3,1,84,1467078534),(8,3,1,97,1467078537),(9,3,1,8455,1467078540),(10,3,1,8458,1467078584),(11,3,1,8459,1467078588),(12,3,1,8445,1467078590),(13,3,1,772,1467078597),(14,3,1,8498,1467078600),(15,3,1,8499,1467078603),(16,3,1,8500,1467078607),(17,1,1,8458,1467130815),(18,1,1,8498,1467178771),(19,1,1,10,1467342667),(20,1,1,8445,1471704146);
/*!40000 ALTER TABLE `x2_favor` ENABLE KEYS */;

#
# Structure for table "x2_gbook"
#

DROP TABLE IF EXISTS `x2_gbook`;
CREATE TABLE `x2_gbook` (
  `gbid` int(11) NOT NULL AUTO_INCREMENT,
  `gbinfo` text NOT NULL,
  `gbcontent` text NOT NULL,
  `gbreply` text NOT NULL,
  `gbtime` int(11) NOT NULL DEFAULT '0',
  `gbreplytime` int(11) NOT NULL DEFAULT '0',
  `gbstatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gbid`),
  KEY `gbtime` (`gbtime`),
  KEY `gbreplytime` (`gbreplytime`),
  KEY `gbstatus` (`gbstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_gbook"
#

/*!40000 ALTER TABLE `x2_gbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_gbook` ENABLE KEYS */;

#
# Structure for table "x2_knows"
#

DROP TABLE IF EXISTS `x2_knows`;
CREATE TABLE `x2_knows` (
  `knowsid` int(11) NOT NULL AUTO_INCREMENT,
  `knows` varchar(120) NOT NULL DEFAULT '',
  `knowssectionid` int(11) NOT NULL DEFAULT '0',
  `knowsdescribe` text NOT NULL,
  `knowsstatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`knowsid`),
  KEY `knows` (`knows`,`knowssectionid`),
  KEY `knowsstatus` (`knowsstatus`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "x2_knows"
#

/*!40000 ALTER TABLE `x2_knows` DISABLE KEYS */;
INSERT INTO `x2_knows` VALUES (1,'纪律知识',1,'',1),(2,'请修改知识点2',1,'',0),(3,'请修改知识点3',1,'',0),(4,'请修改知识点4',1,'',0),(5,'章节2',2,'',1),(6,'测试5',1,'',0),(7,'测算过i',1,'',0),(8,'测试6',1,'',0),(9,'货运技巧',3,'',1);
/*!40000 ALTER TABLE `x2_knows` ENABLE KEYS */;

#
# Structure for table "x2_log"
#

DROP TABLE IF EXISTS `x2_log`;
CREATE TABLE `x2_log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) DEFAULT '0',
  `logcourseid` int(11) DEFAULT '0',
  `logtime` int(11) DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `loguserid` (`loguserid`,`logcourseid`),
  KEY `logtime` (`logtime`)
) ENGINE=MyISAM AUTO_INCREMENT=349 DEFAULT CHARSET=utf8;

#
# Data for table "x2_log"
#

/*!40000 ALTER TABLE `x2_log` DISABLE KEYS */;
INSERT INTO `x2_log` VALUES (1,1,1,1467215936),(2,1,0,1467261592),(3,1,0,1467261647),(4,1,0,1467261666),(5,1,0,1467261759),(6,1,0,1467262163),(7,1,0,1467262180),(8,1,0,1467262194),(9,1,0,1467262228),(10,1,0,1467262343),(11,1,0,1467262357),(12,1,1,1467262360),(13,1,1,1467262364),(14,1,1,1467262366),(15,1,1,1467262409),(16,1,1,1467262527),(17,1,1,1467262529),(18,1,1,1467262533),(19,1,0,1467262656),(20,1,2,1467262659),(21,1,2,1467262663),(22,1,0,1467262693),(23,1,2,1467262696),(24,1,2,1467262712),(25,1,0,1467262717),(26,1,1,1467262725),(27,1,1,1467262741),(28,1,2,1467262750),(29,1,1,1467262831),(30,1,2,1467262838),(31,1,1,1467262843),(32,1,2,1467262850),(33,1,1,1467262855),(34,1,2,1467262856),(35,1,1,1467262859),(36,1,2,1467262860),(37,1,1,1467262913),(38,1,1,1467262941),(39,1,2,1467262950),(40,1,1,1467262955),(41,1,2,1467262957),(42,1,1,1467262958),(43,1,2,1467262959),(44,1,0,1467262971),(45,1,2,1467262975),(46,1,1,1467262976),(47,1,2,1467262977),(48,1,0,1467263019),(49,1,1,1467263068),(50,1,2,1467263070),(51,1,1,1467263071),(52,1,2,1467263074),(53,1,0,1467264512),(54,1,2,1467264517),(55,1,1,1467264518),(56,1,2,1467264520),(57,1,1,1467264521),(58,1,2,1467264522),(59,1,0,1467264576),(60,1,2,1467264579),(61,1,0,1467264588),(62,1,1,1467264590),(63,1,0,1467264604),(64,1,1,1467264606),(65,1,2,1467264606),(66,1,1,1467264608),(67,1,2,1467264616),(68,1,1,1467264617),(69,1,2,1467264625),(70,1,1,1467264649),(71,1,2,1467264651),(72,1,1,1467264653),(73,1,2,1467264704),(74,1,1,1467264705),(75,1,2,1467264707),(76,1,0,1467265736),(77,1,2,1467265744),(78,1,0,1467279698),(79,1,2,1467279706),(80,1,1,1467279896),(81,1,2,1467281089),(82,1,1,1467281092),(83,1,0,1467281171),(84,1,2,1467281508),(85,1,1,1467281510),(86,1,2,1467281512),(87,1,0,1467292253),(88,1,0,1467292362),(89,1,0,1467292685),(90,1,0,1467293570),(91,1,0,1467340308),(92,1,0,1467776769),(93,1,2,1467776774),(94,1,1,1467776776),(95,1,0,1467793053),(96,1,0,1467797013),(97,1,2,1467797016),(98,1,1,1467797017),(99,1,2,1467797018),(100,1,1,1467797018),(101,1,0,1467797027),(102,1,0,1468672685),(103,1,0,1468942384),(104,1,1,1468942386),(105,1,2,1468942387),(106,1,1,1468942389),(107,1,2,1468942394),(108,1,1,1468942395),(109,1,0,1470365704),(110,1,0,1471158894),(111,1,1,1471158897),(112,1,2,1471158902),(113,1,1,1471158905),(114,1,2,1471158906),(115,1,0,1471159065),(116,1,2,1471159074),(117,1,1,1471159077),(118,3,0,1471605006),(119,1,0,1471703474),(120,1,1,1471703477),(121,1,2,1471703482),(122,1,0,1471703492),(123,1,0,1471767815),(124,1,2,1471767820),(125,1,1,1471767821),(126,1,0,1471771968),(127,1,1,1471772067),(128,1,0,1471772550),(129,1,0,1471772562),(130,1,0,1471835504),(131,15,0,1475126077),(132,1,0,1475131281),(133,1,0,1475136091),(134,1,0,1475136094),(135,1,1,1475136100),(136,1,2,1475136102),(137,1,1,1475136104),(138,1,2,1475136107),(139,1,1,1475136108),(140,1,1,1475136115),(141,1,1,1475136118),(142,1,1,1475136391),(143,1,2,1475136393),(144,1,1,1475136395),(145,3,0,1475137766),(146,3,0,1475138581),(147,1,0,1476794693),(148,1,0,1476808593),(149,1,0,1476861640),(150,1,0,1476861646),(151,1,0,1476862764),(152,1,0,1476862813),(153,15,0,1476864011),(154,15,2,1476864023),(155,15,1,1476864024),(156,15,2,1476864026),(157,15,0,1476864222),(158,15,1,1476864255),(159,15,1,1476864257),(160,15,1,1476864258),(161,15,1,1476864259),(162,15,1,1476864260),(163,15,0,1476864500),(164,1,0,1476865551),(165,1,3,1476865556),(166,1,3,1476865559),(167,1,3,1476865560),(168,1,3,1476865562),(169,1,3,1476865564),(170,1,3,1476865565),(171,1,0,1476866004),(172,1,3,1476866011),(173,1,3,1476866013),(174,1,3,1476866014),(175,1,3,1476866015),(176,15,0,1476866569),(177,15,0,1476866579),(178,15,0,1476866594),(179,15,3,1476866601),(180,15,0,1476866663),(181,15,0,1476867001),(182,15,0,1476867011),(183,15,0,1476867020),(184,1,0,1476869066),(185,1,1,1476869071),(186,1,1,1476869081),(187,1,1,1476869082),(188,1,1,1476869083),(189,1,1,1476869084),(190,1,1,1476869084),(191,1,1,1476869085),(192,1,1,1476869086),(193,1,1,1476869086),(194,1,1,1476869087),(195,1,1,1476869088),(196,15,0,1476869098),(197,15,1,1476869104),(198,15,1,1476869106),(199,15,1,1476869111),(200,15,1,1476869116),(201,15,1,1476869118),(202,15,1,1476869118),(203,15,1,1476869119),(204,15,2,1476869120),(205,15,1,1476869126),(206,15,1,1476869128),(207,15,1,1476869129),(208,15,0,1476895664),(209,15,1,1476895669),(210,15,2,1476895671),(211,15,1,1476895676),(212,15,2,1476895678),(213,15,1,1476895681),(214,15,2,1476895683),(215,15,0,1476895689),(216,15,0,1476895873),(217,15,3,1476895877),(218,15,3,1476895883),(219,15,3,1476895884),(220,15,3,1476895885),(221,15,0,1476895954),(222,15,4,1476895960),(223,15,5,1476895962),(224,15,3,1476895964),(225,15,0,1476896065),(226,15,0,1476896286),(227,15,0,1476896395),(228,15,0,1476896397),(229,15,0,1476896399),(230,15,0,1476896417),(231,15,0,1476896469),(232,15,0,1476896526),(233,15,0,1476896550),(234,15,0,1476896569),(235,15,0,1476896583),(236,15,0,1476896586),(237,15,0,1476896596),(238,15,0,1476896648),(239,15,1,1476896652),(240,15,2,1476896654),(241,15,1,1476896655),(242,15,0,1476896668),(243,15,0,1476896783),(244,15,0,1476897006),(245,15,0,1476897020),(246,15,0,1476898667),(247,15,0,1476900365),(248,15,0,1476901284),(249,15,0,1476901301),(250,15,0,1476949640),(251,15,0,1476950016),(252,15,0,1477017730),(253,15,0,1477017768),(254,15,0,1477017908),(255,15,3,1477017932),(256,15,0,1477017953),(257,15,0,1477017961),(258,15,2,1477017969),(259,15,1,1477017971),(260,15,2,1477017972),(261,15,1,1477017974),(262,15,2,1477017976),(263,15,1,1477017979),(264,15,2,1477017997),(265,15,0,1477018233),(266,15,0,1477018247),(267,15,5,1477018267),(268,15,0,1477018713),(269,15,0,1477018996),(270,15,0,1477019113),(271,15,0,1477019131),(272,15,0,1477019189),(273,15,0,1477020064),(274,15,0,1477020070),(275,15,0,1477020745),(276,15,0,1477020935),(277,15,0,1477021949),(278,15,0,1477021970),(279,15,0,1477021986),(280,15,0,1477029761),(281,15,0,1477029940),(282,15,1,1477029944),(283,15,2,1477029949),(284,15,1,1477029951),(285,15,0,1477032841),(286,15,0,1477037721),(287,15,4,1477037780),(288,15,4,1477037780),(289,15,0,1477037814),(290,15,0,1477038090),(291,15,0,1477038385),(292,15,0,1477039553),(293,15,0,1477039571),(294,15,0,1477274402),(295,15,0,1477274409),(296,15,0,1477274988),(297,15,0,1477275097),(298,15,0,1477275153),(299,15,0,1477275179),(300,15,4,1477275193),(301,15,0,1477275206),(302,15,0,1477275234),(303,15,0,1477275270),(304,15,0,1477275293),(305,15,0,1477275308),(306,15,0,1477275373),(307,15,0,1477275542),(308,15,0,1477275571),(309,15,0,1477275831),(310,15,0,1477275869),(311,15,0,1477275917),(312,15,0,1477276176),(313,15,0,1477278356),(314,15,0,1477278525),(315,15,0,1477278608),(316,15,0,1477278894),(317,15,4,1477279032),(318,15,5,1477279039),(319,15,6,1477279043),(320,15,0,1477279881),(321,15,0,1477280084),(322,15,0,1477280163),(323,15,0,1477280191),(324,15,0,1477280213),(325,15,0,1477280353),(326,15,0,1477280410),(327,15,0,1477283599),(328,15,0,1477283704),(329,15,0,1477283789),(330,15,0,1477283876),(331,15,0,1477292166),(332,15,0,1477294240),(333,15,3,1477294325),(334,15,4,1477294325),(335,15,5,1477294325),(336,15,0,1477301601),(337,15,0,1477304524),(338,15,1,1477304528),(339,15,2,1477304529),(340,15,2,1477304532),(341,15,1,1477304532),(342,15,2,1477304534),(343,15,0,1477304616),(344,15,0,1477304974),(345,15,0,1477305336),(346,15,0,1477305344),(347,15,0,1477305449),(348,15,0,1477305893);
/*!40000 ALTER TABLE `x2_log` ENABLE KEYS */;

#
# Structure for table "x2_module"
#

DROP TABLE IF EXISTS `x2_module`;
CREATE TABLE `x2_module` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulecode` varchar(24) NOT NULL DEFAULT '',
  `modulename` varchar(60) NOT NULL DEFAULT '',
  `moduledescribe` tinytext NOT NULL,
  `moduleapp` varchar(24) NOT NULL DEFAULT '',
  `moduletable` varchar(24) NOT NULL DEFAULT '',
  `moduleallowreg` tinyint(1) DEFAULT '0',
  `modulestatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `modulecode` (`modulecode`),
  KEY `modulename` (`modulename`),
  KEY `moduleapp` (`moduleapp`),
  KEY `moduleallowreg` (`moduleallowreg`),
  KEY `modulestatus` (`modulestatus`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "x2_module"
#

/*!40000 ALTER TABLE `x2_module` DISABLE KEYS */;
INSERT INTO `x2_module` VALUES (1,'manager','管理员模型','管理员','user','user_data',0,0),(4,'news','新闻','新闻','content','content_data',0,0),(9,'normal','普通用户','普通用户','user','',0,0),(11,'spnormal','普通信息','普通信息','special','',0,0),(12,'teacher','教师模型','教师模型','user','',0,0),(14,'course','视频课程','','course','',0,0),(16,'image','图文结合','','course','',0,0);
/*!40000 ALTER TABLE `x2_module` ENABLE KEYS */;

#
# Structure for table "x2_module_fields"
#

DROP TABLE IF EXISTS `x2_module_fields`;
CREATE TABLE `x2_module_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldappid` varchar(12) NOT NULL DEFAULT '',
  `fieldmoduleid` int(4) NOT NULL DEFAULT '0',
  `fieldsequence` tinyint(4) NOT NULL DEFAULT '0',
  `field` varchar(24) NOT NULL DEFAULT '',
  `fieldtitle` varchar(60) NOT NULL DEFAULT '',
  `fieldlength` varchar(12) NOT NULL DEFAULT '',
  `fielddescribe` text NOT NULL,
  `fieldtype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmltype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmlproperty` text NOT NULL,
  `fieldvalues` text NOT NULL,
  `fielddefault` text NOT NULL,
  `fieldlock` tinyint(1) NOT NULL DEFAULT '0',
  `fieldindextype` varchar(12) NOT NULL DEFAULT '',
  `fieldforbidactors` tinytext NOT NULL,
  `fieldsystem` int(1) NOT NULL DEFAULT '0',
  `fieldpublic` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field` (`field`,`fieldlock`),
  KEY `fieldmoduleid` (`fieldmoduleid`),
  KEY `fieldsequence` (`fieldsequence`),
  KEY `fieldsystem` (`fieldsystem`),
  KEY `fieldpublic` (`fieldpublic`),
  KEY `fieldappid` (`fieldappid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "x2_module_fields"
#

/*!40000 ALTER TABLE `x2_module_fields` DISABLE KEYS */;
INSERT INTO `x2_module_fields` VALUES (1,'user',1,2,'manager_apps','可管理模块','120','','varchar','select','class=form-control\r\nstyle=width:30%','用户=user\r\n内容=content','',0,'0',',-1,',0,0),(2,'user',1,0,'photo','用户肖像','120','','varchar','thumb','','','',0,'0',',,',0,1),(3,'user',1,0,'usertruename','真实姓名','24','','varchar','text','class=form-control\r\nstyle=width:25%','','',0,'0',',,',0,1),(6,'user',9,0,'normal_favor','爱好','250','','varchar','checkboxarray','','吃=吃\r\n喝=喝\r\n拉=拉\r\n撒=撒\r\n睡=睡','吃',0,'0',',,',0,0),(7,'user',12,0,'teacher_subjects','可管理科目','','','text','checkboxarray','','请修改科目名称=1','',1,'0',',-1,',0,0),(8,'content',13,0,'cizhuan_guige','规格','60','','varchar','radio','','90*90=1\r\n60*60=2','',0,'',',,',1,0),(9,'content',13,0,'cizhuan_brand','品牌','24','','varchar','checkboxarray','','阿里=阿里\r\n阿里1=阿里1','',0,'',',,',0,0),(10,'content',13,0,'cizhuan_thumb','缩略图','120','','varchar','thumb','','','',0,'',',,',0,0),(11,'course',14,0,'course_files','视频文件','240','','varchar','videotext','exectype=upfile\r\nuptypes=*.mp4\r\nfilesize=120 MB','','',1,'',',,',0,0),(12,'content',4,0,'tester','测试字段','','','text','picture','class=form-control','','',0,'',',,',0,1),(13,'course',16,0,'image_img','图文','','','varchar','picture','exectype=upfile\r\nuptypes=*.jpg\r\nfilesize=120 MB','','',0,'',',,',0,0);
/*!40000 ALTER TABLE `x2_module_fields` ENABLE KEYS */;

#
# Structure for table "x2_openbasics"
#

DROP TABLE IF EXISTS `x2_openbasics`;
CREATE TABLE `x2_openbasics` (
  `obid` int(11) NOT NULL AUTO_INCREMENT,
  `obuserid` int(11) NOT NULL DEFAULT '0',
  `obbasicid` int(11) NOT NULL DEFAULT '0',
  `obtime` int(11) NOT NULL DEFAULT '0',
  `obendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`obid`),
  KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

#
# Data for table "x2_openbasics"
#

/*!40000 ALTER TABLE `x2_openbasics` DISABLE KEYS */;
INSERT INTO `x2_openbasics` VALUES (21,54,5,1387256651,1418792651),(22,54,4,1387268047,1418804047),(23,98,5,1392631970,1395223970),(24,98,4,1392631972,1395223972),(25,98,3,1392631974,1395223974),(26,98,2,1392631975,1395223975),(27,98,1,1392631976,1395223976),(28,59,5,1414301844,1445837844),(29,49,5,1414591481,1446127481),(30,54,2,1414640606,1446176606),(31,49,1,1414650468,1446186468),(37,4,1,1433922468,1465458468),(38,5,1,1435492054,1467028054),(39,7,1,1435732920,1467268920),(42,2,1,1443756003,1446348003),(43,8,1,1447816849,1450408849),(49,3,1,1470150743,1501686743),(50,12,1,1470989138,1473581138),(51,1,1,1471703503,1503239503),(52,15,3,1475126121,1506662121),(53,3,4,1475137123,1506673123),(55,15,5,1476866560,1479458560),(56,1,5,1476868053,1508404053),(57,15,1,1476901326,1508437326),(58,16,5,1476958749,1508494749),(59,16,3,1476958882,1508494882),(60,18,5,1476958972,1508494972),(61,19,5,1476962293,1508498293);
/*!40000 ALTER TABLE `x2_openbasics` ENABLE KEYS */;

#
# Structure for table "x2_orders"
#

DROP TABLE IF EXISTS `x2_orders`;
CREATE TABLE `x2_orders` (
  `ordersn` varchar(15) NOT NULL,
  `ordertitle` varchar(240) NOT NULL,
  `orderdescribe` text NOT NULL,
  `orderitems` text NOT NULL,
  `orderprice` decimal(10,2) NOT NULL,
  `orderuserid` int(11) NOT NULL,
  `orderuserinfo` text NOT NULL,
  `orderstatus` int(2) NOT NULL,
  `orderfullprice` decimal(10,2) NOT NULL,
  `ordercreatetime` int(11) NOT NULL,
  `orderpaytime` int(11) NOT NULL,
  `orderouttime` int(11) NOT NULL,
  `orderrecivetime` int(11) NOT NULL,
  `orderfaq` text NOT NULL,
  `orderpost` text NOT NULL,
  PRIMARY KEY (`ordersn`),
  KEY `orderprice` (`orderprice`,`ordercreatetime`,`orderpaytime`),
  KEY `orderuserid` (`orderuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_orders"
#

/*!40000 ALTER TABLE `x2_orders` DISABLE KEYS */;
INSERT INTO `x2_orders` VALUES ('201606291605238','考试系统充值 10 元','','',10.00,1,'a:1:{s:8:\"username\";s:7:\"peadmin\";}',1,0.00,1467187531,0,0,0,'',''),('201606291605454','考试系统充值 30 元','','',30.00,1,'a:1:{s:8:\"username\";s:7:\"peadmin\";}',1,0.00,1467187539,0,0,0,'',''),('201608202230640','考试系统充值 100 元','','',100.00,1,'a:1:{s:8:\"username\";s:7:\"peadmin\";}',1,0.00,1471703433,0,0,0,'',''),('201610191515240','考试系统充值 10 元','','',10.00,1,'a:1:{s:8:\"username\";s:7:\"peadmin\";}',1,0.00,1476861307,0,0,0,'','');
/*!40000 ALTER TABLE `x2_orders` ENABLE KEYS */;

#
# Structure for table "x2_poscontent"
#

DROP TABLE IF EXISTS `x2_poscontent`;
CREATE TABLE `x2_poscontent` (
  `pcid` int(11) NOT NULL AUTO_INCREMENT,
  `pcposid` int(11) NOT NULL DEFAULT '0',
  `pccontentid` int(11) NOT NULL DEFAULT '0',
  `pcthumb` varchar(120) NOT NULL DEFAULT '',
  `pcsequence` int(11) NOT NULL DEFAULT '0',
  `pctitle` varchar(240) NOT NULL DEFAULT '',
  `pctime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcid`),
  KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`),
  KEY `pctime` (`pctime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_poscontent"
#

/*!40000 ALTER TABLE `x2_poscontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_poscontent` ENABLE KEYS */;

#
# Structure for table "x2_position"
#

DROP TABLE IF EXISTS `x2_position`;
CREATE TABLE `x2_position` (
  `posid` int(11) NOT NULL AUTO_INCREMENT,
  `posname` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_position"
#

/*!40000 ALTER TABLE `x2_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_position` ENABLE KEYS */;

#
# Structure for table "x2_product"
#

DROP TABLE IF EXISTS `x2_product`;
CREATE TABLE `x2_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `producttype` varchar(24) NOT NULL DEFAULT '',
  `productpartnerid` int(11) NOT NULL DEFAULT '0',
  `productname` varchar(240) NOT NULL DEFAULT '',
  `productcode` int(11) NOT NULL DEFAULT '0',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productdescribe` text NOT NULL,
  `productlesson` varchar(40) NOT NULL DEFAULT '',
  `producttry` varchar(240) NOT NULL DEFAULT '',
  PRIMARY KEY (`productid`),
  KEY `partnercode` (`productcode`),
  KEY `productpartnerid` (`productpartnerid`),
  KEY `producttype` (`producttype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "x2_product"
#

/*!40000 ALTER TABLE `x2_product` DISABLE KEYS */;
INSERT INTO `x2_product` VALUES (4,'taocan[]',1,'财经法规',10,0.01,'财经法规','20','http://www.163.com');
/*!40000 ALTER TABLE `x2_product` ENABLE KEYS */;

#
# Structure for table "x2_quest2knows"
#

DROP TABLE IF EXISTS `x2_quest2knows`;
CREATE TABLE `x2_quest2knows` (
  `qkid` int(11) NOT NULL AUTO_INCREMENT,
  `qkquestionid` int(11) NOT NULL DEFAULT '0',
  `qkknowsid` int(11) NOT NULL DEFAULT '0',
  `qktype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qkid`),
  KEY `qkquestionid` (`qkquestionid`,`qkknowsid`),
  KEY `qktype` (`qktype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_quest2knows"
#

/*!40000 ALTER TABLE `x2_quest2knows` DISABLE KEYS */;
INSERT INTO `x2_quest2knows` VALUES (1,1,9,0),(2,2,9,0);
/*!40000 ALTER TABLE `x2_quest2knows` ENABLE KEYS */;

#
# Structure for table "x2_questionrows"
#

DROP TABLE IF EXISTS `x2_questionrows`;
CREATE TABLE `x2_questionrows` (
  `qrid` int(11) NOT NULL AUTO_INCREMENT,
  `qrtype` tinyint(4) NOT NULL DEFAULT '2',
  `qrquestion` mediumtext NOT NULL,
  `qrknowsid` tinytext NOT NULL,
  `qrlevel` int(1) NOT NULL DEFAULT '0',
  `qrnumber` int(4) NOT NULL DEFAULT '0',
  `qruserid` int(11) NOT NULL DEFAULT '0',
  `qrusername` varchar(120) NOT NULL DEFAULT '',
  `qrlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `qrtime` int(11) NOT NULL DEFAULT '0',
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`qrid`),
  KEY `qrlevel` (`qrlevel`,`qrnumber`),
  KEY `qruserid` (`qruserid`),
  KEY `qrtime` (`qrtime`),
  KEY `qrstatus` (`qrstatus`),
  KEY `qrtype` (`qrtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_questionrows"
#

/*!40000 ALTER TABLE `x2_questionrows` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_questionrows` ENABLE KEYS */;

#
# Structure for table "x2_questions"
#

DROP TABLE IF EXISTS `x2_questions`;
CREATE TABLE `x2_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `questiontype` int(3) NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `questionuserid` int(11) NOT NULL DEFAULT '0',
  `questionusername` varchar(120) NOT NULL DEFAULT '',
  `questionlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `questionselect` text NOT NULL,
  `questionselectnumber` tinyint(11) NOT NULL DEFAULT '0',
  `questionanswer` text NOT NULL,
  `questiondescribe` text NOT NULL,
  `questionknowsid` text NOT NULL,
  `questioncreatetime` int(11) NOT NULL DEFAULT '0',
  `questionstatus` int(1) NOT NULL DEFAULT '1',
  `questionhtml` text NOT NULL,
  `questionparent` int(11) NOT NULL DEFAULT '0',
  `questionsequence` int(3) NOT NULL DEFAULT '0',
  `questionlevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questionid`),
  KEY `questioncreatetime` (`questioncreatetime`),
  KEY `questiontype` (`questiontype`),
  KEY `questionstatus` (`questionstatus`),
  KEY `questionuserid` (`questionuserid`),
  KEY `questionparent` (`questionparent`,`questionsequence`),
  KEY `questionlevel` (`questionlevel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_questions"
#

/*!40000 ALTER TABLE `x2_questions` DISABLE KEYS */;
INSERT INTO `x2_questions` VALUES (1,1,'&lt;p&gt;1 + 1 = ( )。&lt;/p&gt;',1,'peadmin','','&lt;p&gt;A.1&lt;/p&gt;\r\n\r\n&lt;p&gt;B.2&lt;/p&gt;\r\n\r\n&lt;p&gt;C.3&lt;/p&gt;\r\n\r\n&lt;p&gt;D.4&lt;/p&gt;',4,'B','&lt;p&gt;1+1=2 傻不傻&lt;/p&gt;','a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:12:\"货运技巧\";}}',1477303756,1,'',0,0,1),(2,2,'&lt;p&gt;2 + 2 = （）。&lt;/p&gt;',1,'peadmin','','&lt;p&gt;A. 3&lt;/p&gt;\r\n\r\n&lt;p&gt;B. 4&lt;/p&gt;\r\n\r\n&lt;p&gt;C. 5&lt;/p&gt;\r\n\r\n&lt;p&gt;D. 四&lt;/p&gt;',4,'BD','&lt;p&gt;多选题，4 = 四。&lt;/p&gt;','a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"9\";s:5:\"knows\";s:12:\"货运技巧\";}}',1477303953,1,'',0,0,3);
/*!40000 ALTER TABLE `x2_questions` ENABLE KEYS */;

#
# Structure for table "x2_questype"
#

DROP TABLE IF EXISTS `x2_questype`;
CREATE TABLE `x2_questype` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `questype` varchar(60) NOT NULL DEFAULT '',
  `questsort` int(1) NOT NULL DEFAULT '0',
  `questchoice` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`),
  KEY `questchoice` (`questchoice`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "x2_questype"
#

/*!40000 ALTER TABLE `x2_questype` DISABLE KEYS */;
INSERT INTO `x2_questype` VALUES (1,'单选题',0,1),(2,'多选题',0,2),(3,'判断题',0,4),(4,'问答题',1,1),(5,'填空题',0,5),(6,'定值填空题',0,5);
/*!40000 ALTER TABLE `x2_questype` ENABLE KEYS */;

#
# Structure for table "x2_record"
#

DROP TABLE IF EXISTS `x2_record`;
CREATE TABLE `x2_record` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `recordquestionid` int(11) NOT NULL DEFAULT '0',
  `recorduserid` int(11) NOT NULL DEFAULT '0',
  `recordquestion` text NOT NULL,
  `recordtime` int(11) NOT NULL DEFAULT '0',
  `recordsubjectid` int(11) NOT NULL DEFAULT '0',
  `recordknowsid` int(11) NOT NULL DEFAULT '0',
  `recordquestype` int(11) NOT NULL DEFAULT '0',
  `recordexamid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recordid`),
  KEY `recordquestionid` (`recordquestionid`,`recorduserid`,`recordtime`),
  KEY `recordsubjectid` (`recordsubjectid`,`recordknowsid`,`recordquestype`),
  KEY `recordexamid` (`recordexamid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_record"
#

/*!40000 ALTER TABLE `x2_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_record` ENABLE KEYS */;

#
# Structure for table "x2_reply"
#

DROP TABLE IF EXISTS `x2_reply`;
CREATE TABLE `x2_reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `replyuserid` int(11) NOT NULL DEFAULT '0',
  `replyusername` varchar(120) NOT NULL DEFAULT '',
  `replycommentid` int(11) NOT NULL DEFAULT '0',
  `replytime` int(11) NOT NULL DEFAULT '0',
  `replycontent` text NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_reply"
#

/*!40000 ALTER TABLE `x2_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_reply` ENABLE KEYS */;

#
# Structure for table "x2_sections"
#

DROP TABLE IF EXISTS `x2_sections`;
CREATE TABLE `x2_sections` (
  `sectionid` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(120) NOT NULL DEFAULT '',
  `sectionsubjectid` int(11) NOT NULL DEFAULT '0',
  `sectiondescribe` text NOT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `section` (`section`),
  KEY `sectionsubjectid` (`sectionsubjectid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "x2_sections"
#

/*!40000 ALTER TABLE `x2_sections` DISABLE KEYS */;
INSERT INTO `x2_sections` VALUES (1,'纪律知识',1,''),(3,'第1章',3,''),(4,'第2章',3,''),(5,'第3章',3,''),(6,'总测试',3,'');
/*!40000 ALTER TABLE `x2_sections` ENABLE KEYS */;

#
# Structure for table "x2_seminar"
#

DROP TABLE IF EXISTS `x2_seminar`;
CREATE TABLE `x2_seminar` (
  `seminarid` int(11) NOT NULL AUTO_INCREMENT,
  `seminartitle` varchar(240) NOT NULL DEFAULT '',
  `seminarcatid` int(11) NOT NULL DEFAULT '0',
  `seminarthumb` varchar(240) NOT NULL DEFAULT '',
  `seminargallery` tinytext NOT NULL,
  `seminartpl` varchar(120) NOT NULL DEFAULT '',
  `seminaruserid` int(11) NOT NULL DEFAULT '0',
  `seminarusername` varchar(120) NOT NULL DEFAULT '',
  `seminardescribe` text NOT NULL,
  `seminartime` int(11) NOT NULL DEFAULT '0',
  `seminarstatus` int(1) NOT NULL DEFAULT '0',
  `seminarsequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seminarid`),
  KEY `seminarcatid` (`seminarcatid`),
  KEY `seminarstatus` (`seminarstatus`),
  KEY `seminartime` (`seminartime`),
  KEY `seminarsequence` (`seminarsequence`),
  KEY `seminaruserid` (`seminaruserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_seminar"
#

/*!40000 ALTER TABLE `x2_seminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_seminar` ENABLE KEYS */;

#
# Structure for table "x2_session"
#

DROP TABLE IF EXISTS `x2_session`;
CREATE TABLE `x2_session` (
  `sessionid` varchar(32) NOT NULL,
  `sessionuserid` int(11) NOT NULL DEFAULT '0',
  `sessionusername` varchar(120) NOT NULL DEFAULT '',
  `sessionpassword` varchar(32) NOT NULL DEFAULT '',
  `sessionip` varchar(24) NOT NULL DEFAULT '',
  `sessionmanage` tinyint(1) DEFAULT '0',
  `sessiongroupid` tinyint(4) NOT NULL DEFAULT '0',
  `sessioncurrent` varchar(16) NOT NULL DEFAULT '',
  `sessionrandcode` char(6) NOT NULL DEFAULT '',
  `sessionlogintime` int(11) NOT NULL DEFAULT '0',
  `sessiontimelimit` int(11) NOT NULL DEFAULT '0',
  `sessionlasttime` int(11) NOT NULL DEFAULT '0',
  `sessionmaster` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `sessionlasttime` (`sessionlasttime`),
  KEY `sessioncurrent` (`sessioncurrent`),
  KEY `sessionmaster` (`sessionmaster`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

#
# Data for table "x2_session"
#

INSERT INTO `x2_session` VALUES ('5925f4d49a93a808274d6c0b1a008a0e',15,'han','16a1047def83baaf9aae1705daecce13','127.0.0.1',0,8,'5','',1477274398,1477274398,1477305893,0),('6f0aed7c9111175e15fd82fdf66e70d1',1,'peadmin','244153a2599be7685c32d2281f57ae67','127.0.0.1',0,1,'','',1477274643,1477274643,1477306403,0);

#
# Structure for table "x2_special"
#

DROP TABLE IF EXISTS `x2_special`;
CREATE TABLE `x2_special` (
  `specialid` int(11) NOT NULL AUTO_INCREMENT,
  `contentspecialid` int(11) NOT NULL DEFAULT '0',
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  PRIMARY KEY (`specialid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`),
  KEY `contentspecialid` (`contentspecialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_special"
#

/*!40000 ALTER TABLE `x2_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_special` ENABLE KEYS */;

#
# Structure for table "x2_specialsort"
#

DROP TABLE IF EXISTS `x2_specialsort`;
CREATE TABLE `x2_specialsort` (
  `sortid` int(11) NOT NULL AUTO_INCREMENT,
  `sorttitle` varchar(240) NOT NULL DEFAULT '',
  `sortthumb` varchar(120) NOT NULL DEFAULT '',
  `sorttpl` varchar(24) NOT NULL DEFAULT '',
  `sortseminarid` int(11) NOT NULL DEFAULT '0',
  `sortsequence` int(11) NOT NULL DEFAULT '0',
  `sortdescribe` text NOT NULL,
  PRIMARY KEY (`sortid`),
  KEY `sortseminarid` (`sortseminarid`,`sortsequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "x2_specialsort"
#

/*!40000 ALTER TABLE `x2_specialsort` DISABLE KEYS */;
/*!40000 ALTER TABLE `x2_specialsort` ENABLE KEYS */;

#
# Structure for table "x2_subject"
#

DROP TABLE IF EXISTS `x2_subject`;
CREATE TABLE `x2_subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `subjectsetting` text NOT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "x2_subject"
#

/*!40000 ALTER TABLE `x2_subject` DISABLE KEYS */;
INSERT INTO `x2_subject` VALUES (1,'湖里纪检监察局纪律知识','a:1:{s:9:\"questypes\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}}'),(2,'integrated avionics system','a:1:{s:9:\"questypes\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}}'),(3,'美凯航空8套单元测试+1套综合测试','a:1:{s:9:\"questypes\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}}');
/*!40000 ALTER TABLE `x2_subject` ENABLE KEYS */;

#
# Structure for table "x2_user"
#

DROP TABLE IF EXISTS `x2_user`;
CREATE TABLE `x2_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userlevel` int(11) DEFAULT '1',
  `username` varchar(60) NOT NULL DEFAULT '',
  `useropenid` varchar(60) DEFAULT NULL,
  `useremail` varchar(60) NOT NULL DEFAULT '',
  `userpassword` char(32) NOT NULL DEFAULT '',
  `usercoin` int(11) NOT NULL DEFAULT '0',
  `userregip` varchar(24) NOT NULL DEFAULT '',
  `userregtime` int(11) NOT NULL DEFAULT '0',
  `userlogtime` int(11) NOT NULL DEFAULT '0',
  `usergroupid` tinyint(4) NOT NULL DEFAULT '0',
  `usermoduleid` int(11) NOT NULL DEFAULT '0',
  `manager_apps` varchar(120) NOT NULL DEFAULT '',
  `photo` varchar(120) NOT NULL DEFAULT '',
  `usertruename` varchar(24) NOT NULL DEFAULT '',
  `normal_favor` varchar(250) NOT NULL DEFAULT '',
  `teacher_subjects` text NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`),
  KEY `username` (`username`),
  KEY `module` (`usercoin`),
  KEY `userregtime` (`userregtime`),
  KEY `usermoduleid` (`usermoduleid`),
  KEY `userlogtime` (`userlogtime`),
  KEY `useropenid` (`useropenid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "x2_user"
#

/*!40000 ALTER TABLE `x2_user` DISABLE KEYS */;
INSERT INTO `x2_user` VALUES (1,1,'peadmin',NULL,'pe@163.com','244153a2599be7685c32d2281f57ae67',759,'127.0.0.1',1373793691,0,1,0,'user','files/attach/images/content/20161019/14768613565976.jpg','test','',''),(2,1,'匹诺曹',NULL,'pinuocao@163.com','96e79218965eb72c92a549dd5a330112',0,'127.0.0.1',1431687254,0,1,0,'','','','',''),(3,1,'教师',NULL,'teacher@phpems.net','e10adc3949ba59abbe56e057f20f883e',0,'127.0.0.1',1432398659,0,9,0,'user','files/attach/images/content/20160819/14715878854648.jpg','','','a:1:{i:0;s:1:\"1\";}'),(5,1,'admin',NULL,'admin@admin.com','96e79218965eb72c92a549dd5a330112',0,'127.0.0.1',1435489451,0,1,0,'','','','',''),(6,1,'angelbaby',NULL,'angelbaby@163.com','886e0579be9bb7a57a18a916feb27c8a',0,'127.0.0.1',1435550824,0,1,0,'','','','',''),(7,1,'多多猫',NULL,'duoduomao@163.com','886e0579be9bb7a57a18a916feb27c8a',0,'127.0.0.1',1435732915,0,1,0,'','','','',''),(8,1,'duokan',NULL,'duokan@163.com','96e79218965eb72c92a549dd5a330112',0,'127.0.0.1',1445999151,0,1,0,'','','','',''),(12,1,'guest',NULL,'abc111@163.com','96e79218965eb72c92a549dd5a330112',100,'127.0.0.1',1459089372,0,11,0,'','','','',''),(14,1,'13598710029','','13598710029@139.com','96e79218965eb72c92a549dd5a330112',0,'127.0.0.1',1471766192,0,8,0,'','','','',''),(15,1,'han','','han@qq.com','16a1047def83baaf9aae1705daecce13',0,'58.246.1.234',1475126068,0,8,0,'','','','',''),(16,1,'han2','','han2@qq.com','e10adc3949ba59abbe56e057f20f883e',0,'127.0.0.1',1476953089,0,8,0,'','','','',''),(17,1,'han3','','han3@qq.com','e10adc3949ba59abbe56e057f20f883e',0,'127.0.0.1',1476960582,0,8,0,'','','','',''),(18,1,'han4','','han4@qq.com','e10adc3949ba59abbe56e057f20f883e',0,'127.0.0.1',1476961701,0,8,0,'','','','',''),(19,1,'han5','','han5@qq.com','e10adc3949ba59abbe56e057f20f883e',0,'127.0.0.1',1476962293,0,8,0,'','','','','');
/*!40000 ALTER TABLE `x2_user` ENABLE KEYS */;

#
# Structure for table "x2_user_group"
#

DROP TABLE IF EXISTS `x2_user_group`;
CREATE TABLE `x2_user_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `groupmoduleid` tinyint(4) NOT NULL DEFAULT '0',
  `groupdescribe` tinytext NOT NULL,
  `groupright` text NOT NULL,
  `groupmoduledefault` int(1) NOT NULL DEFAULT '0',
  `groupdefault` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `groupname` (`groupname`,`groupmoduleid`),
  KEY `groupmoduledefault` (`groupmoduledefault`),
  KEY `groupdefault` (`groupdefault`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "x2_user_group"
#

/*!40000 ALTER TABLE `x2_user_group` DISABLE KEYS */;
INSERT INTO `x2_user_group` VALUES (1,'管理员',1,'管理员','',1,0),(8,'附属单位一',9,'附属单位一','',0,1),(9,'教师',12,'教师','',0,0),(11,'附属单位二',9,'附属单位二','',0,0);
/*!40000 ALTER TABLE `x2_user_group` ENABLE KEYS */;
