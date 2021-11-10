-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: sc_db
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `c`
--

DROP TABLE IF EXISTS `c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c` (
  `CNO` char(10) NOT NULL,
  `Cname` char(15) DEFAULT NULL,
  `Credit` int DEFAULT NULL,
  `Tno` char(10) DEFAULT NULL,
  `Pre` char(10) DEFAULT NULL,
  PRIMARY KEY (`CNO`),
  UNIQUE KEY `c1` (`Cname`),
  KEY `C_FK1` (`Tno`),
  KEY `C_FK2` (`Pre`),
  CONSTRAINT `C_FK1` FOREIGN KEY (`Tno`) REFERENCES `t` (`Tno`),
  CONSTRAINT `C_FK2` FOREIGN KEY (`Pre`) REFERENCES `c` (`CNO`),
  CONSTRAINT `c2` CHECK ((`Credit` between 1 and 6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c`
--

LOCK TABLES `c` WRITE;
/*!40000 ALTER TABLE `c` DISABLE KEYS */;
INSERT INTO `c` VALUES ('C001','编译原理',3,'T001','c005'),('C002','系统结构',3,'T003','c005'),('C003','数据库',3,'T004','c001'),('C004','C语言',2,'T002','c001'),('C005','操作系统',4,'T001',NULL);
/*!40000 ALTER TABLE `c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s`
--

DROP TABLE IF EXISTS `s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s` (
  `SNO` char(20) NOT NULL,
  `Sname` char(10) NOT NULL,
  `Sex` char(2) DEFAULT NULL,
  `Dept` char(10) DEFAULT '计算机系',
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`SNO`),
  CONSTRAINT `s2` CHECK ((`Sex` in (_utf8mb4'男',_utf8mb4'女'))),
  CONSTRAINT `s4` CHECK ((`Age` between 15 and 25))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s`
--

LOCK TABLES `s` WRITE;
/*!40000 ALTER TABLE `s` DISABLE KEYS */;
INSERT INTO `s` VALUES ('1001','张三','男','计算机系',22),('1002','李四','男','物理系',18),('1003','赵六','女','数学系',19);
/*!40000 ALTER TABLE `s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `s_sc`
--

DROP TABLE IF EXISTS `s_sc`;
/*!50001 DROP VIEW IF EXISTS `s_sc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `s_sc` AS SELECT 
 1 AS `SNO`,
 1 AS `sname`,
 1 AS `dept`,
 1 AS `cno`,
 1 AS `grade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sc`
--

DROP TABLE IF EXISTS `sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc` (
  `Sno` char(20) NOT NULL,
  `Cno` char(10) NOT NULL,
  `grade` int DEFAULT NULL,
  PRIMARY KEY (`Sno`,`Cno`),
  KEY `SC_FK2` (`Cno`),
  CONSTRAINT `SC_FK1` FOREIGN KEY (`Sno`) REFERENCES `s` (`SNO`),
  CONSTRAINT `SC_FK2` FOREIGN KEY (`Cno`) REFERENCES `c` (`CNO`),
  CONSTRAINT `sc2` CHECK ((`grade` <= 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc`
--

LOCK TABLES `sc` WRITE;
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
INSERT INTO `sc` VALUES ('1001','C001',88),('1001','C002',95),('1001','C003',91),('1001','C004',87),('1001','C005',93),('1002','C001',83),('1002','C002',75),('1002','C005',91),('1003','C002',97),('1003','C004',93),('1003','C005',98);
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t`
--

DROP TABLE IF EXISTS `t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t` (
  `Tno` char(10) NOT NULL,
  `Tname` char(20) DEFAULT NULL,
  PRIMARY KEY (`Tno`),
  UNIQUE KEY `t1` (`Tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t`
--

LOCK TABLES `t` WRITE;
/*!40000 ALTER TABLE `t` DISABLE KEYS */;
INSERT INTO `t` VALUES ('t002','李师'),('t004','潘师'),('t001','王师'),('t003','陈师');
/*!40000 ALTER TABLE `t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `sno` char(20) DEFAULT NULL,
  `cno` char(10) DEFAULT NULL,
  `Tno` char(10) DEFAULT NULL,
  `classroom` char(10) NOT NULL DEFAULT '未分配',
  UNIQUE KEY `i_sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `s_sc`
--

/*!50001 DROP VIEW IF EXISTS `s_sc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s_sc` AS select `s`.`SNO` AS `SNO`,`s`.`Sname` AS `sname`,`s`.`Dept` AS `dept`,`sc`.`Cno` AS `cno`,`sc`.`grade` AS `grade` from (`s` join `sc`) where (`s`.`SNO` = `sc`.`Sno`) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-06 15:27:39
