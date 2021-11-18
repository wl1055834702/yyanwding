-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pctry1
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` char(20) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `password` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('李小涵',1902897,'lh1234'),('叶小文',1345908,'yxw1234'),('郭小龙',9087341,'gxl1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpre`
--

DROP TABLE IF EXISTS `userpre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpre` (
  `username` char(20) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `Schoolname` char(40) DEFAULT NULL,
  `Type` char(8) DEFAULT NULL,
  `Notice` char(120) DEFAULT NULL,
  `Website` char(120) DEFAULT NULL,
  `Time` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpre`
--

LOCK TABLES `userpre` WRITE;
/*!40000 ALTER TABLE `userpre` DISABLE KEYS */;
INSERT INTO `userpre` VALUES ('李小涵',1902897,'北京邮电大学','夏令营','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','2021年7月1日','2021年6月25日'),('李小涵',1902897,'浙江大学','夏令营','浙江大学计算机学院招收2021年暑期实习生计划','https://mp.weixin.qq.com/s/UJe_Qv5y8gAucV37aW0Niw','2021年7月1日'),('叶小文',1345908,'北京邮电大学','夏令营','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','2021年6月25日'),('叶小文',1345908,'北京邮电大学','夏令营','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','2021年6月25日');
/*!40000 ALTER TABLE `userpre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yywd`
--

DROP TABLE IF EXISTS `yywd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yywd` (
  `Schoolname` char(40) DEFAULT NULL,
  `Type` char(8) DEFAULT NULL,
  `Notice` char(120) DEFAULT NULL,
  `Website` char(120) DEFAULT NULL,
  `Time` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yywd`
--

LOCK TABLES `yywd` WRITE;
/*!40000 ALTER TABLE `yywd` DISABLE KEYS */;
INSERT INTO `yywd` VALUES ('中国科学技术大学','夏令营','关于举行2021年中国科学技术大学“优秀大学生夏令营” 活动的通知','https://www.ustc.edu.cn/info/1057/15217.htm','2021年6月30日'),('清华大学','夏令营','计算机系2021大学生夏令营报名通知','https://www.cs.tsinghua.edu.cn/__local/A/F9/C5/A465F878FDF4F453B8C0D39F1FC_1A7CB14A_4DC46.pdf\r\n','2021年6月15日'),('浙江大学','夏令营','浙江大学计算机学院招收2021年暑期实习生计划','https://mp.weixin.qq.com/s/UJe_Qv5y8gAucV37aW0Niw','2021年7月1日'),('浙江大学','夏令营','软件学院2021年优秀大学生夏令营活动的通知','http://www.cst.zju.edu.cn/2021/0616/c32178a2395253/page.htm','2021年6月27日'),('中山大学','夏令营','中山大学计算机学院 2021年优秀大学生夏令营活动报名通知','https://cse.sysu.edu.cn/content/5877','2021年6月20日'),('北京邮电大学','夏令营','北京邮电大学计算机学院（国家示范性软件学院）2021年优秀大学生夏令营活动通知','https://scs.bupt.edu.cn/info/1020/2487.htm','2021年6月25日');
/*!40000 ALTER TABLE `yywd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 20:07:51
