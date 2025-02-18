-- MySQL dump 10.10
--
-- Host: localhost    Database: magazine
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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

create database magazine;
use magazine;

--
-- Table structure for table `appmag`
--

DROP TABLE IF EXISTS `appmag`;
CREATE TABLE `appmag` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `eid` varchar(500) default NULL,
  `adate` varchar(500) default NULL,
  `mid` varchar(500) default NULL,
  `mrank` int(11) NOT NULL default '0',
  `review` varchar(5000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appmag`
--


/*!40000 ALTER TABLE `appmag` DISABLE KEYS */;
LOCK TABLES `appmag` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `appmag` ENABLE KEYS */;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
CREATE TABLE `editorial` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `rollno` varchar(500) default NULL,
  `department` varchar(500) default NULL,
  `contact` varchar(500) default NULL,
  `email` varchar(500) default NULL,
  `password` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `rollno` (`rollno`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editorial`
--


/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
LOCK TABLES `editorial` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) NOT NULL,
  `rollno` varchar(500) NOT NULL,
  `department` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `rollno` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--


/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
LOCK TABLES `faculty` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;

--
-- Table structure for table `magazine`
--

DROP TABLE IF EXISTS `magazine`;
CREATE TABLE `magazine` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `description` longtext,
  `mfile` longtext,
  `fsid` varchar(500) default NULL,
  `status` varchar(500) default 'no',
  `cnt` int(11) default '0',
  `mrank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magazine`
--


/*!40000 ALTER TABLE `magazine` DISABLE KEYS */;
LOCK TABLES `magazine` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `magazine` ENABLE KEYS */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) NOT NULL,
  `branch` varchar(500) NOT NULL,
  `section` varchar(500) NOT NULL,
  `year` varchar(500) NOT NULL,
  `rollno` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `rollno` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--


/*!40000 ALTER TABLE `student` DISABLE KEYS */;
LOCK TABLES `student` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

