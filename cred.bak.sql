-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: cred
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `Question`
--

DROP TABLE IF EXISTS `Question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Question` (
  `QuestionPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `ArtPK` bigint(20) DEFAULT NULL,
  `askeruserPK` bigint(20) DEFAULT NULL,
  `askeduserPK` bigint(20) DEFAULT NULL,
  `Question` mediumtext COLLATE utf8_unicode_ci,
  `uploaddate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `Replied` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`QuestionPK`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Question`
--

LOCK TABLES `Question` WRITE;
/*!40000 ALTER TABLE `Question` DISABLE KEYS */;
/*!40000 ALTER TABLE `Question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QuestionReply`
--

DROP TABLE IF EXISTS `QuestionReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QuestionReply` (
  `QuestionReplyPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `QuestionPK` bigint(20) DEFAULT NULL,
  `ReplyuserPK` bigint(20) DEFAULT NULL,
  `Reply` mediumtext COLLATE utf8_unicode_ci,
  `uploaddate` datetime DEFAULT NULL,
  PRIMARY KEY (`QuestionReplyPK`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QuestionReply`
--

LOCK TABLES `QuestionReply` WRITE;
/*!40000 ALTER TABLE `QuestionReply` DISABLE KEYS */;
/*!40000 ALTER TABLE `QuestionReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recent`
--

DROP TABLE IF EXISTS `Recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recent` (
  `recentPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `artPK1` bigint(20) DEFAULT NULL,
  `artPK2` bigint(20) DEFAULT NULL,
  `artPK3` bigint(20) DEFAULT NULL,
  `artPK4` bigint(20) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`recentPK`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recent`
--

LOCK TABLES `Recent` WRITE;
/*!40000 ALTER TABLE `Recent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spotlight`
--

DROP TABLE IF EXISTS `Spotlight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spotlight` (
  `spotPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `artPK1` bigint(20) DEFAULT NULL,
  `artPK2` bigint(20) DEFAULT NULL,
  `artPK3` bigint(20) DEFAULT NULL,
  `artPK4` bigint(20) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`spotPK`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spotlight`
--

LOCK TABLES `Spotlight` WRITE;
/*!40000 ALTER TABLE `Spotlight` DISABLE KEYS */;
/*!40000 ALTER TABLE `Spotlight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagNotUser`
--

DROP TABLE IF EXISTS `TagNotUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagNotUser` (
  `tagPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tagUser` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ArtPK` bigint(20) unsigned NOT NULL,
  `position` tinytext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tagPK`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagNotUser`
--

LOCK TABLES `TagNotUser` WRITE;
/*!40000 ALTER TABLE `TagNotUser` DISABLE KEYS */;
INSERT INTO `TagNotUser` VALUES (225,'양명철',179,'연출'),(226,'김태희',179,'주연'),(227,'홍성규',179,'주연'),(228,'유기성',179,'주연'),(230,'김준수',178,'출연 '),(233,'송수원',177,'출연');
/*!40000 ALTER TABLE `TagNotUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artDB`
--

DROP TABLE IF EXISTS `artDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artDB` (
  `artnum` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userPK` bigint(20) unsigned NOT NULL,
  `artPK` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`artnum`)
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artDB`
--

LOCK TABLES `artDB` WRITE;
/*!40000 ALTER TABLE `artDB` DISABLE KEYS */;
INSERT INTO `artDB` VALUES (628,101,179),(629,101,180),(631,97,178),(634,97,177);
/*!40000 ALTER TABLE `artDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awardDB`
--

DROP TABLE IF EXISTS `awardDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awardDB` (
  `awardPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `award` tinytext COLLATE utf8_unicode_ci,
  `userPK` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`awardPK`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awardDB`
--

LOCK TABLES `awardDB` WRITE;
/*!40000 ALTER TABLE `awardDB` DISABLE KEYS */;
/*!40000 ALTER TABLE `awardDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careerDB`
--

DROP TABLE IF EXISTS `careerDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careerDB` (
  `careerPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userPK` bigint(20) unsigned NOT NULL,
  `position` tinytext COLLATE utf8_unicode_ci,
  `homepageURL` mediumtext COLLATE utf8_unicode_ci,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `location` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`careerPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careerDB`
--

LOCK TABLES `careerDB` WRITE;
/*!40000 ALTER TABLE `careerDB` DISABLE KEYS */;
/*!40000 ALTER TABLE `careerDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupMemberDB`
--

DROP TABLE IF EXISTS `groupMemberDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupMemberDB` (
  `orderPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `groupPK` bigint(20) unsigned NOT NULL,
  `userPK` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`orderPK`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupMemberDB`
--

LOCK TABLES `groupMemberDB` WRITE;
/*!40000 ALTER TABLE `groupMemberDB` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupMemberDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupkeywordDB`
--

DROP TABLE IF EXISTS `groupkeywordDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupkeywordDB` (
  `keywordPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` tinytext COLLATE utf8_unicode_ci,
  `userPK` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`keywordPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupkeywordDB`
--

LOCK TABLES `groupkeywordDB` WRITE;
/*!40000 ALTER TABLE `groupkeywordDB` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupkeywordDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indexMain`
--

DROP TABLE IF EXISTS `indexMain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indexMain` (
  `url` mediumtext COLLATE utf8_unicode_ci,
  `artText` mediumtext COLLATE utf8_unicode_ci,
  `indexPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`indexPK`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indexMain`
--

LOCK TABLES `indexMain` WRITE;
/*!40000 ALTER TABLE `indexMain` DISABLE KEYS */;
/*!40000 ALTER TABLE `indexMain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywordDB`
--

DROP TABLE IF EXISTS `keywordDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywordDB` (
  `keywordPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` tinytext COLLATE utf8_unicode_ci,
  `userPK` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`keywordPK`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywordDB`
--

LOCK TABLES `keywordDB` WRITE;
/*!40000 ALTER TABLE `keywordDB` DISABLE KEYS */;
INSERT INTO `keywordDB` VALUES (490,'JAVA',96),(491,' Javascript',96),(492,' CSS',96),(493,' PHP',96),(495,'graphic design',100),(498,'UX strategy',97),(499,' Marketing',97),(500,' Excel',97),(501,' Ai',97),(502,' Ps',97),(503,' Pr',97),(550,'촬영',101),(551,' 편집',101),(552,' 연출',101),(553,' 조명',101),(554,' 녹음',101),(555,' 다큐멘터리',101),(556,' 실험영화',101),(557,' 연극',101),(558,' 뮤지컬',101),(559,'Consulting',103),(560,' Marketing',103),(561,'',104);
/*!40000 ALTER TABLE `keywordDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgDeliverInfo`
--

DROP TABLE IF EXISTS `msgDeliverInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgDeliverInfo` (
  `deliveryPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msgPK` bigint(20) NOT NULL,
  `PasserPK` bigint(20) NOT NULL,
  `ReceiverPK` bigint(20) NOT NULL,
  PRIMARY KEY (`deliveryPK`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgDeliverInfo`
--

LOCK TABLES `msgDeliverInfo` WRITE;
/*!40000 ALTER TABLE `msgDeliverInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgDeliverInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgInfo`
--

DROP TABLE IF EXISTS `msgInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgInfo` (
  `msgPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `creatorPK` bigint(20) NOT NULL,
  `Title` tinytext COLLATE utf8_unicode_ci,
  `Detail` mediumtext COLLATE utf8_unicode_ci,
  `expiry_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msgPK`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgInfo`
--

LOCK TABLES `msgInfo` WRITE;
/*!40000 ALTER TABLE `msgInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replyDB`
--

DROP TABLE IF EXISTS `replyDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replyDB` (
  `replyPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artPK` bigint(20) unsigned NOT NULL,
  `writedate` datetime DEFAULT NULL,
  `reply` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`replyPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replyDB`
--

LOCK TABLES `replyDB` WRITE;
/*!40000 ALTER TABLE `replyDB` DISABLE KEYS */;
/*!40000 ALTER TABLE `replyDB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalart`
--

DROP TABLE IF EXISTS `totalart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totalart` (
  `artPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `uploaddate` datetime NOT NULL,
  `lastloaddate` datetime NOT NULL,
  `ArtURL` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `uploader` bigint(20) DEFAULT NULL,
  `uploaderName` tinytext COLLATE utf8_unicode_ci,
  `views` bigint(20) DEFAULT '0',
  `wiki` mediumtext COLLATE utf8_unicode_ci,
  `wikiuploaddate` datetime DEFAULT NULL,
  PRIMARY KEY (`artPK`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalart`
--

LOCK TABLES `totalart` WRITE;
/*!40000 ALTER TABLE `totalart` DISABLE KEYS */;
INSERT INTO `totalart` VALUES (177,'오늘의 POTG','2017-04-14 17:29:57','2017-04-14 17:29:57','https://www.youtube.com/watch?v=m_vLU0EPlRA','Location : CredBerry HQ<br><br>Filming tool : iPhone 7+<br>Editing tool : iMovie<br><br>Sound Source :<br>Overwatch Sountrack Music Victory Theme <br>(https://www.youtube.com/watch?v=ghk8O1yiY0I)<br>영웅별 궁극기 사운드 <br>(http://www.inven.co.kr/board/powerbbs.php?come_idx=4680&l=333)',97,'Ive Lee (이승혁)',32,NULL,NULL),(178,'apple in pheonix','2017-04-14 18:07:42','2017-04-14 18:07:42','https://www.youtube.com/watch?v=ZAVybixVuHY&feature=youtu.be','Location : pheonix park<br><br>Filming tool : iPhone 7+<br>Editing tool : iMovie <br><br>BGM : Marian Hill - \"Down\" (https://www.youtube.com/watch?v=DpMfP6qUSBo)<br>',97,'Ive Lee (이승혁)',9,NULL,NULL),(179,'일말상초','2017-04-14 20:28:07','2017-04-14 20:28:07','https://www.youtube.com/watch?v=x6Y5cZd9qFo','굿',101,'이재승',14,NULL,NULL),(180,'Holiday Nights','2017-04-14 22:11:26','2017-04-14 22:11:26','https://www.youtube.com/watch?v=Oqai63YKOfc','',101,'이재승',11,NULL,NULL);
/*!40000 ALTER TABLE `totalart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userExperience`
--

DROP TABLE IF EXISTS `userExperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userExperience` (
  `ExPK` bigint(20) NOT NULL AUTO_INCREMENT,
  `userPK` bigint(20) NOT NULL,
  `Organization` mediumtext COLLATE utf8_unicode_ci,
  `Position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `WorkLocation` mediumtext COLLATE utf8_unicode_ci,
  `Explainn` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ExPK`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userExperience`
--

LOCK TABLES `userExperience` WRITE;
/*!40000 ALTER TABLE `userExperience` DISABLE KEYS */;
INSERT INTO `userExperience` VALUES (152,95,NULL,NULL,NULL,NULL,NULL,NULL),(153,96,NULL,NULL,NULL,NULL,NULL,NULL),(154,97,NULL,NULL,NULL,NULL,NULL,NULL),(155,98,NULL,NULL,NULL,NULL,NULL,NULL),(156,99,NULL,NULL,NULL,NULL,NULL,NULL),(157,100,NULL,NULL,NULL,NULL,NULL,NULL),(158,101,NULL,NULL,NULL,NULL,NULL,NULL),(159,102,NULL,NULL,NULL,NULL,NULL,NULL),(160,103,NULL,NULL,NULL,NULL,NULL,NULL),(161,104,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `userExperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `Email` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Password` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ProfilePhotoURL` mediumtext COLLATE utf8_unicode_ci,
  `userPK` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Certification` int(1) NOT NULL,
  `Career` tinytext COLLATE utf8_unicode_ci,
  `education` tinytext COLLATE utf8_unicode_ci,
  `graduateDate` year(4) DEFAULT NULL,
  `belong` tinytext COLLATE utf8_unicode_ci,
  `location` tinytext COLLATE utf8_unicode_ci,
  `isgroup` tinyint(1) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`userPK`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('checheche12@naver.com','*22A7AD9D2E944A907A5430641DC61F734DFE73C5','김화랑','mainImage/default_profile_pic.png',95,1,NULL,NULL,NULL,NULL,NULL,0,NULL),('swsgo127@gmail.com','*26ADC1033933A6C19E647FF13EE0807F0C547B24','송수원','./uploads/1492157859.4437ab96',96,1,'Engineer','The University of Texas at Austin',NULL,'Credberry','강남, 서울',0,NULL),('universe3306@gmail.com','*A4B6157319038724E3560894F7F932C8886EBFCF','Ive Lee (이승혁)','./uploads/1492158389.3198ab97',97,1,'Marketing & Sales Dept.','서강대학교 수학 / 아트앤테크놀로지',NULL,'CredBerry, co.','Seoul, Gangnam',0,NULL),('imputer2@naver.com','facebooklogin','임환',NULL,98,1,NULL,NULL,NULL,NULL,NULL,0,NULL),('kjslee2man@gmail.com','*1B12861712E16A0497F60B0060F2CD5CC31C0C7D','이종휘','mainImage/default_profile_pic.png',99,1,NULL,NULL,NULL,NULL,NULL,0,NULL),('davidchoi93@gmail.com','*F6B33C23180866B2D2CF3D35E10AEEE1348165C0','최장호','./uploads/1492161049.4206ab100',100,1,'creative designer','School of Visual Arts',NULL,'CRED','Seoul, Korea',0,NULL),('fg999@hanmail.net','*AA5152E2C013200937D2927FDF89DA633EA642C8','이재승','./uploads/1492175797.6785ab101',101,1,'대학원생','서강대학교',NULL,'영상대학원','서울',0,NULL),('imputer2@gmail.com','*36BA092BB2C13A7B9976FFF5054B201F2C72F263','임환','mainImage/default_profile_pic.png',102,0,NULL,NULL,NULL,NULL,NULL,0,NULL),('4567pc@gmail.com','*AFCB0822542338868A1EA83099EBB6A815ABF06A','최시원','mainImage/default_profile_pic.png',103,1,'Planner','New York University',NULL,'Credberry','Gangnam',0,NULL),('credwoo@gmail.com','*E56A114692FE0DE073F9A1DD68A00EEB9703F3F1','우경민','mainImage/default_profile_pic.png',104,1,'Analyst','Korea Univ. Public Admin',NULL,'Credberry','Gangnam, Seoul',0,NULL);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workDB`
--

DROP TABLE IF EXISTS `workDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workDB` (
  `worknum` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `position` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `userPK` bigint(20) unsigned NOT NULL,
  `artPK` bigint(20) NOT NULL,
  PRIMARY KEY (`worknum`)
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workDB`
--

LOCK TABLES `workDB` WRITE;
/*!40000 ALTER TABLE `workDB` DISABLE KEYS */;
INSERT INTO `workDB` VALUES (647,'촬영',101,179),(648,'촬영',101,180),(650,'촬영 / 편집',97,178),(653,'촬영 / 편집',97,177);
/*!40000 ALTER TABLE `workDB` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-15 12:09:15
