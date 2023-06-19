-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.60


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema vino
--

CREATE DATABASE IF NOT EXISTS vino;
USE vino;

--
-- Definition of table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block`
--

/*!40000 ALTER TABLE `block` DISABLE KEYS */;
/*!40000 ALTER TABLE `block` ENABLE KEYS */;


--
-- Definition of table `card`
--

DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `ID` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `accno` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` (`ID`,`pass`,`amount`,`accno`) VALUES 
 ('111','111',10000,'111'),
 ('200','200',0,'200'),
 ('222','222',99898,'13'),
 ('333','333',10000,'333'),
 ('400','400',200,'400'),
 ('555','555',72561,'22'),
 ('vino','vino',10000,'4321'),
 ('vvv','555',50000,'123');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;


--
-- Definition of table `cloud1`
--

DROP TABLE IF EXISTS `cloud1`;
CREATE TABLE `cloud1` (
  `keyvalue` varchar(50) NOT NULL,
  PRIMARY KEY (`keyvalue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloud1`
--

/*!40000 ALTER TABLE `cloud1` DISABLE KEYS */;
INSERT INTO `cloud1` (`keyvalue`) VALUES 
 ('16194827'),
 ('93657773');
/*!40000 ALTER TABLE `cloud1` ENABLE KEYS */;


--
-- Definition of table `record`
--

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` varchar(45) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` (`id`,`u_id`,`query`,`ip`,`time`) VALUES 
 (1,'vinoth','show databases','0:0:0:0:0:0:0:1','Sat Jul 20 12:42:39 IST 2013'),
 (2,'vinoth','show tables','0:0:0:0:0:0:0:1','Sat Jul 20 12:43:11 IST 2013'),
 (3,'vinoth','show databases','0:0:0:0:0:0:0:1','Sat Jul 20 12:43:15 IST 2013'),
 (4,'vinoth','show databases','0:0:0:0:0:0:0:1','Sat Jul 20 12:45:02 IST 2013'),
 (5,'123','show tables','0:0:0:0:0:0:0:1','Tue May 27 15:29:59 IST 2014'),
 (6,'123','show databases','0:0:0:0:0:0:0:1','Tue May 27 15:30:05 IST 2014'),
 (7,'123','use quiz','0:0:0:0:0:0:0:1','Tue May 27 15:30:15 IST 2014'),
 (8,'123','show tables','0:0:0:0:0:0:0:1','Tue May 27 15:30:22 IST 2014'),
 (9,'123','select * from answer','0:0:0:0:0:0:0:1','Tue May 27 15:30:32 IST 2014'),
 (10,'123','select * from answers','0:0:0:0:0:0:0:1','Tue May 27 15:30:39 IST 2014'),
 (11,'123','insert into','0:0:0:0:0:0:0:1','Tue May 27 15:30:50 IST 2014'),
 (12,'123','insert into','0:0:0:0:0:0:0:1','Tue May 27 15:31:25 IST 2014'),
 (13,'123','select * from answers','0:0:0:0:0:0:0:1','Tue May 27 15:32:07 IST 2014'),
 (14,'vinoth','insert into','0:0:0:0:0:0:0:1','Tue May 27 18:25:16 IST 2014'),
 (15,'vinoth','insert into','0:0:0:0:0:0:0:1','Tue May 27 18:25:24 IST 2014'),
 (16,'vinoth','insert into','0:0:0:0:0:0:0:1','Tue May 27 18:25:48 IST 2014'),
 (17,'null','show databases','0:0:0:0:0:0:0:1','Tue May 27 18:29:15 IST 2014'),
 (18,'vinoth','show databases','0:0:0:0:0:0:0:1','Tue May 27 18:34:15 IST 2014'),
 (19,'null','select * from answers','0:0:0:0:0:0:0:1','Wed May 28 10:38:49 IST 2014'),
 (20,'null','select * from answers','0:0:0:0:0:0:0:1','Wed May 28 10:39:05 IST 2014'),
 (21,'null','show databases','0:0:0:0:0:0:0:1','Wed May 28 10:39:41 IST 2014'),
 (22,'null','use quiz','0:0:0:0:0:0:0:1','Wed May 28 10:39:48 IST 2014'),
 (23,'null','select * from answers','0:0:0:0:0:0:0:1','Wed May 28 10:39:59 IST 2014'),
 (24,'null','show tables','0:0:0:0:0:0:0:1','Wed May 28 10:40:12 IST 2014'),
 (25,'null','select * from question_bank','0:0:0:0:0:0:0:1','Wed May 28 10:40:34 IST 2014'),
 (26,'null','select * from answers','0:0:0:0:0:0:0:1','Wed May 28 10:41:04 IST 2014'),
 (27,'null','select * from answers','0:0:0:0:0:0:0:1','Wed May 28 10:41:34 IST 2014'),
 (28,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 10:36:02 IST 2014'),
 (29,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 10:36:39 IST 2014'),
 (30,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 10:37:05 IST 2014'),
 (31,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 10:37:34 IST 2014'),
 (32,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:00:29 IST 2014'),
 (33,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:01:41 IST 2014'),
 (34,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:02:32 IST 2014'),
 (35,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:03:24 IST 2014'),
 (36,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:03:34 IST 2014'),
 (37,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:03:53 IST 2014'),
 (38,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:04:19 IST 2014'),
 (39,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:04:32 IST 2014'),
 (40,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 13:14:21 IST 2014'),
 (41,'null','use quiz','0:0:0:0:0:0:0:1','Thu May 29 13:14:27 IST 2014'),
 (42,'null','show tables','0:0:0:0:0:0:0:1','Thu May 29 13:14:31 IST 2014'),
 (43,'null','select * from answers','0:0:0:0:0:0:0:1','Thu May 29 13:14:35 IST 2014'),
 (44,'null','show tables','0:0:0:0:0:0:0:1','Thu May 29 15:07:16 IST 2014'),
 (45,'null','show databases','0:0:0:0:0:0:0:1','Thu May 29 15:07:21 IST 2014'),
 (46,'null','use quiz','0:0:0:0:0:0:0:1','Thu May 29 15:07:25 IST 2014'),
 (47,'null','show tables','0:0:0:0:0:0:0:1','Thu May 29 15:07:28 IST 2014'),
 (48,'null','select * from answers','0:0:0:0:0:0:0:1','Thu May 29 15:07:33 IST 2014'),
 (49,'null','insert into','0:0:0:0:0:0:0:1','Thu May 29 15:07:38 IST 2014'),
 (50,'null','select * from answers','0:0:0:0:0:0:0:1','Thu May 29 15:15:18 IST 2014'),
 (51,'null','insert into','0:0:0:0:0:0:0:1','Thu May 29 15:15:22 IST 2014'),
 (52,'vinoth','ghg','0:0:0:0:0:0:0:1','Fri May 30 14:52:33 IST 2014'),
 (53,'vinoth','select * from answers','0:0:0:0:0:0:0:1','Fri May 30 14:52:38 IST 2014'),
 (54,'vinoth','show databases','0:0:0:0:0:0:0:1','Fri May 30 14:52:42 IST 2014'),
 (55,'vinoth','insert into','0:0:0:0:0:0:0:1','Fri May 30 14:52:47 IST 2014'),
 (56,'vinoth','select * from answers','0:0:0:0:0:0:0:1','Fri May 30 14:54:47 IST 2014'),
 (57,'vinoth','show databases','0:0:0:0:0:0:0:1','Fri May 30 14:54:50 IST 2014'),
 (58,'vinoth','sds','0:0:0:0:0:0:0:1','Fri May 30 18:42:10 IST 2014'),
 (59,'vinoth','show tables','0:0:0:0:0:0:0:1','Fri May 30 18:42:14 IST 2014'),
 (60,'vinoth','show databases','0:0:0:0:0:0:0:1','Fri May 30 18:42:19 IST 2014'),
 (61,'vinoth','use quiz','0:0:0:0:0:0:0:1','Fri May 30 18:42:24 IST 2014'),
 (62,'vinoth','show tables','0:0:0:0:0:0:0:1','Fri May 30 18:42:27 IST 2014'),
 (63,'vinoth','select * from answers','0:0:0:0:0:0:0:1','Fri May 30 18:42:31 IST 2014'),
 (64,'vinoth','insert into','0:0:0:0:0:0:0:1','Fri May 30 18:43:29 IST 2014'),
 (65,'vinoth','insert into','0:0:0:0:0:0:0:1','Fri May 30 18:43:51 IST 2014'),
 (66,'vinoth','','172.17.2.102','Sat May 31 16:58:00 IST 2014'),
 (67,'vinoth','','172.17.2.102','Sat May 31 16:58:02 IST 2014'),
 (68,'vinoth','','172.17.2.102','Sat May 31 16:58:03 IST 2014'),
 (69,'vinoth','','172.17.2.102','Sat May 31 16:58:03 IST 2014'),
 (70,'vinoth','','172.17.2.102','Sat May 31 16:58:04 IST 2014'),
 (71,'vinoth','','172.17.2.102','Sat May 31 17:27:55 IST 2014'),
 (72,'vinoth','','172.17.2.102','Sat May 31 17:28:25 IST 2014'),
 (73,'vinoth','select * from answers','172.17.2.102','Sat May 31 17:28:31 IST 2014'),
 (74,'vinoth','select * from answers','172.17.2.102','Sat May 31 17:31:28 IST 2014'),
 (75,'vinoth','use quiz','172.17.2.102','Sat May 31 17:31:31 IST 2014'),
 (76,'vinoth','select * from answers','172.17.2.102','Sat May 31 17:31:34 IST 2014'),
 (77,'vinoth','insert into','172.17.2.102','Sat May 31 17:31:45 IST 2014'),
 (78,'vinoth','sds','172.17.2.102','Sat May 31 17:32:28 IST 2014'),
 (79,'vinoth','sds','172.17.2.102','Sat May 31 17:32:32 IST 2014'),
 (80,'vinoth','sds','172.17.2.102','Sat May 31 17:32:32 IST 2014'),
 (81,'vinoth','sds','172.17.2.102','Sat May 31 17:32:33 IST 2014'),
 (82,'555','555','0:0:0:0:0:0:0:1','Tue Dec 11 16:15:26 IST 2018'),
 (83,'555','555','0:0:0:0:0:0:0:1','Tue Dec 11 16:15:43 IST 2018'),
 (84,'555','555','0:0:0:0:0:0:0:1','Tue Dec 11 16:15:54 IST 2018'),
 (85,'sangeetha','show table','0:0:0:0:0:0:0:1','Tue Dec 11 18:11:06 IST 2018'),
 (86,'sangeetha','salect *from database','0:0:0:0:0:0:0:1','Tue Dec 11 18:11:41 IST 2018'),
 (87,'sangeetha','insert into','0:0:0:0:0:0:0:1','Tue Dec 11 18:12:35 IST 2018'),
 (88,'sangeetha','select * from answer','0:0:0:0:0:0:0:1','Tue Dec 11 18:18:56 IST 2018');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;


--
-- Definition of table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `tag` varchar(100) NOT NULL,
  `link` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` (`tag`,`link`) VALUES 
 ('java','http://java.sun.com/docs/books/tutorial/index.html'),
 ('java','http://docs.oracle.com/javase/tutorial/'),
 ('java','http://www.java2s.com/Tutorial/Java/CatalogJava.htm'),
 ('java','http://www.roseindia.net/techindex/java-tutorial.html');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;


--
-- Definition of table `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `id` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `intime` varchar(45) DEFAULT NULL,
  `outtime` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` (`id`,`pass`,`intime`,`outtime`,`amount`,`email`,`num`) VALUES 
 ('222','222','04.29','04.30',NULL,NULL,NULL),
 ('555','555','04.25','04.27',NULL,NULL,NULL),
 ('vvv','555','0','0','50000','vinothshr@gmail.com','0');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;


--
-- Definition of table `url`
--

DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `page` varchar(200) NOT NULL,
  `id` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url`
--

/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` (`page`,`id`,`time`) VALUES 
 ('http://java.sun.com/docs/books/tutorial/index.html','555',''),
 ('http://java.sun.com/docs/books/tutorial/index.html','555',''),
 ('http://java.sun.com/docs/books/tutorial/index.html','555',''),
 ('http://java.sun.com/docs/books/tutorial/index.html','555',''),
 ('http://java.sun.com/docs/books/tutorial/index.html','555','03.40'),
 ('How to Run.txt','555','03.40'),
 ('http://docs.oracle.com/javase/tutorial/','555','03.48'),
 ('http://java.sun.com/docs/books/tutorial/index.html','555','03.48'),
 ('http://www.roseindia.net/techindex/java-tutorial.html','555','04.25'),
 ('http://www.java2s.com/Tutorial/Java/CatalogJava.htm','555','04.25'),
 ('http://www.roseindia.net/techindex/java-tutorial.html','222','04.29'),
 ('http://java.sun.com/docs/books/tutorial/index.html','null','14.20'),
 ('http://www.roseindia.net/techindex/java-tutorial.html','vino','14.23'),
 ('http://www.java2s.com/Tutorial/Java/CatalogJava.htm','vino','14.23'),
 ('http://docs.oracle.com/javase/tutorial/','vino','14.23'),
 ('http://www.roseindia.net/techindex/java-tutorial.html','vino','14.26');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `shema` varchar(45) DEFAULT NULL,
  `obj` varchar(45) DEFAULT NULL,
  `cmd` varchar(45) DEFAULT NULL,
  `att` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`pass`,`role`,`app`,`ip`,`time`,`data`,`shema`,`obj`,`cmd`,`att`,`pwd`,`status`) VALUES 
 ('123','1','1','1','172.20.20.1','1','1','1','1','1','1','mUsm1',0),
 ('555','555','developer','renova','172.17.2.24','111','data','user','data','select','work','OnAFz',1),
 ('a','127.0.0.1','dev','ibm','172.17.2.243','44','vino','user','data','select','work','',1),
 ('sangeetha','sangeetha','software','IBM','0:0:0:0:0:0:0:1','days','data','user','obj','select','team1','xzvdd',1),
 ('selva','555','java developer','wipro','172.17.2.243','day','java','resource','application','select','work','oo',1),
 ('steffy1','555','java developer','wipro','172.17.2.243','day','java','resource','application','select','team1','OBswa',0),
 ('vinoth','555','1','1','172.17.2.102','1','1','1','1','1','1','AHN6h',1),
 ('xxx','555','java developer','wipro','172.17.2.243','day','java','resource','application','select','team1','oo',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
