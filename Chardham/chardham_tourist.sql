-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: chardham
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tourist`
--

DROP TABLE IF EXISTS `tourist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourist` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `mob` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `distid` int DEFAULT NULL,
  `stateid` int DEFAULT NULL,
  `destat` varchar(80) DEFAULT NULL,
  `child` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `ardate` date DEFAULT NULL,
  `redate` date DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `usernam` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `distid` (`distid`),
  KEY `stateid` (`stateid`),
  CONSTRAINT `tourist_ibfk_1` FOREIGN KEY (`distid`) REFERENCES `district` (`distid`),
  CONSTRAINT `tourist_ibfk_2` FOREIGN KEY (`stateid`) REFERENCES `state` (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist`
--

LOCK TABLES `tourist` WRITE;
/*!40000 ALTER TABLE `tourist` DISABLE KEYS */;
INSERT INTO `tourist` VALUES (5,'Deeksha Pandey','99999999999','null',19,4,10,'null',1,7,'2024-06-22','2024-06-26','  fffffff,jjjjjj,ffff,uuuuu  ','Deeksha'),(7,'kanishka','8888888888','Female',14,5,29,'Yamnotri',2,2,'2024-08-14','2024-09-24',' dhabv ghbn jmnbhv','aanchal');
/*!40000 ALTER TABLE `tourist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 11:33:01
