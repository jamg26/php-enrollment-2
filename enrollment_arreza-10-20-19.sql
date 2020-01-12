-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: webdev.crxgtyhmldr1.ap-southeast-1.rds.amazonaws.com    Database: enrollment_arreza
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(50) DEFAULT NULL,
  `Course_Description` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (13,'BSIT','BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY','ITE'),(14,'BSED-MATH','BACHELOR OF SECONDARY EDUCATION-MATH','CELA'),(15,'AT','Accounting Technology','AT');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(50) DEFAULT NULL,
  `Dept_Description` varchar(100) DEFAULT NULL,
  `Dept_Head` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (9,'ITE','INFORMATION TECHNOLOGY EDUCATION','EDEN C. BUTIONG'),(10,'CELA','COLLEGE OF EDUCATION AND LIBERAL ARTS','MYRNA TUBIGAN'),(11,'AT','Accounting Technology Education','Erwin Acedillo');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Room_Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (9,'SA 209','SALUSTIANO BUILDING 1',50),(10,'F102','FLORDELIZ BUILDING1',50);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule`
--

DROP TABLE IF EXISTS `Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schedule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(45) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL,
  `Room` varchar(50) DEFAULT NULL,
  `Instructor` varchar(50) DEFAULT NULL,
  `Semester` varchar(50) DEFAULT NULL,
  `Term` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule`
--

LOCK TABLES `Schedule` WRITE;
/*!40000 ALTER TABLE `Schedule` DISABLE KEYS */;
INSERT INTO `Schedule` VALUES (11,'002','Math101','19:00-21:00','F102','Jamier Llego','2','1','2019-2020');
/*!40000 ALTER TABLE `Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentLoad`
--

DROP TABLE IF EXISTS `StudentLoad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentLoad` (
  `Load_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student` varchar(50) DEFAULT NULL,
  `Schedule_Code` varchar(50) DEFAULT NULL,
  `Subject_Code` varchar(50) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Semester` varchar(50) DEFAULT NULL,
  `Term` varchar(50) DEFAULT NULL,
  `Final_Grade` double DEFAULT NULL,
  `Lecture` int(11) DEFAULT NULL,
  `Laboratory` int(11) DEFAULT NULL,
  `Total_Units` int(11) DEFAULT NULL,
  PRIMARY KEY (`Load_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentLoad`
--

LOCK TABLES `StudentLoad` WRITE;
/*!40000 ALTER TABLE `StudentLoad` DISABLE KEYS */;
INSERT INTO `StudentLoad` VALUES (9,'127','002','Math101','19:00-21:00','2','1',NULL,NULL,NULL,NULL),(10,'127','002','Math101','19:00-21:00','2','1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `StudentLoad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subject`
--

DROP TABLE IF EXISTS `Subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_Code` varchar(50) DEFAULT NULL,
  `Subject_Name` varchar(50) DEFAULT NULL,
  `Subject_Lecture` int(11) DEFAULT NULL,
  `Subject_Lab` int(11) DEFAULT NULL,
  `Subject_Total` int(11) DEFAULT NULL,
  `Subject_Prereq` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subject`
--

LOCK TABLES `Subject` WRITE;
/*!40000 ALTER TABLE `Subject` DISABLE KEYS */;
INSERT INTO `Subject` VALUES (1,'Math101','Algebraic Expressions and Linear Equations ',3,0,3,''),(3,'SAD','System Analysis and Design ',3,3,6,'SAD');
/*!40000 ALTER TABLE `Subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InstructorName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Eden C. Butiong'),(2,'Erwin Acedillo'),(3,'April Fulguerinas'),(4,'Jamier Llego'),(5,'Mark Duria'),(6,'Marjun Ab');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Birthdate` varchar(50) DEFAULT NULL,
  `Birthplace` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Course` varchar(20) DEFAULT NULL,
  `Schedule` int(11) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (127,'MARY','CADUYAG','ARREZA',18,'2019-09-25','BUTUAN CITY','Female','Single','12345','FILIPINO','BSED-MATH',0,'maryterace@gmail.com','maryterace','student'),(128,'Jamuel','','Galicia',0,'1994-12-26','','Male','Single','','','BSIT',0,'','','student'),(129,'Kurt Allen','Sulog','Mendoza',0,'2004-09-21','Butuan City','Male','Single','09304875850','FILIPINO','BSIT',0,'kurt17@gmail.com','kurt','student');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_load`
--

DROP TABLE IF EXISTS `student_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_load` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student` int(11) DEFAULT NULL,
  `Schedule_Code` varchar(50) DEFAULT NULL,
  `Subject_Code` varchar(50) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `Term` int(11) DEFAULT NULL,
  `Final_Grade` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_load`
--

LOCK TABLES `student_load` WRITE;
/*!40000 ALTER TABLE `student_load` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mary Terace','Arreza','maria@gmail.com','maria','admin'),(9,'jammy','arreza','jammy@yahoo.com','jammy',NULL),(10,'diday','arreza','diday@gmail.com','diday',NULL),(11,'kurt','mendoza','kurt@gmail.com','kurt',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-20 11:39:01
