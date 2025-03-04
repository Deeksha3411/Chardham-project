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
-- Table structure for table `re_off`
--

DROP TABLE IF EXISTS `re_off`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_off` (
  `distid` int DEFAULT NULL,
  `ofc_name` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `usernam` varchar(90) NOT NULL,
  `paswd` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`usernam`),
  KEY `distid` (`distid`),
  CONSTRAINT `re_off_ibfk_1` FOREIGN KEY (`distid`) REFERENCES `district` (`distid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_off`
--

LOCK TABLES `re_off` WRITE;
/*!40000 ALTER TABLE `re_off` DISABLE KEYS */;
INSERT INTO `re_off` VALUES (7,'nalanda1','Tribhuvan society nalanada      ','aanchal','343434'),(10,'hfri','panthaghati,Shimla  ','anjaliarya','99999'),(5,'pppppp','  nalanda','deeksha','121212'),(NULL,'Nahan-1','Main Bazaar, Nahan, Sirmour HP','nahan001','12345'),(4,'Nahan',' Lakkad Bazaar, Nahan, Sirmour HP      ','nahan002','12345');
/*!40000 ALTER TABLE `re_off` ENABLE KEYS */;
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
