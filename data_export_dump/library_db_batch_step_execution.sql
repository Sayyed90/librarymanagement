-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint DEFAULT NULL,
  `READ_COUNT` bigint DEFAULT NULL,
  `FILTER_COUNT` bigint DEFAULT NULL,
  `WRITE_COUNT` bigint DEFAULT NULL,
  `READ_SKIP_COUNT` bigint DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint DEFAULT NULL,
  `ROLLBACK_COUNT` bigint DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,1,'step1',1,'2024-09-15 02:49:34.711837','2024-09-15 02:49:34.727463',NULL,'STARTED',0,0,0,0,0,0,0,0,'EXECUTING','','2024-09-15 02:49:34.743090'),(2,1,'step1',2,'2024-09-15 02:50:44.590150','2024-09-15 02:50:44.621398',NULL,'STARTED',0,0,0,0,0,0,0,0,'EXECUTING','','2024-09-15 02:50:44.621398'),(3,4043,'step1',3,'2024-09-15 02:51:55.405618','2024-09-15 02:51:55.436863',NULL,'STARTED',4042,404200,0,404200,0,0,0,0,'EXECUTING','','2024-09-15 02:53:23.051721'),(4,31266,'step1',4,'2024-09-15 02:53:47.226242','2024-09-15 02:53:47.241863',NULL,'STARTED',31265,3126500,0,3126500,0,0,0,0,'EXECUTING','','2024-09-15 02:57:52.764106'),(5,763,'step1',5,'2024-09-15 02:58:21.904431','2024-09-15 02:58:21.920049','2024-09-15 02:58:35.865367','STOPPED',761,76100,0,76100,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 02:58:35.865367'),(6,1019,'step1',6,'2024-09-15 02:58:45.922685','2024-09-15 02:58:45.938307','2024-09-15 02:58:59.715548','STOPPED',1017,101700,0,101700,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 02:58:59.715548'),(7,1299,'step1',7,'2024-09-15 02:59:09.760795','2024-09-15 02:59:09.776431','2024-09-15 02:59:22.761821','STOPPED',1297,129700,0,129700,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 02:59:22.761821'),(8,1368,'step1',8,'2024-09-15 02:59:32.794252','2024-09-15 02:59:32.794252','2024-09-15 02:59:45.508693','STOPPED',1366,136600,0,136600,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 02:59:45.508693'),(9,1,'step1',9,'2024-09-15 03:05:00.207867','2024-09-15 03:05:00.223487',NULL,'STARTED',0,0,0,0,0,0,0,0,'EXECUTING','','2024-09-15 03:05:00.239114'),(10,819,'step1',10,'2024-09-15 03:10:00.208726','2024-09-15 03:10:00.224346','2024-09-15 03:10:15.968031','STOPPED',817,81700,0,81700,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 03:10:15.968031'),(11,770,'step1',11,'2024-09-15 03:15:00.187534','2024-09-15 03:15:00.203159','2024-09-15 03:15:17.506513','STOPPED',768,76800,0,76800,0,0,0,0,'STOPPED','org.springframework.batch.core.JobInterruptedException','2024-09-15 03:15:17.506513');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-15  4:40:04
