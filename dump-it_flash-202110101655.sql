-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for osx10.10 (x86_64)
--
-- Host: 151.106.112.32    Database: it_flash
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `user_agent` varchar(255) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_environment`
--

DROP TABLE IF EXISTS `cat_environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment_name` varchar(100) DEFAULT NULL,
  `environment_code` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_environment`
--

LOCK TABLES `cat_environment` WRITE;
/*!40000 ALTER TABLE `cat_environment` DISABLE KEYS */;
INSERT INTO `cat_environment` VALUES (1,'Water Leak','water_leak','2021-08-02 11:43:49'),(2,'ITOC','itoc','2021-08-02 11:43:52'),(3,'FOC Monitoring','foc_monitoring','2021-08-02 11:43:55');
/*!40000 ALTER TABLE `cat_environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_graha`
--

DROP TABLE IF EXISTS `cat_graha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_graha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graha_name` varchar(50) NOT NULL,
  `graha_code` varchar(60) DEFAULT NULL,
  `crated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_graha`
--

LOCK TABLES `cat_graha` WRITE;
/*!40000 ALTER TABLE `cat_graha` DISABLE KEYS */;
INSERT INTO `cat_graha` VALUES (1,'Datacomm','datacomm','2021-08-02 11:44:41'),(2,'Grapari ON','grapari_on','2021-08-02 11:44:44'),(3,'GraPARI Mitra','grapari_mitra','2021-08-02 11:44:47');
/*!40000 ALTER TABLE `cat_graha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_health`
--

DROP TABLE IF EXISTS `cat_health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_kesehatan` varchar(50) DEFAULT NULL,
  `status_kesehatan_code` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_health`
--

LOCK TABLES `cat_health` WRITE;
/*!40000 ALTER TABLE `cat_health` DISABLE KEYS */;
INSERT INTO `cat_health` VALUES (1,'Sehat','sehat','2021-08-02 11:45:56'),(2,'Kurang Fit','kurang_fit','2021-08-02 11:45:59'),(3,'Sakit','sakit','2021-08-02 11:46:02');
/*!40000 ALTER TABLE `cat_health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_power`
--

DROP TABLE IF EXISTS `cat_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power` varchar(50) DEFAULT NULL,
  `power_code` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_power`
--

LOCK TABLES `cat_power` WRITE;
/*!40000 ALTER TABLE `cat_power` DISABLE KEYS */;
INSERT INTO `cat_power` VALUES (1,'PLN','pln','2021-03-23 23:51:02'),(2,'Generator','generator','2021-03-23 23:51:11');
/*!40000 ALTER TABLE `cat_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_room`
--

DROP TABLE IF EXISTS `cat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) DEFAULT NULL,
  `room_code` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_room`
--

LOCK TABLES `cat_room` WRITE;
/*!40000 ALTER TABLE `cat_room` DISABLE KEYS */;
INSERT INTO `cat_room` VALUES (1,'TC','tc','2021-08-02 11:46:51'),(2,'SCP','scp','2021-08-02 11:46:53'),(3,'OSDSS','osdss','2021-08-02 11:46:56'),(4,'MKios','mkios','2021-08-02 11:46:58'),(5,'Power UPS','power_ups','2021-08-02 11:47:01'),(6,'CCTV','cctv','2021-08-02 11:47:03'),(7,'Utility A','utility_a','2021-08-02 11:47:05'),(8,'Utility B	','utility_b','2021-08-02 11:47:07');
/*!40000 ALTER TABLE `cat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tank_bbm`
--

DROP TABLE IF EXISTS `cat_tank_bbm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_tank_bbm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tank_name` varchar(50) DEFAULT NULL,
  `tank_code` varchar(50) DEFAULT NULL,
  `craeted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tank_bbm`
--

LOCK TABLES `cat_tank_bbm` WRITE;
/*!40000 ALTER TABLE `cat_tank_bbm` DISABLE KEYS */;
INSERT INTO `cat_tank_bbm` VALUES (1,'Tank 1(D)','tank_1_d','2021-03-24 00:03:32'),(2,'Tank 2(D)','tank_2_d','2021-03-24 00:03:42'),(3,'Tank 1(M)','tank_1_m','2021-03-24 15:09:27'),(4,'Tank 2(M)','tank_2_m','2021-03-24 15:09:35');
/*!40000 ALTER TABLE `cat_tank_bbm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office` (
  `office_code` int(11) NOT NULL AUTO_INCREMENT,
  `office_name` varchar(60) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` char(30) DEFAULT NULL,
  `regional` char(10) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `postal_code` char(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`office_code`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'Grapari Batam Baloi','Komplek Baloi Office Park 9\nJalan Bunga Raya','Batam','Sumbagteng','62811300081','29464','active'),(2,'Grapari Batam Centre','Jl.Engku Putri Batam Centre','Batam','Sumbagteng','62811300081','29432','active'),(3,'Grapari Dumai','Jalan.Jend Sudirman no 153','Dumai','Sumbagteng','62811300081','28812','active'),(4,'Grapari Padang','Gedung Telkomsel Jl.Khatib Sulaiman no.51','Padang','Sumbagteng','62811300081','64534','active'),(5,'Grapari Pekanbaru','Gedung Surya DUmai Lt.1-2\nJln.Jend Sudirman no.395\nPekanbaru','Pekanbaru','Sumbagteng','62811300081','28116','active'),(6,'Grapari Tanjung Balai Karimun','Komplek Karimun Centre Jl.A.Yani No.9-10\nKolong','Tanjung Balai Karimun','Sumbagteng','62811300081','29661','active'),(7,'Grapari Tanjung Pinang','Jl.Basuki Rachmat no 9','Tanjung Pinang','Sumbagteng','62811300081','29124','active'),(8,'Grapari Tembilahan','Jln.Telaga Biru Parit no.12','Tembilahan','Sumbagteng','62811300081','29212','active'),(13,'Grapari Mall SKA','Mall SKA Pekanbaru','Pekanbaru','Sumbagteng','62811300081','28116','active'),(14,'TTC Arifin Ahmad','Jl. Arifin Ahmad No. 107 ','Pekanbaru','Sumbagteng','62811300081','28294','active'),(15,'Grapari Grand Batam','Gedung Telkomsel Batam Centre\njalan engku putri lantai dasar\nkota batam','Batam','Sumbagteng','62811300081',NULL,'active'),(16,'Kantor Regional Sumbagteng','Jl. Sudirman - Pekanbaru','Pekanbaru','Sumbagteng','62811300081','28116','active');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_lokasi`
--

DROP TABLE IF EXISTS `office_lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office_lokasi` (
  `office_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `office_code` int(11) DEFAULT NULL,
  `ruangan` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`office_lokasi`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_lokasi`
--

LOCK TABLES `office_lokasi` WRITE;
/*!40000 ALTER TABLE `office_lokasi` DISABLE KEYS */;
INSERT INTO `office_lokasi` VALUES (10,5,'Ruang Server Lantai 7','non_active'),(9,5,'Ruang Server Lantai 2','active'),(11,1,'Ruang Server Lantai 2','active'),(12,2,'Ruang Server Lantai 2','active'),(13,3,'Ruang Server Lantai 2','active'),(14,4,'Ruang Server Lantai 3','active'),(15,6,'Ruang Server Lantai 2','active'),(16,7,'Ruang Server Lantai 2','active'),(17,8,'Ruang Server Lantai 2','active'),(19,13,'Ruang Server Mall SKA','active'),(20,15,'Ruang Server Lantai 2','active');
/*!40000 ALTER TABLE `office_lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_absensi`
--

DROP TABLE IF EXISTS `report_absensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_absensi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_absensi`
--

LOCK TABLES `report_absensi` WRITE;
/*!40000 ALTER TABLE `report_absensi` DISABLE KEYS */;
INSERT INTO `report_absensi` VALUES (2,'robbyardan','2021-09-06 09:18:47',NULL,'2021-09-06 09:18:47','robbyardan','Telegram BOT'),(3,'dwidj','2021-09-06 16:51:16',NULL,'2021-09-06 16:51:16','dwidj','Telegram BOT'),(4,'robbyardan','2021-09-21 11:33:53',NULL,'2021-09-21 11:33:53','robbyardan','Telegram BOT'),(5,'dwidj','2021-09-21 17:13:56',NULL,'2021-09-21 17:13:56','dwidj','Telegram BOT');
/*!40000 ALTER TABLE `report_absensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_activities`
--

DROP TABLE IF EXISTS `report_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` varchar(50) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_form` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_activities`
--

LOCK TABLES `report_activities` WRITE;
/*!40000 ALTER TABLE `report_activities` DISABLE KEYS */;
INSERT INTO `report_activities` VALUES (1,'PT.KAM','2021-03-24 10:00:00','2021-03-24 14:00:00','done','Instalasi Sensor','2021-07-26 13:54:52',NULL,NULL),(2,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_python',NULL,NULL,NULL),(3,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','\"bot',NULL,NULL,NULL),(4,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_cek_data',NULL,NULL,NULL),(5,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_cek_data','2021-07-27 11:05:18','Ahmadgoodwood','Telegram BOT'),(6,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_python','2021-07-27 12:27:30','Ahmadgoodwood','Telegram BOT'),(7,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_python','2021-08-03 18:18:52','Ahmadgoodwood','Telegram BOT'),(8,'PT.KAM','2021-07-27 08:00:00','2021-07-27 17:00:00','done','bot_python','2021-09-17 16:37:11','robbyardhan','Telegram BOT');
/*!40000 ALTER TABLE `report_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_alarm`
--

DROP TABLE IF EXISTS `report_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_alarm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graha_code` varchar(50) DEFAULT NULL,
  `critical` varchar(10) DEFAULT NULL,
  `major` varchar(10) DEFAULT NULL,
  `minor` varchar(10) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_alarm`
--

LOCK TABLES `report_alarm` WRITE;
/*!40000 ALTER TABLE `report_alarm` DISABLE KEYS */;
INSERT INTO `report_alarm` VALUES (1,'datacomm','3','5','8','2021-03-19 11:50:28',NULL,NULL),(2,'datacomm','1','4','6','2021-03-19 11:52:33',NULL,NULL),(3,'datacomm','2','3','4','2021-03-29 12:26:14',NULL,NULL);
/*!40000 ALTER TABLE `report_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_backup_time`
--

DROP TABLE IF EXISTS `report_backup_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_backup_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_time` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_backup_time`
--

LOCK TABLES `report_backup_time` WRITE;
/*!40000 ALTER TABLE `report_backup_time` DISABLE KEYS */;
INSERT INTO `report_backup_time` VALUES (1,'53.08','2021-03-24 23:38:04',NULL,NULL);
/*!40000 ALTER TABLE `report_backup_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_bbm`
--

DROP TABLE IF EXISTS `report_bbm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_bbm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tank_code` varchar(20) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `available` varchar(50) DEFAULT NULL,
  `used` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_bbm`
--

LOCK TABLES `report_bbm` WRITE;
/*!40000 ALTER TABLE `report_bbm` DISABLE KEYS */;
INSERT INTO `report_bbm` VALUES (1,'tank_1_d','3000','2000','1000','2021-03-24 00:03:55',NULL,NULL,NULL),(2,'tank_1_d','1500','1000','500','2021-03-24 00:04:00',NULL,NULL,NULL),(3,'tank_1_d','8000','5000','3000','2021-03-24 15:10:08',NULL,NULL,NULL),(4,'tank_1_d','550','300','150','2021-03-24 15:10:28',NULL,NULL,NULL),(5,'tank_1_d','3000','2000','1000','2021-07-23 11:25:43','Ahmadgoodwood','Telegram BOT',NULL),(6,'tank_1_d','3000','2000','1000','2021-07-23 11:26:44','Ahmadgoodwood','Telegram BOT',NULL),(7,'tank_1_d','3000','2000','1000','2021-07-23 11:27:00','Ahmadgoodwood','Telegram BOT',NULL),(9,'tank_1_d','3000','2000','1000','2021-07-23 11:44:51','Ahmadgoodwood','Telegram BOT',NULL),(10,'tank_1_d','3000','2000','1000','2021-07-23 14:54:48','Ahmadgoodwood','Telegram BOT',NULL),(11,'tank_1_d','3000','2000','1000','2021-07-23 14:55:34','Ahmadgoodwood','Telegram BOT',NULL),(12,'tank_1_d','3000','2000','1000','2021-07-23 14:55:36','Ahmadgoodwood','Telegram BOT',NULL),(13,'tank_1_d','3000','2000','1000','2021-07-26 08:54:07','Ahmadgoodwood','Telegram BOT',NULL),(14,'tank_1_d','3000','2000','1000','2021-08-03 17:58:32','Ahmadgoodwood','Telegram BOT',NULL),(15,'tank_2_d','3000','2000','1000','2021-08-03 17:58:40','Ahmadgoodwood','Telegram BOT',NULL),(16,'tank_1_m','3000','2000','1000','2021-08-03 17:58:46','Ahmadgoodwood','Telegram BOT',NULL),(17,'tank_2_m','3000','2000','1000','2021-08-03 17:58:54','robbyardhan','Telegram BOT',NULL);
/*!40000 ALTER TABLE `report_bbm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_environment`
--

DROP TABLE IF EXISTS `report_environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment_code` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_environment`
--

LOCK TABLES `report_environment` WRITE;
/*!40000 ALTER TABLE `report_environment` DISABLE KEYS */;
INSERT INTO `report_environment` VALUES (1,'waterleak','Normal Operation','2021-03-24 00:09:19','',''),(2,'waterleak','Normal Operation','2021-03-24 09:56:55','',''),(3,'waterleak','Tidak Ada Alarm','2021-03-24 09:57:12','',''),(4,'waterleak','Normal','2021-07-26 10:19:04','dwidj','Telegram BOT'),(5,'foc_monitoring','Tidak','2021-07-26 10:37:03','dwidj','Telegram BOT'),(6,'water_leak','Normal','2021-07-26 16:06:18','Ahmadgoodwood','Telegram BOT'),(7,'itoc','Normal','2021-07-27 12:28:02','Ahmadgoodwood','Telegram BOT'),(8,'water_leak','Normal','2021-08-03 18:17:49','Ahmadgoodwood','Telegram BOT'),(9,'itoc','Normal','2021-08-03 18:18:08','Ahmadgoodwood','Telegram BOT'),(10,'foc_monitoring','Normal','2021-08-03 18:18:24','Ahmadgoodwood','Telegram BOT'),(11,'foc_monitoring','Normal','2021-09-21 09:32:50','robbyardan','Telegram BOT'),(12,'itoc','Normal','2021-09-21 10:25:45','robbyardan','Telegram BOT');
/*!40000 ALTER TABLE `report_environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_health`
--

DROP TABLE IF EXISTS `report_health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_kesehatan` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_from` varchar(50) DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_health`
--

LOCK TABLES `report_health` WRITE;
/*!40000 ALTER TABLE `report_health` DISABLE KEYS */;
INSERT INTO `report_health` VALUES (4,'Sehat','Robby','robbyardan','2021-10-09 09:18:47','robbyardan','Telegram BOT','2021-09-06 16:20:48','robbyardan','Telegram BOT',NULL),(5,'Sehat','Dwi','dwidj','2021-10-09 16:51:16','dwidj','Telegram BOT',NULL,NULL,NULL,NULL),(6,'Sehat','Robby','robbyardan','2021-10-09 11:33:53','robbyardan','Telegram BOT','2021-09-21 17:37:02','robbyardan','Telegram BOT',NULL),(7,'Kurang Fit','Dwi','dwidj','2021-10-09 17:13:56','dwidj','Telegram BOT','2021-09-21 17:44:47','dwidj','Telegram BOT',NULL),(8,'Sakit','Dwi','Dije','2021-10-09 17:13:56',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `report_health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_notes`
--

DROP TABLE IF EXISTS `report_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes` text,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_notes`
--

LOCK TABLES `report_notes` WRITE;
/*!40000 ALTER TABLE `report_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_power`
--

DROP TABLE IF EXISTS `report_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_code` varchar(50) DEFAULT NULL,
  `generator` varchar(50) DEFAULT NULL,
  `utility_room` varchar(50) DEFAULT NULL,
  `vas_room` varchar(50) DEFAULT NULL,
  `tc_room` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_power`
--

LOCK TABLES `report_power` WRITE;
/*!40000 ALTER TABLE `report_power` DISABLE KEYS */;
INSERT INTO `report_power` VALUES (1,'generator','Stanby','Normal','Normal','Normal','2021-03-24 00:06:25',NULL,NULL),(2,'generator','Standby','Normal','Normal','Normal','2021-07-23 11:46:17','Ahmadgoodwood','Telegram BOT'),(3,'pln','Standby','Normal','Normal','Normal','2021-07-23 14:56:14','Ahmadgoodwood','Telegram BOT'),(4,'pln','Standby','Normal','Normal','Normal','2021-07-26 16:06:53','Ahmadgoodwood','Telegram BOT'),(5,'pln','Standby','Normal','Normal','Normal','2021-08-03 18:00:03','Ahmadgoodwood','Telegram BOT'),(6,'generator','Standby','Normal','Normal','Normal','2021-08-03 18:00:11','Ahmadgoodwood','Telegram BOT'),(7,'generator','Standby','Normal','Normal','Normal','2021-09-17 16:36:46','robbyardhan','Telegram BOT');
/*!40000 ALTER TABLE `report_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_temp_humidities`
--

DROP TABLE IF EXISTS `report_temp_humidities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_temp_humidities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_code` varchar(20) DEFAULT NULL,
  `temp_hum` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_from` varchar(50) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_temp_humidities`
--

LOCK TABLES `report_temp_humidities` WRITE;
/*!40000 ALTER TABLE `report_temp_humidities` DISABLE KEYS */;
INSERT INTO `report_temp_humidities` VALUES (1,'mkios','21/51','2021-03-23 23:02:47',NULL,NULL,NULL),(2,'mkios','20/51','2021-03-23 23:02:48',NULL,NULL,NULL),(3,'mkios','20/51','2021-03-23 23:02:50',NULL,NULL,NULL),(4,'mkios','21/53','2021-03-23 23:02:54',NULL,NULL,NULL),(5,'mkios','20/53','2021-03-23 23:02:55',NULL,NULL,NULL),(6,'mkios','22/46','2021-03-23 23:02:56',NULL,NULL,NULL),(7,'mkios','19/55','2021-03-23 23:02:58',NULL,NULL,NULL),(8,'mkios','19/62','2021-03-23 23:02:59',NULL,NULL,NULL),(9,'mkios','0.5','2021-07-21 14:34:01',NULL,NULL,NULL),(10,'tc','0.5','2021-07-21 14:37:48','Ahmadgoodwood',NULL,NULL),(11,'tc','0.5','2021-07-21 14:39:52','Ahmadgoodwood','Telegram BOT',NULL),(12,'tc','0.5','2021-07-21 14:46:33','Ahmadgoodwood','Telegram BOT',NULL),(13,'tc','50/50','2021-07-21 16:26:51','Ahmadgoodwood','Telegram BOT',NULL),(14,'tc','50/50','2021-07-21 16:31:42','Ahmadgoodwood','Telegram BOT',NULL),(15,'osdss','50/50','2021-07-21 16:37:47','Ahmadgoodwood','Telegram BOT',NULL),(16,'scp','50/50','2021-07-21 16:44:29','Ahmadgoodwood','Telegram BOT',NULL),(17,'scp','50/5','2021-07-23 11:28:54','Ahmadgoodwood','Telegram BOT',NULL),(18,'mkios','50/50','2021-07-23 11:46:48','Ahmadgoodwood','Telegram BOT',NULL),(19,'tc','50/50','2021-07-23 14:56:38','Ahmadgoodwood','Telegram BOT',NULL),(20,'tc','50/50','2021-08-03 18:00:57','Ahmadgoodwood','Telegram BOT',NULL),(21,'osdss','50/50','2021-08-03 18:15:33','Ahmadgoodwood','Telegram BOT',NULL),(22,'mkios','50/50','2021-08-03 18:15:42','Ahmadgoodwood','Telegram BOT',NULL),(23,'power_ups','50/50','2021-08-03 18:15:51','Ahmadgoodwood','Telegram BOT',NULL),(24,'cctv','50/50','2021-08-03 18:16:02','Ahmadgoodwood','Telegram BOT',NULL),(25,'utility_a','50/50','2021-08-03 18:16:15','Ahmadgoodwood','Telegram BOT',NULL),(26,'utility_b','50/50','2021-08-03 18:16:32','Ahmadgoodwood','Telegram BOT',NULL),(27,'mkios','50/50','2021-09-17 16:36:58','GroupAnonymousBot','Telegram BOT',NULL),(28,'mkios','50/50','2021-09-17 16:47:38','GroupAnonymousBot','Telegram BOT',NULL);
/*!40000 ALTER TABLE `report_temp_humidities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_configuration`
--

DROP TABLE IF EXISTS `sys_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_configuration` (
  `id` int(11) NOT NULL,
  `app_name` varchar(100) DEFAULT NULL,
  `app_logo` mediumtext,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `multi_login` tinyint(1) NOT NULL DEFAULT '0',
  `expired_token` int(11) DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_configuration`
--

LOCK TABLES `sys_configuration` WRITE;
/*!40000 ALTER TABLE `sys_configuration` DISABLE KEYS */;
INSERT INTO `sys_configuration` VALUES (1,'Base Webs','data:image/jpeg;base64,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','super_admin','a075d17f3d453073853f813838c15b8023b8c487038436354fe599c3942e1f95',1,30);
/*!40000 ALTER TABLE `sys_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu_child`
--

DROP TABLE IF EXISTS `sys_menu_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_child` (
  `menu_child_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_parent_id` int(11) unsigned NOT NULL,
  `menu_child_name` varchar(50) NOT NULL DEFAULT '',
  `menu_child_url` varchar(50) NOT NULL DEFAULT '',
  `menu_child_icon` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`menu_child_id`),
  UNIQUE KEY `menu_child_url` (`menu_child_url`),
  KEY `menu_parent_id` (`menu_parent_id`),
  CONSTRAINT `sys_menu_child_ibfk_1` FOREIGN KEY (`menu_parent_id`) REFERENCES `sys_menu_parent` (`menu_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu_child`
--

LOCK TABLES `sys_menu_child` WRITE;
/*!40000 ALTER TABLE `sys_menu_child` DISABLE KEYS */;
INSERT INTO `sys_menu_child` VALUES (1,1,'User','/user',NULL,NULL,'2021-07-06 00:00:00',NULL,1),(2,1,'Department','/department',NULL,NULL,'2021-09-22 00:00:00',NULL,1),(8,1,'Section','/section',NULL,NULL,NULL,NULL,1),(9,1,'Role Section','/role_section',NULL,NULL,'2021-09-22 00:00:00',NULL,1);
/*!40000 ALTER TABLE `sys_menu_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu_parent`
--

DROP TABLE IF EXISTS `sys_menu_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_parent` (
  `menu_parent_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_parent_name` varchar(50) NOT NULL DEFAULT '',
  `menu_parent_url` varchar(50) NOT NULL DEFAULT '',
  `menu_parent_icon` varchar(50) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `is_system` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_parent_id`),
  UNIQUE KEY `menu_parent_url` (`menu_parent_url`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu_parent`
--

LOCK TABLES `sys_menu_parent` WRITE;
/*!40000 ALTER TABLE `sys_menu_parent` DISABLE KEYS */;
INSERT INTO `sys_menu_parent` VALUES (1,'Administrator','/administrator','cil-spreadsheet',NULL,'2021-09-22 00:00:00',NULL,1,1);
/*!40000 ALTER TABLE `sys_menu_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_status_information`
--

DROP TABLE IF EXISTS `sys_status_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_status_information` (
  `status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(2) NOT NULL,
  `status_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_status_information`
--

LOCK TABLES `sys_status_information` WRITE;
/*!40000 ALTER TABLE `sys_status_information` DISABLE KEYS */;
INSERT INTO `sys_status_information` VALUES (1,0,'DRAFT'),(2,1,'ACTIVE'),(3,-1,'INACTIVE'),(4,-9,'REJECT'),(5,9,'APPROVE');
/*!40000 ALTER TABLE `sys_status_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `username_telegram` varchar(100) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT 'employee',
  `divisi` varchar(100) DEFAULT NULL,
  `regional` varchar(100) DEFAULT NULL,
  `lokasi_kerja` varchar(100) DEFAULT NULL,
  `kantor` varchar(100) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `flag_delete` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'86119','inanas','Ina_R_Nasihati@telkomsel.co.id','','Ina R Nasihati','','spv','it_support','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',1,1,'0'),(2,'77099','syaifulhas','syaiful_h_hasibuan@telkomsel.co.id','','Syaiful Heri Hasibuan','','spv','it_development','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(3,'76211','hannyasm','hanny_d_asmoro@telkomsel.co.id','','Hanny Dwi Asmoro','','manager','it_sumbagteng','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(4,'74329','sugengwid','sugeng_widodo@telkomsel.co.id','','Sugeng Widodo','','spv','it_fms','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(5,'79136','defrimul','defri_mulyadi@telkomsel.co.id','','Defri Mulyadi','','spv','it_support','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(6,'B1220145','17005546','robby_ardan_x@telkomsel.co.id','robbyardhan','Robby Ardan','6285278047100','employee','it_development','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(7,'B1218025','18182470','silva_l_ningsih_x@telkomsel.co.id','silvalisyaningsih','Silva Lisya Ningsih','6285265923676','employee','it_development','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(8,'B1221053','21188019','dwi_juliana_x@telkomsel.co.id','dwidj','Dwi Juliana','6285265398298','employee','it_development','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(9,'B1220012','20185047','fajar_setiawan_x@telkomsel.co.id','fajaarsetiawan','Fajar Setiawan','6285363490073','employee','it_development','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(10,'B1220152','17005870','ovit_m_hidayat_x@telkomsel.co.id','ovitmh','Ovit Miftahul Hidayat','6285278513235','employee','it_support','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(11,'17005633','17005633','faried_i_wibowo_x@telkomsel.co.id','Ried27','Faried Indah Wibowo','628137884977','employee','it_support','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(12,'B1220215','20185069','wahyu_saputra_x@telkomsel.co.id','imwahyusaputra','Wahyu Saputra','6285364861171','employee','it_support','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(13,'B1220150','17005964','toto_w_utomo_x@telkomsel.co.id','toto utomo','Toto Wasito Utomo','6282284237096','employee','it_support','Sumbagteng','Tanjung Balai Karimun','Grapari Karimun','2021-09-06 07:52:06',NULL,1,'0'),(14,'B1220148','17005861','romi_candra_x@telkomsel.co.id','sirom_dumai','Romi Candra','628117583444','employee','it_support','Sumbagteng','Dumai','Grapari Dumai','2021-09-06 07:52:06',NULL,1,'0'),(15,'B1219008','19183323','beni_o_peri_x@telkomsel.co.id','beni_oktaperi','Beni Okta Peri','6285274742026','employee','it_support','Sumbagteng','Padang','Grapari Padang','2021-09-06 07:52:06',NULL,1,'0'),(16,'B1220151','17005865','lagiyanto_x@telkomsel.co.id','antojok','Lagianto','6281270762702','employee','it_support','Sumbagteng','Batam','TSO Batam','2021-09-06 07:52:06',NULL,1,'0'),(17,'116749','btmservicep05','btmservicep05@telkomsel.co.id','ical_malik','Muhammad Haikal','6285364861875','employee','it_mii','Sumbagteng','Pekanbaru','TSO','2021-09-06 07:52:06',NULL,1,'0'),(18,'117631','btmservicep04','btmservicep04@telkomsel.co.id','derobertopamungkas','Deroberto pamungkas','6282171011432','employee','it_mii','Sumbagteng','Batam','TSO Batam','2021-09-06 07:52:06',NULL,1,'0'),(19,'B1221060','21188016','dc.verbose91@gmail.com','dhanie1002','Dani Cafri','6281268306061','employee','it_fms','Sumbagteng','Pekanbaru','DC AA Pekanbaru','2021-09-06 07:52:06',NULL,1,'0'),(20,'11111111','11111111','rahmadmaryudi27@gmail.com','yudi','Rahmad Maryudi','6282384471525','employee','it_fms','Sumbagteng','Pekanbaru','DC AA Pekanbaru','2021-09-06 07:52:06',NULL,1,'0'),(21,'B1221012','21187395','koslamintra@gmail.com','koslamintra','Koslamintra','6285274004012','employee','it_fms','Sumbagteng','Pekanbaru','DC AA Pekanbaru','2021-09-06 07:52:06',NULL,1,'0'),(22,'B1221013','21188020','akbarputraasahan@gmail.com','arguakbar','Argu Akbar','6281396626331','employee','it_fms','Sumbagteng','Pekanbaru','DC AA Pekanbaru','2021-09-06 07:52:06',NULL,1,'0'),(23,'B1221016','21188014','nurfahmikhoiruddin93@gmail.com','nurfahmikhoiruddin','Fahmi','6281249602073','employee','it_fms','Sumbagteng','Pekanbaru','DC AA Pekanbaru','2021-09-06 07:52:06',NULL,1,'0'),(24,'098788676767',NULL,'gesangseto@gmail.com','gesang',NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,1,1,'0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authentication`
--

DROP TABLE IF EXISTS `user_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_authentication` (
  `authentication_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expired_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_agent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`),
  UNIQUE KEY `user_authentication_UN` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authentication`
--

LOCK TABLES `user_authentication` WRITE;
/*!40000 ALTER TABLE `user_authentication` DISABLE KEYS */;
INSERT INTO `user_authentication` VALUES (16,1,'a77ba49574c9f637fe93aea91ef11c9fbec234822bacd13088c6132dfdc2902f','2021-10-24 15:01:25','2021-09-24 08:01:25',NULL),(17,1,'6d14e6bdbcb139fedeaa4c37b192c79e1fdbb0782530eaf7ce62a8510ffe282c','2021-10-24 15:09:11','2021-09-24 08:09:11',NULL),(18,1,'ac3f367c3624de5ecfb5c041c095c85278004345388f4f8d581f48643c7cc550','2021-10-24 15:14:15','2021-09-24 08:14:15',NULL),(19,1,'818d2c6baea706901b9b8a515355f12e7772decefec96ae27155f9dcb298666a','2021-10-24 15:14:34','2021-09-24 08:14:35',NULL),(20,1,'cdadfb9828f1361b90079d6f1b19ad2f8c27319d283dde4afb95c7627ad8d62e','2021-10-24 15:15:02','2021-09-24 08:15:02',NULL),(21,1,'6ff228a1bb2b79d68dc7a23e519cc0ed9a6b0d44a8ac71fc058462c14cf318a1','2021-10-24 19:51:45','2021-09-24 12:51:46',NULL),(22,1,'5e4a95a512efb46402c99e62d58c71b383116e7621f5c10464292e5374d92e4c','2021-10-24 19:55:35','2021-09-24 12:55:37',NULL),(23,1,'c5f1d0286cce98c9ea3af11e1ac47b485e14511215ab266e0db888286b20300d','2021-10-24 20:42:49','2021-09-24 13:42:52',NULL),(24,1,'9975beb601cc16f4daba73ed00458da283c7003372a4458a111485d947d38bad','2021-10-24 21:42:13','2021-09-24 14:42:16',NULL),(25,1,'9f6793f0094cc5cae1f8b87ad8f1f6a468a022a78d4f5c7fbd7357238897c69b','2021-10-24 22:07:15','2021-09-24 15:07:18',NULL),(26,1,'cef86f12ec82aa273b3e2efe97e1f7e302a9ed9efc7cac7cb2956d0743aa2edd','2021-10-24 22:15:58','2021-09-24 15:16:01',NULL),(27,1,'d3c64a6ef95942d05ddebc3a586c16618ba44e7375fec03884c7c457f6247fad','2021-10-24 22:22:55','2021-09-24 15:22:58',NULL),(28,1,'5ff9c37f2a8d68a8181d3fc5c9377e9afa9d8893d6dc0cd5041203e171bc4057','2021-10-26 05:35:39','2021-09-26 05:35:39',NULL),(29,1,'a219be2ffd5be9c0dd9696a649097a10c35de7a0a50c3a2f36e5953712f5bfdc','2021-10-27 08:49:36','2021-09-27 01:49:37',NULL),(30,1,'6067aa46f2a5b979e62e81a39c0e5b8032343c8f5aecbcb6d2b260ee3a29e5f7','2021-10-27 09:24:44','2021-09-27 09:24:45',NULL),(31,1,'6d671bf84363378a5bb48f89c696c8e74a1be501e0b282fcd2452791322a98fc','2021-10-27 13:10:39','2021-09-27 06:10:40',NULL);
/*!40000 ALTER TABLE `user_authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_department`
--

DROP TABLE IF EXISTS `user_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_department` (
  `department_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) DEFAULT NULL,
  `department_code` varchar(20) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_code` (`department_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_department`
--

LOCK TABLES `user_department` WRITE;
/*!40000 ALTER TABLE `user_department` DISABLE KEYS */;
INSERT INTO `user_department` VALUES (1,'Information Technology','IT',NULL,'2021-09-25 20:52:22',NULL,1),(6,'Warehouse Operation','WH-O','2021-09-17 00:00:00','2021-09-17 00:00:00',NULL,1);
/*!40000 ALTER TABLE `user_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_section`
--

DROP TABLE IF EXISTS `user_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_section` (
  `section_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) unsigned NOT NULL,
  `section_name` varchar(50) DEFAULT NULL,
  `section_code` varchar(20) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `section_code` (`section_code`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `user_section_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `user_department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_section`
--

LOCK TABLES `user_section` WRITE;
/*!40000 ALTER TABLE `user_section` DISABLE KEYS */;
INSERT INTO `user_section` VALUES (1,1,'Development','DEV',NULL,'2021-07-06 00:00:00',NULL,1),(11,1,'Support','SPRT','2021-09-25 20:52:42',NULL,0,1);
/*!40000 ALTER TABLE `user_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxx_employee`
--

DROP TABLE IF EXISTS `xxx_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xxx_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) DEFAULT NULL,
  `chat_id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `group` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxx_employee`
--

LOCK TABLES `xxx_employee` WRITE;
/*!40000 ALTER TABLE `xxx_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `xxx_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxx_officer`
--

DROP TABLE IF EXISTS `xxx_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xxx_officer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) NOT NULL,
  `officer` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxx_officer`
--

LOCK TABLES `xxx_officer` WRITE;
/*!40000 ALTER TABLE `xxx_officer` DISABLE KEYS */;
INSERT INTO `xxx_officer` VALUES (1,'Sugeng Widodo','Fahmi','2021-03-23 23:53:28');
/*!40000 ALTER TABLE `xxx_officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxx_users`
--

DROP TABLE IF EXISTS `xxx_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xxx_users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nik` char(14) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT 'employee',
  `divisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxx_users`
--

LOCK TABLES `xxx_users` WRITE;
/*!40000 ALTER TABLE `xxx_users` DISABLE KEYS */;
INSERT INTO `xxx_users` VALUES (1,'86119','inanas','Ina_R_Nasihati@telkomsel.co.id',NULL,'Ina R Nasihati',NULL,NULL,'IT_Ts'),(3,'301279','17005864','toto Wasito Utomo@telkomsel.co.id',NULL,'Toto wasito utomo','6282284237096',NULL,'IT_Ts'),(5,'150185','17005810','ITSupportTanjungPinang@telkomsel.co.id',NULL,'Zatmiko','6285272220400',NULL,'IT_Ts'),(6,'290986','17005861','itsupportdumai@telkomsel.co.id',NULL,'Romi Candra','628117583444',NULL,'IT_Ts'),(7,'160486','19183323','itsupport_pdg01@telkomsel.co.id',NULL,'Beni Okta Peri','6285274742026',NULL,'IT_Ts'),(9,'77099','syaifulhas','syaiful_h_hasibuan@telkomsel.co.id',NULL,'Syaiful Heri Hasibuan',NULL,NULL,'IT_Dev'),(11,'220790','itsupport_btm01','ITSupportBatam@telkomsel.co.id',NULL,'Lagiyanto','6281270762702',NULL,'IT_Ts'),(13,'76211','hannyasm','hanny_d_asmoro@telkomsel.co.id',NULL,'Hanny Dwi Asmoro',NULL,NULL,'IT_Reg'),(14,'74329','sugengwid','sugeng_widodo@telkomsel.co.id',NULL,'Sugeng Widodo',NULL,NULL,'IT_Invas'),(15,'79136','defrimul','defri_mulyadi@telkomsel.co.id',NULL,'Defri Mulyadi',NULL,NULL,'IT_Ts'),(16,'111401','it_dev_sbt01','ITDevelopmentSumbagteng01@telkomsel.co.id',NULL,'Robby Ardan',NULL,NULL,'IT_Dev'),(18,'111406','17005870','ITSupportPekanbaru01@telkomsel.co.id',NULL,'Ovit Miftahul Hidayat','6285278513235',NULL,'IT_Ts'),(19,'111403','17005633','ITSupportPekanbaru03@telkomsel.co.id',NULL,'Faried Indah Wibowo','6281268588880',NULL,'IT_Ts'),(20,'111404','17005946','ITSupportPekanbaru02@telkomsel.co.id',NULL,'M Haikal',NULL,NULL,'IT_Ts'),(23,'111420','HenrySum','Henry_Sumantri@telkomsel.co.id',NULL,'Henry Sumantri',NULL,NULL,'IT_Ts'),(26,'17010689','17010689','firmansyah_almaudodi_x@telkomsel.co.id',NULL,'Firmansyah Almaudodi',NULL,NULL,'IT_Ts'),(31,'1237','itsupport_04',NULL,'1234','Iwan Tamsil',NULL,NULL,'IT_Ts'),(32,'1238','itsupport_05',NULL,'1234','Arif Aminnudin',NULL,NULL,'IT_Ts'),(33,'1239','itsupport_06',NULL,'1234','One Tika Suryati',NULL,NULL,'IT_Ts'),(34,'1240','itsupport_07',NULL,'1234','M. Hakim',NULL,NULL,'IT_Ts'),(37,'1241','itsupport_cynto',NULL,'1234','Wahyu Saputra','6285364861171',NULL,'IT_Ts');
/*!40000 ALTER TABLE `xxx_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'it_flash'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-10 16:56:47
